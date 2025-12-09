USE optical_store;

-- Total invoice of a customer in a period

SELECT COUNT(*)
FROM Sale 
WHERE customer_id = 4 
	AND sale_date BETWEEN '2023-01-01' AND '2025-12-31';
 
--  Model glasses sold by an employee in a year

SELECT DISTINCT
	e.employee_name,
    g.glasses_id,
	g.brand_id,
    g.frame_type,
    g.frame_color,
    g.lens_color
FROM Glasses g
JOIN Sale s ON  s.glasses_sold_id = g.glasses_id
JOIN Employee e ON e.employee_id = s.employee_id
	WHERE s.employee_id = 1 
    AND YEAR(s.sale_date) = 2025;
 
 -- Suppliers of glasses sold succesfully
 
SELECT DISTINCT
	s.supplier_name
FROM Supplier s
JOIN Brand b ON b.supplier_id = s.supplier_id
JOIN Glasses g ON g.brand_id = b.brand_id
JOIN Sale sa ON sa.glasses_sold_id = g.glasses_id;

	
