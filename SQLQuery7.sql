--1)film tablosunda bulunan filmleri rating deðerlerine göre gruplayýnýz.
		Select rating from film group by rating;
--2)film tablosunda bulunan filmleri replacement_cost sütununa göre grupladýðýmýzda film sayýsý 50 den fazla olan replacement_cost deðerini ve karþýlýk gelen film sayýsýný sýralayýnýz.
        Select replacement_cost,Count(*) from film  group by replacement_cost Having count(*)>50;
--3)customer tablosunda bulunan store_id deðerlerine karþýlýk gelen müþteri sayýlarýný nelerdir? 
        Select store_id,count(*) from customer group by store_id;
--4)city tablosunda bulunan þehir verilerini country_id sütununa göre gruplandýrdýktan sonra en fazla þehir sayýsý barýndýran country_id bilgisini ve þehir sayýsýný paylaþýnýz.
        Select country_id,count(*) from city group by country_id order by count(*) desc LIMIT 1;