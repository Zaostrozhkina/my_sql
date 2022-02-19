USE dostaevskiy;


-- Клиент с самым дорогим заказом и средний чек

SELECT 
	id,
	(SELECT name FROM users WHERE users.id = orders.user_id) AS name,
	(SELECT name FROM menu WHERE menu.id = orders.menu_id) AS product,
	price,
	(SELECT AVG(price) FROM orders) AS average
FROM orders ORDER BY price DESC LIMIT 1;


-- Вывести список курьеров, которые находятся на доставке с информацией о заказе

SELECT 
	c.name AS courier_name,
	a.name AS address,
	da.name AS area,
	m.name AS product,
	o.price AS price,
	oc.deliver_before AS delivery_before
FROM couriers c
	JOIN orders_couriers oc 
		ON c.id = oc.courier_id AND oc.order_status_id = 3
	JOIN delivery_area da 
		ON da.id = c.delivery_area_id 
	JOIN orders o 
		ON o.id = oc.order_id 
	JOIN address a 
		ON o.address_id = a.id
	JOIN menu m 
		ON m.id = o.menu_id;
	

-- Вывести список заказов, по которым была задержана доставка (с указанием минут просрочки), 
-- имя курьера и клиента
	
	
SELECT 
	o.id AS order_id,
	c.name AS courier,
	u.name AS customer,
	(SELECT TIMESTAMPDIFF(MINUTE, oc.deliver_before, oc.delivery_at)) AS lateness
FROM orders o 
	JOIN orders_couriers oc 
		ON oc.order_id = o.id AND oc.order_status_id = 4 AND TIMESTAMPDIFF(MINUTE, oc.deliver_before, oc.delivery_at) > 0
	JOIN couriers c 
		ON c.id = oc.courier_id 
	JOIN users u 
		ON u.id = o.user_id;
	
	
-- Процент опозданий в разрезе курьеров (имя, количество доствленных заказов, сколько раз опоздал, % опозданий)
	
SELECT 
	DISTINCT c.name,
	COUNT(oc.delivery_at) OVER (PARTITION BY oc.courier_id) AS total_delivery,
	SUM(IF((SELECT TIMESTAMPDIFF(MINUTE, oc.deliver_before, oc.delivery_at)) > 0,  1, NULL)) OVER (PARTITION BY oc.courier_id) AS total_late,
	(SUM(IF((SELECT TIMESTAMPDIFF(MINUTE, oc.deliver_before, oc.delivery_at)) > 0,  1, NULL)) OVER (PARTITION BY oc.courier_id)) / (COUNT(oc.delivery_at) OVER (PARTITION BY oc.courier_id)) * 100 AS '%%'
FROM couriers c 
	LEFT JOIN orders_couriers oc 
		ON oc.courier_id = c.id;
	
	
-- Количество заказов в разрезе позиций и разделов меню

SELECT 
	DISTINCT m.name,
	c.name AS catalog_name,
	COUNT(o.menu_id) OVER (PARTITION BY o.menu_id) AS total_order,
	COUNT(o.menu_id) OVER (PARTITION BY c.id) AS total_catalog
FROM menu m 
	LEFT JOIN catalogs c 
		ON c.id = m.catalog_id
	LEFT JOIN orders o 
		ON o.menu_id = m.id 
	ORDER BY total_order DESC; 
	
	
-- Район, количество доставок по району, число заказов с задержкой доставки, 
-- средний чек по району, средний чек
	
SELECT 
	DISTINCT da.name,
	COUNT(o.address_id) OVER (PARTITION BY da.name) AS total_orders,
	SUM(IF((SELECT TIMESTAMPDIFF(MINUTE, oc.deliver_before, oc.delivery_at)) > 0,  1, NULL)) OVER (PARTITION BY da.name) AS lateness,
	AVG(o.price) OVER (PARTITION BY da.name) AS avg_price_area,
	AVG(o.price) OVER () AS avg_price_total
FROM delivery_area da 
	LEFT JOIN address a 
		ON da.id = a.delivery_area_id 
	LEFT JOIN orders o 
		ON o.address_id = a.id 
	LEFT JOIN orders_couriers oc 
		ON oc.order_id = o.id;
	





	