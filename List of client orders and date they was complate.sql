SELECT
               t1.order_id
,              t2.customer_code
,              t1.order_date
,              t1.shipped_date - t1.order_date days
FROM
               orders t1
               INNER JOIN
               customers t2
               ON t1.customer_id = t2.customer_id
ORDER BY
               t1.order_date