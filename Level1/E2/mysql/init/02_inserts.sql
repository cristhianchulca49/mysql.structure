USE pizzeria;

INSERT INTO province (province_name) VALUES
('Madrid'),
('Barcelona'),
('Murcia');

INSERT INTO locality (locality_name, province_id) VALUES
('La Fortuna', 1),
('Gran Via', 1),
('Santa Coloma', 2),
('Sant Gervasy', 2),
('Lorca', 3);

INSERT INTO store (address, postal_code, locality_id) VALUES
('Calle Mayor 1', '28001', 1),
('Calle de la Paz 10', '08001', 2),
('Carrer de Sants 90', '08924', 3),
('Carrer Modolell 72 bis', '08021', 4),
('Calle Doña Ana Romero 2','30800', 5);

INSERT INTO employee (store_id, employee_name, employee_lastname, nif, phone, employee_role) VALUES
(1, 'Juan', 'Perez', '12345678A', '600111222', 'cook'),
(1, 'Luis', 'Gomez', '23456789B', '600333444', 'delivery'),
(2, 'Maria', 'Lopez', '34567890C', '600555666', 'cook'),
(2, 'Pablo', 'Martinez', '45678901D', '611222333', 'delivery'),
(3, 'Sofia', 'Garcia', '56789012E', '622333444', 'cook'),
(3, 'Jorge', 'Santos', '67890123F', '633444555', 'delivery'),
(4, 'Ana', 'Martinez', '78901234G', '644555666', 'cook'),
(4, 'Luis', 'Ramirez', '89012345H', '655666777', 'delivery'),
(5, 'Lucia', 'Ramirez', '90123456I', '666777888', 'cook'),
(5, 'Carlos', 'Sanchez', '01234567J', '677888999', 'delivery');

INSERT INTO customer (customer_name, customer_lastname, address, postal_code, locality_id, phone) VALUES
('Carlos', 'González Pérez', 'Av. Libertad 45', '28002', 1, '600112233'),
('María', 'López Díaz', 'Calle Marina 12', '08002', 2, '622334455'),
('Jorge', 'Santos Ruiz', 'Carrer Vell 8', '08920', 3, '699445566'),
('Ana', 'Martínez Vera', 'Carrer Bonanova 100', '08021', 4, '633221144'),
('Lucía', 'Ramírez Gómez', 'Calle Prado 15', '30801', 5, '655889900');


INSERT INTO product_catalogue (type_name) VALUES
('Pizza'),
('Burger'),
('Drink');

INSERT INTO pizza_category (category_name) VALUES
('Vegetariana'),
('Carnes'),
('Hawaiana');

INSERT INTO product (type_id, product_name, product_description, image_path, price, category_id) VALUES
(1, 'Pizza Vegetariana', 'Verduras frescas y queso', '/images/pizza1.jpg', 8.50, 1),
(1, 'Pizza Hawaiana', 'Jamón y piña', '/images/pizza2.jpg', 9.00, 3),
(2, 'Hamburguesa Clásica', 'Carne, lechuga, tomate', '/images/burger1.jpg', 5.00, NULL),
(2, 'Hamburguesa Doble', 'Doble carne, queso extra', '/images/burger2.jpg', 7.50, NULL),
(3, 'Coca Cola', 'Refresco 330ml', '/images/drink1.jpg', 1.50, NULL),
(3, 'Fanta Naranja', 'Refresco 330ml', '/images/drink2.jpg', 1.50, NULL),
(3, 'Agua Mineral', 'Botella 500ml', '/images/drink3.jpg', 1.00, NULL);

INSERT INTO order_table (store_id, customer_id, type_order, total_price, employee_delivery_id, delivery_time) VALUES
(1, 1, 'delivery', 20.00, 2, '2025-12-09 19:30:00'),
(2, 2, 'pickup', 19.50, NULL, NULL),
(3, 3, 'delivery', 15.00, 6, '2025-12-10 12:45:00'),
(4, 4, 'pickup', 11.50, NULL, NULL),
(5, 5, 'delivery', 15.00, 10, '2025-12-11 18:00:00');

-- Detalles de productos (product_item)

INSERT INTO product_item (order_id, product_id, quantity, price) VALUES
-- order 1
(1, 3, 2, 5.00),
(1, 5, 2, 1.50),

-- order 2
(2, 1, 1, 8.50),
(3, 6, 2, 1.50),

-- order 3
(3, 4, 2, 7.50),

-- order 4
(4, 2, 1, 9.00),
(3, 7, 1, 1.50),

-- order 5
(5, 3, 2, 5.00),
(3, 5, 1, 1.50);
