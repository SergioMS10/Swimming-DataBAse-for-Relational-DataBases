
-- PURPOSE:
-- Inserts a new performance. If the meet does not exist in the meets table,
-- it automatically inserts it using all required columns.

CREATE OR REPLACE PROCEDURE add_performance_entry(
    p_swimmer_name TEXT,
    p_event_name   TEXT,
    p_time         VARCHAR(8),
    p_meet_name    TEXT,
    p_type         TEXT,
    p_place        TEXT,
    p_initial_date DATE,
    p_end_date     DATE
)
LANGUAGE plpgsql
AS $$
BEGIN
    IF NOT EXISTS (
        SELECT 1 FROM meets
        WHERE meet_name = p_meet_name
    ) THEN
        INSERT INTO meets (meet_name, type, place, initial_date, end_date)
        VALUES (p_meet_name, p_type, p_place, p_initial_date, p_end_date);
    END IF;

    INSERT INTO performances (swimmer_name, event_name, time, meet_name)
    VALUES (p_swimmer_name, p_event_name, p_time, p_meet_name);

END;
$$;

CALL add_performance_entry(
    'Martinez, Sergio',
    '500 Free',
    '4:38.21',
    'Tiger Invitational',
    'Mid Season',
    'Reily Student Recreation Center, New Orleans',
    '2025-12-15',
    '2025-12-16'
);

