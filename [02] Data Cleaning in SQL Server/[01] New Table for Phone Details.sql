# Querying the required columns for analysis
  
Use Flipkart

CREATE TABLE PhoneDetails (
    id INT IDENTITY(1,1) PRIMARY KEY,
    title VARCHAR(255),
    price INT,
    original_price INT,
    discount INT,
    star FLOAT,
    brand VARCHAR(100),
    model VARCHAR(100),
    camera VARCHAR(100),
    screen_size_inch FLOAT,
    display VARCHAR(100),
    ram VARCHAR(50),
    storage VARCHAR(50),
    color VARCHAR(50),
    processor VARCHAR(100),
    battery VARCHAR(100),
    rating INT,
    review INT
);
