drop table if exists restaurant_menu;
drop table if exists reservation;
drop table if exists client;
drop table if exists restaurant;
drop table if exists city;
drop table if exists menu;

create table client(
	client_id integer primary key auto_increment,
	name varchar(40) not null unique,
    phone varchar(20) not null unique,
    mail varchar(40) not null,
    password varchar(15) not null
);

create table menu(
	menu_id integer primary key auto_increment,
	name varchar(40)not null,
	price decimal(5,2)not null
);

create table city(
	city_id char(2) primary key, 
	name varchar(40) not null
);

insert into city (city_id, name) 
values ("RM","Rome"),
		("MI","Milan"),
        ("TO","Turin");
        
create table restaurant(
	restaurant_id integer primary key auto_increment,
	name varchar(40) not null,
	city_id char(2) not null,
	foreign key (city_id) references city (city_id) 
);

create table reservation(
	reservation_id integer primary key auto_increment,
	day timestamp not null, -- data/ora
	seats integer not null,
    client_id integer not null,
    menu_id integer not null,
    restaurant_id integer not null,
    foreign key (client_id) references client (client_id),
    foreign key (menu_id) references menu (menu_id),
    foreign key (restaurant_id) references restaurant (restaurant_id)
 );
 


select*
from city;



insert into restaurant(name,city_id) 
 values ("S&E Piazza di Spagna","RM");
	
/*
insert into restaurant (name, menu, city_id) values ("S&E Piazza del Popolo", "Menu 15")

select*
from client;
*/

