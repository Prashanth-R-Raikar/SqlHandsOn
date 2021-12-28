use ipm;

select si.student_name,marks, sm.Reg_Number, subject_code from student_marks as sm
inner join student_info as si on si.reg_number = sm.Reg_Number
where sm.Reg_Number in (select reg_number from student_marks group by subject_code having max(marks));

select si.reg_number , si.student_name, sm.marks from student_marks as sm
inner join student_info as si on si.reg_number = sm.reg_number
where sm.Reg_Number in (select reg_number from student_marks group by subject_code having max(marks)) and 
subject_code = 'EI05IP'; 

select student_name, reg_number from student_info 
where reg_number = (select reg_number from student_marks where subject_code = 'EI05IP'
 order by marks desc limit 1 offset 1);

select reg_number from student_marks where marks > 
(select avg(marks) from student_marks where subject_code = 'EI05IP');