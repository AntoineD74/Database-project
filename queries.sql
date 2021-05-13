/* Queries for the database database_project */
USE database_project;

-- Selection of all the active employees
SELECT name, surname FROM Employee WHERE status_employee = (SELECT id FROM StatusEmployee WHERE status = "active");


-- Will select the number of employee for every existing status option
SELECT StatusEmployee.status, COUNT(*) AS 'Number of employee '
	FROM Employee
    INNER JOIN StatusEmployee ON StatusEmployee.id = Employee.status_employee
	GROUP BY status_employee;


-- Select the bank information and the monthly salary of each active employee
SELECT name_owner AS 'Name Owner', number_account AS 'Number Account', bic_code AS 'Bic Code', MonthlySalary.salary
	FROM BankDetails
    INNER JOIN Employee ON Employee.bank_details = BankDetails.id
    INNER JOIN MonthlySalary ON MonthlySalary.id = Employee.monthly_salary
    WHERE Employee.status_employee = 1;


-- Will select the employee with their position and their department
SELECT Employee.name, Employee.surname, PositionEmployee.position_name AS Position, Department.name AS Department
	FROM WorkDetails
    INNER JOIN Employee ON Employee.id = WorkDetails.employee_id
    INNER JOIN PositionEmployee ON PositionEmployee.id = WorkDetails.position_id
    INNER JOIN Department ON Department.id = WorkDetails.department_id;
    
    
-- to select the bank details for every employees from france 
SELECT name_owner AS 'Name Owner', number_account AS 'Number Account', bic_code AS 'Bic Code'
	From BankDetails
	JOIN Employee ON Employee.bank_details = BankDetails.id
	INNER JOIN Adress ON Adress.id = Employee.adress
	INNER JOIN City ON City.id = Adress.city
	INNER JOIN Country ON Country.id = City.countryID
	WHERE Country.name = "France";