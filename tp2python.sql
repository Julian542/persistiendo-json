/*
SQLyog Ultimate v9.63 
MySQL - 5.5.5-10.3.16-MariaDB : Database - tp2python
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`tp2python` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `tp2python`;

/*Table structure for table `pais` */

DROP TABLE IF EXISTS `pais`;

CREATE TABLE `pais` (
  `codigo` int(11) NOT NULL,
  `nombrePais` varchar(50) NOT NULL,
  `capitalPais` varchar(50) NOT NULL,
  `region` varchar(50) NOT NULL,
  `latitud` float NOT NULL,
  `longitud` float NOT NULL,
  `poblacion` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`codigo`,`nombrePais`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pais` */

insert  into `pais`(`codigo`,`nombrePais`,`capitalPais`,`region`,`latitud`,`longitud`,`poblacion`) values (1,'Canada','Ottawa','Americas',60,-95,36155487),(1,'United States of America','Washington, D.C.','Americas',38,-97,323947000),(7,'Russian Federation','Moscow','Europe',60,100,146599183),(20,'Egypt','Cairo','Africa',27,30,91290000),(27,'South Africa','Pretoria','Africa',-29,24,55653654),(30,'Greece','Athens','Europe',39,22,10858018),(31,'Netherlands','Amsterdam','Europe',52.5,5.75,17019800),(32,'Belgium','Brussels','Europe',50.8333,4,11319511),(33,'France','Paris','Europe',46,2,66710000),(34,'Spain','Madrid','Europe',40,-4,46438422),(36,'Hungary','Budapest','Europe',47,20,9823000),(39,'Italy','Rome','Europe',42.8333,12.8333,60665551),(40,'Romania','Bucharest','Europe',46,25,19861408),(41,'Switzerland','Bern','Europe',47,8,8341600),(43,'Austria','Vienna','Europe',47.3333,13.3333,8725931),(44,'Guernsey','St. Peter Port','Europe',49.4667,-2.58333,62999),(44,'Isle of Man','Douglas','Europe',54.25,-4.5,84497),(44,'Jersey','Saint Helier','Europe',49.25,-2.16667,100800),(44,'United Kingdom of Great Britain and Northern Irela','London','Europe',54,-2,65110000),(45,'Denmark','Copenhagen','Europe',56,10,5717014),(46,'Sweden','Stockholm','Europe',62,15,9894888),(47,'Norway','Oslo','Europe',62,10,5223256),(48,'Poland','Warsaw','Europe',52,20,38437239),(49,'Germany','Berlin','Europe',51,9,81770900),(51,'Peru','Lima','Americas',-10,-76,31488700),(52,'Mexico','Mexico City','Americas',23,-102,122273473),(53,'Cuba','Havana','Americas',21.5,-80,11239004),(54,'Argentina','Buenos Aires','Americas',-34,-64,43590400),(55,'Brazil','Brasília','Americas',-10,-55,206135893),(56,'Chile','Santiago','Americas',-30,-71,18191900),(57,'Colombia','Bogotá','Americas',4,-72,48759958),(58,'Venezuela (Bolivarian Republic of)','Caracas','Americas',8,-66,31028700),(60,'Malaysia','Kuala Lumpur','Asia',2.5,112.5,31405416),(61,'Australia','Canberra','Oceania',-27,133,24117360),(61,'Christmas Island','Flying Fish Cove','Oceania',-10.5,105.667,2072),(61,'Cocos (Keeling) Islands','West Island','Oceania',-12.5,96.8333,550),(62,'Indonesia','Jakarta','Asia',-5,120,258705000),(63,'Philippines','Manila','Asia',13,122,103279800),(64,'New Zealand','Wellington','Oceania',-41,174,4697854),(64,'Pitcairn','Adamstown','Oceania',-25.0667,-130.1,56),(65,'Singapore','Singapore','Asia',1.36667,103.8,5535000),(66,'Thailand','Bangkok','Asia',15,100,65327652),(76,'Kazakhstan','Astana','Asia',48,68,17753200),(77,'Kazakhstan','Astana','Asia',48,68,17753200),(81,'Japan','Tokyo','Asia',36,138,126960000),(82,'Korea (Republic of)','Seoul','Asia',37,127.5,50801405),(84,'Viet Nam','Hanoi','Asia',16.1667,107.833,92700000),(86,'China','Beijing','Asia',35,105,1377422166),(90,'Turkey','Ankara','Asia',39,35,78741053),(91,'India','New Delhi','Asia',20,77,1295210000),(92,'Pakistan','Islamabad','Asia',30,70,194125062),(93,'Afghanistan','Kabul','Asia',33,65,27657145),(94,'Sri Lanka','Colombo','Asia',7,81,20966000),(95,'Myanmar','Naypyidaw','Asia',22,98,51419420),(98,'Iran (Islamic Republic of)','Tehran','Asia',32,53,79369900),(211,'South Sudan','Juba','Africa',7,30,12131000),(212,'Morocco','Rabat','Africa',32,-5,33337529),(212,'Western Sahara','El Aaiún','Africa',24.5,-13,510713),(213,'Algeria','Algiers','Africa',28,3,40400000),(216,'Tunisia','Tunis','Africa',34,9,11154400),(218,'Libya','Tripoli','Africa',25,17,6385000),(220,'Gambia','Banjul','Africa',13.4667,-16.5667,1882450),(221,'Senegal','Dakar','Africa',14,-14,14799859),(222,'Mauritania','Nouakchott','Africa',20,-12,3718678),(223,'Mali','Bamako','Africa',17,-4,18135000),(224,'Guinea','Conakry','Africa',11,-10,12947000),(225,'Côte d\'Ivoire','Yamoussoukro','Africa',8,-5,22671331),(226,'Burkina Faso','Ouagadougou','Africa',13,-2,19034397),(227,'Niger','Niamey','Africa',16,8,20715000),(228,'Togo','Lomé','Africa',8,1.16667,7143000),(229,'Benin','Porto-Novo','Africa',9.5,2.25,10653654),(230,'Mauritius','Port Louis','Africa',-20.2833,57.55,1262879),(231,'Liberia','Monrovia','Africa',6.5,-9.5,4615000),(232,'Sierra Leone','Freetown','Africa',8.5,-11.5,7075641),(233,'Ghana','Accra','Africa',8,-2,27670174),(234,'Nigeria','Abuja','Africa',10,8,186988000),(235,'Chad','N\'Djamena','Africa',15,19,14497000),(236,'Central African Republic','Bangui','Africa',7,21,4998000),(237,'Cameroon','Yaoundé','Africa',6,12,22709892),(238,'Cabo Verde','Praia','Africa',16,-24,531239),(239,'Sao Tome and Principe','São Tomé','Africa',1,7,187356),(240,'Equatorial Guinea','Malabo','Africa',2,10,1222442),(241,'Gabon','Libreville','Africa',-1,11.75,1802278),(242,'Congo','Brazzaville','Africa',-1,15,4741000),(243,'Congo (Democratic Republic of the)','Kinshasa','Africa',0,25,85026000),(244,'Angola','Luanda','Africa',-12.5,18.5,25868000),(245,'Guinea-Bissau','Bissau','Africa',12,-15,1547777),(246,'British Indian Ocean Territory','Diego Garcia','Africa',-6,71.5,3000),(248,'Seychelles','Victoria','Africa',-4.58333,55.6667,91400),(249,'Sudan','Khartoum','Africa',15,30,39598700),(250,'Rwanda','Kigali','Africa',-2,30,11553188),(251,'Ethiopia','Addis Ababa','Africa',8,38,92206005),(252,'Somalia','Mogadishu','Africa',10,49,11079000),(253,'Djibouti','Djibouti','Africa',11.5,43,900000),(254,'Kenya','Nairobi','Africa',1,38,47251000),(255,'Tanzania, United Republic of','Dodoma','Africa',-6,35,55155000),(256,'Uganda','Kampala','Africa',1,32,33860700),(257,'Burundi','Bujumbura','Africa',-3.5,30,10114505),(258,'Mozambique','Maputo','Africa',-18.25,35,26423700),(260,'Zambia','Lusaka','Africa',-15,30,15933883),(261,'Madagascar','Antananarivo','Africa',-20,47,22434363),(262,'Mayotte','Mamoudzou','Africa',-12.8333,45.1667,226915),(262,'Réunion','Saint-Denis','Africa',-21.15,55.5,840974),(263,'Zimbabwe','Harare','Africa',-20,30,14240168),(264,'Namibia','Windhoek','Africa',-22,17,2324388),(265,'Malawi','Lilongwe','Africa',-13.5,34,16832910),(266,'Lesotho','Maseru','Africa',-29.5,28.5,1894194),(267,'Botswana','Gaborone','Africa',-22,24,2141206),(268,'Swaziland','Lobamba','Africa',-26.5,31.5,1132657),(269,'Comoros','Moroni','Africa',-12.1667,44.25,806153),(290,'Saint Helena, Ascension and Tristan da Cunha','Jamestown','Africa',-15.95,-5.7,4255),(291,'Eritrea','Asmara','Africa',15,39,5352000),(297,'Aruba','Oranjestad','Americas',12.5,-69.9667,107394),(298,'Faroe Islands','Tórshavn','Europe',62,-7,49376),(299,'Greenland','Nuuk','Americas',72,-40,55847);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
