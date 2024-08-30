--ex1
SELECT Name
FROM STUDENTS
WHERE Marks > 75
ORDER BY RIGHT (Name,3), ID
--ex2
SELECT user_id,
CONCAT (UPPER (LEFT (name,1)), LOWER (RIGHT (name, LENGTH (name) - 1))) AS name
FROM Users
ORDER BY user_id
--ex3
SELECT manufacturer,
CONCAT ('$',ROUND (SUM (total_sales)/1000000),' ', 'million') AS sale_mil
FROM pharmacy_sales
GROUP BY manufacturer
ORDER BY SUM (total_sales) DESC, manufacturer
--ex4
SELECT 
EXTRACT (MONTH FROM submit_date) AS mth, product_id,
ROUND (AVG (stars),2) AS avg_stars
FROM  reviews
GROUP BY EXTRACT (MONTH FROM submit_date), product_id
ORDER BY EXTRACT (MONTH FROM submit_date), product_id
--ex5
SELECT sender_id,
COUNT (message_id) AS message_count
FROM messages
WHERE EXTRACT (MONTH FROM sent_date) = 8 AND EXTRACT (YEAR FROM sent_date) = 2022
GROUP BY sender_id
ORDER BY COUNT (message_id) DESC
LIMIT 2
--ex6
SELECT tweet_id 
FROM Tweets
WHERE LENGTH (content) > 15
--ex7
