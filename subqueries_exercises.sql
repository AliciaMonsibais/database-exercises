use employees;

# Find all the employees with the same hire date as employee 101010 using a subquery.
# 69 Rows
select *
from employees e
where hire_date in (
    select hire_date
    from employees
    where emp_no = 101010
    );
# Find all the titles held by all employees with the first name Aamod.
# 314 total titles, 6 unique titles

select title, count(title)
from titles
where emp_no in (
    select emp_no
    from employees
    where first_name = "Aamod"
    )
group by title;

# Find all the current department managers that are female.
select first_name, last_name
from employees
where gender = 'f' and emp_no in (
        select emp_no
        from dept_manager
        where to_date > curdate()
);

#     Find all the department names that currently have female managers.
select dept_name
from employees
where gender = 'f' and emp_no in (
    select emp_no
    from dept_manager
    where to_date > curdate()
);