USE sakila;

-- SELECT actor.first_name AS 'First Name', actor.last_name AS 'Last Name', COUNT(film_actor.actor_id) AS 'Film Count' FROM film_actor 
--  INNER JOIN actor ON film_actor.actor_id = actor.actor_id 
--  GROUP BY film_actor.actor_id ORDER BY COUNT(film_actor.actor_id) DESC LIMIT 1;
--  
--  select avg(film.length) as 'Average Film Length' from	film;
--  
-- select category.name as 'Category Name', avg(film.length) as 'Average Length' from film
-- 	inner join film_category on film.film_id = film_category.film_id
--     inner join category on film_category.category_id = category.category_id
-- 	group by film_category.category_id order by avg(film.length) DESC;

-- select count(film.film_id) as "Film's with Robots" from film where `description` like '%robot%';
