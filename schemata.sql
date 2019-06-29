CREATE TABLE employees (
    emp_no INTEGER,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    gender VARCHAR(30) NOT NULL,
    birth_date DATE,
    hire_date DATE,
    PRIMARY KEY (emp_no)
);
CREATE TABLE dept_manager (
    emp_no INTEGER,
    dept_no INTEGER,
    from_date DATE,
    to_date DATE,
    PRIMARY KEY (dept_no)
);
CREATE TABLE departments (
    dept_no INTEGER,
    dept_name VARCHAR(30) NOT NULL,
    PRIMARY KEY (dept_no)
);
CREATE TABLE dept_emp (
    emp_no INTEGER,
    dept_no INTEGER,
    from_date DATE,
    to_date DATE,
    PRIMARY KEY (emp_no)
    FOREIGN KEY (dept_no) REFERENCES deptartments(dept_no)
);
CREATE TABLE titles (
    emp_no INTEGER,
    title VARCHAR(30) NOT NULL,
    from_date DATE,
    to_date DATE,
    PRIMARY KEY (emp_no)
);
CREATE TABLE salaries (
    emp_no INTEGER,
    salary VARCHAR(30) NOT NULL,
    from_date DATE,
    to_date DATE,
    PRIMARY KEY (emp_no)
);