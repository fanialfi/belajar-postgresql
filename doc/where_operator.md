Sebelumnya di `WHERE` clause sudah menggunakan operator `=` (sama dengan)

berikut adalah beberapa `WHERE` operator :

operator perbandingan :

| operator       | keterangan              |
| -------------- | ----------------------- |
| `=`            | sama dengan             |
| `<>` atau `!=` | tidak sama dengan       |
| `<`            | kurang dari             |
| `>`            | lebih dari              |
| `<=`           | kurang dari sama dengan |
| `>=`           | lebih dari sama dengan  |

jika ingin mencari data dengan gabungan beberapa kondisi, maka bisa menggunakan operator `AND` dan `OR`.

hasil operator `AND`

| hasil operator 1 | operator | hasil operator 2 | hasil akhir |
| ---------------- | -------- | ---------------- | ----------- |
| benar            | `AND`    | benar            | benar       |
| salah            | `AND`    | benar            | salah       |
| benar            | `AND`    | salah            | salah       |
| salah            | `AND`    | salah            | salah       |

hasil operator `OR`

| hasil operator 1 | operator | hasil operator 2 | hasil akhir |
| ---------------- | -------- | ---------------- | ----------- |
| benar            | `OR`     | benar            | benar       |
| benar            | `OR`     | salah            | benar       |
| salah            | `OR`     | benar            | benar       |
| salah            | `OR`     | salah            | salah       |
