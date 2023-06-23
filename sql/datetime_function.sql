select age(current_date, '2005-11-16') as "umurku saat ini";
select current_date as "tanggal saat ini", current_time as "waktu saat ini dengan time zone", current_timestamp as "tanggal dan waktu saat ini dengan time zone";

-- mengekstrak datetime
select current_timestamp as "waktu saat ini", extract(year from current_timestamp) as tahun, extract(month from current_timestamp) as bulan, extract(day from current_timestamp) as tanggal, extract(hours from current_timestamp) as jam, extract(minute from current_timestamp) as menit, extract(second from current_timestamp) as detik;

select id, name, created_at, extract(day from created_at) as tanggal, extract(hours from created_at) as jam from products order by id limit 10;

select localtime, now() as "current date and time", extract(epoch from now()) as "epoch", extract(timezone from now()) / 3600 as timezone;

/*
  function now() sama saja dengan current_timestamp,
  extract(epoch from source) -> mengembalikan sebuah number yang di hitung sejak 1970-01-01 00:00:00 waktu UTC
  extract(timezone from source) -> mengembalikan jarak waktu setempat dengan UTC dalam format second
*/
