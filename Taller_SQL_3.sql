With managers AS (
	SELECT
	e.Employee_ID
	,e.Employee_Name
	,e.ManagerID
	,s.salary
	FROM Employees e
	JOIN SALARIES s ON e.Employee_ID = s.Employee_ID
	WHERE ManagerID <> Null
)

SELECT
	m.Employee_Name
FROM managers m
JOIN SALARIES s ON m.ManagerID = s.EmployeeID
WHERE m.salary > s.salary