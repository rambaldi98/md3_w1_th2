create database TOUR_MANAGEMENT;
use TOUR_MANAGEMENT;

create table city(
    city_id int auto_increment primary key,
    city_name varchar(100) not null unique
);

create table kind_of_tour(
    kind_of_tour_id int auto_increment primary key ,
    kind_of_tour_name varchar(100) not null
);

create table date(
    date_id int primary key auto_increment,
    start_time date not null ,
    end_time date not null,
    constraint date_check check ( end_time >= start_time )
);


create table destination(
    id int auto_increment primary key ,
    destination_name varchar(100) not null ,
    destination_description text,
    destination_price float not null,
    city_id int not null,
    foreign key (city_id) references city(city_id)
);
alter table destination
rename column id to destination_id;

create table customer(
    customer_id int auto_increment primary key ,
    customer_name varchar(50) not null ,
    customer_identify varchar(50) not null ,
    customer_birthday date,
    city_id int not null ,
    foreign key (city_id) references city(city_id)
);

create table tour(
     tour_id int primary key,
     kind_of_tour_id int not null ,
     destination_id int not null ,
     date_id int not null ,

     foreign key (kind_of_tour_id)references kind_of_tour(kind_of_tour_id),
     foreign key (date_id) references date(date_id),
     foreign key (destination_id) references destination(destination_id)
);

create table bill_tour(
    bill_id int primary key ,
    tour_id int not null ,
    customer_id int not null ,
    bill_status boolean default false,
    foreign key (tour_id) references tour(tour_id),
    foreign key (customer_id) references customer(customer_id)
);
# alter table date
# drop constraint date_check;
# alter table date
# add constraint data_check check (end_time >= start_time );
alter table tour
modify tour_id int not null unique ;
alter table bill_tour
    modify bill_id  varchar(255) not null unique ;