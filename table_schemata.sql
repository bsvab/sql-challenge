CREATE TABLE "departments" (
    "dept_no" VARCHAR(4) NOT NULL PRIMARY KEY,
    "dept_name" VARCHAR(50) NOT NULL
);

CREATE TABLE "titles" (
    "title_id" VARCHAR(5) NOT NULL PRIMARY KEY,
    "title" VARCHAR(50) NOT NULL
);

CREATE TABLE "employees" (
    "emp_no" INT NOT NULL PRIMARY KEY,
    "emp_title_id" VARCHAR(5),
    FOREIGN KEY ("emp_title_id") REFERENCES title(title_id),
    "birth_date" DATE,
    "first_name" VARCHAR(50),
    "last_name" VARCHAR(50),
    "sex" VARCHAR(1),
    "hire_date" DATE
);

CREATE TABLE "dept_emp" (
    "emp_no" INT NOT NULL,
    FOREIGN KEY ("emp_no") REFERENCES employees(emp_no),
    "dept_no" VARCHAR(4) NOT NULL,
    FOREIGN KEY ("dept_no") REFERENCES departments(dept_no)
);

CREATE TABLE "dept_manager" (
    "dept_no" VARCHAR(4) NOT NULL,
    FOREIGN KEY ("dept_no") REFERENCES departments(dept_no),
    "emp_no" INT NOT NULL,
    FOREIGN KEY ("emp_no") REFERENCES employees(emp_no)
);

CREATE TABLE "salaries" (
    "emp_no" INT NOT NULL,
    FOREIGN KEY ("emp_no") REFERENCES employees(emp_no),
    "salary" INT NOT NULL
);