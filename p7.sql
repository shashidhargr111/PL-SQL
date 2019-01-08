Delimiter $$
drop function if exists deppt_fun $$
create function deppt_fun(dep int)
	returns int 
	Begin
	declare tot_sal int(10) default 0;

	select sum(salary) into tot_sal 
	from works,department
	where employee_no=empee_no;

	return(tot_sal);
	END $$
Delimiter ;


Delimiter $$
drop procedure if exists deppt_test $$
create procedure deppt_test(dnum int)
	Begin 
	declare tot1 int(10);
	set tot1=deppt_fun(dnum);
	select tot1;
	END $$
Delimiter ;