CREATE DATABASE factory;
USE factory;

CREATE TABLE employees (
    Id TINYINT PRIMARY KEY,
    Age TINYINT,
    Name VARCHAR(30),
    City VARCHAR(30)
);

INSERT INTO employees(Id, Age, Name, City) VALUES (1, 20, 'Dan', 'Nam Dinh'),
                                                  (2, 30, 'Khanh', 'Hung Yen'),
                                                  (3, 20, 'Hau', 'Hai Phong'),
                                                  (4, 20, 'Tu', 'Ha Noi');