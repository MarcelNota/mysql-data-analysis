USE mavenmovies;

-- Retrieve payment information for customers
-- and payments where the amount is greater than 5.
SELECT 
    customer_id,
    rental_id,
    amount,
    payment_date
FROM payment
WHERE amount > 5
    -- Include all payments made by customer 53
    OR customer_id = 53
    -- Include all payments made by customer 60
    OR customer_id = 60
    -- Include all payments made by customer 42
    OR customer_id = 42
    -- Include all payments made by customer 75
    OR customer_id = 75;