-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: 127.0.0.1    Database: gregs_list
-- ------------------------------------------------------
-- Server version	5.7.20

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `contact_interest`
--

DROP TABLE IF EXISTS `contact_interest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_interest` (
  `contact_id` int(11) NOT NULL,
  `interest_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_interest`
--

LOCK TABLES `contact_interest` WRITE;
/*!40000 ALTER TABLE `contact_interest` DISABLE KEYS */;
INSERT INTO `contact_interest` VALUES (1,6),(1,22),(2,11),(3,10),(3,19),(3,32),(4,19),(4,18),(5,9),(6,2),(6,24),(7,3),(8,1),(8,17),(9,9),(9,16),(10,8),(10,23),(17,10),(17,10),(17,20),(17,31),(18,4),(18,25),(19,7),(19,21),(19,31);
/*!40000 ALTER TABLE `contact_interest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_seeking`
--

DROP TABLE IF EXISTS `contact_seeking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_seeking` (
  `contact_id` int(11) NOT NULL,
  `seeking_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_seeking`
--

LOCK TABLES `contact_seeking` WRITE;
/*!40000 ALTER TABLE `contact_seeking` DISABLE KEYS */;
INSERT INTO `contact_seeking` VALUES (1,2),(1,5),(2,9),(3,8),(4,3),(5,4),(6,2),(7,1),(8,3),(17,6),(18,7),(19,6);
/*!40000 ALTER TABLE `contact_seeking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interests`
--

DROP TABLE IF EXISTS `interests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `interests` (
  `interest_id` int(11) NOT NULL AUTO_INCREMENT,
  `interest` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`interest_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interests`
--

LOCK TABLES `interests` WRITE;
/*!40000 ALTER TABLE `interests` DISABLE KEYS */;
INSERT INTO `interests` VALUES (1,'acting'),(2,'collecting books'),(3,'cooking'),(4,'dogs'),(5,'fishing'),(6,'kayaking'),(7,'movies'),(8,'poetry'),(9,'RPG'),(10,'sailing'),(11,'women'),(16,'anime'),(17,'dancing'),(18,'drinking'),(19,'fishing'),(20,'hiking'),(21,'reading'),(22,'reptiles'),(23,'screenwriting'),(24,'scuba diving'),(25,'spelunking'),(31,'cooking'),(32,'yachting');
/*!40000 ALTER TABLE `interests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_current`
--

DROP TABLE IF EXISTS `job_current`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_current` (
  `contact_id` int(11) NOT NULL,
  `title` varchar(64) DEFAULT NULL,
  `salary` int(11) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  PRIMARY KEY (`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_current`
--

LOCK TABLES `job_current` WRITE;
/*!40000 ALTER TABLE `job_current` DISABLE KEYS */;
INSERT INTO `job_current` VALUES (1,'Architect',3000,NULL),(2,'Web Developer',2150,NULL),(3,'Designer',1550,NULL),(4,'Product Manager',4050,NULL),(5,'Student',300,NULL),(6,'DBA',5000,NULL),(7,'Banker',2000,NULL),(8,'HR',2500,NULL),(9,'Mobile Developer',2150,NULL),(10,'Insurance Agent',1130,NULL),(11,'Broker',6000,NULL),(12,'Writer',550,NULL),(13,'Architect',3060,NULL),(14,'HR',1670,NULL),(15,'Officer',1230,NULL),(16,'Business Analyst',2450,NULL),(17,'Fiction Writer',750,NULL),(18,'System Administrator',1500,NULL),(19,'DBA',4000,NULL);
/*!40000 ALTER TABLE `job_current` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_desired`
--

DROP TABLE IF EXISTS `job_desired`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_desired` (
  `contact_id` int(11) NOT NULL,
  `title` varchar(64) DEFAULT NULL,
  `salary_low` int(11) DEFAULT NULL,
  `salary_high` int(11) DEFAULT NULL,
  `available` date DEFAULT NULL,
  `years_exp` int(11) DEFAULT NULL,
  PRIMARY KEY (`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_desired`
--

LOCK TABLES `job_desired` WRITE;
/*!40000 ALTER TABLE `job_desired` DISABLE KEYS */;
INSERT INTO `job_desired` VALUES (1,'Web Developer',3000,4000,NULL,NULL),(2,'Architect',2500,3000,NULL,NULL),(3,'Designer',1600,2000,NULL,NULL),(4,'Java Developer',3000,4000,NULL,NULL),(5,'Manager',5000,7000,NULL,NULL),(6,'DBA',3000,4000,NULL,NULL),(7,'DBA',2000,4000,NULL,NULL),(8,'DBA',2500,3000,NULL,NULL),(9,'Web Developer',2150,3000,NULL,NULL),(10,'Rancher',2000,4000,NULL,NULL),(11,'Broker',8000,9000,NULL,NULL),(12,'Editor',700,1000,NULL,NULL),(13,'Architect',3000,3500,NULL,NULL),(14,'Office Manager',2000,4000,NULL,NULL),(15,'Singer',3000,4000,NULL,NULL),(16,'Photographer',1000,2000,NULL,NULL),(17,'Novel Writer',900,1000,NULL,NULL),(18,'System Administrator',2000,2500,NULL,NULL),(19,'Dreamer',500,1000,NULL,NULL);
/*!40000 ALTER TABLE `job_desired` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_listings`
--

DROP TABLE IF EXISTS `job_listings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_listings` (
  `job_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(64) DEFAULT NULL,
  `salary` int(11) DEFAULT NULL,
  `zip` varchar(5) DEFAULT NULL,
  `description` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`job_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_listings`
--

LOCK TABLES `job_listings` WRITE;
/*!40000 ALTER TABLE `job_listings` DISABLE KEYS */;
INSERT INTO `job_listings` VALUES (1,'Web Developer',2000,NULL,NULL),(2,'Architect',3000,NULL,NULL),(3,'Java Developer',2500,NULL,NULL),(4,'Java Developer',4000,NULL,NULL),(5,'Project Manager',5000,NULL,NULL),(6,'Designer',1500,NULL,NULL),(7,'Photographer',1500,NULL,NULL),(8,'DBA',3500,NULL,NULL),(9,'Web Developer',2100,NULL,NULL),(10,'System Administrator',1200,NULL,NULL),(11,'Writer',700,NULL,NULL),(12,'Editor',900,NULL,NULL),(13,'Architect',2400,NULL,NULL),(14,'Office Manager',4100,NULL,NULL),(15,'Photographer',1000,NULL,NULL),(16,'DBA',2500,NULL,NULL);
/*!40000 ALTER TABLE `job_listings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `my_contacts`
--

DROP TABLE IF EXISTS `my_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `my_contacts` (
  `contact_id` int(11) NOT NULL AUTO_INCREMENT,
  `last_name` varchar(32) DEFAULT NULL,
  `first_name` varchar(32) DEFAULT NULL,
  `phone_number` varchar(16) DEFAULT NULL,
  `email` varchar(64) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `interests` varchar(128) DEFAULT NULL,
  `seeking` varchar(64) DEFAULT NULL,
  `prof_id` int(11) DEFAULT NULL,
  `zip_code` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`contact_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `my_contacts`
--

LOCK TABLES `my_contacts` WRITE;
/*!40000 ALTER TABLE `my_contacts` DISABLE KEYS */;
INSERT INTO `my_contacts` VALUES (1,'Anderson','Jillian','546-94421','jill_anderson@breakneckpizza.com','F','1980-09-05','kayaking, reptiles','relationship, friends',14,94304,4),(2,'Kenton','Leo','546-94422','lkenton@starbuzzcoffee.com','M','1974-01-10','women','women to date',7,94118,2),(3,'McGavin','Darrin','546-94423','captainlove@headfirsttheater.com','M','1966-01-23','sailing, fishing, yachting','women for casual relationships',6,92103,4),(4,'Franklin','Joe','546-94424','joe_franklin@leapinlimos.com','M','1977-04-28','fishing, drinking','new job',10,75204,3),(5,'Hamilton','Jamie','546-94425','dontbother@starbuzzcoffee.com','F','1964-09-10','RPG','nothing',12,8540,3),(6,'Chevrolet','Maurice','546-94426','bookman4u@objectville.net','M','1962-07-01','collecting books, scuba diving','friends',3,94041,3),(7,'Kroger','Renee','546-94427','poorrenee@mightygumball.net','F','1976-12-03','cooking','employment',15,94118,2),(8,'Mendoza','Angelina','546-94428','angelina@starbuzzcoffee.com','F','1979-08-19','acting, dancing','new job',16,94118,3),(9,'Murphy','Donald','546-94429','padraic@tikibeanlounge.com','M','1967-01-23','RPG, anime','friends',5,10007,1),(10,'Spatner','John','546-944210','jpoet@objectville.net','M','1963-04-18','poetry, screenwriting','nothing',9,12498,3),(11,'Toth','Anne','546-944211','Anne_Toth@leapinlimos.com','F','1969-11-18',NULL,NULL,1,94118,NULL),(12,'Manson','Anne','546-944212','am86@objectville.net','F','1977-08-09',NULL,NULL,2,98102,NULL),(13,'Hardy','Anne','546-944213','anneh@b0tt0msup.com','F','1963-04-18',NULL,NULL,13,94118,NULL),(14,'Parker','Anne','546-944214','annep@starbuzzcoffee.com','F','1983-01-10',NULL,NULL,11,94118,NULL),(15,'Blunt','Anne','546-944215','anneblunt@breakneckpizza.com','F','1959-10-09',NULL,NULL,17,94118,NULL),(16,'Jacobs','Anne','546-944216','anne99@objectville.net','F','1968-02-05',NULL,NULL,5,95118,NULL),(17,'Everett','Joan','546-944217','jeverett@mightygumball.net','F','1978-04-03','sailing, hiking, cooking','single man',1,84111,4),(18,'Singh','Paul','546-944218','ps@tikibeanlounge.com','M','1980-12-10','dogs, spelunking','single woman',8,10007,4),(19,'Baldwin','Tara','546-944219','tara@breakneckpizza.com','F','1970-09-01','movies, reading, cooking','single man',4,2111,4);
/*!40000 ALTER TABLE `my_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profession`
--

DROP TABLE IF EXISTS `profession`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profession` (
  `prof_id` int(11) NOT NULL AUTO_INCREMENT,
  `profession` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`prof_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profession`
--

LOCK TABLES `profession` WRITE;
/*!40000 ALTER TABLE `profession` DISABLE KEYS */;
INSERT INTO `profession` VALUES (1,'Artist'),(2,'Baker'),(3,'Bookshop Owner'),(4,'Chef'),(5,'Computer Programmer'),(6,'Cruise Ship Captain'),(7,'Manager'),(8,'Professor'),(9,'Salesman'),(10,'Software Sales'),(11,'Student'),(12,'System Administrator'),(13,'Teacher'),(14,'Technical Writer'),(15,'Unemployed'),(16,'UNIX Sysadmin'),(17,'Web Designer');
/*!40000 ALTER TABLE `profession` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seeking`
--

DROP TABLE IF EXISTS `seeking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seeking` (
  `seeking_id` int(11) NOT NULL AUTO_INCREMENT,
  `seeking` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`seeking_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seeking`
--

LOCK TABLES `seeking` WRITE;
/*!40000 ALTER TABLE `seeking` DISABLE KEYS */;
INSERT INTO `seeking` VALUES (1,'employment'),(2,'friends'),(3,'new job'),(4,'nothing'),(5,'relationship'),(6,'single man'),(7,'single woman'),(8,'women for casual relationships'),(9,'women to date'),(16,'friends');
/*!40000 ALTER TABLE `seeking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `status` (
  `status_id` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status`
--

LOCK TABLES `status` WRITE;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
INSERT INTO `status` VALUES (1,'committed relationship'),(2,'divorced'),(3,'married'),(4,'single');
/*!40000 ALTER TABLE `status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zip_code`
--

DROP TABLE IF EXISTS `zip_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zip_code` (
  `zip_code` int(11) NOT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`zip_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zip_code`
--

LOCK TABLES `zip_code` WRITE;
/*!40000 ALTER TABLE `zip_code` DISABLE KEYS */;
INSERT INTO `zip_code` VALUES (2111,'Boston','MA'),(8540,'Princeton','NJ'),(10007,'New YorK','NY'),(12498,'Woodstock','NY'),(75204,'Dallas','TX'),(84111,'Salt Lake City UT','UT'),(92103,'San Diego','CA'),(94041,'Mountain View','CA'),(94118,'San Francisco','CA'),(94304,'Palo Alto','CA'),(95118,'San Jose','CA'),(98102,'Seattle','WA');
/*!40000 ALTER TABLE `zip_code` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-25 16:45:29
