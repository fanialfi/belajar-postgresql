-- mengambil semua data yang ada didalam table products
SELECT * FROM products;


-- mengambil data yang harga nya 20K
SELECT id, name, price, quantity
  FROM products
  WHERE price = 20000;

