insert into customers (
	first_name,
	last_name,
	address,
	phone_number,
	email_address,
	payment_info 
) values (
	'Mo',
	'Truong',
	'111 Main St',
	'111-222-3333',
	'momo@codingtemple.com',
	'1234 5678 1234 5678 02/25 123'
);

select *
from customers;


insert into tickets (
	total,
	customer_id 
) values (
	27.27,
	1
);

select *
from tickets;


insert into concessions (
	concession_item,
	concession_total,
	coupon_code 
) values (
	'Nacho and cheese, popcorn, drink',
	17.27,
	'N/A'
);

select *
from concessions;


insert into movies (
	title,
	movie_time,
	movie_price,
	seat_number 
) values (
	'How to Train Your Dragon',
	'12:00',
	10.00,
	'Row 11 Seat 7'
);

select *
from movies;


insert into ticket_order (
	ticket_id,
	movies_id,
	concession_id 
) values (
	1,
	1,
	1
);

select *
from ticket_order;





