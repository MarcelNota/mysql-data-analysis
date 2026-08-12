USE mavenmovies;

-- Count the number of films for each rental duration.
-- Each rental_duration value represents a group,
-- and COUNT(film_id) counts how many films belong to each group.
SELECT
    rental_duration,
    COUNT(film_id) AS list_of_films_with_this_rental_duration
FROM film
GROUP BY
    rental_duration;