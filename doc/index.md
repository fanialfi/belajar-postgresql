Secaa default, PostgreSQL akan menyimpan datanya di dalam disk, ketika melakukan pencarian data PostgreSQL akan mencari dari baris pertama sampai terakhir, yang artinya jika datanya semakin banyak maka akan semakin lambat.
Dengan menggunakan `index` kita bisa ubah cara PostgreSQL menyimpan datanya, ketika menggunakan `index` PostgreSQL akan menyimpan data dalam struktur data `B-Tree`, `index` ini tidak hanya mempercepat pencarian data, namun juga akan mempermudah ketika melakukan pengurutan data menggunakan `order by clause`.

saat membuat index, kita bisa membuat index lebih dari 1 di table, dan ketika membuat index kita bisa membuatnya dengan beberaoa kolom sekaligus.
Ketika membuat `primary key` di table, sebenarnya PostgreSQL akan membuat `index` di `primary key` tersebut, tidak hanya `primary key` ketika membuat `unique constraint`, maka PostgreSQL juga akan menambahkan index ke `unique constraint` tersebut.

Saat membuat index untuk beberapa kolom sekaligus, misalnya kita membuat index untuk (kolom1, kolom2, kolom3) artinya kita mempunyai kemampuan lebih menggunakan `index` untuk melakukan query di kolom (kolom1), (kolom1, kolom2), dan (kolom1, kolom2, kolom3).

Ketika membuat index, mungkin akan mempercepat proses pencarian dan query data, namun saat membuat `index` PostgreSQL akan melakukan proses update data di index ketika melakukan _update_, _delete_, _insert_ data di tabel.
