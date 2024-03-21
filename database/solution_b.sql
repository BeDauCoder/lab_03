SELECT users.user_id AS 'Mã user',
       users.user_name AS 'Tên user',
       orders.order_id AS 'Mã hóa đơn'
FROM users
JOIN orders ON users.user_id = orders.user_id;

SELECT users.user_id AS 'Mã user',
       users.user_name AS 'Tên user',
       COUNT(orders.order_id) AS 'Số đơn hàng'
FROM users
LEFT JOIN orders ON users.user_id = orders.order_id
GROUP BY users.user_id, users.user_name;

