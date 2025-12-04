CREATE DATABASE IF NOT EXISTS optical_store;
USE optical_store;

CREATE TABLE Address (
    address_id INT PRIMARY KEY AUTO_INCREMENT,
    street VARCHAR(100) NOT NULL,
    street_number VARCHAR(10) NOT NULL,
    floor VARCHAR(10),
    door VARCHAR(10),
    city VARCHAR(50) NOT NULL,
    postal_code VARCHAR(10),
    country VARCHAR (50)
);

 CREATE TABLE Supplier (
    supplier_id INT PRIMARY KEY AUTO_INCREMENT,
    supplier_name VARCHAR(100) NOT NULL,
    address_id INT UNIQUE,
    phone VARCHAR(10) NOT NULL,
    fax VARCHAR(10),
    NIF VARCHAR(20),
    FOREIGN KEY (address_id) REFERENCES Address(address_id)
);

CREATE TABLE Brand (
	brand_id INT PRIMARY KEY AUTO_INCREMENT,
    brand_name VARCHAR(100) NOT NULL,
    supplier_id INT,
    FOREIGN KEY (supplier_id) REFERENCES Supplier(supplier_id)
    );
    
CREATE TABLE Glasses (
	glasses_id INT PRIMARY KEY AUTO_INCREMENT,
    brand_id INT,
    left_prescription DECIMAL(4,2) NOT NULL, 
    right_prescription DECIMAL(4,2) NOT NULL,
    frame_type ENUM('floating','plastic','metal') NOT NULL,
    frame_color VARCHAR(30),
    glass_color VARCHAR(30),   
    price DECIMAL(5,2) NOT NULL,
    FOREIGN KEY (brand_id) REFERENCES Brand(brand_id)
    );
    
CREATE TABLE Employee (
	employee_id INT PRIMARY KEY AUTO_INCREMENT,
    employee_name VARCHAR(100) NOT NULL
);

CREATE TABLE Customer (
	customer_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(100) NOT NULL,
    address_id INT UNIQUE,
    phone VARCHAR(10),
    email VARCHAR(50),
    registration_date DATE,
    recommended_by INT NULL,
    FOREIGN KEY (address_id) REFERENCES Address(address_id),
    FOREIGN KEY (recommended_by) REFERENCES Customer(customer_id)
    );
    
CREATE TABLE Sale (
	sale_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT NOT NULL,
    glasses_sold_id INT NOT NULL,
    employee_id INT NOT NULL,
    sale_date DATE,
    total_price DECIMAL(6,2), 
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
    FOREIGN KEY (glasses_sold_id) REFERENCES Glasses(glasses_id),
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id)
    );