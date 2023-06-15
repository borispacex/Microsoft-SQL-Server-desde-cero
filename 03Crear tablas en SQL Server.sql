/************ 03. Crear tablas en SQL Server **************/
CREATE TABLE [dbo].[Orders]
(
order_id				INT 			 	NOT NULL 	IDENTITY(1,1) PRIMARY KEY
,order_number			INT                 NOT NULL
,order_date				DATETIME			NOT NULL
,order_status			INT                 NOT NULL
);

CREATE TABLE [dbo].[Products]
(
product_id				INT             NOT NULL	IDENTITY(1,1) PRIMARY KEY
,product_code			VARCHAR(10)		NOT NULL
,product_description	VARCHAR(100)	NOT NULL
);	

CREATE TABLE [dbo].[OrderDetails]
(
orderDetail_id			INT 			NOT NULL 	IDENTITY(1,1) PRIMARY KEY
,order_id            	INT 			NOT NULL
,orderDetail_number		INT             NOT NULL	
,product_id             INT             NOT NULL
,orderDetail_quantity	DECIMAL(18,2)	NOT NULL
,orderDetail_price		DECIMAL(18,2)	NOT NULL 
,measure_id             INT 			NOT NULL
,notes					VARCHAR(MAX)	NULL    
,CONSTRAINT fk_Orders FOREIGN KEY (order_id) REFERENCES Orders (order_id)
,CONSTRAINT fk_Products FOREIGN KEY (product_id) REFERENCES Products (product_id)
,CONSTRAINT fk_Measures FOREIGN KEY (measure_id) REFERENCES Measures (measure_id)
);

-- ELIMINAR TABLA
DROP TABLE [dbo].[OrderDetails];
-- RENOMBRAR TABLA
EXEC sp_rename 'Orders', 'Orders2';
-- AGREGAR CAMPO A LA TABLA
ALTER TABLE [dbo].[Orders2]
ADD order_test VARCHAR(1) NULL;
-- ELIMINAR UN CAMPO DE LA TABLA
ALTER TABLE [dbo].[Orders2]
DROP COLUMN order_test;


