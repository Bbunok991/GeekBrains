/*Написать скрипт, отмечающий несовершеннолетних пользователей как неактивных 
(поле is_active = true). При необходимости предварительно добавить такое поле в таблицу profiles со значением по умолчанию = false 
(или 0) (ALTER TABLE + UPDATE)*/

-- ALTER TABLE vk.profiles 
-- ADD COLUMN is_active BIT DEFAULT 1;

-- UPDATE profiles
-- SET is_active = 0
-- WHERE birthday > (now() - INTERVAL 18 YEAR);

-- Написать скрипт, удаляющий сообщения «из будущего» (дата позже сегодняшней) (DELETE)

DELETE FROM messages
WHERE created_at > now(); 