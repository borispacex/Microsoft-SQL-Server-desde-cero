/************ 12. Operadores de Comparación en SQL Server **************/
--  =, >, <, >=, <=, <>
-- !=, !<, !>

SELECT
*
FROM
	[dbo].[Employees] as [e]
WHERE
	[e].[employee_salary] <> 750	--distinto
ORDER BY
	[e].[employee_salary] ASC;

-- ejemplo 2

SELECT
*
FROM
	[dbo].[Employees] as [e]
WHERE
	[e].[employee_birthday] > '1992-12-07'
ORDER BY
	[e].[employee_salary] ASC;