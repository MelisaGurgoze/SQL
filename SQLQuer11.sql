--1)actor ve customer tablolar�nda bulunan first_name s�tunlar� i�in t�m verileri s�ralayal�m.
  (Select first_name from actor) UNION (Select first_name from customer)
--2)actor ve customer tablolar�nda bulunan first_name s�tunlar� i�in kesi�en verileri s�ralayal�m.
  (Select first_name from actor) INTERSECT (Select first_name from customer)
--3)actor ve customer tablolar�nda bulunan first_name s�tunlar� i�in ilk tabloda bulunan ancak ikinci tabloda bulunmayan verileri s�ralayal�m.
   (Select first_name from actor) EXCEPT (Select first_name from customer)
--4)�lk 3 sorguyu tekrar eden veriler i�in de yapal�m.
    (Select first_name from actor) UNION ALL (Select first_name from customer)
	(Select first_name from actor) INTERSECT ALL (Select first_name from customer)
	(Select first_name from actor) EXCEPT ALL (Select first_name from customer)