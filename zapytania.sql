use projekt

-- 1 --

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
go
-- 2 --

insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id)
values (N'Weles', N'Singh', '99010910460', '718107311', '2020/1/26 12:00:00', 3, 12, 7);

select p.imie                                                        as imie,
       p.nazwisko                                                    as nazwisko,
       'Wyslij sms na numer ' + p.telefon + N' aby złożyć życzenia!' as komunikat
from pracownik p
where substring(p.pesel, 3, 2) like '%' + cast(format(getdate(), 'MM') as varchar(2)) + '%'
  and substring(p.pesel, 5, 2) like '%' + cast(format(getdate(), 'dd') as varchar(2)) + '%'
-- 2 --

select p.pracownik_id, p.stanowisko_id, p.lokal_id
from pracownik p
where p.stanowisko_id = 3
   or p.stanowisko_id = 4
   or p.stanowisko_id = 5

-- 3 --

-- wypisuje dochód dla wykonanych zamówień
with dane as (select (p1.cena * zp1.liczba_posilkow) as dochód,
                     zm1.zamowienie_id
              from posilek p1,
                   zamowienie_posilek zp1,
                   zamowienie zm1
              where zm1.zamowienie_id = zp1.zamowienie_id
                and zp1.posilek_id = p1.posilek_id)

select d.zamowienie_id as zamówienie,
       cast(sum(d.dochód) as numeric(10, 2)) as 'dochód przed opodatkowaniem',
       cast(sum(d.dochód)*0.73 as numeric(10, 2)) as 'dochód po opodatkowaniu'
from dane d, zamowienie zm
where d.zamowienie_id = zm.zamowienie_id and
      zm.status_zamowienia = 'Wykonane'
group by d.zamowienie_id