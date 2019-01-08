Delimiter $$
drop procedure if exists tot_cal $$
create procedure tot_cal(in_stud int)
	Begin 
	declare s1 int(3);
	declare s2 int(3);
	declare s3 int(3);
	declare s4 int(3);

	select sub1,sub2,sub3,sub4 into s1,s2,s3,s4
	from student_contect
	where roll_num=in_stud;

	update student_contect
		set total=s1+s2+s3+s4,
		percentage=(s1+s2+s3+s4)/4
		where roll_num=in_stud;
	END $$
Delimiter ;
