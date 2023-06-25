drop table orders_detail;
drop table orders;


create table orders(
  id smallserial not null,
  total smallint not null,
  order_date timestamp with time zone not null default now(),
  primary key(id)
);

-- membuat table penegah untuk many to many relationship
create table orders_detail(
  id_order smallint not null,
  id_products char(5) not null,
  price integer not null,
  quantity integer not null,
  primary key(id_order, id_products),
  constraint fk_order_detail_order foreign key(id_order) references orders(id), -- many to many relationship
  constraint fk_order_detail_product foreign key(id_products) references products(id) -- many to many relationship
);

-- menambahkan data ke table orders
insert into orders
(total)
values
(4), (8), (7), (2), (3);


-- menambahkan data ke order detail untuk order 1
insert into orders_detail
(id_order, id_products, price, quantity)
values
(1, 'P0001', (select price from products where id = 'P0001'), 1),
(1, 'P0002', (select price from products where id = 'P0002'), 2),
(1, 'P0003', (select price from products where id = 'P0003'), 1);


-- menambahkan data ke order detail untuk order 2
insert into orders_detail
(id_order, id_products, price, quantity)
values
(2, 'P0001', (select price from products where id = 'P0001'), 3),
(2, 'P0012', (select price from products where id = 'P0012'), 2),
(2, 'P0006', (select price from products where id = 'P0006'), 1),
(2, 'P0013', (select price from products where id = 'P0013'), 2);

-- menambahkan data ke order detail untuk order 3
insert into orders_detail
(id_order, id_products, price, quantity)
values
(3, 'P0001', (select price from products where id = 'P0001'), 3),
(3, 'P0012', (select price from products where id = 'P0012'), 2),
(3, 'P0006', (select price from products where id = 'P0006'), 1),
(3, 'P0008', (select price from products where id = 'P0008'), 1);

-- menambahkan data ke order date untuk order 4
insert into orders_detail
(id_order, id_products, price, quantity)
values
(4, 'P0007', (select price from products where id = 'P0007'), 1),
(4, 'P0009', (select price from products where id = 'P0009'), 2);

-- menambahkan data ke order detail untuk order 5
insert into orders_detail
(id_order, id_products, price, quantity)
values
(5, 'P0009', (select price from products where id = 'P0009'), 1),
(5, 'P0010', (select price from products where id = 'P0010'), 1),
(5, 'P0016', (select price from products where id = 'P0016'), 1);


-- melihat seluruh data order, detail order dan products nya
select * from orders
join orders_detail on orders_detail.id_order = orders.id
join products on orders_detail.id_products = products.id;

select
orders.id as "id order",
orders.total as "total order",
orders.order_date as "waktu pemesanan"
join 
orders_detail.id_order as "detail id order",
orders_detail.id_products as "detail id products",
orders_detail.quantity as "order quantity"
on orders_detail.id_products = orders.id
join
products.name as "nama produk",
on orders_detail.id_products = products.id;
