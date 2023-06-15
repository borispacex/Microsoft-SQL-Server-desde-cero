/************ 11. TOP y DISTINCT en SQL Server **************/

-- TOP 3
SELECT  
	TOP(3) *
FROM [dbo].[Employees] AS [e]
ORDER BY [e].[employee_createdDate] ASC;

-- 20 % de todos los registros
SELECT  
	TOP 20 PERCENT *
FROM [dbo].[Employees] AS [e]
ORDER BY [e].[employee_createdDate] ASC;


SELECT  
	DISTINCT [e].[employee_salary]
FROM [dbo].[Employees] AS [e];

--
SELECT  
	DISTINCT [d].[department_name]
FROM [dbo].[Employees] AS [e]
INNER JOIN [dbo].[Departments] AS [d]
ON [e].[department_id] = [d].[department_id];








