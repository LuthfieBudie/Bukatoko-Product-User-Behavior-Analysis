create table case_study_monthly_active_users as
select channel, 
count(distinct case when month(event_timestamp) = 1 then user_id end) as 'januari',
count(distinct case when month(event_timestamp) = 2 then user_id end) as 'februari',
count(distinct case when month(event_timestamp) = 3 then user_id end) as 'maret',
count(distinct case when month(event_timestamp) = 4 then user_id end) as 'april',
count(distinct case when month(event_timestamp) = 5 then user_id end) as 'mei',
count(distinct case when month(event_timestamp) = 6 then user_id end) as 'juni',
count(distinct case when month(event_timestamp) = 7 then user_id end) as 'juli',
count(distinct case when month(event_timestamp) = 8 then user_id end) as 'agustus',
count(distinct case when month(event_timestamp) = 9 then user_id end) as 'september',
count(distinct case when month(event_timestamp) = 10 then user_id end) as 'oktober',
count(distinct case when month(event_timestamp) = 11 then user_id end) as 'november',
count(distinct case when month(event_timestamp) = 12 then user_id end) as 'desember'
from study
group by channel;

select * from case_study_monthly_active_users;