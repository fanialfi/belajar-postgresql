select id, name, price, quantity from products order by id asc limit 10;

-- menggunakan arithmetic saat melakukan query
select id, name, price / 1000 as "price in K", quantity from products order by id limit 10;


-- menggunakan arithmetic saat update kolom
UPDATE products
  SET price = price + 500
  WHERE id = 'P0010';

select id, name, price / 1000 as "price in K", quantity from products order by id limit 10;

-- menggunakan arithmetic saat melakukan penghapusan sata
DELETE FROM products
  WHERE quantity = 60 / 2;

select id, name, price from products order by id;
