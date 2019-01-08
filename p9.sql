Delimiter //
drop trigger if exists upd_check ;
create trigger upd_check before update on emp for each row 
	Begin 
	declare o varchar(10);
	declare n varchar(10);

	select OLD.emp_name, NEW.emp_name into o,n 
	from emp
	where emp_no=NEW.emp_no;
	insert into up_sal values(o,n);
	end ;//
Delimiter ;