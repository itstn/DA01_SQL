--ex1
SELECT DISTINCT CITY FROM STATION
WHERE ID%2=0;
--ex2
SELECT COUNT (CITY) - COUNT (DISTINCT CITY) FROM STATION;
--ex4
SELECT
ROUND(CAST(SUM(item_count*order_occurrences)/SUM(order_occurrences)AS DECIMAL),1) AS mean
FROM items_per_order
--ex5 
SELECT candidate_id FROM candidates
WHERE skill IN ('Python', 'Tableau', 'PostgreSQL')
GROUP BY candidate_id
HAVING COUNT (skill) = 3
--ex06
SELECT user_id,
DATE (MAX (post_date)) - DATE (MIN (post_date)) AS days_between
FROM posts
WHERE post_date <= '12/30/2021' and post_date >= '01/01/2021'
GROUP BY DISTINCT user_id
HAVING COUNT (post_id) >= 2
--ex07
SELECT card_name,
MAX (issued_amount)- MIN (issued_amount) AS difference
FROM monthly_cards_issued
GROUP BY card_name;
--ex08
SELECT manufacturer,
COUNT (drug) AS drug_count,
ABS(SUM(cogs - total_sales)) AS total_loss
FROM pharmacy_sales
WHERE total_sales < cogs
GROUP BY manufacturer
ORDER BY ABS(SUM(cogs - total_sales)) DESC
--ex09
SELECT *
FROM Cinema
WHERE description <> 'boring' AND id%2 <> 0
ORDER BY rating DESC
--ex10
SELECT teacher_id,
COUNT (DISTINCT subject_id) AS cnt
FROM Teacher
GROUP BY teacher_id;
--ex11
SELECT user_id,
COUNT (follower_id) AS followers_count
FROM Followers
GROUP BY user_id
ORDER BY user_id ASC
--ex12
SELECT class 
FROM Courses
GROUP BY class
HAVING COUNT (student) >= 5
