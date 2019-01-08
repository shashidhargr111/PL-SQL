Delimiter $$

drop procedure if exists info_emp $$
create procedure info_emp(in_stud int)
	
	Begin
	
	select emp.emp_no,emp_name,joining_date,designatio
	from emp,works
	where emp.emp_no=works.employee_no and emp.emp_no=in_stud;
	
	END $$

Delimiter ;