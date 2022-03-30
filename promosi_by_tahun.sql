--Formula untuk burn rate : (total discount / total sales) * 100
--buat Derived Tables untuk menghitung total sales (sales) dan total discount (promotion_value) berdasarkan tahun(years) dan formulasikan persentase burn rate nya (burn_rate_percentage).

SELECT YEAR(order_date) AS years, SUM(sales) AS sales, SUM(discount_value) AS promotion_value, ROUND((SUM(discount_value)/SUM(sales)) * 100, 2) AS burn_rate_percentage
FROM dqlab_sales_store
WHERE order_status = 'order finished'
GROUP BY years
ORDER BY years ASC;
