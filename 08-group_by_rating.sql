USE mavenmovies;

/*
 Count the number of films for each rating.
 COUNT(film_id) and COUNT(film_id) AS count_of_films_with_this_rating
 return the same value; the second one uses an alias to give the column
 a more descriptive name.
*/
SELECT 
    rating,
    COUNT(film_id), -- Not needed; included to demonstrate that it returns the same count as the alias below.
    COUNT(film_id) AS count_of_films_with_this_rating
FROM film
GROUP BY rating; -- Groups films by rating so COUNT() is calculated for each rating.