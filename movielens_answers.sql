use movielens;

select movies.title, movies.release_date from movies 
	where movies.release_date >= '1983-01-01' and movies.release_date <= '1993-12-31' 
    order by movies.release_date desc;