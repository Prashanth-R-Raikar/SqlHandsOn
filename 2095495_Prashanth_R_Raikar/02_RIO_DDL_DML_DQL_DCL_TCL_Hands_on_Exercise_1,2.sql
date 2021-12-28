use ipm;
create table Module_Info(
Module_Id varchar(20),
Module_Name varchar(40),
Module_Duration int
);
insert into Module_info values('O10SQL','Oracle 10g SQL' ,16),
('O10PLSQL','Oracle 10g PL/ SQL ',16),
('J2SE','Core Java SE 1.6',288),
('J2EE','Advanced Java EE 1.6',80),
('JAVAFX','JavaFX 2.1',80),
('DOTNT4','.Net Framework 4.0' ,50),
('SQL2008','MS SQl Server 2008',120),
('MSBI08','MS BI Studio 2008',158),
('SHRPNT','MS Share Point' ,80),
('ANDRD4','Android 4.0',200),
('EM001','Instructor',0),
('EM002','Course Material',0),
('EM003','Learning Effectiveness',0),
('EM004','Environment',0),
('EM005','Job Impact',0),
('TM001','Attendees',0),
('TM002','Course Material',0),
('TM003','Environment',0);
select * from module_info;

create table Questions(
question_Id varchar(20),
Module_Id varchar(40),
question_Text varchar(900)
);

insert into Questions values('Q001','EM001','Instructor knowledgeable and able to handle all your queries'),

('Q002','EM001','All the topics in a particular course handled by the trainer without any gaps or slippages'),

('Q003','EM002','The course materials presentation, handson, etc. refered during the training are relevant and useful.'),

('Q004','EM002','The Hands on session adequate enough to grasp the understanding of the topic.'),

('Q005','EM002','The reference materials suggested for each module are adequate.'),

('Q006','EM003','Knowledge and skills presented in this training are applicatible at your work'),

('Q007','EM003','This training increases my proficiency level'),

('Q008','EM004','The physical environment e.g. classroom space, air-conditioning was conducive to learning.'),

('Q009','EM004','The software/hardware environment provided was sufficient for the purpose of the training.'),

('Q010','EM005','This training will improve your job performance.'),

('Q011','EM005','This training align with the business priorities and goals.'),

('Q012','TM001','Participants were receptive and had attitude towards learning.'),

('Q013','TM001','All participats gained the knowledge and the practical skills after this training.'),

('Q014','TM002','The course materials presentation, handson, etc. available for the session covers the entire objectives of the course.'),

('Q015','TM002','Complexity of the course is adequate for the particpate level.'),

('Q016','TM002','Case study and practical demos helpful in understanding of the topic'),

('Q017','TM003','The physical environment e.g. classroom space, air-conditioning was conducive to learning.'),

('Q018','TM003','The software/hardware environment provided was adequate for the purpose of the training.');
select *  from questions;

create table Associate_Status(
Associate_Id varchar(20),
Module_Id varchar(20),
Start_Date varchar(20),
End_Date varchar(20),
AFeedbackGiven varchar(20),
TFeedbackGiven varchar(20)
);
select * from Associate_Status; 

insert into associate_status values('A001','O10SQL','B001','F001','2000-12-15','2000-12-25'),

('A002','O10SQL','B001','F001','2000-12-15','2000-12-25'),

('A003','O10SQL','B001','F001','2000-12-15','2000-12-25'),

('A001','O10PLSQL','B002','F002','2001-2-1','2001-2-12'),

('A002','O10PLSQL','B002','F002','2001-2-1','2001-2-12'),

('A003','O10PLSQL','B002','F002','2001-2-1','2001-2-12'),

('A001','J2SE','B003','F003','2002-8-20','2002-10-25'),

('A002','J2SE','B003','F003','2002-8-20','2002-10-25'),

('A001','J2EE','B004','F004','2005-12-1','2005-12-25');

select * from Student_Info;
insert into Student_Info values ('MC101301', 'James','MCA', '9714589787','1984-01-12','2010-07-08','South Block','james@yahoo.co.in'),
('BEC111402', 'Manio, '', '8912457875' , '1983-02-23', '2011', "8/12 ParkView Sieera', 'manioma@gmail.com'),
('BEC111402', 'Manio', '', '8912457875', '23-02-1983', '25-06-2011' , '8/12,ParkView','Sieera manioma@gmail.com'),
('MB111305', 'Paulson', 'MBA', '8547986123', '13-12-1984', '08-08-2010', 'Lakeview,NJ', 'paul.son@rediffmail.com') ;

create table Batch_Info(
Batch_Id varchar(20),
Batch_Owner varchar(30),
Batch_BU_Name varchar(30)
);
select * from Batch_Info;

insert into batch_info values('B001','MRS.SWATI ROY','MSP'),

('B002','MRS.ARURNA K','HEALTHCARE'),

('B003','MR.RAJESH KRISHNAN','LIFE SCIENCES'),

('B004','MR.SACHIN SHETTY','BFS'),

('B005','MR.RAMESH PATEL','COMMUNICATIONS'),

('B006','MRS.SUSAN CHERIAN','RETAIL & HOSPITALITY'),

('B007','MRS.SAMPADA JAIN','MSP'),

('B008','MRS.KAVITA REGE','BPO'),

('B009','MR.RAVI SEJPAL','MSP');

use ipm;
create table Student_Info(
Reg_No varchar(10),
Student_Name varchar(30),
Branch varchar(20),
Contact_No varchar(10),
Date_of_Birth Date,
Date_of_Joinin Date,
Address varchar(300),
Email varchar(300)
);
select * from Student_Info;

create table Subject_Master(
Subject_Code varchar(30),
Subject_Name varchar(30),
Weightage varchar(3)
);
select * from subject_master;

insert into subject_master values('EE01DCF', 'DCF', '30'),
('EC02MUP', 'Microprocessor', '40'),
('MC06DIP', 'DigitalProcessing', '30'),
('MB03MAR', 'Marketing Techniques', '20'),
('EI05IP', 'Instrumentation Precision', '40'),
('PSC02DS', 'Data Structure', '40');

create table Student_Marks(
Reg_No varchar(10),
Subject_Code varchar(10),
Semester varchar(3),
Marks varchar(3)
);
select * from Student_Marks;
use ipm;
alter table associate_status
add column Batch_Id varchar(20),
add column Trainer_Id varchar(20);
select * from associate_status;

alter table associate_status
modify column Start_Date date,
modify column End_Date date;
select * from associate_status;