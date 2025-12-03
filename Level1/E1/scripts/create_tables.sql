CREATE DATABASE IF NOT EXISTS optical_store;
USE optical_store;

CREATE TABLE Address (
    address_id INT PRIMARY KEY AUTO_INCREMENT,
    street VARCHAR(100) NOT NULL,
    num VARCHAR(10) NOT NULL,
    floor VARCHAR(10),
    door VARCHAR(10),
    city VARCHAR(50) NOT NULL,
    postal_code VARCHAR(10),
    country VARCHAR (50)
);

 CREATE TABLE Supplier (
    supplier_id INT PRIMARY KEY AUTO_INCREMENT,
    supplier_name VARCHAR(100) NOT NULL,
    address_id INT,
    phone VARCHAR(10) NOT NULL,
    fax VARCHAR(10),
    NIF VARCHAR(10),
    FOREIGN KEY (id_address) REFERENCES Address(id_address)
);

CREATE TABLE Glassess (
	brand_name VARCHAR(20) NOT NULL,
    left_prescription DECIMAL(4,2) NOT NULL, 
    rigth_prescription DECIMAL(4,2) NOT NULL,
    frame_type ENUM('floating','plastic','metal') NOT NULL,
    frame_color VARCHAR(30),
    glass_color VARCHAR(30),   
    price DECIMAL(5,2) NOT NULL
    );

CREATE TABLE Customer (
	customer_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(100) NOT NULL,
    address_id INT,
    phone VARCHAR(10),
    email VARCHAR(50),
    resgitration_date DATE,
    recommended_by INT,
    attended_by INT,
    FOREIGN KEY (address_id) REFERENCES Address(address_id),
    FOREIGN KEY (recommended_by) REFERENCES Customer(customer_id),
    FOREIGN KEY (attended_by) REFERENCES Employee(employee_id)
    );
    
CREATE TABLE Employee (
	employee_id INT PRIMARY KEY AUTO_INCREMENT,
    employee_name VARCHAR(100) NOT NULL,
    
);