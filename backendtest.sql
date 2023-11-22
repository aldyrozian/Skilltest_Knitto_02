SELECT
    orders.customerNumber
FROM
    orders
LEFT JOIN orderdetails od ON
    orders.orderNumber = od.orderNumber
LEFT JOIN products p ON
    od.productCode = p.productCode
WHERE
    p.productLine = 'Classic Cars'
GROUP BY
    orders.customerNumber
HAVING
    COUNT(p.productLine) > 23;
