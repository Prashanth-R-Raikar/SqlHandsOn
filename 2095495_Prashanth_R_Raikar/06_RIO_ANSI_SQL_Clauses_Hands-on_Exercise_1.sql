
select start_date, count(*) as total_no_of_associate_joined from associate_status group by start_date;

select start_date, count(*) as number_of_associates from associate_status where Trainer_Id = 'F001' group by start_date;

select start_date, count(*) as number_of_associates from associate_status group by start_date having count(*)>2;

select * from module_info order by Module_Duration;

select ainfo.associate_name, minfo.module_id, minfo.module_name, minfo.module_fees from associate_status as astatus
inner join associate_info as ainfo on ainfo.Associate_Id = astatus.Associate_Id
inner join module_info as minfo on minfo.Module_Id = astatus.module_Id
order by minfo.module_fees desc;