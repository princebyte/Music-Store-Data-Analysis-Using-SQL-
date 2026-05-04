SELECT * FROM employee;

--QN1:- Who is the senior most employee based on job title?
SELECT last_name,first_name,levels FROM employee
--for the deccending order we can use DESC and in accending we can use ASC.
ORDER BY levels DESC
LIMIT 1;

--QN2:-Which countries have the most Invoices?
SELECT * FROM invoice;

SELECT COUNT(*)AS a, billing_country
FROM Invoice
--yaha maine GROUP BY ka use kiya isse mujhe pata chal jayega ki koi chij kitni bar repeat hua hai 
GROUP BY billing_country
ORDER BY a DESC;

--QN3:-What are top three values of total invoices 
SELECT total FROM Invoice
ORDER BY total DESC
LIMIT 3;

--QN4:-Which city has the best customer? We would like to throw a promotional music festival in the city we made the most money
--Write a query that returns one city that has the highest sum of invoice total return both the city name and invoices totals
SELECT  billing_city,SUM(total)AS invoice_total
FROM Invoice

GROUP BY billing_city

ORDER BY invoice_total DESC

LIMIT 4;

--QN5:-Who is the best customer? the customer who has spent the most money will be declared the best customer.Write a query that returns
--the person who has spent the money.
SELECT customer.customer_id, customer.first_name, customer.last_name,
SUM(invoice.total) AS total_money
FROM customer
JOIN invoice ON customer.customer_id = invoice.customer_id
GROUP BY customer.customer_id, customer.first_name, customer.last_name
ORDER BY total_money DESC
LIMIT 1;







