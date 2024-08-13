--1)actor ve customer tablolarýnda bulunan first_name sütunlarý için tüm verileri sýralayalým.
  (Select first_name from actor) UNION (Select first_name from customer)
--2)actor ve customer tablolarýnda bulunan first_name sütunlarý için kesiþen verileri sýralayalým.
  (Select first_name from actor) INTERSECT (Select first_name from customer)
--3)actor ve customer tablolarýnda bulunan first_name sütunlarý için ilk tabloda bulunan ancak ikinci tabloda bulunmayan verileri sýralayalým.
   (Select first_name from actor) EXCEPT (Select first_name from customer)
--4)Ýlk 3 sorguyu tekrar eden veriler için de yapalým.
    (Select first_name from actor) UNION ALL (Select first_name from customer)
	(Select first_name from actor) INTERSECT ALL (Select first_name from customer)
	(Select first_name from actor) EXCEPT ALL (Select first_name from customer)