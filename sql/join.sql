select
penjualan.id as "id pembeli",
penjualan.id_product as "id produk",
penjualan.id_pembeli as "id penjual",
penjualan.jumplah,
sellers.nama as "nama penjual",
products.name as "nama produk",
products.price as "harga produk"
from penjualan
join sellers on sellers.email = penjualan.id_pembeli -- melakukan multiple join
join products on products.id = penjualan.id_product;
