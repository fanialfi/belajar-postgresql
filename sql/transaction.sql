insert into admin -- perintah tersebut akan langsung di simpan permanen
(first_name, last_name)
values
('bob', 'jamson'),
('james', 'royan');


start transaction;
insert into admin
(first_name, last_name)
values
('ryan', 'dahl'),
('febri', 'putri'); -- jika belum ada perintah `commit` atau `rollback` yang di jalankan, maka data tersebut belum di simpan permanen, hanya di simpan di sesi ini saja, di sesi lain data belum ada

commit;


start transaction;

-- data di bawah ini tidak akan di simpan permanen ke database
insert into admin
(first_name, last_name)
values
('joko', 'moro'),
('budi', 'nugraha'),
('setia', 'budi');

 rollback;
