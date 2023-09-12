--  1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.

select employee_name, monthly_salary from employee_salary
inner join employees on employee_salary.emplyee_id = employees.id
inner join employees on employee_salary.salary_id = salary.id

--  2. Вывести всех работников у которых ЗП меньше 2000.

select employee_name, monthly_salary from employee_salary
inner join employees on employee_salary.employee_id = employees.id
inner join salary on employee_salary.salary_id = salary.id
where monthly_salary < 2000;

--  3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)

select employee_name, monthly_salary from employee_salary
left join employees on employee_salary.employee_id = employees.id
inner join salary on employee_salary.salary_id = salary.id


--  4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)

select employee_name, monthly_salary from employee_salary
left join employees on employee_salary.employee_id = employees.id
inner join salary on employee_salary.salary_id = salary.id
where employee_name is null and monthly_salary < 2000;

--  5. Найти всех работников кому не начислена ЗП.

select employee_name, salary_id 
from employee_salary
right join employees on employee_salary.employee_id = employees.id 
where salary_id is null;

--  6. Вывести всех работников с названиями их должности.

select employee_name, role_name from roles_employee
join employees on roles_employee.employee_id = employee.id
join roles on roles_employee.role_id = roles.id


--  7. Вывести имена и должность только Java разработчиков.

select employee_name, role_name 
from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
where role_name like '%Java %'

--  8. Вывести имена и должность только Python разработчиков.

select employee_name, role_name 
from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
where role_name like '%Python%';

--  9. Вывести имена и должность всех QA инженеров.

select employee_name, role_name 
from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
where role_name like '%QA%';

--  10. Вывести имена и должность ручных QA инженеров.

select employee_name, role_name 
from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
where role_name like '%Manual% %QA%';

--  11. Вывести имена и должность автоматизаторов QA

select employee_name, role_name 
from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
where role_name like '%Automation% %QA%';

--  12. Вывести имена и зарплаты Junior специалисто

select employee_name, monthly_salary  
from employess 
join employee_salary on employees.id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
where role_name like '%junior%';

--  13. Вывести имена и зарплаты Middle специалистов

select employee_name, monthly_salary, role_name
from employees 
join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id 
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id 
where role_name like '%Middle%';

--  14. Вывести имена и зарплаты Senior специалистов

select employee_name, monthly_salary, role_name
from employees 
join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id 
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id 
where role_name like '%Senior%';

--  15. Вывести зарплаты Java разработчиков

select monthly_salary, role_name
from salary 
join employee_salary on salary.id = employee_salary.salary_id 
join roles_employee on employee_salary.employee_id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id 
where role_name like '%Java %';

--  16. Вывести зарплаты Python разработчиков

select monthly_salary, role_name
from roles  
join roles_employee on roles.id = roles_employee.role_id 
join employee_salary on roles_employee.employee_id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id 
where role_name like '%Python%';

--  17. Вывести имена и зарплаты Junior Python разработчиков

select employee_name, monthly_salary, role_name
from employees 
join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id 
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id 
where role_name like '%Junior Python%';

--  18. Вывести имена и зарплаты Middle JS разработчиков

select employee_name, monthly_salary, role_name
from employees 
join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id 
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id 
where role_name like '%Middle JavaScript%';

--  19. Вывести имена и зарплаты Senior Java разработчиков

select employee_name, monthly_salary, role_name
from employees 
join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id 
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id 
where role_name like '%Senior Java %';

--  20. Вывести зарплаты Junior QA инженеров

select monthly_salary, role_name
from roles  
join roles_employee on roles.id = roles_employee.role_id 
join employee_salary on roles_employee.employee_id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id 
where role_name like '%Junior%QA%';

--  21. Вывести среднюю зарплату всех Junior специалистов

select avg(salary.monthly_salary)
from employee_salary es 
join salary on es.salary_id = salary.id
join roles_employee on roles_employee.employee_id = es.employee_id
join roles on roles_employee.role_id = roles.id 
where role_name like '%Junior%';

--  22. Вывести сумму зарплат JS разработчиков

select sum(monthly_salary)
from employee_salary es 
join salary on es.salary_id = salary.id
join roles_employee on roles_employee.employee_id = es.employee_id
join roles on roles_employee.role_id = roles.id 
where role_name like '%JavaScript developer%';

--  23. Вывести минимальную ЗП QA инженеров

select min(monthly_salary)
from employee_salary es 
join salary on es.salary_id = salary.id
join roles_employee on roles_employee.employee_id = es.employee_id
join roles on roles_employee.role_id = roles.id 
where role_name like '%QA%';

--  24. Вывести максимальную ЗП QA инженеров

select max(monthly_salary)
from employee_salary es 
join salary on es.salary_id = salary.id
join roles_employee on roles_employee.employee_id = es.employee_id
join roles on roles_employee.role_id = roles.id 
where role_name like '%QA%';

--  25. Вывести количество QA инженеров

select count(re.id)
from roles_employee re 
join roles on re.role_id = roles.id 
where role_name like '%QA%';

--  26. Вывести количество Middle специалистов.

select count(*)
from roles_employee re 
join roles on re.role_id = roles.id 
where role_name like '%Middle%';

--  27. Вывести количество разработчиков

select count(*)
from roles_employee re 
join roles on re.role_id = roles.id 
where role_name like '%developer%';

--  28. Вывести фонд (сумму) зарплаты разработчиков.

SELECT sum(s.monthly_salary)
FROM roles_employee 
JOIN roles ON roles_employee.role_id = roles.id
JOIN employee_salary ON roles_employee.employee_id = employee_salary.employee_id
JOIN salary ON employee_salary.salary_id = salary.id
WHERE role_name LIKE "%Developer%"

--  29. Вывести имена, должности и ЗП всех специалистов по возрастанию

SELECT employee_name, role_name, monthly_salary
from employees e 
full outer join roles_employee re on e.id = re.employee_id 
left join roles r on re.role_id = r.id 
full outer join employee_salary es on e.id = es.employee_id 
left join salary s on es.salary_id = s.id 
order by monthly_salary asc;

--  30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300

SELECT employee_name, role_name, monthly_salary
from employees e 
full outer join roles_employee re on e.id = re.employee_id 
left join roles r on re.role_id = r.id 
full outer join employee_salary es on e.id = es.employee_id 
left join salary s on es.salary_id = s.id 
where monthly_salary between 1700 and 2300
order by monthly_salary asc;

--  31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300

SELECT employee_name, role_name, monthly_salary
from employees e 
full outer join roles_employee re on e.id = re.employee_id 
left join roles r on re.role_id = r.id 
full outer join employee_salary es on e.id = es.employee_id 
left join salary s on es.salary_id = s.id 
where monthly_salary < 2300
order by monthly_salary asc;

--  32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000

SELECT employee_name, role_name, monthly_salary
from employees e 
full outer join roles_employee re on e.id = re.employee_id 
left join roles r on re.role_id = r.id 
full outer join employee_salary es on e.id = es.employee_id 
left join salary s on es.salary_id = s.id 
where monthly_salary in (1100, 1500, 2000)
order by monthly_salary asc;




