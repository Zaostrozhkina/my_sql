USE dostaevskiy;
SHOW TABLES;

SELECT * FROM address;
UPDATE address SET update_at = NOW() WHERE update_at < created_at;

ALTER TABLE address ADD COLUMN delivery_area_id INT UNSIGNED NOT NULL AFTER name;
ALTER TABLE address MODIFY COLUMN delivery_area_id INT UNSIGNED;
UPDATE address SET delivery_area_id = FLOOR (1 + RAND() * 6);
ALTER TABLE address ADD CONSTRAINT address_delivery_area_id_fk
	FOREIGN KEY (delivery_area_id) REFERENCES delivery_area (id) ON DELETE SET NULL;

DROP TABLE IF EXISTS address_delivery_area;

SELECT * FROM delivery_area;
UPDATE delivery_area SET update_at = NOW() WHERE update_at < created_at;

SELECT * FROM catalogs;
UPDATE delivery_area SET update_at = NOW() WHERE update_at < created_at;

SELECT * FROM couriers;
UPDATE couriers SET update_at = NOW() WHERE update_at < created_at;

SELECT * FROM discounts;
UPDATE discounts SET update_at = NOW() WHERE update_at < created_at;
ALTER TABLE discounts DROP COLUMN user_id;


SELECT * FROM users;
UPDATE users SET update_at = NOW() WHERE update_at < created_at;

SELECT * FROM menu;
UPDATE menu SET update_at = NOW() WHERE update_at < created_at;

SELECT * FROM order_statuses;
UPDATE order_statuses SET update_at = NOW() WHERE update_at < created_at;

SELECT * FROM orders;
UPDATE orders SET update_at = NOW() WHERE update_at < created_at;
UPDATE orders SET deliver_before = created_at + INTERVAL 1 HOUR;
ALTER TABLE orders DROP COLUMN deliver_before;
ALTER TABLE orders ADD COLUMN price INT NOT NULL AFTER total;
UPDATE orders SET price = total * (SELECT price FROM menu WHERE id = orders.menu_id);
ALTER TABLE orders MODIFY COLUMN price INT UNSIGNED NOT NULL;

CREATE INDEX orders_price_idx ON orders (price);


UPDATE orders SET created_at = DATE(created_at) + INTERVAL TIMESTAMPDIFF(MONTH, created_at, NOW()) MONTH;
UPDATE orders SET created_at = TIMESTAMP(created_at) + INTERVAL (10 + RAND() * 86400) SECOND;
UPDATE orders SET created_at = NOW() - INTERVAL (1 + RAND() * 30) DAY;


SELECT * FROM orders_couriers;

UPDATE orders_couriers ADD COLUMN delivery_at DATETIME DEFAULT (CURRENT_TIMESTAMP + INTERVAL 1 HOUR) AFTER  deliver_before;
UPDATE orders_couriers SET created_at = (SELECT created_at FROM orders WHERE id = orders_couriers.order_id);
ALTER TABLE orders_couriers ADD COLUMN deliver_before DATETIME DEFAULT (created_at + INTERVAL 1 HOUR) AFTER created_at;
ALTER TABLE orders_couriers ADD COLUMN delivery_at DATETIME AFTER deliver_before;
UPDATE orders_couriers SET delivery_at = (created_at + INTERVAL (30 + RAND() * 60) MINUTE) WHERE order_status_id = 4;

CREATE INDEX orders_couriers_deliver_before_idx ON orders_couriers (deliver_before);
CREATE INDEX orders_couriers_delivery_at_idx ON orders_couriers (delivery_at);

SELECT * FROM orders_comments;
UPDATE orders_comments SET update_at = NOW() WHERE update_at < created_at;

SELECT * FROM payments;
UPDATE payments SET update_at = NOW() WHERE update_at < created_at;


SHOW TABLES;

DESC catalogs;
CREATE INDEX catalogs_name_idx ON catalogs (name);

DESC couriers;
CREATE INDEX couriers_name_idx ON couriers (name);

DESC delivery_area;
CREATE INDEX delivery_area_name_idx ON delivery_area (name);

DESC discounts;
CREATE INDEX discounts_discount_idx ON discounts (discount);

DESC menu;
CREATE INDEX menu_price_idx ON menu (price);

DESC order_statuses;
CREATE INDEX order_statuses_name_idx ON order_statuses (name);

DESC payments;
CREATE INDEX payments_name_idx ON payments (name);

DESC users;




