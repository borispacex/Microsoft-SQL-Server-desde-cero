/************ 08. INNER JOIN, LEFT JOIN, RIGHT JOIN y FULL JOIN  en SQL Server **************/

-- creamos tablas necesarias
CREATE TABLE [dbo].[Employees](
	[employee_id]	INT				NOT NULL IDENTITY (1,1) PRIMARY KEY,
	[employee_name] VARCHAR(100)	NULL,
	[department_id] INT				NULL
);
CREATE TABLE [dbo].[Departments](
	[department_id]	INT				NOT NULL IDENTITY (1,1) PRIMARY KEY,
	[department_name] VARCHAR(100)	NULL
);

INSERT INTO [dbo].[Employees]
([employee_name], [department_id])
VALUES
('Axel Romero', 1),
('Roberto Mujica', 1),
('Alondra Rosas', 2),
('Rodrigo Lara', 3),
('Monica Galindo', 4),
('Rosario Galicia', NULL),
('Fernando Roa', 6),
('Paola Leon', NULL);

INSERT INTO [dbo].[Departments]
([department_name])
VALUES
('Sistemas'),
('Recursos Humanos'),
('Produccion'),
('Ventas'),
('Compras');

SELECT * FROM Departments;
SELECT * FROM Employees;

-- INNER JOIN
SELECT [e].[employee_name], [d].[department_name] 
FROM [dbo].[Employees] AS [e]
INNER JOIN 
	[dbo].[Departments] as [d]
ON [e].[department_id] = [d].[department_id];

-- LEFT JOIN
SELECT [e].[employee_name], [d].[department_name] 
FROM [dbo].[Employees] AS [e]
LEFT JOIN 
	[dbo].[Departments] as [d]
ON [e].[department_id] = [d].[department_id];

-- RIGHT JOIN
SELECT [e].[employee_name], [d].[department_name] 
FROM [dbo].[Employees] AS [e]
RIGHT JOIN 
	[dbo].[Departments] as [d]
ON [e].[department_id] = [d].[department_id];

-- FULL OUTER JOIN
SELECT [e].[employee_name], [d].[department_name] 
FROM [dbo].[Employees] AS [e]
FULL OUTER JOIN 
	[dbo].[Departments] as [d]
ON [e].[department_id] = [d].[department_id];

-- es NULL or NOT NULL
SELECT [e].[employee_name], [d].[department_name] 
FROM [dbo].[Employees] AS [e]
LEFT JOIN 
	[dbo].[Departments] as [d]
ON [e].[department_id] = [d].[department_id]
WHERE [d].[department_id] IS NULL;