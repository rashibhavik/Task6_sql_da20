----------3 joins with where group by having order by---------------------

select * from employees

select * from orders

select * from products
--------------------------------------------
---------table 1------------------

--view of 3 joins with where group by having order by-----

select e.department,
count(e.emp_id) as total_employees,
avg(o.total_amount) as avg_order_amount
from employees e
join orders as o on e.emp_id = e.emp_id
group by e.department
having avg(o.total_amount) > 5000
order by avg(o.total_amount) desc

select * from employees
-------------------------------------------------------------------
------------table2--------------

select o.customer_name,
count(o.order_id) as total_orders,
sum(o.total_amount) as total_spent
from orders as o
join products as p on o.product_id = p.product_id
where o.total_amount > 5000
group by o.customer_name
having sum(o.total_amount) > 10000
order by total_spent desc

select * from orders
-----------------------------------------------------------
-----------------table3-------------

select p.category,
count(p.product_id) as total_products,
avg(o.total_amount) as avg_order_amount
from products as p
join orders as o on p.product_id = o.product_id
where p.price > 200
group by p.category
having avg(o.total_amount) > 5000
order by avg(o.total_amount) desc

select * from products
-----------------------task end-----------------------------
