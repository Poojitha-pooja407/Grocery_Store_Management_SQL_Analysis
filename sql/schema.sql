CREATE DATABASE GROCERY;
USE GROCERY;
show tables;

-- 1. Suppliers Table
alter table suppliers
add primary key (supplierid);

select*from suppliers;
 
 -- 2. Categories Table

select*from categories;
alter table categories
add primary key (categoryID);


-- 3. Employees Table
select *from employees;
alter table employees 
add primary key (employeeid);


-- 4. Customers Table
select*from customers;

alter table customers
add primary key(customerid);


-- 5. Products Table
select *from products;
alter table products
add primary key (productid);

alter table products
add constraint fk_suppliers
foreign key(supplierid) references suppliers(supplierid)
ON UPDATE CASCADE ON DELETE CASCADE,
ADD CONSTRAINT FK_CATEGORY
FOREIGN KEY (categoryid)
REFERENCES categories(categoryid)
ON UPDATE CASCADE ON DELETE CASCADE;

-- 6. Orders Table
select *from orders;
alter table orders
add primary key (orderid);

alter table orders
add constraint fk_customers
foreign key(customerid) references customers(customerid)
on update cascade on delete cascade,
add constraint fk_employees
foreign key(employeeid) references employees(employeeid)
on update cascade on delete cascade;


-- 7. Orderdetails Table

alter table orderdetails
add constraint fk_products
foreign key(productid) references products(productid)
on update cascade on delete cascade,
add constraint fk_orders
foreign key(orderid) references orders(orderid)
on update cascade on delete cascade;
select*from orderdetails;