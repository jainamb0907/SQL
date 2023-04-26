CREATE TABLE Employees (
    EmployeeId INT IDENTITY(1,1) PRIMARY KEY,
    FirstName varchar(255) NOT NULL,
    DepartmentId INT,
	Experince INT,
    Salary DECIMAL(8,2)  
);
GO

--DROP TABLE Employees;

INSERT INTO Employees(FirstName, DepartmentId, Experince, Salary)
VALUES 
('Akash', 3, 4, 35000),
('Jd', 2, 3, 67000),
('Mitali', 5, 8, 25000),
('Khush', 7, 7, 76544),
('Mori', 2, 2, 5000),
('Jayesh', 6, 1, 454.90),
('Jenish', 1, 5, 64000),
('Suman', 4, 6, 19000),
('Jay', 9, 10,33000),
('Jimit', 8, 9, 56000);
GO

CREATE TABLE Department (
DepartmentId INT PRIMARY KEY,
DepartmentName varchar(200)
);
GO

INSERT INTO Department(DepartmentId, DepartmentName)
VALUES 
(1, 'HR'),
(2, 'Finance'),
(3, 'Marketing'),
(4, 'DotNet'),
(5, 'QA'),
(6, 'BA'),
(7, 'Sales'),
(8, 'TS'),
(9, 'ReactJs');
GO

SELECT * FROM Employees;
SELECT * FROM Department;

--Display empId,EmpName and DepartmentName using INNER JOIN
SELECT EmployeeId,DepartmentName, FirstName   
FROM Employees Emp
INNER JOIN Department Dept  
ON Emp.DepartmentId = Dept.DepartmentId; 
GO


--Display department wise employee count using GROUP BY clause
SELECT DepartmentName, COUNT(EmployeeId) AS 'EmployeeCount'
FROM Employees Emp
INNER JOIN Department Dept  
ON Emp.DepartmentId = Dept.DepartmentId GROUP BY DepartmentName;
GO

--Display department wise maximum salary using MAX aggregate function
SELECT DepartmentName, MAX(Salary) AS 'HighestSalary'
FROM Employees Emp
INNER JOIN Department Dept  
ON Emp.DepartmentId = Dept.DepartmentId GROUP BY DepartmentName;
GO
 
--Display employee name in the ascending order of department name using ORDER BY 
SELECT DepartmentName, FirstName
FROM Employees Emp
INNER JOIN Department Dept  
ON Emp.DepartmentId = Dept.DepartmentId ORDER BY DepartmentName;
GO

--Display employeeName and grade using Case
SELECT FirstName,  
CASE  
WHEN Experince> 10 THEN 'Expert'  
WHEN Experince> 7 AND Experince <= 10 THEN 'Advanced'  
WHEN Experince> 5 AND Experince <= 7 THEN 'Intermediate'  
WHEN Experince> 2 AND Experince <=5 THEN 'Beginner'  
ELSE 'Novice'
END AS Grade
FROM Employees; 




