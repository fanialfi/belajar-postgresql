saat melakukan query data di table, terkadang kita mendapatkan data yang duplikat, misal ketika ingin melakukan query semua kategori di table product, maka hasil query-nya akan duplikat karena banyak product yang memiliki kategori yang sama.
Jika ingin menghilangkan data data duplikat, maka bisa menggunakan `select` dengan tambahan `distinct` sebelum nama kolom nya.
