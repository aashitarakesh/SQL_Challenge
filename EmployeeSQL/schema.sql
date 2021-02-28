-- Create a Titles table
CREATE TABLE titles(
	title_id VARCHAR(25) NOT NULL PRIMARY KEY,
	title VARCHAR(25)
    );

-- View Table
SELECT * FROM titles;

-- Create a Employees table
CREATE TABLE employees(
	emp_no INT NOT NULL PRIMARY KEY,
    emp_title_id VARCHAR(25) ,
    birth_date DATE ,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    sex VARCHAR(1),
    hire_date DATE, 
	Foreign KEY (emp_title_id) REFERENCES titles(title_id)
    );
	
-- View Table
SELECT * FROM employees;

-- Create a Department table
CREATE TABLE departments(
    dept_no VARCHAR NOT NULL PRIMARY KEY,
    dept_name VARCHAR(25)
	);
	
-- View Table
SELECT * FROM departments;

-- Table schema for the Dept_emp junction table
CREATE TABLE dept_emp(
	emp_no INT NOT NULL,
    FOREIGN KEY (emp_no ) REFERENCES employees(emp_no),
    dept_no VARCHAR NOT NULL,
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    PRIMARY KEY (emp_no, dept_no)
	);
	
-- View Table
SELECT * FROM dept_emp;

-- Table schema for the Dept_manager junction table
CREATE TABLE dept_manager(
	dept_no VARCHAR NOT NULL,
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	emp_no INT NOT NULL,
    FOREIGN KEY (emp_no ) REFERENCES employees(emp_no),
    PRIMARY KEY (dept_no,emp_no)
	);
	
-- View Table
SELECT * FROM dept_manager;

-- Create a Salaries table
CREATE TABLE salaries(
	emp_no INT NOT NULL,
    FOREIGN KEY (emp_no ) REFERENCES employees(emp_no),
    salary INT
	);
	
-- View  Salaries Table
SELECT * FROM salaries;
