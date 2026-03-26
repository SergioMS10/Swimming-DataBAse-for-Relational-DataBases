create table performances
(
    swimmer_name     text
        constraint swimmers__fk
            references swimmers,
    event_name       text
        constraint event_name
            references events,
    meet_name        text
        constraint meet_fk
            references meets,
    time             text,
    position         text,
    strokes_per_lap  text,
    uw_kicks_per_lap text,
    breaths_per_lap  text
);

