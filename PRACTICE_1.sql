--EX 1
SELECT NAME FROM CITY
WHERE COUNTRYCODE = 'USA' AND POPULATION > 120000;
--EX2
SELECT * FROM CITY
WHERE COUNTRYCODE = 'JPN';
--EX3
SELECT CITY, STATE FROM STATION;
--EX4
--ex 5
--ex 6
--Ex 7
SELECT name FROM Employee
ORDER BY name;
--ex 8
SELECT name FROM Employee
WHERE salary > 2000 AND months < 10
ORDER BY employee_id ASC;
--ex 9
SELECT product_id FROM Products
WHERE low_fats = 'Y' AND recyclable = 'Y';
--ex 11
SELECT name, population, area FROM World
WHERE area >= 3000000 OR population >= 25000000;
--ex 12
SELECT DISTINCT author_id AS id from Views
WHERE author_id = viewer_id
ORDER BY author_id;
-- ex 13
SELECT * FROM parts_assembly
WHERE finish_date IS NULL;
-- ex 14
select * from lyft_drivers
WHERE (yearly_salary <= 30000) OR (yearly_salary >=70000);
-- ex 15 
select * from uber_advertising
WHERE money_spent > 100000 AND year = 2019;
