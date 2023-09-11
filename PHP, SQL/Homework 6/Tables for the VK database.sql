USE vk;

-- DROP TABLE IF EXISTS Calls;
-- CREATE TABLE Calls(
-- 	user_id BIGINT UNSIGNED NOT NULL UNIQUE,
-- 	`date` datetime,
-- 	waiting time,
-- 	duration time,
-- 	status varchar(10)
-- );
-- ALTER TABLE Calls ADD CONSTRAINT fk_user_id
--    FOREIGN KEY (user_id) REFERENCES users(id)

-- INSERT INTO Calls (user_id, `date`, waiting, duration, status) 
-- VALUES
-- (1, '2023-07-23 15:21:34', '00:00:25', '01:12:01', 'answered'),
-- (2, '2023-07-15 19:00:09', '00:00:20', '00:20:01', 'answered'),
-- (3, '2023-08-23 20:11:01', '00:00:10', '02:00:00', 'missed'),
-- (4, '2023-09-02 13:31:00', '00:00:37', '00:34:00', 'error'),
-- (5, '2023-07-23 17:29:23', '00:00:03', '01:59:00', 'answered'),
-- (6, '2023-08-01 23:56:43', '00:00:47', '00:18:03', 'missed'),
-- (7, '2023-09-23 09:26:56', '00:00:56', '00:32:02', 'answered'),
-- (8, '2023-09-19 14:45:30', '00:00:08', '00:47:05', 'missed'),
-- (9, '2023-09-22 08:01:12', '00:00:32', '01:39:09', 'busy'),
-- (10, '2023-08-23 10:00:04', '00:00:28', '00:12:11', 'error');

-- DROP TABLE IF EXISTS Favourites;
-- CREATE TABLE Favourites(
-- 	user_id BIGINT UNSIGNED NOT NULL UNIQUE,
-- 	communities_id BIGINT UNSIGNED NOT NULL UNIQUE,
-- 	post text,
-- 	`date` date,
-- 	FOREIGN KEY (user_id) REFERENCES users(id),
-- 	FOREIGN KEY (communities_id) REFERENCES communities (id)
-- );

-- INSERT INTO Favourites (user_id, communities_id, post, `date`) 
-- VALUES
-- (1, 1, 'Interior with your own hands', '2023-07-23'),
-- (2, 2, 'Creating a Telegram Bot in Java and deploying to the server | Spring | Maven | VDS', '2023-07-15'),
-- (3, 3, 'Sid Meyers Game Rules: 7 techniques that changed the game design', '2023-08-23'),
-- (4, 4, 'Insider: There wont be an open world in the new Mass Effect', '2023-09-23'),
-- (5, 5, 'Fixing bugs in production', '2023-07-23'),
-- (6, 6, 'Pulsatrix studio announced the horror A.I.L.A.', '2023-08-01'),
-- (7, 7, 'GSC reconstructed the game world to help in the development of the game S.T.A.L.K.E.R. 2: The Heart of Chernobyl', '2023-09-23'),
-- (8, 8, 'Mortal Kombat 1 can already be preloaded on the Xbox Series.', '2023-09-19'),
-- (9, 9, 'Insider Tom Henderson revealed more details of Assassins Creed Red.', '2023-09-22'),
-- (10, 10, 'GraphQL Pagination Support in Spring for GraphQL', '2023-08-23');




















