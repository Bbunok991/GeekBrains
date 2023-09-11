CREATE DATABASE School_office;

CREATE TABLE Office
(Id INT PRIMARY KEY,
Number_of_rows INT,
Number_of_pairs INT
);

CREATE TABLE Class
(Id INT PRIMARY KEY,
Name VARCHAR(5)
);

CREATE TABLE Subject
(Id INT PRIMARY KEY,
Name VARCHAR(30)
);

CREATE TABLE Teacher
(Id INT PRIMARY KEY,
FIO VARCHAR(50),
Subject_Id INT,
FOREIGN KEY (Subject_Id)  REFERENCES Subject (Id)
);

CREATE TABLE Student
(Id INT PRIMARY KEY,
FIO VARCHAR(50),
Class_Id INT,
FOREIGN KEY (Class_Id)  REFERENCES Class (Id)
);

CREATE TABLE Ro_w
(Id INT PRIMARY KEY,
Number INT
);

CREATE TABLE Pair
(Id INT PRIMARY KEY,
Number INT
);

CREATE TABLE Variant
(Id INT PRIMARY KEY,
Number INT
);

CREATE TABLE Lesson
(Id INT PRIMARY KEY,
Subject_Id INT,
Beginning_of_the_lesson TIMESTAMP,
End_of_the_lesson TIMESTAMP,
FOREIGN KEY (Subject_Id)  REFERENCES Subject (Id)
);

CREATE TABLE Student_place
(Id INT PRIMARY KEY,
Lesson_Id INT,
Office_Id INT,
Row_Id INT,
Pair_Id INT,
Variant_Id INT,
Student_Id INT,
FOREIGN KEY (Lesson_Id)  REFERENCES Lesson (Id),
FOREIGN KEY (Office_Id)  REFERENCES Office (Id),
FOREIGN KEY (Row_Id)  REFERENCES Ro_w (Id),
FOREIGN KEY (Pair_Id)  REFERENCES Pair (Id),
FOREIGN KEY (Variant_Id)  REFERENCES Variant (Id),
FOREIGN KEY (Student_Id)  REFERENCES Student (Id)
);
-------------------------------------------------------------------------------------------------------------------------------------
INSERT Office(Id, Number_of_rows, Number_of_pairs) 
VALUES
(1, 5, 30),
(2, 5, 30),
(3, 5, 30);

INSERT Class(Id, Name) 
VALUES
(1, '1А'),
(2, '5В'),
(3, '9Б');

INSERT Subject(Id, Name) 
VALUES
(1, 'Math'),
(2, 'physics'),
(3, 'biology');

INSERT Teacher(Id, FIO, Subject_Id) 
VALUES
(1, 'Александрова Галина Васильевна', 1),
(2, 'Алексеева Раиса Леонидовна', 2),
(3, 'Беляева Марина Александровна', 3);

INSERT Student(Id, FIO, Class_Id) 
VALUES
(1, 'Цыплухина Татьяна Сергеевна ', 1),
(2, 'Усов Святослав Игоревич', 2),
(3, 'Соловьева Оксана Павловна', 3);

INSERT Ro_w(Id, Number) 
VALUES
(1, 1),
(2, 2),
(3, 3);

INSERT Pair(Id, Number) 
VALUES
(1, 1),
(2, 2),
(3, 3);

INSERT Variant(Id, Number) 
VALUES
(1, 1),
(2, 2);

INSERT Lesson(Id, Subject_Id, Beginning_of_the_lesson, End_of_the_lesson) 
VALUES
(1, 1, '2023-09-01 09:00:00', '2023-09-01 09:45:00'),
(2, 2, '2023-09-02 10:00:00', '2023-09-01 10:45:00'),
(3, 3, '2023-09-03 11:00:00', '2023-09-01 11:45:00');

INSERT Student_place(Id, Lesson_Id, Office_Id, Row_Id, Pair_Id, Variant_Id, Student_Id) 
VALUES
(1, 1, 1, 1, 1, 1, 1),
(2, 2, 2, 2, 2, 2, 2),
(3, 3, 3, 3, 3, 1, 3);
------------------------------------------------------------------------------------------------------------------------------------------



