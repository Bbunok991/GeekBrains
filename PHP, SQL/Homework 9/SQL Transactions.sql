USE vk;

/* Написать функцию, которая удаляет всю информацию об указанном пользователе из БД vk.
Пользователь задается по id. 
Удалить нужно все сообщения, лайки, медиа записи, профиль и запись из таблицы users.
Функция должна возвращать номер пользователя.*/
DROP FUNCTION IF EXISTS func_delete_user;
DELIMITER //
CREATE FUNCTION func_delete_user(user_id INT)
RETURNS INT READS SQL DATA
  BEGIN
	SET FOREIGN_KEY_CHECKS=0;
	DELETE FROM messages WHERE from_user_id = user_id;
	DELETE FROM likes WHERE user_id = user_id;
	DELETE FROM media WHERE user_id = user_id;
	DELETE FROM users WHERE id = user_id;

    RETURN user_id;
  END//
DELIMITER ;

 SELECT func_delete_user(99);

-- Предыдущую задачу решить с помощью процедуры и обернуть используемые команды в транзакцию внутри процедуры.
DELIMITER //
CREATE PROCEDURE proced_delete_user(user_id INT)
	BEGIN
		START TRANSACTION;
		SET FOREIGN_KEY_CHECKS=0;
		DELETE FROM messages WHERE from_user_id = user_id;
		DELETE FROM likes WHERE user_id = user_id;
		DELETE FROM media WHERE user_id = user_id;
		DELETE FROM users WHERE id = user_id;
	
	COMMIT;
	SELECT user_id;
	END//
DELIMITER ;

CALL proced_delete_user(98);