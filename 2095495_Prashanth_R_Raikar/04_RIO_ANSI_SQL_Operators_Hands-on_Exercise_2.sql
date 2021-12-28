select * from student_info where email_id is not null;

select marks, reg_number from student_marks where marks>50;

select sinfo.reg_number, sinfo.student_name, smaster.subject_name, smarks.Semester, smarks.marks from student_marks as smarks
inner join student_info as sinfo on sinfo.reg_number = smarks.Reg_Number
inner join subject_master as smaster on smaster.subject_code = smarks.subject_code;

select sinfo.student_name, sinfo.reg_number,smaster.subject_code, smaster.subject_name,
smarks.marks,smarks.semester from student_marks as smarks
inner join student_info as sinfo on sinfo.reg_number = smarks.reg_number 
inner join subject_master as smaster on smaster.subject_code = smarks.subject_code
where smarks.marks >50; 

select reg_number, gpa,Is_Eligible_Scholarship from student_result
order by Is_Eligible_Scholarship desc;

select sinfo.reg_number, sinfo.student_name, smarks.marks,
 (smaster.weightage* smarks.marks/100) as weighted_marks from student_marks as smarks
inner join subject_master as smaster on smarks.subject_code = smaster.subject_code
inner join student_info as sinfo on sinfo.reg_number = smarks.Reg_Number ;

select student_name from student_info where student_name like 'm%';

select sinfo.student_name, sinfo.reg_number, smarks.marks from student_info as sinfo
inner join student_marks as smarks on smarks.Reg_Number = sinfo.reg_number
where sinfo.Email_id is not null;

select sinfo.student_name, sinfo.reg_number, smarks.marks from student_marks as smarks
inner join student_info as sinfo on sinfo.reg_number = smarks.Reg_Number
where smarks.marks >= 60 and smarks.marks <= 100;

select sinfo.student_name, sinfo.reg_number, smarks.marks from student_info as sinfo
inner join student_marks as smarks on sinfo.reg_number = smarks.Reg_Number
where student_name not like 'j%';

select sinfo.student_name, sinfo.reg_number, smarks.marks from student_marks as smarks
inner join student_info as sinfo on sinfo.reg_number = smarks.Reg_Number
where smarks.subject_code in ('EE01DCF', 'EC02MUP');

select student_name from student_info where student_name like '%on';