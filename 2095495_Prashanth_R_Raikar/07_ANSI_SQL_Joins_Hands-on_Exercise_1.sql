use ipm;

select trainer_id,batch_id from trainer_infor as ti cross join batch_info bi;

select * from associate_status as ass inner join batch_info as bi on bi.Batch_Id = ass.Batch_Id;

select ass.associate_id , ti.trainer_id from associate_status as ass
right outer join trainer_infor as ti on ass.trainer_Id = ti.trainer_id;

select ass.associate_id, ti.trainer_id from trainer_infor as ti
left outer join associate_status as ass on ass.Trainer_Id = ti.trainer_id;

alter table associate_status modify Trainer_Id varchar(20);

insert into associate_status(associate_id, module_id, batch_id) values('A007','EM004', 'B001');
select ass.associate_id, ti.trainer_id from trainer_infor as ti
left outer join associate_status as ass on ass.Trainer_Id = ti.trainer_id
union 
select ass.associate_id, ti.trainer_id from trainer_infor as ti
right outer join associate_status as ass on ass.Trainer_Id = ti.trainer_id;

delete from associate_status where Trainer_Id is null;
alter table associate_status modify Trainer_Id varchar(20) not null;