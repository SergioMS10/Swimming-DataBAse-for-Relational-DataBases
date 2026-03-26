create table swimmers
(
    swimmer_name text not null
        constraint swimmers_pk
            primary key,
    team         text
        constraint team_fk
            references teams,
    hometown     text,
    gender       text,
    class        text
);

