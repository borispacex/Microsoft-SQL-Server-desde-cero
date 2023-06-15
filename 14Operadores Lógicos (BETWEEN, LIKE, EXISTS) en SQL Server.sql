/************ 05. Operadores Lógicos (BETWEEN, LIKE, EXISTS) en SQL Server **************/



SELECT
	*
FROM
	[dbo].[Employees] as [e]
WHERE
	[e].[employee_salary] BETWEEN 500 AND 600; -- RANGO DE VALORES
	--[e].[employee_salary] >= 500 AND [e].[employee_salary] <= 600;

-- LIKe
SELECT
	[employee_name],[employee_lastname],[employee_birthday],[employee_gender],[employee_salary],[employee_positionName],[employee_createdDate]
FROM
	[dbo].[Employees] as [e]
WHERE
	--[e].[employee_lastname] LIKE 'M%'; -- INICIA CON M
	--[e].[employee_lastname] LIKE '%A'; -- TERMINA CON A
	--[e].[employee_name] LIKE '%A%'; -- CONTENGA UNA A
	--[e].[employee_lastname] LIKE '%_i_%'; -- CARACTERES AL INICIO O FIN
	--[e].[employee_lastname] LIKE '[MR]%'; -- DELIMITAR POR UN CARACTER DE UNA LISTA **COMIENZA O TERMINA**
	--[e].[employee_lastname] LIKE '[A-F]%'; -- DELIMITAR POR UN CARACTER DE UNA LISTA **COMIENZA O TERMINA**
	--[e].[employee_lastname] LIKE '[ZS]avaleta'; -- DELIMITAR POR VALORES OPCIONALES (OR)
	--[e].[employee_name] LIKE 'A[XZ]el'; -- DELIMITAR POR VALORES OPCIONALES (OR)
	--[e].[employee_name] LIKE '[^mlrpa]%'; -- DESCRIMINA VALORES CONTENIDOS DENTRO DEL CORCHETES ES **INTERCALACION/CIRCUNFLEJO**
	[e].[employee_positionName] LIKE '&_%' ESCAPE '&'; -- PALABRAS RESERVADAS DENTRO DEL STRING 


-- exist
-- LIKe
SELECT
	[employee_name],[employee_lastname],[employee_birthday],[employee_gender],[employee_salary],[employee_positionName],[employee_createdDate]
FROM
	[dbo].[Employees] as [e]
WHERE
	--(EXISTS 
	--	(SELECT [d].[department_id] 
	--	FROM [dbo].[Departments] AS [d] 
	--	WHERE [d].[department_id]=[e].[department_id] AND [d].[department_id] IN (2,3))
	--);
	[e].[department_id] IN (
		SELECT [d].[department_id] FROM [dbo].[Departments] AS [d]
		WHERE [d].[department_name] LIKE '%as'
	);


-- SOME / ANY
SELECT * FROM [dbo].[OrderDetails] as [od]
WHERE [od].[order_id] = SOME (SELECT [o].[order_id] FROM [dbo].[Orders] as [o]);