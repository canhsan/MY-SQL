/*------------------------------------------------------------
Q1: "tedarikciler" isminde bir tablo olusturun.
   "tedarikci_id", "tedarikci_ismi", "tedarikci_adres" ve 
   "ulasim_tarihi" field'lari olsun.
-------------------------------------------------------------*/
use sys;
create table tedarikciler
(
tedarikci_id int,
tedarikci_ismi varchar(25),
tedarikci_adres varchar(50),
ulasim_tarihi date

);

SELECT * FROM tedarikciler;

/*--------------------------------------------------------
Q2: "tedarikciler" table'indan "tedarikci_ismi" ve
 "ulasim_tarihi" field'lari olan "tedarikciler_son" 
 isimli yeni bir table olusturun.
---------------------------------------------------------*/

create table tedarikciler_son
as
select tedarikci_ismi, ulasim_tarihi
from tedarikciler;

select * from tedarikciler_son;





