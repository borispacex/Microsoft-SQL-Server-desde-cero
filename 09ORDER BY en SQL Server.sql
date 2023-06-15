/************ 09. ORDER BY en SQL Server **************/

DROP TABLE [dbo].[Employees];

CREATE TABLE [dbo].[Employees](
	[employee_id]			INT				NOT NULL IDENTITY(1,1) PRIMARY KEY,
	[employee_name]			VARCHAR(100)	NOT NULL,
	[employee_lastname]		VARCHAR(100)	NOT NULL,
	[employee_birthday]		DATE			NULL,
	[employee_gender]		BIT				NULL,
	[employee_salary]		DECIMAL(18,2)	NOT NULL,
	[employee_positionName]	VARCHAR(100)	NOT NULL,
	[employee_createdDate]	DATE			NOT NULL DEFAULT GETDATE(),
	[department_id]			INT				NOT NULL
);

INSERT INTO [dbo].[Employees]
([employee_name], [employee_lastname], [employee_birthday], [employee_gender], [employee_salary], [employee_positionName], [employee_createdDate], [department_id])
VALUES
('Axel', 'Romero', '1990-03-22', 1, 550.20, 'Progrador Sr.', '2020-10-01', 1),
('Roberto', 'Mujica', '1995-03-22', 1, 250, 'Analista', '2019-05-05', 1),
('Alondra', 'Rosas', '1985-05-20', 0, 400, 'Generalista', '2018-11-01', 2),
('Rodrigo', 'Lara', '1985-05-20', 1, 355, 'Supervisor', '2020-01-01', 3),
('Monica', 'Galindo', '1996-02-05', 0, 211, 'Ventas Mayore', '2020-03-03', 4),
('Rosario', 'Galicia', '1994-01-21', 0, 650, 'Ventas Autoservicio', '2020-03-03', 4),
('Fernando', 'Roa', '1988-01-29', 1, 750, 'Gerente de compras', '2017-06-18', 5),
('Paola', 'Leon', '1993-09-12', 0, 750, 'Ventas Menudeo', '2018-06-08', 4),
('Diego', 'Zabaleta', '1991-11-12', 1, 433.50, 'Ventas Menudeo', '2021-01-12', 4),
('Marisol', 'Paez', '1992-12-07', 0, 558.30, 'Gerente RRHH', '2018-03-17', 2);

SELECT * FROM Employees;

-- Ordenar por
SELECT [e].[employee_name], 
[e].[employee_lastname], 
[e].[employee_positionName], 
[e].[employee_salary], 
[e].[employee_createdDate], 
[e].[department_id]
FROM [dbo].[Employees] AS [e]
ORDER BY [e].[employee_name] DESC; -- ASC


SELECT [e].[employee_name], 
[e].[employee_lastname], 
[e].[employee_positionName], 
[e].[employee_salary], 
[e].[employee_createdDate], 
[e].[department_id]
FROM [dbo].[Employees] AS [e]
ORDER BY [e].[employee_salary] ASC, [e].[employee_createdDate] DESC;









