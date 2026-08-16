USE mavenmovies;

SELECT
    -- First name of the actor
    actor.first_name,

    -- Last name of the actor
    actor.last_name,

    -- Title of the film
    film.title

FROM actor

    -- film_actor is the junction table between actor and film.
    -- actor_id connects each actor to their related films.
    INNER JOIN film_actor
        ON film_actor.actor_id = actor.actor_id

    -- Connect film_actor to film using film_id.
    -- This allows us to retrieve the title of each film.
    INNER JOIN film
        ON film.film_id = film_actor.film_id;