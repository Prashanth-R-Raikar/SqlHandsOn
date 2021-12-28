use ipm;

select upper(student_name), upper(branch) from student_info;

select lower(subject_code), lower(subject_name), lower(weightage) from subject_master;

select reg_number, date_format(date_of_birth,'%Y/%m/%d') from student_info;

select reg_number, date_format(date_of_birth, '%M %d, %Y') from student_info;

select student_name, (period_diff(extract(year_month from current_date), extract(year_month from date_of_birth))/12)
 as age , contact_number,email_id from student_info;

select reg_number, student_name, 
(select avg(marks) from student_marks as smarks where smarks.Reg_Number = sinfo.Reg_Number) 
from student_info as sinfo;

select smarks.Reg_Number, sinfo.student_name, max(marks) from student_info as sinfo
inner join student_marks as smarks on smarks.Reg_Number = sinfo.reg_number
group by smarks.subject_code;

select student_name , max(marks) from student_info as sinfo
inner join student_marks as smarks on sinfo.reg_number = smarks.reg_number
where subject_code = 'EI05IP';

select semester, avg(gpa) from student_result group by semester;

select student_name, reg_number,branch, Contact_Number,Date_of_Birth,Date_of_Joining,Address,
case when Email_id is null then 'no valid email address'
else Email_id end as email_id   from student_info;

select student_name, case when branch = 'EEE' then 'Electrical and Electronic Engineering'
                     when branch = 'ECE' then 'Electronics and Communication Engineering'
                     else branch end as branch, sinfo.reg_number,
sresult.semester, sresult.gpa
from student_info as sinfo
inner join student_result as sresult on sresult.Reg_Number = sinfo.reg_number;