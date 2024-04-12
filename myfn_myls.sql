--Write a query to get most expense and least expensive Product list 
--(name and unit price).

select p.product_name, p.unit_price  
from products p
where p.unit_price in (select min(unit_price) from products)
union
select p.product_name, p.unit_price  
from products p
where p.unit_price in (select max(unit_price) from products)
