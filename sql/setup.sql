drop table if exists restaurant_menu;
drop table if exists reservation;
drop table if exists client;
drop table if exists restaurant;
drop table if exists city;
drop table if exists menu;

create table client(
	client_id integer primary key auto_increment,
	username varchar (20) not null unique,
    name varchar(40) not null unique,
    phone varchar(20) not null unique,
    mail varchar(40) not null,
    password varchar(15) not null
);

insert into client (username,name, phone, mail, password) values
	("FabiNot","Fabiana Notargiacomo", "3456080955", "fabiana.notargiacomo@gmail.com", "password"), 
    ("GioDa","Giorgia D'Alba", "3456080951", "giorgia.da@gmail.com", "password"),
    ("LorFo","Lorena Foresta", "3456080952", "lorena.foresta@gmail.com", "password"),
    ("FraPan","Francesca Panucci", "3456080957", "francesca.panucci@gmail.com", "password"),
    ("CamRo","Camilla Rossi", "3456080958", "camilla.rossi@gmail.com", "password"),
    ("MiriG","Miriam Di Giandomenico", "3456080959", "miriam.dg@gmail.com", "password");
    
select*
from client;

create table menu(
	menu_id integer primary key auto_increment,
	name varchar(40)not null,
	price decimal(5,2)not null
);

insert into menu (menu_id,name,price) values
	("20","Menu all'italiana",20),
    ("25","Menu vegetariano", 25),
    ("40","Menu vegano", 40);

select*
from menu;

create table city(
	city_id char(2) primary key, 
	name varchar(40) not null
);

insert into city (city_id, name) 
values ("RM","Rome"),
		("MI","Milan"),
        ("TO","Turin");
        
select*
from city;
        
create table restaurant(
	restaurant_id integer primary key auto_increment,
	name varchar(40) not null,
	city_id char(2) not null,
	foreign key (city_id) references city (city_id) 
);
insert into restaurant(name,city_id) 
 values ("S&E Piazza di Spagna","RM"),
		("S&E Piazza del Popolo","RM"),
        ("S&E Via del Corso","RM"),
        ("S&E Piazza Duomo","MI"),
        ("S&E Porta Venezia","MI"),
        ("S&E Corso Como","MI"),
        ("S&E Lingotto","TO"),
        ("S&E Via Nizza","TO"),
        ("S&E Piazza Castello","TO");
        
select*
from restaurant;

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
 
 insert into reservation (reservation_id, day, seats, client_id, menu_id, restaurant_id) values
	(1, current_date(), 3, "1", 20, 3);
 
select name
from reservation r join client c on r.client_id=c.client_id;

