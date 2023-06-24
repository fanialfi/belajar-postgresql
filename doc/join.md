Untuk melakukan query select langsung ke beberapa kolom sekaligus bisa menggunakan `join` di `sql select`, untuk melakukannya maka perlu menentukan kolom mana yang merupakan relevan ke table kolom lain.
Join sangat cocok digunakan dengan menggunakan foreign key, selain itu `join` bisa dilakuakn di beberapa kolom sekaligus yang relevan ke table kolom lain.

Semakin banyak `join` terhadap kolom di table yang relevan, maka proses query akan semakin berat dan lambat, idealnya gunakan `join` untuk table kurang dari 5, karena kalau lebih bisa berdampak ke performa query yang dibuat.
