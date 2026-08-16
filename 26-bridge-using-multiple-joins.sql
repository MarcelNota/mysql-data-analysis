USE mavenmovies;

SELECT DISTINCT
    -- Title of the film
    film.title,

    -- Description of the film
    film.description

FROM film

    -- Connect each film to its inventory records.
    -- A film can have multiple inventory records.
    INNER JOIN inventory
        ON film.film_id = inventory.film_id

    -- Connect inventory to the store where each copy is located.
    INNER JOIN store
        ON store.store_id = inventory.store_id

        -- Only include inventory from Store 2.
        AND store.store_id = 2;