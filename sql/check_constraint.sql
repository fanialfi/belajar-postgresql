-- menambahkan check constraint saat membuat table
-- create table products(
--   id smallserial not null,
--   nama varchar(50) not null,
--   deskripsi text,
--   harga integer not null default 10000,
--   jumplah integer not null default 1,
--   ditambahkan_pada timestamp not null default now(),
--   primary key (id),
--   constraint unique_nama unique(nama),
--   constraint check_jumplah check(jumplah > 0)
-- );
--
-- insert into products
-- (nama, harga, jumplah)
-- values
-- ('Baju Renang', 200000,10),
-- ('Lemari',500000,10);


-- hapus data
DELETE FROM products
  WHERE id = 'P0032';

delete from products
  where id = 'P0033';

DELETE FROM products
  WHERE id = 'P0034';

-- menghapus constraint di table
alter table products
  drop constraint check_quantity;

-- menambahkan check constraint di table yang sudah ada
alter table products
  add constraint check_quantity check(quantity > 0);

-- memasukkan data
insert into products
(id, name, price, quantity, category)
values
('P0032', 'Jamu Kencur', 3000, 10, 'Minuman'),
('P0033', 'Es Teh Anget', 4000, 100, 'Minuman'),
('P0034', 'Bakwan', 1500, 300, 'Makanan');


-- memasukkan data yang tidak sesuai kategori
insert into products
(id, name, price, quantity, category)
values
('P0035', 'Tahu Bakso', 2000, 0, 'Makanan'); -- gagal di memasukkan ke datalm database karena quantity tidak memenuhi syarat, dimana quantity harus lebih dari 0
