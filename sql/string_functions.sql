-- menggabungkan dua string
select 'Post' || 'greSQL' as concat, concat('fani',' ','alfirdaus') as concat2;

-- mencari posisi substring didalam string
select position('alfi' in 'fanialfi');

-- uppercase
select upper('fanialfi') as uppercase, lower('FANIALFI') as lowercase, length('fanialfi');

select md5('fanialfirdaus@gmail.com');

select pg_client_encoding() as "encoding yang di gunakan";

select replace('fani alfi',' ', '_');

select repeat('fani',3);

select reverse('inaf');


