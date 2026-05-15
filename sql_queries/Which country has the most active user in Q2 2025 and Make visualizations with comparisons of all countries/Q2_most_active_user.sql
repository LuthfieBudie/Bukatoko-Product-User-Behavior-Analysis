create table case_study_Q2 as
select country, count(distinct user_id) as total_user
from studyq2
group by country
order by total_user desc;

select * from case_study_Q2;