-- Write your query below
select c.customer_id,c.customer_name from customers c
join orders o on
c.customer_id=o.customer_id
where o.product_name='A'
intersect
select c.customer_id,c.customer_name from customers c
join orders o on
c.customer_id=o.customer_id
where o.product_name='B'
except
select c.customer_id,c.customer_name from customers c
join orders o on
c.customer_id=o.customer_id
where o.product_name='C'
order by customer_name