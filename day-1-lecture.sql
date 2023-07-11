-- * means to select all
select *
from actor;


-- Specify what columns
select first_name, last_name
from actor;

-- Look for specific actor with where clause filter 
-- WHERE is the filter
select actor_id, first_name, last_name
from actor
where first_name = 'Sean'

-- Using LIKE to specify that it doesn't have to look for exact characters
select actor_id, first_name, last_name
from actor
where first_name like 'Sean';

-- Find actors with last name Wahlberg
select count(last_name)
from actor
where last_name like 'Wahlberg';

-- Find how many different film ratiings exist
-- --The DISTINCT keyword in SELECT eliminates duplicate rows and displays unique list of values 
select count(distinct rating) 

-- Find how many categories exist
select count(distinct category_id)
from film_category

-- Query for every name that starts with S
-- % means any amont of characters
select *
from actor
where first_name like 'S%'

-- Query looking with S names with certain amount of characters
-- Underscore __ specifies how many characters
select first_name, last_name
from actor
where first_name like 'S___'

-- Starts with K ends with th but must be at least 4 char long
select first_name, last_name
from actor
where first_name like 'K_%th';

select *
from payment;

select payment_id, customer_id, amount, rental_id
from payment
where amount > 2;

-- Query that looks for everything under or equal to specific amount
select payment_id, customer_id, rental_id, amount
from payment
where amount <= 7.99;

-- Query looking for payments greater than 2 Ordered in Descending Order
-- ORDER BY tells to organize; DESC tells in descending order
select *
from payment
where amount > 2.00
order by amount desc 

-- Query looking for payments greater than 2 Ordered in Ascending Order
-- ORDER BY tells to organize; ASC tells in descending order
select *
from payment
where amount > 2.00
order by amount asc; 

-- Query showing every amount that is NOT 0
select customer_id, amount
from payment 
where amount <> 0;

-- Query combining queries
-- BETWEEN, AND gives range 
select *
from payment
where amount between 2 and 7.99;

-- Aggregators = SUM() AVG() COUNT() MIN() MAX()

select sum(amount)
from payment;

-- Query where every customers payment amounts are summed up
select customer_id, sum(amount)
from payment
group by customer_id 

-- AS used to change alias of table or column; should be camel case
select customer_id, sum(amount) as Total_Purchases
from payment
group by customer_id 

-- Query to find the average of the amount 
select avg(amount)
from payment;

-- Find same as above, but per customer
select customer_id, avg(amount) as Average_Purchase
from payment
group by customer_id;

-- Query how many entries in Payment table
select count(payment_id)
from payment;

-- Query how many entries in Customer table
select customer_id, count(customer_id)
from payment
where customer_id = 599
group by customer_id;

-- Query for how many customers
select *
from customer;

select customer_id, count(customer_id) as payments_made
from payment
group by customer_id 
having count(customer_id) > 20;

-- Shows smallest amount above 7.99
select min(amount) as smallest_above_799
from payment
where amount > 7.99

-- Shows largest amount above 
select max(amount)
from payment
where amount < 2.99

-- Combining filters
select *
from payment
where amount < 1.99 and customer_id = 599;







