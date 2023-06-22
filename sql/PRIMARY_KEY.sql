-- menambahkan primary key saat membuat table
CREATE TABLE nothing
(
  id SMALLSERIAL NOT NULL PRIMARY KEY, -- langsung menambahkan didalam nama kolom-nya
  nama VARCHAR(100)
);

CREATE TABLE doNothing
(
  id SMALLSERIAL NOT NULL,
  nama VARCHAR(100),
  PRIMARY KEY(id)
);

-- menambahkan beberapa primary key saat membuat table
CREATE TABLE doNothing1 (
  id SMALLSERIAL NOT NULL,
  nama VARCHAR(100),
  PRIMARY KEY(id,nama)
);


-- menambahkan primary key di table yang sudah di buat
ALTER TABLE products
  ADD PRIMARY KEY(id);
