USE sakila;

-- SELECT actor.first_name AS 'First Name', actor.last_name AS 'Last Name', COUNT(film_actor.actor_id) AS 'Film Count' FROM film_actor 
--  INNER JOIN actor ON film_actor.actor_id = actor.actor_id 
--  GROUP BY film_actor.actor_id ORDER BY COUNT(film_actor.actor_id) DESC LIMIT 1;
--  
--  select avg(film.length) as 'Average Film Length' from film;
--  
-- select category.name as 'Category Name', avg(film.length) as 'Average Length' from film
-- 	inner join film_category on film.film_id = film_category.film_id
--     inner join category on film_category.category_id = category.category_id
-- 	group by film_category.category_id order by avg(film.length) desc;

-- select count(film.film_id) as 'Films with Robots' from film where `description` like '%robot%';

-- select film.title as 'Title', film.length as 'Length' from film where film.length = (select max(film.length) from film);

-- select count(film.release_year) as 'Films released in 2010' from film where film.release_year = '2010';