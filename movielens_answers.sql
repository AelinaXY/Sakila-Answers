use movielens;

-- Question 1: List the titles and release dates of movies released between 1983 and 1993 in reverse chronological order
-- select movies.title, movies.release_date from movies 
-- 	where movies.release_date >= '1983-01-01' and movies.release_date <= '1993-12-31' 
--     ordser by movies.release_date desc;

-- Question 2: Without using LIMIT, list the titles of movies with the lowest average rating.
-- select movies.title as 'Title' from movies
-- 	inner join ratings on movies.id = ratings.movie_id
-- 	where movies.id in (
-- 		select ratings.movie_id from ratings 
-- 		group by ratings.movie_id having avg(ratings.rating) = (
-- 			select min(avg_rating) from (
-- 				select avg(ratings.rating) as avg_rating from ratings group by ratings.movie_id
--                 ) 
-- 			x)
-- 		);
    