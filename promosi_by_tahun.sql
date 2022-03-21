SELECT YEAR(order_date) AS years, SUM(sales) AS sales, SUM(discount_value) AS promotion_value, ROUND((SUM(discount_value)/SUM(sales)) * 100, 2) AS burn_rate_percentage
FROM dqlab_sales_store
WHERE order_status = 'order finished'
GROUP BY years
ORDER BY years ASC;