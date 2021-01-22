create database projekt
go

use projekt
go

create table posilek
(
    posilek_id int         not null identity primary key,
    nazwa      varchar(64) not null,
    cena       money       not null
)
go

create table zamowienie_posilek
(
    zamowienie_posilek_id int not null identity primary key,
    liczba_posilkow       int not null,
    posilek_id            int not null,
    constraint posilek_fk foreign key (posilek_id) references posilek (posilek_id)
)
go


create table klient
(
    klient_id int        not null identity primary key,
    imie      varchar(32),
    nazwisko  varchar(32),
    pesel     varchar(11),
    telefon   varchar(9) not null
)
go

create table wojewodztwo
(
    wojewodztwo_id    int         not null identity primary key,
    nazwa_wojewodztwa varchar(32) not null,
)
go


create table miasto
(
    miasto_id      int         not null identity primary key,
    nazwa_miasta   varchar(16) not null,
    wojewodztwo_id int         not null,
    constraint wojewodztwo_fk foreign key (wojewodztwo_id) references wojewodztwo (wojewodztwo_id)
)

create table lokal
(
    lokal_id     int         not null identity primary key,
    ulica        varchar(32) not null,
    kod_pocztowy varchar(6)  not null,
    miasto_id    int         not null,
    constraint miasto_fk foreign key (miasto_id) references miasto (miasto_id)
)
go

create table dzial
(
    dzial_id     int         not null identity primary key,
    nazwa_dzialu varchar(32) not null
)
go

create table stanowisko
(
    stanowisko_id    int         not null identity primary key,
    nazwa_stanowiska varchar(32) not null,
    placa            money       not null,
)
go

create table pracownik
(
    pracownik_id      int           not null identity primary key,
    imie              varchar(16)   not null,
    nazwisko          varchar(16)   not null,
    pesel             varchar(11)   not null,
    telefon           varchar(9)    not null,
    data_zatrudnienia smalldatetime not null,
    stanowisko_id     int           not null,
    lokal_id          int           not null,
    dzial_id          int           not null,
    constraint stanowisko_fk foreign key (stanowisko_id) references stanowisko (stanowisko_id),
    constraint lokal_pracownika_fk foreign key (lokal_id) references lokal (lokal_id),
    constraint dzial_fk foreign key (dzial_id) references dzial (dzial_id)
)
go


create table zamowienie
(
    zamowienie_id int         not null identity primary key,
    data          smalldatetime default getdate(),
    adres         varchar(64) not null,
    lokal_id      int         not null,
    klient_id     int         not null,
    pracownik_id  int         not null,
    constraint lokal_fk foreign key (lokal_id) references lokal (lokal_id),
    constraint klient_fk foreign key (klient_id) references klient (klient_id),
    constraint pracownik_fk foreign key (pracownik_id) references pracownik (pracownik_id)
)
go

if exists(select 1
          from sys.objects
          where TYPE = 'FN'
            and NAME = 'check_telefon')
    drop function check_telefon
go

create function check_telefon(@numer varchar(9))
    returns int
as
begin
    if (
            SUBSTRING(@numer, 1, 1) BETWEEN '0' AND '9' AND
            SUBSTRING(@numer, 2, 1) BETWEEN '0' AND '9' AND
            SUBSTRING(@numer, 3, 1) BETWEEN '0' AND '9' AND
            SUBSTRING(@numer, 4, 1) BETWEEN '0' AND '9' AND
            SUBSTRING(@numer, 5, 1) BETWEEN '0' AND '9' AND
            SUBSTRING(@numer, 6, 1) BETWEEN '0' AND '9' AND
            SUBSTRING(@numer, 7, 1) BETWEEN '0' AND '9' AND
            SUBSTRING(@numer, 8, 1) BETWEEN '0' AND '9' AND
            SUBSTRING(@numer, 9, 1) BETWEEN '0' AND '9'
        )
        begin
            return 1
        end
    return 0
end
go

use projekt
go

alter table pracownik
    add constraint check_telefon_pracownika CHECK (dbo.check_telefon(telefon) = 1)
go

alter table klient
    add constraint check_telefon_klienta CHECK (dbo.check_telefon(telefon) = 1)
go


if exists(select 1
          from sys.objects
          where TYPE = 'FN'
            and NAME = 'check_pesel')
    drop function check_pesel
go

create function check_pesel(@pesel varchar(11))
    returns int
as
begin
    if (
            SUBSTRING(@pesel, 1, 1) BETWEEN '0' AND '9' AND
            SUBSTRING(@pesel, 2, 1) BETWEEN '0' AND '9' AND
            SUBSTRING(@pesel, 3, 1) BETWEEN '0' AND '9' AND
            SUBSTRING(@pesel, 4, 1) BETWEEN '0' AND '9' AND
            SUBSTRING(@pesel, 5, 1) BETWEEN '0' AND '9' AND
            SUBSTRING(@pesel, 6, 1) BETWEEN '0' AND '9' AND
            SUBSTRING(@pesel, 7, 1) BETWEEN '0' AND '9' AND
            SUBSTRING(@pesel, 8, 1) BETWEEN '0' AND '9' AND
            SUBSTRING(@pesel, 9, 1) BETWEEN '0' AND '9' AND
            SUBSTRING(@pesel, 10, 1) BETWEEN '0' AND '9' AND
            SUBSTRING(@pesel, 11, 1) BETWEEN '0' AND '9'
        )
        begin
            return 1
        end
    return 0
end
go

use projekt
go

alter table pracownik
    add constraint check_pesel_pracownika CHECK (dbo.check_pesel(pesel) = 1)
go

alter table klient
    add constraint check_pesel_klienta CHECK (dbo.check_pesel(pesel) = 1)
go

alter table zamowienie_posilek
    add zamowienie_id int
go

alter table zamowienie_posilek
    add constraint zamowienie_fk foreign key (zamowienie_id) references zamowienie (zamowienie_id)
go

alter table zamowienie_posilek
    alter column
        zamowienie_id int not null
go

alter table zamowienie
    add status_zamowienia varchar(32) default N'Oczekujące';
go
alter table zamowienie
    alter column status_zamowienia varchar(32) not null;
go
alter table zamowienie
    add constraint status_check CHECK (status_zamowienia in (N'Oczekujące', 'W toku', 'Wykonane', 'Anulowane'));
go

alter table pracownik
    add premia int;
go

update pracownik set premia = datediff(mm, pracownik.data_zatrudnienia, getdate()) * 10
where datediff(dd, pracownik.data_zatrudnienia, getdate()) > 1200
go