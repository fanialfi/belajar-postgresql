-- locking secara otomatis menggunakan transaction
start transaction;

update admin
  set first_name = 'fani'
where id = 102;


/*
jalankan perintah di bawah ini dengan menggunakan PostgreSQL client yang berbeda

update admin
  set last_name = 'alfirdaus'
where id = 102;

maka ketika perintah di atas di jalankan di PostgreSQL client yang berbeda maka untuk data pada baris tersebut, dalam hal ini adalah baris dengan id 102 akan di lock oleh client lain sebelum client yang melakukan locking tersebut melepasnya.
baik dengan membatalkan transaction dengan mengirimkan perintah `rollback`, atau melanjutkan proses transaction dengan mengirimkan perintah `commit`

tapi jika client lain mengupdate  baris lain, atau baris dengan id selain 102, maka proses update tersebut akan berhasil, karena tidak ada yang melocking data tersebut.
*/

ROLLBACK;



-- locking manual
start transaction;

select * from admin for update; -- locking manual dengan menggunakan perintah `for update`

/*
misalnya jika menjalankan perintah di atas, dan perintah sql select query tersebut menghasilkan 2 baris seperti berikut

id | first_name | last_name
----+------------+-----------
  1 | Fani       | alfirdaus
  2 | Saichiopy  |


maka jika client lain mengupdate salah data dari 2 baris di atas, maka harus menunggu client yang melakukan locking data tersebut,
tapi jika client lain menambahkan data ke table tersebut maka, data tersebut bisa lansung di masukkan kedalam database
*/

ROLLBACK;
