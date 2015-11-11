/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.6.15 : Database - simanis
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`simanis` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `simanis`;

/*Table structure for table `mapel` */

DROP TABLE IF EXISTS `mapel`;

CREATE TABLE `mapel` (
  `idMapel` int(11) NOT NULL AUTO_INCREMENT,
  `mapel` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idMapel`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `mapel` */

insert  into `mapel`(`idMapel`,`mapel`) values (1,'IPA');

/*Table structure for table `nilaiaspek` */

DROP TABLE IF EXISTS `nilaiaspek`;

CREATE TABLE `nilaiaspek` (
  `idnilaiaspek` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idnilaiaspek`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

/*Data for the table `nilaiaspek` */

insert  into `nilaiaspek`(`idnilaiaspek`,`nama`) values (1,'PENGETAHUAN'),(2,'SIKAP'),(3,'KETERAMPILAN'),(4,'Ulangan Harian'),(5,'Tugas'),(6,'Praktek'),(7,'Portofolio'),(8,'Proyek'),(9,'Produk'),(10,'Test'),(11,'Spiritual'),(12,'Kejujuran'),(13,'Tanggung Jawab'),(14,'Kedisiplinan'),(15,'Gotong Royong'),(16,'Toleransi'),(17,'Percaya Diri'),(18,'Sopan Santun');

/*Table structure for table `nilaiproses` */

DROP TABLE IF EXISTS `nilaiproses`;

CREATE TABLE `nilaiproses` (
  `idnilaiproses` int(11) NOT NULL AUTO_INCREMENT,
  `idnilaiproses_status` int(11) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `keterangan` varchar(50) DEFAULT NULL,
  `kelas` varchar(45) DEFAULT NULL,
  `idnilaiaspek` int(11) NOT NULL,
  `nilaiUH1` int(2) DEFAULT NULL,
  `nilaiUH2` int(2) DEFAULT NULL,
  `nilaiUH3` int(2) DEFAULT NULL,
  `nilaiTugas1` int(2) DEFAULT NULL,
  `nilaiTugas2` int(2) DEFAULT NULL,
  `nilaiTugas3` int(2) DEFAULT NULL,
  `nilaipraktek1` int(2) DEFAULT NULL,
  `nilaipraktek2` int(2) DEFAULT NULL,
  `nilaipraktek3` int(2) DEFAULT NULL,
  `nilaiproyek` int(2) DEFAULT NULL,
  `nilaiportofolio` int(2) DEFAULT NULL,
  `nilaiproduk` int(2) DEFAULT NULL,
  PRIMARY KEY (`idnilaiproses`,`idnilaiaspek`),
  KEY `fk_nilaiproses_nilaiaspek1_idx` (`idnilaiaspek`),
  KEY `fk_nilaiproses_nilaiproses_status1_idx` (`idnilaiproses_status`),
  CONSTRAINT `fk_nilaiproses_nilaiaspek1` FOREIGN KEY (`idnilaiaspek`) REFERENCES `nilaiaspek` (`idnilaiaspek`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_nilaiproses_nilaiproses_status1` FOREIGN KEY (`idnilaiproses_status`) REFERENCES `nilaiproses_status` (`idnilaiproses_status`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `nilaiproses` */

insert  into `nilaiproses`(`idnilaiproses`,`idnilaiproses_status`,`tanggal`,`keterangan`,`kelas`,`idnilaiaspek`,`nilaiUH1`,`nilaiUH2`,`nilaiUH3`,`nilaiTugas1`,`nilaiTugas2`,`nilaiTugas3`,`nilaipraktek1`,`nilaipraktek2`,`nilaipraktek3`,`nilaiproyek`,`nilaiportofolio`,`nilaiproduk`) values (1,1,'2015-11-04','Test Ulangan Harian IPA',NULL,4,79,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `nilaiproses_status` */

DROP TABLE IF EXISTS `nilaiproses_status`;

CREATE TABLE `nilaiproses_status` (
  `idnilaiproses_status` int(11) NOT NULL AUTO_INCREMENT,
  `idMapel` int(11) NOT NULL,
  `idSiswa` bigint(20) NOT NULL,
  `idSekolah` int(11) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`idnilaiproses_status`),
  KEY `fk_ulanganharian_siswa1_idx` (`idSiswa`),
  KEY `fk_ulanganharian_mapel1_idx` (`idMapel`),
  KEY `fk_nilaiproses_sekolah1_idx` (`idSekolah`),
  KEY `fk_nilaiproses_user1_idx` (`user_id`),
  CONSTRAINT `fk_ulanganharian_siswa10` FOREIGN KEY (`idSiswa`) REFERENCES `siswa` (`idSiswa`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_ulanganharian_mapel10` FOREIGN KEY (`idMapel`) REFERENCES `mapel` (`idMapel`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_nilaiproses_sekolah10` FOREIGN KEY (`idSekolah`) REFERENCES `sekolah` (`idSekolah`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_nilaiproses_user10` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `nilaiproses_status` */

insert  into `nilaiproses_status`(`idnilaiproses_status`,`idMapel`,`idSiswa`,`idSekolah`,`user_id`) values (1,1,1,1,7);

/*Table structure for table `passwordresettoken` */

DROP TABLE IF EXISTS `passwordresettoken`;

CREATE TABLE `passwordresettoken` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `expiryDate` datetime DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_rvxqlsowkgpgscib3isbbosci` (`user_id`),
  CONSTRAINT `FK_rvxqlsowkgpgscib3isbbosci` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `passwordresettoken` */

/*Table structure for table `privilege` */

DROP TABLE IF EXISTS `privilege`;

CREATE TABLE `privilege` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `privilege` */

insert  into `privilege`(`id`,`name`) values (3,'READ_PRIVILEGE'),(4,'WRITE_PRIVILEGE');

/*Table structure for table `role` */

DROP TABLE IF EXISTS `role`;

CREATE TABLE `role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `role` */

insert  into `role`(`id`,`name`) values (3,'ROLE_ADMIN'),(4,'ROLE_USER');

/*Table structure for table `roles_privileges` */

DROP TABLE IF EXISTS `roles_privileges`;

CREATE TABLE `roles_privileges` (
  `role_id` bigint(20) NOT NULL,
  `privilege_id` bigint(20) NOT NULL,
  KEY `FK_8e40d67gs32l8eerawr469awv` (`privilege_id`),
  KEY `FK_33w32xb8jfm3ocotvvecs3kuj` (`role_id`),
  CONSTRAINT `FK_33w32xb8jfm3ocotvvecs3kuj` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`),
  CONSTRAINT `FK_8e40d67gs32l8eerawr469awv` FOREIGN KEY (`privilege_id`) REFERENCES `privilege` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `roles_privileges` */

insert  into `roles_privileges`(`role_id`,`privilege_id`) values (3,3),(3,4),(4,3);

/*Table structure for table `sekolah` */

DROP TABLE IF EXISTS `sekolah`;

CREATE TABLE `sekolah` (
  `idSekolah` int(11) NOT NULL AUTO_INCREMENT,
  `namaSekolah` varchar(40) DEFAULT NULL,
  `alamatSekolah` varchar(60) DEFAULT NULL,
  `kepalaSekolah` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`idSekolah`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `sekolah` */

insert  into `sekolah`(`idSekolah`,`namaSekolah`,`alamatSekolah`,`kepalaSekolah`) values (1,'SMP NURUL IMAN',NULL,NULL);

/*Table structure for table `siswa` */

DROP TABLE IF EXISTS `siswa`;

CREATE TABLE `siswa` (
  `idSiswa` bigint(20) NOT NULL AUTO_INCREMENT,
  `no_nis` int(11) DEFAULT NULL,
  `nama` varchar(30) DEFAULT NULL,
  `kelamin` int(11) DEFAULT NULL,
  PRIMARY KEY (`idSiswa`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `siswa` */

insert  into `siswa`(`idSiswa`,`no_nis`,`nama`,`kelamin`) values (1,123,'ADZAN CANDRA PRATISTA\r\n',NULL),(2,123,'AFRIZAL NOOR HANIFAN\r\n',NULL),(3,123,'AFRIZAL NOOR HANIFAN\r\n',NULL);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `enabled` bit(1) NOT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `password` varchar(60) DEFAULT NULL,
  `tokenExpired` bit(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`id`,`email`,`enabled`,`firstName`,`lastName`,`password`,`tokenExpired`) values (7,'danangindrak@gmail.com','','Danang','Indra','$2a$11$FHw4aC7lHfVgs3OiUPpYa.gQsxjvGaoe/62CKaXMcIRiQowx2updG','\0'),(8,'test@test.com','','Test','Test','$2a$11$voQrwanWKfQ0/.cwcjeBX.En4Q8EZFJxSKl5vbFpuGAy.q7mBfPji','\0');

/*Table structure for table `users_roles` */

DROP TABLE IF EXISTS `users_roles`;

CREATE TABLE `users_roles` (
  `user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  KEY `FK_k2mq1ee4ob6uw649wgaus1ate` (`role_id`),
  KEY `FK_1hjw31qvltj7v3wb5o31jsrd8` (`user_id`),
  CONSTRAINT `FK_1hjw31qvltj7v3wb5o31jsrd8` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FK_k2mq1ee4ob6uw649wgaus1ate` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `users_roles` */

insert  into `users_roles`(`user_id`,`role_id`) values (8,3),(7,3);

/*Table structure for table `verificationtoken` */

DROP TABLE IF EXISTS `verificationtoken`;

CREATE TABLE `verificationtoken` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `expiryDate` datetime DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_nv1eis9f8kn7u0r2pfpujy1y` (`user_id`),
  CONSTRAINT `FK_nv1eis9f8kn7u0r2pfpujy1y` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `verificationtoken` */

insert  into `verificationtoken`(`id`,`expiryDate`,`token`,`user_id`) values (3,'2015-11-12 15:46:45','037bfd76-a614-4d13-989b-a4bd546c18cb',7);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
