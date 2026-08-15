SELECT DISTINCT
    actor.first_name,
    actor.last_name,
    
    -- COUNT counts the number of film records associated
    -- with each actor in the film_actor junction table.
    -- Because this is a LEFT JOIN, actors with no films
    -- are also included, with a count of 0.
    COUNT(film_actor.film_id) AS number_of_films

FROM actor

-- LEFT JOIN ensures that every actor is included,
-- even if the actor is not associated with any film.
LEFT JOIN film_actor
    ON actor.actor_id = film_actor.actor_id

-- GROUP BY creates one group for each actor,
-- allowing COUNT() to calculate the number of films
-- associated with that actor.
GROUP BY
    actor.first_name,
    actor.last_name;