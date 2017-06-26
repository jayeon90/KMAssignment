# ************************************************************
# Sequel Pro SQL dump
# Version 4529
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: localhost (MySQL 5.5.42)
# Database: data
# Generation Time: 2016-07-03 22:23:55 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table list
# ------------------------------------------------------------

DROP TABLE IF EXISTS `list`;

CREATE TABLE `list` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `city` varchar(100) DEFAULT NULL,
  `department` varchar(100) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `position` varchar(100) DEFAULT NULL,
  `added` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `list` WRITE;
/*!40000 ALTER TABLE `list` DISABLE KEYS */;

INSERT INTO `list` (`id`, `city`, `department`, `title`, `position`, `added`)
VALUES
	(1,'London','Office','Atelier Coordinator','Allocator','2016-07-03 20:17:13'),
	(2,'London','Digital','Junior Web Developer','Junior Web Developer','2016-07-03 20:18:15'),
	(3,'London','Digital','Senior Designer','Senior','2016-07-03 20:34:06'),
	(4,'Oxford','Retail','Store Manager','Manager','2016-07-03 20:34:43'),
	(5,'Oxford','Retail','Supervisor','Supervisor','2016-07-03 20:35:01'),
	(6,'Oxford','Retail','Assistant Manager','Assistant Manager','2016-07-03 20:35:21'),
	(7,'Edinburgh','Retail','Stylist','Stylist','2016-07-03 20:35:41'),
	(8,'Edinburgh','Retail','Stock Controller','Stock Controller','2016-07-03 20:36:03');

/*!40000 ALTER TABLE `list` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
