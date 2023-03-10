-- 1. How many actors are there with the last name ‘Wahlberg’?  - 2
SELECT COUNT(actor_id)
FROM actor 
WHERE last_name = 'Wahlberg';

-- 2. How many payments were made between $3.99 and $5.99? - 5607
SELECT count(payment)
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;

-- 3. What film does the store have the most of? (search in inventory)
SELECT film_id, count(film_id)
FROM inventory
GROUP BY film_id 
ORDER BY count DESC;

-- 4. How many customers have the last name ‘William’? - 0
SELECT count(customer_id)
FROM customer 
WHERE last_name = 'William';

-- 5. What store employee (get the id) sold the most rentals? - 2
SELECT staff_id, count(payment_id)
FROM payment
GROUP BY staff_id 
ORDER BY count DESC;

-- 6. How many different district names are there? - 378
SELECT DISTINCT district 
FROM address
WHERE district LIKE '%';

-- 7. What film has the most actors in it? (use film_actor table and get film_id) - id - 508
SELECT film_id, count(actor_id) 
FROM film_actor  
GROUP BY film_id  
ORDER BY count desc; 

-- 8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table) - 13
SELECT count(customer_id)
FROM customer
WHERE last_name LIKE '%es' AND store_id = 1;

-- 9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers - 3
-- with ids between 380 and 430? (use group by and having > 250)
SELECT amount , count(*) 
FROM payment
WHERE customer_id BETWEEN 380 AND 430
GROUP BY amount
HAVING count(*) > 250


-- 10. Within the film table, how many rating categories are there? And what rating has the most - 5 - PG-13
-- movies total?
SELECT rating, COUNT(rating)
FROM film
GROUP BY rating 
ORDER BY count DESC;