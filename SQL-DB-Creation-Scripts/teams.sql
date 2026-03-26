create table teams
(
    team_name  text not null
        constraint teams_pk
            primary key,
    city       text,
    league     text,
    division   text,
    coach_name text
);

