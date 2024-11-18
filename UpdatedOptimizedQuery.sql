SELECT SUM(ci.price * ci.quantity) AS total_cost
FROM cart_items AS ci
JOIN orders AS o ON o.user_id = ci.user_id
WHERE o.user_id = 1
  AND o.status = 'active';