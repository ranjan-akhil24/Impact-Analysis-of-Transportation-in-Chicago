CREATE DATABASE  IF NOT EXISTS `scooter_project` /*!40100 DEFAULT CHARACTER SET utf16 */;
USE `scooter_project`;
-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: 35.224.246.245    Database: scooter_project
-- ------------------------------------------------------
-- Server version	5.7.25-google-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ 'e92e4473-26c7-11eb-9683-42010a8002c4:1-435549';

--
-- Table structure for table `Divvy_Station`
--

DROP TABLE IF EXISTS `Divvy_Station`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Divvy_Station` (
  `CommunityName` varchar(45) DEFAULT NULL,
  `Station_ID` int(11) NOT NULL,
  `Station_Name` varchar(45) DEFAULT NULL,
  `AreaNumber` int(11) DEFAULT NULL,
  PRIMARY KEY (`Station_ID`),
  KEY `AreaNumber` (`AreaNumber`),
  CONSTRAINT `Divvy_Station_ibfk_1` FOREIGN KEY (`AreaNumber`) REFERENCES `CommunityArea` (`AreaNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Divvy_Station`
--

LOCK TABLES `Divvy_Station` WRITE;
/*!40000 ALTER TABLE `Divvy_Station` DISABLE KEYS */;
INSERT INTO `Divvy_Station` VALUES ('loop',2,'Buckingham Fountain',32),('near south side',3,'Shedd Aquarium',33),('near south side',4,'Burnham Harbor',33),('loop',5,'State St & Harrison St',32),('loop',6,'Dusable Harbor',32),('loop',7,'Field Blvd & South Water St',32),('mckinley park',9,'Leavitt St & Archer Ave',59),('south shore',11,'Jeffery Blvd & 71st St',43),('south shore',12,'South Shore Dr & 71st St',43),('lincoln park',13,'Wilton Ave & Diversey Pkwy',7),('lower west side',14,'Morgan St & 18th St',31),('lower west side',15,'Racine Ave & 18th St',31),('west town',16,'Paulina Ave & North Ave',24),('west town',17,'Honore St & Division St',24),('loop',18,'Wacker Dr & Washington St',32),('near west side',19,'Throop St & Taylor St',28),('near north side',20,'Sheffield Ave & Kingsbury St',8),('near west side',21,'Aberdeen St & Jackson Blvd',28),('near west side',22,'May St & Taylor St',28),('near north side',23,'Orleans St & Elm St',8),('near north side',24,'Fairbanks Ct & Grand Ave',8),('near north side',25,'Michigan Ave & Pearson St',8),('near north side',26,'New St & Illinois St',8),('near north side',27,'Larrabee St & North Ave',8),('lincoln park',28,'Larrabee St & Menomonee St',7),('west town',29,'Noble St & Milwaukee Ave',24),('west town',30,'Ashland Ave & Augusta Blvd',24),('near north side',31,'Franklin St & Chicago Ave',8),('near west side',32,'Racine Ave & Congress Pkwy',28),('loop',33,'State St & Van Buren St',32),('lincoln park',34,'Cannon Dr & Fullerton Ave',7),('near north side',35,'Streeter Dr & Grand Ave',8),('loop',36,'Franklin St & Jackson Blvd',32),('loop',37,'Dearborn St & Adams St',32),('loop',38,'Clark St & Lake St',32),('loop',39,'Wabash Ave & Adams St',32),('loop',40,'LaSalle St & Adams St',32),('loop',41,'Federal St & Polk St',32),('near south side',42,'Wabash Ave & Cermak Rd',33),('loop',43,'Michigan Ave & Washington St',32),('loop',44,'State St & Randolph St',32),('loop',45,'Michigan Ave & Ida B Wells Dr',32),('near north side',46,'Wells St & Walton St',8),('near north side',47,'State St & Kinzie St',8),('near north side',48,'Larrabee St & Kingsbury St',8),('loop',49,'Dearborn St & Monroe St',32),('loop',50,'Clark St & Ida B Wells Dr',32),('loop',51,'Clark St & Randolph St',32),('loop',52,'Michigan Ave & Lake St',32),('near north side',53,'Wells St & Huron St',8),('west town',54,'Ogden Ave & Chicago Ave',24),('near west side',55,'Halsted St & Roosevelt Rd',28),('west town',56,'Desplaines St & Kinzie St',24),('near west side',57,'Clinton St & Roosevelt Rd',28),('logan square',58,'Marshfield Ave & Cortland St',22),('near south side',59,'Wabash Ave & Roosevelt Rd',33),('near north side',60,'Dayton St & North Ave',8),('west town',61,'Wood St & Milwaukee Ave',24),('near south side',62,'McCormick Place',33),('near west side',66,'Clinton St & Lake St',28),('lincoln park',67,'Sheffield Ave & Fullerton Ave',7),('near west side',68,'Clinton St & Tilden St',28),('west town',69,'Damen Ave & Pierce Ave',24),('near west side',71,'Morgan St & Lake St',28),('near south side',72,'Wabash Ave & 16th St',33),('near west side',73,'Jefferson St & Monroe St',28),('near north side',74,'Kingsbury St & Erie St',8),('near west side',75,'Canal St & Jackson Blvd',28),('loop',76,'Lake Shore Dr & Monroe St',32),('near west side',77,'Clinton St & Madison St',28),('near west side',80,'Aberdeen St & Monroe St',28),('loop',81,'Daley Center Plaza',32),('west town',84,'Milwaukee Ave & Grand Ave',24),('near north side',85,'Michigan Ave & Oak St',8),('west town',86,'Eckhart Park',24),('lincoln park',87,'Racine Ave & Fullerton Ave',7),('near west side',88,'Racine Ave & Randolph St',28),('loop',89,'Financial Pl & Ida B Wells Dr',32),('loop',90,'Millennium Park',32),('near west side',91,'Clinton St & Washington Blvd',28),('west town',92,'Carpenter St & Huron St',24),('lincoln park',93,'Sheffield Ave & Willow St',7),('lincoln park',94,'Clark St & Armitage Ave',7),('woodlawn',95,'Stony Island Ave & 64th St',42),('near west side',96,'Desplaines St & Randolph St',28),('near south side',97,'Field Museum',33),('loop',98,'LaSalle St & Washington St',32),('near north side',99,'Lake Shore Dr & Ohio St',8),('near north side',100,'Orleans St & Merchandise Mart Plaza',8),('woodlawn',101,'63rd St Beach',42),('woodlawn',102,'Stony Island Ave & 67th St',42),('near west side',103,'Clinton St & Polk St',28),('near north side',106,'State St & Pearson St',8),('near west side',107,'Desplaines St & Jackson Blvd',28),('near west side',108,'Halsted St & Polk St',28),('near west side',109,'900 W Harrison St',28),('near north side',110,'Dearborn St & Erie St',8),('near north side',111,'Sedgwick St & Huron St',8),('near west side',112,'Green St & Randolph St',28),('lincoln park',113,'Bissell St & Armitage Ave',7),('lake view',114,'Sheffield Ave & Waveland Ave',6),('lake view',115,'Sheffield Ave & Wellington Ave',6),('logan square',116,'Western Ave & Winnebago Ave',22),('lake view',117,'Wilton Ave & Belmont Ave',6),('lincoln park',118,'Sedgwick St & North Ave',7),('near west side',119,'Ashland Ave & Lake St',28),('armour square',120,'Wentworth Ave & Cermak Rd',34),('kenwood',121,'Blackstone Ave & Hyde Park Blvd',39),('near west side',122,'Ogden Ave & Congress Pkwy',28),('logan square',123,'California Ave & Milwaukee Ave',22),('lower west side',124,'Damen Ave & Cullerton St',31),('near north side',125,'Rush St & Hubbard St',8),('lincoln park',126,'Clark St & North Ave',7),('lincoln park',127,'Lincoln Ave & Fullerton Ave',7),('west town',128,'Damen Ave & Chicago Ave',24),('lower west side',129,'Blue Island Ave & 18th St',31),('west town',130,'Damen Ave & Division St',24),('lake view',131,'Lincoln Ave & Belmont Ave',6),('armour square',132,'Wentworth Ave & 24th St (Temp)',34),('near north side',133,'Kingsbury St & Kinzie St',8),('near west side',134,'Peoria St & Jackson Blvd',28),('lower west side',135,'Halsted St & 21st St',31),('near west side',136,'Racine Ave & 13th St',28),('near west side',137,'Morgan Ave & 14th Pl',28),('near north side',138,'Clybourn Ave & Division St',8),('near north side',140,'Dearborn Pkwy & Delaware Pl',8),('lincoln park',141,'Clark St & Lincoln Ave',7),('near north side',142,'McClurg Ct & Erie St',8),('lincoln park',143,'Sedgwick St & Webster Ave',7),('lincoln park',144,'Larrabee St & Webster Ave',7),('near north side',145,'Mies van der Rohe Way & Chestnut St',8),('near west side',146,'Loomis St & Jackson Blvd',28),('near south side',147,'Indiana Ave & 26th St',33),('douglas',148,'State St & 33rd St',35),('douglas',149,'Calumet Ave & 33rd St',35),('douglas',150,'Fort Dearborn Dr & 31st St',35),('lincoln park',152,'Lincoln Ave & Diversey Pkwy',7),('lake view',153,'Southport Ave & Wellington Ave',6),('lake view',154,'Southport Ave & Belmont Ave',6),('lake view',156,'Clark St & Wellington Ave',6),('lake view',157,'Lake Shore Dr & Wellington Ave',6),('west town',158,'Milwaukee Ave & Wabansia Ave',24),('west town',159,'Claremont Ave & Hirsch St',24),('west town',160,'Campbell Ave & North Ave',24),('near north side',161,'Rush St & Superior St',8),('north center',162,'Damen Ave & Wellington Ave',5),('lincoln park',163,'Damen Ave & Clybourn Ave',7),('loop',164,'Franklin St & Lake St',32),('lake view',165,'Clark St & Grace St',6),('lincoln park',166,'Ashland Ave & Wrightwood Ave',7),('lower west side',167,'Damen Ave & Coulter St',31),('near south side',168,'Michigan Ave & 14th St',33),('near west side',169,'Canal St & Harrison St',28),('lower west side',170,'Clinton St & 18th St',31),('lower west side',171,'May St & Cullerton St',31),('near north side',172,'Rush St & Cedar St',8),('near north side',173,'Mies van der Rohe Way & Chicago Ave',8),('near west side',174,'Canal St & Madison St',28),('loop',175,'Wells St & Polk St',32),('near north side',176,'Clark St & Elm St',8),('lincoln park',177,'Theater on the Lake',7),('near south side',178,'State St & 19th St',33),('douglas',179,'MLK Jr Dr & Pershing Rd',35),('near north side',180,'Ritchie Ct & Banks St',8),('near north side',181,'LaSalle St & Illinois St',8),('near north side',182,'Wells St & Elm St',8),('west town',183,'Damen Ave & Thomas St (Augusta Blvd)',24),('douglas',184,'State St & 35th St',35),('logan square',185,'Stave St & Armitage Ave',22),('west town',186,'Ogden Ave & Race Ave',24),('lincoln park',188,'Greenview Ave & Fullerton Ave',7),('lincoln park',190,'Southport Ave & Wrightwood Ave',7),('near west side',191,'Canal St & Monroe St',28),('near west side',192,'Canal St & Adams St',28),('douglas',193,'State St & 29th St',35),('loop',194,'Wabash Ave & Wacker Pl',32),('loop',195,'Columbus Dr & Randolph St',32),('near north side',196,'Cityfront Plaza Dr & Pioneer Ct',8),('loop',197,'Michigan Ave & Madison St',32),('near west side',198,'Green St & Madison St',28),('near north side',199,'Wabash Ave & Grand Ave',8),('grand boulevard',200,'MLK Jr Dr & 47th St',38),('grand boulevard',201,'Indiana Ave & 40th St',38),('lower west side',202,'Halsted St & 18th St',31),('lower west side',203,'Western Ave & 21st St',31),('washington park',204,'Prairie Ave & Garfield Blvd',40),('lower west side',205,'Paulina St & 18th St',31),('bridgeport',206,'Halsted St & Archer Ave',60),('bridgeport',207,'Emerald Ave & 28th St',60),('lower west side',208,'Laflin St & Cullerton St',31),('armour square',209,'Normal Ave & Archer Ave',34),('west town',210,'Ashland Ave & Division St',24),('near north side',211,'St. Clair St & Erie St',8),('near north side',212,'Wells St & Hubbard St',8),('west town',213,'Leavitt St & North Ave',24),('west town',214,'Damen Ave & Grand Ave',24),('near west side',215,'Damen Ave & Madison St',28),('west town',216,'California Ave & Division St',24),('near west side',217,'Elizabeth (May) St & Fulton St',28),('armour square',218,'Wells St & 19th St',34),('logan square',219,'Damen Ave & Cortland St',22),('lincoln park',220,'Clark St & Drummond Pl',7),('logan square',222,'Milwaukee Ave & Rockwell St',22),('lincoln park',223,'Clifton Ave & Armitage Ave',7),('lincoln park',224,'Halsted St & Willow St',7),('lincoln park',225,'Halsted St & Dickens Ave',7),('lake view',226,'Racine Ave & Belmont Ave',6),('lake view',227,'Southport Ave & Waveland Ave',6),('north center',228,'Damen Ave & Melrose Ave',5),('lake view',229,'Southport Ave & Roscoe St',6),('lake view',230,'Lincoln Ave & Roscoe St',6),('uptown',231,'Sheridan Rd & Montrose Ave',3),('lake view',232,'Pine Grove Ave & Waveland Ave',6),('near west side',233,'Sangamon St & Washington Blvd',28),('lake view',234,'Clark St & Montrose Ave',6),('near north side',236,'Sedgwick St & Schiller St',8),('douglas',237,'MLK Jr Dr & 29th St',35),('north center',238,'Wolcott (Ravenswood) Ave & Montrose Ave',5),('lincoln square',239,'Western Ave & Leland Ave',4),('lake view',240,'Sheridan Rd & Irving Park Rd',6),('near west side',241,'Morgan St & Polk St',28),('lincoln square',242,'Damen Ave & Leland Ave',4),('lincoln square',243,'Lincoln Ave & Sunnyside Ave',4),('north center',244,'Ravenswood Ave & Irving Park Rd',5),('uptown',245,'Clarendon Ave & Junior Ter',3),('lake view',246,'Ashland Ave & Belle Plaine Ave',6),('hyde park',247,'Shore Dr & 55th St',41),('hyde park',248,'Woodlawn Ave & 55th St',41),('uptown',249,'Montrose Harbor',3),('lake view',250,'Ashland Ave & Wellington Ave',6),('uptown',251,'Clarendon Ave & Leland Ave',3),('kenwood',252,'Greenwood Ave & 47th St',39),('uptown',253,'Winthrop Ave & Lawrence Ave',3),('lake view',254,'Pine Grove Ave & Irving Park Rd',6),('loop',255,'Indiana Ave & Roosevelt Rd',32),('lake view',256,'Broadway & Sheridan Rd',6),('north center',257,'Lincoln Ave & Waveland Ave',5),('logan square',258,'Logan Blvd & Elston Ave',22),('logan square',259,'California Ave & Francis Pl (Temp)',22),('logan square',260,'Kedzie Ave & Milwaukee Ave',22),('near west side',261,'Hermitage Ave & Polk St',28),('bridgeport',262,'Halsted St & 37th St',60),('douglas',263,'Rhodes Ave & 32nd St',35),('loop',264,'Stetson Ave & South Water St',32),('grand boulevard',265,'Cottage Grove Ave & Oakwood Blvd',38),('kenwood',267,'Lake Park Ave & 47th St',39),('lincoln park',268,'Lake Shore Dr & North Blvd',7),('south shore',270,'Stony Island Ave & 75th St',43),('kenwood',271,'Cottage Grove Ave & 43rd St',39),('douglas',272,'Indiana Ave & 31st St',35),('near south side',273,'Michigan Ave & 18th St',33),('near west side',274,'Racine Ave & 15th St',28),('near west side',275,'Ashland Ave & 13th St',28),('west town',276,'California Ave & North Ave',24),('west town',277,'Ashland Ave & Grand Ave',24),('bridgeport',278,'Wallace St & 35th St',60),('bridgeport',279,'Halsted St & 35th St',60),('bridgeport',280,'Morgan St & 31st St',60),('lower west side',281,'Western Ave & 24th St',31),('near west side',282,'Halsted St & Maxwell St',28),('loop',283,'LaSalle St & Jackson Blvd',32),('loop',284,'Michigan Ave & Jackson Blvd',32),('west town',285,'Wood St & Hubbard St',24),('loop',286,'Franklin St & Adams St (Temp)',32),('loop',287,'Franklin St & Monroe St',32),('lincoln park',288,'Larrabee St & Armitage Ave',7),('lincoln park',289,'Wells St & Concord Ln',7),('logan square',290,'Kedzie Ave & Palmer Ct',22),('near north side',291,'Wells St & Evergreen Ave',8),('lake view',292,'Southport Ave & Clark St',6),('uptown',293,'Broadway & Wilson Ave',3),('edgewater',294,'Broadway & Berwyn Ave',77),('uptown',295,'Broadway & Argyle St',3),('lake view',296,'Broadway & Belmont Ave',6),('lake view',297,'Paulina St & Montrose Ave',6),('north center',298,'Lincoln Ave & Belle Plaine Ave',5),('lake view',299,'Halsted St & Roscoe St',6),('lake view',300,'Broadway & Barry Ave',6),('near north side',301,'Clark St & Schiller St',8),('lincoln park',302,'Sheffield Ave & Wrightwood Ave',7),('lake view',303,'Broadway & Cornelia Ave',6),('lake view',304,'Broadway & Waveland Ave',6),('west town',305,'Western Ave & Division St',24),('uptown',306,'Sheridan Rd & Buena Ave',3),('lincoln park',307,'Southport Ave & Clybourn Ave',7),('north center',308,'Seeley Ave & Roscoe St',5),('logan square',309,'Leavitt St & Armitage Ave',22),('logan square',310,'Damen Ave & Charleston St',22),('lincoln square',311,'Leavitt St & Lawrence Ave',4),('uptown',312,'Clarendon Ave & Gordon Ter',3),('lincoln park',313,'Lakeview Ave & Fullerton Pkwy',7),('lake view',314,'Ravenswood Ave & Berteau Ave',6),('west town',315,'Elston Ave & Wabansia Ave',24),('lincoln square',316,'Damen Ave & Sunnyside Ave',4),('near west side',317,'Wood St & Taylor St (Temp)',28),('lake view',318,'Southport Ave & Irving Park Rd',6),('lake view',319,'Greenview Ave & Diversey Pkwy',6),('near west side',320,'Loomis St & Lexington St',28),('loop',321,'Wabash Ave & 9th St',32),('hyde park',322,'Kimbark Ave & 53rd St',41),('uptown',323,'Sheridan Rd & Lawrence Ave',3),('lincoln park',324,'Stockton Dr & Wrightwood Ave',7),('uptown',325,'Clark St & Winnemac Ave',3),('uptown',326,'Clark St & Leland Ave',3),('lincoln park',327,'Sheffield Ave & Webster Ave',7),('hyde park',328,'Ellis Ave & 58th St',41),('lincoln park',329,'Lake Shore Dr & Diversey Pkwy',7),('lake view',330,'Lincoln Ave & Addison St',6),('near north side',331,'Halsted St & Clybourn Ave',8),('lake view',332,'Burling St & Diversey Pkwy',6),('west town',333,'Ashland Ave & Blackhawk St',24),('lake view',334,'Lake Shore Dr & Belmont Ave',6),('douglas',335,'Calumet Ave & 35th St',35),('grand boulevard',336,'Cottage Grove Ave & 47th St',38),('near north side',337,'Clark St & Chicago Ave',8),('near south side',338,'Calumet Ave & 18th St',33),('bridgeport',339,'Emerald Ave & 31st St',60),('lincoln park',340,'Clark St & Wrightwood Ave',7),('near south side',341,'Adler Planetarium',33),('near west side',342,'Wolcott Ave & Polk St',28),('lincoln park',343,'Racine Ave & Wrightwood Ave',7),('lincoln square',344,'Ravenswood Ave & Lawrence Ave',4),('hyde park',345,'Lake Park Ave & 56th St',41),('near west side',346,'Ada St & Washington Blvd',28),('lake view',347,'Ashland Ave & Grace St',6),('south lawndale',348,'California Ave & 21st St',30),('lincoln park',349,'Halsted St & Wrightwood Ave',7),('west town',350,'Ashland Ave & Chicago Ave',24),('grand boulevard',351,'Cottage Grove Ave & 51st St',38),('woodlawn',352,'Jeffery Blvd & 67th St',42),('rogers park',353,'Clark St & Touhy Ave',1),('rogers park',354,'Sheridan Rd & Greenleaf Ave',1),('woodlawn',355,'South Shore Dr & 67th St',42),('south shore',356,'Stony Island Ave & 71st St',43),('near north side',359,'Larrabee St & Division St',8),('near north side',364,'Larrabee St & Oak St',8),('near north side',365,'Halsted St & North Branch St',8),('bridgeport',366,'Loomis St & Archer Ave',60),('bridgeport',367,'Racine Ave & 35th St',60),('lower west side',368,'Ashland Ave & Archer Ave',31),('mckinley park',369,'Wood St & 35th St',59),('near south side',370,'Calumet Ave & 21st St',33),('humboldt park',373,'Kedzie Ave & Chicago Ave',23),('west town',374,'Western Ave & Walton St',24),('humboldt park',375,'Sacramento Blvd & Franklin Blvd',23),('west town',376,'Artesian Ave & Hubbard St',24),('east garfield park',377,'Kedzie Ave & Lake St',27),('east garfield park',378,'California Ave & Lake St',27),('near west side',381,'Western Ave & Monroe St',28),('near west side',382,'Western Ave & Congress Pkwy',28),('near west side',383,'Paulina St & Flournoy St',28),('new city',384,'Halsted St & 51st St',61),('fuller park',385,'Princeton Ave & Garfield Blvd',37),('englewood',386,'Halsted St & 56th St',68),('englewood',388,'Halsted St & 63rd St',68),('englewood',390,'Wentworth Ave & 63rd St',68),('englewood',391,'Halsted St & 69th St',68),('greater grand crossing',392,'Perry Ave & 69th St',69),('greater grand crossing',393,'Calumet Ave & 71st St',69),('loop',394,'Clark St & 9th St (AMLI)',32),('south shore',395,'Jeffery Blvd & 76th St',43),('south shore',396,'Yates Blvd & 75th St',43),('south shore',398,'Rainbow Beach',43),('south shore',399,'South Shore Dr & 74th St',43),('greater grand crossing',400,'Cottage Grove Ave & 71st St',69),('armour square',401,'Shields Ave & 28th Pl',34),('armour square',402,'Shields Ave & 31st St',34),('armour square',403,'Wentworth Ave & 33rd St',34),('armour square',405,'Wentworth Ave & 35th St',34),('douglas',406,'Lake Park Ave & 35th St',35),('grand boulevard',407,'State St & Pershing Rd',38),('new city',408,'Union Ave & Root St',61),('fuller park',409,'Shields Ave & 43rd St',37),('grand boulevard',410,'Prairie Ave & 43rd St',38),('new city',411,'Halsted St & 47th Pl',61),('fuller park',412,'Princeton Ave & 47th St',37),('kenwood',413,'Woodlawn Ave & Lake Park Ave',39),('near west side',414,'Canal St & Taylor St',28),('grand boulevard',415,'Calumet Ave & 51st St',38),('kenwood',416,'Dorchester Ave & 49th St',39),('hyde park',417,'Cornell Ave & Hyde Park Blvd',41),('hyde park',418,'Ellis Ave & 53rd St',41),('hyde park',419,'Lake Park Ave & 53rd St',41),('hyde park',420,'Ellis Ave & 55th St',41),('washington park',421,'MLK Jr Dr & 56th St',40),('washington park',422,'DuSable Museum',40),('hyde park',423,'University Ave & 57th St',41),('hyde park',424,'Museum of Science and Industry',41),('hyde park',425,'Harper Ave & 59th St',41),('woodlawn',426,'Ellis Ave & 60th St',42),('woodlawn',427,'Cottage Grove Ave & 63rd St',42),('woodlawn',428,'Dorchester Ave & 63rd St',42),('woodlawn',429,'Cottage Grove Ave & 67th St',42),('greater grand crossing',430,'MLK Jr Dr & 63rd St',69),('woodlawn',431,'Eberhart Ave & 61st St',42),('rogers park',432,'Clark St & Lunt Ave',1),('east garfield park',433,'Kedzie Ave & Harrison St',27),('near west side',434,'Ogden Ave & Roosevelt Rd',28),('north lawndale',435,'Kedzie Ave & Roosevelt Rd',29),('north lawndale',436,'Fairfield Ave & Roosevelt Rd',29),('north lawndale',437,'Washtenaw Ave & Ogden Ave',29),('north lawndale',438,'Central Park Ave & Ogden Ave',29),('south lawndale',439,'Kedzie Ave & 21st St',30),('south lawndale',440,'Central Park Ave & 24th St',30),('south lawndale',441,'Kedzie Ave & 24th St',30),('south lawndale',442,'California Ave & 23rd Pl',30),('south lawndale',443,'Millard Ave & 26th St',30),('south lawndale',444,'Albany Ave & 26th St',30),('south lawndale',445,'California Ave & 26th St',30),('lower west side',446,'Western Ave & 28th St',31),('rogers park',447,'Glenwood Ave & Morse Ave',1),('west ridge',448,'Warren Park East',2),('rogers park',449,'Clark St & Columbia Ave',1),('west ridge',450,'Warren Park West',2),('rogers park',451,'Sheridan Rd & Loyola Ave',1),('west ridge',452,'Western Ave & Granville Ave',2),('rogers park',453,'Clark St & Schreiber Ave',1),('edgewater',454,'Broadway & Granville Ave',77),('west ridge',455,'Maplewood Ave & Peterson Ave',2),('west ridge',456,'2112 W Peterson Ave',2),('edgewater',457,'Clark St & Elmdale Ave',77),('edgewater',458,'Broadway & Thorndale Ave',77),('edgewater',459,'Lakefront Trail & Bryn Mawr Ave',77),('edgewater',460,'Clark St & Bryn Mawr Ave',77),('edgewater',461,'Broadway & Ridge Ave',77),('lincoln square',462,'Winchester (Ravenswood) Ave & Balmoral Ave',4),('edgewater',463,'Clark St & Berwyn Ave',77),('lincoln square',464,'Damen Ave & Foster Ave',4),('uptown',465,'Marine Dr & Ainslie St',3),('rogers park',466,'Ridge Blvd & Touhy Ave',1),('west ridge',467,'Western Ave & Lunt Ave',2),('west ridge',468,'Budlong Woods Library',2),('north park',469,'St. Louis Ave & Balmoral Ave',13),('north park',470,'Kedzie Ave & Foster Ave',13),('lincoln square',471,'Francisco Ave & Foster Ave',4),('lincoln square',472,'Lincoln Ave & Winona St',4),('albany park',474,'Christiana Ave & Lawrence Ave',14),('lincoln square',475,'Washtenaw Ave & Lawrence Ave',4),('albany park',476,'Kedzie Ave & Leland Ave',14),('albany park',477,'Manor Ave & Leland Ave',14),('lincoln square',478,'Rockwell St & Eastwood Ave',4),('irving park',480,'Albany Ave & Montrose Ave',16),('irving park',481,'California Ave & Montrose Ave',16),('lincoln square',482,'Campbell Ave & Montrose Ave',4),('irving park',483,'Avondale Ave & Irving Park Rd',16),('irving park',484,'Monticello Ave & Irving Park Rd',16),('irving park',485,'Sawyer Ave & Irving Park Rd',16),('north center',486,'Oakley Ave & Irving Park Rd',5),('irving park',487,'California Ave & Byron St',16),('irving park',488,'Pulaski Rd & Eddy St (Temp)',16),('irving park',489,'Drake Ave & Addison St',16),('avondale',490,'Troy St & Elston Ave',21),('north center',491,'Talman Ave & Addison St',5),('north center',492,'Leavitt St & Addison St',5),('north center',493,'Western Ave & Roscoe St',5),('north park',494,'Kedzie Ave & Bryn Mawr Ave',13),('albany park',495,'Keystone Ave & Montrose Ave',14),('avondale',496,'Avers Ave & Belmont Ave',21),('avondale',497,'Kimball Ave & Belmont Ave',21),('avondale',498,'California Ave & Fletcher St',21),('logan square',499,'Kosciuszko Park',22),('avondale',500,'Central Park Ave & Elbridge Ave',21),('logan square',501,'Richmond St & Diversey Ave',22),('logan square',502,'California Ave & Altgeld St',22),('logan square',503,'St. Louis Ave & Fullerton Ave',22),('logan square',504,'Campbell Ave & Fullerton Ave',22),('logan square',505,'Winchester Ave & Elston Ave',22),('logan square',506,'Spaulding Ave & Armitage Ave',22),('logan square',507,'Humboldt Blvd & Armitage Ave',22),('humboldt park',508,'Central Park Ave & North Ave',23),('west town',509,'Troy St & North Ave',24),('humboldt park',510,'Spaulding Ave & Division St',23),('logan square',511,'Albany Ave & Bloomingdale Ave',22),('rogers park',514,'Ridge Blvd & Howard St',1),('rogers park',515,'Paulina St & Howard St',1),('rogers park',517,'Clark St & Jarvis Ave',1),('east garfield park',518,'Conservatory Dr & Lake St',27),('rogers park',519,'Wolcott Ave & Fargo Ave',1),('rogers park',520,'Greenview Ave & Jarvis Ave',1),('rogers park',522,'Bosworth Ave & Howard St',1),('rogers park',523,'Eastlake Ter & Rogers Ave',1),('austin',524,'Austin Blvd & Chicago Ave',25),('rogers park',525,'Glenwood Ave & Touhy Ave',1),('west ridge',526,'Oakley Ave & Touhy Ave',2),('west ridge',527,'Western Ave & Howard St',2),('west garfield park',528,'Pulaski Rd & Lake St',26),('austin',529,'Cicero Ave & Lake St',25),('austin',530,'Laramie Ave & Kinzie St',25),('austin',531,'Central Ave & Lake St',25),('austin',532,'Austin Blvd & Lake St',25),('east garfield park',533,'Central Park Blvd & 5th Ave',27),('west garfield park',534,'Karlov Ave & Madison St',26),('west garfield park',535,'Pulaski Rd & Congress Pkwy',26),('west garfield park',536,'Kostner Ave & Lake St',26),('austin',537,'Kenton Ave & Madison St',25),('austin',538,'Cicero Ave & Flournoy St',25),('austin',539,'Cicero Ave & Quincy St',25),('austin',540,'Laramie Ave & Madison St',25),('austin',541,'Central Ave & Harrison St',25),('austin',542,'Central Ave & Madison St',25),('austin',543,'Laramie Ave & Gladys Ave',25),('austin',544,'Austin Blvd & Madison St',25),('west garfield park',545,'Kostner Ave & Adams St',26),('mckinley park',546,'Damen Ave & Pershing Rd',59),('mckinley park',547,'Ashland Ave & Pershing Rd',59),('bridgeport',548,'Morgan St & Pershing Rd',60),('new city',549,'Marshfield Ave & 44th St',61),('austin',550,'Central Ave & Chicago Ave',25),('new city',551,'Hoyne Ave & 47th St',61),('new city',552,'Ashland Ave & McDowell Ave',61),('new city',553,'Elizabeth St & 47th St',61),('new city',554,'Damen Ave & 51st St',61),('new city',555,'Ashland Ave & 50th St',61),('new city',556,'Throop St & 52nd St',61),('new city',557,'Seeley Ave & Garfield Blvd',61),('west englewood',558,'Ashland Ave & Garfield Blvd',67),('new city',559,'Racine Ave & Garfield Blvd',61),('west englewood',560,'Marshfield Ave & 59th St',67),('west englewood',561,'Damen Ave & 59th St',67),('englewood',562,'Racine Ave & 61st St',68),('west englewood',563,'Ashland Ave & 63rd St',67),('englewood',564,'Racine Ave & 65th St',68),('west englewood',565,'Ashland Ave & 66th St',67),('englewood',567,'May St & 69th St',68),('greater grand crossing',568,'Vincennes Ave & 75th St',69),('greater grand crossing',569,'Woodlawn Ave & 75th St',69),('greater grand crossing',570,'Evans Ave & 75th St',69),('greater grand crossing',571,'Vernon Ave & 75th St',69),('greater grand crossing',572,'State St & 76th St',69),('chatham',573,'State St & 79th St',44),('chatham',574,'Vernon Ave & 79th St',44),('greater grand crossing',575,'Cottage Grove Ave & 78th St',69),('chatham',576,'Greenwood Ave & 79th St',44),('avalon park',577,'Stony Island Ave & South Chicago Ave',45),('south shore',578,'Bennett Ave & 79th St',43),('south shore',579,'Phillips Ave & 79th St',43),('south chicago',580,'Exchange Ave & 79th St',46),('south chicago',581,'Commercial Ave & 83rd St',46),('south chicago',582,'Phillips Ave & 83rd St',46),('avalon park',583,'Stony Island Ave & 82nd St',45),('chatham',584,'Ellis Ave & 83rd St',44),('chatham',585,'Cottage Grove Ave & 83rd St',44),('chatham',586,'MLK Jr Dr & 83rd St',44),('chatham',587,'Wabash Ave & 83rd St',44),('avalon park',588,'South Chicago Ave & 83rd St',45),('portage park',589,'Milwaukee Ave & Cuyler Ave',15),('irving park',590,'Kilbourn Ave & Irving Park Rd',16),('irving park',591,'Kilbourn Ave & Milwaukee Ave',16),('irving park',592,'Knox Ave & Montrose Ave',16),('englewood',593,'Halsted St & 59th St',68),('new city',594,'Western Blvd & 48th Pl',61),('chatham',595,'Wabash Ave & 87th St',44),('hermosa',619,'Keystone Ave & Fullerton Ave',20),('near north side',620,'Orleans St & Chestnut St (NEXT Apts)',8),('near west side',621,'Aberdeen St & Randolph St',28),('west town',622,'California Ave & Cortez St',24),('loop',623,'Michigan Ave & 8th St',32),('loop',624,'Dearborn St & Van Buren St',32),('loop',626,'Delano Ct & Roosevelt Rd',32),('near north side',627,'LaSalle Dr & Huron St',8),('logan square',628,'Walsh Park',22),('irving park',630,'Kildare Ave & Montrose Ave',16),('near west side',631,'Malcolm X College',28),('lake view',632,'Clark St & Newport St',6),('near north side',635,'Fairbanks St & Superior St',8),('near north side',636,'Orleans St & Hubbard St',8),('west town',637,'Wood St & Chicago Ave',24),('near west side',638,'Clinton St & Jackson Blvd',28),('uptown',639,'Lakefront Trail & Wilson Ave',3),('irving park',640,'Bernard St & Elston Ave',16),('logan square',641,'Central Park Ave & Bloomingdale Ave',22),('austin',642,'Latrobe Ave & Chicago Ave',25),('west town',643,'Smith Park',24),('near west side',644,'Western Ave & Fillmore St',28),('mckinley park',645,'Archer (Damen) Ave & 37th St',59),('washington park',646,'State St & 54th St',40),('west englewood',647,'Elizabeth St & 59th St',67),('englewood',648,'Carpenter St & 63rd St',68),('englewood',649,'Stewart Ave & 63rd St',68),('englewood',650,'Eggleston Ave & 69th St',68),('greater grand crossing',652,'Rhodes Ave & 71st St',69),('woodlawn',653,'Cornell Dr & Hayes Dr',42),('near west side',654,'Racine Ave & Washington Blvd',28),('lincoln square',655,'Hoyne Ave & Balmoral Ave',4),('near west side',656,'Damen Ave & Walnut (Lake) St',28),('west town',657,'Wood St & Augusta Blvd',24),('west town',658,'Leavitt St & Division St',24),('west town',659,'Leavitt St & Chicago Ave',24),('rogers park',660,'Sheridan Rd & Columbia Ave',1),('north center',664,'Leavitt St & Belmont Ave',5),('avalon park',665,'South Chicago Ave & Elliot Ave',45),('near north side',666,'Cherry Ave & Blackhawk St',8),('near north side',672,'Franklin St & Illinois St',8),('lincoln park',673,'Lincoln Park Conservatory',7),('greater grand crossing',674,'Michigan Ave & 71st St',69),('chatham',677,'Stewart Ave & 83rd St',44),('englewood',678,'Halsted St & 73rd St',68),('west englewood',679,'Ashland Ave & 74th St',67),('auburn gresham',681,'Halsted St & 78th St',71),('chatham',682,'Eberhart Ave & 91st St',44),('auburn gresham',683,'Ashland Ave & 78th St',71),('beverly',684,'Prospect Sq & 91st St',72),('auburn gresham',685,'Summit Ave & 86th St',71),('calumet heights',686,'East End Ave & 87th St',48),('auburn gresham',687,'Loomis Blvd & 84th St',71),('washington heights',689,'Elizabeth St & 92nd St',73),('roseland',690,'State St & 95th St',49),('washington heights',691,'Eggleston Ave & 92nd St',73),('south chicago',692,'Marquette Ave & 89th St',46),('south chicago',693,'Baltimore Ave & 87th St',46),('south chicago',694,'Houston Ave & 92nd St',46),('roseland',695,'Dauphin Ave & 103rd St',49),('roseland',696,'Indiana Ave & 103rd St',49),('south deering',697,'Oglesby Ave & 100th St',51),('pullman',698,'Cottage Grove Ave & 111th Pl',50),('roseland',699,'Vernon Ave & 107th St',49),('washington heights',700,'Halsted St & 96th St',73),('south deering',701,'Constance Ave & 95th St',51),('burnside',702,'Greenwood Ave & 91st St',47),('pullman',703,'Greenwood Ave & 97th St',50),('hegewisch',704,'Avenue O & 134th St',55),('calumet heights',705,'Stony Island Ave & 90th St',48),('chatham',706,'Dauphin Ave & 87th St',44),('south deering',707,'Torrence Ave & 106th St',51),('avalon park',708,'Clyde Ave & 87th St',45),('roseland',709,'Michigan Ave & 114th St',49),('east side',710,'Burnham Greenway & 105th St',52),('morgan park',711,'Halsted St & 111th St',75),('roseland',712,'Wentworth Ave & 104th St',49),('west pullman',713,'Major Taylor Trail & 115th St',53),('west pullman',714,'State St & 123rd St',53),('west pullman',715,'Major Taylor Trail & 124th St',53),('riverdale',716,'Eberhart Ave & 131st St',54),('south deering',717,'Big Marsh Park',51),('east side',718,'Ewing Ave & Burnham Greenway',52),('hegewisch',719,'Avenue O & 118th St',55),('hegewisch',720,'Torrence Ave & 126th Pl',55),('beverly',721,'Walden Pkwy & 100th St',72),('hegewisch',722,'Commercial Ave & 130th St',55),('morgan park',723,'Hale Ave & 107th St',75),('morgan park',724,'Homewood Ave & 115th St',75),('roseland',725,'Halsted St & 104th St',49),('beverly',726,'Vincennes Ave & 104th St',72),('morgan park',727,'Ada St & 113th St',75),('morgan park',728,'Western Ave & 111th St',75),('mount greenwood',730,'Lawndale Ave & 111th St',74),('south deering',731,'Bradley Park',51),('hegewisch',732,'Hegewisch Metra Station',55),('south deering',734,'Commercial Ave & 100th St',51),('east side',2147483647,'Avenue L & 114th St',52);
/*!40000 ALTER TABLE `Divvy_Station` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-09 21:29:08
