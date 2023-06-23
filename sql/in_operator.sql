select id, name, price, quantity, category from products;


-- mencari data dengan kategory makanan dan minuman dengan menggunakan or operator
select id, name, price, quantity, category from products where category = 'Makanan' or category = 'Minuman';


-- mencari data dengan kategory makanan dan minuman dengan menggunakan in operator
select id, name, price, quantity, category from products where category in ('Makanan', 'Minuman');


-- mencari data dengan kategory selain makanan dan minuman
select id, name, price, quantity, category from products where category not in ('Makanan', 'Minuman');
