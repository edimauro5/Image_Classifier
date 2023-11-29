drop table if exists account cascade;

create table account(
	id serial primary key,
	nome varchar(60) not null,
	cognome varchar(60) not null,
	email varchar(100) not null unique,
	username varchar(20) not null unique,
	password varchar(255) not null
);

select * from account;