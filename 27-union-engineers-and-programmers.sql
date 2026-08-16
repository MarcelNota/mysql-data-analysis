USE mavenmovies;

SELECT
    -- Label each row as Programmer.
    -- The corresponding column in the second SELECT
    -- must have a compatible data type.
    'Programmer' AS type,

    -- First name of the person
    first_name,

    -- Last name of the person
    last_name

FROM advisor

UNION

SELECT
    -- Label each row as Engineer.
    -- Both values are strings, so their data types are compatible.
    'Engineer' AS type,

    -- First name of the person
    first_name,

    -- Last name of the person
    last_name

FROM investor;