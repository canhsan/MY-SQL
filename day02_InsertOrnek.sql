/* ----------------------------------------------
Q1 : okul_no , isim , adres, derece fieldlari olan 
anadolu lisesi table olusturun. okul_no CHAR ve UNIQUE, 
isim NOT NULL olacak
------------------------------------------------- */
create table anadolu_lisesi
(
okul_no char(4) UNIQUE,
isim varchar(25) not null,
adres varchar(100),
derece double
);
use sys;

select * from anadolu_lisesi;

INSERT INTO anadolu_lisesi VALUES (1000, 'hasan can', 'Ankara', 4.9);
INSERT INTO anadolu_lisesi VALUES (1001, 'fatih sarı', 'Ankara', 4.8);
INSERT INTO anadolu_lisesi VALUES (1002, 'null', 'Ankara', 4.7);
INSERT INTO anadolu_lisesi VALUES (1003, 'ayse sezen', 'Ankara', 4.6);
INSERT INTO anadolu_lisesi VALUES (1004, 'kübra baş', 'Ankara', 4.5);
INSERT INTO anadolu_lisesi VALUES (1005, 'hasan canan', 'Ankara', 4.4);
INSERT INTO anadolu_lisesi (okul_no, isim, adres) VALUES (1006, 'hakan geref', 'Ankara');
INSERT INTO anadolu_lisesi (isim, okul_no, derece) VALUES ('haluk levent', 1007, 4.8);










