CREATE DATABASE Flipkart;

USE Flipkart;

CREATE TABLE Laptops (
    id INT PRIMARY KEY,
    title NVARCHAR(400),
    price NVARCHAR(10),
    original_price NVARCHAR(10),
    discount NVARCHAR(10),
    star FLOAT(10),
    review NVARCHAR(50),
    description NVARCHAR(600)
);
