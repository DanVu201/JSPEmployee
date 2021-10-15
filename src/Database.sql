CREATE DATABASE factory;
USE factory;

CREATE TABLE employees (
    Id TINYINT PRIMARY KEY,
    Age TINYINT,
    Name NVARCHAR(30),
    City NVARCHAR(30)
);

INSERT INTO employees(Id, Age, Name, City) VALUES (1, 20, 'Đan', 'Nam Định'),
                                                  (2, 30, 'Khánh', 'Hưng Yên'),
                                                  (3, 20, 'Hậu', 'Hải Phòng'),
                                                  (4, 20, 'Tú', 'Hà Nội');