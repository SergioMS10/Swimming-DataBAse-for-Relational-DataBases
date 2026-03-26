-- PURPOSE:
-- This query returns the best (fastest) times in the 50 Free event for the male swimmers
-- Coaches can use this information to identify the best lineups for the 200free relay,

SELECT
    p.swimmer_name,
    s.gender,
    p.event_name,
    p.time
FROM performances p
JOIN swimmers s
ON p.swimmer_name = s.swimmer_name
WHERE p.event_name = '50 Free'
  AND s.gender = 'M'
ORDER BY p.time;