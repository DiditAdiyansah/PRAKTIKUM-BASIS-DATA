0.19045.2965]
(c) Microsoft Corporation. All rights reserved.

C:\Users\UNKRIS>CD..

C:\Users>CD..

C:\>xampp/mysql/bin>
The syntax of the command is incorrect.

C:\>cd xampp/mysql/bin>
The syntax of the command is incorrect.

C:\>cd xampp\mysql\bin>
The syntax of the command is incorrect.

C:\>cd xampp/mysql/bin

C:\xampp\mysql\bin> -u root -p
'-u' is not recognized as an internal or external command,
operable program or batch file.

C:\xampp\mysql\bin>mysql -u root -p
Enter password:
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 8
Server version: 10.4.11-MariaDB mariadb.org binary distribution

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> CREATE DATABASE db_universitas_didit;
Query OK, 1 row affected (0.004 sec)

MariaDB [(none)]> SHOW DATABASES;
+----------------------+
| Database             |
+----------------------+
| binzoo               |
| db_universitas_didit |
| db_universitas_farel |
| information_schema   |
| kusutpr2             |
| mysql                |
| performance_schema   |
| phpmyadmin           |
| test                 |
+----------------------+
9 rows in set (0.025 sec)

MariaDB [(none)]> USE db_universitas_didit;
Database changed
MariaDB [db_universitas_didit]> CREATE TABLE mahasiswa (nim CHAR (20)
    -> nama_mhs CHAR (50),
    -> CREATE TABLE mahasiswa (nim CHAR (20),
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'CHAR (50),
CREATE TABLE mahasiswa (nim CHAR (20),' at line 2
MariaDB [db_universitas_didit]> CREATE TABLE mahasiswa (nim CHAR (20),
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 1
MariaDB [db_universitas_didit]> CREATE TABLE mahasiswa (nim CHAR (20),
    -> nama_mhs CHAR (50),
    -> login CHAR(20),
    -> pass CHAR(20),
    -> umur INT,
    -> ipk real,
    -> PRIMARY KEY(nim));
Query OK, 0 rows affected (0.027 sec)

MariaDB [db_universitas_didit]> SHOW TABLE;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 1
MariaDB [db_universitas_didit]> SHOW TABLES;
+--------------------------------+
| Tables_in_db_universitas_didit |
+--------------------------------+
| mahasiswa                      |
+--------------------------------+
1 row in set (0.001 sec)

MariaDB [db_universitas_didit]> DESC mahasiswa;
+----------+----------+------+-----+---------+-------+
| Field    | Type     | Null | Key | Default | Extra |
+----------+----------+------+-----+---------+-------+
| nim      | char(20) | NO   | PRI | NULL    |       |
| nama_mhs | char(50) | YES  |     | NULL    |       |
| login    | char(20) | YES  |     | NULL    |       |
| pass     | char(20) | YES  |     | NULL    |       |
| umur     | int(11)  | YES  |     | NULL    |       |
| ipk      | double   | YES  |     | NULL    |       |
+----------+----------+------+-----+---------+-------+
6 rows in set (0.011 sec)

MariaDB [db_universitas_didit]> ALTER TABLE mahasiswa ADD COLUMN telepon CHAR(15) AFTER umur;
Query OK, 0 rows affected (0.020 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [db_universitas_didit]> DESC mahasiswa;
+----------+----------+------+-----+---------+-------+
| Field    | Type     | Null | Key | Default | Extra |
+----------+----------+------+-----+---------+-------+
| nim      | char(20) | NO   | PRI | NULL    |       |
| nama_mhs | char(50) | YES  |     | NULL    |       |
| login    | char(20) | YES  |     | NULL    |       |
| pass     | char(20) | YES  |     | NULL    |       |
| umur     | int(11)  | YES  |     | NULL    |       |
| telepon  | char(15) | YES  |     | NULL    |       |
| ipk      | double   | YES  |     | NULL    |       |
+----------+----------+------+-----+---------+-------+
7 rows in set (0.010 sec)

MariaDB [db_universitas_didit]> ALTER TABLE mahasiswa MODIFYCOLUMN nama
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'nama' at line 1
MariaDB [db_universitas_didit]> k
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'k' at line 1
MariaDB [db_universitas_didit]>  ALTER TABLE mahasiswa MODIFY COLUMN nama_mhs CHAR (20);
Query OK, 0 rows affected (0.736 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [db_universitas_didit]> DESC mahasiswa;
+----------+----------+------+-----+---------+-------+
| Field    | Type     | Null | Key | Default | Extra |
+----------+----------+------+-----+---------+-------+
| nim      | char(20) | NO   | PRI | NULL    |       |
| nama_mhs | char(20) | YES  |     | NULL    |       |
| login    | char(20) | YES  |     | NULL    |       |
| pass     | char(20) | YES  |     | NULL    |       |
| umur     | int(11)  | YES  |     | NULL    |       |
| telepon  | char(15) | YES  |     | NULL    |       |
| ipk      | double   | YES  |     | NULL    |       |
+----------+----------+------+-----+---------+-------+
7 rows in set (0.009 sec)

MariaDB [db_universitas_didit]>  ALTER TABLE mahasiswa MODIFY COLUMN nama_mhs CHAR (50);
Query OK, 0 rows affected (0.326 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [db_universitas_didit]> DESC mahasiswa;\
+----------+----------+------+-----+---------+-------+
| Field    | Type     | Null | Key | Default | Extra |
+----------+----------+------+-----+---------+-------+
| nim      | char(20) | NO   | PRI | NULL    |       |
| nama_mhs | char(50) | YES  |     | NULL    |       |
| login    | char(20) | YES  |     | NULL    |       |
| pass     | char(20) | YES  |     | NULL    |       |
| umur     | int(11)  | YES  |     | NULL    |       |
| telepon  | char(15) | YES  |     | NULL    |       |
| ipk      | double   | YES  |     | NULL    |       |
+----------+----------+------+-----+---------+-------+
7 rows in set (0.013 sec)

MariaDB [db_universitas_didit]> ALTER TABLE mahasiswa CHANGE COLUMN telepon phone CHAR (25);
Query OK, 0 rows affected (0.068 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [db_universitas_didit]> DESC mahasiswa;\
+----------+----------+------+-----+---------+-------+
| Field    | Type     | Null | Key | Default | Extra |
+----------+----------+------+-----+---------+-------+
| nim      | char(20) | NO   | PRI | NULL    |       |
| nama_mhs | char(50) | YES  |     | NULL    |       |
| login    | char(20) | YES  |     | NULL    |       |
| pass     | char(20) | YES  |     | NULL    |       |
| umur     | int(11)  | YES  |     | NULL    |       |
| phone    | char(25) | YES  |     | NULL    |       |
| ipk      | double   | YES  |     | NULL    |       |
+----------+----------+------+-----+---------+-------+
7 rows in set (0.010 sec)

MariaDB [db_universitas_didit]> ALTER TABLE mahasiswa DROP COLUMN phone;
Query OK, 0 rows affected (0.010 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [db_universitas_didit]> DESC mahassiwa;
ERROR 1146 (42S02): Table 'db_universitas_didit.mahassiwa' doesn't exist
MariaDB [db_universitas_didit]> DESC mahasiswa;
+----------+----------+------+-----+---------+-------+
| Field    | Type     | Null | Key | Default | Extra |
+----------+----------+------+-----+---------+-------+
| nim      | char(20) | NO   | PRI | NULL    |       |
| nama_mhs | char(50) | YES  |     | NULL    |       |
| login    | char(20) | YES  |     | NULL    |       |
| pass     | char(20) | YES  |     | NULL    |       |
| umur     | int(11)  | YES  |     | NULL    |       |
| ipk      | double   | YES  |     | NULL    |       |
+----------+----------+------+-----+---------+-------+
6 rows in set (0.010 sec)

MariaDB [db_universitas_didit]> INSERT INTO mahasiswa VALUES
    -> "2070231009",
    -> "Didit",
    -> "Didit123321",
    -> "Didit12",
    -> 21,
    -> 3.89
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '"2070231009",
"Didit",
"Didit123321",
"Didit12",
21,
3.89
)' at line 2
MariaDB [db_universitas_didit]> INSERT INTO mahasiswa VALUE(
    -> "2070231009",
    -> "Didit",
    -> "Didit12",
    -> "Didit123321",
    -> 21,
    -> 3.89
    -> );
Query OK, 1 row affected (0.263 sec)

MariaDB [db_universitas_didit]> SELECT * FORM mahasiswa;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FORM mahasiswa' at line 1
MariaDB [db_universitas_didit]> SELECT * FORM mahasiswa;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FORM mahasiswa' at line 1
MariaDB [db_universitas_didit]> SELECT * FROM mahasiswa;
+------------+----------+---------+-------------+------+------+
| nim        | nama_mhs | login   | pass        | umur | ipk  |
+------------+----------+---------+-------------+------+------+
| 2070231009 | Didit    | Didit12 | Didit123321 |   21 | 3.89 |
+------------+----------+---------+-------------+------+------+
1 row in set (0.019 sec)

MariaDB [db_universitas_didit]> insert into mahasiswa values
    -> ("2370231008", "Alga", "Alga134", "Alga1243", 24, 3.1),
    -> ("2370231090", Bintang", "bintang1344", "bintang9098", 22, 3.02),
    ">
    "> "232174194
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '", "bintang1344", "bintang9098", 22, 3.02),

"232174194' at line 3
MariaDB [db_universitas_didit]> ; insert into mahasiswa values ("2370231008", "Alga", "Alga134", "Alga1243", 24, 3.1), ("2370231808", "bintai", "bintai123", "bintai2314", 24, 3.4), ("2370231808", "bintai", "bintai123", "bintai2314", 24, 3.4),
 Query OK, 3 rows affected (0.090 sec)
Records: 3  Duplicates: 0  Warnings: 0

MariaDB [db_universitas_didit]> SELECT * FROM mahasiswa;
+------------+----------+-----------+-------------+------+------+
| nim        | nama_mhs | login     | pass        | umur | ipk  |
+------------+----------+-----------+-------------+------+------+
| 2070231009 | Didit    | Didit12   | Didit123321 |   21 | 3.89 |
| 2370231008 | Alga     | Alga134   | Alga1243    |   24 |  3.1 |
| 2370231808 | bintai   | bintai123 | bintai2314  |   24 |  3.4 |
| 2370241808 | bintai   | bintai123 | bintai2314  |   24 |  3.4 |
+------------+----------+-----------+-------------+------+------+
4 rows in set (0.000 sec)

MariaDB [db_universitas_didit]> delete from mahasiswa where nim = "2370231808";
Query OK, 1 row affected (0.046 sec)

MariaDB [db_universitas_didit]> SELECT * FROM mahasiswa;
+------------+----------+-----------+-------------+------+------+
| nim        | nama_mhs | login     | pass        | umur | ipk  |
+------------+----------+-----------+-------------+------+------+
| 2070231009 | Didit    | Didit12   | Didit123321 |   21 | 3.89 |
| 2370231008 | Alga     | Alga134   | Alga1243    |   24 |  3.1 |
| 2370241808 | bintai   | bintai123 | bintai2314  |   24 |  3.4 |
+------------+----------+-----------+-------------+------+------+
3 rows in set (0.000 sec)

MariaDB [db_universitas_didit]> SELECT * FROM mahasiswa WHERE nim = 2370231009;
Empty set (0.021 sec)

MariaDB [db_universitas_didit]> SELECT * FROM mahasiswa WHERE nim = 2070231009;
+------------+----------+---------+-------------+------+------+
| nim        | nama_mhs | login   | pass        | umur | ipk  |
+------------+----------+---------+-------------+------+------+
| 2070231009 | Didit    | Didit12 | Didit123321 |   21 | 3.89 |
+------------+----------+---------+-------------+------+------+
1 row in set (0.000 sec)

MariaDB [db_universitas_didit]> SELECT * FROM mahasiswa WHERE umur > 22;
+------------+----------+-----------+------------+------+------+
| nim        | nama_mhs | login     | pass       | umur | ipk  |
+------------+----------+-----------+------------+------+------+
| 2370231008 | Alga     | Alga134   | Alga1243   |   24 |  3.1 |
| 2370241808 | bintai   | bintai123 | bintai2314 |   24 |  3.4 |
+------------+----------+-----------+------------+------+------+
2 rows in set (0.004 sec)

MariaDB [db_universitas_didit]> SELECT * mahasiswa WHERE ipk BETWEEN 3.50 AND 4.00;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'mahasiswa WHERE ipk BETWEEN 3.50 AND 4.00' at line 1
MariaDB [db_universitas_didit]> SELECT * FROM  mahasiswa WHERE ipk BETWEEN 3.50 AND 4.00;
+------------+----------+---------+-------------+------+------+
| nim        | nama_mhs | login   | pass        | umur | ipk  |
+------------+----------+---------+-------------+------+------+
| 2070231009 | Didit    | Didit12 | Didit123321 |   21 | 3.89 |
+------------+----------+---------+-------------+------+------+
1 row in set (0.005 sec)

MariaDB [db_universitas_didit]> SELECT * FROM  mahasiswa WHERE ipk NOT BETWEEN 3.50 AND 4.00;
+------------+----------+-----------+------------+------+------+
| nim        | nama_mhs | login     | pass       | umur | ipk  |
+------------+----------+-----------+------------+------+------+
| 2370231008 | Alga     | Alga134   | Alga1243   |   24 |  3.1 |
| 2370241808 | bintai   | bintai123 | bintai2314 |   24 |  3.4 |
+------------+----------+-----------+------------+------+------+
2 rows in set (0.000 sec)

MariaDB [db_universitas_didit]> SELECT * FROM  mahasiswa ORDER BY nama
    -> ;
ERROR 1054 (42S22): Unknown column 'nama' in 'order clause'
MariaDB [db_universitas_didit]> SELECT * FROM  mahasiswa ORDER BY nama_mhs ASC;
+------------+----------+-----------+-------------+------+------+
| nim        | nama_mhs | login     | pass        | umur | ipk  |
+------------+----------+-----------+-------------+------+------+
| 2370231008 | Alga     | Alga134   | Alga1243    |   24 |  3.1 |
| 2370241808 | bintai   | bintai123 | bintai2314  |   24 |  3.4 |
| 2070231009 | Didit    | Didit12   | Didit123321 |   21 | 3.89 |
+------------+----------+-----------+-------------+------+------+
3 rows in set (0.011 sec)

MariaDB [db_universitas_didit]> SELECT * FROM  mahasiswa ORDER BY nama_mhs DESC;
+------------+----------+-----------+-------------+------+------+
| nim        | nama_mhs | login     | pass        | umur | ipk  |
+------------+----------+-----------+-------------+------+------+
| 2070231009 | Didit    | Didit12   | Didit123321 |   21 | 3.89 |
| 2370241808 | bintai   | bintai123 | bintai2314  |   24 |  3.4 |
| 2370231008 | Alga     | Alga134   | Alga1243    |   24 |  3.1 |
+------------+----------+-----------+-------------+------+------+
3 rows in set (0.000 sec)

MariaDB [db_universitas_didit]> SELECT * FROM  mahasiswa ORDER BY ipk DESC;
+------------+----------+-----------+-------------+------+------+
| nim        | nama_mhs | login     | pass        | umur | ipk  |
+------------+----------+-----------+-------------+------+------+
| 2070231009 | Didit    | Didit12   | Didit123321 |   21 | 3.89 |
| 2370241808 | bintai   | bintai123 | bintai2314  |   24 |  3.4 |
| 2370231008 | Alga     | Alga134   | Alga1243    |   24 |  3.1 |
+------------+----------+-----------+-------------+------+------+
3 rows in set (0.000 sec)

MariaDB [db_universitas_didit]> SELECT * FROM  mahasiswa ORDER BY ipk ASC;
+------------+----------+-----------+-------------+------+------+
| nim        | nama_mhs | login     | pass        | umur | ipk  |
+------------+----------+-----------+-------------+------+------+
| 2370231008 | Alga     | Alga134   | Alga1243    |   24 |  3.1 |
| 2370241808 | bintai   | bintai123 | bintai2314  |   24 |  3.4 |
| 2070231009 | Didit    | Didit12   | Didit123321 |   21 | 3.89 |
+------------+----------+-----------+-------------+------+------+
3 rows in set (0.000 sec)

MariaDB [db_universitas_didit]> SELECT * FROM  mahasiswa nama_mahasiswa LIKE "a%";
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'LIKE "a%"' at line 1
MariaDB [db_universitas_didit]> SELECT * FROM  mahasiswa nama_mahasiswa LIKE "A%";
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'LIKE "A%"' at line 1
MariaDB [db_universitas_didit]> SELECT * FROM  mahasiswa nama_mhs LIKE "A%";
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'LIKE "A%"' at line 1
MariaDB [db_universitas_didit]> SELECT * FROM  mahasiswa nama_mhs LIKE "A%";
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'LIKE "A%"' at line 1
MariaDB [db_universitas_didit]> SELECT * FROM  mahasiswa nama_mhs LIKE "%a";
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'LIKE "%a"' at line 1
MariaDB [db_universitas_didit]> SELECT * FROM  mahasiswa WHERE nama_mhs LIKE "%a";
+------------+----------+---------+----------+------+------+
| nim        | nama_mhs | login   | pass     | umur | ipk  |
+------------+----------+---------+----------+------+------+
| 2370231008 | Alga     | Alga134 | Alga1243 |   24 |  3.1 |
+------------+----------+---------+----------+------+------+
1 row in set (0.000 sec)

MariaDB [db_universitas_didit]> SELECT * FROM  mahasiswa WHERE nama_mhs LIKE "A%";
+------------+----------+---------+----------+------+------+
| nim        | nama_mhs | login   | pass     | umur | ipk  |
+------------+----------+---------+----------+------+------+
| 2370231008 | Alga     | Alga134 | Alga1243 |   24 |  3.1 |
+------------+----------+---------+----------+------+------+
1 row in set (0.000 sec)

MariaDB [db_universitas_didit]> SELECT * FROM  mahasiswa WHERE nama_mhs LIKE "%A%";
+------------+----------+-----------+------------+------+------+
| nim        | nama_mhs | login     | pass       | umur | ipk  |
+------------+----------+-----------+------------+------+------+
| 2370231008 | Alga     | Alga134   | Alga1243   |   24 |  3.1 |
| 2370241808 | bintai   | bintai123 | bintai2314 |   24 |  3.4 |
+------------+----------+-----------+------------+------+------+
2 rows in set (0.000 sec)

MariaDB [db_universitas_didit]> CREATE TABLE dosen (
    ->           Nik INT(11) AUTO_INCREMENT PRIMARY KEY,
    ->           Inisial CHAR(3) UNIQUE KEY,
    ->           nama_dosen CHAR(50),
    ->           Status ENUM('T', 'LB') DEFAULT 'T',
    ->           Sex ENUM('L', 'P') DEFAULT 'L',
    ->           Agama CHAR(20),
    ->           Login CHAR(20),
    ->           Pass CHAR(20),
    ->           Alamat VARCHAR(50),
    ->           Kota VARCHAR(20) DEFAULT 'Purwokerto',
    ->           Email VARCHAR(50),
    ->           Nohp VARCHAR(12),
    ->           Salary INT
    ->         );
Query OK, 0 rows affected (0.029 sec)

MariaDB [db_universitas_didit]> CREATE TABLE mengajar (
    ->       Id_mengajar INT AUTO_INCREMENT PRIMARY KEY,
    ->       jam_ke INTEGER,
    ->       Hari VARCHAR(10),
    ->       mk_id CHAR(10),
    ->       Inisial CHAR(3),
    ->       kode_prodi CHAR(6),
    ->       ruang_id CHAR(3),
    ->       FOREIGN KEY (Inisial) REFERENCES dosen(Inisial)
    ->     );
Query OK, 0 rows affected (0.025 sec)

MariaDB [db_universitas_didit]> INSERT INTO dosen VALUES
    -> ('1','DS','Didi Supriyadi','T','L','Islam','didi','didi','Jl. Sunan Bonang RT 01/03 Banjaranyar','Brebes','didisupriyadi@st3telkom.ac.id','085743622236','5000000'),
    -> ('2','STS','Sisilia Thya Safitri','T','P','Kristen','sisil','sisil','Jl. Antah berantah RT 001/005 Banjarbaru','Jambi','sisil@st3telkom.ac.id','085875997546','5000000'),
    -> ('3','TW','Tenia Wahyuningrum','T','P','Islam','tenia','tenia','Jl. Ledug RT 01/03 Banyumas','Purwokerto','tenia@st3telkom.ac.id','085746795432','5500000'),
    -> ('4','DJ','Dwi Januarita AK','T','P','Islam','ita','ita','Jl. Sunan Kudus RT 01/03 Jekulo','Kudus','ita@st3telkom.ac.id','085852829809','4000000'),
    -> ('5','IS','Irwan Susanto','T','L','Islam','irwan','irwan','Jl. Tanjung RT 01/03 Banyumas','Purwokerto','irwan@st3telkom.ac.id','081327593529','5500000'),
    -> ('6','SL','Sarlan','LB','L','Islam','sarlan','sarlan','Jl. Jend. Sudirman RT 01/03 Banyumas','Purwokerto','sarlan@st3telkom.ac.id','081634462738','3500000'),
    -> ('7','DN','Daniel','LB','L','Kristen','daniel','daniel','Jl. Tanjung RT 04/07 Banyumas','Purwokerto','daniel@st3telkom.ac.id','081365047309','4500000');
Query OK, 7 rows affected (0.006 sec)
Records: 7  Duplicates: 0  Warnings: 0

MariaDB [db_universitas_didit]> INSERT INTO mengajar (Id_mengajar, jam_ke, Hari, mk_id, Inisial, kode_prodi, ruang_id)
    -> VALUES
    -> (222, 2, 'Selasa', '04', 'DJ', 'S1 IF', '309'),
    -> (333, 1, 'Rabu', '01', 'DN', 'S1 TT', '409');
Query OK, 2 rows affected (0.008 sec)
Records: 2  Duplicates: 0  Warnings: 0

MariaDB [db_universitas_didit]> show tables;
+--------------------------------+
| Tables_in_db_universitas_didit |
+--------------------------------+
| dosen                          |
| mahasiswa                      |
| mengajar                       |
+--------------------------------+
3 rows in set (0.000 sec)

MariaDB [db_universitas_didit]> SELECT COUNT(nama_dosen) as "jumlah dosen" FROM dosen;
+--------------+
| jumlah dosen |
+--------------+
|            7 |
+--------------+
1 row in set (0.015 sec)

MariaDB [db_universitas_didit]> SELECT AVG(salary) FROM dosen;
+--------------+
| AVG(salary)  |
+--------------+
| 4714285.7143 |
+--------------+
1 row in set (0.004 sec)

MariaDB [db_universitas_didit]> SELECT MIN(salary) FROM dosen;
+-------------+
| MIN(salary) |
+-------------+
|     3500000 |
+-------------+
1 row in set (0.002 sec)

MariaDB [db_universitas_didit]> SELECT MAX(salary) FROM dosen;
+-------------+
| MAX(salary) |
+-------------+
|     5500000 |
+-------------+
1 row in set (0.000 sec)

MariaDB [db_universitas_didit]> SELECT SUM(salary) FROM dosen;
+-------------+
| SUM(salary) |
+-------------+
|    33000000 |
+-------------+
1 row in set (0.000 sec)

MariaDB [db_universitas_didit]> SELECT * FROM dosen;
+-----+---------+----------------------+--------+------+---------+--------+--------+------------------------------------------+------------+-------------------------------+--------------+---------+
| Nik | Inisial | nama_dosen           | Status | Sex  | Agama   | Login  | Pass   | Alamat                                   | Kota       | Email                         | Nohp         | Salary  |
+-----+---------+----------------------+--------+------+---------+--------+--------+------------------------------------------+------------+-------------------------------+--------------+---------+
|   1 | DS      | Didi Supriyadi       | T      | L    | Islam   | didi   | didi   | Jl. Sunan Bonang RT 01/03 Banjaranyar    | Brebes     | didisupriyadi@st3telkom.ac.id | 085743622236 | 5000000 |
|   2 | STS     | Sisilia Thya Safitri | T      | P    | Kristen | sisil  | sisil  | Jl. Antah berantah RT 001/005 Banjarbaru | Jambi      | sisil@st3telkom.ac.id         | 085875997546 | 5000000 |
|   3 | TW      | Tenia Wahyuningrum   | T      | P    | Islam   | tenia  | tenia  | Jl. Ledug RT 01/03 Banyumas              | Purwokerto | tenia@st3telkom.ac.id         | 085746795432 | 5500000 |
|   4 | DJ      | Dwi Januarita AK     | T      | P    | Islam   | ita    | ita    | Jl. Sunan Kudus RT 01/03 Jekulo          | Kudus      | ita@st3telkom.ac.id           | 085852829809 | 4000000 |
|   5 | IS      | Irwan Susanto        | T      | L    | Islam   | irwan  | irwan  | Jl. Tanjung RT 01/03 Banyumas            | Purwokerto | irwan@st3telkom.ac.id         | 081327593529 | 5500000 |
|   6 | SL      | Sarlan               | LB     | L    | Islam   | sarlan | sarlan | Jl. Jend. Sudirman RT 01/03 Banyumas     | Purwokerto | sarlan@st3telkom.ac.id        | 081634462738 | 3500000 |
|   7 | DN      | Daniel               | LB     | L    | Kristen | daniel | daniel | Jl. Tanjung RT 04/07 Banyumas            | Purwokerto | daniel@st3telkom.ac.id        | 081365047309 | 4500000 |
+-----+---------+----------------------+--------+------+---------+--------+--------+------------------------------------------+------------+-------------------------------+--------------+---------+
7 rows in set (0.000 sec)

MariaDB [db_universitas_didit]> SELECT @avgsalary:=AVG
    -> ;
ERROR 1054 (42S22): Unknown column 'AVG' in 'field list'
MariaDB [db_universitas_didit]> SELECT @avgsalary:=AVG(salary) FORM dosen;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'dosen' at line 1
MariaDB [db_universitas_didit]> SELECT @avgsalary:=AVG(salary) FROM dosen;
+-------------------------+
| @avgsalary:=AVG(salary) |
+-------------------------+
|       4714285.714285714 |
+-------------------------+
1 row in set (0.004 sec)

MariaDB [db_universitas_didit]> SELECT COUNT(nama_dosen) FROM dosen WHERE salary > @avgsalary;
+-------------------+
| COUNT(nama_dosen) |
+-------------------+
|                 4 |
+-------------------+
1 row in set (0.003 sec)

MariaDB [db_universitas_didit]>MariaDB [db_universitas_didit]> SELECT Agama, COUNT(*) As jumlah FROM dosen GROUP BY AGAMA;
+---------+--------+
| Agama   | jumlah |
+---------+--------+
| Islam   |      5 |
| Kristen |      2 |
+---------+--------+
2 rows in set (0.003 sec)
MariaDB [db_universitas_didit]> SELECT dosen.nama_dosen, dosen.Nik, dosen.Inisial, mengajar.Hari, mengajar.Jam_ke FROM dosen, mengajar WHERE dosen.Inisial = mengajar.Inisial;
+------------------+-----+---------+--------+--------+
| nama_dosen       | Nik | Inisial | Hari   | Jam_ke |
+------------------+-----+---------+--------+--------+
| Dwi Januarita AK |   4 | DJ      | Selasa |      2 |
| Daniel           |   7 | DN      | Rabu   |      1 |
+------------------+-----+---------+--------+--------+
2 rows in set (0.163 sec)

MariaDB [db_universitas_didit]> SELECT dosen.nama_dosen, dosen.Nik, dosen.Inisial, mengajar.Hari, mengajar.Jam_ke FROM dosen INNER JOINT, mengajar WHERE dosen.Inisial = mengajar.Inisial;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'JOINT, mengajar WHERE dosen.Inisial = mengajar.Inisial' at line 1
MariaDB [db_universitas_didit]> SELECT dosen.nama_dosen, dosen.Nik, dosen.Inisial, mengajar.Hari, mengajar.Jam_ke FROM dosen INNER JOIN, mengajar WHERE dosen.Inisial = mengajar.Inisial;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near ' mengajar WHERE dosen.Inisial = mengajar.Inisial' at line 1
MariaDB [db_universitas_didit]> SELECT dosen.nama_dosen, dosen.Nik, dosen.Inisial, mengajar.Hari, mengajar.Jam_ke FROM dosen INNER JOIN, mengajar ON dosen.Inisial = mengajar.Inisial;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near ' mengajar ON dosen.Inisial = mengajar.Inisial' at line 1
MariaDB [db_universitas_didit]> SELECT dosen.nama_dosen, dosen.Nik, dosen.Inisial, mengajar.Hari, mengajar.Jam_ke FROM dosen INNER JOIN, mengajar ON dosen.Inisial = mengajar.Inisial;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near ' mengajar ON dosen.Inisial = mengajar.Inisial' at line 1
MariaDB [db_universitas_didit]> SELECT dosen.nama_dosen, dosen.Nik, dosen.Inisial, mengajar.Hari, mengajar.Jam_ke FROM dosen INNER JOIN mengajar ON dosen.Inisial = mengajar.Inisial;
+------------------+-----+---------+--------+--------+
| nama_dosen       | Nik | Inisial | Hari   | Jam_ke |
+------------------+-----+---------+--------+--------+
| Dwi Januarita AK |   4 | DJ      | Selasa |      2 |
| Daniel           |   7 | DN      | Rabu   |      1 |
+------------------+-----+---------+--------+--------+
2 rows in set (0.000 sec)

MariaDB [db_universitas_didit]> SELECT dosen.nama_dosen, dosen.Nik, dosen.Inisial, mengajar.Hari, mengajar.Jam_ke FROM dosen LEFT JOIN mengajar ON dosen.Inisial = mengajar.Inisial;
+----------------------+-----+---------+--------+--------+
| nama_dosen           | Nik | Inisial | Hari   | Jam_ke |
+----------------------+-----+---------+--------+--------+
| Dwi Januarita AK     |   4 | DJ      | Selasa |      2 |
| Daniel               |   7 | DN      | Rabu   |      1 |
| Didi Supriyadi       |   1 | DS      | NULL   |   NULL |
| Sisilia Thya Safitri |   2 | STS     | NULL   |   NULL |
| Tenia Wahyuningrum   |   3 | TW      | NULL   |   NULL |
| Irwan Susanto        |   5 | IS      | NULL   |   NULL |
| Sarlan               |   6 | SL      | NULL   |   NULL |
+----------------------+-----+---------+--------+--------+
7 rows in set (0.059 sec)

MariaDB [db_universitas_didit]> SELECT dosen.nama_dosen, dosen.Nik, dosen.Inisial, mengajar.Hari, mengajar.Jam_ke FROM dosen RIGHT JOIN mengajar ON dosen.Inisial = mengajar.Inisial;
+------------------+------+---------+--------+--------+
| nama_dosen       | Nik  | Inisial | Hari   | Jam_ke |
+------------------+------+---------+--------+--------+
| Dwi Januarita AK |    4 | DJ      | Selasa |      2 |
| Daniel           |    7 | DN      | Rabu   |      1 |
+------------------+------+---------+--------+--------+
2 rows in set (0.000 sec)

MariaDB [db_universitas_didit]>