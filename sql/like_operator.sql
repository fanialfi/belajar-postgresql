select * from products;

-- dengan menggunakan like operator
select * from products
where name LIKE '%Es%'; -- case sensitif

-- dengan menggunakan like operator uncase sensitif
select * from products
where name ilike '%ayam%';
