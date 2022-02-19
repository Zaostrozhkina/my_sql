USE dostaevskiy;

-- Представления

-- Заказы в статусе "готовится" для кухни с указанием курьера для доставки (что готовить и кому передавать)

CREATE OR REPLACE VIEW orders_in_work AS
SELECT 
	o.id AS order_id,
	TIME(o.created_at) AS created_at,
	m.name AS product,
	o.total AS amount,
	c.name AS courier
FROM orders o 
	LEFT JOIN menu m 
		ON m.id = o.menu_id 
	LEFT JOIN orders_couriers oc 
		ON o.id = oc.order_id
	LEFT JOIN couriers c 
		ON c.id = oc.courier_id
	LEFT JOIN order_statuses os 
		ON os.id = oc.order_status_id 
WHERE os.name = 'Готовится'
ORDER BY o.created_at;

SELECT * FROM orders_in_work;


-- Оценка позиций из меню (средняя оценка позиции, количество заказов)

CREATE OR REPLACE VIEW grade_of_products AS
SELECT 
	DISTINCT m.name AS product,
	AVG(oc.grade) OVER (PARTITION BY m.name) AS average_grade,
	COUNT(o.menu_id) OVER (PARTITION BY m.name) AS total_order_product
FROM menu m 
	LEFT JOIN orders o 
		ON m.id = o.menu_id 
	LEFT JOIN orders_comments oc 
		ON oc.order_id = o.id 
ORDER BY average_grade DESC, total_order_product DESC;

SELECT * FROM grade_of_products;






	