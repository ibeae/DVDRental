--------------------------------------------------------
--  File created - Jumat-Januari-04-2013   
--------------------------------------------------------
DROP TABLE "CHAT";
DROP TABLE "DIPINJAM";
DROP TABLE "GENRE";
DROP TABLE "JENISIDENTITAS";
DROP TABLE "JENISKEPING";
DROP TABLE "KEWENANGAN";
DROP TABLE "KOLEKSI";
DROP TABLE "MEMBER";
DROP TABLE "NOTA";
DROP TABLE "PENAWARANSPESIAL";
DROP TABLE "PENDINGDIPINJAM";
DROP TABLE "PENDINGNOTA";
DROP TABLE "PENGATURAN";
DROP TABLE "PENGGUNA";
DROP TABLE "STOKKOLEKSI";
--------------------------------------------------------
--  DDL for Table CHAT
--------------------------------------------------------

  CREATE TABLE "CHAT" ("IDCHAT" NUMBER, "TIMESTAMP" TIMESTAMP (6), "SENDER" NUMBER, "TEXT" CLOB, "DIBACA" NUMBER)
/
--------------------------------------------------------
--  DDL for Table DIPINJAM
--------------------------------------------------------

  CREATE TABLE "DIPINJAM" ("KODEDIPINJAM" CHAR(12), "KODESTOK" CHAR(12), "NONOTA" CHAR(12), "HARGASEWA" FLOAT(126), "HARGADENDA" FLOAT(126))
/
--------------------------------------------------------
--  DDL for Table GENRE
--------------------------------------------------------

  CREATE TABLE "GENRE" ("KODEKATEGORI" CHAR(4), "NAMAKATEGORI" VARCHAR2(50), "HARGASEWAKATEGORI" FLOAT(126), "HARGADENDAKATEGORI" FLOAT(126))
/
--------------------------------------------------------
--  DDL for Table JENISIDENTITAS
--------------------------------------------------------

  CREATE TABLE "JENISIDENTITAS" ("ID" NUMBER(*,0), "JENIS" VARCHAR2(255))
/
--------------------------------------------------------
--  DDL for Table JENISKEPING
--------------------------------------------------------

  CREATE TABLE "JENISKEPING" ("ID" NUMBER(*,0), "JENIS" VARCHAR2(255))
/
--------------------------------------------------------
--  DDL for Table KEWENANGAN
--------------------------------------------------------

  CREATE TABLE "KEWENANGAN" ("KODEKEWENANGAN" NUMBER(*,0), "NAMAKEWENANGAN" VARCHAR2(50), "MASTERPELANGGAN" NUMBER(*,0), "MASTERKOLEKSI" NUMBER(*,0), "MASTERSTOK" NUMBER(*,0), "TRANSAKSI" NUMBER(*,0), "LAPORANPERTRANSAKSI" NUMBER(*,0), "LAPORANTRANSAKSI" NUMBER(*,0), "LAPORANKEUANGAN" NUMBER(*,0), "HALLOFFAME" NUMBER(*,0), "PENGATURANSISTEM" NUMBER(*,0), "PENGATURANKEWENANGAN" NUMBER(*,0), "PENGATURANPENGGUNA" NUMBER(*,0), "PENGATURANPENAWARANMENARIK" NUMBER(*,0), "JENDELAPERTAMA" NUMBER(*,0))
/
--------------------------------------------------------
--  DDL for Table KOLEKSI
--------------------------------------------------------

  CREATE TABLE "KOLEKSI" ("KODEKOLEKSI" CHAR(12), "KODEKATEGORI" CHAR(4), "NAMAITEM" VARCHAR2(255), "DEKRIPSIITEM" CLOB, "JENIS" NUMBER(*,0), "BIAYASEWAFILM" FLOAT(126), "BIAYADENDAFILM" FLOAT(126), "COVERART" BLOB)
/
--------------------------------------------------------
--  DDL for Table MEMBER
--------------------------------------------------------

  CREATE TABLE "MEMBER" ("KODEMEMBER" CHAR(10), "NAMAMEMBER" VARCHAR2(255), "JENISIDENTITAS" NUMBER(*,0), "NOMORIDENTITAS" VARCHAR2(255))
/
--------------------------------------------------------
--  DDL for Table NOTA
--------------------------------------------------------

  CREATE TABLE "NOTA" ("NONOTA" CHAR(12), "KODEOPERATOR" CHAR(5), "KODEPENAWARANSPESIAL" NUMBER(*,0), "KODEMEMBER" CHAR(10), "TGLTRANSAKSI" DATE, "TGLKEMBALI" DATE, "TGLREALISASIKEMBALI" DATE)
/
--------------------------------------------------------
--  DDL for Table PENAWARANSPESIAL
--------------------------------------------------------

  CREATE TABLE "PENAWARANSPESIAL" ("KODEPENAWARANSPESIAL" NUMBER(*,0), "NAMAPENAWARANSPESIAL" VARCHAR2(255), "DISKON" FLOAT(126), "MULAI" DATE, "AKHIR" DATE)
/
--------------------------------------------------------
--  DDL for Table PENDINGDIPINJAM
--------------------------------------------------------

  CREATE TABLE "PENDINGDIPINJAM" ("NOPENDINGDIPINJAM" NUMBER(*,0), "NOPENDINGNOTA" NUMBER(*,0), "KODEKOLEKSI" CHAR(12))
/
--------------------------------------------------------
--  DDL for Table PENDINGNOTA
--------------------------------------------------------

  CREATE TABLE "PENDINGNOTA" ("NOPENDINGNOTA" NUMBER(*,0), "KODEMEMBER" CHAR(10), "DIPROSES" NUMBER(*,0))
/
--------------------------------------------------------
--  DDL for Table PENGATURAN
--------------------------------------------------------

  CREATE TABLE "PENGATURAN" ("ID" NUMBER(*,0), "ATRIBUT" VARCHAR2(50), "DATA" VARCHAR2(255))
/
--------------------------------------------------------
--  DDL for Table PENGGUNA
--------------------------------------------------------

  CREATE TABLE "PENGGUNA" ("KODEOPERATOR" CHAR(5), "KODEKEWENANGAN" NUMBER(*,0), "USERNAME" VARCHAR2(20), "PASSWORD" VARCHAR2(255), "ISLOGIN" NUMBER(*,0), "NAMALENGKAP" VARCHAR2(50))
/
--------------------------------------------------------
--  DDL for Table STOKKOLEKSI
--------------------------------------------------------

  CREATE TABLE "STOKKOLEKSI" ("KODESTOK" CHAR(12), "KODEKOLEKSI" CHAR(12), "KONDISI" NUMBER(*,0), "STATUS" NUMBER(*,0), "HARGA" FLOAT(126), "TGLBELI" DATE)
/
REM INSERTING into CHAT
SET DEFINE OFF;
Insert into CHAT (IDCHAT,TIMESTAMP,SENDER,DIBACA) values ('3',to_timestamp('04-01-2013 10.43.04,000000000','DD-MM-RRRR HH24.MI.SS,FF'),'1','1');
Insert into CHAT (IDCHAT,TIMESTAMP,SENDER,DIBACA) values ('0',to_timestamp('04-01-2013 02.22.03,000000000','DD-MM-RRRR HH24.MI.SS,FF'),'1','1');
Insert into CHAT (IDCHAT,TIMESTAMP,SENDER,DIBACA) values ('1',to_timestamp('04-01-2013 02.22.18,000000000','DD-MM-RRRR HH24.MI.SS,FF'),'1','1');
Insert into CHAT (IDCHAT,TIMESTAMP,SENDER,DIBACA) values ('2',to_timestamp('04-01-2013 10.42.41,000000000','DD-MM-RRRR HH24.MI.SS,FF'),'0','1');
REM INSERTING into DIPINJAM
SET DEFINE OFF;
Insert into DIPINJAM (KODEDIPINJAM,KODESTOK,NONOTA,HARGASEWA,HARGADENDA) values ('VCDNNPZ43724','BAWTYO214677',null,'250',null);
Insert into DIPINJAM (KODEDIPINJAM,KODESTOK,NONOTA,HARGASEWA,HARGADENDA) values ('VCDMYAF88473','UFXBIC513673',null,'2100','0');
Insert into DIPINJAM (KODEDIPINJAM,KODESTOK,NONOTA,HARGASEWA,HARGADENDA) values ('VCDGVOW10480','ZKJJ238848WE',null,'2100','0');
Insert into DIPINJAM (KODEDIPINJAM,KODESTOK,NONOTA,HARGASEWA,HARGADENDA) values ('VCDNNKY06513','VBKFZV147088',null,'2100','0');
Insert into DIPINJAM (KODEDIPINJAM,KODESTOK,NONOTA,HARGASEWA,HARGADENDA) values ('VCDLMOF28487','BAWTYO214677',null,'1750','0');
Insert into DIPINJAM (KODEDIPINJAM,KODESTOK,NONOTA,HARGASEWA,HARGADENDA) values ('VCDCUKU08278','VBKFZV147088',null,'1750','0');
Insert into DIPINJAM (KODEDIPINJAM,KODESTOK,NONOTA,HARGASEWA,HARGADENDA) values ('VCDWMOK26714','VBKFZV147088',null,'1750',null);
Insert into DIPINJAM (KODEDIPINJAM,KODESTOK,NONOTA,HARGASEWA,HARGADENDA) values ('VCDGETU46814','VBKFZV147088',null,'1750',null);
Insert into DIPINJAM (KODEDIPINJAM,KODESTOK,NONOTA,HARGASEWA,HARGADENDA) values ('VCDLHKK47762','KILDAH071821',null,'2450',null);
Insert into DIPINJAM (KODEDIPINJAM,KODESTOK,NONOTA,HARGASEWA,HARGADENDA) values ('VCDNZNC55071','NXWGDE535315',null,'1750',null);
Insert into DIPINJAM (KODEDIPINJAM,KODESTOK,NONOTA,HARGASEWA,HARGADENDA) values ('VCDKNRO04537','ZFKLOG360205',null,'2100',null);
Insert into DIPINJAM (KODEDIPINJAM,KODESTOK,NONOTA,HARGASEWA,HARGADENDA) values ('VCDXMBF83664','ZFKLOG360205',null,'1750',null);
Insert into DIPINJAM (KODEDIPINJAM,KODESTOK,NONOTA,HARGASEWA,HARGADENDA) values ('VCDZIGW54506','OHJSVE088561',null,'2450',null);
Insert into DIPINJAM (KODEDIPINJAM,KODESTOK,NONOTA,HARGASEWA,HARGADENDA) values ('VCDNBFH48621','ZKJJ238848WE',null,'2100','0');
Insert into DIPINJAM (KODEDIPINJAM,KODESTOK,NONOTA,HARGASEWA,HARGADENDA) values ('VCDGZXX71766','IHGPSM707566',null,'1750','0');
Insert into DIPINJAM (KODEDIPINJAM,KODESTOK,NONOTA,HARGASEWA,HARGADENDA) values ('VCDWIQG66715','BAWTYO214677',null,'1750','0');
Insert into DIPINJAM (KODEDIPINJAM,KODESTOK,NONOTA,HARGASEWA,HARGADENDA) values ('VCDGIZB52730','TOQFNG785533',null,'20060',null);
Insert into DIPINJAM (KODEDIPINJAM,KODESTOK,NONOTA,HARGASEWA,HARGADENDA) values ('VCDLLRR53687','UFXBIC513673',null,'20060',null);
Insert into DIPINJAM (KODEDIPINJAM,KODESTOK,NONOTA,HARGASEWA,HARGADENDA) values ('VCDKYHZ44176','ZKJJ238848WE','VCDOHUZ30515','60180','11400');
Insert into DIPINJAM (KODEDIPINJAM,KODESTOK,NONOTA,HARGASEWA,HARGADENDA) values ('VCDOHYH21435','MQFTZR271178','VCDSKAH38037','2450',null);
Insert into DIPINJAM (KODEDIPINJAM,KODESTOK,NONOTA,HARGASEWA,HARGADENDA) values ('VCDTKPX21383','OGICNX443128','VCDSKAH38037','1750',null);
REM INSERTING into GENRE
SET DEFINE OFF;
Insert into GENRE (KODEKATEGORI,NAMAKATEGORI,HARGASEWAKATEGORI,HARGADENDAKATEGORI) values ('ACTN','Action','0','0');
Insert into GENRE (KODEKATEGORI,NAMAKATEGORI,HARGASEWAKATEGORI,HARGADENDAKATEGORI) values ('RMNT','Romatic & Love','500','100');
Insert into GENRE (KODEKATEGORI,NAMAKATEGORI,HARGASEWAKATEGORI,HARGADENDAKATEGORI) values ('TRLR','Thriller','200','50');
Insert into GENRE (KODEKATEGORI,NAMAKATEGORI,HARGASEWAKATEGORI,HARGADENDAKATEGORI) values ('CMDY','Comedy','700','200');
Insert into GENRE (KODEKATEGORI,NAMAKATEGORI,HARGASEWAKATEGORI,HARGADENDAKATEGORI) values ('TRIL','Trillogy','350','0');
Insert into GENRE (KODEKATEGORI,NAMAKATEGORI,HARGASEWAKATEGORI,HARGADENDAKATEGORI) values ('INDO','Indonesian','0','0');
Insert into GENRE (KODEKATEGORI,NAMAKATEGORI,HARGASEWAKATEGORI,HARGADENDAKATEGORI) values ('JAPN','Japanese','0','0');
Insert into GENRE (KODEKATEGORI,NAMAKATEGORI,HARGASEWAKATEGORI,HARGADENDAKATEGORI) values ('LATN','Latin','20','0');
Insert into GENRE (KODEKATEGORI,NAMAKATEGORI,HARGASEWAKATEGORI,HARGADENDAKATEGORI) values ('BLWD','Bollywood','100','50');
Insert into GENRE (KODEKATEGORI,NAMAKATEGORI,HARGASEWAKATEGORI,HARGADENDAKATEGORI) values ('HROR','Horror','0','0');
REM INSERTING into JENISIDENTITAS
SET DEFINE OFF;
Insert into JENISIDENTITAS (ID,JENIS) values ('0','SIM');
Insert into JENISIDENTITAS (ID,JENIS) values ('1','KTP');
Insert into JENISIDENTITAS (ID,JENIS) values ('2','KTM');
Insert into JENISIDENTITAS (ID,JENIS) values ('3','Kartu Pelajar');
REM INSERTING into JENISKEPING
SET DEFINE OFF;
Insert into JENISKEPING (ID,JENIS) values ('0','MP3');
Insert into JENISKEPING (ID,JENIS) values ('1','CD Audio');
Insert into JENISKEPING (ID,JENIS) values ('2','VCD');
Insert into JENISKEPING (ID,JENIS) values ('3','DVD');
Insert into JENISKEPING (ID,JENIS) values ('4','DVD8');
Insert into JENISKEPING (ID,JENIS) values ('5','DVD-DL');
Insert into JENISKEPING (ID,JENIS) values ('6','Bluray');
REM INSERTING into KEWENANGAN
SET DEFINE OFF;
Insert into KEWENANGAN (KODEKEWENANGAN,NAMAKEWENANGAN,MASTERPELANGGAN,MASTERKOLEKSI,MASTERSTOK,TRANSAKSI,LAPORANPERTRANSAKSI,LAPORANTRANSAKSI,LAPORANKEUANGAN,HALLOFFAME,PENGATURANSISTEM,PENGATURANKEWENANGAN,PENGATURANPENGGUNA,PENGATURANPENAWARANMENARIK,JENDELAPERTAMA) values ('1','Superuser','1','1','1','1','1','1','1','1','1','1','1','1','0');
Insert into KEWENANGAN (KODEKEWENANGAN,NAMAKEWENANGAN,MASTERPELANGGAN,MASTERKOLEKSI,MASTERSTOK,TRANSAKSI,LAPORANPERTRANSAKSI,LAPORANTRANSAKSI,LAPORANKEUANGAN,HALLOFFAME,PENGATURANSISTEM,PENGATURANKEWENANGAN,PENGATURANPENGGUNA,PENGATURANPENAWARANMENARIK,JENDELAPERTAMA) values ('2','Entri Data','1','1','1','0','0','0','0','0','0','0','0','0','0');
Insert into KEWENANGAN (KODEKEWENANGAN,NAMAKEWENANGAN,MASTERPELANGGAN,MASTERKOLEKSI,MASTERSTOK,TRANSAKSI,LAPORANPERTRANSAKSI,LAPORANTRANSAKSI,LAPORANKEUANGAN,HALLOFFAME,PENGATURANSISTEM,PENGATURANKEWENANGAN,PENGATURANPENGGUNA,PENGATURANPENAWARANMENARIK,JENDELAPERTAMA) values ('3','Pengelola Stok','0','1','1','0','0','0','0','0','0','0','0','0','0');
Insert into KEWENANGAN (KODEKEWENANGAN,NAMAKEWENANGAN,MASTERPELANGGAN,MASTERKOLEKSI,MASTERSTOK,TRANSAKSI,LAPORANPERTRANSAKSI,LAPORANTRANSAKSI,LAPORANKEUANGAN,HALLOFFAME,PENGATURANSISTEM,PENGATURANKEWENANGAN,PENGATURANPENGGUNA,PENGATURANPENAWARANMENARIK,JENDELAPERTAMA) values ('4','Kasir','1','0','0','1','0','0','0','0','0','0','0','0','0');
Insert into KEWENANGAN (KODEKEWENANGAN,NAMAKEWENANGAN,MASTERPELANGGAN,MASTERKOLEKSI,MASTERSTOK,TRANSAKSI,LAPORANPERTRANSAKSI,LAPORANTRANSAKSI,LAPORANKEUANGAN,HALLOFFAME,PENGATURANSISTEM,PENGATURANKEWENANGAN,PENGATURANPENGGUNA,PENGATURANPENAWARANMENARIK,JENDELAPERTAMA) values ('5','Pembaca Nota','0','0','0','0','1','0','0','0','0','0','0','0','0');
Insert into KEWENANGAN (KODEKEWENANGAN,NAMAKEWENANGAN,MASTERPELANGGAN,MASTERKOLEKSI,MASTERSTOK,TRANSAKSI,LAPORANPERTRANSAKSI,LAPORANTRANSAKSI,LAPORANKEUANGAN,HALLOFFAME,PENGATURANSISTEM,PENGATURANKEWENANGAN,PENGATURANPENGGUNA,PENGATURANPENAWARANMENARIK,JENDELAPERTAMA) values ('6','Pegawai','1','1','1','1','0','0','0','0','0','0','0','0','0');
REM INSERTING into KOLEKSI
SET DEFINE OFF;
Insert into KOLEKSI (KODEKOLEKSI,KODEKATEGORI,NAMAITEM,JENIS,BIAYASEWAFILM,BIAYADENDAFILM) values ('000000000000','BLWD','Mohabbatein','6','200','300');
Insert into KOLEKSI (KODEKOLEKSI,KODEKATEGORI,NAMAITEM,JENIS,BIAYASEWAFILM,BIAYADENDAFILM) values ('JUKKN5360088','BLWD','Kabhi Kushi Kabhie Gham','6','200','100');
Insert into KOLEKSI (KODEKOLEKSI,KODEKATEGORI,NAMAITEM,JENIS,BIAYASEWAFILM,BIAYADENDAFILM) values ('000000000002','BLWD','DIlwale Dulhania Le Jayengge','6','200','100');
Insert into KOLEKSI (KODEKOLEKSI,KODEKATEGORI,NAMAITEM,JENIS,BIAYASEWAFILM,BIAYADENDAFILM) values ('ODZMG7152847','BLWD','Kal Ho Naa Ho','3','150','100');
Insert into KOLEKSI (KODEKOLEKSI,KODEKATEGORI,NAMAITEM,JENIS,BIAYASEWAFILM,BIAYADENDAFILM) values ('PFJFI0848374','BLWD','My Name is Khan','13','200','100');
Insert into KOLEKSI (KODEKOLEKSI,KODEKATEGORI,NAMAITEM,JENIS,BIAYASEWAFILM,BIAYADENDAFILM) values ('RFRBM7458652','BLWD','Devdas','3','150','100');
Insert into KOLEKSI (KODEKOLEKSI,KODEKATEGORI,NAMAITEM,JENIS,BIAYASEWAFILM,BIAYADENDAFILM) values ('SFELN6076412','BLWD','Kuch Kuch Hota Hai','6','250','100');
REM INSERTING into MEMBER
SET DEFINE OFF;
Insert into MEMBER (KODEMEMBER,NAMAMEMBER,JENISIDENTITAS,NOMORIDENTITAS) values ('OLTH570268','Fahmi','0','9816283671923');
Insert into MEMBER (KODEMEMBER,NAMAMEMBER,JENISIDENTITAS,NOMORIDENTITAS) values ('JKWD074051','Andi','2','08098987');
Insert into MEMBER (KODEMEMBER,NAMAMEMBER,JENISIDENTITAS,NOMORIDENTITAS) values ('0000000000','Putu Wiramaswara Widya','2','5111100012');
Insert into MEMBER (KODEMEMBER,NAMAMEMBER,JENISIDENTITAS,NOMORIDENTITAS) values ('0000000001','Bustan Amal Alfirdaus','2','5111100019');
Insert into MEMBER (KODEMEMBER,NAMAMEMBER,JENISIDENTITAS,NOMORIDENTITAS) values ('NKZP600511','I Gusti Ketut Anom','1','023423435264645');
REM INSERTING into NOTA
SET DEFINE OFF;
Insert into NOTA (NONOTA,KODEOPERATOR,KODEPENAWARANSPESIAL,KODEMEMBER,TGLTRANSAKSI,TGLKEMBALI,TGLREALISASIKEMBALI) values ('VCDOHUZ30515','1    ','1001','0000000000',to_date('03-01-2013','DD-MM-RRRR'),to_date('06-01-2013','DD-MM-RRRR'),to_date('10-01-2013','DD-MM-RRRR'));
Insert into NOTA (NONOTA,KODEOPERATOR,KODEPENAWARANSPESIAL,KODEMEMBER,TGLTRANSAKSI,TGLKEMBALI,TGLREALISASIKEMBALI) values ('VCDSKAH38037','1    ','-1','NKZP600511',to_date('04-01-2013','DD-MM-RRRR'),to_date('11-01-2013','DD-MM-RRRR'),null);
REM INSERTING into PENAWARANSPESIAL
SET DEFINE OFF;
Insert into PENAWARANSPESIAL (KODEPENAWARANSPESIAL,NAMAPENAWARANSPESIAL,DISKON,MULAI,AKHIR) values ('999','Diskon 13% di Tahun Baru 2013','13',to_date('31-12-2012','DD-MM-RRRR'),to_date('01-01-2013','DD-MM-RRRR'));
Insert into PENAWARANSPESIAL (KODEPENAWARANSPESIAL,NAMAPENAWARANSPESIAL,DISKON,MULAI,AKHIR) values ('-1','Nothing','0',to_date('28-12-2012','DD-MM-RRRR'),to_date('28-12-2012','DD-MM-RRRR'));
Insert into PENAWARANSPESIAL (KODEPENAWARANSPESIAL,NAMAPENAWARANSPESIAL,DISKON,MULAI,AKHIR) values ('1000','Diskon 60% Natal','60',to_date('24-12-2012','DD-MM-RRRR'),to_date('27-12-2012','DD-MM-RRRR'));
Insert into PENAWARANSPESIAL (KODEPENAWARANSPESIAL,NAMAPENAWARANSPESIAL,DISKON,MULAI,AKHIR) values ('995','Tanggal tua ceria','30',to_date('27-11-2012','DD-MM-RRRR'),to_date('29-11-2012','DD-MM-RRRR'));
Insert into PENAWARANSPESIAL (KODEPENAWARANSPESIAL,NAMAPENAWARANSPESIAL,DISKON,MULAI,AKHIR) values ('996','Lumayan 10%','10',to_date('30-11-2012','DD-MM-RRRR'),to_date('09-01-2012','DD-MM-RRRR'));
Insert into PENAWARANSPESIAL (KODEPENAWARANSPESIAL,NAMAPENAWARANSPESIAL,DISKON,MULAI,AKHIR) values ('1001','Tahun Baru Spesial','40',to_date('02-01-2013','DD-MM-RRRR'),to_date('04-01-2013','DD-MM-RRRR'));
REM INSERTING into PENDINGDIPINJAM
SET DEFINE OFF;
Insert into PENDINGDIPINJAM (NOPENDINGDIPINJAM,NOPENDINGNOTA,KODEKOLEKSI) values ('2','2','RFRBM7458652');
Insert into PENDINGDIPINJAM (NOPENDINGDIPINJAM,NOPENDINGNOTA,KODEKOLEKSI) values ('3','2','000000000002');
Insert into PENDINGDIPINJAM (NOPENDINGDIPINJAM,NOPENDINGNOTA,KODEKOLEKSI) values ('4','3','JUKKN5360088');
Insert into PENDINGDIPINJAM (NOPENDINGDIPINJAM,NOPENDINGNOTA,KODEKOLEKSI) values ('7','5','SFELN6076412');
Insert into PENDINGDIPINJAM (NOPENDINGDIPINJAM,NOPENDINGNOTA,KODEKOLEKSI) values ('8','6','RFRBM7458652');
Insert into PENDINGDIPINJAM (NOPENDINGDIPINJAM,NOPENDINGNOTA,KODEKOLEKSI) values ('9','6','ODZMG7152847');
Insert into PENDINGDIPINJAM (NOPENDINGDIPINJAM,NOPENDINGNOTA,KODEKOLEKSI) values ('10','7','SFELN6076412');
Insert into PENDINGDIPINJAM (NOPENDINGDIPINJAM,NOPENDINGNOTA,KODEKOLEKSI) values ('0','0','000000000000');
Insert into PENDINGDIPINJAM (NOPENDINGDIPINJAM,NOPENDINGNOTA,KODEKOLEKSI) values ('5','4','RFRBM7458652');
Insert into PENDINGDIPINJAM (NOPENDINGDIPINJAM,NOPENDINGNOTA,KODEKOLEKSI) values ('1','1','RFRBM7458652');
Insert into PENDINGDIPINJAM (NOPENDINGDIPINJAM,NOPENDINGNOTA,KODEKOLEKSI) values ('6','4','000000000002');
REM INSERTING into PENDINGNOTA
SET DEFINE OFF;
Insert into PENDINGNOTA (NOPENDINGNOTA,KODEMEMBER,DIPROSES) values ('2','JKWD074051','1');
Insert into PENDINGNOTA (NOPENDINGNOTA,KODEMEMBER,DIPROSES) values ('3','OLTH570268','1');
Insert into PENDINGNOTA (NOPENDINGNOTA,KODEMEMBER,DIPROSES) values ('5','JKWD074051','1');
Insert into PENDINGNOTA (NOPENDINGNOTA,KODEMEMBER,DIPROSES) values ('6','NKZP600511','1');
Insert into PENDINGNOTA (NOPENDINGNOTA,KODEMEMBER,DIPROSES) values ('7','NKZP600511','1');
Insert into PENDINGNOTA (NOPENDINGNOTA,KODEMEMBER,DIPROSES) values ('0','0000000001','1');
Insert into PENDINGNOTA (NOPENDINGNOTA,KODEMEMBER,DIPROSES) values ('1','0000000001','1');
Insert into PENDINGNOTA (NOPENDINGNOTA,KODEMEMBER,DIPROSES) values ('4','0000000001','0');
REM INSERTING into PENGATURAN
SET DEFINE OFF;
Insert into PENGATURAN (ID,ATRIBUT,DATA) values ('1','namaToko','Rental Anom Jaya');
Insert into PENGATURAN (ID,ATRIBUT,DATA) values ('2','alamatToko','Jalan Mulyosari Raya 213, Surabaya');
Insert into PENGATURAN (ID,ATRIBUT,DATA) values ('3','namaPemilik','Putu Wiramaswara Widya');
Insert into PENGATURAN (ID,ATRIBUT,DATA) values ('4','skemaBiayaSewa','3');
Insert into PENGATURAN (ID,ATRIBUT,DATA) values ('5','skemaBiayaDenda','3');
Insert into PENGATURAN (ID,ATRIBUT,DATA) values ('6','skemaHariTransaksi','0');
Insert into PENGATURAN (ID,ATRIBUT,DATA) values ('7','maksHariTransaksi','7');
Insert into PENGATURAN (ID,ATRIBUT,DATA) values ('8','skemaJudulTransaksi','0');
Insert into PENGATURAN (ID,ATRIBUT,DATA) values ('9','maksJudulTransaksi','3');
Insert into PENGATURAN (ID,ATRIBUT,DATA) values ('10','dendaKerusakan','40');
REM INSERTING into PENGGUNA
SET DEFINE OFF;
Insert into PENGGUNA (KODEOPERATOR,KODEKEWENANGAN,USERNAME,PASSWORD,ISLOGIN,NAMALENGKAP) values ('6    ','6','Anom','adcd7048512e64b48da55b027577886ee5a36350','0','anom');
Insert into PENGGUNA (KODEOPERATOR,KODEKEWENANGAN,USERNAME,PASSWORD,ISLOGIN,NAMALENGKAP) values ('1    ','1','root','6d97d3c60d2e82a83de9b17d40a24d1643369d58','1','Karoot');
Insert into PENGGUNA (KODEOPERATOR,KODEKEWENANGAN,USERNAME,PASSWORD,ISLOGIN,NAMALENGKAP) values ('2    ','2','joko','2e4d626a64e6493386768a347ea247efc9e34633','0','Joko');
Insert into PENGGUNA (KODEOPERATOR,KODEKEWENANGAN,USERNAME,PASSWORD,ISLOGIN,NAMALENGKAP) values ('3    ','4','kasirwati','5920d7980564d612a4f3cf03ac2f64f97e6bd06c','0','Kasir Wati');
Insert into PENGGUNA (KODEOPERATOR,KODEKEWENANGAN,USERNAME,PASSWORD,ISLOGIN,NAMALENGKAP) values ('4    ','5','bejo','472bf59a9d6e3c483ef05bd765ada48c89ea5efb','0','bejo');
Insert into PENGGUNA (KODEOPERATOR,KODEKEWENANGAN,USERNAME,PASSWORD,ISLOGIN,NAMALENGKAP) values ('5    ','4','kasirwan','dae6d7e5ab2542069bccebfe9df296c7e84b1720','0','kasirwan');
REM INSERTING into STOKKOLEKSI
SET DEFINE OFF;
Insert into STOKKOLEKSI (KODESTOK,KODEKOLEKSI,KONDISI,STATUS,HARGA,TGLBELI) values ('ZKJJ238848WE','000000000000','1','0','25000',to_date('31-12-2012','DD-MM-RRRR'));
Insert into STOKKOLEKSI (KODESTOK,KODEKOLEKSI,KONDISI,STATUS,HARGA,TGLBELI) values ('HUPWOC137806','000000000000','0','0','25000',to_date('31-12-2012','DD-MM-RRRR'));
Insert into STOKKOLEKSI (KODESTOK,KODEKOLEKSI,KONDISI,STATUS,HARGA,TGLBELI) values ('JJ5502023248','000000000000','0','0','100000',to_date('31-12-2012','DD-MM-RRRR'));
Insert into STOKKOLEKSI (KODESTOK,KODEKOLEKSI,KONDISI,STATUS,HARGA,TGLBELI) values ('PHIZIX575626','000000000000','0','0','25000',to_date('31-12-2012','DD-MM-RRRR'));
Insert into STOKKOLEKSI (KODESTOK,KODEKOLEKSI,KONDISI,STATUS,HARGA,TGLBELI) values ('TITYCW517571','000000000000','0','0','25000',to_date('31-12-2012','DD-MM-RRRR'));
Insert into STOKKOLEKSI (KODESTOK,KODEKOLEKSI,KONDISI,STATUS,HARGA,TGLBELI) values ('SGMHWU672053','000000000000','0','0','25000',to_date('31-12-2012','DD-MM-RRRR'));
Insert into STOKKOLEKSI (KODESTOK,KODEKOLEKSI,KONDISI,STATUS,HARGA,TGLBELI) values ('VBKFZV147088','ODZMG7152847','0','1','3000',to_date('03-01-2013','DD-MM-RRRR'));
Insert into STOKKOLEKSI (KODESTOK,KODEKOLEKSI,KONDISI,STATUS,HARGA,TGLBELI) values ('ZFKLOG360205','ODZMG7152847','0','1','3000',to_date('03-01-2013','DD-MM-RRRR'));
Insert into STOKKOLEKSI (KODESTOK,KODEKOLEKSI,KONDISI,STATUS,HARGA,TGLBELI) values ('IHGPSM707566','ODZMG7152847','0','0','3000',to_date('03-01-2013','DD-MM-RRRR'));
Insert into STOKKOLEKSI (KODESTOK,KODEKOLEKSI,KONDISI,STATUS,HARGA,TGLBELI) values ('OGICNX443128','ODZMG7152847','0','1','3000',to_date('03-01-2013','DD-MM-RRRR'));
Insert into STOKKOLEKSI (KODESTOK,KODEKOLEKSI,KONDISI,STATUS,HARGA,TGLBELI) values ('MJIJGR416388','JUKKN5360088','0','0','50000',to_date('03-01-2013','DD-MM-RRRR'));
Insert into STOKKOLEKSI (KODESTOK,KODEKOLEKSI,KONDISI,STATUS,HARGA,TGLBELI) values ('LHVZIN582174','JUKKN5360088','0','0','50000',to_date('03-01-2013','DD-MM-RRRR'));
Insert into STOKKOLEKSI (KODESTOK,KODEKOLEKSI,KONDISI,STATUS,HARGA,TGLBELI) values ('TVUVUJ138581','JUKKN5360088','0','0','50000',to_date('03-01-2013','DD-MM-RRRR'));
Insert into STOKKOLEKSI (KODESTOK,KODEKOLEKSI,KONDISI,STATUS,HARGA,TGLBELI) values ('LPBVUL128702','JUKKN5360088','0','0','50000',to_date('03-01-2013','DD-MM-RRRR'));
Insert into STOKKOLEKSI (KODESTOK,KODEKOLEKSI,KONDISI,STATUS,HARGA,TGLBELI) values ('UQEMAM362207','JUKKN5360088','0','0','50000',to_date('03-01-2013','DD-MM-RRRR'));
Insert into STOKKOLEKSI (KODESTOK,KODEKOLEKSI,KONDISI,STATUS,HARGA,TGLBELI) values ('EHEKLY234308','JUKKN5360088','0','0','50000',to_date('03-01-2013','DD-MM-RRRR'));
Insert into STOKKOLEKSI (KODESTOK,KODEKOLEKSI,KONDISI,STATUS,HARGA,TGLBELI) values ('UFXBIC513673','000000000002','0','1','4000',to_date('03-01-2013','DD-MM-RRRR'));
Insert into STOKKOLEKSI (KODESTOK,KODEKOLEKSI,KONDISI,STATUS,HARGA,TGLBELI) values ('MZEUSX220342','000000000002','0','0','4000',to_date('03-01-2013','DD-MM-RRRR'));
Insert into STOKKOLEKSI (KODESTOK,KODEKOLEKSI,KONDISI,STATUS,HARGA,TGLBELI) values ('BAWTYO214677','RFRBM7458652','0','1','5000',to_date('03-01-2013','DD-MM-RRRR'));
Insert into STOKKOLEKSI (KODESTOK,KODEKOLEKSI,KONDISI,STATUS,HARGA,TGLBELI) values ('WVYGDD066126','RFRBM7458652','0','0','5000',to_date('03-01-2013','DD-MM-RRRR'));
Insert into STOKKOLEKSI (KODESTOK,KODEKOLEKSI,KONDISI,STATUS,HARGA,TGLBELI) values ('YRDWTF808155','RFRBM7458652','0','0','5000',to_date('03-01-2013','DD-MM-RRRR'));
Insert into STOKKOLEKSI (KODESTOK,KODEKOLEKSI,KONDISI,STATUS,HARGA,TGLBELI) values ('HTABWL426326','RFRBM7458652','0','0','5000',to_date('03-01-2013','DD-MM-RRRR'));
Insert into STOKKOLEKSI (KODESTOK,KODEKOLEKSI,KONDISI,STATUS,HARGA,TGLBELI) values ('KILDAH071821','SFELN6076412','0','1','6000',to_date('03-01-2013','DD-MM-RRRR'));
Insert into STOKKOLEKSI (KODESTOK,KODEKOLEKSI,KONDISI,STATUS,HARGA,TGLBELI) values ('NXWGDE535315','SFELN6076412','0','1','6000',to_date('03-01-2013','DD-MM-RRRR'));
Insert into STOKKOLEKSI (KODESTOK,KODEKOLEKSI,KONDISI,STATUS,HARGA,TGLBELI) values ('OHJSVE088561','SFELN6076412','0','1','6000',to_date('03-01-2013','DD-MM-RRRR'));
Insert into STOKKOLEKSI (KODESTOK,KODEKOLEKSI,KONDISI,STATUS,HARGA,TGLBELI) values ('MQFTZR271178','SFELN6076412','0','1','6000',to_date('03-01-2013','DD-MM-RRRR'));
Insert into STOKKOLEKSI (KODESTOK,KODEKOLEKSI,KONDISI,STATUS,HARGA,TGLBELI) values ('TOQFNG785533','PFJFI0848374','0','1','50000',to_date('03-01-2013','DD-MM-RRRR'));
--------------------------------------------------------
--  DDL for Index CHAT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CHAT_PK" ON "CHAT" ("IDCHAT")
/
--------------------------------------------------------
--  DDL for Index GENREKOLEKSI_FK
--------------------------------------------------------

  CREATE INDEX "GENREKOLEKSI_FK" ON "KOLEKSI" ("KODEKATEGORI")
/
--------------------------------------------------------
--  DDL for Index KOLEKSIDANSTOK_FK
--------------------------------------------------------

  CREATE INDEX "KOLEKSIDANSTOK_FK" ON "STOKKOLEKSI" ("KODEKOLEKSI")
/
--------------------------------------------------------
--  DDL for Index MEMBERDANNOTA_FK
--------------------------------------------------------

  CREATE INDEX "MEMBERDANNOTA_FK" ON "NOTA" ("KODEMEMBER")
/
--------------------------------------------------------
--  DDL for Index NOTADANDIPINJAM_FK
--------------------------------------------------------

  CREATE INDEX "NOTADANDIPINJAM_FK" ON "DIPINJAM" ("NONOTA")
/
--------------------------------------------------------
--  DDL for Index NOTADANPENAWARANSPESIAL_FK
--------------------------------------------------------

  CREATE INDEX "NOTADANPENAWARANSPESIAL_FK" ON "NOTA" ("KODEPENAWARANSPESIAL")
/
--------------------------------------------------------
--  DDL for Index PENGGUNADANKEWENANGAN_FK
--------------------------------------------------------

  CREATE INDEX "PENGGUNADANKEWENANGAN_FK" ON "PENGGUNA" ("KODEKEWENANGAN")
/
--------------------------------------------------------
--  DDL for Index PK_DIPINJAM
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_DIPINJAM" ON "DIPINJAM" ("KODEDIPINJAM")
/
--------------------------------------------------------
--  DDL for Index PK_GENRE
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_GENRE" ON "GENRE" ("KODEKATEGORI")
/
--------------------------------------------------------
--  DDL for Index PK_IDJENISIDENTITAS
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_IDJENISIDENTITAS" ON "JENISIDENTITAS" ("ID")
/
--------------------------------------------------------
--  DDL for Index PK_IDJENISKEPING
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_IDJENISKEPING" ON "JENISKEPING" ("ID")
/
--------------------------------------------------------
--  DDL for Index PK_KEWENANGAN
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_KEWENANGAN" ON "KEWENANGAN" ("KODEKEWENANGAN")
/
--------------------------------------------------------
--  DDL for Index PK_KOLEKSI
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_KOLEKSI" ON "KOLEKSI" ("KODEKOLEKSI")
/
--------------------------------------------------------
--  DDL for Index PK_MEMBER
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_MEMBER" ON "MEMBER" ("KODEMEMBER")
/
--------------------------------------------------------
--  DDL for Index PK_NOPENDINGDIPINJAM
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_NOPENDINGDIPINJAM" ON "PENDINGDIPINJAM" ("NOPENDINGDIPINJAM")
/
--------------------------------------------------------
--  DDL for Index PK_NOPENDINGNOTA
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_NOPENDINGNOTA" ON "PENDINGNOTA" ("NOPENDINGNOTA")
/
--------------------------------------------------------
--  DDL for Index PK_NOTA
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_NOTA" ON "NOTA" ("NONOTA")
/
--------------------------------------------------------
--  DDL for Index PK_PENAWARANSPESIAL
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_PENAWARANSPESIAL" ON "PENAWARANSPESIAL" ("KODEPENAWARANSPESIAL")
/
--------------------------------------------------------
--  DDL for Index PK_PENGATURAN
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_PENGATURAN" ON "PENGATURAN" ("ID")
/
--------------------------------------------------------
--  DDL for Index PK_PENGGUNA
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_PENGGUNA" ON "PENGGUNA" ("KODEOPERATOR")
/
--------------------------------------------------------
--  DDL for Index PK_STOKKOLEKSI
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_STOKKOLEKSI" ON "STOKKOLEKSI" ("KODESTOK")
/
--------------------------------------------------------
--  DDL for Index STOKDIPINJAM_FK
--------------------------------------------------------

  CREATE INDEX "STOKDIPINJAM_FK" ON "DIPINJAM" ("KODESTOK")
/
--------------------------------------------------------
--  DDL for Index ADMINDANNOTA_FK
--------------------------------------------------------

  CREATE INDEX "ADMINDANNOTA_FK" ON "NOTA" ("KODEOPERATOR")
/
--------------------------------------------------------
--  Constraints for Table CHAT
--------------------------------------------------------

  ALTER TABLE "CHAT" ADD CONSTRAINT "CHAT_PK" PRIMARY KEY ("IDCHAT") ENABLE
 
  ALTER TABLE "CHAT" MODIFY ("IDCHAT" NOT NULL ENABLE)
 
  ALTER TABLE "CHAT" MODIFY ("TIMESTAMP" NOT NULL ENABLE)
 
  ALTER TABLE "CHAT" MODIFY ("SENDER" NOT NULL ENABLE)
/
--------------------------------------------------------
--  Constraints for Table DIPINJAM
--------------------------------------------------------

  ALTER TABLE "DIPINJAM" ADD CONSTRAINT "PK_DIPINJAM" PRIMARY KEY ("KODEDIPINJAM") ENABLE
 
  ALTER TABLE "DIPINJAM" MODIFY ("KODEDIPINJAM" NOT NULL ENABLE)
/
--------------------------------------------------------
--  Constraints for Table GENRE
--------------------------------------------------------

  ALTER TABLE "GENRE" ADD CONSTRAINT "PK_GENRE" PRIMARY KEY ("KODEKATEGORI") ENABLE
 
  ALTER TABLE "GENRE" MODIFY ("KODEKATEGORI" NOT NULL ENABLE)
/
--------------------------------------------------------
--  Constraints for Table JENISIDENTITAS
--------------------------------------------------------

  ALTER TABLE "JENISIDENTITAS" ADD CONSTRAINT "PK_IDJENISIDENTITAS" PRIMARY KEY ("ID") ENABLE
/
--------------------------------------------------------
--  Constraints for Table JENISKEPING
--------------------------------------------------------

  ALTER TABLE "JENISKEPING" ADD CONSTRAINT "PK_IDJENISKEPING" PRIMARY KEY ("ID") ENABLE
/
--------------------------------------------------------
--  Constraints for Table KEWENANGAN
--------------------------------------------------------

  ALTER TABLE "KEWENANGAN" ADD CONSTRAINT "PK_KEWENANGAN" PRIMARY KEY ("KODEKEWENANGAN") ENABLE
 
  ALTER TABLE "KEWENANGAN" MODIFY ("KODEKEWENANGAN" NOT NULL ENABLE)
 
  ALTER TABLE "KEWENANGAN" MODIFY ("NAMAKEWENANGAN" NOT NULL ENABLE)
 
  ALTER TABLE "KEWENANGAN" MODIFY ("MASTERPELANGGAN" NOT NULL ENABLE)
 
  ALTER TABLE "KEWENANGAN" MODIFY ("MASTERKOLEKSI" NOT NULL ENABLE)
 
  ALTER TABLE "KEWENANGAN" MODIFY ("MASTERSTOK" NOT NULL ENABLE)
 
  ALTER TABLE "KEWENANGAN" MODIFY ("TRANSAKSI" NOT NULL ENABLE)
 
  ALTER TABLE "KEWENANGAN" MODIFY ("LAPORANPERTRANSAKSI" NOT NULL ENABLE)
 
  ALTER TABLE "KEWENANGAN" MODIFY ("LAPORANTRANSAKSI" NOT NULL ENABLE)
 
  ALTER TABLE "KEWENANGAN" MODIFY ("LAPORANKEUANGAN" NOT NULL ENABLE)
 
  ALTER TABLE "KEWENANGAN" MODIFY ("PENGATURANSISTEM" NOT NULL ENABLE)
 
  ALTER TABLE "KEWENANGAN" MODIFY ("PENGATURANKEWENANGAN" NOT NULL ENABLE)
 
  ALTER TABLE "KEWENANGAN" MODIFY ("PENGATURANPENGGUNA" NOT NULL ENABLE)
 
  ALTER TABLE "KEWENANGAN" MODIFY ("PENGATURANPENAWARANMENARIK" NOT NULL ENABLE)
 
  ALTER TABLE "KEWENANGAN" MODIFY ("JENDELAPERTAMA" NOT NULL ENABLE)
/
--------------------------------------------------------
--  Constraints for Table KOLEKSI
--------------------------------------------------------

  ALTER TABLE "KOLEKSI" ADD CONSTRAINT "PK_KOLEKSI" PRIMARY KEY ("KODEKOLEKSI") ENABLE
 
  ALTER TABLE "KOLEKSI" MODIFY ("KODEKOLEKSI" NOT NULL ENABLE)
 
  ALTER TABLE "KOLEKSI" MODIFY ("KODEKATEGORI" NOT NULL ENABLE)
 
  ALTER TABLE "KOLEKSI" MODIFY ("NAMAITEM" NOT NULL ENABLE)
 
  ALTER TABLE "KOLEKSI" MODIFY ("DEKRIPSIITEM" NOT NULL ENABLE)
 
  ALTER TABLE "KOLEKSI" MODIFY ("JENIS" NOT NULL ENABLE)
/
--------------------------------------------------------
--  Constraints for Table MEMBER
--------------------------------------------------------

  ALTER TABLE "MEMBER" ADD CONSTRAINT "PK_MEMBER" PRIMARY KEY ("KODEMEMBER") ENABLE
 
  ALTER TABLE "MEMBER" MODIFY ("KODEMEMBER" NOT NULL ENABLE)
/
--------------------------------------------------------
--  Constraints for Table NOTA
--------------------------------------------------------

  ALTER TABLE "NOTA" ADD CONSTRAINT "PK_NOTA" PRIMARY KEY ("NONOTA") ENABLE
 
  ALTER TABLE "NOTA" MODIFY ("NONOTA" NOT NULL ENABLE)
 
  ALTER TABLE "NOTA" MODIFY ("KODEOPERATOR" NOT NULL ENABLE)
 
  ALTER TABLE "NOTA" MODIFY ("TGLTRANSAKSI" NOT NULL ENABLE)
/
--------------------------------------------------------
--  Constraints for Table PENAWARANSPESIAL
--------------------------------------------------------

  ALTER TABLE "PENAWARANSPESIAL" ADD CONSTRAINT "PK_PENAWARANSPESIAL" PRIMARY KEY ("KODEPENAWARANSPESIAL") ENABLE
 
  ALTER TABLE "PENAWARANSPESIAL" MODIFY ("KODEPENAWARANSPESIAL" NOT NULL ENABLE)
 
  ALTER TABLE "PENAWARANSPESIAL" MODIFY ("NAMAPENAWARANSPESIAL" NOT NULL ENABLE)
 
  ALTER TABLE "PENAWARANSPESIAL" MODIFY ("DISKON" NOT NULL ENABLE)
 
  ALTER TABLE "PENAWARANSPESIAL" MODIFY ("MULAI" NOT NULL ENABLE)
 
  ALTER TABLE "PENAWARANSPESIAL" MODIFY ("AKHIR" NOT NULL ENABLE)
/
--------------------------------------------------------
--  Constraints for Table PENDINGDIPINJAM
--------------------------------------------------------

  ALTER TABLE "PENDINGDIPINJAM" ADD CONSTRAINT "PK_NOPENDINGDIPINJAM" PRIMARY KEY ("NOPENDINGDIPINJAM") ENABLE
/
--------------------------------------------------------
--  Constraints for Table PENDINGNOTA
--------------------------------------------------------

  ALTER TABLE "PENDINGNOTA" ADD CONSTRAINT "PK_NOPENDINGNOTA" PRIMARY KEY ("NOPENDINGNOTA") ENABLE
/
--------------------------------------------------------
--  Constraints for Table PENGATURAN
--------------------------------------------------------

  ALTER TABLE "PENGATURAN" ADD CONSTRAINT "PK_PENGATURAN" PRIMARY KEY ("ID") ENABLE
 
  ALTER TABLE "PENGATURAN" MODIFY ("ID" NOT NULL ENABLE)
/
--------------------------------------------------------
--  Constraints for Table PENGGUNA
--------------------------------------------------------

  ALTER TABLE "PENGGUNA" ADD CONSTRAINT "PK_PENGGUNA" PRIMARY KEY ("KODEOPERATOR") ENABLE
 
  ALTER TABLE "PENGGUNA" MODIFY ("KODEOPERATOR" NOT NULL ENABLE)
 
  ALTER TABLE "PENGGUNA" MODIFY ("KODEKEWENANGAN" NOT NULL ENABLE)
 
  ALTER TABLE "PENGGUNA" MODIFY ("USERNAME" NOT NULL ENABLE)
/
--------------------------------------------------------
--  Constraints for Table STOKKOLEKSI
--------------------------------------------------------

  ALTER TABLE "STOKKOLEKSI" ADD CONSTRAINT "PK_STOKKOLEKSI" PRIMARY KEY ("KODESTOK") ENABLE
 
  ALTER TABLE "STOKKOLEKSI" MODIFY ("KODESTOK" NOT NULL ENABLE)
 
  ALTER TABLE "STOKKOLEKSI" MODIFY ("KODEKOLEKSI" NOT NULL ENABLE)
 
  ALTER TABLE "STOKKOLEKSI" MODIFY ("KONDISI" NOT NULL ENABLE)
 
  ALTER TABLE "STOKKOLEKSI" MODIFY ("STATUS" NOT NULL ENABLE)
/
--------------------------------------------------------
--  Ref Constraints for Table DIPINJAM
--------------------------------------------------------

  ALTER TABLE "DIPINJAM" ADD CONSTRAINT "FK_DIPINJAM_NOTADANDI_NOTA" FOREIGN KEY ("NONOTA") REFERENCES "NOTA" ("NONOTA") ON DELETE SET NULL ENABLE
 
  ALTER TABLE "DIPINJAM" ADD CONSTRAINT "FK_DIPINJAM_STOKDIPIN_STOKKOLE" FOREIGN KEY ("KODESTOK") REFERENCES "STOKKOLEKSI" ("KODESTOK") ON DELETE SET NULL ENABLE
/
--------------------------------------------------------
--  Ref Constraints for Table KOLEKSI
--------------------------------------------------------

  ALTER TABLE "KOLEKSI" ADD CONSTRAINT "FK_KOLEKSI_GENREKOLE_GENRE" FOREIGN KEY ("KODEKATEGORI") REFERENCES "GENRE" ("KODEKATEGORI") ON DELETE SET NULL ENABLE
/
--------------------------------------------------------
--  Ref Constraints for Table NOTA
--------------------------------------------------------

  ALTER TABLE "NOTA" ADD CONSTRAINT "FK_NOTA_ADMINDANN_PENGGUNA" FOREIGN KEY ("KODEOPERATOR") REFERENCES "PENGGUNA" ("KODEOPERATOR") ON DELETE SET NULL ENABLE
 
  ALTER TABLE "NOTA" ADD CONSTRAINT "FK_NOTA_MEMBERDAN_MEMBER" FOREIGN KEY ("KODEMEMBER") REFERENCES "MEMBER" ("KODEMEMBER") ON DELETE SET NULL ENABLE
 
  ALTER TABLE "NOTA" ADD CONSTRAINT "FK_NOTA_NOTADANPE_PENAWARA" FOREIGN KEY ("KODEPENAWARANSPESIAL") REFERENCES "PENAWARANSPESIAL" ("KODEPENAWARANSPESIAL") ON DELETE SET NULL ENABLE
/
--------------------------------------------------------
--  Ref Constraints for Table PENDINGDIPINJAM
--------------------------------------------------------

  ALTER TABLE "PENDINGDIPINJAM" ADD CONSTRAINT "FK_KODEKOLEKSI" FOREIGN KEY ("KODEKOLEKSI") REFERENCES "KOLEKSI" ("KODEKOLEKSI") ON DELETE SET NULL ENABLE
/
--------------------------------------------------------
--  Ref Constraints for Table PENDINGNOTA
--------------------------------------------------------

  ALTER TABLE "PENDINGNOTA" ADD CONSTRAINT "FK_KODEMEMBER" FOREIGN KEY ("KODEMEMBER") REFERENCES "MEMBER" ("KODEMEMBER") ON DELETE SET NULL ENABLE
/
--------------------------------------------------------
--  Ref Constraints for Table PENGGUNA
--------------------------------------------------------

  ALTER TABLE "PENGGUNA" ADD CONSTRAINT "FK_PENGGUNA_PENGGUNAD_KEWENANG" FOREIGN KEY ("KODEKEWENANGAN") REFERENCES "KEWENANGAN" ("KODEKEWENANGAN") ON DELETE CASCADE ENABLE
/
--------------------------------------------------------
--  Ref Constraints for Table STOKKOLEKSI
--------------------------------------------------------

  ALTER TABLE "STOKKOLEKSI" ADD CONSTRAINT "FK_STOKKOLE_KOLEKSIDA_KOLEKSI" FOREIGN KEY ("KODEKOLEKSI") REFERENCES "KOLEKSI" ("KODEKOLEKSI") ON DELETE CASCADE ENABLE
/
