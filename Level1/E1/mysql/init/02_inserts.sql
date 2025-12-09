USE optical_store;

INSERT INTO Address (street, street_number, floor, door, city, postal_code, country)
VALUES
('Carrer de Mallorca', '123', '2', 'B', 'Barcelona', '08008', 'España'),
('Avinguda Diagonal', '456', NULL, NULL, 'Barcelona', '08019', 'España'),
('Carrer de Balmes', '78', '1', 'A', 'Barcelona', '08007', 'España'),
('Carrer de Pau Claris', '56', '3', 'C', 'Barcelona', '08010', 'España'),
('Carrer de Sants', '89', NULL, NULL, 'Barcelona', '08014', 'España'),
('Rambla de Catalunya', '22', '1', 'D', 'Barcelona', '08007', 'España'),
('Passeig de Gràcia', '101', '4', 'A', 'Barcelona', '08008', 'España');

INSERT INTO supplier (supplier_name, address_id, phone, fax, NIF)
VALUES
('OpticPro', 1, '934567890', '934567891', 'A12345678'),
('VisionMax', 2, '933445566', '933445567', 'B87654321');

INSERT INTO brand(brand_name, supplier_id)
VALUES	
('Ray-Ban', 1),
('Oakley', 1),
('Prada', 2);

INSERT INTO glasses (brand_id, left_prescription, right_prescription, frame_type, frame_color, lens_color, price)
VAlUES 
(1, -1.25, -1.00, 'plastic', 'black', 'transparent', 120.50),
(2, -0.75, -0.50, 'metal', 'silver', 'blue', 200.00),
(3, -2.00, -1.75, 'floating', 'gold', 'green', 350.00);

INSERT INTO customer (customer_name, address_id, phone, email, registration_date)
VALUES
('Ana Martínez', 3, '612345678', 'ana@email.com', '2025-12-01'),
('Javier López', 4, '698765432', 'javier@email.com', '2025-12-02'),
('Laura Sánchez', 5, '623456789', 'laura@email.com', '2025-11-30'),
('Carlos Ramírez', 6, '611223344', 'carlos@email.com', '2025-12-03'),
('Marta Fernández', 7, '622334455', 'marta@email.com', '2025-12-02');

UPDATE customer SET recommended_by = 1 WHERE customer_id = 2;
UPDATE customer SET recommended_by = 4 WHERE customer_id = 4;

INSERT INTO employee (employee_name)
VALUES
('María Torres'),
('Pablo Ruiz'),
('Lucía Gómez');

INSERT INTO sale (customer_id, glasses_sold_id, employee_id, sale_date, total_price)
VALUES

(1, 1, 1, '2024-11-15', 120.50),
(1, 2, 2, '2025-02-10', 200.00),
(2, 2, 2, '2024-12-20', 200.00),
(2, 3, 1, '2025-03-05', 175.00),
(3, 3, 3, '2024-10-03', 175.00),
(3, 1, 2, '2025-01-12', 120.50),
(4, 1, 1, '2025-09-25', 120.50),
(4, 2, 3, '2024-04-18', 200.00),
(4, 3, 2, '2024-03-09', 175.00),
(5, 2, 2, '2024-08-07', 200.00),
(5, 3, 1, '2024-06-09', 175.00),
(5, 1, 3, '2025-04-27', 120.50);