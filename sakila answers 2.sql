use sakila;

-- EXERCISES

-- What is the average running time of films by category?
-- select category.name as 'Category Name', avg(film.length) as 'Average Length' from film
-- 	inner join film_category on film.film_id = film_category.film_id
--     inner join category on film_category.category_id = category.category_id
-- 	group by film_category.category_id order by avg(film.length) desc;

-- Which last names appear more than once? 
-- select actor.last_name, count(actor.last_name) from actor group by actor.last_name having count(actor.last_name) > 1;

-- Retrieve all movies that Fred Costner has appeared in. 
-- select film.title from film
-- 	inner join film_actor on film.film_id = film_actor.film_id
--     inner join actor on film_actor.actor_id = actor.actor_id
--     where actor.first_name = 'Fred' and actor.last_name = 'Costner';

-- Find out which location has the most copies of BUCKET BROTHERHOOD. 
-- select inventory.store_id, count(film.film_id) from inventory 
-- 	inner join film on inventory.film_id = film.film_id 
--     where film.title = 'BUCKET BROTHERHOOD' group by inventory.store_id;

-- Create a list of categories and the number of films for each category.
-- select category.name, count(film_category.category_id) from category 
-- 	inner join film_category on category.category_id = film_category.category_id 
-- 	group by film_category.category_id order by count(film_category.category_id) desc;

-- Create a list of actors and the number of movies by each actor. 
-- select actor.first_name, actor.last_name, count(film.film_id) from actor
-- 	inner join film_actor on actor.actor_id = film_actor.actor_id
-- 	inner join film on film_actor.film_id = film.film_id
--     group by actor.actor_id order by count(film.film_id) desc;

-- Is ‘Academy Dinosaur’ available for rent from Store 1?
select if( count(inventory.store_id) > 0, "Available to rent from Store 1", "Not available to rent from Store 1") as 'Availability'
	from inventory 
    inner join rental on inventory.inventory_id = rental.inventory_id
    where inventory.store_id = '1' and inventory.film_id = (
    select film.film_id from film where film.title = 'Academy Dinosaur') and rental.return_date != null;

-- When is ‘Academy Dinosaur’ due?
--  select cast(rental_date + (select film.rental_duration from film where film.title = 'Academy Dinosaur') as date) as 'Due Date' 
-- 	from rental inner join inventory on rental.inventory_id = inventory.inventory_id
-- 	where film_id = (select film.film_id from film where film.title = 'Academy Dinosaur') and rental.return_date is null;