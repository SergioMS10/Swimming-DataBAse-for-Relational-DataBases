-- PURPOSE:
-- This query lists all swimmers who are Seniors, meaning they will graduate
-- at the end of the academic year. Coaches can use this information to plan
-- next season's roster and identify recruitment needs.
select
    swimmer_name
from
    public.swimmers
where class = 'SR'
order by swimmer_name;