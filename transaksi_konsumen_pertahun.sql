--mencari jumlah customer yang bertransaksi setiap tahunnya dari 2009-2012

SELECT YEAR(order_date) AS years, COUNT( DISTINCT customer) AS number_of_customer
FROM dqlab_sales_store
WHERE order_status = 'order finished'
GROUP BY years
ORDER BY years
