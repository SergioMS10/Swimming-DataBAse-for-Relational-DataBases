
-- PURPOSE:
-- Inserts a brand-new swimmer into the database
-- use this when recruiting new athletes or adding freshmen to the roster

-- INSTRUCTIONS:
-- To reuse this script for a different swimmer, change the VALUES below:
-- 1) swimmer_name → replace with the new student's name
-- 2) class        → FR, SO, JR or SR
-- 3) gender      → M / F
-- 4) hometown    → City or origin
-- 5) team        → Must exist in the team table

INSERT INTO public.swimmers (swimmer_name, class, gender, hometown, team)
VALUES ('Gafo, Pelayo', 'SO', 'M', 'Madrid, Spain', 'Loyola University New Orleans');

