/*
Q1: Generate a list of the five restaurants that have the highest average number of visitors on 
holidays. The result table should also contain that average per restaurant.
*/

SELECT id, AVG(reserve_visitors) AS avg_visitors
FROM restaurants_visitors
WHERE visit_date IN (
	SELECT calendar_date
	FROM date_info
	WHERE holiday_flg = 1)
GROUP BY 1
ORDER BY avg_visitors DESC
LIMIT 5;