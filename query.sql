WITH cte AS (
    SELECT p.ProductName, STRING_AGG(c.CategoryName, ', ') AS ProductCategories
    FROM Products1 p
    LEFT JOIN ProductCategories1 pc ON p.ProductID = pc.ProductID
    LEFT JOIN Categories1 c ON pc.CategoryID = c.CategoryID
    GROUP BY p.ProductName
)
SELECT * FROM cte;