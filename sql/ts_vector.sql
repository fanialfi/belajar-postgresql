drop table nothing;

create table nothing(
  id smallserial not null,
  nama tsvector not null, -- menggunakan tipe data tsvector
  deskripsi text,
  created numeric(13,3) not null default extract(epoch from now()),
  primary key (id),
  constraint unique_created unique(created)
);

insert into nothing
(nama, deskripsi)
values
('fani alfirdaus', 'sedang belajar menggunakan PostgreSQL');

insert into nothing
(nama, deskripsi)
values
('komputer', 'alat yang saya gunakan untuk belajar PostgreSQL');

insert into nothing
(nama, deskripsi)
values
('laptop', 'lebih tepatnya alat yang saya gunakan');

insert into nothing
(nama, deskripsi)
values
('berapa panjangnya', 'saya tidak tahu');

insert into nothing
(nama, deskripsi)
values
('saya isi lebih panjang lagi', 'enggak tau');
