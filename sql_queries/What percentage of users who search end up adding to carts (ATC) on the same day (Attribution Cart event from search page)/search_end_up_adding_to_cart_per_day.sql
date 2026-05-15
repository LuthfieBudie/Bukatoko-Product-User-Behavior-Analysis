create table search_end_up_adding_to_cart_per_day as
select DATE(s.event_timestamp) AS event_date,
COUNT(DISTINCT s.user_id) AS total_users_searching,
COUNT(DISTINCT atc.user_id) AS total_users_atc,
ROUND((COUNT(DISTINCT atc.user_id) / COUNT(DISTINCT s.user_id)) * 100, 2) AS conversion_rate
from study s
LEFT JOIN study atc ON s.user_id = atc.user_id
    AND DATE(s.event_timestamp) = DATE(atc.event_timestamp)
    AND atc.event_type = 'add_to_cart'
    AND atc.event_timestamp > s.event_timestamp
WHERE 
    s.event_type = 'search'
GROUP BY 
    event_date
ORDER BY 
    event_date DESC;

select * from search_end_up_adding_to_cart_per_day;