Delimiter $$
drop function if exists fun_add $$
create function fun_add(num1 int(2), num2 int (2)) returns int(3)
	Begin
	declare sum1 int(3);
	set sum1=num1+num2;
	return(sum1);
	END $$
Delimiter ;



Delimiter $$
drop procedure if exists fun_calladd $$
create procedure fun_calladd(num1 int(2),num2 int(2))
	Begin
	declare result int(3) default 0;
	set result =fun_add(num1,num2);
	select result;
	END $$
Delimiter ;