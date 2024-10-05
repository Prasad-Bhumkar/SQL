SELECT department_id,MAX(hire_date) "Last employee Hired On"
from employees
GROUP BY department_id;