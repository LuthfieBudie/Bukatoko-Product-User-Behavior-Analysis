create table studyQ2
select
	event_id,
    user_id,
    session_id,
    event_type,
    event_timestamp,
    product_id,
    country,
    device,
    channel
from study
WHERE event_timestamp BETWEEN '2025-04-01' AND '2025-06-30';

select * from studyq2;