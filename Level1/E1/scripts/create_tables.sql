CREATE DATABASE IF NOT EXISTS optical_store;
USE optical_store;

CREATE TABLE Address (
    id_address INT PRIMARY KEY AUTO_INCREMENT,
    street VARCHAR(100),
    num VARCHAR(10),
    floor VARCHAR(10),
    door VARCHAR(10),
    city VARCHAR(50),
    postal_code VARCHAR(10),
    country VARCHAR (50)
);

 CREATE TABLE Supplier (
    id_supplier INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    id_address INT,
    phone VARCHAR(10),
    fax VARCHAR(10),
    NIF VARCHAR(10),
    FOREIGN KEY (id_address) REFERENCES Address(id_address)
);