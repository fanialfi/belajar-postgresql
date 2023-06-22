-- membuat table dengan default value tidak boleh null
CREATE TABLE barang (
  id SMALLSERIAL NOT NULL,
  nama VARCHAR(100) NOT NULL,
  keterangan TEXT NOT NULL,
  harga INT NOT NULL,
  jumplah INT NOT NULL
);
