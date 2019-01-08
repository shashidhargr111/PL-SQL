Delimiter $$
drop procedure if exists tax_cal $$
create procedure tax_cal(in_empid int)

	Begin 
	declare tax double(10,2);
	declare name varchar(20);
	declare net double(10,2);

	select emp_name,net_salary into name, net 
	from emp_salary,emp
	where emp.emp_no=emp_salary.employi_no and emp.emp_no=in_empid;
	
	set net=net*12;
	if net>190000 then
	set net=net-190000,
	tax=0.2*net;
	end if;
	select name,tax;

	END $$
Delimiter ;