-- PURPOSE:
-- Updates personal best times for all swimmers and all events.
-- If a performance time is faster than the time stored in personal bests,
-- the best_time is updated accordingly.

-- INSTRUCTIONS FOR REUSE:
-- You do not need to modify anything. Run this script after adding new
-- performance results. It will automatically update only the times that
-- are actually faster than the current personal bests.

UPDATE public.best_times bt
SET time = p.time
FROM performances p
WHERE bt.swimmer_name = p.swimmer_name
  AND bt.event_name = p.event_name
  AND p.time > bt.time;