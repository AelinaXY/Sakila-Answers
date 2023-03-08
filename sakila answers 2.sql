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

Find out which location has the most copies of BUCKET BROTHERHOOD. 

-- Create a list of categories and the number of films for each category. 

-- Create a list of actors and the number of movies by each actor. 

-- Is ‘Academy Dinosaur’ available for rent from Store 1? 

-- When is ‘Academy Dinosaur’ due? 