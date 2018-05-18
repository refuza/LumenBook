# Host: localhost  (Version 5.5.5-10.1.10-MariaDB)
# Date: 2018-05-18 18:28:26
# Generator: MySQL-Front 5.3  (Build 5.39)

/*!40101 SET NAMES latin1 */;

#
# Structure for table "buku"
#

DROP TABLE IF EXISTS `buku`;
CREATE TABLE `buku` (
  `idbuku` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `judul` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `pengarang` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `penerbit` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `id` int(10) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`idbuku`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "buku"
#

INSERT INTO `buku` VALUES (2,'Mari ngoding','Har','Galang',0,'2018-05-18 10:58:00','2018-05-18 10:58:00',NULL),(3,'Mari ngoding','Har','Galang',0,'2018-05-18 16:46:47','2018-05-18 16:46:47',NULL);

#
# Structure for table "kategori"
#

DROP TABLE IF EXISTS `kategori`;
CREATE TABLE `kategori` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `jenisbuku` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "kategori"
#

INSERT INTO `kategori` VALUES (1,'Novel','2018-05-18 08:35:23','2018-05-18 08:35:23',NULL),(2,'Ilmiah','2018-05-18 08:35:53','2018-05-18 10:32:02',NULL),(5,'Jurnal','2018-05-18 10:39:49','2018-05-18 10:39:49',NULL),(6,'Komik','2018-05-18 10:39:54','2018-05-18 10:39:54',NULL);

#
# Structure for table "migrations"
#

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "migrations"
#

INSERT INTO `migrations` VALUES (1,'2018_05_17_223948_table_todo',1),(2,'2018_05_18_010720_categori',2),(3,'2018_05_18_011039_book',3),(4,'2018_05_18_011926_kategori',4),(5,'2018_05_18_012751_buku',5),(6,'2018_05_18_014948_buku',6);
