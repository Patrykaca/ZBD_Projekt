use projekt
go

insert into wojewodztwo (nazwa_wojewodztwa) values ('mazowieckie');
insert into wojewodztwo (nazwa_wojewodztwa) values ('wielkopolskie');
insert into wojewodztwo (nazwa_wojewodztwa) values ('lubelskie');
insert into wojewodztwo (nazwa_wojewodztwa) values (N'warmińsko-mazurskie');
insert into wojewodztwo (nazwa_wojewodztwa) values ('zachodniopomorskie');
insert into wojewodztwo (nazwa_wojewodztwa) values ('podlaskie');
insert into wojewodztwo (nazwa_wojewodztwa) values (N'dolnośląskie');
insert into wojewodztwo (nazwa_wojewodztwa) values ('pomorskie');
insert into wojewodztwo (nazwa_wojewodztwa) values (N'łódzkie');
insert into wojewodztwo (nazwa_wojewodztwa) values ('kujawsko-pomorskie');
insert into wojewodztwo (nazwa_wojewodztwa) values ('podkarpackie');
insert into wojewodztwo (nazwa_wojewodztwa) values (N'małopolskie');
insert into wojewodztwo (nazwa_wojewodztwa) values ('lubuskie');
insert into wojewodztwo (nazwa_wojewodztwa) values (N'śląskie');
insert into wojewodztwo (nazwa_wojewodztwa) values (N'świętokrzyskie');
insert into wojewodztwo (nazwa_wojewodztwa) values ('opolskie');
go

insert into miasto (nazwa_miasta, wojewodztwo_id) values ('Warszawa', 1);
insert into miasto (nazwa_miasta, wojewodztwo_id) values (N'Kraków', 12);
insert into miasto (nazwa_miasta, wojewodztwo_id) values (N'Łódź', 9);
insert into miasto (nazwa_miasta, wojewodztwo_id) values (N'Wrocław', 7);
insert into miasto (nazwa_miasta, wojewodztwo_id) values (N'Poznań', 8);
insert into miasto (nazwa_miasta, wojewodztwo_id) values (N'Gdańsk', 1);
insert into miasto (nazwa_miasta, wojewodztwo_id) values ('Szczecin', 5);
insert into miasto (nazwa_miasta, wojewodztwo_id) values ('Bydgoszcz', 10);
insert into miasto (nazwa_miasta, wojewodztwo_id) values ('Lublin', 3);
insert into miasto (nazwa_miasta, wojewodztwo_id) values (N'Białystok', 6);
insert into miasto (nazwa_miasta, wojewodztwo_id) values ('Radom', 1);
insert into miasto (nazwa_miasta, wojewodztwo_id) values ('Katowice', 14);
insert into miasto (nazwa_miasta, wojewodztwo_id) values ('Sosnowiec', 14);
go

insert into dzial (nazwa_dzialu) values ('Marketing');
insert into dzial (nazwa_dzialu) values ('HR');
insert into dzial (nazwa_dzialu) values (N'Administracja');
insert into dzial (nazwa_dzialu) values (N'Rachunkowość');
insert into dzial (nazwa_dzialu) values ('IT');
insert into dzial (nazwa_dzialu) values (N'Obsługa Klienta');
insert into dzial (nazwa_dzialu) values (N'Kuchnia');
insert into dzial (nazwa_dzialu) values (N'Zaopatrzenie');
go

insert into posilek (nazwa, cena) values ('Pizza hawajska', 42);
insert into posilek (nazwa, cena) values ('Pizza pepperoni', 41);
insert into posilek (nazwa, cena) values ('Pizza mexicana', 43);
insert into posilek (nazwa, cena) values ('Pizza firmowa', 47);
insert into posilek (nazwa, cena) values ('Pizza fetta', 38);
insert into posilek (nazwa, cena) values ('Pizza wiejska', 44);
insert into posilek (nazwa, cena) values ('Pizza cztery sery', 40);
insert into posilek (nazwa, cena) values ('Pizza margerita', 32);
insert into posilek (nazwa, cena) values ('Pizza vegtariana', 36);
insert into posilek (nazwa, cena) values (N'Pizza śródziemnomorska', 43);
insert into posilek (nazwa, cena) values ('Frytki', 9);
insert into posilek (nazwa, cena) values ('Coca-Cola', 5);
insert into posilek (nazwa, cena) values ('Pepsi', 5);
insert into posilek (nazwa, cena) values ('Fanta', 5);
insert into posilek (nazwa, cena) values ('Sprite', 5);
insert into posilek (nazwa, cena) values ('IceTea', 5);
insert into posilek (nazwa, cena) values (N'Sałatka cezar', 15);
insert into posilek (nazwa, cena) values (N'Sałatka grecka', 16);
insert into posilek (nazwa, cena) values (N'Sałatka z łososiem', 18);
insert into posilek (nazwa, cena) values (N'Sałatka gyros', 17);
insert into posilek (nazwa, cena) values (N'Sałatka z tuńczykiem', 15);
go

insert into stanowisko (nazwa_stanowiska, placa) values ('dostawca', 2500);
insert into stanowisko (nazwa_stanowiska, placa) values ('kelner', 2500);
insert into stanowisko (nazwa_stanowiska, placa) values ('kucharz', 3500);
insert into stanowisko (nazwa_stanowiska, placa) values ('szef kuchni', 4500);
insert into stanowisko (nazwa_stanowiska, placa) values ('pomocnik kucharza', 2800);
insert into stanowisko (nazwa_stanowiska, placa) values (N'woźny', 2600);
insert into stanowisko (nazwa_stanowiska, placa) values ('recepcjonista', 3000);
insert into stanowisko (nazwa_stanowiska, placa) values ('manager', 10000);
insert into stanowisko (nazwa_stanowiska, placa) values ('barman', 3500);
insert into stanowisko (nazwa_stanowiska, placa) values ('informatyk', 4500);
insert into stanowisko (nazwa_stanowiska, placa) values (N'księgowy', 4000);
insert into stanowisko (nazwa_stanowiska, placa) values ('marketingowiec', 3700);
go

insert into lokal (ulica, kod_pocztowy, miasto_id) values (N'ul. Jana Pawła II', '21-370', 1);
insert into lokal (ulica, kod_pocztowy, miasto_id) values (N'ul. Pancerna', '26-806', 11);
insert into lokal (ulica, kod_pocztowy, miasto_id) values (N'ul. Morska', '69-420', 6);
insert into lokal (ulica, kod_pocztowy, miasto_id) values (N'ul. Piesza', '54-208', 13);
insert into lokal (ulica, kod_pocztowy, miasto_id) values (N'ul. Wesoła', '17-507', 2);
insert into lokal (ulica, kod_pocztowy, miasto_id) values (N'ul. Okrężna', '71-056', 3);
insert into lokal (ulica, kod_pocztowy, miasto_id) values (N'ul. Żytnia', '91-245', 9);
insert into lokal (ulica, kod_pocztowy, miasto_id) values (N'ul. Iglasta', '84-819', 12);
insert into lokal (ulica, kod_pocztowy, miasto_id) values (N'ul. Dobra', '12-346', 1);
insert into lokal (ulica, kod_pocztowy, miasto_id) values (N'ul. Ceglana', '75-351', 7);
insert into lokal (ulica, kod_pocztowy, miasto_id) values (N'ul. Bobrowa', '24-642', 4);
insert into lokal (ulica, kod_pocztowy, miasto_id) values (N'ul. Agrestowa', '84-829', 1);
go