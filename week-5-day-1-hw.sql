Week 5 - Monday Questions (Homework)

-- 1. How many actors are there with the last name ‘Wahlberg’?

select count(last_name)
from actor
where last_name = 'Wahlberg'

-- Answer: 2


-- 2. How many payments were made between $3.99 and $5.99?

select count(amount)
from payment
where amount between 3.99 and 5.99

-- Answer: 5,607


-- 3. What film does the store have the most of? (search in inventory)

select film_id, max(inventory_id)
from inventory
group by film_id order by film_id desc

-- Answer: Zorro Ark, 4,581 copies


-- 4. How many customers have the last name ‘William’?

select count(first_name) as first_name_william
from customer
where first_name = 'William'

-- Answer: 1


-- 5. What store employee (get the id) sold the most rentals?

select first_name, last_name, staff_id 
from staff

-- Answer: 



-- 6. How many different district names are there?

select count(district)
from address

-- Answer: 603 district names



-- 7. What film has the most actors in it? (use film_actor table and get film_id)

select film_id, max(actor_id) as most_actors
from film_actor
group by film_id order by most_actors desc


-- Answer: There are several films that have 200 actors



-- 8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)

select store_id, last_name
from customer
where last_name like '%es%';

-- Answer: 30



-- 9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
-- with ids between 380 and 430? (use group by and having > 250)

select amount, rental_id, customer_id 
from payment
where customer_id between 380 and 430
group by amount


-- Answer: ??



-- 10. Within the film table, how many rating categories are there? And what rating has the most
-- movies total?

select rating, count(rating) 
from film
group by rating 

-- Answer: 5 categories, PG-13 has the most with 223 total movies

