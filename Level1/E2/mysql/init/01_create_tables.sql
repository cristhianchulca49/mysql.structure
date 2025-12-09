CREATE DATABASE IF NOT EXISTS pizzeria;
USE pizzeria;

CREATE TABLE province(
	province_id INT PRIMARY KEY AUTO_INCREMENT,
    province_name VARCHAR (50)
);

CREATE TABLE locality(
	locality_id INT PRIMARY KEY AUTO_INCREMENT,
    locality_name VARCHAR (50),
    province_id INT NOT NULL,
    FOREIGN KEY (province_id) REFERENCES province(province_id) 
);

CREATE TABLE store(
	store_id INT PRIMARY KEY AUTO_INCREMENT,
    address VARCHAR (200) NOT NULL,
    postal_code VARCHAR (10),
    locality_id INT NOT NULL,
    FOREIGN KEY (locality_id) REFERENCES locality(locality_id)
);

CREATE TABLE employee(
	employee_id INT PRIMARY KEY AUTO_INCREMENT,
    store_id INT NOT NULL,
    employee_name VARCHAR (50) NOT NULL,
    employee_lastname VARCHAR (50) NOT NULL,
    nif VARCHAR(10) NOT NULL ,
    phone VARCHAR (15) NOT NULL,
    employee_role ENUM ('cook','delivery') NOT NULL,
    FOREIGN KEY (store_id) REFERENCES Store(store_id)
);

CREATE TABLE customer(
	customer_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR (50) NOT NULL,
    customer_lastname VARCHAR (50),
    address VARCHAR (100) NOT NULL,
    postal_code VARCHAR (10),
    locality_id INT NOT NULL,
    phone VARCHAR (15) NOT NULL,
    FOREIGN KEY (locality_id) REFERENCES locality(locality_id)
);

CREATE TABLE pizza_category(
	category_id INT PRIMARY KEY AUTO_INCREMENT,
    category_name VARCHAR (100) NOT NULL
);

CREATE TABLE product(
	product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_type ENUM ('Pizza','Burger','Drink') NOT NULL,
    product_name VARCHAR (50) NOT NULL,
    product_description VARCHAR (200),
    image_path VARCHAR (300),
    price DECIMAL(4,2) NOT NULL,
    category_id INT DEFAULT NULL,
    FOREIGN KEY (category_id) REFERENCES pizza_category(category_id)
);

CREATE TABLE order_table(
	order_id INT PRIMARY KEY AUTO_INCREMENT,
    store_id INT NOT NULL,
    customer_id INT NOT NULL,
    order_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    type_order ENUM ('delivery','pickup') NOT NULL,
    total_price DECIMAL(5,2),
    employee_delivery_id INT,
    delivery_time DATETIME,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
	FOREIGN KEY (store_id) REFERENCES store(store_id),
    FOREIGN KEY (employee_delivery_id) REFERENCES employee(employee_id)
);

CREATE TABLE product_item(
	product_item_id INT PRIMARY KEY AUTO_INCREMENT,
	order_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL DEFAULT 1,
    price DECIMAL (5,2) NOT NULL,
    FOREIGN KEY (order_id) REFERENCES request(order_id),
    FOREIGN KEY (product_id) REFERENCES product(product_id) 
);