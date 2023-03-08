use movielens;

-- select movies.title, movies.release_date from movies 
-- 	where movies.release_date >= '1983-01-01' and movies.release_date <= '1993-12-31' 
--     order by movies.release_date desc;

select movies.title, ratings.rating from movies
	inner join ratings on movies.id = ratings.movie_id
	where movies.id in (
		select ratings.movie_id from ratings 
		group by ratings.movie_id having avg(ratings.rating) = (
			select min(avg_rating) from (
				select avg(ratings.rating) as avg_rating from ratings group by ratings.movie_id
                ) 
			x)
		);
    