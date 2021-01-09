use projekt
go

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

