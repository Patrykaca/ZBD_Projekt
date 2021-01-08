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

insert into klient (imie, nazwisko, pesel, telefon) values ('Artur', 'Domarecki', '16394683231', '997123123');
insert into klient (imie, nazwisko, pesel, telefon) values ('Monika', 'Nowak', '78543962835', '517934065');
insert into klient (imie, nazwisko, pesel, telefon) values (N'Michał', 'Psikuta', '96348293431', '648045888');
insert into klient (imie, nazwisko, pesel, telefon) values ('Agata', 'Martyniuk', '93472194826', '612034654');
insert into klient (imie, nazwisko, pesel, telefon) values ('Martyna', 'Kowal', '29058358124', '125034954');
insert into klient (imie, nazwisko, pesel, telefon) values ('Zofia', 'Nawrocka', '91853247691', '243012234');
insert into klient (imie, nazwisko, pesel, telefon) values ('Mariusz', N'Domagała', '87120195831', '954823065');
insert into klient (imie, nazwisko, pesel, telefon) values ('Arkadiusz', 'Wolak', '01010143962', '123123123');
insert into klient (imie, nazwisko, pesel, telefon) values ('Grzegorz', N'Brzęczyszczykiewicz', '99120901232', '456456456');
insert into klient (imie, nazwisko, pesel, telefon) values ('Agnieszka', 'Majonez', '99120901231', '678678678' );
insert into klient (imie, nazwisko, pesel, telefon) values (N'Sławomir', 'Musztarda', '99120901233', '456234678');
go

--kelner
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Kasia', 'Grochowska', '08184050671', '526042964', '2015/12/25 12:00:00', 2, 1, 6);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Frania', 'Dymek', '08033408804', '607621014', '2017/11/22 12:00:00', 2, 1, 6);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Basia', 'Kochana', '28406049405', '126906084', '2019/12/1 12:00:00', 2, 2, 6);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Ola', N'Daszek', '94416343462', '509328529', '2018/2/7 12:00:00', 2, 2, 6);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Jakub', N'Górski', '19931058891', '512056784', '2020/1/5 12:00:00', 2, 3, 6);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Antonii', 'Buk', '63890494850', '847352424', '2017/4/4 12:00:00', 2, 3, 6);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Damian', 'Szpak', '56676667160', '684152153', '2018/6/17 12:00:00', 2, 4, 6);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Julia', 'Rak', '58610187066', '151308230', '2019/5/18 12:00:00', 2, 4, 6);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Kaja', 'Baja', '87560989857', '455479978', '2020/9/15 12:00:00', 2, 5, 6);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Radek', 'Barek', '40731142792', '345739749', '2016/7/14 12:00:00', 2, 5, 6);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Bartek', 'Majtek', '54778385814', '887522927', '2015/8/19 12:00:00', 2, 6, 6);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Bonifacy', 'Cacy', '78955494490', '756989149', '2017/9/19 12:00:00', 2, 6, 6);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Klara', 'Malowana', '24829146255', '964915514', '2019/5/23 12:00:00', 2, 7, 6);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Bogdan', N'Wisła', '32253350216', '803188284', '2019/2/26 12:00:00', 2, 8, 6);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Karol', 'Lizak', '44815012334', '385014695', '2018/11/22 12:00:00', 2, 1, 6);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Patryk', 'Bajka', '40924902969', '250319315', '2017/12/21 12:00:00', 2, 9, 6);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Natalia', 'Falka', '24192948216', '694597397', '2016/10/27 12:00:00', 2, 10, 6);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Weronika', 'Nowacka', '16197890815', '694915436', '2017/10/26 12:00:00', 2, 10, 6);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Halina', 'Pomidorowa', '77651247380', '527399241', '2015/7/31 12:00:00', 2, 11, 6);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Arkadiusz', N'Królik', '65374860341', '907617956', '2017/3/31 12:00:00', 2, 12, 6);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Luciusz', 'Klawiatura', '98188456050', '009729594', '2018/3/10 12:00:00', 2, 12, 6);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Szymon', 'Monitor', '69910025977', '911445299', '2019/6/5 12:00:00', 2, 8, 6);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Igor', 'Myszka', '46526613957', '527565964', '2018/2/24 12:00:00', 2, 7, 6);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Eustachy', 'Router', '58354305409', '926888578', '2020/1/26 12:00:00', 2, 1, 6);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Filip', N'Podkładka', '57191486952', '104143323', '2020/6/18 12:00:00', 2, 2, 6);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Konrad', N'Podkomórka', '68239356600', '803558228', '2016/8/4 12:00:00', 2, 9, 6);
go

--dostawcy

--starzy
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values ('Jan','Nowak','12345678912','123456789','2020/01/10 12:30:23', 1, 1, 2);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Natalia', 'Szadkowska', '75010734889', '126648111', '2020/12/01 12:00:00', 2, 2, 3);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Artur', N'Kądecki', '70042078417', '306451785', '2020/12/02 12:00:00', 2, 2, 4);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Grzegorz', N'Waśniewski', '85010812276', '554666218', '2020/12/03 12:00:00', 3, 3, 5);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Sławomir', 'Antczak', '83040545153', '924545432', '2020/12/05 12:00:00', 5, 4, 8);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Czesław', 'Warecki', '50091262144', '378911117', '2020/12/07 12:00:00', 7, 5, 2);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Miłosz', N'Gośnierz', '46121071646', '377905756', '2020/12/08 12:00:00', 8, 5, 3);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Natalia', N'Głowacka', '88041883653', '761983697', '2020/11/11 12:00:00', 9, 6, 4);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Kinga', N'Mała', '59050397862', '985631740', '2020/3/17 12:00:00', 10, 6, 5);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Aleksandra', 'Ogromniasta', '983164758', '501349770', '2020/12/11 12:00:00', 11, 7, 6);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Patryk', 'Jaki', '81073097175', '517234965', '2020/12/12 12:00:00', 12, 7, 7);

--wozni
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Jakub', N'Taki', '57983126459', '154782165', '2019/5/1 12:00:00', 6, 1, 7);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Jakub', N'Piłosz', '60030973714', '158315377', '2020/4/06 12:00:00', 6, 2, 7);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Gracjan', N'Roztocki', '82526564599', '505912345', '2020/4/20 12:00:00', 6, 3, 7);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Jan', N'Pompka', '06618227321', '543921098', '2020/9/18 12:00:00', 6, 4, 7);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Janusz', N'Stalone', '80365795971', '868182201', '2020/2/21 12:00:00', 6, 5, 7);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Sylwester', N'Kowalski', '99335316145', '620907729', '2020/1/20 12:00:00', 6, 6, 7);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Asz', N'Keczup', '43028321805', '992151582', '2020/6/18 12:00:00', 6, 7, 7);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Alicja', N'Nowacka', '59422485044', '987459782', '2020/4/16 12:00:00', 6, 8, 7);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Halina', N'Młoda', '70383643401', '463933953', '2020/7/3 12:00:00', 6, 9, 7);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Krzystof', N'Stary', '17060818207', '237874434', '2020/11/23 12:00:00', 6, 10, 7);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Agnieszka', N'Humus', '45908405729', '375831855', '2020/10/30 12:00:00', 6, 11, 7);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Cezary', N'Mizeria', '67019845467', '923043115', '2020/11/9 12:00:00', 6, 12, 7);
go

--szefowie kuchnii
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Mirosław', N'Dżmalski', '69112672653', '624172547', '2019/10/06 12:00:00', 4, 1, 7);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Agnieszka', N'Wysocka', '79070575325', '966779581', '2019/10/08 12:00:00', 4, 2, 7);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Monika', N'Homarowa', '97260912852', '884028497', '2019/10/12 12:00:00', 4, 3, 7);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Wacław', N'Długaśny', '92041262378', '638145409', '2019/11/25 12:00:00', 4, 4, 7);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Łukasz', N'Zagrobelny', '46113048818', '299966914', '2019/12/06 12:00:00', 4, 5, 7);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Szymon', N'Chłam', '65010482356', '920422271', '2019/12/10 12:00:00', 4, 6, 7);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Elżbieta', N'Można', '92070547716', '383197747', '2020/1/4 12:00:00', 4, 7, 7);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Choracy', N'Grecki', '84083138139', '606502294', '2020/1/8 12:00:00', 4, 8, 7);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Genowefa', N'Stara', '93072199765', '048191328', '2020/2/3 12:00:00', 4, 9, 7);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Leokadia', N'Młoda', '66082715283', '223532307', '2020/3/14 12:00:00', 4, 10, 7);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Agata', N'Durna', '90052563949', '977769139', '2020/6/12 12:00:00', 4, 11, 7);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Honorata', N'Mądra', '76012818667', '401591698', '2020/7/18 12:00:00', 4, 12, 7);
go

--kucharze
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Klaudia', N'Dworska', '58022344251', '809713192', '2019/06/1 12:00:00', 3, 1, 7);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Ilona', N'Wiśniewska', '85013042542', '497865957', '2019/06/6 12:00:00', 3, 1, 7);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Luiza', N'Zalewska', '52060927889', '225924881', '2019/07/2 12:00:00', 3, 2, 7);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Julian', N'Górski', '58030659659', '103174594', '2019/07/7 12:00:00', 3, 3, 7);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Grzegorz', N'Adamski', '56090482284', '387074660', '2019/07/14 12:00:00', 3, 3, 7);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Alex', N'Krajewski', '54050117739', '326829307', '2019/08/21 12:00:00', 3, 4, 7);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Roksana', N'Adamska', '61052127899', '394602151', '2019/08/12 12:00:00', 3, 5, 7);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Karolina', N'Górecka', '95061565962', '354062429', '2019/08/18 12:00:00', 3, 5, 7);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Bolesław', N'Urbański', '85100685216', '627319240', '2019/08/19 12:00:00', 3, 6, 7);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Matylda', N'Nowak', '56111083366', '939390606', '2019/08/21 12:00:00', 3, 6, 7);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Artur', N'Kaźmierczak', '78091079939', '603009252', '2019/09/6 12:00:00', 3, 7, 7);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Przemysław', N'Mazur', '90070873541', '084825840', '2019/09/7 12:00:00', 3, 7, 7);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Adrianna', N'Chmielewska', '96122246299', '592532693', '2019/10/1 12:00:00', 3, 8, 7);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Korneliusz', N'Wójcik', '56022812893', '401983478', '2019/10/2 12:00:00', 3, 8, 7);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Bartłowmiej', N'Kowalczyk', '90051172487', '534898057', '2019/11/6 12:00:00', 3, 9, 7);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Martyna', N'Krajewska', '69112274558', '842052455', '2019/12/7 12:00:00', 3, 9, 7);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Maciej', N'Dąbrowski', '60052319833', '704892130', '2020/1/11 12:00:00', 3, 10, 7);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Mariusz', N'Nowak', '61010685737', '964343149', '2020/1/23 12:00:00', 3, 11, 7);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Rafał', N'Kowal', '50091643291', '718107311', '2020/1/26 12:00:00', 3, 12, 7);
go

--pomocnicy kucharza
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Oskar', N'Krupa', '54100449654', '703705355', '2019/3/27 12:00:00', 5, 1, 7);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Ignacy', N'Makowski', '64090251728', '482486211', '2019/7/21 12:00:00', 5, 3, 7);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Marian', N'Włodarczyk', '76020234455', '963420007', '2019/9/28 12:00:00', 5, 4, 7);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Kamil', N'Sawicki', '56031951572', '959230765', '2020/1/12 12:00:00', 5, 6, 7);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Kewin', N'Ostrowski', '02240337926', '702051673', '2020/2/1 12:00:00', 5, 7, 7);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Heronim', N'Zakrzewski', '76051561683', '035478478', '2020/2/8 12:00:00', 5, 9, 7);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Remigiusz', N'Laskowski', '83123058572', '687600687', '2020/2/12 12:00:00', 5, 11, 7);


insert into zamowienie (data, adres, lokal_id, klient_id, pracownik_id, status_zamowienia) values ('2021/01/08 19:43:10', N'ul. Bobrowa', 1, 1, 1, N'Oczekujące' );
insert into zamowienie (data, adres, lokal_id, klient_id, pracownik_id, status_zamowienia) values ('2021/01/08 18:01:00', N'ul. Miętowa', 2, 2, 1, 'W toku');
insert into zamowienie (data, adres, lokal_id, klient_id, pracownik_id, status_zamowienia) values ('2021/01/01 19:43:10', N'ul. Habrowa', 3, 3, 2, 'Wykonane');
insert into zamowienie (data, adres, lokal_id, klient_id, pracownik_id, status_zamowienia) values ('2021/01/01 19:43:10', N'ul. Makowa', 4, 4, 2, 'Wykonane');
insert into zamowienie (data, adres, lokal_id, klient_id, pracownik_id, status_zamowienia) values ('2021/01/08 18:02:00', N'ul. Akacjowa', 5, 5, 3, 'W toku');
insert into zamowienie (data, adres, lokal_id, klient_id, pracownik_id, status_zamowienia) values ('2021/01/01 19:43:10', N'ul. Lipowa', 6, 6, 3, 'Wykonane');
insert into zamowienie (data, adres, lokal_id, klient_id, pracownik_id, status_zamowienia) values ('2021/01/08 18:03:00', N'ul. Szeroka', 7, 7, 4, 'W toku');
insert into zamowienie (data, adres, lokal_id, klient_id, pracownik_id, status_zamowienia) values ('2021/01/02 19:43:10', N'ul. Wąska', 8, 8, 4, 'Wykonane');
insert into zamowienie (data, adres, lokal_id, klient_id, pracownik_id, status_zamowienia) values ('2021/01/03 19:43:10', N'ul. Długa', 9, 9, 5, 'Wykonane');
insert into zamowienie (data, adres, lokal_id, klient_id, pracownik_id, status_zamowienia) values ('2021/01/08 18:04:00', N'ul. Krótka', 10, 10, 5, 'W toku');
insert into zamowienie (data, adres, lokal_id, klient_id, pracownik_id, status_zamowienia) values ('2021/01/04 19:43:10', N'ul. Szara', 11, 11, 6, 'Wykonane');
insert into zamowienie (data, adres, lokal_id, klient_id, pracownik_id, status_zamowienia) values ('2021/01/08 18:05:00', N'ul. Jana Pawła II', 12, 11, 6, 'W toku');
go

insert into zamowienie_posilek (liczba_posilkow, posilek_id, zamowienie_id) values (1, 1, 1);
insert into zamowienie_posilek (liczba_posilkow, posilek_id, zamowienie_id) values (1, 11, 2);
insert into zamowienie_posilek (liczba_posilkow, posilek_id, zamowienie_id) values (1, 19, 3);
insert into zamowienie_posilek (liczba_posilkow, posilek_id, zamowienie_id) values (1, 21, 4);
insert into zamowienie_posilek (liczba_posilkow, posilek_id, zamowienie_id) values (1, 3, 5);
insert into zamowienie_posilek (liczba_posilkow, posilek_id, zamowienie_id) values (3, 5, 6);
insert into zamowienie_posilek (liczba_posilkow, posilek_id, zamowienie_id) values (1, 6, 6);
insert into zamowienie_posilek (liczba_posilkow, posilek_id, zamowienie_id) values (2, 2, 7);
insert into zamowienie_posilek (liczba_posilkow, posilek_id, zamowienie_id) values (1, 1, 7);
insert into zamowienie_posilek (liczba_posilkow, posilek_id, zamowienie_id) values (1, 8, 8);
insert into zamowienie_posilek (liczba_posilkow, posilek_id, zamowienie_id) values (1, 7, 9);
insert into zamowienie_posilek (liczba_posilkow, posilek_id, zamowienie_id) values (4, 5, 10);
insert into zamowienie_posilek (liczba_posilkow, posilek_id, zamowienie_id) values (2, 4, 10);
insert into zamowienie_posilek (liczba_posilkow, posilek_id, zamowienie_id) values (1, 2, 11);
insert into zamowienie_posilek (liczba_posilkow, posilek_id, zamowienie_id) values (1, 8, 12);
go

--recepcjoniści
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Hania', N'Bania', '05483201473', '309182003', '2020/12/01 12:00:00', 7, 1, 6);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Jasio', N'Rowerek', '88224298436', '901172387', '2020/12/01 12:00:00', 7, 2, 6);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Mieszko', N'Pierwszy', '52590103692', '947898203', '2020/12/01 12:00:00', 7, 3, 6);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Anna', N'Miła', '07399738132', '853914744', '2020/12/01 12:00:00', 7, 4, 6);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Kazimierz', N'Wielki', '06387369817', '095741658', '2020/12/01 12:00:00', 7, 5, 6);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Julian', N'Hanas', '79839456077', '912171574', '2020/12/01 12:00:00', 7, 6, 6);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Mirosław', N'Lichy', '73134084483', '858702528', '2020/12/01 12:00:00', 7, 7, 6);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Aleksandra', N'Niska', '49222613969', '205984201', '2020/12/01 12:00:00', 7, 8, 6);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Ewelina', N'Mroczna', '47228602186', '841701501', '2020/12/01 12:00:00', 7, 9, 6);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Sylwia', N'Wysoka', '26096607949', '858557351', '2020/12/01 12:00:00', 7, 10, 6);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Wiktoria', N'Chuda', '80645034500', '057202523', '2020/12/01 12:00:00', 7, 11, 6);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Wiola', N'Czysta', '70085707026', '874629936', '2020/12/01 12:00:00', 7, 12, 6);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Wioletta', N'Ruda', '43088270552', '938754425', '2020/12/01 12:00:00', 7, 1, 6);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Magda', N'Żubr', '99299845638', '980464626', '2020/12/01 12:00:00', 7, 2, 6);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Mateusz', N'Lubiany', '22831363269', '997180496', '2020/12/01 12:00:00', 7, 6, 6);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Sebastian', N'Krótki', '22067528040', '542393163', '2020/12/01 12:00:00', 7, 12, 6);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Krystian', N'Cichy', '30965101409', '045404930', '2020/12/01 12:00:00', 7, 8, 6);

--marketingowcy
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Korneliusz', N'Waha', '95111482997', '242547615', '2019/1/6 12:00:00', 12, 1, 1);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Antonii', N'Kuta', '61031458912', '952490247', '2019/1/8 12:00:00', 12, 1, 1);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Artur', N'Głośny', '91081349465', '749510679', '2019/1/12 12:00:00', 12, 1, 1);

--księgowi
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Dorota', N'Kowalska', '93012225938', '987849422', '2019/1/1 12:00:00', 11, 1, 4);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Anatolia', N'Wasilewska', '70033181944', '404666860', '2019/1/3 12:00:00', 11, 2, 4);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Matylda', N'Chmielewska', '02281725991', '660381675', '2019/1/4 12:00:00', 11, 3, 4);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Jadwiga', N'Lewandowska', '72011931451', '750535488', '2019/1/4 12:00:00', 11, 4, 4);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Izabela', N'Wysocka', '95061013229', '527093670', '2019/1/5 12:00:00', 11, 5, 4);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Luiza', N'Pietrzak', '48032128462', '164202360', '2019/1/5 12:00:00', 11, 6, 4);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Marysia', N'Szymańska', '89042811519', '884938486', '2019/1/6 12:00:00', 11, 7, 4);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Izyda', N'Zawadzka', '95060876852', '415215683', '2019/1/7 12:00:00', 11, 8, 4);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Beata', N'Zielińska', '91122483464', '643063300', '2019/1/8 12:00:00', 11, 9, 4);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Eleonora', N'Włodarczyk', '91090372483', '992485233', '2019/1/9 12:00:00', 11, 10, 4);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Paulina', N'Sokołowska', '70111251778', '780302861', '2019/1/11 12:00:00', 11, 11, 4);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Danuta', N'Krajewska', '54121273265', '376672903', '2019/1/15 12:00:00', 11, 12, 4);


--manager
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Ola', N'Gandor', '60798652972', '293285830', '2015/1/1 12:00:00', 8, 1, 3);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Agnieszka', N'Niedzielski', '52459634190', '472069779', '2019/4/15 12:00:00', 8, 2, 3);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Skyler', N'Wczorajszy', '51343113372', '242112765', '2019/7/14 12:00:00', 8, 3, 3);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Sara', N'Mianowana', '88523911388', '665892563', '2019/1/1 12:00:00', 8, 4, 3);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Lisa', N'Rozczarowana', '85448723990', '397133840', '2019/7/8 12:00:00', 4, 5, 3);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Adrian', N'Kosmaty', '65178231923', '347088897', '2019/2/25 12:00:00', 8, 6, 3);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Jhon', N'Dziwny', '60473022138', '764834287', '2018/11/09 12:00:00', 8, 7, 3);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Harry', N'Szukający', '96962612968', '270265553', '2018/9/11 12:00:00', 8, 8, 3);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Janusz', N'Typowy', '22701158485', '183962807', '2020/6/2 12:00:00', 8, 9, 3);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Brandi', N'Szara', '79562735746', '419029814', '2017/21/2 12:00:00', 8, 10, 3);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Lana', N'Hałaśliwa', '53045188797', '517363336', '2016/6/9 12:00:00', 8, 11, 3);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Riley', N'Nagrana', '95888371324', '597303565', '2020/9/6 12:00:00', 8, 12, 3);

--informatycy
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Rafał', N'Berenc', '91100361483', '340832256', '2017/3/7 12:00:00', 10, 1, 5);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Maciej', N'Dąbrowski', '82120577851', '707357917', '2018/8/9 12:00:00', 10, 1, 5);
insert into pracownik (imie, nazwisko, pesel, telefon, data_zatrudnienia, stanowisko_id, lokal_id, dzial_id) values (N'Karol', N'Głowacki', '79032931437', '901995210', '2019/6/1 12:00:00', 10, 1, 5);