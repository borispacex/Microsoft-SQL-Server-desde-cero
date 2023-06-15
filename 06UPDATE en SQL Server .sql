/************ 06. UPDATE en SQL Server **************/
SELECT * FROM [dbo].[Products]
WHERE product_id = 4;

-- actualizar un campo product_description 'Lapiz'
UPDATE [dbo].[Products]
SET [product_description] = 'Lapiz de puntillas finas'
WHERE product_id = 4;

SELECT * FROM [dbo].[Orders]
WHERE [order_id] = 2;

UPDATE [dbo].[Orders]
SET [order_date] = GETDATE()
WHERE [order_id] = 2;



























