create table person
(
id integer not null,
name varchar(255) not null,
location varchar(255),
dob timestamp,
primary key(id)
);

insert into person values (10001,'Ajay','Punjab',current_timestamp);
insert into person values (10002,'Sumit','Delhi',current_timestamp);
insert into person values (10003,'Peter','NY',current_timestamp);
insert into person values (10004,'John','Pune',current_timestamp);