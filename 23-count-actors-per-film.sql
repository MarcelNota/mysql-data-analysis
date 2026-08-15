SELECT
    film.title,

    -- COUNT counts how many actor records are associated
    -- with each film in the film_actor junction table.
    COUNT(film_actor.actor_id) AS count_of_all_actors

FROM film

-- LEFT JOIN ensures that every film is included,
-- even if a film has no actors associated with it.
LEFT JOIN film_actor
    ON film.film_id = film_actor.film_id

-- GROUP BY creates one group for each film,
-- allowing COUNT() to calculate the number of actors
-- associated with that film.
GROUP BY film.title;