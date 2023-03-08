USE sakila;

-- Question 1
select actor.first_name as 'First Name', actor.last_name as 'Last Name', count(film_actor.actor_id) as 'Film Count' from film_actor 
 inner join actor on film_actor.actor_id = actor.actor_id 
 group by film_actor.actor_id order by count(film_actor.actor_id) desc limit 1;
 
 -- Question 2
select avg(film.length) as 'Average Film Length' from film;
 
 -- Question 3
select category.name as 'Category Name', avg(film.length) as 'Average Length' from film
	inner join film_category on film.film_id = film_category.film_id
    inner join category on film_category.category_id = category.category_id
	group by film_category.category_id order by avg(film.length) desc;

-- Question 4
select count(film.film_id) as 'Films with Robots' from film where `description` like '%robot%';

-- Question 5
select film.title as 'Title', film.length as 'Length' from film where film.length = (select max(film.length) from film);

-- Question 6
select count(film.release_year) as 'Films released in 2010' from film where film.release_year = '2010';

-- Question 7
select actor.last_name, count(actor.last_name) from actor group by actor.last_name having count(actor.last_name) = 1;