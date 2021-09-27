-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: travelmsdbjava
-- ------------------------------------------------------
-- Server version	8.0.19

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

--
-- Table structure for table `billing`
--

DROP TABLE IF EXISTS `billing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `billing` (
  `id` int NOT NULL AUTO_INCREMENT,
  `booking_id` int NOT NULL,
  `money` decimal(8,0) NOT NULL,
  `status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_billing_booking_idx` (`booking_id`),
  CONSTRAINT `fk_billing_booking` FOREIGN KEY (`booking_id`) REFERENCES `booking` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `billing`
--

LOCK TABLES `billing` WRITE;
/*!40000 ALTER TABLE `billing` DISABLE KEYS */;
/*!40000 ALTER TABLE `billing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking` (
  `id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `tour_id` int NOT NULL,
  `adults` int NOT NULL,
  `children` int NOT NULL,
  `status` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_booking_tour_idx` (`tour_id`),
  KEY `fk_booking_user_idx` (`customer_id`),
  CONSTRAINT `fk_booking_tour` FOREIGN KEY (`tour_id`) REFERENCES `tour` (`id`),
  CONSTRAINT `fk_booking_user` FOREIGN KEY (`customer_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cancellation`
--

DROP TABLE IF EXISTS `cancellation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cancellation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_cancellation_booking` FOREIGN KEY (`id`) REFERENCES `booking` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cancellation`
--

LOCK TABLES `cancellation` WRITE;
/*!40000 ALTER TABLE `cancellation` DISABLE KEYS */;
/*!40000 ALTER TABLE `cancellation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Resaurant food','Những nhà hàng có thức ăn ngon và chất lượng'),(2,'Travel news','Tin tức mới nhất về du lịch'),(3,'Product','Các sản phẩm cho du lịch và dịch vụ'),(4,'Healthy','Các sản phẩm về sức khỏe khách hàng'),(5,'Technology','Các thông tin về công nghệ phu');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `post_id` int NOT NULL,
  `user_id` int NOT NULL,
  `content` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `like` tinyint DEFAULT '1',
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_comment_post_idx` (`post_id`),
  KEY `fk_comment_user_idx` (`user_id`),
  CONSTRAINT `fk_comment_post` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`),
  CONSTRAINT `fk_comment_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `category_id` int NOT NULL,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `photo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `fk_post_cate_idx` (`category_id`),
  CONSTRAINT `fk_post_cate` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES (1,9,1,'Cô gái mở đường ra đi cứu nước','Hơn cả bà Hằng là người dân thường duy nhất cho tới hiện tại đủ tầm và tâm để lôi sự sai trái, mặt tối của giới nghệ sĩ. Cho công chúng biết được trước giờ chúng ta gửi tiền từ thiện cho chúng thì chúng đớp 9 gửi đi 1, và mọi người coi chúng như thánh sống. Ngoài bà Hằng tôi đố ai đủ tiềm lực để lôi bọn kia ra ánh sáng mà ko bị vùi dập.','2021-09-13','https://res.cloudinary.com/khangou/image/upload/v1630703989/mrqymli6wjxl2edupcj1.jpg',1),(2,1,1,'Cô gái mở đường ra đi cứu nước 2','Hơn cả bà Hằng là người dân thường duy nhất cho tới hiện tại đủ tầm và tâm để lôi sự sai trái, mặt tối của giới nghệ sĩ. Cho công chúng biết được trước giờ chúng ta gửi tiền từ thiện cho chúng thì chúng đớp 9 gửi đi 1, và mọi người coi chúng như thánh sống. Ngoài bà Hằng tôi đố ai đủ tiềm lực để lôi bọn kia ra ánh sáng mà ko bị vùi dập.','2021-09-13','https://res.cloudinary.com/khangou/image/upload/v1630703989/mrqymli6wjxl2edupcj1.jpg',1);
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rating`
--

DROP TABLE IF EXISTS `rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rating` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tour_id` int NOT NULL,
  `user_id` int NOT NULL,
  `rating` tinyint DEFAULT NULL,
  `comment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating_date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_rating_tourid_idx` (`tour_id`),
  KEY `fk_rating_user_idx` (`user_id`),
  CONSTRAINT `fk_rating_tourid` FOREIGN KEY (`tour_id`) REFERENCES `tour` (`id`),
  CONSTRAINT `fk_rating_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rating`
--

LOCK TABLES `rating` WRITE;
/*!40000 ALTER TABLE `rating` DISABLE KEYS */;
/*!40000 ALTER TABLE `rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag`
--

DROP TABLE IF EXISTS `tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tag` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag`
--

LOCK TABLES `tag` WRITE;
/*!40000 ALTER TABLE `tag` DISABLE KEYS */;
INSERT INTO `tag` VALUES (5,'Bien'),(2,'DaLat'),(8,'HoiAn'),(4,'NhaTrang'),(1,'PhuQuoc'),(3,'QuangNgai'),(7,'Sapa'),(6,'VinhHaLong');
/*!40000 ALTER TABLE `tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag_post`
--

DROP TABLE IF EXISTS `tag_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tag_post` (
  `post_id` int NOT NULL,
  `tag_id` int NOT NULL,
  PRIMARY KEY (`post_id`,`tag_id`),
  KEY `fk_tag_post_tag_idx` (`tag_id`),
  CONSTRAINT `fk_tag_post_post` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`),
  CONSTRAINT `fk_tag_post_tag` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag_post`
--

LOCK TABLES `tag_post` WRITE;
/*!40000 ALTER TABLE `tag_post` DISABLE KEYS */;
/*!40000 ALTER TABLE `tag_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tour`
--

DROP TABLE IF EXISTS `tour`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tour` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tour_type` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tour_days` int NOT NULL,
  `tour_nights` int NOT NULL,
  `adults_price` decimal(8,0) NOT NULL,
  `children_price` decimal(8,0) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `active` tinyint NOT NULL DEFAULT '1',
  `introduction` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `service` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `note` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tour`
--

LOCK TABLES `tour` WRITE;
/*!40000 ALTER TABLE `tour` DISABLE KEYS */;
INSERT INTO `tour` VALUES (1,'Tour Miền Bắc 5N4D: Hà Nội - Hạ Long - Ninh Bình - Hà Giang - Vũng Tàu - Bến Tre - An Giang','Du lịch trong nước','https://res.cloudinary.com/khangou/image/upload/v1630703989/mrqymli6wjxl2edupcj1.jpg',3,2,500000,200000,'2021-09-09','2021-09-13',1,NULL,NULL,NULL),(2,'Tour Mộc Châu 2N1D: Mùa Hoa Mộc Châu - Săn Mây Tà Xùa','Du lịch trong nước','https://res.cloudinary.com/khangou/image/upload/v1630703989/mrqymli6wjxl2edupcj1.jpg',2,1,100000,80000,'2021-09-09','2021-09-13',1,NULL,NULL,NULL),(3,'Tour Hà Giang 4N3D: Quản Bạ - Sông Nho Quế - Lũng Cú - Đồng Văn','Du lịch trong nước','https://res.cloudinary.com/khangou/image/upload/v1630703989/mrqymli6wjxl2edupcj1.jpg',3,2,1115000,900000,'2021-09-09','2021-09-09',0,NULL,NULL,NULL),(4,'Tour Miền Bắc 4N3D: Mộc Châu - Sơn La - Điện Biên - Lai Châu - Sapa','Du lịch trong nước','https://res.cloudinary.com/khangou/image/upload/v1630703989/mrqymli6wjxl2edupcj1.jpg',3,2,1200000,590000,'2021-09-09','2021-09-09',1,NULL,NULL,NULL),(5,'Tour Miền Bắc 5N4D: TP. HCM - Hà Giang - Cao Bằng - Bắc Kạn - Thái Nguyên','Du lịch trong nước','https://res.cloudinary.com/khangou/image/upload/v1630703989/mrqymli6wjxl2edupcj1.jpg',3,3,1500000,990000,'2021-09-09','2021-09-09',1,NULL,NULL,NULL),(6,'Tour Phú Quốc 1N: Vi Vu Cano 5 Đảo - Cáp Treo Hòn Thơm','Du lịch trong nước','https://res.cloudinary.com/khangou/image/upload/v1630703989/mrqymli6wjxl2edupcj1.jpg',1,1,1500000,999000,'2021-09-09','2021-09-09',1,NULL,NULL,NULL),(7,'Tour Phú Quốc 1N: Xe Jeep Khám Phá Nam Đảo','Du lịch trong nước','https://res.cloudinary.com/khangou/image/upload/v1630703989/mrqymli6wjxl2edupcj1.jpg',2,1,1900000,900000,'2021-09-09','2021-09-09',1,NULL,NULL,NULL),(8,'Tour Cù Lao Chàm 1N: Đi Bộ Dưới Đáy Biển Cano','Du lịch trong nước','https://res.cloudinary.com/khangou/image/upload/v1630703989/mrqymli6wjxl2edupcj1.jpg',1,3,900000,79000,'2021-09-09','2021-09-09',1,NULL,NULL,NULL),(9,'Tour Đà Lạt 1N1D: Cắm Trại Cây Thông Cô Đơn','Du lịch trong nước','https://res.cloudinary.com/khangou/image/upload/v1630703989/mrqymli6wjxl2edupcj1.jpg',2,1,999000,699000,'2021-09-09','2021-09-09',0,NULL,NULL,NULL),(10,'Tour Limousine Phú Yên 3N3D: Điệp Sơn - Cực Đông Tổ Quốc - Cao Nguyên Vân Hòa','Du lịch trong nước','https://res.cloudinary.com/khangou/image/upload/v1630703989/mrqymli6wjxl2edupcj1.jpg',3,3,299000,150000,'2021-09-09','2021-09-09',1,NULL,NULL,NULL),(11,'Tour Limousine Long Hải: 2N1D: TP. HCM - Bình Châu - Kê Gà 4 Sao','Du lịch trong nước','https://res.cloudinary.com/khangou/image/upload/v1630703989/mrqymli6wjxl2edupcj1.jpg',2,1,1600000,799000,'2021-09-09','2021-09-09',1,NULL,NULL,NULL),(12,'Tour Limousine Long Hải: 2N1D: TP. HCM - Bình Châu - Kê Gà 4 Sao','Du lịch trong nước','https://res.cloudinary.com/khangou/image/upload/v1630703989/mrqymli6wjxl2edupcj1.jpg',2,1,999000,650000,'2021-09-09','2021-09-09',1,NULL,NULL,NULL),(13,'Tour Cao Cấp Phú Quốc 3N2D: Kỳ Nghỉ Tuyệt Vời','Du lịch trong nước','https://res.cloudinary.com/khangou/image/upload/v1630703989/mrqymli6wjxl2edupcj1.jpg',3,2,2690000,1490000,'2021-09-09','2021-09-09',1,NULL,NULL,NULL),(14,'Tour Cao Cấp Phan Thiết 2N1D: Mũi Né - Đồi Cát Bay - Resort 4 Sao','Du lịch trong nước','https://res.cloudinary.com/khangou/image/upload/v1630703989/mrqymli6wjxl2edupcj1.jpg',3,2,1690000,799000,'2021-09-09','2021-09-09',1,NULL,NULL,NULL),(15,'Tour Cao Cấp Nha Trang 1N: Du Thuyền Emperor Cruises Khám Phá Vịnh Nha Trang','Du lịch trong nước','https://res.cloudinary.com/khangou/image/upload/v1630703989/mrqymli6wjxl2edupcj1.jpg',3,3,999000,499990,'2021-09-09','2021-09-09',1,NULL,NULL,NULL),(16,'hjhj','Du lịch trong nước','https://res.cloudinary.com/khangou/image/upload/v1630703989/mrqymli6wjxl2edupcj1.jpg',2,2,2,2,'2021-09-09','2021-09-09',1,NULL,NULL,NULL),(17,'Nhà ai đây','Du lịch trong nước','https://res.cloudinary.com/khangou/image/upload/v1630703989/mrqymli6wjxl2edupcj1.jpg',2,2,3,3,'2021-09-09','2021-09-09',1,NULL,NULL,NULL),(18,'Bắc Giang','Du lịch trong nước','https://res.cloudinary.com/khangou/image/upload/v1631748952/fvpnmnpcycurdns6d06r.jpg',10,10,10,10,'2021-09-16','2021-09-25',1,NULL,NULL,NULL),(19,'Bắc Giang','Du lịch nước ngoài','https://res.cloudinary.com/khangou/image/upload/v1631748952/fvpnmnpcycurdns6d06r.jpg',10,10,2222220,1111110,'2021-09-16','2021-09-25',1,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tour` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tour_detail`
--

DROP TABLE IF EXISTS `tour_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tour_detail` (
  `id` int NOT NULL AUTO_INCREMENT,
  `departure` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `destination` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `travel_schedule` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_tour_detail_tour` FOREIGN KEY (`id`) REFERENCES `tour` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tour_detail`
--

LOCK TABLES `tour_detail` WRITE;
/*!40000 ALTER TABLE `tour_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `tour_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tour_photo`
--

DROP TABLE IF EXISTS `tour_photo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tour_photo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tour_id` int NOT NULL,
  `photo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_tour_photo_tour_idx` (`tour_id`),
  CONSTRAINT `fk_tour_photo_tour` FOREIGN KEY (`tour_id`) REFERENCES `tour` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tour_photo`
--

LOCK TABLES `tour_photo` WRITE;
/*!40000 ALTER TABLE `tour_photo` DISABLE KEYS */;
/*!40000 ALTER TABLE `tour_photo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `fullname` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date_created` date NOT NULL,
  `phone` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` bit(1) NOT NULL DEFAULT b'1',
  `user_role` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username_UNIQUE` (`username`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  UNIQUE KEY `phone_UNIQUE` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'caubengok','$2a$10$EAIQ8coJ0HYxGkEANW8AXueAgnNCAhfYhSyfJ0XY4sfWikw99x2qW','nguyen van a','2021-09-02','0332568794','a@gmail.com','13456yhgbv','quang ngai',_binary '','ROLE_USER'),(2,'khang','$2a$10$EAIQ8coJ0HYxGkEANW8AXueAgnNCAhfYhSyfJ0XY4sfWikw99x2qW','Trần Vũ Khang','2021-09-02','0334010050','1851050059khang@ou.edu.vn','https://res.cloudinary.com/khangou/image/upload/v1630526042/hhkhyk6bnqzyx5bugdvn.jpg','117 ĐHT 05, phường Tân Hưng Thuận, quận 12, Tp.HCM',_binary '','ROLE_USER'),(3,'a','$2a$10$EAIQ8coJ0HYxGkEANW8AXueAgnNCAhfYhSyfJ0XY4sfWikw99x2qW','Trần Vũ Khang','2021-09-02','0334010051','khangbum@gmail.com','https://res.cloudinary.com/khangou/image/upload/v1630526120/slmjkv8ojorjhq0kf8gj.jpg','117 ĐHT 05, phường Tân Hưng Thuận, quận 12, Tp.HCM',_binary '','ROLE_USER'),(4,'khanghjhj','$2a$10$opMY9TTrlEPAwuYVu0hYC.ZRnyaX4nqrJBFiIM6JDQg56QOUAf5H.','Trần Vũ Khang','2021-09-04','0334010052','khangbum123@gmail.com','https://res.cloudinary.com/khangou/image/upload/v1630698713/dfpg7mimllx8oj40mjpe.jpg','117 ĐHT 05, phường Tân Hưng Thuận, quận 12, Tp.HCM',_binary '','ROLE_USER'),(5,'cuong','$2a$10$EAIQ8coJ0HYxGkEANW8AXueAgnNCAhfYhSyfJ0XY4sfWikw99x2qW','cao ngoc cuong','2021-09-04','0334010053','khang123@gmail.com','https://res.cloudinary.com/khangou/image/upload/v1630699758/oyuu3z3ljaxvz7ztgfal.jpg','117 ĐHT 05, phường Tân Hưng Thuận, quận 12, Tp.HCM',_binary '','ROLE_USER'),(9,'cuong2','$2a$10$KlVYjYwnZ4tQYcbvm3RnY.mffgmYbsf7PoxZdCCeusuNQ2KNOOn6u','Cao Ngọc Cường','2021-09-04','0334010055','cu@gmail.com','https://res.cloudinary.com/khangou/image/upload/v1630703989/mrqymli6wjxl2edupcj1.jpg','117 ĐHT 05, phường Tân Hưng Thuận, quận 12, Tp.HCM',_binary '','ROLE_USER'),(10,'cuong3','$2a$10$KlVYjYwnZ4tQYcbvm3RnY.mffgmYbsf7PoxZdCCeusuNQ2KNOOn6u','Cao Ngọc Cường','2021-09-13','0334010056','cu2@gmail.com','https://res.cloudinary.com/khangou/image/upload/v1630703989/mrqymli6wjxl2edupcj1.jpg','117 ĐHT 05, phường Tân Hưng Thuận, quận 12, Tp.HCM',_binary '','ROLE_USER'),(11,'vukhang123','$2a$10$T1xvMAlTUu2IHDHOluXm3uQIixXiWmapMsfXqD6mhQonth4AXruwy','Trần Vũ Khang','2021-09-13','0334010012','123a@gmail.com','https://res.cloudinary.com/khangou/image/upload/v1631513867/ajrqu1hdzffbf4ve1a5o.jpg',NULL,_binary '','ROLE_USER'),(12,'admin','$2a$10$EAIQ8coJ0HYxGkEANW8AXueAgnNCAhfYhSyfJ0XY4sfWikw99x2qW','Trần Vũ Khang','2021-09-14','0334010256','admin@gmail.com','https://res.cloudinary.com/khangou/image/upload/v1631513867/ajrqu1hdzffbf4ve1a5o.jpg',NULL,_binary '','ROLE_ADMIN'),(13,'dhthanh','$2a$10$Cu0Xc8c05UO996wn8l218ON6PeME.J1pDYvo6QjoAA2O00j/KK2l2','Dương Hữu Thành','2021-09-15','0334015854','thanh@ou.edu.vn','https://res.cloudinary.com/khangou/image/upload/v1631656277/rpln9c3ckkgcyp1adjob.jpg','VinHome Bình Thạnh, Tp. HCM',_binary '','ROLE_EMPLOYEE'),(14,'hieu123','$2a$10$X2uWsxHaFjPRZvF33QBWz.lslPxcFpxbKduDl5Yo3TNls.ekEBHfm','Hồ Quang Hiếu','2021-09-17','0334011212','hieu@gmail.com','https://res.cloudinary.com/khangou/image/upload/v1631816209/eglzksjgckmfplvcinbj.jpg','VinHome Bình Thạnh, Tp. HCM',_binary '','ROLE_EMPLOYEE'),(15,'trinh','$2a$10$6TBphOwfKj97EYycpQsiPeIgJTvVP6TWNiBROlCMxg286Mcmztanu','Ngọc Trinh','2021-09-21','','trinh@gmail.com','https://res.cloudinary.com/khangou/image/upload/v1632203749/scnwjxxs0yhuuhtrgy3b.jpg','VinHome Bình Thạnh, Tp. HCM',_binary '','ROLE_EMPLOYEE'),(19,'ngoccuong0103','$2a$10$tsT8F4Clwdr2SeGC66C8CuBRbLtTpBEV9BSsJVvBHntGnhYNIaV0y','cao ngoc cuong','2021-09-24',NULL,'ngoccuong01032000@gmail.com','https://res.cloudinary.com/khangou/image/upload/v1632498872/lmrenrc3abzuaxqjmufr.jpg',NULL,_binary '','ROLE_USER'),(20,'haohao','$2a$10$Hc7LbQ9M49nVE9RSNUoPIOHFrKkR2pEcr9GC7qjvu2cjIkh1I0Cxy','Bà Phương Hằng','2021-09-25','0337152172','hao3112000@gmail.com','https://res.cloudinary.com/khangou/image/upload/v1632549137/fvkzga1rebb03svr9fl7.jpg','191/12 Phạm Huy Thông',_binary '','ROLE_EMPLOYEE');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-27 20:45:20
