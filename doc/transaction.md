Merupakan fitur yang ada di DBMS dimana kita bisa memungkinkan beberapa perintah di anggap sebagai sebuah kesatuan perintah.
Jika ada salah satu proses yang gagal di transaction, maka secara otomatis perintah sebelumnya akan di batalkan, dan jika sukses maka dipastikan semua perintah akan sukses.

contoh ketika membuat toko online, ketika customer menekan tombol pesan banyak yang harus di lakukan, misalnya

- membuat data pesanan di table order
- membuat detail pesanan di table order detail
- menurukan quantity di table produk
- dll

salah satu proses di atas bisa saja gagal, dan jika salah satu proses gagal, maka data sudah di pastikan tidak valid lagi, karena harapannya jika salah satu perintah gagal, maka perintah perintah sebelumnya juga ikut gagal.

Untuk mengatasi masalah tersebut, kita bisa menggunakan fitur transaction, dimana beberapa perintah di atas akan di satukan menjadi satu kesatuan perintah.

transaction di PostgreSQL

| perintah            | keterangan                                                                                                     |
| ------------------- | -------------------------------------------------------------------------------------------------------------- |
| `start transaction` | memulai proses transaksi, proses selanjutnya akan di anggap transaksi sampai perintah `commit` atau `rollback` |
| `commit`            | menyimpan secara permanen seluruh proses transaksi                                                             |
| `rollback`          | membatalkan secara permanen seluruh proses transaksi                                                           |

perintah transaction tersebut hanya bisa digunakan di dalam perintah DML (data manipulation language) seperti operasi `insert`, `update`, `delete`, selain itu perintah transaction tidak bisa dilakukan seperti di perintah DDL (data definition language) seperti membuat struktur table, mengubah struktur table, menambah kolom, menghapus kolom, dan sejenisnya, jika perintah transaction tersebut diterapkan di perintah DDL, maka tidak akan bisa.
