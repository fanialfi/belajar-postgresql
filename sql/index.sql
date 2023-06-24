-- membuat table
create table sellers(
  id smallserial not null,
  nama varchar(50) not null,
  email varchar(50) not null,
  created timestamp not null default now(),
  primary key(id),
  constraint unique_email unique(email)
);


insert into sellers
(nama, email)
values
('fanialfi', 'fanialfirdaus@gmail.com'),
('Toko Baju', 'toko@baju.com'),
('toko sepatu', 'toko@sepatu.com'),
('toko sandal', 'toko@sandal.com'),
('toko buku', 'toko@buku.com'),
('toko gelas', 'toko@gelas.com'),
('toko hp', 'toko@hp.com'),
('toko laptop', 'toko@laptop.com'),
('toko lampu', 'toko@lampu.com'),
('toko elektronik', 'toko@elektronik.com'),
('toko kelontong', 'toko@kelontong.com'),
('toko tas', 'toko@tas.com');


-- menambahkan index
create index name_and_created on sellers(nama, email, created); -- mempunyai 3 index (nama), (nama, email), (nama, emailm created)

-- menghapus index 
drop index name_and_created;
