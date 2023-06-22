CREATE TABLE products
(
  id CHAR(5) NOT NULL,
  name VARCHAR(100) NOT NULL,
  description TEXT,
  price INT NOT NULL,
  quantity INT NOT NULL DEFAULT 0,
  created_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- memasukkan satu data
INSERT INTO products
(id, name, price, quantity) -- memilih kolom mana saja yang akan di isi, selain kolom tersebut maka default value nya adalah null, kecuali jika memiliki default value.

VALUES
('P0001', 'Mie Ayam Original', 15000, 100);


INSERT INTO products
(id, name, description, price, quantity)
VALUES
('P0002', 'Mie Ayam Bakso Tahu', 'Mie Ayam Original + Bakso Tahu', 20000, 100);



-- memasukkan beberapa data sekaligus
INSERT INTO products
(id, name, price, quantity)
VALUES
('P0003', 'Mie Ayam Ceker', 20000, 100),
('P0004', 'Mie Ayam Special', 25000, 100),
('P0005', 'Mie Ayam Yamin', 15000, 100);
