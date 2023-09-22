USE vk;

-- 1. Создайте представление с произвольным SELECT-запросом из прошлых уроков [CREATE VIEW]
-- CREATE VIEW VIEW_communities
-- AS SELECT
-- 	users.id,
-- 	CONCAT_WS(' ', users.firstname, users.lastname) AS FIO,
-- 	communities.name
-- FROM users, users_communities 
-- JOIN communities ON users_communities.community_id = communities.id;

-- 2. Выведите данные, используя написанное представление [SELECT]
-- SELECT *
-- FROM VIEW_communities;

-- 3. Удалите представление [DROP VIEW]
-- DROP VIEW VIEW_communities;

/* 4. * Сколько новостей (записей в таблице media) у каждого пользователя?
Вывести поля: news_count (количество новостей), user_id (номер пользователя), user_email (email пользователя).
Попробовать решить с помощью CTE или с помощью обычного JOIN.*/

SELECT
	COUNT(*) AS news_count,
	user_id,
	email AS user_email
FROM media m
JOIN users u ON u.id = m.user_id 
GROUP BY user_id;
