-- Write your query below
Select employees.employee_id,
case
 when employees.employee_id %2 !=0 AND employees.name NOT LIKE 'M%' THEN salary
 Else 0
 End as bonus
from employees
Order BY employee_id;