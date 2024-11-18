SELECT SUM(products.price * cart_items.quantity) AS total_cost
FROM products
JOIN cart_items ON products.id = cart_items.product_id
JOIN orders ON orders.user_id = cart_items.user_id
WHERE orders.status = 'active'
  AND orders.user_id = <user_id>;