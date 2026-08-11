-- Retrieve payments made by customers with an ID below 101
SELECT *
FROM payment
WHERE customer_id < 101;

-- Other possible filtering conditions:
-- amount <= 100
-- amount BETWEEN 1 AND 100 (inclusive)