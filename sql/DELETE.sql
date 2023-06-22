SELECT id, name, price, quantity FROM products;

INSERT INTO products
(id, name, price, quantity)
VALUES
( 'P0009','Sepatu',30000,100 );

SELECT id, name, price, quantity FROM products;

-- menghapus data
DELETE FROM products
  WHERE id = 'P0009';


SELECT id, name, price, quantity FROM products;
