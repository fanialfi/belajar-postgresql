-- membuat sequence
create sequence contoh_sequence;


-- memanggil sequence otomatis increment
select nextval('contoh_sequence');


-- mengambil nilai terakhir sequence
select currval('contoh_sequence');
