CREATE DATABASE Flipkart;

USE Flipkart;

CREATE TABLE Phones (
    pid VARCHAR(100) PRIMARY KEY,
    brand VARCHAR(100),
    title VARCHAR(255),
    stock VARCHAR(50),
    highlights TEXT,
    mrp INT,
    price INT,
    rating VARCHAR(200),
    images NVARCHAR(MAX),
    model VARCHAR(100),
    screen_size_inch FLOAT,
    display VARCHAR(100),
    ram INT,
    storage INT,
    color VARCHAR(50),
    processor VARCHAR(100),
    battery INT,
    average_rating INT,
    rear_camera INT,
    front_camera INT
);
