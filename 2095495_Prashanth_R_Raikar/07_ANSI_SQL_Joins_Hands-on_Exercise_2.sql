use ipm;

select student_name, subject_code, marks from student_marks as smarks
inner join student_info as sinfo on sinfo.reg_number = smarks.Reg_Number;

select student_name, subject_code,marks from student_marks as smarks
inner join student_info as sinfo on sinfo.reg_number = smarks.reg_number
 where smarks.Reg_Number not in (select Reg_Number from student_marks where marks<65) ;

select si.reg_number, student_name, gpa from student_info as si
inner join student_result as sr on sr.Reg_Number = si.reg_number
where gpa = (select max(gpa) from student_result);

Create table Backup_Student_Info(
Reg_Number  Varchar(20) Primary Key ,
Student_Name  Varchar(30) not null,
Branch  Varchar(30),
Contact_Number  Varchar(20),
Date_of_Birth Date  not null,
Date_of_Joining Date  Default(current_date),
Address Varchar(250),
Email_id Varchar(250),
foreign key (reg_number) references student_info(reg_number));

insert into backup_student_info select * from student_info;

insert into student_info values('MC101305' ,'Jamie', 'BCA' ,'9714589788', '1983-1-12', '2011-7-08',
	   'No 7,South Block Nivea', 'jamie.bca@yahoo.com'),
('BEC111408' ,'Marie', 'ECE', '8912457888', '1983-2-27', '2011-8-25', 
	   '8/12,manyata Park View,Sieera', 'marie@gmail.com');

select * from student_info as sinfo 
left outer join backup_student_info as bup on bup.Reg_Number = sinfo.reg_number;

select * from backup_student_info as bup
right outer join student_info as sinfo on sinfo.reg_number = bup.Reg_Number;