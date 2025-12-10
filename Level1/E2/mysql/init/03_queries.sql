USE pizzeria;

-- List of total drinks sold in a locality
SELECT 
	SUM(p_i.quantity) AS total_drinks_sold,
    l.locality_name
FROM order_table o
JOIN product_item p_i ON p_i.order_id = o.order_id
JOIN product p ON p_i.product_id = p.product_id
JOIN store s ON o.store_id = s.store_id
JOIN locality l ON s.locality_id = l.locality_id
WHERE p.type_id = 'drink' 
  AND l.locality_id = 4;

-- List of orders placed by an employee
SELECT CONCAT(e.employee_name, ' ', e.employee_lastname) AS employee_complete_name,
       COUNT(*) AS total_orders
FROM order_table o
JOIN employee e ON o.employee_delivery_id = e.employee_id
WHERE e.employee_id = 2
GROUP BY e.employee_id;
