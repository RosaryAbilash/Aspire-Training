CREATE TABLE employee (
  EmployeeID int(11),
  EmployeeName varchar(25) ,
  EmployeeDOB int,
  Designation varchar(50) ,
  Address varchar(100),
  Mobile int(10),
  Email varchar(50)
);

ALTER TABLE employee
  MODIFY COLUMN EmployeeDOB date;


ALTER TABLE employee
  MODIFY COLUMN Mobile bigint;



INSERT INTO `employee` (`EmployeeID`, `EmployeeName`, `EmployeeDOB`, `Designation`, `Address`, `Mobile`, `Email`) VALUES
(101, 'Rosary', '2002-06-10', 'Software Engineer', 'Kallakurichi', 8925315088, 'rosary@gmail.com'),
(102, 'Krishna', '0000-00-00', 'Software Engineer', 'Villupuram', 8925315099, 'krishna@gmail.com'),
(103, 'Tamilarasan', '0000-00-00', 'Tester', 'Pondicherry', 8925315100, 'tamil@gmail.com'),
(104, 'Kathir', '0000-00-00', 'Tester', 'Cuddalore', 8925315101, 'kathir@gmail.com'),
(105, 'Kamal', '2002-11-01', 'Manager', 'Chennai', 123456899, 'kamal@gmail.com');






CREATE TABLE department (
  DeptID int(11),
  DeptName varchar(20),
  EmployeeID int(11),
   FOREIGN KEY (EmployeeID) REFERENCES employee(EmployeeID)
);



INSERT INTO `department` (`DeptID`, `DeptName`, `EmployeeID`) VALUES
(2501, 'SL', 101),
(2502, 'DESIGN', 102),
(2503, 'TRAINING', 103),
(2504, 'TESTING', 104);



-- INNER JOIN
SELECT * FROM employee INNER JOIN department ON employee.EmployeeID = department.EmployeeID;


-- LEFT JOIN
SELECT * FROM employee LEFT JOIN department ON employee.EmployeeID = department.EmployeeID;


-- RIGHT JOIN
SELECT * FROM employee RIGHT JOIN department ON employee.EmployeeID = department.EmployeeID;



-- SELECT * FROM employee FULL JOIN department ON employee.EmployeeID = department.EmployeeID;