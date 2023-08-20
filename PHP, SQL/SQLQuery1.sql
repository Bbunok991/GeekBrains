--Задача №2: создать БД, состоящую из одной таблицы (информация об одногруппниках) с четырьмя полями (добавить поле «Адрес»): id, name, age, address.

CREATE DATABASE Groupmates
ON PRIMARY
(NAME = Groupmates,
FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Groupmates.mdf',
SIZE = 5120KB,
MAXSIZE = UNLIMITED,
FILEGROWTH = 1024KB)
LOG ON
(NAME = Groupmates_log,
FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Groupmates_log.ldf',
SIZE = 2048KB,
MAXSIZE = 2048GB,
FILEGROWTH = 10%)
GO

use Groupmates
go

Create table groupmates
(
	id int primary key,
	name nvarchar(15),
	age int,
	address nvarchar(50)
);

insert into groupmates
(
	id,
	name,
	age,
	address
)
values
(0001, 'Danila', '19', 'Moscow'),
(0002, 'Roman', '19', 'Ivanovo'),
(0003, 'Liza', '21', 'Petersburg'),
(0004, 'Julia', '21', 'Moscow'),
(0005, 'Nikita', '20', 'Moscow');