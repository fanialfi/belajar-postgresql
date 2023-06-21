<h1 id='tipeDataNumber'> Tipe Data Number</h1>

secara garis besar, tipe data number di PostgreSQL ada dua jenis :

- Integer, atau tipe data bilangan bulat.
- Floating Point, atau tipe data bilangan pecahan.

| name               | storage size | description                     | range                                                                                    |
| ------------------ | ------------ | ------------------------------- | ---------------------------------------------------------------------------------------- |
| `smallint`         | 2 byte       | small-range integer             | -32768 to +327767                                                                        |
| `integer`          | 4 byte       | typical choice for integer      | -2147483648 to +2147483647                                                               |
| `bigint`           | 8 byte       | large-range integer             | -9223372036854775808 to +9223372036854775807                                             |
| `decimal`          | variable     | user-specified precision, exact | up to 131072 digits before the decimal point; up to 16383 digits after the decimal point |
| `numeric`          | variable     | user-specified precision, exact | up to 131072 digits before the decimal point; up to 16383 digits after the decimal point |
| `real`             | 4 byte       | variable-precision, inexact     | 6 decimal digits precision                                                               |
| `double precision` | 8 byte       | variable-precision, inexact     | 15 decimal digits precision                                                              |
| `smallserial`      | 2 byte       | small autoincrementing integer  | 1 to 32767                                                                               |
| `serial`           | 4 byte       | autoincrementing integer        | 1 to 2147483647                                                                          |
| `bigserial`        | 8 byte       | large autoincrementing integer  | 1 to 9223372036854775807                                                                 |

<h2 id='integer'>INTEGER</h2>

| integer           | ukuran penyimpanan | deskripsi                  | jangkauan                                    |
| ----------------- | ------------------ | -------------------------- | -------------------------------------------- |
| `smallint`        | 2 byte             | small range integer        | -32768 to +327767                            |
| `integer` / `int` | 4 byte             | typical choice for integer | -2147483648 to +2147483647                   |
| `bigint`          | 8 byte             | large-range integer        | -9223372036854775808 to +9223372036854775807 |

<h2 id='arbitrary'>ARBITRARY PRECISION</h2>

merupakan tipe data khusus yang bisa ditentukan jumplah precision dan scale nya.

penulisan `NUMERIC(precision,scale)` atau `NUMERIC(precision)` secara default akan menggunakan scale 0.

| NUMERIC        | MIN     | MAX     |
| -------------- | ------- | ------- |
| `NUMERIC(5,2)` | -999.99 | +999.99 |
| `NUMERIC(5,0)` | -99999  | +99999  |
| `NUMERIC(3,1)` | -99.9   | +99.9   |
| `NUMERIC(3)`   | -999    | +999    |

<h2 id='float'>FLOATING POINT</h2>

| float              | ukuran penyimpanan | deskripsi                   | jangkauan                   |
| ------------------ | ------------------ | --------------------------- | --------------------------- |
| `real`             | 4 byte             | variable-precision, inexact | 6 decimal digits precision  |
| `double precision` | 8 byte             | variable-precision, inexact | 15 decimal digits precision |

<h2 id='serial'>SERIAL</h2>

tipe data `smallserial`, `serial`, `bigserial` bukan tipe data yang sebenarnya, tapi hanya notasi yang digunakan untuk membuat identifikasi colom yang unik (seperti properti untuk `AUTO_INCREMENT` di beberapa database yang lain).

| serial        | ukuran penyimpanan | deskripsi                      | jangkauan                |
| ------------- | ------------------ | ------------------------------ | ------------------------ |
| `smallserial` | 2 byte             | small autoincrementing integer | 1 to 32767               |
| `serial`      | 4 byte             | autoincrementing integer       | 1 to 2147483647          |
| `bigserial`   | 8 byte             | large autoincrementing integer | 1 to 9223372036854775807 |
