select
  category,
  count(id) as "total product",
  avg(price) as "harga rata rata",
  max(price) as "harga tertinggi",
  min(price) as "harga terendah",
  case
    when description is null then 'Kosong'
    else description
  end as description
from products
-- where count(id) > 1 -- error karena aggregate function tidak di izinkan di where clause
group by category, description
-- having count(id) > 1; -- dilakukan untuk pengkondisian di aggregate function
having min(price) >= 2000; 
