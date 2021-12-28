use ipm;
create view view_1 as select associate_id, trainer_id, batch_id from associate_status;
select * from view_1;

create view view_2 as select associate_id, trainer_id, batch_id from associate_status where batch_id = 'b004';
select * from view_2; 

drop view view_2;

create index index_1 on associate_info(associate_name);

create unique index index_2 on associate_info(associate_name);

alter table associate_info drop index index_2;

create view view_3 as select associate_id , trainer_id, batch_id from associate_status with cascaded check option;
select * from view_3;

create or replace view view_4 as select associate_id, trainer_id, batch_id from associate_status with local check option;
select * from view_4;