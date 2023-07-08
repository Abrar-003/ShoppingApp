-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.10-MariaDB


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema statecitydb
--

CREATE DATABASE IF NOT EXISTS statecitydb;
USE statecitydb;

--
-- Definition of table `statecitydb`.`city`
--

DROP TABLE IF EXISTS `statecitydb`.`city`;
CREATE TABLE  `statecitydb`.`city` (
  `cityid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `stateid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`cityid`),
  KEY `FK_city_1` (`stateid`),
  CONSTRAINT `FK_city_1` FOREIGN KEY (`stateid`) REFERENCES `state` (`stateid`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `statecitydb`.`city`
--

/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `statecitydb`.`city` (`cityid`,`name`,`stateid`) VALUES 
 (11,'Pune',1),
 (12,'Bhopal',3),
 (13,'Nagpur',1),
 (14,'Bangalore',2),
 (15,'Mumbai',1),
 (16,'Mysore',2),
 (17,'Indore',3),
 (18,'Dharwad',2),
 (19,'Ujjain',3);
/*!40000 ALTER TABLE `city` ENABLE KEYS */;


--
-- Definition of table `statecitydb`.`state`
--

DROP TABLE IF EXISTS `statecitydb`.`state`;
CREATE TABLE  `statecitydb`.`state` (
  `stateid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`stateid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `statecitydb`.`state`
--

/*!40000 ALTER TABLE `state` DISABLE KEYS */;
INSERT INTO `statecitydb`.`state` (`stateid`,`name`) VALUES 
 (1,'Maharashtra'),
 (2,'Karnataka'),
 (3,'Madhya Pradesh');
/*!40000 ALTER TABLE `state` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
