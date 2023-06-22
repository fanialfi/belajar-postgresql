-- membuat tabel dengan default value
CREATE TABLE barang(
  id SMALLSERIAL NOT NULL, -- karena menggunakan tipe data smallserial, jika kolom ini tidak di isi, maka secara default akan increment dari sebelumnya.
  nama VARCHAR(100) NOT NULL,
  keterangan TEXT NOT NULL,
  harga INT NOT NULL DEFAULT 1000, -- jika saat memasukkan data dan kolom harga tidak di isi, maka secara default isinya sudah bukan lagi null, melainkan 1000
  jumplah INT NOT NULL DEFAULT 0, -- jika kolom tidak di isi, maka secara default isinya adalah 0, bukan null
  waktu_dibuat TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT CURRENT_TIMESTAMP
);
