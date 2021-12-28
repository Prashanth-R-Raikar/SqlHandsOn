alter table student_info modify reg_number varchar(20) primary key;
alter table student_info modify student_name varchar(30) not null;
alter table student_info modify branch varchar(20);
alter table student_info modify Contact_Number varchar(20);

alter table subject_master modify subject_code varchar(20) primary key; 

alter table subject_master modify subject_name varchar(30) not null;

alter table subject_master modify weightage smallint not null; 

alter table student_marks modify Semester smallint not null;

alter table student_marks modify marks smallint default 0;
alter table student_marks modify Reg_Number varchar(20);
alter table student_marks modify subject_code varchar(20);

alter table student_marks add foreign key(reg_number) references student_info(reg_number); 

alter table student_marks add foreign key(subject_code) references subject_master(subject_code);

alter table student_result modify semester smallint not null; 

alter table student_result modify gpa decimal(5,3) not null;

alter table student_result modify Is_Eligible_Scholarship varchar(3) default 'yes';

alter table subject_master add constraint con1_ unique(subject_name); 

alter table student_info add constraint con2_ unique(contact_number);

alter table student_info add check(datediff(date_of_joining, date_of_birth)>0);

alter table student_marks add check(marks <= 100);

alter table student_result add check(gpa <= 10);

alter table student_result add check(Is_Eligible_Scholarship in ('y','n'));