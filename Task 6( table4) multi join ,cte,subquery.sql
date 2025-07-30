------------------1 multi join , 1 cte , 1 subquery-------------

--multi joins
create view employee_orders_info as
select
  e.emp_id,
  e.full_name,
  e.department,
  o.order_id,
  p.name as product_name
from employees as e
join orders as o
on e.emp_id = o.order_id
join products as p
on o.product_id = p.product_id

-- select statement
select * from employee_orders_info
------------------------------------------

---cte view
create view employee_department_counts as
with dept_counts as (
  select department, count(*) as total_employees
  from employees
  group by department
)
select department, total_employees
from dept_counts

-- select statement
select * from employee_department_counts
--------------------------------------------------

---subquery view
create view high_salary_employees as
select emp_id,
       full_name,
       department,
       salary
from employees
where salary > (select avg(salary) from employees)

-- select statement
select * from high_salary_employees

-------------------task end------------------------------
