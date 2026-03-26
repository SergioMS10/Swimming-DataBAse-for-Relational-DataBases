create table meets
(
    meet_name    text not null
        constraint meets_pk
            primary key,
    type         text,
    place        text,
    initial_date text,
    end_date     text
);

