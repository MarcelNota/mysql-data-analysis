USE mavenmovies;

-- Retrieve payment information including the customer, rental,
-- payment amount and payment date.
-- ORDER BY sorts the results first by amount in descending order.
-- If two payments have the same amount, customer_id is used
-- as the second sorting criterion, also in descending order.
SELECT
    customer_id,
    rental_id,
    amount,
    payment_date
FROM payment
ORDER BY
    amount DESC,
    customer_id DESC;