-- membuat type enum kategory
CREATE TYPE PRODUCT_CATEGORY AS ENUM ('Makanan','Minuman','Lain-Lain');


-- menambahkan column baru kedalam table
ALTER TABLE products
  ADD COLUMN category PRODUCT_CATEGORY NOT NULL  DEFAULT 'Lain-Lain';


-- mengubah satu kolom
UPDATE products
  SET category = 'Makanan'
  WHERE id = 'P0001';

-- mengubah beberapa column
UPDATE products
  SET
    category = 'Makanan',
    description = 'Mie Ayam + Ceker Ayam'
  WHERE id = 'P0003';

-- mengubah dengan value di kolom
UPDATE products
  SET price = price + 2000 -- sama saja menambahkan 2000 dengan value lama di kolom proce
  WHERE id = 'P0004';
