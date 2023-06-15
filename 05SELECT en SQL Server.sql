/************ 05. SELECT en SQL Server **************/
SELECT * FROM [dbo].[Orders];
SELECT * FROM [dbo].[OrderDetails];
SELECT * FROM [dbo].[Products];
SELECT * FROM [dbo].[Measures];

-- 
SELECT * FROM [MundoBinario].[dbo].[Orders]
WHERE order_number=1002;

SELECT * FROM [MundoBinario].[dbo].[Orders]
WHERE order_id=1;

SELECT * FROM [MundoBinario].[dbo].OrderDetails
WHERE order_id=1;

SELECT [orderDetail_number], [orderDetail_quantity], [orderDetail_price]
FROM [dbo].[OrderDetails]
WHERE [orderDetail_price] >= 25;

SELECT o.order_number, o.order_date, od.orderDetail_number, p.product_description, od.orderDetail_quantity, od.orderDetail_price, m.measure_description
FROM [dbo].[Orders] as [o]
INNER JOIN [dbo].[OrderDetails] as [od] ON o.order_id = od.order_id
INNER  JOIN [dbo].[Products] as [p] ON od.product_id = p.product_id
INNER JOIN [dbo].[Measures] as [m] ON od.measure_id = m.measure_id
WHERE o.order_id = 1;



