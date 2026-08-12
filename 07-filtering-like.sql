USE mavenmovies;

-- Retrieve the title and description of films
-- where the description contains the word "epic".
SELECT 
    title, 
    description
FROM film
WHERE description LIKE '%epic%';