CREATE TABLE Departments (
dept_no VARCHAR PRIMARY KEY NOT NULL,
dept_name VARCHAR NOT NULL
);

CREATE TABLE Titles (
title_id VARCHAR PRIMARY KEY NOT NULL,
title VARCHAR NOT NULL
);

CREATE TABLE Employees (
emp_no INT PRIMARY KEY NOT NULL,
emp_title_id VARCHAR NOT NULL,
birth_date VARCHAR NOT NULL,
first_name VARCHAR NOT NULL,
last_name VARCHAR NOT NULL,
sex VARCHAR (1) NOT NULL,
hire_date VARCHAR NOT NULL,
FOREIGN KEY (emp_title_id) REFERENCES Titles(title_id)
);

CREATE TABLE Salaries (
emp_no INT,
salary INT NOT NULL,
FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
PRIMARY KEY (emp_no, salary)
);

CREATE TABLE dept_emp (
emp_no INT,
dept_no VARCHAR,
FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
FOREIGN KEY (dept_no) REFERENCES Departments(dept_no),
PRIMARY KEY (emp_no, dept_no)
);

CREATE TABLE dept_manager (
dept_no VARCHAR,
emp_no INT,
FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
FOREIGN KEY (dept_no) REFERENCES Departments(dept_no),
PRIMARY KEY (emp_no, dept_no)
);
