# 🗃️ Data Structures - MySQL

## 📄 Description
This repository contains exercises to practice **MySQL database design and queries**. The projects simulate real-world scenarios, focusing on managing clients, products, orders, and suppliers. You will learn how to model relationships, create tables, insert data, and query efficiently.

---

## ⚡ Key Learnings

- Table creation and relationships (1:1, 1:N, N:M)  
- Foreign keys and constraints  
- Handling orders and product quantities  
- Aggregated queries and joins  
- Normalization of location, category, and product data  
- Real-world modeling of suppliers, clients, and stores  

---

## 🏥 Exercise 1 - Optics

**Scenario:**  
An optical store named **"Cul d'Ampolla"** wants to computerize the management of clients and glasses sales.  

**Requirements:**

- **Suppliers:**  
  - Name  
  - Address (street, number, floor, door, city, postal code, country)  
  - Phone  
  - Fax  
  - NIF  

- **Glasses:**  
  - Brand  
  - Lens prescription  
  - Frame type (floating, plastic, or metal)  
  - Frame color  
  - Lens color  
  - Price  

- **Clients:**  
  - Name  
  - Postal address  
  - Phone  
  - Email  
  - Registration date  
  - Referring client (if any)  

- **Sales:**  
  - Track which employee sold each pair of glasses  

**Notes:**  
Each brand of glasses is bought from a **single supplier**, but a supplier can provide multiple brands.

---

## 🍕 Exercise 2 - Pizzeria

**Scenario:**  
A web application for **online food delivery** needs a database structure.  

**Requirements:**

- **Clients:**  
  - Unique ID  
  - First name  
  - Last name  
  - Address  
  - Postal code  
  - Locality  
  - Province  
  - Phone number  

- **Locality & Province:**  
  - Each locality belongs to one province  
  - Each province can have many localities  

- **Orders:**  
  - Unique ID  
  - Date and time  
  - Delivery type (delivery or pickup)  
  - Quantity of each product type  
  - Total price  

- **Products:**  
  - Pizzas, burgers, drinks  
  - Unique ID  
  - Name  
  - Description  
  - Image  
  - Price  

- **Pizza Categories:**  
  - Unique ID  
  - Name  
  - A pizza belongs to one category; a category can have many pizzas  

- **Stores:**  
  - Unique ID  
  - Address  
  - Postal code  
  - Locality  
  - Province  
  - Each store manages many orders  

- **Employees:**  
  - Unique ID  
  - Name  
  - Last name  
  - NIF  
  - Phone  
  - Role (cook or delivery)  
  - Each employee works in **one store**  
  - For delivery orders, track the **employee who delivered** and the **delivery date/time**

---

## 💻 Technologies Used
- 🐳 Docker - Containerization for MySQL environment  
- 🛠️ MySQL Workbench - Database design and management  
- 🐬 MySQL 9.5 - Relational database server  
- 💻 SQL - Querying and database manipulation  
- 🗃️ Git - Version control  

---

## 📋 Requirements
To run these exercises you need:

- 🐳 Docker (optional, to run MySQL containers easily)  
- 🐬 MySQL 9.5 or higher  
- 🛠️ MySQL Workbench for designing and managing the database  
- 💻 Git to clone the repository  

---

## 🛠️ Installation
Clone this repository:  
git clone https://github.com/cristhianchulca49/mysql.structure.git

---
🤝 Contributions are welcome! 
- Please follow these steps to contribute: 
- Fork the repository Create a new branch: git checkout -b feature/NewFeature 
- Make your changes and commit them: git commit -m 'Add New Feature' 
- Push the changes to your branch: git push origin feature/NewFeature 
- Open a Pull Request
