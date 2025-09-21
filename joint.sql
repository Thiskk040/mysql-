use company;
-- Display full employee name and depaetment name of all employee
select fname, minit, lname, dname 
from employee join department
on employee.dno = department.dnumber;


-- 1.1
select e.fname, e.minit, e.lname , d.dname 
from employee e join department d
on e.dno = d.dnumber
where d.dname in ('Hardware','Research');