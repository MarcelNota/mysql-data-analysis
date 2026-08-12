USE mavenmovies;

-- Retrieve payment information for specific customers
SELECT
	customer_id,
	rental_id,
	amount,
	payment_date
FROM payment
-- Filter payments made by customers 5, 9, or 29
WHERE customer_id IN (5, 9, 29);