-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: dulieu
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table cacthanhphan
--

DROP TABLE IF EXISTS cacthanhphan;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE cacthanhphan (
  id int NOT NULL AUTO_INCREMENT,
  chedoanid int NOT NULL,
  tenthanhphan varchar(255) DEFAULT NULL,
  phantram double DEFAULT NULL,
  PRIMARY KEY (id),
  KEY FKCacThanhPh859452 (chedoanid),
  CONSTRAINT FKCacThanhPh859452 FOREIGN KEY (chedoanid) REFERENCES chedoan (id)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table cacthanhphan
--

LOCK TABLES cacthanhphan WRITE;
/*!40000 ALTER TABLE cacthanhphan DISABLE KEYS */;
INSERT INTO cacthanhphan VALUES (1,1,'Ngũ cốc nguyên hạt',26),(2,1,'Sữa',10),(3,1,'Thịt/Cá	',18),(4,1,'Hạt',5),(5,1,'Chất béo, dầu',7),(6,1,'Rau',17),(7,1,'Trái cây',17),(8,2,'Protein',40),(9,2,'Chất béo tốt',30),(10,2,'Sữa',10),(11,2,'Rau củ ',10),(12,2,'Hạt ',5),(13,2,'Trái cây ',5),(14,3,'Protein',30),(15,3,'Chất béo tốt',20),(16,3,'Carbs',20),(17,3,'Rau',20),(18,3,'Trái cây',10);
/*!40000 ALTER TABLE cacthanhphan ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table chedoan
--

DROP TABLE IF EXISTS chedoan;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE chedoan (
  id int NOT NULL AUTO_INCREMENT,
  ten varchar(255) DEFAULT NULL,
  mota text,
  huongdan text,
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table chedoan
--

LOCK TABLES chedoan WRITE;
/*!40000 ALTER TABLE chedoan DISABLE KEYS */;
INSERT INTO chedoan VALUES (1,'Dash','Đây là chế độ ăn được thiết kế để kiểm soát, phòng ngừa các loại bệnh như cao huyết áp, loãng xương, ung thư, tim mạch, đột quỵ và đái tháo đường... Dash khuyến khích bạn ăn nhiều trái cây, rau và thực phẩm chứa protein lạc, đồng thời hạn chế thịt đỏ, muối, đường, chất béo','Chia nhỏ khẩu phần ăn. Uống nước đầy đủ (2 lít/ngày). Không ăn quá 3/4 thìa cà phê muối (1500mg) mỗi ngày'),(2,'Low-cab','Đây là chế độ ăn giới hạn lượng carbohydrate và tăng tỉ lệ protein cũng như chất béo trong khẩu phần. Low-cab được áp dụng với mục đích giảm cân ngắn hạn vô cùng hiệu quả','Chia nhỏ khẩu phần ăn. Uống nước đầy đủ (2 lít/ngày)'),(3,'Eat clean','Đây là chế độ ăn sạch, sử dụng các loại nguyên liệu, thực phẩm tươi, sạch, ưu tiên nguồn gốc hữu cơ, được chế biến đơn giản và giữ được nguyên bản dưỡng chất trong thực phẩm.','Chia nhỏ khẩu phần ăn. Uống nước đầy đủ (2 lít/ngày). Cách chế biến đơn giản: luộc, hấp, nướng, chiên không dầu; uu tiên luộc, hấp, tránh hoàn toàn chiên gián dầu mỡ. Sử dụng ít gia vị đặc biệt muối. Tránh thực phẩm chế biến sẵn, đóng hộp, có chất bảo quản');
/*!40000 ALTER TABLE chedoan ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table cuongdoluyentap
--

DROP TABLE IF EXISTS cuongdoluyentap;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE cuongdoluyentap (
  id int NOT NULL AUTO_INCREMENT,
  loai varchar(255) DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table cuongdoluyentap
--

LOCK TABLES cuongdoluyentap WRITE;
/*!40000 ALTER TABLE cuongdoluyentap DISABLE KEYS */;
INSERT INTO cuongdoluyentap VALUES (1,'nhẹ'),(2,'vừa'),(3,'nặng');
/*!40000 ALTER TABLE cuongdoluyentap ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table monthethao
--

DROP TABLE IF EXISTS monthethao;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE monthethao (
  id int NOT NULL AUTO_INCREMENT,
  cuongdoluyentapid int NOT NULL,
  ten varchar(255) DEFAULT NULL,
  luongcalotrentieng double DEFAULT NULL,
  link varchar(255) DEFAULT NULL,
  PRIMARY KEY (id),
  KEY FKMonTheThao870141 (cuongdoluyentapid),
  CONSTRAINT FKMonTheThao870141 FOREIGN KEY (cuongdoluyentapid) REFERENCES cuongdoluyentap (id)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table monthethao
--

LOCK TABLES monthethao WRITE;
/*!40000 ALTER TABLE monthethao DISABLE KEYS */;
INSERT INTO `monthethao` VALUES (1,1,'Đi bộ 3km/h',105,'https://www.youtube.com/embed/RHobTtOv1Qo'),(2,1,'Đi bộ 5km/h',173,'https://www.youtube.com/embed/RHobTtOv1Qo'),(3,1,'Đạp xe 13-15km/h',210,'https://www.youtube.com/embed/yHj-IkMzwUI'),(4,1,'Thể dục nhịp điệu',341,'https://www.youtube.com/embed/B2Ibh0xJYms'),(5,1,'Đánh cầu lông',245,'https://www.youtube.com/embed/GhcaN1CODWI'),(6,1,'Khiêu vũ',180,'https://www.youtube.com/embed/pJcSNWJYWr0'),(7,1,'Yoga',228,'https://www.youtube.com/embed/HUo8VPMOqXQ'),(8,2,'Chạy bộ 8km/h',420,'https://www.youtube.com/embed/RHobTtOv1Qo'),(9,2,'Chạy bộ 10km/h',525,'https://www.youtube.com/embed/RHobTtOv1Qo'),(10,2,'Nhảy dây',525,'https://www.youtube.com/embed/wgmFYB36f5o'),(11,2,'Đạp xe 16-19km/h',315,'https://www.youtube.com/embed/yHj-IkMzwUI'),(12,2,'Đạp xe 20-23km/h',420,'https://www.youtube.com/embed/yHj-IkMzwUI'),(13,2,'Bơi',596,'https://www.youtube.com/embed/KcRaLO4M5Ag'),(14,2,'Bóng chuyền',590,'https://www.youtube.com/embed/IhP6ULBoya0'),(15,2,'Chống đẩy',480,'https://www.youtube.com/embed/yzAO8ozWfCQ'),(16,2,'Đánh goft',391,'https://www.youtube.com/embed/_NmgTaohdAg'),(17,2,'Chèo thuyền',319,'https://www.youtube.com/embed/0MQxDSi_NCU'),(18,3,'Võ thuật',650,'https://www.youtube.com/embed/wtUmVKTWq3E'),(19,2,'Leo cầu thang bộ',420,'https://www.youtube.com/embed/NUAlhgiS1rA'),(20,2,'Tennis',600,'https://www.youtube.com/embed/ojboAxAE2lU'),(21,2,'Jumping Jack',600,'https://www.youtube.com/embed/9JNKFLrCjlQ'),(22,1,'Tạ tay nhẹ nhàng',118,'https://www.youtube.com/embed/Jr6h1sGhHY8'),(23,2,'Tạ tay nâng cao',320,'https://www.youtube.com/embed/Jr6h1sGhHY8'),(24,3,'Chạy bộ 11km/h',604,'https://www.youtube.com/embed/RHobTtOv1Qo'),(25,3,'Chạy bộ 14km/h',788,'https://www.youtube.com/embed/RHobTtOv1Qo'),(26,3,'Chạy bộ 16km.h',840,'https://www.youtube.com/embed/RHobTtOv1Qo'),(27,3,'Đạp xe 32km/h',840,'https://www.youtube.com/embed/yHj-IkMzwUI'),(28,3,'Trượt băng',637,'https://www.youtube.com/embed/toAmA6sIAWU'),(29,3,'Burpees',750,'https://www.youtube.com/embed/nPAIFqRksEM'),(30,3,'Plank',800,'https://www.youtube.com/embed/lSa6hIo0ajA'),(31,3,'Đá bóng',750,'https://www.youtube.com/embed/5ppFexJmdi4'),(32,3,'Bóng rổ',728,'https://www.youtube.com/embed/X4vHi3tYXiM'),(33,3,'Nâng tạ',532,'https://www.youtube.com/embed/wEqJN2LV6MQ');
/*!40000 ALTER TABLE monthethao ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table thongtinxdchedoan
--

DROP TABLE IF EXISTS thongtinxdchedoan;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE thongtinxdchedoan (
  id int NOT NULL AUTO_INCREMENT,
  chedoanid int NOT NULL,
  mucdichgiamcan varchar(255) DEFAULT NULL,
  caohuyetap bit(1) DEFAULT NULL,
  tieuduongvatim bit(1) DEFAULT NULL,
  stress varchar(255) DEFAULT NULL,
  bmi int DEFAULT NULL,
  PRIMARY KEY (id),
  KEY FKThongTinXD980603 (chedoanid),
  CONSTRAINT FKThongTinXD980603 FOREIGN KEY (chedoanid) REFERENCES chedoan (id)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table thongtinxdchedoan
--

LOCK TABLES thongtinxdchedoan WRITE;
/*!40000 ALTER TABLE thongtinxdchedoan DISABLE KEYS */;
INSERT INTO thongtinxdchedoan VALUES (1,3,'Cơ thể khoẻ mạnh',_binary '\0',_binary '\0','ít',3),(2,1,'Bệnh',_binary '',_binary '\0','vừa',4),(3,2,'Công việc',_binary '\0',_binary '\0','ít',4),(4,3,'Bệnh',_binary '',_binary '','không',5),(5,3,'Làm đẹp',_binary '\0',_binary '','nhiều',4),(6,1,'Bệnh',_binary '',_binary '','ít',3),(7,2,'Công việc',_binary '\0',_binary '\0','không',3),(8,2,'Cơ thể khoẻ mạnh',_binary '\0',_binary '\0','không',5),(9,1,'Bệnh',_binary '',_binary '','nhiều',5),(10,3,'Làm đẹp',_binary '',_binary '\0','ít',3),(11,3,'Làm đẹp',_binary '\0',_binary '\0','không',3),(12,3,'Làm đẹp',_binary '\0',_binary '\0','không',4),(13,2,'Làm đẹp',_binary '\0',_binary '\0','không',5),(14,1,'Làm đẹp',_binary '',_binary '','nhiều',5),(15,2,'Công việc',_binary '\0',_binary '','ít',4),(16,1,'Bệnh',_binary '',_binary '\0','vừa',3),(17,3,'Làm đẹp',_binary '\0',_binary '\0','nhiều',3),(18,1,'Cơ thể khoẻ mạnh',_binary '',_binary '','ít',4),(19,1,'Cơ thể khoẻ mạnh',_binary '\0',_binary '','vừa',3),(20,1,'Cơ thể khoẻ mạnh',_binary '',_binary '\0','không',5),(21,3,'Cơ thể khoẻ mạnh',_binary '\0',_binary '\0','nhiều',3),(22,1,'Bệnh',_binary '',_binary '','ít',4),(23,1,'Bệnh',_binary '\0',_binary '','vừa',3),(24,3,'Công việc',_binary '\0',_binary '','không',3),(25,2,'Cơ thể khoẻ mạnh',_binary '\0',_binary '\0','nhiều',5),(27,1,'Cơ thể khoẻ mạnh',_binary '',_binary '\0','nhiều',4),(28,3,'Công việc',_binary '\0',_binary '','nhiều',5),(29,3,'Công việc',_binary '\0',_binary '','ít',3),(30,3,'Công việc',_binary '',_binary '','không',4);
/*!40000 ALTER TABLE thongtinxdchedoan ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table thongtinxdchedotapluyen
--

DROP TABLE IF EXISTS thongtinxdchedotapluyen;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE thongtinxdchedotapluyen (
  id int NOT NULL AUTO_INCREMENT,
  cuongdoluyentapid int NOT NULL,
  tinhtrangthechat varchar(255) DEFAULT NULL,
  level varchar(255) DEFAULT NULL,
  tocdogiamcan varchar(255) DEFAULT NULL,
  bmi double DEFAULT NULL,
  PRIMARY KEY (id),
  KEY FKThongTinXD561524 (cuongdoluyentapid),
  CONSTRAINT FKThongTinXD561524 FOREIGN KEY (cuongdoluyentapid) REFERENCES cuongdoluyentap (id)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table thongtinxdchedotapluyen
--

LOCK TABLES thongtinxdchedotapluyen WRITE;
/*!40000 ALTER TABLE thongtinxdchedotapluyen DISABLE KEYS */;
INSERT INTO thongtinxdchedotapluyen VALUES (1,2,'Bình thường','Mới','Cham',3),(2,2,'Bình thường','Mới','Binh thuong',3),(3,2,'Không tốt','Mới','Binh thuong',3),(4,3,'Bình thường','Kinh nghiệm','Nhanh',4),(5,2,'Không tốt','Mới','Nhanh',4),(6,2,'Không tốt','Kinh nghiệm','Binh thuong',4),(7,3,'Bình thường','Kinh nghiệm','Cham',5),(8,3,'Bình thường','Mới','Nhanh',5),(9,3,'Bình thường','Mới','Binh thuong',5),(10,2,'Không tốt','Kinh nghiệm','Cham',3),(11,1,'Không tốt','Mới','Cham',3),(12,3,'Bình thường','Kinh nghiệm','Nhanh',3),(13,2,'Bình thường','Mới','Nhanh',4),(14,2,'Bình thường','Mới','Cham',4),(15,1,'Không tốt','Mới','Cham',4),(16,2,'Không tốt','Mới','Nhanh',5),(17,2,'Không tốt','Kinh nghiệm','Nhanh',5),(18,3,'Không tốt','Kinh nghiệm','Nhanh',5);
/*!40000 ALTER TABLE thongtinxdchedotapluyen ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table thucpham
--

DROP TABLE IF EXISTS thucpham;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE thucpham (
  id int NOT NULL AUTO_INCREMENT,
  cacthanhphanid int NOT NULL,
  ten varchar(255) DEFAULT NULL,
  luongcalotrenkg double DEFAULT NULL,
  PRIMARY KEY (id),
  KEY FKThucPham754189 (cacthanhphanid),
  CONSTRAINT FKThucPham754189 FOREIGN KEY (cacthanhphanid) REFERENCES cacthanhphan (id)
) ENGINE=InnoDB AUTO_INCREMENT=280 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table thucpham
--

LOCK TABLES thucpham WRITE;
/*!40000 ALTER TABLE thucpham DISABLE KEYS */;
INSERT INTO thucpham VALUES (1,1,'Lúa mạch',354),(2,1,'Ngô',177),(3,1,'Yến mạch',68),(4,1,'Gạo lứt',111),(5,1,'Bánh mì nguyên cám',250),(6,1,'Bánh mì yến mạch',220),(7,1,'Kiều mạch',313),(8,1,'Bột mỳ nguyên cám',247),(9,2,'Sữa bò tươi',74),(10,2,'Sữa bột tách béo',357),(11,2,'Sữa chua',61),(12,2,'Sữa bò nguyên chất',150),(13,2,'Sữa hạnh nhân không đường',40),(14,2,'Sữa đậu nành không đường',80),(15,2,'Sữa gạo không đường',120),(16,2,'Sữa dừa không đường',50),(17,3,'Trứng gà',166),(18,3,'Trứng vịt',184),(19,3,'Thịt nạc heo',242),(20,3,'Thịt ức gà',164),(21,3,'Cá bơn',80),(22,3,'Cá chim',142),(23,3,'Cá bớp',100),(24,3,'Cá chép',115),(25,4,'Đậu phộng',573),(26,4,'Hạt hạnh nhân',597),(27,4,'Hạt điều',552),(28,4,'Hạt chia',486),(29,4,'Đậu nành',54),(30,4,'Hạt óc chó',554),(31,5,'Dầu oliu',884),(32,5,'Bơ thực vật',717),(33,5,'Dầu thực vật',884),(34,5,'Sốt mayonnaise',680),(35,6,'Măng Tây',25),(36,6,'Cải bắp',21),(37,6,'Cần tây',8),(38,6,'Rau ngót',36),(39,6,'Cà tím',15),(40,6,'Súp lơ xanh',31),(41,6,'Súp lơ trắng',31),(42,6,'Dưa leo',10),(43,6,'Rau mồng tơi',25),(44,6,'Rau bí',18),(45,6,'Rau dền',23),(46,6,'Rau lang',22),(47,6,'Cải xoong',11),(48,6,'Cải cúc/ tần ô',24),(49,6,'Cải xoăn kale',49),(50,6,'Cải ngồng',22),(51,6,'Cà chua',23),(52,6,'Giá đỗ',44),(53,6,'Mướp hương',16),(54,6,'Mướp tây/ Đậu bắp',31),(55,6,'Khổ qua',17),(56,6,'Cà rốt',41),(57,6,'Rau dọc mùng',14),(58,6,'Cải ngồng',22),(59,6,'Quả bầu',20),(60,6,'Ớt chuông xanh',20),(61,6,'Ớt chuông đỏ',31),(62,6,'Ớt chuông vàng',27),(63,6,'Dưa chuột',15),(64,7,'Táo',52),(65,7,'Cam',47),(66,7,'Quả lựu',83),(67,7,'Xoài',60),(68,7,'Hồng xiêm',83),(69,7,'Dừa',354),(70,7,'Đu đủ',42),(71,7,'Dưa hấu',30.4),(72,7,'Ổi',68),(73,7,'Quýt',53.3),(74,7,'Nho',66.9),(75,7,'Mãng cầu na',101),(76,7,'Lê',57.1),(77,7,'Quả mận',25),(78,7,'Bơ',160),(79,7,'Bưởi',38),(80,7,'Đào',39.4),(81,7,'Kiwi',60.9),(82,7,'Chuối',88.7),(83,7,'Việt quất',57.4),(84,7,'Dâu tây',32.5),(85,7,'Dưa lưới',33.7),(86,7,'Trái thơm',50),(87,7,'Thanh long',60),(88,7,'Chanh dây',97),(89,7,'Quả mơ',52),(90,7,'Quả anh đào',50),(91,7,'Quả sung',107),(92,8,'Trứng gà',166),(93,8,'Trứng vịt',184),(94,8,'Cua biển',103),(95,8,'Cá thu',116),(96,8,'Cá nục',111),(97,8,'Tôm biển',82),(98,8,'Tôm càng/ tôm rồng',90),(99,8,'Cá đuối',89),(100,8,'Cá mú',80),(101,8,'Cá mú đỏ',100),(102,8,'Cá chim',142),(103,8,'Cá bớp',100),(104,8,'Cá trắng',69),(105,8,'Cá chép',115),(106,8,'Cá trích',233),(107,8,'Cá chình',281),(108,8,'Nghêu',168),(109,8,'Ốc xoắn',89),(110,8,'Ghẹ biển',54),(111,8,'Thịt bò',250),(112,8,'Thịt đùi gà',177),(113,8,'Thịt ức gà',164),(114,8,'Thịt ba rọi heo',517),(115,8,'Thịt nạc heo',242),(116,8,'Thịt chân giò heo',406),(117,8,'Thịt giò bò',357),(118,8,'Giò lụa',136),(119,8,'Sườn heo',187),(120,8,'Thịt dê',122),(121,8,'Thịt cừu',294),(122,9,'Bơ',160),(123,9,'Dừa',354),(124,9,'Đậu phộng',573),(125,9,'Cá ngừ',149),(126,9,'Cá hồi',108),(127,9,'Hạt chia',486),(128,9,'Phô mai',403),(129,9,'Đậu phộng',76),(130,9,'Dầu oliu',884),(131,9,'Socola đen',650),(132,9,'Cá bơn',80),(133,10,'Sữa bò tươi',74),(134,10,'Sữa bột tách béo',357),(135,10,'Sữa chua',61),(136,10,'Sữa bò nguyên chất',150),(137,10,'Sữa hạnh nhân không đường',40),(138,10,'Sữa đậu nành không đường',80),(139,10,'Sữa gạo không đường',120),(140,10,'Sữa dừa không đường',50),(141,11,'Cải bắp',21),(142,11,'Súp lơ xanh',31),(143,11,'Súp lơ trắng',31),(144,11,'Dưa leo',10),(145,11,'Măng Tây',25),(146,11,'Cà tím',15),(147,11,'Cải xoăn kale',49),(148,11,'Cà chua',23),(149,11,'Cà rốt',41),(150,11,'Ớt chuông xanh',20),(151,11,'Ớt chuông đỏ',31),(152,11,'Ớt chuông vàng',27),(153,11,'Dưa chuột',15),(154,11,'Nấm thường',35),(155,11,'Nấm mỡ',33),(156,11,'Nấm rơm',31),(157,11,'Nấm hương',40),(158,12,'Hạt hạnh nhân',597),(159,12,'Hạt điều',552),(160,12,'Hạt chia',486),(161,12,'Hạt óc chó',554),(162,12,'Hạt macca',718),(163,13,'Dưa hấu',30.4),(164,13,'Quýt',53.3),(165,13,'Bưởi',38),(166,13,'Đào',39.4),(167,13,'Kiwi',60.9),(168,13,'Việt quất',57.4),(169,13,'Dâu tây',32.5),(170,13,'Dưa lưới',33.7),(171,13,'Cam',47),(172,13,'Quả mâm xôi',36),(173,14,'Trứng gà',166),(174,14,'Trứng vịt',184),(175,14,'Cua biển',103),(176,14,'Cá thu',116),(177,14,'Cá nục',111),(178,14,'Tôm biển',82),(179,14,'Tôm càng/ tôm rồng',90),(180,14,'Cá đuối',89),(181,14,'Cá mú',80),(182,14,'Cá mú đỏ',100),(183,14,'Cá chim',142),(184,14,'Cá bớp',100),(185,14,'Cá trắng',69),(186,14,'Cá bơn',80),(187,14,'Cá ngừ',149),(188,14,'Cá hồi',108),(189,14,'Cá chép',115),(190,14,'Cá trích',233),(191,14,'Cá chình',281),(192,14,'Nghêu',168),(193,14,'Ốc xoắn',89),(194,14,'Ghẹ biển',54),(195,14,'Chuối',88.7),(196,14,'Thịt bò',250),(197,14,'Thịt đùi gà',177),(198,14,'Thịt ức gà',164),(199,14,'Thịt ba rọi heo',517),(200,14,'Thịt nạc heo',242),(201,14,'Thịt chân giò heo',406),(202,14,'Thịt giò bò',357),(203,14,'Giò lụa',136),(204,14,'Sườn heo',187),(205,14,'Thịt dê',122),(206,14,'Sữa bò tươi',74),(207,14,'Sữa bò nguyên chất',150),(208,14,'Sữa hạnh nhân không đường',40),(209,14,'Sữa đậu nành không đường',80),(210,14,'Sữa gạo không đường',120),(211,15,'Bơ',160),(212,15,'Dừa',354),(213,15,'Đậu phộng',573),(214,15,'Hạt hạnh nhân',597),(215,15,'Hạt điều',552),(216,15,'Hạt chia',486),(217,15,'Đậu nành',54),(218,15,'Đậu phụ',76),(219,15,'Dầu oliu',884),(220,15,'Socola đen',650),(221,16,'Bánh mì đen',260),(222,16,'Bánh mì nguyên cám',250),(223,16,'Bánh mì yến mạch',220),(224,16,'Khoai lang',86),(225,16,'Phở khô',342),(226,16,'Quá bí ngô',26),(227,16,'Gạo lứt',111),(228,16,'Gạo tẻ',344),(229,16,'Yến mạch',68),(230,16,'Khoai môn',112),(231,16,'Đậu hà lan',81),(232,16,'Hạt đậu đen',325),(233,16,'Đậu xanh',328),(234,17,'Măng Tây',25),(235,17,'Cải bắp',21),(236,17,'Cần tây',8),(237,17,'Rau ngót',36),(238,17,'Cà tím',15),(239,17,'Súp lơ xanh',31),(240,17,'Súp lơ trắng',31),(241,17,'Dưa leo',10),(242,17,'Rau mồng tơi',25),(243,17,'Rau bí',18),(244,17,'Rau dền',23),(245,17,'Rau lang',22),(246,17,'Cải xoong',11),(247,17,'Cải cúc/ tần ô',24),(248,17,'Cải xoăn kale',49),(249,17,'Cải ngồng',22),(250,17,'Cà chua',23),(251,17,'Giá đỗ',44),(252,17,'Mướp hương',16),(253,17,'Mướp tây/ Đậu bắp',31),(254,17,'Khổ qua',17),(255,17,'Cà rốt',41),(256,17,'Rau dọc mùng',14),(257,17,'Cải ngồng',22),(258,17,'Quả bầu',20),(259,17,'Ớt chuông xanh',20),(260,17,'Ớt chuông đỏ',31),(261,17,'Ớt chuông vàng',27),(262,17,'Dưa chuột',15),(263,18,'Táo',52),(264,18,'Cam',47),(265,18,'Xoài',60),(266,18,'Đu đủ',42),(267,18,'Dưa hấu',30.4),(268,18,'Ổi',68),(269,18,'Quýt',53.3),(270,18,'Lê',57.1),(271,18,'Bưởi',38),(272,18,'Đào',39.4),(273,18,'Kiwi',60.9),(274,18,'Việt quất',57.4),(275,18,'Dâu tây',32.5),(276,18,'Dưa lưới',33.7),(277,18,'Trái thơm',50),(278,18,'Chanh dây',97),(279,18,'Thanh long',60);
/*!40000 ALTER TABLE thucpham ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-02 16:55:14
