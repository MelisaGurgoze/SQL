--1) film tablosunda bulunan replacement_cost s�tununda bulunana birbirinden farkl� de�erleri s�ralay�n�z
      Select distinct replacement_cost from film;
--2)film tablosunda bulunan replacement_cost s�tununda birbirinden farkl� ka� tane ver vard�r
      Select COUNT(DISTINCT replacement_cost) FROM film;
--3)film tablosunda bulunan film isimlerinden ka� tanesi T karakteri ile ba�lar ve ayn� zamanda rating G ye e�ittir
     Select COUNT(*) FROM film WHERE title LIKE 'T%' AND rating='G';
--4)country tablosunda bulunan �lke isimlerinden ka� tanesi 5 karakterden olu�maktad�r
      Select COUNT(*) from country WHERE country LIKE '_____'
--5) city tablosundaki �ehir isimlerinin ka� tanesi R veya r karakteri ile biter
       Select COUNT(*) from city WHERE film ILIKE '%r'; 