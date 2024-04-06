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

create table if not exists citadel.client (
    id                            bigserial primary key,
    client_id                     varchar(255)  not null,
    client_name                   varchar(255)  not null,
    client_secret                 varchar(255),
    client_id_issued_at           timestamp     not null,
    client_secret_expires_at      timestamp,
    client_authentication_methods varchar(1000) not null,
    authorization_grant_types     varchar(1000) not null,
    scopes                        varchar(1000) not null,
    client_settings               varchar(2000) not null,
    token_settings                varchar(2000) not null,
    redirect_uris                 varchar(1000),
    post_logout_redirect_uris     varchar(1000)
);
