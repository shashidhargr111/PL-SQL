Delimiter //
drop trigger if exists upd_check ;
create trigger upd_check before update on works for each row 
	Begin 
	declare o int(10);
	declare n int(10);

	select OLD.salary, NEW.salary into o,n 
	from works
	where employee_no=NEW.employee_no;
	insert into up_sal values(o,n);
	end ;//
Delimiter ;