-- mencari data dengan operator perbandingan


-- operator sama dengan
select id, name, price, quantity, category, created_at from products where id = 'P0001';


-- operator tidak sama dengan
select id, name, price, quantity, category, created_at from products where id != 'P0001';


-- operator kurang dari
select id, name, price, quantity, category from products where price < 20000;
select id, name, price, quantity, created_at as create from products where created_at < '2023-06-22 21:58:00+07';


-- operator lebih dari
select id, name, price, quantity, category, created_at from products where price > 20000;


-- menggunakan operator AND
select id, name, price, quantity, category from products where price >= 15000 and category = 'Makanan';


-- menggunakan operator OR
select id, name, price, category, quantity, created_at from products where quantity < 100 or created_at > '2023-06-22 17:00:00+07';


-- prioritas dengan menggunakan kurung
select id, name, category, price, quantity, created_at as dibuat from products where (price > 15000 or category = 'Makanan') and quantity > 100;
