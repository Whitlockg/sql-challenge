CREATE TABLE "employees" (
	"emp_no" INT   NOT NULL,
    "birth_date" DATE   NOT NULL,
    "first_name" VARCHAR   NOT NULL,
    "last_name" VARCHAR   NOT NULL,
    "gender" VARCHAR   NOT NULL,
    "hire_date" DATE   NOT NULL,
	CONSTRAINT "pk-employees" PRIMARY KEY ("emp_no")
);

CREATE TABLE "departments" (
    "dept_no" VARCHAR   NOT NULL,
    "dept_name" VARCHAR   NOT NULL,	
	CONSTRAINT "pk-departments" PRIMARY KEY ("dept_no")
);
	
CREATE TABLE "titles" (
    "emp_no" INT   NOT NULL,
    "title" VARCHAR   NOT NULL,
    "from_date" DATE   NOT NULL,
    "to_date" DATE   NOT NULL);
ALTER TABLE "titles" ADD CONSTRAINT "fk-titles-emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

CREATE TABLE "dept_emp" (
    "emp_no" INT   NOT NULL,
    "dept_no" VARCHAR   NOT NULL,
    "from_date" DATE   NOT NULL,
    "to_date" DATE   NOT NULL);
ALTER TABLE "dept_emp" ADD CONSTRAINT "fk-dept_emp-emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");
ALTER TABLE "dept_emp" ADD CONSTRAINT "fk-dept_emp-dept_no" FOREIGN KEY("dept_no")
REFERENCES "departments" ("dept_no");
	
CREATE TABLE "salaries" (
    "emp_no" INT   NOT NULL,
    "salary" INT   NOT NULL,
    "from_date" DATE   NOT NULL,
    "to_date" DATE  NOT NULL);
ALTER TABLE "salaries" ADD CONSTRAINT "fk-salaries-emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");
	
CREATE TABLE "dept_manager" (
    "dept_no" VARCHAR   NOT NULL,
    "emp_no" INT   NOT NULL,
    "from_date" DATE   NOT NULL,
    "to_date" DATE   NOT NULL);
ALTER TABLE "dept_manager" ADD CONSTRAINT "fk-dept_manager-dept_no" FOREIGN KEY("dept_no")
REFERENCES "departments" ("dept_no");
ALTER TABLE "dept_manager" ADD CONSTRAINT "fk-dept_manager-emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

-- after importing --

select * from departments
select * from dept_emp
select * from dept_manager
select * from employees
select * from salaries
select * from titles
