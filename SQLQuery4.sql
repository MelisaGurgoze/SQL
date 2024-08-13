--1) film tablosunda bulunan replacement_cost sütununda bulunana birbirinden farklý deðerleri sýralayýnýz
      Select distinct replacement_cost from film;
--2)film tablosunda bulunan replacement_cost sütununda birbirinden farklý kaç tane ver vardýr
      Select COUNT(DISTINCT replacement_cost) FROM film;
--3)film tablosunda bulunan film isimlerinden kaç tanesi T karakteri ile baþlar ve ayný zamanda rating G ye eþittir
     Select COUNT(*) FROM film WHERE title LIKE 'T%' AND rating='G';
--4)country tablosunda bulunan ülke isimlerinden kaç tanesi 5 karakterden oluþmaktadýr
      Select COUNT(*) from country WHERE country LIKE '_____'
--5) city tablosundaki þehir isimlerinin kaç tanesi R veya r karakteri ile biter
       Select COUNT(*) from city WHERE film ILIKE '%r'; 