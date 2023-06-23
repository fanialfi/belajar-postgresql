select id, name, category from products order by id limit 10;


-- menggunakan control flow dan sama dengan
select 
  id, name,
  case category
    when 'Makanan' then 'Enaaaak'
    when 'Minuman' then 'Segeeeer'
    else 'Apa itu ?'
  end as category
from products order by id limit 10;

-- dengan menggunakan operator selain sama dengan
select 
  id, name, price,
  case 
    when price <= 15000 then 'Muraah'
    when price <= 20000 then 'Mahal'
    else 'Mahal Bangeeet !!!'
  end as "apakah mahal ?"
from products order by id;

-- flow control check null
select 
  id, name,
  case 
    when description is null then 'Kosong bro'
    else description
  end
from products;
