/*============================== JOIN ISLEMLERI ===============================
    
    Union,Union All Operatorleri farkli tablolardaki sutunlari 
    birlestirmek icin kullanilir.
    
    Join islemleri ise farkli Tablolari birlestirmek icin kullanilir. Diger 
    bir ifade ile farkli tablolardaki secilen sutunlar ile yeni bir tablo 
    olusturmak icin kullanilabilir.
    
    JOIN islemleri Iliskisel Veritabanlari icin cok onemli bir ozelliktir. Cunku
    Foreign Key'ler ile iliskili olan tablolardan istenilen sutunlari cekmek 
    icin JOIN islemleri kullanilabilir.
    
    mySQL'de 3 Cesit Join islemi kullanilabilmektedir.
    
    1) INNER JOIN:  Tablolardaki ortak olan sonuc kumesini gosterir
    2) LEFT JOIN:  Ilk tabloda (Sol) olan sonuclari gosterir
    3) RIGHT JOIN:  Ikinci tabloda (Sag) olan tum sonuclari gosterir
      
    full JOIN=(left join + union + right join) Tablodaki tum sonuclari gosterir
==============================================================================*/   
 use sys;
 CREATE TABLE sirket 
    (
        sirket_id int, 
        sirket_isim VARCHAR(20)
    );
    
    INSERT INTO sirket VALUES(100, 'Toyota');
    INSERT INTO sirket VALUES(101, 'Honda');
    INSERT INTO sirket VALUES(102, 'Ford');
    INSERT INTO sirket VALUES(103, 'Hyundai');
    
    CREATE TABLE siparisler
    (
        siparis_id int,
        sirket_id int, 
        siparis_tarihi DATE
    );
    
    INSERT INTO siparisler VALUES(11, 101, '2020-04-17');
    INSERT INTO siparisler VALUES(22, 102, '2020-04-18');
    INSERT INTO siparisler VALUES(33, 103, '2020-04-19');
    INSERT INTO siparisler VALUES(44, 104, '2020-04-20');
    INSERT INTO siparisler VALUES(55, 105, '2020-04-21');
SELECT * FROM sirket;
SELECT * FROM siparisler;

/* -----------------------------------------------------------------------------
  ORNEK1: Iki Tabloda sirket_id'si ayni olanlarin sirket_ismi, siparis_id ve 
  siparis_tarihleri listeleyen bir sorgu yaziniz.
------------------------------------------------------------------------------*/ 
SELECT sirket.sirket_id,sirket.sirket_isim,siparisler.siparis_id,siparisler.siparis_tarihi
FROM sirket
INNER JOIN siparisler
ON sirket.sirket_id=siparisler.sirket_id;

/*=============================== LEFT JOIN  ==================================
    
    LEFT JOIN, 1. tablodan (sol tablo) SELECT ile ifade edilen sutunlara ait tum
    satirlari getirir. 
    Ancak, diger tablodan sadece ON ile belirtilen kosula uyan satirlari getirir. 
    
    1) Left Join'de ilk tablodaki tum record'lar gosterilir.
    2) Ilk tablodaki datalara 2.tablodan gelen ek datalar 
       varsa bu ek datalar ortak datalar icin gosterilir, 
       ancak ortak olmayan datalar icin o kisimlar bos kalir.
    3) Ilk yazdiginiz Tablonun tamamini aldigi icin hangi tabloyu
       istedigimize karar verip once onu yazmaliyiz. 
        
    Syntax
    -----------
    SELECT sutun1,sutun2....sutunN
    FROM tablo1 
    LEFT JOIN tablo2
    ON tablo1.sutun = tablo2.sutun;
    
    
==============================================================================*/  
/* -----------------------------------------------------------------------------
  ORNEK2: sirketler tablosundaki tum sirketleri ve bu sirketlere ait olan 
  siparis_id ve siparis_tarihleri listeleyen bir sorgu yaziniz.
------------------------------------------------------------------------------*/

-- ******************** LEFT COZUMU *********************
SELECT sirket.sirket_id, sirket.sirket_isim,siparisler.siparis_id,siparisler.siparis_tarihi
FROM sirket LEFT JOIN siparisler
ON sirket.sirket_id = siparisler.sirket_id;
-- ******************** RIGHT COZUMU *********************
SELECT sirket.sirket_id, sirket.sirket_isim,siparisler.siparis_id,siparisler.siparis_tarihi
FROM siparisler RIGHT JOIN sirket
ON sirket.sirket_id = siparisler.sirket_id;

/* -----------------------------------------------------------------------------
  ORNEK3: siparisler tablosundaki tum siparis_id ve siparis_tarihleri ile 
  bunlara karsilik gelen sirket_isimlerini listeleyen bir sorgu yaziniz.
------------------------------------------------------------------------------*/   

/* ======================== IS NULL CONDITION ===========================
    Arama yapilan field'da NULL degeri almis kayitlari getirir.
======================================================================*/



