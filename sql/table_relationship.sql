drop table penjualan;
UPDATE sellers 
  SET email = 'toko@baju.com'
  WHERE id = 2;

create table penjualan(
  id smallserial not null,
  id_product char(5) not null,
  id_pembeli varchar(50) not null,
  jumplah integer not null,
  keterangan text,
  waktu_pembelian timestamp with time zone not null default now(),
  primary key (id),
  constraint fk_penjualan_product foreign key(id_product) references products(id), -- membuat foregin key yang mereferensi ke kolom di table products
  constraint fk_penjualan_pembeli foreign key(id_pembeli) references sellers(email) on delete cascade on update cascade
);


-- mengambil data products dan sellers
-- select 
--   p.id as "id produk",
--   p.name as "nama produk",
--   p.price as "harga produk",
--   s.id as "id seller",
--   s.email as "email seller"
-- from products as p, sellers as s order by s.id;

select 
  id as "id produk",
  name as "nama produk",
  price as "harga produk"
from products order by id;

select
  id as "id seller",
  email as "email seller"
from sellers order by id;

insert into penjualan
(id_product, id_pembeli, jumplah)
values
('P0001', 'fanialfirdaus@gmail.com', 20),
('P0003', 'toko@baju.com', 10);

DELETE FROM products
  WHERE id = 'P0001'; -- error karena key id 'P0001' me referensi ke id_product di table penjualan

-- update kolom penjualan
UPDATE sellers 
  SET email = 'muslim@tokobaju.com'
  WHERE id = 2;
