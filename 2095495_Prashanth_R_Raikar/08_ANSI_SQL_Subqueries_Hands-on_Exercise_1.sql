use ipm;
select distinct trainer_id from associate_status
 where Associate_Id in (select Associate_Id from associate_info where Associate_Name like '%i%'); 

select distinct trainer_id from associate_status
 where Associate_Id in (select Associate_Id from associate_info where Associate_Name not like '%i%'); 

select trainer_id, trainer_rating from trainer_feedback 
where trainer_id in (select trainer_id from associate_status where module_Id = 'J2EE'); 

CREATE TABLE Trainer_Info_Sabbatical
(Trainer_Id VARCHAR(20) PRIMARY KEY,
Salutation VARCHAR(7) NOT NULL,
Trainer_Name VARCHAR(30) NOT NULL,
Trainer_Location VARCHAR(30) NOT NULL,
Trainer_Track VARCHAR(15) NOT NULL,
Trainer_Qualification VARCHAR(100) NOT NULL,
Trainer_Experiance int ,
Trainer_Email VARCHAR(100) NOT NULL,
Trainer_Password VARCHAR(20) NOT NULL
);

insert into Trainer_Info_Sabbatical values 
('F011','Mr.','Shyju K', 'Kochi','Java','Bachelor of Technology',9,'shyju@alliance.com','fac11@123');
insert into Trainer_Info_Sabbatical values
('F012','Mr.','Raviraj Kumar', 'Kochi','Java','Bachelor of Technology',8,'raviarajkumar@alliance.com','fac12@123');
insert into Trainer_Info_Sabbatical values
('F013','Mr.','Suresh Babu N', 'Mumbai','Testing','Bachelor of Technology',19,'sureshbabun@alliance.com','fac13@123');

insert into trainer_info select * from trainer_info_sabbatical; 

update trainer_info set trainer_location = 'kochi'
 where trainer_id in (select trainer_id from trainer_info_sabbatical where Trainer_Experiance >10); 

delete from trainer_info where trainer_id 
in (select trainer_id from trainer_info_sabbatical where Trainer_Experiance > 12);

select * from trainer_info_sabbatical as t1 where t1.trainer_id in 
(select trainer_id from trainer_info as t2 where t1.Trainer_Id = t2.trainer_id);