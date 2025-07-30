----------3 where, group by , haiving , order by---------------------

select * from books

select * from employees

select * from orders

select * from products

select * from students
--------------------------------------------
---------table 1------------------

--view of 3 where, group by , haiving , order by-----

select department, avg(salary) as avg_salary, count(emp_id) as total_employees
from employees
where salary > 30000
group by department
having avg(salary) > 40000
order by avg_salary desc
-----------------------------------------------------------------------------------
-----------table2---------

select customer_name, sum(total_amount) as total_spent, count(order_id) as total_orders
from orders
where total_amount > 5000
group by customer_name
having sum(total_amount) > 10000
order by total_spent desc;
-------------------------------------------------------------------------------------
------------table3----------

select author, avg(price) as avg_price, count(book_id) as total_books
from books
where price > 100
group by author
having avg(price) > 200
order by avg_price desc
--------------------------------------------------------------------------------
-----------table4-----------

select category, avg(price) as avg_price, count(product_id) as total_products
from products
where price > 200
group by category
having avg(price) > 1000
order by avg_price desc

----------------------------task end---------------------------------------------------


