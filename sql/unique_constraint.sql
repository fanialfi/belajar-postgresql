-- membuat table dengan unique constraint
create table customers(
  id smallserial not null,
  email varchar(50) not null,
  first_name varchar(50) not null,
  last_name varchar(50),
  PRIMARY KEY(id),
  constraint unique_mail unique(email) -- unique constraint, jika saat memasukkan data ke database, dan ada email yang sama di database, maka data tersebut akan gagal di masukkan
);

-- membuat unique constraint di table yang sudah ada
-- alter table nama_table
--   add constraint nama_constraint unique(kolom);

insert into customers 
(email, first_name, last_name)
values
('fanialfirdaus@gmail.com', 'fani', 'alfirdaus'),
('saichi@sai.opy', 'saichiopy',null),
('mail@example.com', 'Eko', 'Khannedy');

-- insert into customers
-- (email, first_name, last_name)
-- values
-- ('mail@example.com', 'mail',null);
-- gagal karena email sebelumnya sudah ada didalam database

insert into customers
(email, first_name, last_name)
values
('eko@example.com', 'Eko', 'Kurniawan'),
('budi@example.com', 'Budi', 'Nugraha'),
('joko@example.com', 'Joko', 'Moro');
