CREATE DATABASE Flipkart;

USE Flipkart;

CREATE TABLE Phones (
    id INT PRIMARY KEY,
    title VARCHAR(255),
    price INT,
    original_price INT,
    discount INT,
    star FLOAT,
    ratings_reviews VARCHAR(500),
    description TEXT,
    brand VARCHAR(100),
    model VARCHAR(100),
    camera VARCHAR(100),
    screen_size_cm FLOAT,
    screen_size_inch FLOAT,
    display VARCHAR(100),
    ram INT,
    storage INT,
    color VARCHAR(50),
    processor VARCHAR(100),
    battery INT,
    rating INT,
    review INT,
    rear_camera INT,
    front_camera INT
);
