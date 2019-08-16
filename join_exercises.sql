# Using the example in the Associative Table Joins section as a guide, write a query that shows each department along with the name of the current manager for that department.

# Department Name    | Department Manager
#  --------------------+--------------------
#   Customer Service   | Yuchang Weedman
#   Development        | Leon DasSarma
#   Finance            | Isamu Legleitner
#   Human Resources    | Karsten Sigstam
#   Marketing          | Vishwani Minakawa
#   Production         | Oscar Ghazalie
#   Quality Management | Dung Pesch
#   Research           | Hilary Kambil
#   Sales              | Hauke Zhang

select d.dept_name as 'Department Name', concat_ws(' ', e.first_name, e.last_name) as 'Department Manager'
from departments d
        join dept_manager dm on d.dept_no = dm.dept_no
        join employees e on e.emp_no = dm.emp_no
where dm.to_date > CURDATE()
order by d.dept_name;

# Find the name of all departments currently managed by women.
select d.dept_name as 'Department Name', concat_ws(' ', e.first_name, e.last_name) as 'Department Manager'
from departments d
         join dept_manager dm on d.dept_no = dm.dept_no
         join employees e on e.emp_no = dm.emp_no
where dm.to_date > CURDATE() and e.gender = 'f'
order by d.dept_name;

# Find the current titles of employees currently working in the Customer Service department.
select t.title as 'Title', COUNT(t.title) as 'Count'
from titles t
        join dept_emp de on de.emp_no = t.emp_no
        join departments d on d.dept_no = de.dept_no
where d.dept_name = 'Customer Service' and t.to_date > NOW()
group by t.title;

# Find the current salary of all current managers.
select dept_name as 'Department Name', concat_ws(' ', first_name, last_name) as 'Name', s.salary as 'Salary'
from departments d
        join dept_manager dm on d.dept_no = dm.dept_no
        join employees e on dm.emp_no = e.emp_no
        join salaries s on e.emp_no = s.emp_no
where dm.to_date > CURDATE() and s.to_date > CURDATE()
order by d.dept_name;

# Bonus Find the names of all current employees, their department name, and their current manager's name.
select concat_ws(' ', e.first_name, e.last_name) as 'Employee Name', dept_name as 'Department Name', concat_ws(' ', mgr.first_name, mgr.last_name) as 'Manager Name'
from employees e
        join dept_emp de on e.emp_no = de.emp_no
        join departments d on d.dept_no = de.dept_no
        join dept_manager dm on d.dept_no = dm.dept_no
        join employees mgr on mgr.emp_no = dm.emp_no
where de.to_date > CURDATE() and dm.to_date > CURDATE()
order by d.dept_name;