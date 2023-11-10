/*
Q2: Use SQL to discover which day of the week there are usually more visitors on average in
restaurants.
*/

SELECT  di.day_of_week, AVG(rv.reserve_visitors) AS avg_visitors
FROM restaurants_visitors rv, date_info di 
WHERE di.calendar_date = rv.visit_date
GROUP BY 1
ORDER BY avg_visitors DESC 
LIMIT 1;
