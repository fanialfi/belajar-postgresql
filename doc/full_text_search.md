Saat melakukan pencarian kata dalam table menggunakan `like` operator, operasi tersebut akan dilakukan di table dari baris pertama hingga akhir, hal ini jika digunakan pada data yang besar akan membuat `like` operator akan sangat lambat, menambahkan `index` di table juga tidak membantu karena `like` tidak menggunakan index.

Jika seperti ini maka bisa menggunakan `full text search` untuk menggantikan `like` operator, ini sangat cocok ketika membutuhkan pencarian yang tidak hanya menggunakan operasi sama dengan (`=`).

di PostgreSQL fitur ini menggunakan function `to_tsvector(text)` dan `to_tsquery(query)`, bahkan ini bisa digunakan tanpa index namun performa nya akan sama dengan `like`, `full text search` menggunakan operator @@ bukan =.

Untuk membuat index full text search, perintahnya sama dengan saat membuat index biasa.
