--Data Analysis Questions

--1. List the employee number, last name, first name, sex, and salary of each employee.
select employees.emp_no
	 , last_name
	 , first_name
	 , sex
	 , salary
  from employees
inner join salaries on employees.emp_no = salaries.emp_no;

--2. List the first name, last name, and hire date for the employees who were hired in 1986.
select first_name
	 , last_name
	 , hire_date
  from employees
 where hire_date >= '01-jan-1986'
   and hire_date < '01-jan-1987';
   
--3. List the manager of each department along with their department number, department name, employee number, last name, and first name.
select d.dept_no
	 , d.dept_name
	 , e.emp_no
	 , e.last_name
	 , e.first_name
  from dept_manager dm
inner join departments d on dm.dept_no = d.dept_no
inner join employees e on dm.emp_no = e.emp_no;

--4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
--NOTE! There are duplicates below as certain employees belong to more than 1 department, like emp_no = 10010
select de.dept_no
	 , e.emp_no
	 , e.last_name
	 , e.first_name
	 , d.dept_name
  from dept_emp de
inner join employees e on de.emp_no = e.emp_no
inner join departments d on de.dept_no = d.dept_no;

--5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
select first_name
	 , last_name
	 , sex
  from employees
 where first_name = 'Hercules'
   and last_name like 'B%';
   
--6. List each employee in the Sales department, including their employee number, last name, and first name.
select e.emp_no
	 , e.last_name
	 , e.first_name
  from employees e
inner join dept_emp de on e.emp_no = de.emp_no
inner join departments d on de.dept_no = d.dept_no
where d.dept_name = 'Sales';

--7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
select e.emp_no
	 , e.last_name
	 , e.first_name
	 , d.dept_name
  from employees e
inner join dept_emp de on e.emp_no = de.emp_no
inner join departments d on de.dept_no = d.dept_no
where d.dept_name in ('Sales','Development');

--8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
select last_name
	 , count(emp_no) counts
  from employees
group by 1
order by 2 desc;