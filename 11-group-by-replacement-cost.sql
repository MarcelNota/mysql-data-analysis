USE mavenmovies;

-- Group films by their replacement cost.
-- For each replacement cost, calculate:
-- 1. The total number of films.
-- 2. The cheapest rental rate.
-- 3. The most expensive rental rate.
-- 4. The average rental rate.
SELECT 
    replacement_cost,
    COUNT(film_id) AS number_of_films,
    MIN(rental_rate) AS cheapest_rental,
    MAX(rental_rate) AS most_expensive_rental,
    AVG(rental_rate) AS average_rental_rate
FROM film
GROUP BY
    replacement_cost;