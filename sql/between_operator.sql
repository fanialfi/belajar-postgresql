select id, name, price, quantity from products;

-- mengambil data yang harganya kisaran antara 10000 sampai 20000
select id, name, price, quantity from products where price between 10000 and 20000;


-- mengambil daya yang harganya tidak di antara 10000 sampai 20000
select id, name, price, quantity from products where price not between 10000 and 20000;
