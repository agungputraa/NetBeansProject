/*
SQLyog Ultimate - MySQL GUI v8.21 
MySQL - 5.5.5-10.4.27-MariaDB : Database - wisata_bali
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`wisata_bali` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `wisata_bali`;

/*Table structure for table `post_details` */

DROP TABLE IF EXISTS `post_details`;

CREATE TABLE `post_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `additional_info` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `post_id` (`post_id`),
  CONSTRAINT `post_details_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `post_details` */

insert  into `post_details`(`id`,`post_id`,`image_url`,`additional_info`) values (7,8,'https://travelandtrip.com/storage/temp/public/28d/632/b4761b84788adfb8408940330__1600.jpg','Pantai Kuta Bali\n\nPantai Kuta adalah destinasi wisata pantai yang paling terkenal di pulau Bali. Garis pantai Kuta sangat landai dan pasir berwarna putih ke kuningan dengan tesktur pasir sangat halus. Sebagian besar wisatawan yang liburan ke pantai Kuta Bali akan melakukan aktivitas berenang, selancar, dan duduk santai di tepi pantai.\n\nLokasi pantai Kuta Bali sangat strategis karena berdekatan dengan Bandara Ngurah Rai serta dekat dengan banyak objek wisata terkena di Bali seperti Seminyak, Canggu, Jimbaran, Ungasan, Tanjung Benoa dan Nusa Dua.');

/*Table structure for table `posts` */

DROP TABLE IF EXISTS `posts`;

CREATE TABLE `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `summary` text DEFAULT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `posts` */

insert  into `posts`(`id`,`title`,`summary`,`content`,`created_at`) values (8,'Wisata Kuta','Kuta Siapa yang tidak mengenal salah satu destinasi wisata yang sangat terkenal di Bali. Kuta terletak di Kabupaten Badung dan merupakan kelurahan dari kecamatan Kuta Badung Bali. Berkunjung ke Bali belum afdol jika tidak mengunjungi daerah kuta yang dikenal banyak memiliki pantai dan beberapa tempat wisata yang bisa dikunjungi.','Kawasan pariwisata Kuta adalah salah satu area di pulau Bali yang paling terkenal sebagai destinasi wisata. Daya tarik utama tempat wisata di Bali Kuta, terletak pada pantai Kuta yang memiliki bentangan pantai pasir putih bersih dengan ombak yang sangat cocok untuk surfing dan pemandangan sunset. Di sisi pantai Kuta terdapat banyak jasa penyewaan papan selancar dan juga menawarkan kursus untuk berselancar. Mengenai harga sewa papan selancar sangat bervariasi, dan usahakanlah untuk menawar terlebih dahulu.\n\nSelain daya tarik pantai, objek wisata Kuta menawarkan begitu banyak pilihan tempat menginap, tersedia dari hotel murah sampai hotel mewah yang lokasinya berdekatan dengan pantai Kuta Bali. Selain kemudahan mencari hotel, mencari tempat makan di sekitar objek wisata Kuta juga sangat mudah.\n\nApa saja hal menarik yang dapat di lakukan saat liburan di Kuta Bali? Selain liburan ke objek wisata pantai, Kuta Bali memiliki beranekaragam tempat wisata menarik yang wajib anda kunjungi untuk aktivitas liburan. Tempat liburan di Kuta baik berupa tempat rekreasi untuk anak-anak maupun keluarga.\n\nBerikut kami informasikan aktivitas liburan di Kuta yang bisa kamu lakukan selama liburan di Bali sebagai berikut :','2024-06-21 14:49:06');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
