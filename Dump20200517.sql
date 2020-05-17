-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: localhost    Database: qlduan
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `employee` (
  `employe_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`employe_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` (`employe_id`, `name`, `last_name`, `email`, `phone`, `active`, `description`) VALUES (2,'Anh','Lê Thị Minh','crazy_love_storm2004@yahoo.com','0123458789',1,NULL),(3,'Huyền','Nguyễn Thị Thu Huyền',NULL,'012354845654',1,NULL),(4,'Bích Thủy ','Nguyễn Thị','admintest@gmail.com','0987654321',1,NULL),(5,'Vũ','Lê Anh','crazy_love_storm2004@yahoo.com','0987654321',1,NULL),(6,'Tùng','Lê Thanh ',NULL,'0987654321',1,NULL),(7,'Duy','Lê Thanh',NULL,'0987654321',1,NULL),(8,'Dũng','Lê Trí',NULL,'87654321123',1,NULL),(9,'Minh','Lê Đức',NULL,'0987654323456',1,NULL),(10,'Hiếu','Vũ Minh','hieuph06891@fpt.edu.vn','098765432345',1,NULL),(11,'Lương','Nguyễn Công',NULL,'9876543456',1,NULL),(12,'Lâm','Nguyễn Văn',NULL,'765433456654',1,NULL),(13,'Thiện','Lê Đức',NULL,'765434567654',1,NULL),(14,'Đức','Lê Minh',NULL,'876543456765',1,NULL),(19,'David','Gilmour','high@hopes.com','7648909831',1,NULL),(20,'Joh','Lenno','standby@me.com','7689485620',1,NULL),(21,'Ozzy','Osbourne','children@grave.com','6483748590',1,NULL),(22,'Jimmy','Page','stairway@heaven.com','7648909831',1,NULL),(23,'Jimi','Hendrix','purple@haze.com','8754091236',1,NULL),(24,'Sex','Pistols','save@queen.com','6729098761',1,NULL),(25,'Jim','Morriso','riders@storm.com','8754091236',1,NULL),(26,'Richard','Blackmore','highway@star.com','8754091236',1,NULL),(27,'Jay','Kay','cosmic@girl.com','0926389871',1,NULL),(31,'Le Anh33333','Vu3333a','leanhvu86@gmail.com','094510926233333',1,'fdasfafdsafasfd'),(32,'Le Anh3333aa','Vu3333a','leanhvu86@gmail.com','094510926233333',1,'fdasfafdsafasfd'),(34,'Le Anh3333aaa','Vu3333aa','leanhvu86@gmail.com','094510926233333',1,'fdasfafdsafasfd'),(41,'fdsafasdfdsafsad','fdasfdsafsaf','leanhvu86@gmail.com','094510926233333',1,'fdasfafdsafasfd'),(44,'Lê Anh Vũ','Lê','crazy_love_storm2004@yahoo.com','0987654321',1,NULL);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login_user`
--

DROP TABLE IF EXISTS `login_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `login_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(25) NOT NULL,
  `active` int(11) DEFAULT NULL,
  `employee_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`),
  KEY `id_idx` (`employee_id`),
  CONSTRAINT `FKctad27fryj7tnantkhbqggr1v` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employe_id`),
  CONSTRAINT `employee_id` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employe_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_user`
--

LOCK TABLES `login_user` WRITE;
/*!40000 ALTER TABLE `login_user` DISABLE KEYS */;
INSERT INTO `login_user` (`user_id`, `username`, `password`, `role`, `active`, `employee_id`) VALUES (1,'leanhvu','123','1',1,5);
/*!40000 ALTER TABLE `login_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titles` varchar(200) DEFAULT NULL,
  `content` varchar(2000) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id_idx` (`user_id`),
  CONSTRAINT `FK2235405j7tgp0k93sbaovmpkx` FOREIGN KEY (`user_id`) REFERENCES `login_user` (`user_id`),
  CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `login_user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` (`id`, `titles`, `content`, `image`, `status`, `type`, `user_id`) VALUES (1,'Bản môi trường','Thay đổi khí hậu lớn! Lượng khí nhà kính tăng cao','Happy-new-year-2019.jpg',1,1,1),(2,'Bản tin hàng tuần','Lượng khách đi tàu tăng mạnh do thời tiết nắng nóng.','weather.jpg',1,1,1),(4,'Tàu thế hệ mới','Chuẩn bị ra mắt tàu thế hệ mớ,i, chạy trên đệm không khí','635duong-sat-sai-gon-can-tho-1511231942122.jpg',0,1,1),(5,'Bản môi trường','Thay đổi khí hậu lớn! Lượng khí nhà kính tăng cao','14.jpg',1,2,1),(6,'Tàu thế hệ mới','Chuẩn bị ra mắt tàu thế hệ mớ,i, chạy trên đệm không khí','tải xuống.jpg',1,1,1),(7,'Chất lượng phục vụ tăng','Tăng nhân lực nâng cao chất lượng phục vụ hành khách đi tàu','16.jpg',1,1,1),(8,'Bản môi trường','Chuẩn bị ra mắt tàu thế hệ mớ,i, chạy trên đệm không khí1.2','14.jpg',1,1,1),(9,'Hà Nội Mùa Thu','Đợt rét mới đang tiến về Thủ đô','D://Kiểm thử nâng cao//image.png',0,0,1),(10,'Hà Nội Mùa Thu','Đợt rét mới đang tiến về Thủ đô','D://Kiểm thử nâng cao//image.png',0,0,1);
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `passenger`
--

DROP TABLE IF EXISTS `passenger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `passenger` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_card` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `birthday` varchar(25) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `student` int(11) DEFAULT NULL,
  `school` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passenger`
--

LOCK TABLES `passenger` WRITE;
/*!40000 ALTER TABLE `passenger` DISABLE KEYS */;
INSERT INTO `passenger` (`id`, `id_card`, `name`, `birthday`, `address`, `email`, `status`, `student`, `school`) VALUES (1,'1212121212121','ADAM_SHOPfdf','28/10/1986','Tâm, Tử tếfdfdf','admintest@gmail.com',2,1,'Số 2 Lê Văn thiêm'),(2,'1212121212121','ADAM_SHOPâs','28/10/1986','Tâm, Tử tếấ','leanhvu86@gmail.com',2,1,'sâsasasasasasasa'),(3,'1234567890','Phiên Bản 1.0','28/10/1986','Tâm, Tử tếdsd','crazy_love_storm2004@yahoo.com',2,1,'dsadadadadadasdas'),(4,'1212121212121','Lê Anh Vũ  ','28/10/1986','32 An Dương - Yên phụ- Tây Hồ- HN','crazy_love_storm2004@yahoo.com',1,1,'FPT Polytechnic'),(5,'1212121212121','ADAM_SHOP vc','28/10/1986','Tâm, Tử tếvcb','abc@gmail.com',1,1,'bvcbcbvcbcbvcb'),(6,'1212121212121','LÊ ANH VŨ ','28/10/1986','32 An dương','leanhvu86@gmail.com',1,1,'Số 2 Lê Văn thiêm'),(7,'1234567890','Nguyễn Xuân MInh','28/10/1996','Quan Hóa - Tỉnh Thanh Hóa','Nguyenxuanminh10@gmail.com',0,1,'FPT Polytechnic'),(8,'12345432123','LÊ THANH TÙNG','28/10/1986','32 Yên Phụ- Tây Hồ','leanhvu86@gmail.com',0,1,'Số 2 Lê Văn thiêm'),(9,'1212121212121','ADAM_SHOPfgđfgdf','28/10/198','Tâm, Tử tế  ','crazy_love_storm2004@yahoo.com',0,1,'dsadadadadadasdas'),(10,'1212121212121','LÊ THANH TÙNG1','28/10/1986','32 an duong','crazy_love_storm2004@yahoo.com',0,1,'Số 2 Lê Văn thiêm'),(11,'rewrwrwrwer','LÊ THANH TÙNG','28/10/1986','Tâm, Tử tếfrfsdf','crazy_love_storm2004@yahoo.com',0,0,''),(12,'1212121212121','dsad adasd sadasda F','28/10/1986','Tâm, Tử tếdsadsad','dsa-dsa-@gmail.com',0,0,''),(13,'1212121212121','dsad adasd sadasda F','28/10/1986','Tâm, Tử tếdsadsad','dsadsa@gmail.com',0,0,''),(14,'1212121212121','LÊ THANH TÙNG','28/10/1986','Tâm, Tử tếDSADA','crazy_love_storm2004@yahoo.com',1,0,''),(15,'12234567893','Lê Anh Vũ','28/10/1986',' 32 An Dươngfd','crazy_love_storm2004@yahoo.com',0,0,''),(16,'1234567890','Lê Anh Vũ','28/10/1986','32An Dương - Yên Phụ','leanhvu86@gmail.com',0,0,''),(17,'1234567890','Lê Anh Vũ','28/10/1986','32An Dương - Yên Phụ','leanhvu86@gmail.com',0,0,''),(18,'1234567890','Lê Anh Vũ','28/10/1986','32An Dương - Yên Phụ','leanhvu86@gmail.com',0,0,''),(19,'1234567890','Lê Anh Vũ','28/10/1986','32An Dương - Yên Phụ','leanhvu86@gmail.com',0,0,''),(20,'1234567890','Lê Anh Vũ','28/10/1986','32An Dương - Yên Phụ','leanhvu86@gmail.com',0,0,''),(21,'1234567890','Lê Anh Vũ','28/10/1986','32An Dương - Yên Phụ','leanhvu86@gmail.com',0,0,''),(22,'1234567890','Lê Anh Vũ','28/10/1986','32An Dương - Yên Phụ','leanhvu86@gmail.com',0,0,''),(23,'1234567890','Lê Anh Vũ','28/10/1986','32An Dương - Yên Phụ','leanhvu86@gmail.com',0,0,''),(24,'1234567890','Lê Anh Vũ','28/10/1986','32An Dương - Yên Phụ','leanhvu86@gmail.com',0,0,''),(25,'1234567890','Lê Anh Vũ','28/10/1986','32An Dương - Yên Phụ','leanhvu86@gmail.com',0,0,''),(26,'1234567890','Lê Anh Vũ','28/10/1986','32An Dương - Yên Phụ','leanhvu86@gmail.com',0,0,''),(27,'1234567890','Lê Anh Vũ','28/10/1986','32An Dương - Yên Phụ','leanhvu86@gmail.com',0,0,''),(28,'1234567890','Lê Anh Vũ','28/10/1986','32An Dương - Yên Phụ','leanhvu86@gmail.com',0,0,''),(29,'1234567890','Lê Anh Vũ','28/10/1986','32An Dương - Yên Phụ','leanhvu86@gmail.com',0,0,''),(30,'1234567890','Lê Anh Vũ','28/10/1986','32An Dương - Yên Phụ','leanhvu86@gmail.com',0,0,''),(31,'122345678932','Lê Anh Vũ','28/10/1986','32 An dươngdsada','crazy_love_storm2004@yahoo.com',0,0,''),(32,'1234567890','Lê Anh Vũ','28/10/1986','32An Dương - Yên Phụ','leanhvu86@gmail.com',0,0,''),(33,'1234567890','Lê Anh Vũ','28/10/1986','32An Dương - Yên Phụ','leanhvu86@gmail.com',0,0,''),(34,'1234567890','Lê Anh Vũ','28/10/1986','32An Dương - Yên Phụ','leanhvu86@gmail.com',0,0,''),(35,'1234567890','Lê Anh Vũ','28/10/1986','32An Dương - Yên Phụ','leanhvu86@gmail.com',0,0,''),(36,'1234567890','Lê Anh Vũ','28/10/1986','32An Dương - Yên Phụ','leanhvu86@gmail.com',0,0,''),(37,'1234567890','Lê Anh Vũ','28/10/1986','32An Dương - Yên Phụ','leanhvu86@gmail.com',0,0,''),(38,'1234567890','Lê Anh Vũ','28/10/1986','32An Dương - Yên Phụ','leanhvu86@gmail.com',0,0,''),(39,'1234567890','Lê Anh Vũ','28/10/1986','32An Dương - Yên Phụ','leanhvu86@gmail.com',0,0,''),(40,'1234567890','Lê Anh Vũ','28/10/1986','32An Dương - Yên Phụ','leanhvu86@gmail.com',0,0,''),(41,'1234567890','Lê Anh Vũ','28/10/1986','32An Dương - Yên Phụ','leanhvu86@gmail.com',0,0,''),(42,'1234567890','Lê Anh Vũ','28/10/1986','32An Dương - Yên Phụ','leanhvu86@gmail.com',0,0,''),(43,'1234567890','Lê Anh Vũ','28/10/1986','32An Dương - Yên Phụ','leanhvu86@gmail.com',0,0,'');
/*!40000 ALTER TABLE `passenger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `route_mapping`
--

DROP TABLE IF EXISTS `route_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `route_mapping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `lst_station` int(11) NOT NULL,
  `route_mapping` varchar(255) NOT NULL,
  `vote` varchar(255) DEFAULT NULL,
  `route_id` int(11) NOT NULL,
  `map_route_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=737 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `route_mapping`
--

LOCK TABLES `route_mapping` WRITE;
/*!40000 ALTER TABLE `route_mapping` DISABLE KEYS */;
INSERT INTO `route_mapping` (`id`, `description`, `lst_station`, `route_mapping`, `vote`, `route_id`, `map_route_id`) VALUES (600,NULL,1,'1-3',NULL,1,3),(601,NULL,8,'1-4',NULL,1,4),(602,NULL,9,'1-4',NULL,1,4),(603,NULL,10,'1-4',NULL,1,4),(604,NULL,1,'1-6',NULL,1,6),(605,NULL,2,'1-6',NULL,1,6),(606,NULL,5,'1-8',NULL,1,8),(607,NULL,6,'1-9',NULL,1,9),(608,NULL,4,'1-10',NULL,1,10),(609,NULL,5,'1-10',NULL,1,10),(619,NULL,17,'2-5',NULL,2,5),(620,NULL,18,'2-5',NULL,2,5),(621,NULL,19,'2-5',NULL,2,5),(622,NULL,11,'2-8',NULL,2,8),(623,NULL,14,'2-9',NULL,2,9),(624,NULL,14,'2-9',NULL,2,9),(634,NULL,1,'3-6',NULL,3,6),(635,NULL,22,'3-6',NULL,3,6),(636,NULL,21,'3-7',NULL,3,7),(637,NULL,22,'3-7',NULL,3,7),(638,NULL,22,'3-8',NULL,3,8),(639,NULL,21,'3-9',NULL,3,9),(647,NULL,19,'5-2',NULL,5,2),(648,NULL,18,'5-2',NULL,5,2),(649,NULL,17,'5-2',NULL,5,2),(659,NULL,37,'5-6',NULL,5,6),(660,NULL,37,'5-7',NULL,5,7),(661,NULL,22,'6-3',NULL,6,3),(662,NULL,1,'6-3',NULL,6,3),(663,NULL,37,'6-5',NULL,6,5),(670,NULL,22,'6-7',NULL,6,7),(671,NULL,37,'6-7',NULL,6,7),(672,NULL,22,'6-8',NULL,6,8),(673,NULL,38,'6-9',NULL,6,9),(674,NULL,21,'7-3',NULL,7,3),(675,NULL,22,'7-3',NULL,7,3),(676,NULL,37,'7-5',NULL,7,5),(677,NULL,37,'7-6',NULL,7,6),(678,NULL,22,'7-6',NULL,7,6),(686,NULL,22,'7-8',NULL,7,8),(687,NULL,42,'7-9',NULL,7,9),(688,NULL,21,'7-9',NULL,7,9),(689,NULL,11,'8-2',NULL,8,2),(690,NULL,22,'8-3',NULL,8,3),(691,NULL,22,'8-6',NULL,8,6),(692,NULL,22,'8-7',NULL,8,7),(700,NULL,44,'8-9',NULL,8,9),(701,NULL,48,'8-9',NULL,8,9),(702,NULL,5,'8-10',NULL,8,10),(703,NULL,14,'9-2',NULL,9,2),(704,NULL,14,'9-2',NULL,9,2),(705,NULL,21,'9-3',NULL,9,3),(706,NULL,38,'9-6',NULL,9,6),(707,NULL,42,'9-7',NULL,9,7),(708,NULL,21,'9-7',NULL,9,7),(709,NULL,48,'9-8',NULL,9,8),(710,NULL,44,'9-8',NULL,9,8),(726,NULL,46,'9-10',NULL,9,10),(730,NULL,7,'1-11',NULL,1,11),(731,NULL,15,'2-11',NULL,2,11),(732,NULL,7,'10-11',NULL,10,11),(733,NULL,28,'4-11',NULL,4,11),(734,NULL,28,'11-4',NULL,11,4),(735,NULL,7,'11-10',NULL,11,10),(736,NULL,15,'11-2',NULL,11,2);
/*!40000 ALTER TABLE `route_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `route_rail`
--

DROP TABLE IF EXISTS `route_rail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `route_rail` (
  `route_id` int(11) NOT NULL AUTO_INCREMENT,
  `name_route` varchar(255) NOT NULL,
  `lst_station` varchar(1255) NOT NULL,
  `create_date` varchar(255) NOT NULL,
  `update_date` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `station_route` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`route_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `route_rail`
--

LOCK TABLES `route_rail` WRITE;
/*!40000 ALTER TABLE `route_rail` DISABLE KEYS */;
INSERT INTO `route_rail` (`route_id`, `name_route`, `lst_station`, `create_date`, `update_date`, `status`, `station_route`) VALUES (1,'Tuyến 1','Ga Hà Nội-Hồ Gươm-Công viên Lê Nin-Bến xe Kim Mã-Khách sạn Deawoo-Khách sạn Cầu Giấy-Đại học sư pham Hà Nội-Nghĩa trang Mai Dịch-Văn Tiến Dũng-Đại học Nhổn','13/06/2019',NULL,1,'1-2-3-4-5-6-7-8-9-10'),(2,'Tuyến 2','Cát Linh - Hoàng Cầu - Thái Thịnh - Chính Kinh - Đại học Hà Nội - Hồ Gươm Plaza - Bưu điện Hà Đông - Khu đô thị Văn Phú - Bến xe Yên Nghĩa','13/06/2019',NULL,1,'11-12-13-14-15-16-17-18-19'),(3,'Tuyến 3','Ga Hà Nội - Trần Hưng Đạo - Trần Quang Khải - Bến xe Long Biên - Bến xe Gia Lâm - Ngô Gia Tự - Cầu Đuống - Thị trấn Yên Viên - Ninh Hiệp','13/06/2019',NULL,1,'1-20-21-22-23-24-25-26-27'),(4,'Tuyến 4','Đại học CN Nhổn-Văn Tiến Dũng - Nghĩa trang Mai Dịch - Bộ công an Phạm Văn Đồng - Khu Đô thị Ciputra(PVD) - Mê Linh Plaza - Sân bay Nội Bài','13/06/2019',NULL,1,'10-9-8-28-29-30-31'),(5,'Tuyến 5','Bến xe Yên Nghĩa - Khu đô thị Văn Phú - Bưu điện Hà Đông - Khu đô thị Sa La - Tả Thanh Oai - Nghĩa trang Văn Điển - Thị trấn Văn Điển - Bệnh viện Nội tiết trung ương - Bến xe nước ngầm','13/06/2019',NULL,1,'19-18-17-32-33-34-35-36-37'),(6,'Tuyến 6','Ga Long Biên - Hồ Gươm - Ga Hà Nội- Bệnh viện Bạch Mai - Ga Giáp Bát - Bến xe Nước Ngầm','13/06/2019',NULL,1,'22-2-1-38-39-37'),(7,'Tuyến 7','Bến xe Nước Ngầm - Khu đô thị Gamuda - Chợ đầu mối Lĩnh Nam - Time city - Nguyễn Khoái - Trần Quang Khải - Bến xe Long Biên','13/06/2019',NULL,1,'37-40-41-42-43-21-22'),(8,'Tuyến 8','Cát Linh - Khách sạn Deawoo - Bưởi - Khu đô thị Ciputra(VCC - Chợ hoa Quảng Bá - Đường Thanh Niên - Bến xe Long Biên','13/06/2019',NULL,1,'11-5-44-48-53-45-22'),(9,'Tuyến 9','Khu đô thị Ciputra(VCC) - Bưởi - Khách sạn Cầu Giấy - Trung Yên Plaza - Chính Kinh - Tòa nhà Atermis - Bệnh viện Bạch Mai - Time city - Trần Quang Khải','13/06/2019',NULL,1,'48-44-6-46-14-47-14-47-38-42-21'),(10,'Tuyến 10','Bến xe Kim Mã - Khách sạn Deawoo - Trung Yên plaza - Trung tâm hội nghị Quốc Gia - Thiên đường Bảo Sơn - Khu công nghệ cao Hòa Lạc -Làng văn hóa các dân tộc','13/06/2019',NULL,1,'4-5-46-49-50-52-51'),(11,'Tuyến 11','Khu đô thị Ciputra(PVD) - Bộ công an Phạm Văn Đồng - Đại học sư phạm Hà Nội - Trung tâm hội nghị Quốc Gia - Đại học Hà Nội - Hồ Gươm Plaza - Bưu điện Hà Đông - Khu đô thị Văn Phú - Bến xe Yên Nghĩa','22/06/2019',NULL,1,'29-28-7-49-15-16-17-18');
/*!40000 ALTER TABLE `route_rail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `station`
--

DROP TABLE IF EXISTS `station`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `station` (
  `station_id` int(11) NOT NULL AUTO_INCREMENT,
  `name_station` varchar(255) NOT NULL,
  `address_station` varchar(255) NOT NULL,
  `person_capacity` varchar(255) NOT NULL,
  `start_time` varchar(255) NOT NULL,
  `end_time` varchar(255) NOT NULL,
  `type_station` varchar(255) NOT NULL,
  `create_date` varchar(255) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `route_id` int(11) NOT NULL,
  `update_date` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name_route` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`station_id`),
  KEY `route_id_idx` (`route_id`),
  CONSTRAINT `FKnmnbml3td5evqf0slrmu26c1c` FOREIGN KEY (`route_id`) REFERENCES `route_rail` (`route_id`),
  CONSTRAINT `route_id` FOREIGN KEY (`route_id`) REFERENCES `route_rail` (`route_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `station`
--

LOCK TABLES `station` WRITE;
/*!40000 ALTER TABLE `station` DISABLE KEYS */;
INSERT INTO `station` (`station_id`, `name_station`, `address_station`, `person_capacity`, `start_time`, `end_time`, `type_station`, `create_date`, `status`, `route_id`, `update_date`, `description`, `name_route`) VALUES (1,'Ga Hà Nội ','Ga Hà Nội ','1000','05:00','23:00','1','2019-10-08',1,1,NULL,'',NULL),(2,'Hồ Gươm','75 Đinh Tiên Hoàng-HoànKiếm','1000','05:00','11:00','2','2019-10-08',1,1,NULL,'',NULL),(3,'Công viên LêNin','30ĐiệnBiênPhủ-BaĐÌnh','500','05:00','23:00','2','',1,1,'','',''),(4,'Bến xe Kim Mã','1KimMã-BaĐình','1000','05:00','23:00','1','',1,1,'','',''),(5,'Khách sạn Deawoo','308KimMã-BaĐình','1000','05:00','23:00','1','',1,1,'','',''),(6,'Khách sạn Cầu Giấy','120CầuGiấy-CầuGiấy','1000','05:00','23:00','1','',1,1,'','',''),(7,'Đại học sư phạm Hà Nội','150XuânThủy-CầuGiấy','1000','05:00','23:00','2','',1,1,'','',''),(8,'Nghĩa trang Mai Dịch','Ngã tư HồTùngMậu-TrầnVỹ-BắcTừLiêm','1000','5:00','23:00','1','2019-06-22',1,1,NULL,'',NULL),(9,'Văn Tiến Dũng','NgãtưVănTiếnDũng-CầuDiễn-BắcTừLiêm','500','5:00','23:00','2','',1,1,'','',''),(10,'Đại học CN Nhổn','300CầuDiển-BắcTừLiêm','1000','5:00','23:00','1','',1,1,'','',''),(11,'Cát Linh','1HoàngCầumới-ĐốngĐa','1000','5:00','23:00','1','',1,2,'','',''),(12,'Hoàng Cầu','20HoàngCầu-ĐốngĐa','500','5:00','23:00','2','',1,2,'','',''),(13,'Thái Thịnh','NgãtưTháiThịnh-YênLãng-ĐốngĐa','500','5:00','23:00','2','',1,2,'','',''),(14,'Chính Kinh','200NguyễnTrãi-ThanhXuân','500','5:00','23:00','2','',1,2,'','',''),(15,'Đại học Hà Nội','398NguyễnTrãi-ThanhXuân','500','5:00','23:00','1','',1,2,'','',''),(16,'Hồ Gươm Plaza','NgãtưNguyễnKhuyến-TrầnPhú-HàĐông','500','5:00','23:00','2','',1,2,'','',''),(17,'Bưu điện Hà Đông','2QuangTrung-HàĐông','500','5:00','23:00','1','',1,2,'','',''),(18,'Khu đô thị Văn Phú','Ngã tư Văn Phú-Quang Trung-HàĐông','500','5:00','23:00','2','2019-06-26',1,2,NULL,'',NULL),(19,'Bến xe Yên Nghĩa','BaLa-BôngĐỏ-HàĐông','1000','5:00','23:00','1','',1,2,'','',''),(20,'Trần Hưng Đạo','NgãtưTrầnHưngĐạo-HàngBài-HoànKiếm','500','5:00','23:00','2','',1,2,'','',''),(21,'Trần Quang Khải','2TrầnKhánhDư-HoànKiếm','1000','5:00','23:00','1','',1,3,'','',''),(22,'Bến xe Long Biên','CầuLongBiên-BaĐình','1000','5:00','23:00','1','',1,3,'','',''),(23,'Bến xe Gia Lâm','61NguyễnSơn-LongBiên','1000','5:00','23:00','2','',1,3,'','',''),(24,'Ngô Gia Tự','2NgôGiaTự-LongBiên','500','5:00','23:00','2','',1,3,'','',''),(25,'Cầu Đuống','654NgôGiaTự-LongBiên','500','5:00','23:00','2','',1,3,'','',''),(26,'Thị trấn Yên Viên','ThịtrấnYênViên-YênViên','500','5:00','23:00','2','',1,3,'','',''),(27,'Ninh Hiệp','NgãbaNinhHiệp-Quốclộ1-YênViên','500','5:00','23:00','1','',1,3,'','',''),(28,'Bộ Công An Phạm Văn Đồng','57PhạmVănĐồng-BắcTừLiêm','500','5:00','23:00','2','',1,4,'','',''),(29,'Khu đô thị Ciputra(PVD)','NgãbaPhạmVănĐồng-NguyễnHoàngTôn-BắcTừLiêm','500','5:00','23:00','1','',1,4,'','',''),(30,'Mê Linh Plaza','ĐốidiệnkhuCNQuangMinh-ĐôngAnh','500','5:00','23:00','2','',1,4,'','',''),(31,'Sân bay Nội Bài','PhúMinh-SócSơ','1000','5:00','23:00','1','',1,4,'','',''),(32,'Khu đô thị Sa La','NgãbaSaLa-đường70-HàĐông','500','5:00','23:00','2','',1,5,'','',''),(33,'Tả Thanh Oai','NgãbaTảThanhOai-Đường70-ThanhTrì','500','5:00','23:00','2','',1,5,'','',''),(34,'Nghĩa trang Văn Điển','Đường70-ThanhTrì','500','5:00','23:00','2','',1,5,'','',''),(35,'Thị trấn Văn Điển','km30Quốclộ1-ThanhTrì','500','5:00','23:00','1','',1,5,'','',''),(36,'Bệnh viện nội tiết TW','TứHiệp-ThanhTrì','500','5:00','23:00','2','',1,5,'','',''),(37,'Bến xe Nước Ngầm','1NgọcHồi-Thanh Trì','1000','5:00','23:00','1','',1,6,'','',''),(38,'Bệnh viện Bạch Mai','Ngã tư Vọng-Hai Bà Trưng','500','5:00','23:00','1','',1,6,'','',''),(39,'Ga Giáp Bát','500 Giải Phóng-Hai Bà Trưng','1000','5:00','23:00','2','',1,6,'','',''),(40,'Khu đô thị Gamuda','Vành đai 3-Hoàng Mai','500','5:00','23:00','2','',1,7,'','',''),(41,'Chợ đầu mối Lĩnh Nam','Ngã ba Tân Mai-Tam Trinh-Hoàng Mai','500','5:00','23:00','2','',1,7,'','',''),(42,'Time city','548 Minh Khai-Hoàng Mai','500','5:00','23:00','1','',1,7,'','',''),(43,'Nguyễn Khoái','Ngã ba Nguyễn Khoái-Trần Khát Chân-Hai Bà Trưng','500','5:00','23:00','2','',1,7,'','',''),(44,'Bưởi','27Võ Chí Công-Tây Hồ','500','5:00','23:00','1','',1,9,'','',''),(45,'Hồ Tây - Thanh Niên','1Thanh Niên-Tây Hồ','500','5:00','23:00','2','',1,9,'','',''),(46,'Trung Yên Plaza','1Trung Hòa-Cầu Giấy','500','5:00','23:00','1','',1,9,'','',''),(47,'Atermis-LêTrọngTấn','2Lê Trọng Tấn-Thanh Xuân','500','5:00','23:00','2','',1,9,'','',''),(48,'Khu đô thị Ciputra(VCC)','Ngã tư Võ Ch íCông-Nguyễn Hoàng Tôn-Tây Hồ','500','5:00','23:00','1','',1,9,'','',''),(49,'Trung tâm hội nghị Quốc Gia','1 Phạm Hùng-NamTừ Liêm','500','5:00','23:00','2','',1,10,'','',''),(50,'Thiên đường Bảo Sơn','Ngã ba Lê Trọng Tấn-Đại lộ Thăng Long-Nam Từ Liêm','500','5:00','23:00','2','',1,10,'','',''),(51,'Làng văn hóa các dân tộc','Ngã ba Hòa Lạc-Thạch Thất','500','5:00','23:00','1','',1,10,'','',''),(52,'Khu công nghệ cao Hòa Lạc','KM40 Đại lộ Thăng Long-Thạch Thất','500','5:00','23:00','2','',1,10,'','',''),(53,'Âu Cơ - chợ hoa Quảng Bá','236 Âu Cơ - Nhật Tân','500','5:00','23:00','1','16/06/2019',1,8,NULL,NULL,''),(54,'Đông Quan','15 Đông Quan - Quan Hoa','500','5:00','23:00','2','2019-06-22',0,11,NULL,'',NULL),(55,'Bến xe Mỹ Đình','1 Nguyễn Hoàng','1000','5:00','23:00','2','2019-06-25',0,11,NULL,'',NULL);
/*!40000 ALTER TABLE `station` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-17  9:56:28
