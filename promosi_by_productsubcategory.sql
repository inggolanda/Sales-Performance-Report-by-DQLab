SELECT YEAR(order_date) AS years, product_sub_category, product_category, SUM(sales) AS sales, SUM(discount_value) AS promotion_value, ROUND((SUM(discount_value)/SUM(sales)) * 100, 2) AS burn_rate_percentage
FROM dqlab_sales_store
WHERE order_status = 'order finished' AND YEAR(order_date) = 2012
GROUP BY years, product_sub_category, product_category
ORDER BY sales DESC;