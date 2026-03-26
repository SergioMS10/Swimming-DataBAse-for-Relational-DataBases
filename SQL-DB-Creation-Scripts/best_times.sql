create table best_times
(
    swimmer_name text
        constraint swimmer_fk
            references swimmers,
    event_name   text
        constraint event_fk
            references events,
    time         text
);

