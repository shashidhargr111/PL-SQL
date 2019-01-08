Delimiter $$
drop procedure if exists emp $$
create procedure emp()
	Begin

	declare table_not_found condition for 1452;
	declare not_tab condition for 1136;
	declare no_match  condition for 1450;


	declare continue handler for not_tab select 'no such value present in main table ';
	declare continue handler for table_not_found select 'abc not there';
	declare EXIT handler for no_match select 'U are inserting either less/more fields ';

	insert into works(employee_no)values (35);
	insert into abc values(5,'abc','sd');
	select *from abc;
	
	END $$

Delimiter ;