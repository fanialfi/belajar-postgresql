dalam _RDBMS_ salah satu fitur unggulannya adalah table relationship atau biasa disebut relasi antar table.
Kita dapat melakukan relasi dari satu atau lebih ke table lain.
Misalnya ketika membuat aplikasi penjualan, di laporan penjualan pasti ada data barang, maka di table penjualan pasti akan berelasi ke table barang.

saat membuat relasi table, biasanya akan membuat sebuah kolom yang mereferensi ke table kolom lain.
Misalnya ketika membuat table penjualan kita akan membuat kolom id_product yang me referensi ke table products yang berisi primary key du table products. Kolom referensi ini disebut Foreign key.

untuk foregin key, kita bisa menambahkannya ke dalam table lebih dari satu.
foregin key memastikan bahwa data yang di masukkan ke kolom tersebut, harus tersedia di table referensinya. Selain itu saat menghapus atau mengupdate data di table referensi, PostgreSQL akan mengecek apakah data tersebut digunakan di foregin key di table lain, jika digunakan maka secara otomatis PostgreSQL akan menolak operasi tersebut, karena default behavior nya akan di tolak (restrict).

| behavior      | on delete           | on update              |
| ------------- | ------------------- | ---------------------- |
| `restrict`    | ditolak             | ditolak                |
| `cascade`     | data akan di hapus  | data akan ikut di ubah |
| `no action`   | data di biarkan     | data di biarkan        |
| `set null`    | diubah menjadi null | diubah menjadi null    |
| `set default` | diubah ke default   | diubah ke `default`    |

untuk mengubah behavior foregin key tersebut, maka bisa dengan menambahkan command berikut ini saat membuat constraint foregin key

`on delete behavior on update behavior`
