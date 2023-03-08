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

-- Question 3: List the unique records for Sci-Fi movies where male 24-year old students have given 5 star ratings
-- select * from movies inner join genres_movies on movies.id = genres_movies.movie_id 
-- 	where genres_movies.genre_id = (
-- 		select genres.id from genres where `name` = 'Sci-Fi')
--     and movies.id in (
-- 		select movie_id from ratings where ratings.user_id in (
-- 			select users.id from users inner join occupations on users.occupation_id = occupations.id where age = 24 and occupations.name = 'Student' and gender = 'm')
-- 		and ratings.rating = 5);

-- Question 4: List the unique titles of each of the movies released on the most popular release day
-- select movies.title from movies where movies.release_date = (
-- 	select movies.release_date from movies group by movies.release_date order by count(movies.release_date) desc limit 1);
    
-- Question 5: Find the total number of movies in each genre: list the results in ascending numerical order

    
