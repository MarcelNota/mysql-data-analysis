USE mavenmovies;

SELECT
    title,

    -- CASE works like an IF / ELSE IF / ELSE structure.
    -- MySQL evaluates each WHEN condition from top to bottom.
    -- As soon as it finds the first TRUE condition, it returns
    -- the corresponding THEN value and stops evaluating the CASE.
    CASE
        -- If the rental period is 4 days or less,
        -- classify the film as having a rental period that is too short.
        WHEN rental_duration <= 4 THEN 'rental_too_short'

        -- If the rental rate is $3.99 or more,
        -- classify the film as too expensive.
        WHEN rental_rate >= 3.99 THEN 'too_expensive'

        -- If the film is rated NC-17 or R,
        -- classify it as too adult for the recommendation.
        WHEN rating IN ('NC-17', 'R') THEN 'too_adult'

        -- If the film length is NOT between 60 and 90 minutes,
        -- classify it as either too short or too long.
        WHEN length NOT BETWEEN 60 AND 90 THEN 'too_short_or_too_long'

        -- If the description contains the word "shark",
        -- classify the film as unsuitable because it has sharks.
        WHEN description LIKE '%shark%' THEN 'nope_has_sharks'

        -- If none of the conditions above is TRUE,
        -- classify the film as a good recommendation.
        ELSE 'great_recommendations_for_my_niece'
    END AS fit_for_recommendation,

    -- This CASE uses exactly the same conditions,
    -- but the conditions are intentionally reordered.
    --
    -- This demonstrates an important CASE rule:
    -- when multiple conditions are TRUE for the same film,
    -- the FIRST TRUE condition wins.
    CASE
        -- Sharks now have the highest priority.
        WHEN description LIKE '%shark%' THEN 'nope_has_sharks'

        -- Film length is checked second.
        WHEN length NOT BETWEEN 60 AND 90 THEN 'too_short_or_too_long'

        -- Age rating is checked third.
        WHEN rating IN ('NC-17', 'R') THEN 'too_adult'

        -- Rental duration is checked fourth.
        WHEN rental_duration <= 4 THEN 'rental_too_short'

        -- Rental price is checked fifth.
        WHEN rental_rate >= 3.99 THEN 'too_expensive'

        -- If no condition is TRUE,
        -- classify the film as a good recommendation.
        ELSE 'great_recommendations_for_my_niece'
    END AS reordered_reco

FROM film;