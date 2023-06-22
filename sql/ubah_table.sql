-- menghapus table
-- untuk menghapus table bisa menggunakan command seperti berikut
-- DROP TABLE nama_table;

ALTER TABLE barang
  -- menambah column ke table
  ADD COLUMN description TEXT,
  -- menghapus column
  DROP COLUMN nama;

ALTER TABLE barang
  -- mengganti nama column
  RENAME COLUMN harga TO price;
