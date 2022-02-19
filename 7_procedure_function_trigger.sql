USE dostaevskiy;


-- Процедура - вывод статуса заказа


DROP PROCEDURE IF EXISTS status_order;

DELIMITER //

CREATE PROCEDURE status_order (order_id INT)
BEGIN
	SELECT os.name 
		FROM orders_couriers oc
			JOIN order_statuses os 
		 		ON order_status_id = os.id 
		WHERE oc.order_id = order_id;
END //

DELIMITER ;

CALL status_order (6);


-- Функция. Вывод статуса заказа по номеру заказа


DROP FUNCTION IF EXISTS status_order;

DELIMITER //

CREATE FUNCTION status_order (order_id INT)
RETURNS VARCHAR(255) READS SQL DATA
BEGIN 
	DECLARE name VARCHAR(255);

	SET name = 
	(SELECT os.name 
		FROM orders_couriers oc
			JOIN order_statuses os 
		 		ON order_status_id = os.id 
		WHERE oc.order_id = order_id);
	
	RETURN CONCAT('Заказ № ', order_id, ' находится в статусе ', name);
END //

DELIMITER ;

SELECT status_order(80);


-- Функция - существует ли заказ


DROP FUNCTION IF EXISTS if_row_exists;

DELIMITER //

CREATE FUNCTION if_row_exists (order_id INT)
RETURNS BOOLEAN READS SQL DATA 
BEGIN 
	IF order_id IN (SELECT id FROM orders) THEN 
		RETURN EXISTS(SELECT 1 FROM orders WHERE id = order_id);
	ELSE RETURN FALSE;
	END IF;
END // 

DELIMITER ;


-- Триггер - ошибка при добавлении отзыва на несуществующий заказ


DROP TRIGGER IF EXISTS exist_order;

DELIMITER //

CREATE TRIGGER exist_order BEFORE INSERT ON orders_comments
FOR EACH ROW
BEGIN 
	IF NOT if_row_exists(NEW.order_id) THEN 
	SIGNAL SQLSTATE '45000'
	SET MESSAGE_TEXT = 'ERROR ADDING COMMENTS! This order does not exist.';
	END IF;
END //

DELIMITER ;







