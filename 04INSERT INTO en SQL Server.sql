/************ 04. INSERT INTO en SQL Server **************/
INSERT INTO [dbo].[Measures]
	([measure_code], [measure_description])
VALUES
	('Pz', 'Pieza')
	,('EA', 'Elemento')
	,('Kg', 'Kilogramo')
	, ('Lt', 'Litro');

INSERT INTO [dbo].[Products]
	([product_code], [product_description])
VALUES
	('LPR', 'LIbreta profesional con rayas')
	,('LPC', 'Libreta profesional a cuadros')
	,('GM', 'Goma bicolor azul-rojo')
	,('LPP', 'Lapiz profesional de puntillas')
	,('HBC', 'Hoja blanca tamaño carta');

INSERT INTO [dbo].[Orders]
	([order_number], [order_date], [order_status])
VALUES
	(1000, GETDATE(), 1);

INSERT INTO [dbo].[OrderDetails]
	([order_id], [orderDetail_number], [product_id], [orderDetail_quantity], [orderDetail_price], [measure_id])
VALUES
	(1,1,1,10,40,1)
	,(1,2,1,10,10,1)
	,(1,3,1,10,25,1)
	,(1,4,1,10,1,1);

-- agregmos otra orden
INSERT INTO [dbo].[Orders]
	([order_number], [order_date], [order_status])
OUTPUT INSERTED.order_id
VALUES
	(1002, GETDATE(), 1);
-- agregamos mas orderDetails
INSERT INTO [dbo].[OrderDetails]
	([order_id], [orderDetail_number], [product_id], [orderDetail_quantity], [orderDetail_price], [measure_id], [notes])
VALUES
	(2,1,2,5,40,1,'prueba de que esto es una nota')
	,(2,2,3,2,10,1,'');

