USE mavenmovies;

SELECT
    film_id,

    -- Conditional count of inventory items at Store 1.
    COUNT(
        CASE
            WHEN store_id = 1 THEN inventory_id
            ELSE NULL
        END
    ) AS count_of_store_1_inventory,

    -- Conditional count of inventory items at Store 2.
    COUNT(
        CASE
            WHEN store_id = 2 THEN inventory_id
            ELSE NULL
        END
    ) AS count_of_store_2_inventory

FROM inventory

-- Calculate inventory counts separately for each film.
GROUP BY film_id

-- Sort results by film ID.
ORDER BY film_id;