
-- Create sales table
DROP TABLE IF EXISTS sales;

CREATE TABLE sales (
    id SERIAL PRIMARY KEY,
    product TEXT,
    quantity INT,
    price NUMERIC
);

-- Insert sample data
INSERT INTO sales (product, quantity, price) VALUES
('Pen', 10, 5),
('Notebook', 5, 20),
('Pen', 20, 5),
('Notebook', 3, 20);

-- View total sales (quantity * price) for each product using SUM
SELECT 
    product,
    SUM(quantity * price) AS total_sales
FROM 
    sales
GROUP BY 
    product;

-- Optional: filter to show only products with total sales > 100
SELECT 
    product,
    SUM(quantity * price) AS total_sales
FROM 
    sales
GROUP BY 
    product
HAVING 
    SUM(quantity * price) > 100;
