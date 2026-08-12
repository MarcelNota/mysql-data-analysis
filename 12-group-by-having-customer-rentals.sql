USE mavenmovies;

-- Count the total number of rentals made by each customer.
-- GROUP BY customer_id creates one group for each customer.
-- HAVING filters the grouped results and keeps only customers
-- who have made 30 or more rentals.
SELECT
    customer_id,
    COUNT(rental_id) AS total_rentals
FROM rental
GROUP BY
    customer_id
HAVING COUNT(rental_id) >= 30;