--ex1
SELECT
SUM (CASE 
WHEN device_type = 'laptop' THEN 1 ELSE 0
END) AS laptop_reviews,
SUM (CASE 
WHEN device_type = 'tablet' OR device_type = 'phone' THEN 1 ELSE 0
END) AS mobile_views
FROM viewership;
--ex2
SELECT *,
CASE 
WHEN x+y>z AND y+z>x AND z+x>y THEN 'Yes' ELSE 'No' 
END AS triangle
FROM Triangle
