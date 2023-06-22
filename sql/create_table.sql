-- di psql untuk melihat tabel di database bisa menggunakan perintah berikut
-- \dt

-- atau jika menggunakan PostgreSQL client selain psql bisa menggunakan command sebagai berikut
SELECT * FROM pg_tables WHERE schemaname = 'public';


-- membuat tabel
CREATE TABLE barang (
  kode SMALLSERIAL,
  nama VARCHAR(100),
  harga INTEGER,
  jumplah INTEGER
);


-- untuk melihat struktur tabel, jika menggunakan psql, bisa menggunakan perintah sebagai berikut
-- \d nama_table
