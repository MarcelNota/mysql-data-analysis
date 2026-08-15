USE mavenmovies;

SELECT
    store_id,

    -- Counts active customers for each store.
    -- CASE returns customer_id for active customers and NULL otherwise.
    -- COUNT() ignores NULL values.
    COUNT(CASE WHEN active = 1 THEN customer_id ELSE NULL END) AS active,

    -- Counts inactive customers for each store.
    -- CASE returns customer_id for inactive customers and NULL otherwise.
    -- COUNT() ignores NULL values.
    COUNT(CASE WHEN active = 0 THEN customer_id ELSE NULL END) AS inactive

FROM customer

-- Groups customers by store so each store gets its own counts.
GROUP BY store_id;