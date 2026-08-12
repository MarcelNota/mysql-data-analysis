USE mavenmovies;

-- Count the number of films for each unique combination of:
-- rental_duration, rating and replacement_cost.
-- Each combination represents a separate group.
SELECT
    rental_duration,
    rating,
    replacement_cost,
    COUNT(film_id) AS list_of_films_with_this_rental_duration
FROM film
GROUP BY
    rental_duration,
    rating,
    replacement_cost;

-- We can read the result like this:
-- We have 5 films with a replacement_cost of 20.99,
-- rated PG, and a rental_duration of 6 days.

-- We have 4 films with a replacement_cost of 12.99,
-- rated G, and a rental_duration of 3 days.

-- We have 1 film with a replacement_cost of 18.99,
-- rated NC-17, and a rental_duration of 7 days.