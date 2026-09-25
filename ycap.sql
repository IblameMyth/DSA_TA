CREATE TABLE employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    manager_id INT,
    designation VARCHAR(50),
    salary INT,
    FOREIGN KEY (manager_id) REFERENCES employee(emp_id)
);

INSERT INTO employee VALUES
(1, 'Mithilesh', NULL, 'CEO', 1500000),
(2, 'Mayank', 1, 'Manager', 100000),
(3, 'Aditya', 1, 'Manager', 200000),
(4, 'Karan', 2, 'Developer', 30000),
(5, 'James', 2, 'Developer', 55000),
(6, 'Baljot', 3, 'Tester', 50000),
(7, 'Chinmay', 3, 'Developer', 70000);

SELECT 
    e.emp_id,
    e.emp_name AS employee,
    e.designation,
    m.emp_name AS manager
FROM employee e
LEFT JOIN employee m
ON e.manager_id = m.emp_id;
