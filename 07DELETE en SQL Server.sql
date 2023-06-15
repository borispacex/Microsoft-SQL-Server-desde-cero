/************ 07. DELETE en SQL Server **************/

SELECT * FROM [dbo].[Measures]
WHERE measure_code = 'Lt';

DELETE FROM [dbo].[Measures]
WHERE measure_code = 'Lt';

SELECT * FROM [dbo].[Orders]

-- eliminar una tabla dependiente de otra
SELECT * FROM [dbo].[Orders]
WHERE order_id = 2;

SELECT * FROM [dbo].[OrderDetails]
WHERE order_id = 2;

DELETE FROM [dbo].[OrderDetails]
WHERE order_id = 2;

DELETE FROM [dbo].[Orders]
WHERE order_id = 2;


