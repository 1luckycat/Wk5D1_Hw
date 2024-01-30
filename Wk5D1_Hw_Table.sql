CREATE TABLE Customers (
  customer_id SERIAL primary key,
  first_name VARCHAR(30),
  last_name VARCHAR(30),
  address VARCHAR(50),
  phone_number VARCHAR(20),
  email_address VARCHAR(50),
  payment_info VARCHAR(30)
);

CREATE TABLE Concessions (
  concession_id SERIAL primary key,
  concession_item VARCHAR(50),
  concession_total NUMERIC(5,2),
  coupon_code VARCHAR(20)
);

CREATE TABLE Movies (
  movies_id SERIAL primary key,
  title VARCHAR(50),
  movie_date DATE default current_date,
  movie_time TIME,
  movie_price NUMERIC(4,2),
  seat_number VARCHAR(20)
);

CREATE TABLE Tickets (
  ticket_id SERIAL primary key,
  total NUMERIC(5,2),
  purchase_date DATE default current_date,
  customer_id INTEGER,
  foreign KEY(customer_id) references Customers(customer_id)
);

CREATE TABLE ticket_order (
  ticket_order_id SERIAL primary key,
  ticket_id INTEGER,
  movies_id INTEGER,
  concession_id INTEGER,
  foreign KEY(concession_id) references Concessions(concession_id),
  foreign KEY(movies_id) references Movies(movies_id),
  foreign KEY(ticket_id) references Tickets(ticket_id)
);

