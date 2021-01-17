use projekt
go

-- 1 -- wypisuje średnie zarboki pracownikow lokalu oraz czy zarabiają więcej niż średnia dla wszystkich lokali

select l.lokal_id                                                           as lokal,
       cast(round(avg(s.placa + isnull(p.premia, 0)), 2) as numeric(10, 2)) as srednie_zarobki,
       case
           when avg(s.placa + isnull(p.premia, 0)) >
                (select avg(s1.placa + isnull(p1.premia, 0))
                 from lokal l1,
                      pracownik p1,
                      stanowisko s1
                 where l1.lokal_id = p1.lokal_id
                   and p1.stanowisko_id = s1.stanowisko_id) then N'Więcej niż śrenia'
           when avg(s.placa + isnull(p.premia, 0)) <
                (select avg(s1.placa + isnull(p1.premia, 0))
                 from lokal l1,
                      pracownik p1,
                      stanowisko s1
                 where l1.lokal_id = p1.lokal_id
                   and p1.stanowisko_id = s1.stanowisko_id) then N'Mniej niż średnia'
           else 'Tyle samo' end                                             as srednie_zarobki

from lokal l,
     pracownik p,
     stanowisko s
where l.lokal_id = p.lokal_id
  and p.stanowisko_id = s.stanowisko_id
group by l.lokal_id
go

-- 2 -- sprawdza czy jakiś pracownik ma dziś urodziny

insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id)
values (N'Weles', N'Singh', '99011410460', '718107311', '2020/1/26 12:00:00', 3, 12, 7);

select p.imie                                                        as imie,
       p.nazwisko                                                    as nazwisko,
       'Wyslij sms na numer ' + p.telefon + N' aby złożyć życzenia!' as komunikat
from pracownik p
where substring(p.pesel, 3, 2) like '%' + cast(format(getdate(), 'MM') as varchar(2)) + '%'
  and substring(p.pesel, 5, 2) like '%' + cast(format(getdate(), 'dd') as varchar(2)) + '%'
go

-- 3 -- wypisuje dochody z każdego zamówienia przed i po opodatkowaniu

with dane as (select (p1.cena * zp1.liczba_posilkow) as dochód,
                     zm1.zamowienie_id,
                     p1.nazwa
              from posilek p1,
                   zamowienie_posilek zp1,
                   zamowienie zm1
              where zm1.zamowienie_id = zp1.zamowienie_id
                and zp1.posilek_id = p1.posilek_id)

select d.zamowienie_id                              as zamówienie,
       cast(sum(d.dochód) as numeric(10, 2))        as 'dochód przed opodatkowaniem',
       cast(sum(d.dochód) * 0.73 as numeric(10, 2)) as 'dochód po opodatkowaniu'
from dane d,
     zamowienie zm
where d.zamowienie_id = zm.zamowienie_id
  and zm.status_zamowienia = 'Wykonane'
group by d.zamowienie_id
go

-- 4 -- dane klientów i w jakim mieście dokonali zamówienia

select distinct k.imie         as imie,
                k.nazwisko     as nazwisko,
                m.nazwa_miasta as miasto
from klient k
         join zamowienie z on k.klient_id = z.klient_id
         join lokal l on z.lokal_id = l.lokal_id
         join miasto m on l.miasto_id = m.miasto_id
go

-- 5 -- ile dań przygotowują pracownicy w zależności od stanowiska

with zamowienia as (select p.pracownik_id, z.zamowienie_id, z.status_zamowienia, p.stanowisko_id
                    from zamowienie z,
                         pracownik p
                    where z.pracownik_id = p.pracownik_id)

select count(z.pracownik_id) as dania_kucharzy,
       s.nazwa_stanowiska    as stanowisko
from zamowienia z
         join stanowisko s on z.stanowisko_id = s.stanowisko_id
where s.nazwa_stanowiska = 'kucharz'
group by s.nazwa_stanowiska
union
select count(z.pracownik_id) as dania_kucharzy,
       s.nazwa_stanowiska    as stanowisko
from zamowienia z
         join stanowisko s on z.stanowisko_id = s.stanowisko_id
where s.nazwa_stanowiska = 'szef kuchni'
group by s.nazwa_stanowiska
union
select count(z.pracownik_id) as dania_kucharzy,
       s.nazwa_stanowiska    as stanowisko
from zamowienia z
         join stanowisko s on z.stanowisko_id = s.stanowisko_id
where s.nazwa_stanowiska = 'pomocnik kucharza'
group by s.nazwa_stanowiska
go

-- 6 -- ile dań w mieście

with dane as (select l.miasto_id,
                     l.lokal_id,
                     z.zamowienie_id,
                     zp.zamowienie_posilek_id,
                     zp.liczba_posilkow,
                     zp.posilek_id
              from zamowienie z,
                   zamowienie_posilek zp,
                   lokal l
              where z.zamowienie_id = zp.zamowienie_id
                and z.lokal_id = l.lokal_id)

select count(d.zamowienie_id) as ile_razy,
       d.miasto_id            as miasto,
       m.nazwa_miasta,
       d.posilek_id
from dane d
         join miasto m on d.miasto_id = m.miasto_id
group by d.miasto_id, nazwa_miasta, d.posilek_id

-- 7 -- ile osób zostało zatrudnionych w poszczególnych kwartalach danego roku
--

select count(*)                          as ile_osób,
       datepart(yy, p.data_zatrudnienia) as rok,
       datepart(qq, p.data_zatrudnienia) as kwartał
from pracownik p
         join stanowisko s on p.stanowisko_id = s.stanowisko_id
group by datepart(yy, p.data_zatrudnienia),
         datepart(qq, p.data_zatrudnienia)
go

-- 8 -- jaki procent średnich zarobków zarabiają kobieta a jaki mężczyźni i ile wynoszą średnie zarobki

declare @srednie float
set @srednie = (select avg((isnull(p.premia, 0) + s.placa))
                from pracownik p
                         join stanowisko s on p.stanowisko_id = s.stanowisko_id)

select distinct round(@srednie * 100 / (select avg(isnull(p1.premia, 0) + s1.placa)
                                        from pracownik p1
                                                 join stanowisko s1 on p1.stanowisko_id = s1.stanowisko_id
                                        where p1.imie like '%a'), 2)     as '%_kobiet',

                round(@srednie * 100 / (select avg(isnull(p2.premia, 0) + s2.placa)
                                        from pracownik p2
                                                 join stanowisko s2 on p2.stanowisko_id = s2.stanowisko_id
                                        where p2.imie not like '%a'), 2) as '%_mężczyzn',
                @srednie                                                 as srednia_łączna
from pracownik p
         join stanowisko s on p.stanowisko_id = s.stanowisko_id
go

-- 9 -- ile razy zamawiany był najdroższy posiłek w każdym mieście

select sum(zp.liczba_posilkow) as ilość_zamówień_najdroższego_posiłku,
       m.nazwa_miasta as nazwa_miasta
from zamowienie_posilek zp
         join zamowienie z on z.zamowienie_id = zp.zamowienie_id
         join posilek p on p.posilek_id = zp.posilek_id,
     lokal l
         left join miasto m on l.miasto_id = m.miasto_id
where p.cena = (select max(cena)
                from posilek)
  and z.lokal_id = l.lokal_id
group by m.nazwa_miasta
order by ilość_zamówień_najdroższego_posiłku asc



-- 10 -- łączne podstawowe pensje pracowników, pomijając managerów lokali w których pracuje więcej niż 9

select convert(int, sum(s.placa)) as suma_plac,
       l.lokal_id                 as id_lokalu
from pracownik p
         join stanowisko s on p.stanowisko_id = s.stanowisko_id,
     lokal l
where p.lokal_id = l.lokal_id
  and p.stanowisko_id != (select st.stanowisko_id
                          from stanowisko st
                          where st.nazwa_stanowiska = 'manager')
  and l.lokal_id in (select l.lokal_id
                     from lokal l
                              join pracownik p on l.lokal_id = p.lokal_id
                     group by l.lokal_id
                     having (count(l.lokal_id)) > 9)
group by rollup (l.lokal_id)
order by suma_plac
go

-- 11 -- nazwy 5 najczęściej zamawianych posiłków w weekendy

with dane as (select count(*) as ilość_zamówień, zp.posilek_id
              from zamowienie z
                       join zamowienie_posilek zp on z.zamowienie_id = zp.zamowienie_id
              where datepart(DW, z.data) between 6 and 7
              group by zp.posilek_id)

select top 5 with ties p.nazwa
from dane d,
     posilek p
where d.posilek_id = p.posilek_id
order by d.ilość_zamówień desc

-- 12 -- sprawdz czy istnieja klienci ktorzy w zamówieniu podali taki tą samą ulicę na której znajduje się lokal

insert into zamowienie (data, adres, lokal_id, klient_id, pracownik_id, status_zamowienia)
values ('2021/01/01 12:00:00', N'ul. Jana Pawła II', 1, 2, 106, 'Wykonane')


select iif(exists(select *
                  from zamowienie z,
                       lokal l
                  where z.
                            lokal_id = l.lokal_id
                    and z.adres like '%' + l.ulica + '%'), N'istnieją tacy klienci', N'nie istnieją tacy klienci')
go

-- 13 -- wypisz dane pomocników kucharzy, oraz informację czy mogę się starać o awans, którego warunkiem jest dwuletni staż pracy

select p.imie     as imie,
       p.nazwisko as nazwisko,
       case
           when datediff(mm, data_zatrudnienia, getdate()) >= 24
               then N'tak'
           when datediff(mm, data_zatrudnienia, getdate()) < 24
               then N'nie'
           end    as czy_awansować

from pracownik p
         join stanowisko s on s.stanowisko_id = p.stanowisko_id
where s.nazwa_stanowiska = 'pomocnik kucharza'
go

-- 14 -- wypisz procentowy udział zamówień dla poszczególnych miast

begin
    declare @miasto int, @srednia float
    set @srednia = (select count(*) from zamowienie)
    declare kursor cursor for (select miasto_id from miasto m)
    open kursor
    fetch next from kursor into @miasto
    while
        @@fetch_status = 0
        begin
            declare @miasto_sr float, @nazwa varchar(16)
            set @miasto_sr = (select count(*)
                              from zamowienie z
                                       join lokal l on l.lokal_id = z.lokal_id
                              where l.miasto_id = @miasto)
            set @nazwa = (select m.nazwa_miasta
                          from miasto m
                          where m.miasto_id = @miasto)

            print @nazwa + ' ' +
                  cast(cast((@miasto_sr / @srednia * 100) as numeric(4, 2)) as varchar(5))
                + '% '

            fetch next from kursor into @miasto
        end
    close kursor
    deallocate kursor
end
go

-- 15 -- wypisz ilu jest pracowników poszczególnych działów w zależności od lokalu

begin
    declare @lokal int, @dzial int
    declare kursor cursor for (select dzial_id, lokal_id
                               from lokal,
                                    dzial)
    open kursor
    fetch next from kursor into @dzial, @lokal
    while
        @@fetch_status = 0
        begin
            declare @ilosc int
            set @ilosc = (select count(p.dzial_id)
                          from pracownik p
                          where p.lokal_id = @lokal
                            and p.dzial_id = @dzial
                          group by p.dzial_id
            )

            print 'dzial ' + cast(@dzial as varchar(16))
                + ' lokal ' +
                  cast(@lokal as varchar(16))
                + N' ilość pracowników ' + cast(isnull(@ilosc, 0) as varchar(16))

            fetch next from kursor into @dzial, @lokal
        end
    close kursor
    deallocate kursor
end
go