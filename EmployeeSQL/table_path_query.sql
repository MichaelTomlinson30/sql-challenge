CREATE TABLE employees (
    emp_no INT PRIMARY KEY,
	emp_title VARCHAR(5) NOT NULL,
	birth_date DATE NOT NULL,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
	sex VARCHAR (1) NOT NULL,
    hire_date DATE NOT NULL
);

COPY employees(emp_no, emp_title, birth_date, first_name, last_name, sex, hire_date) 
FROM 'C:/Users/micha/OneDrive/Desktop/sql-challenge/sql-challenge/Starter_Code/data/employees 1.csv' 
DELIMITER ',' CSV HEADER;

select * from employees

CREATE TABLE departments (
    dept_no CHAR(4) PRIMARY KEY,
    dept_name VARCHAR(255) NOT NULL
);

COPY departments(dept_no, dept_name) 
FROM 'C:\Users\micha\OneDrive\Desktop\sql-challenge\sql-challenge\Starter_Code\data\departments.csv' 
DELIMITER ',' CSV HEADER;

CREATE TABLE dept_emp (
    emp_no INT NOT NULL,
    dept_no CHAR(4) NOT NULL,
    PRIMARY KEY (emp_no, dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);
COPY dept_emp(emp_no, dept_no)
FROM 'C:\Users\micha\OneDrive\Desktop\sql-challenge\sql-challenge\Starter_Code\data\dept_emp.csv'
DELIMITER ',' CSV HEADER;


CREATE TABLE dept_manager (
    emp_no INT NOT NULL,
    dept_no CHAR(4) NOT NULL,
    PRIMARY KEY (emp_no, dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

COPY dept_manager(dept_no, emp_no)
FROM 'C:\Users\micha\OneDrive\Desktop\sql-challenge\sql-challenge\Starter_Code\data\dept_manager.csv'
DELIMITER ',' CSV HEADER;

CREATE TABLE salaries (
    emp_no INT PRIMARY KEY,
    salary INT NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

COPY salaries(emp_no, salary)
FROM 'C:\Users\micha\OneDrive\Desktop\sql-challenge\sql-challenge\Starter_Code\data\salaries.csv'
DELIMITER ',' CSV HEADER;

CREATE TABLE titles (
    title_id CHAR(5) PRIMARY KEY,
    title VARCHAR(255) NOT NULL
);

COPY titles(title_id, title)
FROM 'C:\Users\micha\OneDrive\Desktop\sql-challenge\sql-challenge\Starter_Code\data\titles.csv'
DELIMITER ',' CSV HEADER;

select * from titles



