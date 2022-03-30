--mencari total penjualan (sales) berdasarkan sub category dari produk (product_sub_category) pada tahun 2011 dan 2012 saja (years) 

SELECT YEAR (order_date) AS years, product_sub_category , SUM(sales) AS sales
FROM dqlab_sales_store
WHERE order_status = 'order finished' AND YEAR(order_date) > 2010
GROUP BY years, product_sub_category
ORDER BY years, sales DESC;
