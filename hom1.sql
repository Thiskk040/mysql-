use dreamhome;
select branchNo,street 
from branch;



select count(propertyNo) as mycount
from propertyforrent
where rent > 350;


-- 6.1 
select branchNo, Count(staffNo) as myCount , sum(salary) as mysum
from staff
group by branchNo
having count(staffNo) > 1
order by branchNo;