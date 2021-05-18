use tour_management;

# so luong tuor trong thanh pho
select c.city_name ,count(c.city_id)
from city c inner join destination d on c.city_id = d.city_id
            inner join tour t on d.destination_id = t.destination_id
group by t.destination_id;

# so luong tour co ngay bat dau trong thang 3

select *
from tour as t
    join date as d on(t.date_id=d.date_id and d.start_time>='2021-03-01' and d.start_time <= '2021-03-31');

# lay ra so luong tuor trong thang 3

select   count(t.tour_id) as number_of_tour
from tour as t
         join date as d on (t.date_id=d.date_id and d.start_time>='2021-03-01' and d.start_time <= '2021-03-31');



# so luong tour co ngay ket thuc trong thang 4

select *
from tour as t
    join date as d on(t.date_id=d.date_id and d.end_time>='2021-04-01' and d.end_time <= '2021-04-30');

# lay ra so luong tuor trong thang 4

select   count(t.tour_id) as number_of_tour
from tour as t
         join date as d on (t.date_id=d.date_id and d.end_time>='2021-04-01' and d.end_time <= '2021-04-30');

select bt.customer_id,customer_name,bill_id,city_name, d.destination_name,destination_price,start_time,end_time,kind_of_tour_name
from customer
    inner join bill_tour bt on customer.customer_id = bt.customer_id
    inner join city c on customer.city_id = c.city_id
    inner join destination d on c.city_id = d.city_id
    inner join tour t on d.destination_id = t.destination_id
    inner join date d2 on t.date_id = d2.date_id
    inner join kind_of_tour kot on t.kind_of_tour_id = kot.kind_of_tour_id;
