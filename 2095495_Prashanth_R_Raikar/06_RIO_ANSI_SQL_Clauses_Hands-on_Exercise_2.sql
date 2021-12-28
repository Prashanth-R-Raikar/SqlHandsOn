select sinfor.student_name, sinfor.reg_number, sresult.gpa from student_infor as sinfor
inner join student_result as sresult on sresult.Reg_Number = sinfor.reg_number
 order by sresult.gpa desc;

select * from student_infor order by student_name asc;

select * from student_infor order by datediff(date_of_joining, date_of_birth) asc;

select sinfor.reg_number, sinfor.student_name, semester, gpa from student_infor as sinfor
inner join student_result as sresult on sresult.Reg_Number = sinfor.reg_number
order by sresult.gpa desc;

select reg_number, gpa from student_result
order by Is_Eligible_Scholarship desc;

select reg_number, gpa from student_result order by Is_Eligible_Scholarship desc;

select * from student_infor as sinfor
inner join student_result as sresult on sresult.reg_number = sinfor.reg_number
where sresult.gpa in (select  max(gpa) from student_result group by semester);

select * from student_infor as sinfor
inner join student_result as sresult on sresult.reg_number = sinfor.reg_number
where sresult.gpa in (select  min(gpa) from student_result group by semester);