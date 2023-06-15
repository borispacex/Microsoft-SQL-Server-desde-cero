/************ 10. Concatenación y Alias en SQL Server **************/

SELECT 
	[e].[employee_name] + ' ' + [e].[employee_lastname]			as [employee_fullName],
	CONCAT([e].[employee_lastname], ', ', [e].[employee_name])	as [employee_fullName2],
	[e].[employee_positionName], 
	[e].[employee_salary], 
	[e].[employee_createdDate], 
	[e].[department_id]
FROM [dbo].[Employees] AS [e]
ORDER BY [e].[employee_salary] ASC, [e].[employee_createdDate] DESC;


-- ejemplo 2
SELECT 
	CONCAT([e].[employee_lastname], ', ', [e].[employee_name])	as [employee_fullName2],
	[e].[employee_positionName], 
	[e].[employee_salary], 
	[e].[employee_createdDate], 
	[e].[department_id],
	[d].[department_name] + '/' + [e].[employee_positionName] AS [employee_fullInfo]
FROM [dbo].[Employees] AS [e]
INNER JOIN [dbo].[Departments] AS [d]
ON [e].[department_id] = [d].[department_id]
ORDER BY [d].[department_name] ASC;



-- ejemplo 3
SELECT 
	CONCAT([e].[employee_lastname], N', ', [e].[employee_name])	as [employee_fullName2],
	[e].[employee_positionName], 
	[e].[employee_salary], 
	[e].[employee_createdDate], 
	[e].[department_id],
	[d].[department_name] + '/' + [e].[employee_positionName] + '/' + CAST([e].[employee_salary] AS NVARCHAR(100)) AS [employee_fullInfo]
FROM [dbo].[Employees] AS [e]
INNER JOIN [dbo].[Departments] AS [d]
ON [e].[department_id] = [d].[department_id]
ORDER BY [employee_fullInfo] ASC;


