drop table wallet;

create table wallet(
  id smallserial not null,
  id_customers varchar(50) not null,
  balance bigint not null,
  primary key(id),
  constraint wallet_id_unique unique(id_customers),
  constraint fk_wallet_customer foreign key(id_customers) references customers(email)
);

insert into wallet
(id_customers, balance)
values
('fanialfirdaus@gmail.com', 10000000),
('saichi@sai.opy', 1000000),
('eko@example.com', 2000000),
('budi@example.com', 800000),
('joko@example.com', 200000),
('mail@example.com', 350000);
-- ('apabisa@example.com',600000); -- tidak bisa menambahkan ke database, karena data tidak ada didalam table customers

select
customers.id as "id customer",
customers.first_name as "name customer",
customers.email as "email customer",
wallet.balance as "balance customer"
from customers
join wallet on wallet.id_customers = customers.email;
