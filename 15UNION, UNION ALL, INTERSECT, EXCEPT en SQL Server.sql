/************ 15. UNION, UNION ALL, INTERSECT, EXCEPT en SQL Server **************/

-- UNION ALL	--> Aparecen todas las filas (repetidas)
-- UNION		--> Devuelve filas distintas o unicas
-- INTERSECT	--> Devuelve filas que en ambas consultas son devueltas
-- EXCEPT		--> Devuelve filas encontradas en el primer query y ademas descarta las filas encontradas en el segundo query

SELECT
	[e].[employee_name], [e].[employee_lastname], [e].[employee_salary], [e].[employee_positionName]
FROM
	[dbo].[Employees] as [e]
WHERE
	[e].[employee_positionName] LIKE '%Ventas%'
INTERSECT --EXCEPT --INTERSECT --UNION --UNION ALL
SELECT
	[e].[employee_name], [e].[employee_lastname], [e].[employee_salary], [e].[employee_positionName]
FROM
	[dbo].[Employees] as [e]
WHERE
	[e].[employee_salary] <= 500;




