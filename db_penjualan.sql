/*
SQLyog Ultimate v12.5.1 (64 bit)
MySQL - 10.1.38-MariaDB : Database - db_penjualan
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `m_pelanggan` */

DROP TABLE IF EXISTS `m_pelanggan`;

CREATE TABLE `m_pelanggan` (
  `id_pelanggan` char(6) NOT NULL,
  `nm_pelanggan` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `alamat_kirim` text NOT NULL,
  `lokasi` varchar(150) NOT NULL,
  `kota` varchar(100) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `fax` varchar(20) NOT NULL,
  `top` int(11) NOT NULL,
  `add_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `add_user` varchar(100) DEFAULT NULL,
  `edit_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `edit_user` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_pelanggan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `m_pelanggan` */

insert  into `m_pelanggan`(`id_pelanggan`,`nm_pelanggan`,`alamat`,`alamat_kirim`,`lokasi`,`kota`,`no_telp`,`fax`,`top`,`add_time`,`add_user`,`edit_time`,`edit_user`) values 
('CS0002','CV. MITRA ANDALAN BOX','Dusun Salakan RT. 02 , Bangunjiwo , Kasihan , BANTUL , 55184\n ','Dusun Salakan RT. 02 , Bangunjiwo , Kasihan , BANTUL , 55184','-','YOGYAKARTA','081391191691','-',45,'2021-10-07 10:06:50','admin','2021-11-18 21:13:57','admin'),
('CS0003','PT. SERIKAT ABADI KEMASAN INDONESIA','JL. MUKTIHARJO DALAM RAYA NO.67 RW/RW 001 MUKTIHARJO KIDUL - PEDURUNGAN \nKOTA SEMARANG','JL. MUKTIHARJO DALAM RAYA NO.67 RW/RW 001 MUKTIHARJO KIDUL - PEDURUNGAN \nKOTA SEMARANG','SEMARANG','SEMARANG','0','0',45,'2021-10-15 13:04:03','admin','2021-11-18 21:14:11','admin'),
('CS0004','GANDUNG','JL. REJOSARI III, KAPONAN - GRABAG, MAGELANG','JL. REJOSARI III, KAPONAN - GRABAG, MAGELANG','-','MAGELANG','081227253756','-',30,'2021-11-15 11:12:40','admin','0000-00-00 00:00:00',NULL),
('CS0005','GANDUNG YOGYA','JL. REJOSARI III, KAPONAN - GRABAG, MAGELANG','YOGYA','-','YOGYA','085743353606','-',30,'2021-11-15 11:13:54','admin','2021-11-15 11:15:16','admin'),
('CS0006','SUPRIYANTO','PINGIT KRAJAN RT 01 / RW 10, PINGIT','PINGIT KRAJAN RT 01 / RW 10, PINGIT','RAFFI FITNESS','PINGIT','081904930026','-',30,'2021-11-15 11:17:34','admin','0000-00-00 00:00:00',NULL),
('CS0007','PT. ANUGERAH JAYA PACKINDO','DS 2, KALIGENTONG, KEC AMPEL, KAB BOYOLALI','DS 2, KALIGENTONG, KEC AMPEL, KAB BOYOLALI','-','BOYOLALI','-','-',60,'2021-11-15 11:19:44','admin','2021-11-18 21:14:23','admin'),
('CS0008','CV. MITRA ABADI SOLO','JL. TEGALSARI NO 7 RT3/3, DLOPO, LANGENHARJO-GROGOL, SUKOHARJO','JL. TEGALSARI NO 7 RT3/3, DLOPO, LANGENHARJO-GROGOL, SUKOHARJO','-','SUKOHARJO','0271626193','-',45,'2021-11-15 11:21:30','admin','2021-11-18 21:14:33','admin'),
('CS0009','JOKO SADONO','JL. RAYA SOLO-SUKOHARJO RT03/XI TELUKAN, GROGOL, SUKOHARJO','JL. RAYA SOLO-SUKOHARJO RT03/XI TELUKAN, GROGOL, SUKOHARJO','-','SUKOHARJO','02712002346','-',45,'2021-11-15 11:44:47','admin','0000-00-00 00:00:00',NULL),
('CS0010','HUSNI RAIS','DUKUH MANDUNGAN, KAB SUKOHARJO','DUKUH MANDUNGAN, KAB SUKOHARJO','-','SUKOHARJO','085100154966','-',30,'2021-11-15 11:47:32','admin','0000-00-00 00:00:00',NULL),
('CS0011','PT. CANDRABUANA SURYASEMESTA','JL. TAPAK NO 1A, TUGU-SEMARANG','JL. TAPAK NO 1A, TUGU-SEMARANG','-','SEMARANG','08882925858','-',30,'2021-11-15 11:48:48','admin','2021-11-18 21:14:46','admin'),
('CS0012','CV. AMELIYA JAYA BOXINDO','KUDUS','KUDUS','-','KUDUS','081328444222','-',45,'2021-11-15 11:49:50','admin','2021-11-18 21:14:57','admin'),
('CS0013','CV. LAUTAN MITRA','JL. GEBANG ANOM RT4/RW8, GENUK, SEMARANG','JL. GEBANG ANOM RT4/RW8, GENUK, SEMARANG','-','SEMARANG','02476453269','-',30,'2021-11-15 11:51:13','admin','2021-11-18 21:15:06','admin'),
('CS0014','CV. ASTA MANDIRI KARTONINDO','JL. DR. SURTMO NO 4, SEMARANG','JL. DR. SURTMO NO 4, SEMARANG','-','SEMARANG','02476636799','-',60,'2021-11-15 11:52:09','admin','2021-11-18 21:15:14','admin'),
('CS0015','CV. SURYAMAS BOXINDO','KPN MUSTIKA JOGOLOYO RT003 RW005, KEC WONOSALAM, DEMAK','KPN MUSTIKA JOGOLOYO RT003 RW005, KEC WONOSALAM, DEMAK','-','DEMAK','-','-',45,'2021-11-15 11:53:26','admin','2021-11-18 21:15:25','admin'),
('CS0016','PT. MUNCUL PUTRA OFFSET','KAWASAN INDUSTRI CANDI BLOK 21, NGALIYAN, SEMARANG','KAWASAN INDUSTRI CANDI BLOK 21, NGALIYAN, SEMARANG','-','SEMARANG','-','-',30,'2021-11-15 12:03:03','admin','2021-11-18 21:15:34','admin'),
('CS0017','CV. CAHAYA UTAMA BOX','KUDUS','KUDUS','-','KUDUS','-','-',60,'2021-11-15 12:03:57','admin','2021-11-18 21:15:45','admin'),
('CS0018','CV. KEMASAN MODERN','JL. DR. CIPTO NO 232, RT003/003, SEMARANG','SEMARANG','-','SEMARANG','-','-',45,'2021-11-15 12:05:35','admin','2021-11-18 21:15:55','admin'),
('CS0019','YOTA LAREDO','BANTUL','BANTUL','-','BANTUL','-','-',30,'2021-11-17 09:45:11','admin','0000-00-00 00:00:00',NULL),
('CS0020','CV. VEDENSIA','KLATEN','KLATEN','-','KLATEN','-','-',45,'2021-11-17 09:45:54','admin','2021-11-18 21:16:06','admin'),
('CS0021','PT. KELOLA AGRO MAKMUR','JL. RAYA KRANGGAN PRINGSURAT KM2,2  NO 99 NGUWET, KRANGGAN, TEMANGGUNG','TEMANGGUNG','-','TEMANGGUNG','-','-',45,'2021-11-17 09:47:11','admin','2021-11-18 21:16:14','admin'),
('CS0022','PT. KANISIUS','JL. CEMPAKA 9, DERESAN, YOGYAKARTA','YOGYAKARTA','-','YOGYAKARTA','-','-',30,'2021-11-17 09:48:05','admin','2021-11-18 21:16:22','admin'),
('CS0023','BP. AJI','JL. BUTIN, GG ANGGREK VI, KEDUNGSARI, MAGELANG','JL. BUTIN, GG ANGGREK VI, KEDUNGSARI, MAGELANG','-','MAGELANG','-','-',30,'2021-11-17 09:49:45','admin','2021-11-18 21:16:34','admin'),
('CS0024','SETYO UTOMO KARTON','JL. DIPONEGORO NO 13, DS WONOSALAM, DEMAK','JL. DIPONEGORO NO 13, DS WONOSALAM, DEMAK','-','DEMAK','-','-',30,'2021-11-17 09:50:56','admin','0000-00-00 00:00:00',NULL),
('CS0025','CV. YESTOYA MAKMUR JAYA GROUP','JL. DS GONDANG TEGI NGASEM, TEGALREJO, MAGELANG','JL. DS GONDANG TEGI NGASEM, TEGALREJO, MAGELANG','-','MAGELANG','-','-',60,'2021-11-17 09:52:13','admin','2021-11-18 21:16:45','admin'),
('CS0026','CV. SAHABAT PRIMA MULYA','JL. PARANGTRITIS KM 19,5 DS PANJANG, PANJANGREJO, PUDONG, BANTUL, YOGYAKARTA','YOGYAKARTA','-','YOGYAKARTA','-','-',30,'2021-11-17 09:53:47','admin','2021-11-18 21:16:54','admin'),
('CS0027','PT. DELTOMED LABORATORIES','DS NANGGER RT05 RW05 NAMBANGAN SELOGIRI, WONOGIRI','DS NANGGER RT05 RW05 NAMBANGAN SELOGIRI, WONOGIRI','-','WONOGIRI','-','-',30,'2021-11-17 09:55:12','admin','2021-11-18 21:17:05','admin'),
('CS0028','PT. SEKAWAN MAJU BOXINDO','DKH PESANTREN RT 003 RW002, KLUMPIT GEBOG, KUDUS','KUDUS','-','KUDUS','-','-',45,'2021-11-17 09:56:48','admin','2021-11-18 21:17:14','admin'),
('CS0029','ATIK ( SURYA JAYA SEJATI )','JL. RAYA BAWU RT42/RW08, KEC BATEALIT, KAB JEPARA','JEPARA','-','JEPARA','-','-',30,'2021-11-17 10:07:11','admin','2021-11-18 21:17:46','admin'),
('CS0030','CV. CYNTHIA BOX','RING ROAD UTARA RT02/05, KLUMPIT, GEBOG, KUDUS','KUDUS','-','KUDUS','-','-',45,'2021-11-17 10:08:22','admin','2021-11-18 21:17:24','admin');

/*Table structure for table `m_produk` */

DROP TABLE IF EXISTS `m_produk`;

CREATE TABLE `m_produk` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_mc` varchar(100) NOT NULL,
  `nm_produk` varchar(200) NOT NULL,
  `no_customer` varchar(100) DEFAULT NULL,
  `customer` varchar(100) DEFAULT NULL,
  `ukuran` varchar(200) NOT NULL,
  `ukuran_sheet` varchar(200) DEFAULT NULL,
  `material` varchar(200) NOT NULL DEFAULT '0',
  `flute` varchar(100) NOT NULL,
  `sambungan` varchar(100) DEFAULT NULL,
  `tipe` varchar(100) DEFAULT NULL,
  `wall` varchar(100) DEFAULT NULL,
  `l_panjang` varchar(100) DEFAULT NULL,
  `l_lebar` varchar(100) DEFAULT NULL,
  `berat_bersih` varchar(100) DEFAULT NULL,
  `luas_bersih` varchar(100) DEFAULT NULL,
  `no_design` varchar(100) DEFAULT NULL,
  `jml_ikat` varchar(100) DEFAULT NULL,
  `jml_palet` varchar(100) DEFAULT NULL,
  `jml_paku` varchar(100) DEFAULT NULL,
  `no_pisau` varchar(100) DEFAULT NULL,
  `no_karet` varchar(100) DEFAULT NULL,
  `COA` varchar(100) DEFAULT NULL,
  `design` varchar(100) DEFAULT NULL,
  `spesial_req` varchar(100) DEFAULT NULL,
  `toleransi_kirim` varchar(100) DEFAULT NULL,
  `creasing` varchar(100) DEFAULT NULL,
  `warna` varchar(100) NOT NULL,
  `kualitas` varchar(100) NOT NULL,
  `jenis_produk` varchar(100) NOT NULL,
  `tipe_box` varchar(100) NOT NULL,
  `kategori` varchar(100) DEFAULT NULL,
  `add_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `add_user` varchar(100) DEFAULT NULL,
  `edit_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `edit_user` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

/*Data for the table `m_produk` */

insert  into `m_produk`(`id`,`kode_mc`,`nm_produk`,`no_customer`,`customer`,`ukuran`,`ukuran_sheet`,`material`,`flute`,`sambungan`,`tipe`,`wall`,`l_panjang`,`l_lebar`,`berat_bersih`,`luas_bersih`,`no_design`,`jml_ikat`,`jml_palet`,`jml_paku`,`no_pisau`,`no_karet`,`COA`,`design`,`spesial_req`,`toleransi_kirim`,`creasing`,`warna`,`kualitas`,`jenis_produk`,`tipe_box`,`kategori`,`add_time`,`add_user`,`edit_time`,`edit_user`) values 
(1,'123','nama produk 1',NULL,NULL,'ukuran 1',NULL,'material 1','flute 1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'creasing 1','warna 1','kulitas 1','jenis produk 1','tipe box',NULL,'2021-09-27 15:06:24','admin','2021-09-30 14:29:28','admin'),
(2,'12345','nama produk 2',NULL,NULL,'ukuran 2',NULL,'material 2','flute 2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'creasing 2','warna 2','kulitas 2','jenis produk 2','tipe box 2',NULL,'2021-09-27 15:33:27','admin','2021-09-30 14:34:16','admin'),
(3,'01','Sheet Mitra Andalan Box',NULL,NULL,'3000 x 1770',NULL,'K125 / M125 X 3 / M125','CB',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'-','-','K125 / M125 X 3 / M125','Sheet','-','Produk sheet','2021-10-07 10:14:54','admin','2021-10-30 08:36:00','admin'),
(4,'02','SHEET 1818 X 774',NULL,NULL,'1818 X 447',NULL,'K125/M125X3/K125','BC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'197 / 380 / 197','COKLAT','K125/M125X3/K125','-','-',NULL,'2021-10-15 13:05:52','admin','0000-00-00 00:00:00',NULL),
(5,'111','test','test','test','test','test','test','test','test','test','test','test','test','test','test','test','test','test','test','test','test','test','test','test','test','test','test','test','test','test','Produk sheet','2021-11-12 09:06:10','admin','2021-11-12 09:06:56','admin'),
(6,'CS0004-A03-161121-0001','SHEET GANDUNG 2800 X 1580','CS0004','GANDUNG','-','2800 X 1500','K125/M125/M125','B','GLUE','SHEET','SINGLE','2800','1500',' 1,8581 ',' 4,424 ','-','-','-','-','-','-','-','-','SHEET BAGUS SESUAI STANDART (TIDAK GEMBOS, KREPEK, KULIT JERUK, DLL)','5 %','-','-','K125/M125/M125','SHEET','-','Produk box','2021-11-17 11:16:39','admin','2021-11-18 21:33:01','admin'),
(7,'CS0002-A03-161121-0002','SHEET MAB 1778 X 597','CS0002','MITRA ANDLAN BOX, CV','-','1778 X 597','K12/M125/M125/M125/M125','BC','GLUE','SHEET','DOUBLE','1778','597','0,7722','1,061','-','-','-','-','-','-','-','-','SHEET SESUAI STANDART','5%','221/155/221','-','K12/M125/M125/M125/M125','-','-','Produk sheet','2021-11-17 13:48:39','admin','2021-11-18 21:32:39','admin'),
(8,'CS0002-A03-161121-0003','SHEET MAB 838 X 1245','CS0002','MITRA NADALAN BOX, CV','-','838 X 1245','K125/M125/M125','B','GLUE','SHEET','SINGLE','838','1245','0,4382','1,043','-','-','-','-','-','-','-','-','SHEET SESUAI STANDART','5%','-','-','K125/M125/M125','-','-','Produk sheet','2021-11-17 13:51:43','admin','2021-11-18 21:33:10','admin'),
(9,'CS0010-A03-181121-0001','SHEET UK 3000 X 1300','CS0010','HUSNI RAIS','-','3000 X 1300','K150/M125/M125/M125/M125','BC','GLUE','SHEET','DOUBLE','3000','1300',' 2,9348 ',' 3,900 ','-','-','-','-','-','-','-','-','SHEET SESUAI STANDART','5%','-','-','K150/M125/M125/M125/M125','-','-','Produk sheet','2021-11-18 21:24:27','admin','2021-11-18 21:31:06','admin'),
(10,'CS0010-A03-181121-0002','SHEET UK 3000 X 1500','CS0010','HUSNI RAIS','-','3000 X 1500','K150/M125/M125/M125/M125','BC','GLUE','SHEET','DOUBLE','3000','1500',' 3,3863 ',' 4,500 ','-','-','-','-','-','-','-','-','SHEET SESUAI STANDART','5%','-','-','K150/M125/M125/M125/M125','-','-','Produk sheet','2021-11-18 21:26:49','admin','2021-11-18 21:31:18','admin'),
(11,'CS0010-A03-181121-0003','SHEET UK 2415 X 1110','CS0010','HUSNI RAIS','-','2415 X 1110','K150/M125/M125/M125/M125','BC','GLUE','SHEET','DOUBLE','2415','1110',' 2,0172 ',' 2,681 ','-','-','-','-','-','-','-','-','SHEET SESUAI STANDART','5%','-','-','K150/M125/M125/M125/M125','-','-','Produk sheet','2021-11-18 21:29:41','admin','2021-11-18 21:31:00','admin'),
(12,'CS0019-A03-181121-0004','SHEET UK 1560 x 665','CS0019','YOTA LAREDO','-','1560 x 665','K150/M125/M125/M125/M125','BC','GLUE','SHEET','DOUBLE','1560','665',' 0,7806 ',' 1,037 ','-','-','-','-','-','-','-','-','SHEET SESUAI STANDART','5%','160/345-160','-','K150/M125/M125/M125/M125','-','-','Produk sheet','2021-11-18 21:36:57','admin','0000-00-00 00:00:00',NULL),
(13,'CS0019-A03-181121-0005','SHEET UK 1920 x 930','CS0019','YOTA LAREDO','-','1920 x 930','K150/M125/M125','B','GLUE','SHEET','SINGLE','1920','930',' 0,7946 ',' 1,786 ','-','-','-','-','-','-','-','-','SHEET SESUAI STANDART','5%','-','-','K150/M125/M125','-','-','Produk sheet','2021-11-18 21:39:14','admin','0000-00-00 00:00:00',NULL),
(14,'CS0007-A03-181121-0006','SHEET UK 1707 x 1473','CS0007','PT. ANUGRAH JAYA PACKINDO','-','1707 x 1473','K150/M125/M125/M125/M125','BC','GLUE','SHEET','DOUBLE','1707','1473',' 1,8921 ',' 2,514 ','-','-','-','-','-','-','-','-','SHEET SESUAI STANDART','5%','-','-','K150/M125/M125/M125/M125','-','-','Produk sheet','2021-11-18 21:44:01','admin','2021-11-18 22:05:45','admin'),
(15,'CS0007-A03-181121-0007','SHEET UK 1707 x 1524','CS0007','PT. ANUGRAH JAYA PACKINDO','-','1707 x 1524','K150/M125/M125/M125/M125','BC','GLUE','SHEET','DOUBLE','1707','1524',' 1,9576 ',' 2,601 ','-','-','-','-','-','-','-','-','SHEET SESUAI STANDART','5%','-','-','K150/M125/M125/M125/M125','-','-','Produk sheet','2021-11-18 21:46:37','admin','2021-11-18 22:05:01','admin'),
(16,'CS0007-A03-181121-0008','SHEET UK 1554 x 1295','CS0007','PT. ANUGRAH JAYA PACKINDO','-','1554 x 1295','K150/M125/M125/M125/M125','BC','GLUE','SHEET','DOUBLE','1554','1295',' 1,5144 ',' 2,012 ','-','-','-','-','-','-','-','-','SHEET SESUAI STANDART','5%','-','-','K150/M125/M125/M125/M125','-','-','Produk sheet','2021-11-18 21:48:40','admin','2021-11-18 22:05:14','admin'),
(17,'CS0019-A03-181121-0006','SHEET UK 1707 x 1473','CS0019','PT. ANUGRAH JAYA PACKINDO','-','1707 x 1473','K150/M125/M125/M125/M125','BC','GLUE','SHEET','DOUBLE','1707','1473',' 1,8921 ',' 2,514 ','-','-','-','-','-','-','-','-','SHEET SESUAI STANDART','5%','-','-','K150/M125/M125/M125/M125','-','-','Produk sheet','2021-11-18 21:52:30','admin','2021-11-18 21:52:47','admin');

/*Table structure for table `m_setting` */

DROP TABLE IF EXISTS `m_setting`;

CREATE TABLE `m_setting` (
  `nm_aplikasi` varchar(100) DEFAULT NULL,
  `singkatan` varchar(50) DEFAULT NULL,
  `diskon_member` int(5) DEFAULT NULL,
  `nm_toko` varchar(255) DEFAULT NULL,
  `alamat` text,
  `no_telp` varchar(20) DEFAULT NULL,
  `logo` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `m_setting` */

insert  into `m_setting`(`nm_aplikasi`,`singkatan`,`diskon_member`,`nm_toko`,`alamat`,`no_telp`,`logo`) values 
('Sistem Penjualan','SI Penjualan',10,'Salon Abadi','Jl Peta','0228','logo.png');

/*Table structure for table `tb_user` */

DROP TABLE IF EXISTS `tb_user`;

CREATE TABLE `tb_user` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 NOT NULL,
  `password` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `nm_user` varchar(99) COLLATE latin1_general_ci DEFAULT NULL,
  `level` enum('Admin','User') COLLATE latin1_general_ci NOT NULL DEFAULT 'User',
  PRIMARY KEY (`username`),
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=564 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `tb_user` */

insert  into `tb_user`(`id`,`username`,`password`,`nm_user`,`level`) values 
(1,'admin','YWRtaW4=','Admin','Admin');

/*Table structure for table `trs_po` */

DROP TABLE IF EXISTS `trs_po`;

CREATE TABLE `trs_po` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `no_po` varchar(25) NOT NULL,
  `tgl_po` date NOT NULL,
  `kode_po` varchar(20) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'Open',
  `total_qty` int(11) NOT NULL,
  `id_pelanggan` char(6) NOT NULL,
  `nm_pelanggan` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `alamat_kirim` text NOT NULL,
  `lokasi` varchar(100) NOT NULL,
  `kota` varchar(100) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `fax` varchar(20) NOT NULL,
  `top` int(11) NOT NULL,
  `add_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `add_user` varchar(100) DEFAULT NULL,
  `edit_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `edit_user` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`no_po`),
  KEY `id` (`id`),
  KEY `id_2` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

/*Data for the table `trs_po` */

insert  into `trs_po`(`id`,`no_po`,`tgl_po`,`kode_po`,`status`,`total_qty`,`id_pelanggan`,`nm_pelanggan`,`alamat`,`alamat_kirim`,`lokasi`,`kota`,`no_telp`,`fax`,`top`,`add_time`,`add_user`,`edit_time`,`edit_user`) values 
(8,'PO-2021-0000000002','2021-10-07','0007/MAB/10/21','Closed',1300,'CS0002','CV MITRA ANDALAN BOX','Dusun Salakan RT. 02 , Bangunjiwo , Kasihan , BANTUL , 55184\n ','Dusun Salakan RT. 02 , Bangunjiwo , Kasihan , BANTUL , 55184','-','YOGYAKARTA','081391191691','-',45,'2021-10-07 10:15:31','admin','0000-00-00 00:00:00',NULL),
(9,'PO-2021-0000000003','2021-10-15','SAKI/13.10.21/002','Closed',5050,'CS0003','PT SERIKAT ABADI KEMASAN INDONESIA','JL. MUKTIHARJO DALAM RAYA NO.67 RW/RW 001 MUKTIHARJO KIDUL - PEDURUNGAN \nKOTA SEMARANG','JL. MUKTIHARJO DALAM RAYA NO.67 RW/RW 001 MUKTIHARJO KIDUL - PEDURUNGAN \nKOTA SEMARANG','SEMARANG','SEMARANG','0','0',45,'2021-10-15 13:41:50','admin','0000-00-00 00:00:00',NULL),
(10,'PO-2021-0000000004','2021-11-12','111','Open',1,'CS0002','CV MITRA ANDALAN BOX','Dusun Salakan RT. 02 , Bangunjiwo , Kasihan , BANTUL , 55184\n ','Dusun Salakan RT. 02 , Bangunjiwo , Kasihan , BANTUL , 55184','-','YOGYAKARTA','081391191691','-',45,'2021-11-12 09:53:50','admin','0000-00-00 00:00:00',NULL),
(11,'PO-2021-0000000005','2021-11-17','16/11/21','Closed',1500,'CS0004','GANDUNG','JL. REJOSARI III, KAPONAN - GRABAG, MAGELANG','JL. REJOSARI III, KAPONAN - GRABAG, MAGELANG','-','MAGELANG','081227253756','-',30,'2021-11-17 11:22:16','admin','0000-00-00 00:00:00',NULL),
(12,'PO-2021-0000000006','2021-11-17','0013/MAB/11/21','Closed',1412,'CS0002','MITRA ANDALAN BOX, CV','Dusun Salakan RT. 02 , Bangunjiwo , Kasihan , BANTUL , 55184\n ','Dusun Salakan RT. 02 , Bangunjiwo , Kasihan , BANTUL , 55184','-','YOGYAKARTA','081391191691','-',45,'2021-11-17 13:55:06','admin','0000-00-00 00:00:00',NULL),
(13,'PO-2021-0000000007','2021-11-18','PPI 0006','Closed',600,'CS0010','HUSNI RAIS','DUKUH MANDUNGAN, KAB SUKOHARJO','DUKUH MANDUNGAN, KAB SUKOHARJO','-','SUKOHARJO','085100154966','-',30,'2021-11-18 21:57:59','admin','2021-11-18 21:58:29','admin'),
(14,'PO-2021-0000000008','2021-11-18','PPI 0006','Closed',1400,'CS0010','HUSNI RAIS','DUKUH MANDUNGAN, KAB SUKOHARJO','DUKUH MANDUNGAN, KAB SUKOHARJO','-','SUKOHARJO','085100154966','-',30,'2021-11-18 22:00:33','admin','0000-00-00 00:00:00',NULL),
(15,'PO-2021-0000000009','2021-11-18','PO 0011','Closed',935,'CS0019','YOTA LAREDO','BANTUL','BANTUL','-','BANTUL','-','-',30,'2021-11-18 22:02:21','admin','2021-11-18 22:06:01','admin'),
(16,'PO-2021-0000000010','2021-11-18','21PPI1005','Closed',1394,'CS0007','PT. ANUGERAH JAYA PACKINDO','DS 2, KALIGENTONG, KEC AMPEL, KAB BOYOLALI','DS 2, KALIGENTONG, KEC AMPEL, KAB BOYOLALI','-','BOYOLALI','-','-',60,'2021-11-18 22:08:39','admin','0000-00-00 00:00:00',NULL),
(18,'PO-2021-12-0000000011','2021-12-07','123','Closed',30,'CS0002','CV. MITRA ANDALAN BOX','Dusun Salakan RT. 02 , Bangunjiwo , Kasihan , BANTUL , 55184\n ','Dusun Salakan RT. 02 , Bangunjiwo , Kasihan , BANTUL , 55184','-','YOGYAKARTA','081391191691','-',45,'2021-12-07 13:47:53','admin','0000-00-00 00:00:00',NULL);

/*Table structure for table `trs_po_detail` */

DROP TABLE IF EXISTS `trs_po_detail`;

CREATE TABLE `trs_po_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `no_po` varchar(25) NOT NULL,
  `tgl_po` date NOT NULL,
  `kode_po` varchar(20) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'Open',
  `qty` int(11) NOT NULL,
  `kode_mc` varchar(100) NOT NULL,
  `nm_produk` varchar(200) NOT NULL,
  `ukuran` varchar(200) NOT NULL,
  `harga` decimal(10,2) NOT NULL DEFAULT '0.00',
  `material` varchar(200) NOT NULL DEFAULT '0',
  `flute` varchar(100) NOT NULL,
  `creasing` varchar(100) NOT NULL,
  `warna` varchar(100) NOT NULL,
  `kualitas` varchar(100) NOT NULL,
  `jenis_produk` varchar(100) NOT NULL,
  `tipe_box` varchar(100) NOT NULL,
  `id_pelanggan` char(6) NOT NULL,
  `nm_pelanggan` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `alamat_kirim` text NOT NULL,
  `lokasi` varchar(100) NOT NULL,
  `kota` varchar(100) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `fax` varchar(20) NOT NULL,
  `top` int(11) NOT NULL,
  `ppn` varchar(50) DEFAULT NULL,
  `price_inc` decimal(10,2) DEFAULT NULL,
  `price_exc` decimal(10,2) DEFAULT NULL,
  `add_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `add_user` varchar(100) DEFAULT NULL,
  `edit_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `edit_user` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`no_po`,`kode_mc`),
  KEY `id` (`id`),
  KEY `id_2` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

/*Data for the table `trs_po_detail` */

insert  into `trs_po_detail`(`id`,`no_po`,`tgl_po`,`kode_po`,`status`,`qty`,`kode_mc`,`nm_produk`,`ukuran`,`harga`,`material`,`flute`,`creasing`,`warna`,`kualitas`,`jenis_produk`,`tipe_box`,`id_pelanggan`,`nm_pelanggan`,`alamat`,`alamat_kirim`,`lokasi`,`kota`,`no_telp`,`fax`,`top`,`ppn`,`price_inc`,`price_exc`,`add_time`,`add_user`,`edit_time`,`edit_user`) values 
(10,'PO-2021-0000000002','2021-10-07','0007/MAB/10/21','Closed',1300,'01','Sheet Mitra Andalan Box','	3000 x 1770',41141.00,'K125 / M125 X 3 / M125','CB','-','-','K125 / M125 X 3 / M125','Sheet','-','CS0002','CV MITRA ANDALAN BOX','Dusun Salakan RT. 02 , Bangunjiwo , Kasihan , BANTUL , 55184\n ','Dusun Salakan RT. 02 , Bangunjiwo , Kasihan , BANTUL , 55184','-','YOGYAKARTA','081391191691','-',45,NULL,NULL,NULL,'2021-10-07 10:15:31','admin','0000-00-00 00:00:00',NULL),
(11,'PO-2021-0000000003','2021-10-15','SAKI/13.10.21/002','Closed',5050,'02','SHEET 1818 X 774','1818 X 447',10091.00,'K125/M125X3/K125','BC','197 / 380 / 197','COKLAT','K125/M125X3/K125','-','-','CS0003','PT SERIKAT ABADI KEMASAN INDONESIA','JL. MUKTIHARJO DALAM RAYA NO.67 RW/RW 001 MUKTIHARJO KIDUL - PEDURUNGAN \nKOTA SEMARANG','JL. MUKTIHARJO DALAM RAYA NO.67 RW/RW 001 MUKTIHARJO KIDUL - PEDURUNGAN \nKOTA SEMARANG','SEMARANG','SEMARANG','0','0',45,NULL,NULL,NULL,'2021-10-15 13:41:50','admin','0000-00-00 00:00:00',NULL),
(12,'PO-2021-0000000004','2021-11-12','111','Open',1,'123','nama produk 1','ukuran 1',0.00,'material 1','flute 1','creasing 1','warna 1','kulitas 1','jenis produk 1','tipe box','CS0002','CV MITRA ANDALAN BOX','Dusun Salakan RT. 02 , Bangunjiwo , Kasihan , BANTUL , 55184\n ','Dusun Salakan RT. 02 , Bangunjiwo , Kasihan , BANTUL , 55184','-','YOGYAKARTA','081391191691','-',45,'KB',1000.00,1100.00,'2021-11-12 09:53:50','admin','0000-00-00 00:00:00',NULL),
(13,'PO-2021-0000000005','2021-11-17','16/11/21','Closed',1500,'CS004-A03-161121-0001','SHEET GANDUNG 2800 X 1580','-',0.00,'K125/M125/M125','B','-','-','K125/M125/M125','SHEET','-','CS0004','GANDUNG','JL. REJOSARI III, KAPONAN - GRABAG, MAGELANG','JL. REJOSARI III, KAPONAN - GRABAG, MAGELANG','-','MAGELANG','081227253756','-',30,'NP',21210.00,0.00,'2021-11-17 11:22:15','admin','0000-00-00 00:00:00',NULL),
(14,'PO-2021-0000000006','2021-11-17','0013/MAB/11/21','Closed',562,'CS002-A03-161121-0002','SHEET MAB 1778 X 597','-',0.00,'K12/M125/M125/M125/M125','BC','221/155/221','-','K12/M125/M125/M125/M125','-','-','CS0002','MITRA ANDALAN BOX, CV','Dusun Salakan RT. 02 , Bangunjiwo , Kasihan , BANTUL , 55184\n ','Dusun Salakan RT. 02 , Bangunjiwo , Kasihan , BANTUL , 55184','-','YOGYAKARTA','081391191691','-',45,'PP',8615.00,783181.00,'2021-11-17 13:55:06','admin','0000-00-00 00:00:00',NULL),
(15,'PO-2021-0000000006','2021-11-17','0013/MAB/11/21','Closed',850,'CS002-A03-161121-0003','SHEET MAB 838 X 1245','-',0.00,'K125/M125/M125','B','-','-','K125/M125/M125','-','-','CS0002','MITRA ANDALAN BOX, CV','Dusun Salakan RT. 02 , Bangunjiwo , Kasihan , BANTUL , 55184\n ','Dusun Salakan RT. 02 , Bangunjiwo , Kasihan , BANTUL , 55184','-','YOGYAKARTA','081391191691','-',45,'PP',5061.00,4600.00,'2021-11-17 13:55:06','admin','0000-00-00 00:00:00',NULL),
(16,'PO-2021-0000000007','2021-11-18','PPI 0006','Closed',600,'CS0010-A03-181121-0001','SHEET UK 3000 X 1300','-',0.00,'K150/M125/M125/M125/M125','BC','-','-','K150/M125/M125/M125/M125','-','-','CS0010','HUSNI RAIS','DUKUH MANDUNGAN, KAB SUKOHARJO','DUKUH MANDUNGAN, KAB SUKOHARJO','-','SUKOHARJO','085100154966','-',30,'PP',32.01,29.10,'2021-11-18 21:57:59','admin','2021-11-18 21:58:29','admin'),
(17,'PO-2021-0000000008','2021-11-18','PPI 0006','Closed',600,'CS0010-A03-181121-0002','SHEET UK 3000 X 1500','-',0.00,'K150/M125/M125/M125/M125','BC','-','-','K150/M125/M125/M125/M125','-','-','CS0010','HUSNI RAIS','DUKUH MANDUNGAN, KAB SUKOHARJO','DUKUH MANDUNGAN, KAB SUKOHARJO','-','SUKOHARJO','085100154966','-',30,'PP',36.94,33.58,'2021-11-18 22:00:33','admin','0000-00-00 00:00:00',NULL),
(18,'PO-2021-0000000008','2021-11-18','PPI 0006','Closed',800,'CS0010-A03-181121-0003','SHEET UK 2415 X 1110','-',0.00,'K150/M125/M125/M125/M125','BC','-','-','K150/M125/M125/M125/M125','-','-','CS0010','HUSNI RAIS','DUKUH MANDUNGAN, KAB SUKOHARJO','DUKUH MANDUNGAN, KAB SUKOHARJO','-','SUKOHARJO','085100154966','-',30,'PP',22.00,20.00,'2021-11-18 22:00:33','admin','0000-00-00 00:00:00',NULL),
(19,'PO-2021-0000000009','2021-11-18','PO 0011','Closed',675,'CS0019-A03-181121-0004','SHEET UK 1560 x 665','-',0.00,'K150/M125/M125/M125/M125','BC','160/345-160','-','K150/M125/M125/M125/M125','-','-','CS0019','YOTA LAREDO','BANTUL','BANTUL','-','BANTUL','-','-',30,'PP',8.67,7.88,'2021-11-18 22:02:21','admin','2021-11-18 22:06:01','admin'),
(20,'PO-2021-0000000009','2021-11-18','PO 0011','Closed',260,'CS0019-A03-181121-0005','SHEET UK 1920 x 930','-',0.00,'K150/M125/M125','B','-','-','K150/M125/M125','-','-','CS0019','YOTA LAREDO','BANTUL','BANTUL','-','BANTUL','-','-',30,'PP',9.10,8.27,'2021-11-18 22:02:21','admin','2021-11-18 22:06:01','admin'),
(21,'PO-2021-0000000010','2021-11-18','21PPI1005','Closed',485,'CS0007-A03-181121-0006','SHEET UK 1707 x 1473','-',0.00,'K150/M125/M125/M125/M125','BC','-','-','K150/M125/M125/M125/M125','-','-','CS0007','PT. ANUGERAH JAYA PACKINDO','DS 2, KALIGENTONG, KEC AMPEL, KAB BOYOLALI','DS 2, KALIGENTONG, KEC AMPEL, KAB BOYOLALI','-','BOYOLALI','-','-',60,'PP',18.50,16.82,'2021-11-18 22:08:39','admin','0000-00-00 00:00:00',NULL),
(22,'PO-2021-0000000010','2021-11-18','21PPI1005','Closed',547,'CS0007-A03-181121-0007','SHEET UK 1707 x 1524','-',0.00,'K150/M125/M125/M125/M125','BC','-','-','K150/M125/M125/M125/M125','-','-','CS0007','PT. ANUGERAH JAYA PACKINDO','DS 2, KALIGENTONG, KEC AMPEL, KAB BOYOLALI','DS 2, KALIGENTONG, KEC AMPEL, KAB BOYOLALI','-','BOYOLALI','-','-',60,'PP',19.14,17.40,'2021-11-18 22:08:39','admin','0000-00-00 00:00:00',NULL),
(23,'PO-2021-0000000010','2021-11-18','21PPI1005','Closed',362,'CS0007-A03-181121-0008','SHEET UK 1554 x 1295','-',0.00,'K150/M125/M125/M125/M125','BC','-','-','K150/M125/M125/M125/M125','-','-','CS0007','PT. ANUGERAH JAYA PACKINDO','DS 2, KALIGENTONG, KEC AMPEL, KAB BOYOLALI','DS 2, KALIGENTONG, KEC AMPEL, KAB BOYOLALI','-','BOYOLALI','-','-',60,'PP',14.81,13.46,'2021-11-18 22:08:39','admin','0000-00-00 00:00:00',NULL),
(26,'PO-2021-12-0000000011','2021-12-07','123','Closed',10,'123','nama produk 1','ukuran 1',0.00,'material 1','flute 1','creasing 1','warna 1','kulitas 1','jenis produk 1','tipe box','CS0002','CV. MITRA ANDALAN BOX','Dusun Salakan RT. 02 , Bangunjiwo , Kasihan , BANTUL , 55184\n ','Dusun Salakan RT. 02 , Bangunjiwo , Kasihan , BANTUL , 55184','-','YOGYAKARTA','081391191691','-',45,'KB',1000.00,1000.00,'2021-12-07 13:47:53','admin','0000-00-00 00:00:00',NULL),
(27,'PO-2021-12-0000000011','2021-12-07','123','Closed',20,'12345','nama produk 2','ukuran 2',0.00,'material 2','flute 2','creasing 2','warna 2','kulitas 2','jenis produk 2','tipe box 2','CS0002','CV. MITRA ANDALAN BOX','Dusun Salakan RT. 02 , Bangunjiwo , Kasihan , BANTUL , 55184\n ','Dusun Salakan RT. 02 , Bangunjiwo , Kasihan , BANTUL , 55184','-','YOGYAKARTA','081391191691','-',45,'KB',1000.00,1000.00,'2021-12-07 13:47:53','admin','0000-00-00 00:00:00',NULL);

/*Table structure for table `trs_so_detail` */

DROP TABLE IF EXISTS `trs_so_detail`;

CREATE TABLE `trs_so_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `no_so` varchar(25) NOT NULL,
  `tgl_so` date NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'Open',
  `salesman` varchar(150) NOT NULL,
  `no_po` varchar(25) NOT NULL,
  `tgl_po` date NOT NULL,
  `kode_po` varchar(20) NOT NULL,
  `qty` int(11) NOT NULL,
  `kode_mc` varchar(100) NOT NULL,
  `nm_produk` varchar(200) NOT NULL,
  `ukuran` varchar(200) NOT NULL,
  `harga` decimal(10,2) NOT NULL DEFAULT '0.00',
  `material` varchar(200) NOT NULL DEFAULT '0',
  `flute` varchar(100) NOT NULL,
  `creasing` varchar(100) NOT NULL,
  `warna` varchar(100) NOT NULL,
  `kualitas` varchar(100) NOT NULL,
  `jenis_produk` varchar(100) NOT NULL,
  `tipe_box` varchar(100) NOT NULL,
  `id_pelanggan` char(6) NOT NULL,
  `nm_pelanggan` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `alamat_kirim` text NOT NULL,
  `lokasi` varchar(100) NOT NULL,
  `kota` varchar(100) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `fax` varchar(20) NOT NULL,
  `top` int(11) NOT NULL,
  `add_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `add_user` varchar(100) DEFAULT NULL,
  `edit_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `edit_user` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`no_so`),
  KEY `id` (`id`),
  KEY `id_2` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

/*Data for the table `trs_so_detail` */

insert  into `trs_so_detail`(`id`,`no_so`,`tgl_so`,`status`,`salesman`,`no_po`,`tgl_po`,`kode_po`,`qty`,`kode_mc`,`nm_produk`,`ukuran`,`harga`,`material`,`flute`,`creasing`,`warna`,`kualitas`,`jenis_produk`,`tipe_box`,`id_pelanggan`,`nm_pelanggan`,`alamat`,`alamat_kirim`,`lokasi`,`kota`,`no_telp`,`fax`,`top`,`add_time`,`add_user`,`edit_time`,`edit_user`) values 
(18,'SO-2021-0000000003','2021-10-07','Closed','Pak Beny','PO-2021-0000000002','2021-10-07','0007/MAB/10/21',1300,'01','Sheet Mitra Andalan Box','	3000 x 1770',41141.00,'K125 / M125 X 3 / M125','CB','-','-','K125 / M125 X 3 / M125','Sheet','-','CS0002','CV MITRA ANDALAN BOX','Dusun Salakan RT. 02 , Bangunjiwo , Kasihan , BANTUL , 55184\n ','Dusun Salakan RT. 02 , Bangunjiwo , Kasihan , BANTUL , 55184','-','YOGYAKARTA','081391191691','-',45,'2021-10-07 10:16:30','admin','0000-00-00 00:00:00',NULL),
(19,'SO-2021-0000000004','2021-10-15','Closed','Pak Beny','PO-2021-0000000003','2021-10-15','SAKI/13.10.21/002',5050,'02','SHEET 1818 X 774','1818 X 447',10091.00,'K125/M125X3/K125','BC','197 / 380 / 197','COKLAT','K125/M125X3/K125','-','-','CS0003','PT SERIKAT ABADI KEMASAN INDONESIA','JL. MUKTIHARJO DALAM RAYA NO.67 RW/RW 001 MUKTIHARJO KIDUL - PEDURUNGAN \nKOTA SEMARANG','JL. MUKTIHARJO DALAM RAYA NO.67 RW/RW 001 MUKTIHARJO KIDUL - PEDURUNGAN \nKOTA SEMARANG','SEMARANG','SEMARANG','0','0',45,'2021-10-15 13:42:23','admin','0000-00-00 00:00:00',NULL),
(21,'SO-2021-0000000005','2021-11-17','Closed','BENNY','PO-2021-0000000005','2021-11-17','16/11/21',1500,'CS004-A03-161121-0001','SHEET GANDUNG 2800 X 1580','-',0.00,'K125/M125/M125','B','-','-','K125/M125/M125','SHEET','-','CS0004','GANDUNG','JL. REJOSARI III, KAPONAN - GRABAG, MAGELANG','JL. REJOSARI III, KAPONAN - GRABAG, MAGELANG','-','MAGELANG','081227253756','-',30,'2021-11-17 11:51:36','admin','0000-00-00 00:00:00',NULL),
(22,'SO-2021-0000000006','2021-11-17','Open','BENNY','PO-2021-0000000006','2021-11-17','0013/MAB/11/21',562,'CS002-A03-161121-0002','SHEET MAB 1778 X 597','-',0.00,'K12/M125/M125/M125/M125','BC','221/155/221','-','K12/M125/M125/M125/M125','-','-','CS0002','MITRA ANDALAN BOX, CV','Dusun Salakan RT. 02 , Bangunjiwo , Kasihan , BANTUL , 55184\n ','Dusun Salakan RT. 02 , Bangunjiwo , Kasihan , BANTUL , 55184','-','YOGYAKARTA','081391191691','-',45,'2021-11-17 13:56:19','admin','0000-00-00 00:00:00',NULL),
(23,'SO-2021-0000000007','2021-11-17','Open','BENNY','PO-2021-0000000006','2021-11-17','0013/MAB/11/21',850,'CS002-A03-161121-0003','SHEET MAB 838 X 1245','-',0.00,'K125/M125/M125','B','-','-','K125/M125/M125','-','-','CS0002','MITRA ANDALAN BOX, CV','Dusun Salakan RT. 02 , Bangunjiwo , Kasihan , BANTUL , 55184\n ','Dusun Salakan RT. 02 , Bangunjiwo , Kasihan , BANTUL , 55184','-','YOGYAKARTA','081391191691','-',45,'2021-11-17 13:56:32','admin','0000-00-00 00:00:00',NULL),
(24,'SO-2021-0000000008','2021-11-18','Closed','BENNY','PO-2021-0000000007','2021-11-18','PPI 0006',600,'CS0010-A03-181121-0001','SHEET UK 3000 X 1300','-',0.00,'K150/M125/M125/M125/M125','BC','-','-','K150/M125/M125/M125/M125','-','-','CS0010','HUSNI RAIS','DUKUH MANDUNGAN, KAB SUKOHARJO','DUKUH MANDUNGAN, KAB SUKOHARJO','-','SUKOHARJO','085100154966','-',30,'2021-11-18 22:10:16','admin','0000-00-00 00:00:00',NULL),
(25,'SO-2021-0000000009','2021-11-18','Closed','BENNY','PO-2021-0000000008','2021-11-18','PPI 0006',600,'CS0010-A03-181121-0002','SHEET UK 3000 X 1500','-',0.00,'K150/M125/M125/M125/M125','BC','-','-','K150/M125/M125/M125/M125','-','-','CS0010','HUSNI RAIS','DUKUH MANDUNGAN, KAB SUKOHARJO','DUKUH MANDUNGAN, KAB SUKOHARJO','-','SUKOHARJO','085100154966','-',30,'2021-11-18 22:10:37','admin','0000-00-00 00:00:00',NULL),
(26,'SO-2021-0000000010','2021-11-18','Closed','BENNY','PO-2021-0000000008','2021-11-18','PPI 0006',800,'CS0010-A03-181121-0003','SHEET UK 2415 X 1110','-',0.00,'K150/M125/M125/M125/M125','BC','-','-','K150/M125/M125/M125/M125','-','-','CS0010','HUSNI RAIS','DUKUH MANDUNGAN, KAB SUKOHARJO','DUKUH MANDUNGAN, KAB SUKOHARJO','-','SUKOHARJO','085100154966','-',30,'2021-11-18 22:11:36','admin','0000-00-00 00:00:00',NULL),
(27,'SO-2021-0000000011','2021-11-18','Open','BENNY','PO-2021-0000000009','2021-11-18','PO 0011',675,'CS0019-A03-181121-0004','SHEET UK 1560 x 665','-',0.00,'K150/M125/M125/M125/M125','BC','160/345-160','-','K150/M125/M125/M125/M125','-','-','CS0019','YOTA LAREDO','BANTUL','BANTUL','-','BANTUL','-','-',30,'2021-11-18 22:12:02','admin','0000-00-00 00:00:00',NULL),
(28,'SO-2021-0000000012','2021-11-18','Open','BENNY','PO-2021-0000000009','2021-11-18','PO 0011',260,'CS0019-A03-181121-0005','SHEET UK 1920 x 930','-',0.00,'K150/M125/M125','B','-','-','K150/M125/M125','-','-','CS0019','YOTA LAREDO','BANTUL','BANTUL','-','BANTUL','-','-',30,'2021-11-18 22:12:17','admin','0000-00-00 00:00:00',NULL),
(29,'SO-2021-0000000013','2021-11-18','Open','BENNY','PO-2021-0000000010','2021-11-18','21PPI1005',485,'CS0007-A03-181121-0006','SHEET UK 1707 x 1473','-',0.00,'K150/M125/M125/M125/M125','BC','-','-','K150/M125/M125/M125/M125','-','-','CS0007','PT. ANUGERAH JAYA PACKINDO','DS 2, KALIGENTONG, KEC AMPEL, KAB BOYOLALI','DS 2, KALIGENTONG, KEC AMPEL, KAB BOYOLALI','-','BOYOLALI','-','-',60,'2021-11-18 22:12:49','admin','0000-00-00 00:00:00',NULL),
(30,'SO-2021-0000000014','2021-11-18','Open','BENNY','PO-2021-0000000010','2021-11-18','21PPI1005',547,'CS0007-A03-181121-0007','SHEET UK 1707 x 1524','-',0.00,'K150/M125/M125/M125/M125','BC','-','-','K150/M125/M125/M125/M125','-','-','CS0007','PT. ANUGERAH JAYA PACKINDO','DS 2, KALIGENTONG, KEC AMPEL, KAB BOYOLALI','DS 2, KALIGENTONG, KEC AMPEL, KAB BOYOLALI','-','BOYOLALI','-','-',60,'2021-11-18 22:13:02','admin','0000-00-00 00:00:00',NULL),
(31,'SO-2021-0000000015','2021-11-18','Open','BENNY','PO-2021-0000000010','2021-11-18','21PPI1005',362,'CS0007-A03-181121-0008','SHEET UK 1554 x 1295','-',0.00,'K150/M125/M125/M125/M125','BC','-','-','K150/M125/M125/M125/M125','-','-','CS0007','PT. ANUGERAH JAYA PACKINDO','DS 2, KALIGENTONG, KEC AMPEL, KAB BOYOLALI','DS 2, KALIGENTONG, KEC AMPEL, KAB BOYOLALI','-','BOYOLALI','-','-',60,'2021-11-18 22:13:12','admin','0000-00-00 00:00:00',NULL),
(34,'SO-2021-12-0000000016','2021-12-07','Open','salesman 1','PO-2021-12-0000000011','2021-12-07','123',10,'123','nama produk 1','ukuran 1',0.00,'material 1','flute 1','creasing 1','warna 1','kulitas 1','jenis produk 1','tipe box','CS0002','CV. MITRA ANDALAN BOX','Dusun Salakan RT. 02 , Bangunjiwo , Kasihan , BANTUL , 55184\n ','Dusun Salakan RT. 02 , Bangunjiwo , Kasihan , BANTUL , 55184','-','YOGYAKARTA','081391191691','-',45,'2021-12-07 13:48:11','admin','0000-00-00 00:00:00',NULL),
(35,'SO-2021-12-0000000017','2021-12-07','Open','salesman 1','PO-2021-12-0000000011','2021-12-07','123',20,'12345','nama produk 2','ukuran 2',0.00,'material 2','flute 2','creasing 2','warna 2','kulitas 2','jenis produk 2','tipe box 2','CS0002','CV. MITRA ANDALAN BOX','Dusun Salakan RT. 02 , Bangunjiwo , Kasihan , BANTUL , 55184\n ','Dusun Salakan RT. 02 , Bangunjiwo , Kasihan , BANTUL , 55184','-','YOGYAKARTA','081391191691','-',45,'2021-12-07 13:48:18','admin','0000-00-00 00:00:00',NULL);

/*Table structure for table `trs_surat_jalan` */

DROP TABLE IF EXISTS `trs_surat_jalan`;

CREATE TABLE `trs_surat_jalan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `no_surat_jalan` varchar(25) NOT NULL,
  `tgl_surat_jalan` date NOT NULL,
  `no_pkb` varchar(100) NOT NULL,
  `no_kendaraan` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'Open',
  `no_wo` varchar(25) NOT NULL,
  `tgl_wo` date NOT NULL,
  `no_so` varchar(25) NOT NULL,
  `tgl_so` date NOT NULL,
  `no_po` varchar(25) NOT NULL,
  `kode_po` varbinary(50) NOT NULL,
  `tgl_po` date NOT NULL,
  `qty` int(11) NOT NULL,
  `kode_mc` varchar(100) NOT NULL,
  `nm_produk` varchar(200) NOT NULL,
  `flute` varchar(200) NOT NULL,
  `id_pelanggan` char(6) NOT NULL,
  `nm_pelanggan` varchar(100) NOT NULL,
  `add_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `add_user` varchar(100) DEFAULT NULL,
  `edit_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `edit_user` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`no_surat_jalan`,`no_po`,`kode_mc`),
  KEY `id` (`id`),
  KEY `id_2` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

/*Data for the table `trs_surat_jalan` */

insert  into `trs_surat_jalan`(`id`,`no_surat_jalan`,`tgl_surat_jalan`,`no_pkb`,`no_kendaraan`,`status`,`no_wo`,`tgl_wo`,`no_so`,`tgl_so`,`no_po`,`kode_po`,`tgl_po`,`qty`,`kode_mc`,`nm_produk`,`flute`,`id_pelanggan`,`nm_pelanggan`,`add_time`,`add_user`,`edit_time`,`edit_user`) values 
(13,'SJ-2021-12-0000000001','2021-12-09','-','-','Open','','0000-00-00','','0000-00-00','PO-2021-12-0000000011','123','2021-12-07',10,'123','nama produk 1','flute 1','CS0002','CV. MITRA ANDALAN BOX','2021-12-09 10:27:21','admin','0000-00-00 00:00:00',NULL),
(14,'SJ-2021-12-0000000001','2021-12-09','-','-','Open','','0000-00-00','','0000-00-00','PO-2021-12-0000000011','123','2021-12-07',10,'12345','nama produk 2','flute 2','CS0002','CV. MITRA ANDALAN BOX','2021-12-09 10:27:22','admin','0000-00-00 00:00:00',NULL),
(15,'SJ-2021-12-0000000002','2021-12-09','-','-','Open','','0000-00-00','','0000-00-00','PO-2021-12-0000000011','123','2021-12-07',10,'12345','nama produk 2','flute 2','CS0002','CV. MITRA ANDALAN BOX','2021-12-09 10:45:11','admin','0000-00-00 00:00:00',NULL),
(16,'SJ-2021-12-0000000003','2021-12-10','1','1','Open','','0000-00-00','','0000-00-00','PO-2021-0000000008','PPI 0006','2021-11-18',200,'CS0010-A03-181121-0002','SHEET UK 3000 X 1500','BC','CS0010','HUSNI RAIS','2021-12-10 17:02:26','admin','0000-00-00 00:00:00',NULL),
(17,'SJ-2021-12-0000000003','2021-12-10','1','1','Open','','0000-00-00','','0000-00-00','PO-2021-0000000008','PPI 0006','2021-11-18',300,'CS0010-A03-181121-0003','SHEET UK 2415 X 1110','BC','CS0010','HUSNI RAIS','2021-12-10 17:02:26','admin','0000-00-00 00:00:00',NULL),
(18,'SJ-2021-12-0000000004','2021-12-10','120','120','Batal','','0000-00-00','','0000-00-00','PO-2021-0000000008','PPI 0006','2021-11-18',400,'CS0010-A03-181121-0002','SHEET UK 3000 X 1500','BC','CS0010','HUSNI RAIS','2021-12-10 17:10:21','admin','2021-12-10 17:11:27','admin'),
(19,'SJ-2021-12-0000000004','2021-12-10','120','120','Open','','0000-00-00','','0000-00-00','PO-2021-0000000008','PPI 0006','2021-11-18',500,'CS0010-A03-181121-0003','SHEET UK 2415 X 1110','BC','CS0010','HUSNI RAIS','2021-12-10 17:10:21','admin','0000-00-00 00:00:00',NULL);

/*Table structure for table `trs_wo` */

DROP TABLE IF EXISTS `trs_wo`;

CREATE TABLE `trs_wo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `no_wo` varchar(25) NOT NULL,
  `tgl_wo` date NOT NULL,
  `line` varchar(100) NOT NULL,
  `no_artikel` varchar(100) NOT NULL,
  `batchno` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'Open',
  `no_so` varchar(25) NOT NULL,
  `tgl_so` date NOT NULL,
  `no_po` varchar(25) NOT NULL,
  `kode_po` varchar(50) NOT NULL,
  `tgl_po` date NOT NULL,
  `qty` int(11) NOT NULL,
  `kode_mc` varchar(100) NOT NULL,
  `nm_produk` varchar(200) NOT NULL,
  `ukuran` varchar(200) NOT NULL,
  `harga` decimal(10,2) NOT NULL DEFAULT '0.00',
  `warna` varchar(100) NOT NULL,
  `flute` varchar(100) NOT NULL,
  `kualitas` varchar(100) NOT NULL,
  `jenis_produk` varchar(100) NOT NULL,
  `tipe_box` varchar(100) NOT NULL,
  `id_pelanggan` char(6) NOT NULL,
  `nm_pelanggan` varchar(100) NOT NULL,
  `add_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `add_user` varchar(100) DEFAULT NULL,
  `edit_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `edit_user` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`no_wo`),
  KEY `id` (`id`),
  KEY `id_2` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

/*Data for the table `trs_wo` */

insert  into `trs_wo`(`id`,`no_wo`,`tgl_wo`,`line`,`no_artikel`,`batchno`,`status`,`no_so`,`tgl_so`,`no_po`,`kode_po`,`tgl_po`,`qty`,`kode_mc`,`nm_produk`,`ukuran`,`harga`,`warna`,`flute`,`kualitas`,`jenis_produk`,`tipe_box`,`id_pelanggan`,`nm_pelanggan`,`add_time`,`add_user`,`edit_time`,`edit_user`) values 
(17,'WO-2021-0000000002','2021-10-12','123','123','123','Closed','SO-2021-0000000003','2021-10-07','PO-2021-0000000002','0007/MAB/10/21','2021-10-07',1300,'01','Sheet Mitra Andalan Box','	3000 x 1770',41141.00,'-','CB','K125 / M125 X 3 / M125','Sheet','-','CS0002','CV MITRA ANDALAN BOX','2021-10-12 16:26:32','admin','0000-00-00 00:00:00',NULL),
(18,'WO-2021-0000000003','2021-10-15','123','123','123','Open','SO-2021-0000000004','2021-10-15','PO-2021-0000000003','SAKI/13.10.21/002','2021-10-15',5050,'02','SHEET 1818 X 774','1818 X 447',10091.00,'COKLAT','BC','K125/M125X3/K125','-','-','CS0003','PT SERIKAT ABADI KEMASAN INDONESIA','2021-10-15 13:44:19','admin','0000-00-00 00:00:00',NULL),
(19,'WO-2021-0000000004','2021-11-17','-','-','21/11/00001','Open','SO-2021-0000000005','2021-11-17','PO-2021-0000000005','16/11/21','2021-11-17',1500,'CS004-A03-161121-0001','SHEET GANDUNG 2800 X 1580','-',0.00,'-','B','K125/M125/M125','SHEET','-','CS0004','GANDUNG','2021-11-17 13:49:45','admin','0000-00-00 00:00:00',NULL),
(20,'WO-2021-12-0000000','2021-12-06','12','12','12','Batal','SO-2021-0000000008','2021-11-18','PO-2021-0000000007','PPI 0006','2021-11-18',600,'CS0010-A03-181121-0001','SHEET UK 3000 X 1300','-',0.00,'-','BC','K150/M125/M125/M125/M125','-','-','CS0010','HUSNI RAIS','2021-12-06 09:38:56','admin','2021-12-06 09:47:13','admin'),
(34,'WO-2021-12-0000000005','2021-12-06','-','12','12','Open','SO-2021-0000000008','2021-11-18','PO-2021-0000000007','PPI 0006','2021-11-18',600,'CS0010-A03-181121-0001','SHEET UK 3000 X 1300','-',0.00,'-','BC','K150/M125/M125/M125/M125','-','-','CS0010','HUSNI RAIS','2021-12-06 09:50:58','admin','0000-00-00 00:00:00',NULL),
(35,'WO-2021-12-0000000006','2021-12-06','-','12','12','Closed','SO-2021-0000000009','2021-11-18','PO-2021-0000000008','PPI 0006','2021-11-18',600,'CS0010-A03-181121-0002','SHEET UK 3000 X 1500','-',0.00,'-','BC','K150/M125/M125/M125/M125','-','-','CS0010','HUSNI RAIS','2021-12-06 09:52:29','admin','0000-00-00 00:00:00',NULL),
(36,'WO-2021-12-0000000007','2021-12-06','-','12','12','Closed','SO-2021-0000000010','2021-11-18','PO-2021-0000000008','PPI 0006','2021-11-18',800,'CS0010-A03-181121-0003','SHEET UK 2415 X 1110','-',0.00,'-','BC','K150/M125/M125/M125/M125','-','-','CS0010','HUSNI RAIS','2021-12-06 11:44:34','admin','0000-00-00 00:00:00',NULL);

/*Table structure for table `trs_wo_detail` */

DROP TABLE IF EXISTS `trs_wo_detail`;

CREATE TABLE `trs_wo_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `no_wo` varchar(25) NOT NULL,
  `tgl_wo` date NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'Open',
  `tgl_crg` date DEFAULT NULL,
  `hasil_crg` varchar(100) DEFAULT NULL,
  `rusak_crg` varchar(100) DEFAULT NULL,
  `baik_crg` varchar(100) DEFAULT NULL,
  `ket_crg` varchar(100) DEFAULT NULL,
  `tgl_flx` date DEFAULT NULL,
  `hasil_flx` varchar(100) DEFAULT NULL,
  `rusak_flx` varchar(100) DEFAULT NULL,
  `baik_flx` varchar(100) DEFAULT NULL,
  `ket_flx` varchar(100) DEFAULT NULL,
  `tgl_glu` date DEFAULT NULL,
  `hasil_glu` varchar(100) DEFAULT NULL,
  `rusak_glu` varchar(100) DEFAULT NULL,
  `baik_glu` varchar(100) DEFAULT NULL,
  `ket_glu` varchar(100) DEFAULT NULL,
  `tgl_stc` date DEFAULT NULL,
  `hasil_stc` varchar(100) DEFAULT NULL,
  `rusak_stc` varchar(100) DEFAULT NULL,
  `baik_stc` varchar(100) DEFAULT NULL,
  `ket_stc` varchar(100) DEFAULT NULL,
  `tgl_dic` date DEFAULT NULL,
  `hasil_dic` varchar(100) DEFAULT NULL,
  `rusak_dic` varchar(100) DEFAULT NULL,
  `baik_dic` varchar(100) DEFAULT NULL,
  `ket_dic` varchar(100) DEFAULT NULL,
  `tgl_gdg` date DEFAULT NULL,
  `hasil_gdg` varchar(100) DEFAULT NULL,
  `rusak_gdg` varchar(100) DEFAULT NULL,
  `baik_gdg` varchar(100) DEFAULT NULL,
  `ket_gdg` varchar(100) DEFAULT NULL,
  `tgl_exp` date DEFAULT NULL,
  `hasil_exp` varchar(100) DEFAULT NULL,
  `rusak_exp` varchar(100) DEFAULT NULL,
  `baik_exp` varchar(100) DEFAULT NULL,
  `ket_exp` varchar(100) DEFAULT NULL,
  `add_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `add_user` varchar(100) DEFAULT NULL,
  `edit_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `edit_user` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`no_wo`),
  KEY `id` (`id`),
  KEY `id_2` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Data for the table `trs_wo_detail` */

insert  into `trs_wo_detail`(`id`,`no_wo`,`tgl_wo`,`status`,`tgl_crg`,`hasil_crg`,`rusak_crg`,`baik_crg`,`ket_crg`,`tgl_flx`,`hasil_flx`,`rusak_flx`,`baik_flx`,`ket_flx`,`tgl_glu`,`hasil_glu`,`rusak_glu`,`baik_glu`,`ket_glu`,`tgl_stc`,`hasil_stc`,`rusak_stc`,`baik_stc`,`ket_stc`,`tgl_dic`,`hasil_dic`,`rusak_dic`,`baik_dic`,`ket_dic`,`tgl_gdg`,`hasil_gdg`,`rusak_gdg`,`baik_gdg`,`ket_gdg`,`tgl_exp`,`hasil_exp`,`rusak_exp`,`baik_exp`,`ket_exp`,`add_time`,`add_user`,`edit_time`,`edit_user`) values 
(4,'WO-2021-0000000002','2021-10-12','Closed','0000-00-00','1000','0','','','0000-00-00','','','','','0000-00-00','','','','','0000-00-00','','','','','0000-00-00','','','','','0000-00-00','','','','','0000-00-00','','','','','2021-10-12 16:26:32','admin','0000-00-00 00:00:00',NULL),
(5,'WO-2021-0000000003','2021-10-15','Open','2021-10-15','5100','100','5000','','0000-00-00','','','','','0000-00-00','','','','','0000-00-00','','','','','0000-00-00','','','','','0000-00-00','','','','','0000-00-00','','','','','2021-10-15 13:44:19','admin','0000-00-00 00:00:00',NULL),
(6,'WO-2021-0000000004','2021-11-17','Open','0000-00-00','','','','','0000-00-00','','','','','0000-00-00','','','','','0000-00-00','','','','','0000-00-00','','','','','0000-00-00','','','','','0000-00-00','','','','','2021-11-17 13:49:45','admin','0000-00-00 00:00:00',NULL),
(7,'WO-2021-12-0000000','2021-12-06','Batal','0000-00-00','','','','','0000-00-00','','','','','0000-00-00','','','','','0000-00-00','','','','','0000-00-00','','','','','0000-00-00','','','','','0000-00-00','','','','','2021-12-06 09:38:56','admin','0000-00-00 00:00:00',NULL),
(8,'WO-2021-12-0000000005','2021-12-06','Open','0000-00-00','','','','','0000-00-00','','','','','0000-00-00','','','','','0000-00-00','','','','','0000-00-00','','','','','0000-00-00','','','','','0000-00-00','','','','','2021-12-06 09:50:58','admin','0000-00-00 00:00:00',NULL),
(9,'WO-2021-12-0000000006','2021-12-06','Open','0000-00-00','','','','','0000-00-00','','','','','0000-00-00','','','','','0000-00-00','','','','','0000-00-00','','','','','0000-00-00','','','','','0000-00-00','','','','','2021-12-06 09:52:29','admin','0000-00-00 00:00:00',NULL),
(10,'WO-2021-12-0000000007','2021-12-06','Open','0000-00-00','','','','','0000-00-00','','','','','0000-00-00','','','','','0000-00-00','','','','','0000-00-00','','','','','0000-00-00','','','','','0000-00-00','','','','','2021-12-06 11:44:34','admin','0000-00-00 00:00:00',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
