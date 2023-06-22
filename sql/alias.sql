SELECT id, name, price, quantity, category FROM products;


-- alias untuk kolom
SELECT id AS "kode barang", name AS "nama barang", price AS "harga barang", quantity AS "jumplah barang" FROM products; -- jika penamaan alias lebih dari 1 kata, maka simpan dalam petik dua.


-- alias untuk table
SELECT p.id AS "kode", p.name, p.price, p.quantity, category FROM products AS p;
