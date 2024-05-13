-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: springboot5a4x5
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Current Database: `springboot5a4x5`
--

/*!40000 DROP DATABASE IF EXISTS `springboot5a4x5`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `springboot5a4x5` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `springboot5a4x5`;

--
-- Table structure for table `binglixinxi`
--

DROP TABLE IF EXISTS `binglixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `binglixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `binglibianhao` varchar(200) DEFAULT NULL COMMENT '病历编号',
  `bingrenzhanghao` varchar(200) DEFAULT NULL COMMENT '病人账号',
  `bingrenxingming` varchar(200) DEFAULT NULL COMMENT '病人姓名',
  `yishenggonghao` varchar(200) DEFAULT NULL COMMENT '医生工号',
  `keshi` varchar(200) DEFAULT NULL COMMENT '科室',
  `yishengxingming` varchar(200) DEFAULT NULL COMMENT '医生姓名',
  `xianbingshi` varchar(200) DEFAULT NULL COMMENT '现病史',
  `jiwangshi` varchar(200) DEFAULT NULL COMMENT '既往史',
  `yaominshi` varchar(200) DEFAULT NULL COMMENT '药敏史',
  `zhenduan` longtext COMMENT '诊断',
  `zhiliaofangan` longtext COMMENT '治疗方案',
  `yizhu` longtext COMMENT '医嘱',
  `bingliwenjian` longtext COMMENT '病历文件',
  `dengjishijian` datetime DEFAULT NULL COMMENT '登记时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `binglibianhao` (`binglibianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 COMMENT='病历信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `binglixinxi`
--

LOCK TABLES `binglixinxi` WRITE;
/*!40000 ALTER TABLE `binglixinxi` DISABLE KEYS */;
INSERT INTO `binglixinxi` VALUES (51,'2023-03-14 01:34:42','1111111111','病人账号1','病人姓名1','医生工号1','科室1','医生姓名1','现病史1','既往史1','药敏史1','诊断1','治疗方案1','医嘱1','','2023-03-14 09:34:42'),(52,'2023-03-14 01:34:42','2222222222','病人账号2','病人姓名2','医生工号2','科室2','医生姓名2','现病史2','既往史2','药敏史2','诊断2','治疗方案2','医嘱2','','2023-03-14 09:34:42'),(53,'2023-03-14 01:34:42','3333333333','病人账号3','病人姓名3','医生工号3','科室3','医生姓名3','现病史3','既往史3','药敏史3','诊断3','治疗方案3','医嘱3','','2023-03-14 09:34:42'),(54,'2023-03-14 01:34:42','4444444444','病人账号4','病人姓名4','医生工号4','科室4','医生姓名4','现病史4','既往史4','药敏史4','诊断4','治疗方案4','医嘱4','','2023-03-14 09:34:42'),(55,'2023-03-14 01:34:42','5555555555','病人账号5','病人姓名5','医生工号5','科室5','医生姓名5','现病史5','既往史5','药敏史5','诊断5','治疗方案5','医嘱5','','2023-03-14 09:34:42'),(56,'2023-03-14 01:34:42','6666666666','病人账号6','病人姓名6','医生工号6','科室6','医生姓名6','现病史6','既往史6','药敏史6','诊断6','治疗方案6','医嘱6','','2023-03-14 09:34:42'),(57,'2023-03-14 01:34:42','7777777777','病人账号7','病人姓名7','医生工号7','科室7','医生姓名7','现病史7','既往史7','药敏史7','诊断7','治疗方案7','医嘱7','','2023-03-14 09:34:42'),(58,'2023-03-14 01:34:42','8888888888','病人账号8','病人姓名8','医生工号8','科室8','医生姓名8','现病史8','既往史8','药敏史8','诊断8','治疗方案8','医嘱8','','2023-03-14 09:34:42');
/*!40000 ALTER TABLE `binglixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bingren`
--

DROP TABLE IF EXISTS `bingren`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bingren` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bingrenzhanghao` varchar(200) NOT NULL COMMENT '病人账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `bingrenxingming` varchar(200) DEFAULT NULL COMMENT '病人姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `touxiang` longtext COMMENT '头像',
  `bingrenshouji` varchar(200) DEFAULT NULL COMMENT '病人手机',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `jiatingzhuzhi` varchar(200) DEFAULT NULL COMMENT '家庭住址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `bingrenzhanghao` (`bingrenzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='病人';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bingren`
--

LOCK TABLES `bingren` WRITE;
/*!40000 ALTER TABLE `bingren` DISABLE KEYS */;
INSERT INTO `bingren` VALUES (11,'2023-03-14 01:34:42','病人账号1','123456','病人姓名1','男','年龄1','upload/bingren_touxiang1.jpg','13823888881','440300199101010001','家庭住址1'),(12,'2023-03-14 01:34:42','病人账号2','123456','病人姓名2','男','年龄2','upload/bingren_touxiang2.jpg','13823888882','440300199202020002','家庭住址2'),(13,'2023-03-14 01:34:42','病人账号3','123456','病人姓名3','男','年龄3','upload/bingren_touxiang3.jpg','13823888883','440300199303030003','家庭住址3'),(14,'2023-03-14 01:34:42','病人账号4','123456','病人姓名4','男','年龄4','upload/bingren_touxiang4.jpg','13823888884','440300199404040004','家庭住址4'),(15,'2023-03-14 01:34:42','病人账号5','123456','病人姓名5','男','年龄5','upload/bingren_touxiang5.jpg','13823888885','440300199505050005','家庭住址5'),(16,'2023-03-14 01:34:42','病人账号6','123456','病人姓名6','男','年龄6','upload/bingren_touxiang6.jpg','13823888886','440300199606060006','家庭住址6'),(17,'2023-03-14 01:34:42','病人账号7','123456','病人姓名7','男','年龄7','upload/bingren_touxiang7.jpg','13823888887','440300199707070007','家庭住址7'),(18,'2023-03-14 01:34:42','病人账号8','123456','病人姓名8','男','年龄8','upload/bingren_touxiang8.jpg','13823888888','440300199808080008','家庭住址8');
/*!40000 ALTER TABLE `bingren` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chuyuanxinxi`
--

DROP TABLE IF EXISTS `chuyuanxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chuyuanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bingrenzhanghao` varchar(200) DEFAULT NULL COMMENT '病人账号',
  `bingrenxingming` varchar(200) DEFAULT NULL COMMENT '病人姓名',
  `bingrenshouji` varchar(200) DEFAULT NULL COMMENT '病人手机',
  `jiatingzhuzhi` varchar(200) DEFAULT NULL COMMENT '家庭住址',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `chuyuanshijian` datetime DEFAULT NULL COMMENT '出院时间',
  `shentiqingkuang` longtext COMMENT '身体情况',
  `yishenggonghao` varchar(200) DEFAULT NULL COMMENT '医生工号',
  `yishengxingming` varchar(200) DEFAULT NULL COMMENT '医生姓名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COMMENT='出院信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chuyuanxinxi`
--

LOCK TABLES `chuyuanxinxi` WRITE;
/*!40000 ALTER TABLE `chuyuanxinxi` DISABLE KEYS */;
INSERT INTO `chuyuanxinxi` VALUES (41,'2023-03-14 01:34:42','病人账号1','病人姓名1','病人手机1','家庭住址1','性别1','年龄1','2023-03-14 09:34:42','身体情况1','医生工号1','医生姓名1','联系电话1'),(42,'2023-03-14 01:34:42','病人账号2','病人姓名2','病人手机2','家庭住址2','性别2','年龄2','2023-03-14 09:34:42','身体情况2','医生工号2','医生姓名2','联系电话2'),(43,'2023-03-14 01:34:42','病人账号3','病人姓名3','病人手机3','家庭住址3','性别3','年龄3','2023-03-14 09:34:42','身体情况3','医生工号3','医生姓名3','联系电话3'),(44,'2023-03-14 01:34:42','病人账号4','病人姓名4','病人手机4','家庭住址4','性别4','年龄4','2023-03-14 09:34:42','身体情况4','医生工号4','医生姓名4','联系电话4'),(45,'2023-03-14 01:34:42','病人账号5','病人姓名5','病人手机5','家庭住址5','性别5','年龄5','2023-03-14 09:34:42','身体情况5','医生工号5','医生姓名5','联系电话5'),(46,'2023-03-14 01:34:42','病人账号6','病人姓名6','病人手机6','家庭住址6','性别6','年龄6','2023-03-14 09:34:42','身体情况6','医生工号6','医生姓名6','联系电话6'),(47,'2023-03-14 01:34:42','病人账号7','病人姓名7','病人手机7','家庭住址7','性别7','年龄7','2023-03-14 09:34:42','身体情况7','医生工号7','医生姓名7','联系电话7'),(48,'2023-03-14 01:34:42','病人账号8','病人姓名8','病人手机8','家庭住址8','性别8','年龄8','2023-03-14 09:34:42','身体情况8','医生工号8','医生姓名8','联系电话8');
/*!40000 ALTER TABLE `chuyuanxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/picture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keshi`
--

DROP TABLE IF EXISTS `keshi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `keshi` varchar(200) NOT NULL COMMENT '科室',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8 COMMENT='科室';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keshi`
--

LOCK TABLES `keshi` WRITE;
/*!40000 ALTER TABLE `keshi` DISABLE KEYS */;
INSERT INTO `keshi` VALUES (61,'2023-03-14 01:34:42','科室1'),(62,'2023-03-14 01:34:42','科室2'),(63,'2023-03-14 01:34:42','科室3'),(64,'2023-03-14 01:34:42','科室4'),(65,'2023-03-14 01:34:42','科室5'),(66,'2023-03-14 01:34:42','科室6'),(67,'2023-03-14 01:34:42','科室7'),(68,'2023-03-14 01:34:42','科室8');
/*!40000 ALTER TABLE `keshi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','admin','管理员','2023-03-14 01:34:42');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yisheng`
--

DROP TABLE IF EXISTS `yisheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yisheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yishenggonghao` varchar(200) NOT NULL COMMENT '医生工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yishengxingming` varchar(200) DEFAULT NULL COMMENT '医生姓名',
  `keshi` varchar(200) DEFAULT NULL COMMENT '科室',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `yiling` varchar(200) DEFAULT NULL COMMENT '医龄',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `touxiang` longtext COMMENT '头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yishenggonghao` (`yishenggonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='医生';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yisheng`
--

LOCK TABLES `yisheng` WRITE;
/*!40000 ALTER TABLE `yisheng` DISABLE KEYS */;
INSERT INTO `yisheng` VALUES (21,'2023-03-14 01:34:42','医生工号1','123456','医生姓名1','科室1','专家','男','医龄1','13823888881','upload/yisheng_touxiang1.jpg'),(22,'2023-03-14 01:34:42','医生工号2','123456','医生姓名2','科室2','专家','男','医龄2','13823888882','upload/yisheng_touxiang2.jpg'),(23,'2023-03-14 01:34:42','医生工号3','123456','医生姓名3','科室3','专家','男','医龄3','13823888883','upload/yisheng_touxiang3.jpg'),(24,'2023-03-14 01:34:42','医生工号4','123456','医生姓名4','科室4','专家','男','医龄4','13823888884','upload/yisheng_touxiang4.jpg'),(25,'2023-03-14 01:34:42','医生工号5','123456','医生姓名5','科室5','专家','男','医龄5','13823888885','upload/yisheng_touxiang5.jpg'),(26,'2023-03-14 01:34:42','医生工号6','123456','医生姓名6','科室6','专家','男','医龄6','13823888886','upload/yisheng_touxiang6.jpg'),(27,'2023-03-14 01:34:42','医生工号7','123456','医生姓名7','科室7','专家','男','医龄7','13823888887','upload/yisheng_touxiang7.jpg'),(28,'2023-03-14 01:34:42','医生工号8','123456','医生姓名8','科室8','专家','男','医龄8','13823888888','upload/yisheng_touxiang8.jpg');
/*!40000 ALTER TABLE `yisheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zhuyuanxinxi`
--

DROP TABLE IF EXISTS `zhuyuanxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zhuyuanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bingrenzhanghao` varchar(200) NOT NULL COMMENT '病人账号',
  `bingrenxingming` varchar(200) DEFAULT NULL COMMENT '病人姓名',
  `bingrenshouji` varchar(200) DEFAULT NULL COMMENT '病人手机',
  `jiatingzhuzhi` varchar(200) DEFAULT NULL COMMENT '家庭住址',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `ruzhushijian` datetime DEFAULT NULL COMMENT '入住时间',
  `ruzhuyuanyin` longtext COMMENT '入住原因',
  `yishenggonghao` varchar(200) DEFAULT NULL COMMENT '医生工号',
  `yishengxingming` varchar(200) DEFAULT NULL COMMENT '医生姓名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `chuyuanzhuangtai` varchar(200) NOT NULL COMMENT '出院状态',
  `bingfanghao` varchar(200) DEFAULT NULL COMMENT '病房号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COMMENT='住院信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zhuyuanxinxi`
--

LOCK TABLES `zhuyuanxinxi` WRITE;
/*!40000 ALTER TABLE `zhuyuanxinxi` DISABLE KEYS */;
INSERT INTO `zhuyuanxinxi` VALUES (31,'2023-03-14 01:34:42','病人账号1','病人姓名1','病人手机1','家庭住址1','性别1','年龄1','2023-03-14 09:34:42','入住原因1','医生工号1','医生姓名1','联系电话1','已出院','病房号1'),(32,'2023-03-14 01:34:42','病人账号2','病人姓名2','病人手机2','家庭住址2','性别2','年龄2','2023-03-14 09:34:42','入住原因2','医生工号2','医生姓名2','联系电话2','已出院','病房号2'),(33,'2023-03-14 01:34:42','病人账号3','病人姓名3','病人手机3','家庭住址3','性别3','年龄3','2023-03-14 09:34:42','入住原因3','医生工号3','医生姓名3','联系电话3','已出院','病房号3'),(34,'2023-03-14 01:34:42','病人账号4','病人姓名4','病人手机4','家庭住址4','性别4','年龄4','2023-03-14 09:34:42','入住原因4','医生工号4','医生姓名4','联系电话4','已出院','病房号4'),(35,'2023-03-14 01:34:42','病人账号5','病人姓名5','病人手机5','家庭住址5','性别5','年龄5','2023-03-14 09:34:42','入住原因5','医生工号5','医生姓名5','联系电话5','已出院','病房号5'),(36,'2023-03-14 01:34:42','病人账号6','病人姓名6','病人手机6','家庭住址6','性别6','年龄6','2023-03-14 09:34:42','入住原因6','医生工号6','医生姓名6','联系电话6','已出院','病房号6'),(37,'2023-03-14 01:34:42','病人账号7','病人姓名7','病人手机7','家庭住址7','性别7','年龄7','2023-03-14 09:34:42','入住原因7','医生工号7','医生姓名7','联系电话7','已出院','病房号7'),(38,'2023-03-14 01:34:42','病人账号8','病人姓名8','病人手机8','家庭住址8','性别8','年龄8','2023-03-14 09:34:42','入住原因8','医生工号8','医生姓名8','联系电话8','已出院','病房号8');
/*!40000 ALTER TABLE `zhuyuanxinxi` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-14  9:36:33
