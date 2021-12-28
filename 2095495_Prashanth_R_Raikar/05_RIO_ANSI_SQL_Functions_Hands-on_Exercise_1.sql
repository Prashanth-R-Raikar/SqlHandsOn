use ipm;

alter table module_info add column module_fees decimal(10,4);
set sql_safe_updates = 0;
update module_info set module_fees = cast(module_duration as decimal) * 5.54321 where module_duration != 0; 
select module_name , round(module_fees,2) from module_info ;

select * from module_info ;
select module_id, module_name from module_info where substring(module_name,1,1) = binary upper(substring(module_name,1,1));

select module_id,start_date,datediff(current_date(), start_date) from associate_status;

select concat_ws('><',concat_ws('<','',module_name),concat_ws('>',module_id,'')) as concatenated 
from module_info ;

select upper(module_name) from module_info;

select substring(module_name,1,3) as module_name from module_info;

select sum(ifnull(module_fees,0))/count(*) as average from module_info;

select * from trainer_info;
select convert(trainer_id+100000,unsigned) as display from trainer_info;

select concat('The Base Fees Amount for the module name ',convert(module_name, char),' is ',
convert(module_fees, char)) as fees from module_info;

select count(*) as total_no_of_record from module_info;

select sum(ifnull(module_fees,0)) from module_info;

select min(ifnull(module_fees,0)) as minimum , max(module_fees) as maximum from module_info;