select 
  category,
  count(id) as "total product",
  avg(price) as "harga rata-rata",
  max(price) as "harga tertinggi",
  min(price) as "harga terendah",
  case 
    when description is null then 'Kosong'
    else description
  end as description
from products group by category, description;
