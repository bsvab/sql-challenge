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
    "emp_title_id" VARCHAR(5) NOT NULL,
    FOREIGN KEY ("emp_title_id") REFERENCES titles(title_id),
    "birth_date" DATE NOT NULL,
    "first_name" VARCHAR(50) NOT NULL,
    "last_name" VARCHAR(50) NOT NULL,
    "sex" VARCHAR(1) NOT NULL,
    "hire_date" DATE NOT NULL
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

-- I did not elect to create a composite key for the dept_emp and dept_manager tables as I didn't see a need to as they 
-- are both made up of only foreign keys and I didn't see a need to be able to reference them directly outside of that
