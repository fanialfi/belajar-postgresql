alter table products
  drop column id_category;
  -- drop constraint fk_product_foreign;

drop table categories;

create table categories(
  id_category char(5),
  category varchar(10),
  primary key(id_category)
);

INSERT INTO categories
(id_category, category)
VALUES
('C0001', 'makanan'),
('C0002', 'minuman'),
('C0003', 'lain lain');

alter table products
  add column id_category char(5),
  -- add constraint products_category_unique unique(id_category), -- jika unique constraint di tambahkan sama saja dengan one to one relationship
  add constraint fk_product_category foreign key(id_category) references categories(id_category);

-- UPDATE products
--   SET id_category = 'C0001'
--   WHERE category = 'Makanan';
--
-- update products
--   set id_category = 'C0002'
--   where category = 'Minuman';
--
-- update products
--   set id_category = 'C0003'
--   where category = 'Lain-Lain';
--
-- alter table products
--   drop column category;
