-- Write your query below
select distinct(customer_id) as customer_id from customers where revenue > 0 and year = 2020 order by customer_id