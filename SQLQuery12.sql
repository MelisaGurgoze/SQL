--1)film tablosunda film uzunluðu length sütununda gösterilmektedir. Uzunluðu ortalama film uzunluðundan fazla kaç tane film vardýr?
  Select count(*) from film where length> (select avg(length) from film);
--2)film tablosunda en yüksek rental_rate deðerine sahip kaç tane film vardýr?
  Select count(*) from film where rental_rate=(Select max(rental_rate) from film);
--3)film tablosunda en düþük rental_rate ve en düþün replacement_cost deðerlerine sahip filmleri sýralayýnýz.
  Select * from film where rental_rate= (select min(rental_rate) from film) and replacement_cost=(select min(replacement_cost) from film);
--4)payment tablosunda en fazla sayýda alýþveriþ yapan müþterileri(customer) sýralayýnýz.
  Select customer_id, count(payment_id),payment_count from payment group by customer_id having count(payment_id)
  =(Select count(payment_id) from payment group by customer_id order by count(payment_id) desc LIMIT 1;