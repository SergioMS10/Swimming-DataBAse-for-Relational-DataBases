create table injury_history
(
    inujry_id    text,
    swimmer_name text
        constraint swimmer_fk
            references swimmers,
    injury_type  text,
    start_date   text,
    severity     text,
    notes        text
);

