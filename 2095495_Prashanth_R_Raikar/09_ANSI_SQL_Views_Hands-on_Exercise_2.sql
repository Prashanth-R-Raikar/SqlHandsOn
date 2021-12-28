use ipm;
create view   STUDENT_GPA_emp_id as
select si.student_name, sr.reg_number, sr.semester, sr.GPA from student_result as sr
join student_info as si on si.reg_number = sr.reg_number; 

select * from STUDENT_GPA_emp_id where gpa>5;

create or replace view STUDENT_AVERAGE_GPA_emp_id as select si.student_name, sr.reg_number,
avg(gpa) 'average_gpa' from student_result as sr
join student_info as si on si.reg_number = sr.Reg_Number group by reg_number;
select * from student_average_gpa_emp_id;

SELECT * from student_average_gpa_emp_id where average_gpa>7;

create index index_1 on student_marks(semester);
alter table student_marks drop index index_1 ;

 create unique index index_2 on student_info(email_id);