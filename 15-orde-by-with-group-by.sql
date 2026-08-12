USE mavenmovies;

-- Calculate the total amount paid by each customer.
-- GROUP BY customer_id creates one group for each customer.
-- SUM(amount) adds together all payments made by each customer.
-- ORDER BY sorts customers from the highest total payment
-- to the lowest total payment.
SELECT 
    customer_id,
    SUM(amount) AS total_payment_amount
FROM payment
GROUP BY
    customer_id
ORDER BY 
    SUM(amount) DESC;