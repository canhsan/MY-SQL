/*==================================SELECT-REGEXP_LIKE==================================
 Daha karmasik pattern ile sorgulama islemi icin REGEXP_LIKE kullanilabilir.
  -- 'c' => case-sensitive demektir
  -- 'i' => case-insensitive demektir ve default case-insensitive aktiftir.
  
-----Syntax-----
 SELECT sutun1,sutun2,...
 FROM tablo_adi
 WHERE REGEXP_LIKE(sutun_adi, 'pattern[]','c'[])
%
=========================================================================================*/
use sys;

CREATE TABLE kelimeler
    (
        id int UNIQUE,
        kelime VARCHAR(50) NOT NULL,
        harf_sayisi int
    );
    
    INSERT INTO kelimeler VALUES 
    (1001, 'hot', 3),
    (1002, 'hat', 3),
    (1003, 'hit', 3),
    (1004, 'hbt', 3),
    (1005, 'hct', 3),
    (1006, 'adem', 4),
    (1007, 'selim', 5),
    (1008, 'yusuf', 5),
    (1009, 'hip', 3),
    (1010, 'HOT', 3),
    (1011, 'hOt', 3),
    (1012, 'h9t', 3),
    (1013, 'hoot', 4),
    (1014, 'haaat', 5),
    (1015, 'hooooot', 7),
    (1016, 'h-t', 3),
    (1017, 'h?t', 3),
    (1018, 'hOOOt', 5),
    (1019, 'O', 1);
    select * from kelimeler;
    
-- NOT: VEYA islemi icin | karakteri kullanilir.
-- Q1 : Icerisinde 'ot' veya 'at' bulunan kelimeleri case-sensitive'e 
-- dikkat ederek listele

SELECT kelime
FROM kelimeler
WHERE REGEXP_LIKE (kelime, 'ot|at', 'c');


SELECT * FROM kelimeler;

SELECT kelime
FROM kelimeler
WHERE kelime LIKE 'h_t';


/*================================== SELECT-REGEXP_LIKE ==================================
 Daha karmasik pattern ile sorgulama islemi icin REGEXP_LIKE kullanilabilir.
  -- 'c' => case-sensitive demektir
  -- 'i' => case-insensitive demektir ve default case-insensitive aktiftir.
  
-----Syntax-----
 SELECT sutun1,sutun2,...
 FROM tablo_adi
 WHERE REGEXP_LIKE(sutun_adi, 'pattern[]','c'[]);
=========================================================================================*/
-- NOT: VEYA islemi icin | karakteri kullanilir.
-- NOT: Baslangici gostermek icin ^ karakteri kullanilir.
-- ******************* Kelimeler Tablosundan *******************
-- Q1 : 'ho' veya 'hi' ile baslayan kelimeleri case-sensitive'e 
-- dikkat etmeksizin listele

SELECT kelime
FROM kelimeler
WHERE REGEXP_LIKE(kelime, '^ho|^hi');
    
-- NOT : [!-~] = Butun karakterleri ifade eder.
--       [a-zA-Z0-9] = Harf ve rakamlari temsil eder.
--     Q3 : h ile baslayip t ile biten 3 harfli kelimeleri 
--      (h ile t kucuk harfli olanlari) listeleyiniz   


    