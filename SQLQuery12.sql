--1)film tablosunda film uzunlu�u length s�tununda g�sterilmektedir. Uzunlu�u ortalama film uzunlu�undan fazla ka� tane film vard�r?
  Select count(*) from film where length> (select avg(length) from film);
--2)film tablosunda en y�ksek rental_rate de�erine sahip ka� tane film vard�r?
  Select count(*) from film where rental_rate=(Select max(rental_rate) from film);
--3)film tablosunda en d���k rental_rate ve en d���n replacement_cost de�erlerine sahip filmleri s�ralay�n�z.
  Select * from film where rental_rate= (select min(rental_rate) from film) and replacement_cost=(select min(replacement_cost) from film);
--4)payment tablosunda en fazla say�da al��veri� yapan m��terileri(customer) s�ralay�n�z.
  Select customer_id, count(payment_id),payment_count from payment group by customer_id having count(payment_id)
  =(Select count(payment_id) from payment group by customer_id order by count(payment_id) desc LIMIT 1;