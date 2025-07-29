--------------Task6-------------
----------3 joins views---------------------

select * from books

select * from employees

select * from orders

select * from products

select * from students
--------------------------------------------

-- view 1: employee_with_orders
create view employees_with_orders as
select e.emp_id,
       e.full_name,
       e.department,
       o.order_id,
       o.customer_name
from employees as e
inner join orders as o
 on e.emp_id = o.order_id;

select * from employees_with_orders

----------------------------------------------

-- view 1: orders_with_products
create view orders_with_products as
select o.order_id,
       o.customer_name,
       p.product_id,
       p.name as product_name
from orders as o
inner join products as p
  on o.product_id = p.product_id;

select * from orders_with_products;
----------------------------------------------

-- view 1: books_with_students
create view books_with_students as
select b.book_id,
       b.title,
       s.student_id,
       s.name as student_name
from books as b
inner join students as s
 on b.book_id = s.student_id;

select * from books_with_students;

--------------3joins--------------------
