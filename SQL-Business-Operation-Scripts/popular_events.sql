
-- PURPOSE:
-- This report shows which events were swum the most during a specific competition.
-- Coaches use this information to understand meet structure, participation levels,
-- and event popularity within a single meet.

-- INSTRUCTIONS FOR REUSE:
-- To run this report for a different meet, CHANGE the meet_name value in the WHERE clause:
-- Example:
--   WHERE meet_name = ''Loyola New Orleans Vs. Life University'
-- Replace the current meet name with any valid name from your meets table.

SELECT
    event_name,
    COUNT(*) AS total_swims
FROM performances
WHERE meet_name = 'Loyola New Orleans Vs. Life University'
GROUP BY event_name
ORDER BY total_swims DESC;