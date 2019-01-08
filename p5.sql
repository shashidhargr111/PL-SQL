Delimiter $$
drop procedure if exists cur_ex $$
create procedure cur_ex(num int)
	Begin
	declare counter int(1) default 1;
	declare empno int(10);
	declare bas int(10);
	declare ptr1 cursor for

	select employi_no,basic 
	from emp_salary order by basic desc;

	open ptr1;
	up:loop 

	fetch ptr1 into empno,bas;
	select empno,bas;
	set counter=counter+1;
	if counter>num then

	leave up;
	end if;
	end loop up;
	close ptr1;
	end $$
Delimiter ;