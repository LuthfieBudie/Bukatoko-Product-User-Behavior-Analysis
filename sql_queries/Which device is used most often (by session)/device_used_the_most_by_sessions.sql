create table device_used_the_most_by_sessions as
select device, count(distinct user_id) as by_sessions
from study
group by device
order by by_sessions desc;

select * from device_used_the_most_by_sessions;