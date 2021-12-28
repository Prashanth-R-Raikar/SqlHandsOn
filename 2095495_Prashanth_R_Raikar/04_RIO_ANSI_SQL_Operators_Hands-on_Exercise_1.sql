use ipm;

select * from trainer_info where trainer_email is null;

select trainer_id, trainer_name, trainer_track, trainer_location from trainer_info where Trainer_Experiance>4;

select * from module_info where Module_Duration>200;

select trainer_id, trainer_name from trainer_info 
where trainer_qualification != 'Bachelor of Technology';

select * from module_info where Module_Duration >= 200 and Module_Duration <= 300;

select trainer_id , trainer_name from trainer_info where trainer_name like 'M%';

select trainer_id, trainer_name from trainer_info where substring_index(trainer_name," ",1) like "%o%";

select module_name from module_info where Module_Name is not null;