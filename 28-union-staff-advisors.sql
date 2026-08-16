USE mavenmovies;

SELECT
    -- Label each row as STAFF MEMBER.
    -- The corresponding column in the second SELECT
    -- must have a compatible data type.
    'STAFF MEMBER' AS Member_Type,

    -- First name of the staff member
    first_name,

    -- Last name of the staff member
    last_name

FROM staff

UNION

SELECT
    -- Label each row as ADVISOR.
    -- Both values are strings, so their data types are compatible.
    'ADVISOR' AS Member_Type,

    -- First name of the advisor
    first_name,

    -- Last name of the advisor
    last_name

FROM advisor;