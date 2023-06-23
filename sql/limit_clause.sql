-- tanpa menggunakan limit clause
select id, name, price, quantity from products order by id asc, price asc;


-- dengan menggunakan limit 8
select id, name, price, quantity from products order by id asc, price asc limit 8;


-- skip hasil query atau melakukan offset
select id, name, price, quantity from products order by id asc, price asc limit 8 offset 8;
