drop index products_name_search, products_desc_search;

-- mencari tanpa index
select * from products 
where to_tsvector(name) @@ to_tsquery('mie') order by id;

-- melihat bahasa apa saja yang di dukung
-- select cfgname from pg_ts_config;

-- membuat index full text search
create index products_name_search on products using gin(to_tsvector('indonesian', name));
create index products_desc_search on products using gin(to_tsvector('indonesian', description));


-- mencari dengan menggunakan full text search
select * from products
where name @@ to_tsquery('mie') order by id; -- mencari bagian per kata, menjadi tidak se fleksibel like operator, namun sangat cepat karena menggunakan index

/*
to_tsquery() operator

& untuk AND
| untuk OR
! untuk NOT
'''' untuk semua data
*/

-- menggunakan operator AND
select * from products
where name @@ to_tsquery('mie & bakso') order by id;


-- menggunakan operator OR
select * from products
where name @@ to_tsquery('mie | ayam | bakso') order by id;

-- menggunakan operator NOT
select * from products
where name @@ to_tsquery('!mie') order by id;

-- menggunakan operator semua data
select * from products
where name @@ to_tsquery('''mie ayam''') order by id;

select * from products
where name @@ to_tsquery('!mie & !ayam & !bakso') order by id;
