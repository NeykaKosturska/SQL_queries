SELECT
               t1.order_id
,              t2.company_name
,              EXTRACT(YEAR FROM t1.order_date) year
,              TO_CHAR (t1.order_date , 'Month') month
FROM
               orders t1
               INNER JOIN
               customers t2
               ON t1.customer_id = t2.customer_id
ORDER BY
               t1.order_date