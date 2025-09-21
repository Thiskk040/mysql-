use company;
select fname, bdate 
from employee



-- 1
where (bdate like '1966%' or bdate like '1968%');

-- 2
select * from employee
where salary in (53000,62500);

-- 3 detected null 
select fname , superssn
from employee
where superssn is null;


-- 4 detected is not null 
select fname , superssn
from employee
where superssn is  not null;


-- 5 
select fname , length(fname) as fname_length , upper(fname) as Upper_name , lower(fname) as Lower_name
from employee;


-- 6
select bdate, dayname(bdate),year(bdate) as year_bdate ,month(bdate) as month_bdate
from employee;


-- 7
use company;
select fname, bdate 
from employee
where year(bdate) IN ('1966','1968');

-- 8 merge column in new column as full_name 
select fname , minit , lname , concat(fname,' ',minit,' ',lname) as full_name
from employee;

-- 9 substring if ++ lft --> right 
select fname , substr(fname,1,3) as subcol
from employee;

-- 10 substring  if - right --> lft
select fname , substr(fname,-1,3) as subcol
from employee;


-- 11 substring
select fname
from employee
where (fname like 'J%'
or fname like 'E%'
or fname like 'B%');


SELECT fname
FROM employee
WHERE substr(fname, 1, 1) IN ('J', 'E', 'B');


select *, count(*)
from employee;



