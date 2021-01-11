use projekt
go

-- 1 -- wypisuje średnie zarboki pracownikow lokalu oraz czy zarabiają więcej niż średnia dla wsztstkich lokali

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
values (N'Weles', N'Singh', '99011010460', '718107311', '2020/1/26 12:00:00', 3, 12, 7);

select p.imie                                                        as imie,
       p.nazwisko                                                    as nazwisko,
       'Wyslij sms na numer ' + p.telefon + N' aby złożyć życzenia!' as komunikat
from pracownik p
where substring(p.pesel, 3, 2) like '%' + cast(format(getdate(), 'MM') as varchar(2)) + '%'
  and substring(p.pesel, 5, 2) like '%' + cast(format(getdate(), 'dd') as varchar(2)) + '%'
go

-- 3 -- wypisuje dochody z każdego zamówienia przed i po opodatkowaniu

-- wypisuje dochód dla wykonanych zamówień
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
       m.nazwa_miasta
from dane d
         join miasto m on d.miasto_id = m.miasto_id
group by d.miasto_id, nazwa_miasta

-- 7 -- ile jest osób zatrudnionych w I kwartale, które zarabiaja powyżej 3000

select count(*) as ile_osób
from pracownik p
         join stanowisko s on p.stanowisko_id = s.stanowisko_id
where datepart(mm, p.data_zatrudnienia) in (1, 2, 3)
  and (isnull(p.premia, 0) + s.placa) > 3500
go

-- 8 -- średnie zarobki kobie i średnie zarobki mężczyzn

select (select avg(isnull(p1.premia, 0) + s1.placa)
        from pracownik p1
                 join stanowisko s1 on p1.stanowisko_id = s1.stanowisko_id
        where p1.imie like '%a')            as srednia_kobiet,

       (select avg(isnull(p2.premia, 0) + s2.placa)
        from pracownik p2
                 join stanowisko s2 on p2.stanowisko_id = s2.stanowisko_id
        where p2.imie not like '%a')        as srednia_meżczyzn,
       avg((isnull(p.premia, 0) + s.placa)) as srednia_łączna
from pracownik p
         join stanowisko s on p.stanowisko_id = s.stanowisko_id
go

-- 9 -- ile razy zamawiany był najdroższy posiłek w warszawie

select sum(zp.liczba_posilkow)
from zamowienie_posilek zp
         join zamowienie z on z.zamowienie_id = zp.zamowienie_id
         join posilek p on p.posilek_id = zp.posilek_id
where p.cena = (select max(cena)
                from posilek)
  and z.lokal_id in (select lokal_id
                     from lokal,
                          miasto
                     where lokal.lokal_id = miasto.miasto_id
                       and miasto.nazwa_miasta = 'Warszawa')

-- 10 -- łączne podstawowe pensje pracowników lokali w których pracuje więcej niż 14 osób

select sum(s.placa), l.lokal_id
from pracownik p
         join stanowisko s on p.stanowisko_id = s.stanowisko_id,
     lokal l
where p.lokal_id = l.lokal_id
  and l.lokal_id in (select l.lokal_id
                     from lokal l
                              join pracownik p on l.lokal_id = p.lokal_id
                     group by l.lokal_id
                     having (count(l.lokal_id)) > 14)
group by l.lokal_id
go

-- 11 --







