--Assignment for Cross Join 
--1) Give the Cartesian product of employee and department table 
select * from employees e,departments d order by e.employee_id,d.department_id;

-- Display the department id from employee and department table separate separate
select d.department_id ,e.department_id from employees e,departments d order by e.employee_id,d.department_id;

--Give the Cartesian product of any three table
SELECT
    * FROM employees e,departments d,jobs j 
    where e.department_id = d.department_id
    AND e.job_id=j.job_id
    order by e.employee_id;
    
    
--first table have 3 and second table has 5 rows and if we apply Cartesian product then how many rows will be in output table
15