select count(id) as "total products" from products; -- menjumplahkan total products 
select avg(price) as "harga rata rata" from products; -- harga rata rata dari sebuah product
select max(price) as "harga termahal" from products; -- mencari harga termahal di sebuah product
select min(price) as "harga termurah" from products; -- mencari harga termahal di sebuah product

select count(id) as "total product", avg(price) as "harga rata rata", max(price) as "harga termahal", min(price) as "harga termurah" from products;
