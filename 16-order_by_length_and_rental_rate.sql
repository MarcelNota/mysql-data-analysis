USE mavenmovies;

-- Retrieve the film title, length and rental rate.
-- ORDER BY first sorts films by length from longest to shortest.
-- When two or more films have the same length,
-- rental_rate is used as the second sorting criterion,
-- also from highest to lowest.
SELECT
    title,
    length,
    rental_rate
FROM film
ORDER BY
    length DESC,
    rental_rate DESC;