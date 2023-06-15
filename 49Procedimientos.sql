/****************************** 49. STORED PROCEDURE en SQL Server ********************************/
-- EJEMPLO 1
USE MundoBinario;

GO
CREATE PROCEDURE hola_mundo
AS
BEGIN
	SELECT 'Hola Mundo'
END
GO
--ejecutar
EXEC hola_mundo;

-- EJEMPLO 2
GO
CREATE PROCEDURE tunel
	@mensaje1 VARCHAR(50),
	@mensaje2 VARCHAR(50)
AS
BEGIN
	SELECT @mensaje1, @mensaje2
END
GO
--ejecutar
EXEC tunel 'Hola', 'Mundo';
--- MODIFICAR UN PROCEDIMIENTO
GO
ALTER PROCEDURE tunel
	@mensaje1 VARCHAR(50) = '',
	@mensaje2 VARCHAR(50) = '',
	@mensaje3 VARCHAR(50) = ''
AS
BEGIN
	DECLARE @mensaje_1 VARCHAR(50);
	DECLARE @mensaje_2 VARCHAR(50);
	DECLARE @mensaje_3 VARCHAR(50);

	IF @mensaje1 = ''
		BEGIN
			SET @mensaje_1 = 'Mensaje 1: sin mensaje';
		END
	ELSE
		BEGIN
			SET @mensaje_1 = @mensaje1;
		END
	
	SET @mensaje_2 = @mensaje2;
	SET @mensaje_3 = @mensaje3;
	SELECT @mensaje_1 AS 'Mensaje 1', @mensaje_2 AS 'Mensaje 2', @mensaje_3 AS 'Mensaje 3' ;
END
GO
--ejecutar
EXEC tunel '', 'Hola', 'Mundo';

--¿Como modificar el nombre de un SP?
-- sp_rename
EXEC sp_rename 'tunel', 'seguidor';

-- ¿Como eliminar un Stored Procedure en SQL Server?
-- DROP PROCEDURE
DROP PROCEDURE hola_mundo;