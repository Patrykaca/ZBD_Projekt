use projekt
go

if exists(select 1
          from sys.objects
          where TYPE = 'P'
            and NAME = 'obliczKosztZamowienia')
    drop procedure obliczKosztZamowienia
go

create procedure obliczKosztZamowienia(@zamowienie int)
as
begin

    if not exists(select *
                  from zamowienie
                  where zamowienie_id = @zamowienie)
        begin
            print N'Nie ma takiego zamówienia.'
            return -1
        end

    declare @cena float
    set @cena = (
        select sum(p1.cena * zp1.liczba_posilkow)
        from posilek p1,
             zamowienie_posilek zp1
        where zp1.zamowienie_id = @zamowienie
          and zp1.posilek_id = p1.posilek_id
        group by zp1.zamowienie_id
    )
    print N'Koszt zamówienia wynosi ' + cast(@cena as varchar(16)) + N'zł'
end
go

exec obliczKosztZamowienia 130
go


-- dodaj procentową premię pracownikom w zależności od stanowiska i daty jeżeli
-- data w miesiącach


if exists(select 1
          from sys.objects
          where TYPE = 'P'
            and NAME = 'dodajPremie')
    drop procedure dodajPremie
go

create procedure dodajPremie(@stanowisko int, @procent float, @miesiace int)
as
begin

    if not exists(select *
                  from stanowisko
                  where stanowisko_id = @stanowisko)
        begin
            print N'Nie ma takiego stanowiska.'
            return -1
        end

    if @procent is null
        begin
            set @procent = 10
        end

    if @miesiace is null
        begin
            set @miesiace = 24
        end

    set @procent = @procent / 100

    update pracownik
    set premia = @procent * s.placa + datediff(yy, pracownik.data_zatrudnienia, getdate()) * 15
    from stanowisko s
    where pracownik.stanowisko_id = s.stanowisko_id
      and datediff(mm, pracownik.data_zatrudnienia, getdate()) > @miesiace
      and pracownik.stanowisko_id = @stanowisko

end
go

exec dodajPremie @stanowisko = 1, @procent = null
go

-- funkcja obliczająca sumę kontrolną pesel, należałoby ją dodać do tabeli
-- jako constraint w podobny sposób jak dodana już tam funkcja lecz nasze
-- dane to liczby loswe które nie spełniałyby wymagania

if exists(select 1
          from sys.objects
          where TYPE = 'FN'
            and NAME = 'poprawnoscPesel')
    drop function poprawnoscPesel
go

create function poprawnoscPesel(@pesel varchar(11))
    returns int
as
begin
    declare @kontrolna numeric
    set @kontrolna = (substring(@pesel, 1, 1) * 1
        + substring(@pesel, 2, 1) * 3
        + substring(@pesel, 3, 1) * 7
        + substring(@pesel, 4, 1) * 9
        + substring(@pesel, 5, 1) * 1
        + substring(@pesel, 6, 1) * 3
        + substring(@pesel, 7, 1) * 7
        + substring(@pesel, 8, 1) * 9
        + substring(@pesel, 9, 1) * 1
        + substring(@pesel, 10, 1) * 3) % 10

    set @kontrolna = 10 - @kontrolna
    if substring(@pesel, 11, 1) = @kontrolna
        begin
            return 1
        end
    return 0
end
go

select dbo.poprawnoscPesel('99030810471')
go

--procedura wypisująca dla każdego lokalu ilość zamówień względem statusu dla każdego wywołania z podanego dnia
--domyślnie z dnia dzisiejszego

if exists(select 1
          from sys.objects
          where TYPE = 'P'
            and NAME = 'statusZamowien')
    drop procedure statusZamowien
go

create procedure statusZamowien(@dzien datetime)
as
begin

    if @dzien is null
        begin
            set @dzien = datepart(dd, getdate())
        end
    else

        begin

            declare kursor cursor for (select lokal_id from lokal)
            declare @lokal int
            open kursor
            fetch next from kursor into @lokal
            while
                @@fetch_status = 0
                begin
                    declare @anulowane int, @wykonane int, @w_toku int, @oczekujace int
                    set @anulowane = (select count(*)
                                      from zamowienie z
                                      where z.lokal_id = @lokal
                                        and datediff(dd, getdate(), @dzien) = 0
                                        and z.status_zamowienia = 'Anulowane')

                    set @wykonane = (select count(*)
                                     from zamowienie z
                                     where z.lokal_id = @lokal
                                       and datediff(dd, getdate(), @dzien) = 0
                                       and z.status_zamowienia = 'Wykonane')

                    set @w_toku = (select count(*)
                                   from zamowienie z
                                   where z.lokal_id = @lokal
                                     and datediff(dd, getdate(), @dzien) = 0
                                     and z.status_zamowienia = 'W toku')

                    set @oczekujace = (select count(*)
                                       from zamowienie z
                                       where z.lokal_id = @lokal
                                         and datediff(dd, getdate(), @dzien) = 0
                                         and z.status_zamowienia = N'Oczekujące')

                    print 'Lokal ' + cast(@lokal as varchar(2))
                        + ' anulowane: ' + cast(@anulowane as varchar(5))
                        + ' wykonane: ' + cast(@wykonane as varchar(5))
                        + ' w toku: ' + cast(@w_toku as varchar(5))
                        + N' oczekujące: ' + cast(@oczekujace as varchar(5))

                    fetch next from kursor into @lokal
                end
            close kursor
            deallocate kursor
        end
end
go

exec statusZamowien '2021/01/17'
go