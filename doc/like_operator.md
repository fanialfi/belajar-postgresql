Adalah operator yang bisa digunakan untuk mencari sebagian data dalam string, cocok ketika ingin mencari sebagian kata dalam string.
Namun operator ini sangat lambat, oleh karena itu tidak di sarankan jika data nya sudah terlalu besar.
Operator `LIKE` case sensitif, jadi huruf besar dan kecil sangat berpengaruh.
Jika tidak ingin case sensitif, maka bisa dengan menggunakan `ILIKE`.

hasil like operator

| like operator   | hasil                     |
| --------------- | ------------------------- |
| `LIKE` 'b%'     | string dengan awalan b    |
| `LIKE` '%a'     | string dengan awalan a    |
| `LIKE` '%fani%' | string yang berisi 'fani' |
| `NOT LIKE`      | tidak like                |
