USE mavenmovies;

SELECT
    inventory.store_id,
    inventory.inventory_id,
    film.title,
    film.description

FROM inventory

-- Relates each inventory record to its corresponding film.
INNER JOIN film
    ON inventory.film_id = film.film_id

-- Sorts the results by inventory ID in ascending order.
ORDER BY inventory.inventory_id;