--1)film tablosunda bulunan filmleri rating de�erlerine g�re gruplay�n�z.
		Select rating from film group by rating;
--2)film tablosunda bulunan filmleri replacement_cost s�tununa g�re gruplad���m�zda film say�s� 50 den fazla olan replacement_cost de�erini ve kar��l�k gelen film say�s�n� s�ralay�n�z.
        Select replacement_cost,Count(*) from film  group by replacement_cost Having count(*)>50;
--3)customer tablosunda bulunan store_id de�erlerine kar��l�k gelen m��teri say�lar�n� nelerdir? 
        Select store_id,count(*) from customer group by store_id;
--4)city tablosunda bulunan �ehir verilerini country_id s�tununa g�re grupland�rd�ktan sonra en fazla �ehir say�s� bar�nd�ran country_id bilgisini ve �ehir say�s�n� payla��n�z.
        Select country_id,count(*) from city group by country_id order by count(*) desc LIMIT 1;