Delimiter $$
drop procedure if exists sal_cal $$
create procedure sal_cal(in_empid int)

	Begin 

	declare p_basic int(10);

	select basic into p_basic
	from emp_salary
	where employi_no=in_empid;

	update emp_salary 
		
		set HRA=0.05*p_basic,DA=0.7*p_basic,
		
		gross_salary=p_basic+HRA+DA,
		
		net_salary=gross_salary-total_deducation
		
		where employi_no=in_empid;

	END $$
Delimiter ;