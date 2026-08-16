USE mavenmovies;

SELECT
    -- Unique identifier of the film
    film.film_id,

    -- Title of the film
    film.title,

    -- Name of the category assigned to the film
    category.name AS category_name

FROM film

    -- film_category is the junction table
    -- that connects films with categories.
    -- The relationship is established using film_id.
    INNER JOIN film_category
        ON film_category.film_id = film.film_id

    -- Connect film_category to category
    -- using category_id to retrieve the category name.
    INNER JOIN category
        ON film_category.category_id = category.category_id

-- Sort the results by the film ID.
ORDER BY film.film_id;