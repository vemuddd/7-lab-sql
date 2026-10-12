CREATE TABLE products (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10, 2)
);

INSERT INTO products VALUES
(1, 'Laptop', 'Electronics', 350000),
(2, 'Phone', 'Electronics', 250000),
(3, 'Book', 'Education', 5000),
(4, 'Mouse', 'Electronics', 8000),
(5, 'Notebook', 'Education', 1500);

-- 1. SELECT
SELECT * FROM products;

-- 2. WHERE
SELECT * FROM products
WHERE price > 10000;

-- 3. Бірнеше шарт
SELECT * FROM products
WHERE category = 'Electronics' AND price > 10000;

-- 4. DISTINCT
SELECT DISTINCT category FROM products;

-- 5. ORDER BY
SELECT * FROM products
ORDER BY price DESC;

-- 6. GROUP BY
SELECT category, COUNT(*) AS product_count
FROM products
GROUP BY category;

-- 7. Агрегаттық функциялар
SELECT
    COUNT(*) AS total_products,
    SUM(price) AS total_price,
    AVG(price) AS average_price,
    MIN(price) AS min_price,
    MAX(price) AS max_price
FROM products;

-- 8. HAVING
SELECT category, AVG(price) AS average_price
FROM products
GROUP BY category
HAVING AVG(price) > 10000;

-- 9. Орташа бағадан қымбат тауарлар
SELECT * FROM products
WHERE price > (SELECT AVG(price) FROM products);

-- 10. Қымбат тауарлар
SELECT name, price
FROM products
ORDER BY price DESC
LIMIT 3;
