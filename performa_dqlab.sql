select YEAR(order_date) AS years,sum(Sales) AS sales, count(order_quantity) AS number_of_order
from dqlab_sales_store
WHERE order_status = "order finished"
group by years