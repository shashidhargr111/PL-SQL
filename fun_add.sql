delimiter $$
drop functon if exists fun_add $$
create function fun_add (num1 int(2),num2 int (2)) returns int(3)
	begin
	declare sum1 int(3);
	set sum1=num1+num2;
	return (sum1);
	end $$
	delimiter;
	