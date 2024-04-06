create schema if not exists citadel;

create table if not exists citadel.users (
    id           bigserial primary key,
    username     varchar(255) unique not null,
    email        varchar(255) unique not null,
    phone_number varchar(255) unique not null,
    password     varchar(255)        not null,
    enabled      boolean             not null,
    created      timestamp           not null default now(),
    updated      timestamp           not null default now()
);
