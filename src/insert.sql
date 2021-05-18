use tour_management;

# init city
insert into city(city_name) value ('ha noi'),
    ('ninh binh'),
    ('ha nam'),
    ('nam dinh'),
    ('nghe an'),
    ('ha tinh');

# init date
insert into date( start_time, end_time)  value ('2021-05-19','2021-05-20');
insert into date( start_time, end_time)  value ('2021-04-19','2021-05-20');
insert into date( start_time, end_time)  value ('2021-03-19','2021-04-20');
insert into date( start_time, end_time)  value ('2021-03-19','2021-05-20');
insert into date( start_time, end_time)  value ('2021-02-19','2021-04-20');

# init kind of tour
insert into kind_of_tour( kind_of_tour_name) value ('police'),
    ('pagoda'),
    ('mountain'),
    ('beach'),
    ('museum');

# init  destination
insert into destination(destination_name, destination_description, destination_price, city_id) value ('Hoa Lo prision','cheap',1000,1),
    ('bai dinh pagoda','expensive',10000,2),
    ('mountain Nui','green',5000,3),
    ('cua lo beach','environment',3000,4),
    ('national museum','history',8000,5);


#init customer

insert into customer( customer_name, customer_identify, customer_birthday, city_id) value ('cong1','164620104','1998-09-05',1),
    ('cong2','164620105','1997-09-05',2),
    ('cong3','164620106','1996-09-05',3),
    ('cong4','164620107','1995-09-05',4),
    ('cong5','164620108','1994-09-05',5);


# init tour

insert into tour(tour_id, kind_of_tour_id, destination_id, date_id) value(1001,1,1,1),
    (1002,2,2,2),
    (1003,3,3,3),
    (1004,4,4,4),
    (1005,5,5,5);

# init bill

insert into bill_tour(bill_id, tour_id, customer_id) value ('BILL-1',1001,1),
    ('BILL-2',1002,1),
    ('BILL-3',1003,2),
    ('BILL-4',1004,2),
    ('BILL-5',1005,3),
    ('BILL6',1001,3),
    ('BILL-7',1002,4),
    ('BILL-8',1003,4),
    ('BILL-9',1004,5),
    ('BILL-10',1005,5);

