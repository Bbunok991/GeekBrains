USE vk;

-- Написать скрипт, возвращающий список имен (только firstname) пользователей без повторений в алфавитном порядке. [ORDER BY]
/*SELECT DISTINCT firstname
FROM users
ORDER BY firstname;*/

-- Выведите количество мужчин старше 35 лет [COUNT].

-- Сколько заявок в друзья в каждом статусе? (таблица friend_requests) [GROUP BY]
/*SELECT COUNT(*), status
FROM friend_requests
GROUP BY `status`;*/

-- Выведите номер пользователя, который отправил больше всех заявок в друзья (таблица friend_requests) [LIMIT].
/*SELECT COUNT(*)
FROM friend_requests 
GROUP BY initiator_user_id 
ORDER BY COUNT(*) DESC
LIMIT 1;*/

-- Выведите названия и номера групп, имена которых состоят из 5 символов [LIKE].
/*SELECT name, id
FROM communities
WHERE name LIKE '_____';*/
