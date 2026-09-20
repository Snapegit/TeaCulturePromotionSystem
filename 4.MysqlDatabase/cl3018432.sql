-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: cl3018432
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
-- Current Database: `cl3018432`
--

/*!40000 DROP DATABASE IF EXISTS `cl3018432`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `cl3018432` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `cl3018432`;

--
-- Table structure for table `aboutus`
--

DROP TABLE IF EXISTS `aboutus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aboutus` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `content` longtext NOT NULL COMMENT '内容',
  `picture1` longtext COMMENT '图片1',
  `picture2` longtext COMMENT '图片2',
  `picture3` longtext COMMENT '图片3',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `subtitle` varchar(200) DEFAULT NULL COMMENT '副标题',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='发展历程';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aboutus`
--

LOCK TABLES `aboutus` WRITE;
/*!40000 ALTER TABLE `aboutus` DISABLE KEYS */;
INSERT INTO `aboutus` VALUES (1,'2024-03-11 14:37:29','让我掉下眼泪的，不止昨夜的酒，让我依依不舍的，不止你的温柔，余路还要走多久，你攥着我的手，让我感到为难的，是挣扎的自由，分别总是在九月，回忆是思念的愁，深秋嫩绿的垂柳，亲吻着我额头，在那座阴雨的小城里，我从未忘记你，成都 带不走的 只有你，和我在成都的街头走一走，直到所有的灯都熄灭了也不停留，你会挽着我的衣袖，我会把手揣进裤兜，走到玉林路的尽头，坐在小酒馆的门口，分别总是在九月，回忆是思念的愁，深秋嫩绿的垂柳，亲吻着我额头，在那座阴雨的小城里，我从未忘记你，成都 带不走的 只有你，和我在成都的街头走一走，直到所有的灯都熄灭了也不停留，你会挽着我的衣袖，我会把手揣进裤兜，走到玉林路的尽头，坐在小酒馆的门口，和我在成都的街头走一走，直到所有的灯都熄灭了也不停留，和我在成都的街头走一走，直到所有的灯都熄灭了也不停留，你会挽着我的衣袖，我会把手揣进裤兜，走到玉林路的尽头，走过小酒馆的门口，和我在成都的街头走一走，直到所有的灯都熄灭了也不停留。','file/aboutusPicture1.jpg','file/aboutusPicture2.jpg','file/aboutusPicture3.jpg','发展历程','DEVELOPMENT HISTORY');
/*!40000 ALTER TABLE `aboutus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `canjiahuodong`
--

DROP TABLE IF EXISTS `canjiahuodong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `canjiahuodong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huodongmingcheng` varchar(200) NOT NULL COMMENT '活动名称',
  `huodongleixing` varchar(200) NOT NULL COMMENT '活动类型',
  `huodongshijian` varchar(200) NOT NULL COMMENT '活动时间',
  `huodongdidian` varchar(200) NOT NULL COMMENT '活动地点',
  `huodongxiangqing` varchar(200) DEFAULT NULL COMMENT '活动详情',
  `baomingshijian` datetime DEFAULT NULL COMMENT '报名时间',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='参加活动';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `canjiahuodong`
--

LOCK TABLES `canjiahuodong` WRITE;
/*!40000 ALTER TABLE `canjiahuodong` DISABLE KEYS */;
INSERT INTO `canjiahuodong` VALUES (111,'2024-03-11 14:37:29','活动名称1','活动类型1','活动时间1','活动地点1','活动详情1','2024-03-11 22:37:29','用户账号1','用户姓名1'),(112,'2024-03-11 14:37:29','活动名称2','活动类型2','活动时间2','活动地点2','活动详情2','2024-03-11 22:37:29','用户账号2','用户姓名2'),(113,'2024-03-11 14:37:29','活动名称3','活动类型3','活动时间3','活动地点3','活动详情3','2024-03-11 22:37:29','用户账号3','用户姓名3'),(114,'2024-03-11 14:37:29','活动名称4','活动类型4','活动时间4','活动地点4','活动详情4','2024-03-11 22:37:29','用户账号4','用户姓名4'),(115,'2024-03-11 14:37:29','活动名称5','活动类型5','活动时间5','活动地点5','活动详情5','2024-03-11 22:37:29','用户账号5','用户姓名5'),(116,'2024-03-11 14:37:29','活动名称6','活动类型6','活动时间6','活动地点6','活动详情6','2024-03-11 22:37:29','用户账号6','用户姓名6');
/*!40000 ALTER TABLE `canjiahuodong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chaguanxinxi`
--

DROP TABLE IF EXISTS `chaguanxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chaguanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `chaguanmingcheng` varchar(200) DEFAULT NULL COMMENT '茶馆名称',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `chaweishu` int(11) DEFAULT NULL COMMENT '茶位数',
  `kerongnarenshu` int(11) DEFAULT NULL COMMENT '可容纳人数',
  `fengmian` longtext COMMENT '封面',
  `jiage` double DEFAULT NULL COMMENT '价格',
  `shangjiazhanghao` varchar(200) DEFAULT NULL COMMENT '商家账号',
  `shangjiamingcheng` varchar(200) DEFAULT NULL COMMENT '商家名称',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `storeupnum` int(11) DEFAULT NULL COMMENT '收藏数量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1710168252260 DEFAULT CHARSET=utf8 COMMENT='茶馆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chaguanxinxi`
--

LOCK TABLES `chaguanxinxi` WRITE;
/*!40000 ALTER TABLE `chaguanxinxi` DISABLE KEYS */;
INSERT INTO `chaguanxinxi` VALUES (121,'2024-03-11 14:37:29','茶馆名称1','地址1',1,1,'file/chaguanxinxiFengmian1.jpg,file/chaguanxinxiFengmian2.jpg,file/chaguanxinxiFengmian3.jpg',1,'商家账号1','商家名称1','手机1',1),(122,'2024-03-11 14:37:29','茶馆名称2','地址2',2,2,'file/chaguanxinxiFengmian2.jpg,file/chaguanxinxiFengmian3.jpg,file/chaguanxinxiFengmian4.jpg',2,'商家账号2','商家名称2','手机2',2),(123,'2024-03-11 14:37:29','茶馆名称3','地址3',3,3,'file/chaguanxinxiFengmian3.jpg,file/chaguanxinxiFengmian4.jpg,file/chaguanxinxiFengmian5.jpg',3,'商家账号3','商家名称3','手机3',3),(124,'2024-03-11 14:37:29','茶馆名称4','地址4',4,4,'file/chaguanxinxiFengmian4.jpg,file/chaguanxinxiFengmian5.jpg,file/chaguanxinxiFengmian6.jpg',4,'商家账号4','商家名称4','手机4',4),(125,'2024-03-11 14:37:29','茶馆名称5','地址5',5,5,'file/chaguanxinxiFengmian5.jpg,file/chaguanxinxiFengmian6.jpg,file/chaguanxinxiFengmian7.jpg',5,'商家账号5','商家名称5','手机5',5),(126,'2024-03-11 14:37:29','茶馆名称6','地址6',6,6,'file/chaguanxinxiFengmian6.jpg,file/chaguanxinxiFengmian7.jpg,file/chaguanxinxiFengmian8.jpg',6,'商家账号6','商家名称6','手机6',6),(1710168252259,'2024-03-11 14:44:12','茶吧','北京',10,100,'file/1710168245498.png',26,'111','111',NULL,0);
/*!40000 ALTER TABLE `chaguanxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chashixinxi`
--

DROP TABLE IF EXISTS `chashixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chashixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `chayemingcheng` varchar(200) DEFAULT NULL COMMENT '茶叶名称',
  `chayeleixing` varchar(200) DEFAULT NULL COMMENT '茶叶类型',
  `tupian` longtext COMMENT '图片',
  `zhizuoguocheng` longtext COMMENT '制作过程',
  `wenhuayunhan` longtext COMMENT '文化蕴含',
  `lishibeijing` longtext COMMENT '历史背景',
  `yanbianguocheng` longtext COMMENT '演变过程',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='茶史信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chashixinxi`
--

LOCK TABLES `chashixinxi` WRITE;
/*!40000 ALTER TABLE `chashixinxi` DISABLE KEYS */;
INSERT INTO `chashixinxi` VALUES (81,'2024-03-11 14:37:29','茶叶名称1','茶叶类型1','file/chashixinxiTupian1.jpg,file/chashixinxiTupian2.jpg,file/chashixinxiTupian3.jpg','制作过程1','文化蕴含1','历史背景1','演变过程1'),(82,'2024-03-11 14:37:29','茶叶名称2','茶叶类型2','file/chashixinxiTupian2.jpg,file/chashixinxiTupian3.jpg,file/chashixinxiTupian4.jpg','制作过程2','文化蕴含2','历史背景2','演变过程2'),(83,'2024-03-11 14:37:29','茶叶名称3','茶叶类型3','file/chashixinxiTupian3.jpg,file/chashixinxiTupian4.jpg,file/chashixinxiTupian5.jpg','制作过程3','文化蕴含3','历史背景3','演变过程3'),(84,'2024-03-11 14:37:29','茶叶名称4','茶叶类型4','file/chashixinxiTupian4.jpg,file/chashixinxiTupian5.jpg,file/chashixinxiTupian6.jpg','制作过程4','文化蕴含4','历史背景4','演变过程4'),(85,'2024-03-11 14:37:29','茶叶名称5','茶叶类型5','file/chashixinxiTupian5.jpg,file/chashixinxiTupian6.jpg,file/chashixinxiTupian7.jpg','制作过程5','文化蕴含5','历史背景5','演变过程5'),(86,'2024-03-11 14:37:29','茶叶名称6','茶叶类型6','file/chashixinxiTupian6.jpg,file/chashixinxiTupian7.jpg,file/chashixinxiTupian8.jpg','制作过程6','文化蕴含6','历史背景6','演变过程6');
/*!40000 ALTER TABLE `chashixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chaweiyuyue`
--

DROP TABLE IF EXISTS `chaweiyuyue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chaweiyuyue` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `chaguanmingcheng` varchar(200) DEFAULT NULL COMMENT '茶馆名称',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `jiage` double DEFAULT NULL COMMENT '价格',
  `chaweishu` int(11) DEFAULT NULL COMMENT '茶位数',
  `shangjiazhanghao` varchar(200) DEFAULT NULL COMMENT '商家账号',
  `shangjiamingcheng` varchar(200) DEFAULT NULL COMMENT '商家名称',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `yuyueshijian` datetime DEFAULT NULL COMMENT '预约时间',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `ispay` varchar(200) DEFAULT NULL COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1710168282038 DEFAULT CHARSET=utf8 COMMENT='茶位预约';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chaweiyuyue`
--

LOCK TABLES `chaweiyuyue` WRITE;
/*!40000 ALTER TABLE `chaweiyuyue` DISABLE KEYS */;
INSERT INTO `chaweiyuyue` VALUES (131,'2024-03-11 14:37:29','茶馆名称1','地址1',1,1,'商家账号1','商家名称1','手机1','2024-03-11 22:37:29','用户账号1','未支付'),(132,'2024-03-11 14:37:29','茶馆名称2','地址2',2,2,'商家账号2','商家名称2','手机2','2024-03-11 22:37:29','用户账号2','未支付'),(133,'2024-03-11 14:37:29','茶馆名称3','地址3',3,3,'商家账号3','商家名称3','手机3','2024-03-11 22:37:29','用户账号3','未支付'),(134,'2024-03-11 14:37:29','茶馆名称4','地址4',4,4,'商家账号4','商家名称4','手机4','2024-03-11 22:37:29','用户账号4','未支付'),(135,'2024-03-11 14:37:29','茶馆名称5','地址5',5,5,'商家账号5','商家名称5','手机5','2024-03-11 22:37:29','用户账号5','未支付'),(136,'2024-03-11 14:37:29','茶馆名称6','地址6',6,6,'商家账号6','商家名称6','手机6','2024-03-11 22:37:29','用户账号6','未支付'),(1710168172268,'2024-03-11 14:42:51','茶馆名称1','地址1',1,0,'商家账号1','商家名称1','手机1','2024-03-11 22:42:36','11','未支付'),(1710168282037,'2024-03-11 14:44:41','茶吧','北京',26,0,'111','111',NULL,'2024-03-11 22:44:26','11','已支付');
/*!40000 ALTER TABLE `chaweiyuyue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chayexinxi`
--

DROP TABLE IF EXISTS `chayexinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chayexinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `chayemingcheng` varchar(200) NOT NULL COMMENT '茶叶名称',
  `chayeleixing` varchar(200) DEFAULT NULL COMMENT '茶叶类型',
  `tupian` longtext COMMENT '图片',
  `chayedengji` varchar(200) DEFAULT NULL COMMENT '茶叶等级',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `chandi` varchar(200) DEFAULT NULL COMMENT '产地',
  `nianfen` varchar(200) DEFAULT NULL COMMENT '年份',
  `shengchanriqi` date DEFAULT NULL COMMENT '生产日期',
  `chayexiangqing` longtext COMMENT '茶叶详情',
  `storeupnum` int(11) DEFAULT NULL COMMENT '收藏数量',
  `clicknum` int(11) DEFAULT NULL COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='茶叶信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chayexinxi`
--

LOCK TABLES `chayexinxi` WRITE;
/*!40000 ALTER TABLE `chayexinxi` DISABLE KEYS */;
INSERT INTO `chayexinxi` VALUES (61,'2024-03-11 14:37:29','茶叶名称1','茶叶类型1','file/chayexinxiTupian1.jpg,file/chayexinxiTupian2.jpg,file/chayexinxiTupian3.jpg','茶叶等级1','品牌1','产地1','年份1','2024-03-11','茶叶详情1',2,2),(62,'2024-03-11 14:37:29','茶叶名称2','茶叶类型2','file/chayexinxiTupian2.jpg,file/chayexinxiTupian3.jpg,file/chayexinxiTupian4.jpg','茶叶等级2','品牌2','产地2','年份2','2024-03-11','茶叶详情2',2,2),(63,'2024-03-11 14:37:29','茶叶名称3','茶叶类型3','file/chayexinxiTupian3.jpg,file/chayexinxiTupian4.jpg,file/chayexinxiTupian5.jpg','茶叶等级3','品牌3','产地3','年份3','2024-03-11','茶叶详情3',3,3),(64,'2024-03-11 14:37:29','茶叶名称4','茶叶类型4','file/chayexinxiTupian4.jpg,file/chayexinxiTupian5.jpg,file/chayexinxiTupian6.jpg','茶叶等级4','品牌4','产地4','年份4','2024-03-11','茶叶详情4',4,4),(65,'2024-03-11 14:37:29','茶叶名称5','茶叶类型5','file/chayexinxiTupian5.jpg,file/chayexinxiTupian6.jpg,file/chayexinxiTupian7.jpg','茶叶等级5','品牌5','产地5','年份5','2024-03-11','茶叶详情5',5,5),(66,'2024-03-11 14:37:29','茶叶名称6','茶叶类型6','file/chayexinxiTupian6.jpg,file/chayexinxiTupian7.jpg,file/chayexinxiTupian8.jpg','茶叶等级6','品牌6','产地6','年份6','2024-03-11','茶叶详情6',6,6);
/*!40000 ALTER TABLE `chayexinxi` ENABLE KEYS */;
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
INSERT INTO `config` VALUES (1,'swiper1','file/swiperPicture1.jpg'),(2,'swiper2','file/swiperPicture2.jpg'),(3,'swiper3','file/swiperPicture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusschayexinxi`
--

DROP TABLE IF EXISTS `discusschayexinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusschayexinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `avatarurl` longtext COMMENT '头像',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1710168164520 DEFAULT CHARSET=utf8 COMMENT='茶叶信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusschayexinxi`
--

LOCK TABLES `discusschayexinxi` WRITE;
/*!40000 ALTER TABLE `discusschayexinxi` DISABLE KEYS */;
INSERT INTO `discusschayexinxi` VALUES (1710168164519,'2024-03-11 14:42:43',61,1710168133814,'','11','111111111111111111111',NULL);
/*!40000 ALTER TABLE `discusschayexinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huodongleixing`
--

DROP TABLE IF EXISTS `huodongleixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `huodongleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huodongleixing` varchar(200) NOT NULL COMMENT '活动类型',
  PRIMARY KEY (`id`),
  UNIQUE KEY `huodongleixing` (`huodongleixing`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='活动类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huodongleixing`
--

LOCK TABLES `huodongleixing` WRITE;
/*!40000 ALTER TABLE `huodongleixing` DISABLE KEYS */;
INSERT INTO `huodongleixing` VALUES (91,'2024-03-11 14:37:29','活动类型1'),(92,'2024-03-11 14:37:29','活动类型2'),(93,'2024-03-11 14:37:29','活动类型3'),(94,'2024-03-11 14:37:29','活动类型4'),(95,'2024-03-11 14:37:29','活动类型5'),(96,'2024-03-11 14:37:29','活动类型6');
/*!40000 ALTER TABLE `huodongleixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huodongxinxi`
--

DROP TABLE IF EXISTS `huodongxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `huodongxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huodongmingcheng` varchar(200) NOT NULL COMMENT '活动名称',
  `huodongtupian` longtext COMMENT '活动图片',
  `huodongleixing` varchar(200) NOT NULL COMMENT '活动类型',
  `huodongshijian` datetime NOT NULL COMMENT '活动时间',
  `huodongdidian` varchar(200) NOT NULL COMMENT '活动地点',
  `huodongxiangqing` longtext COMMENT '活动详情',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `storeupnum` int(11) DEFAULT NULL COMMENT '收藏数量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='活动信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huodongxinxi`
--

LOCK TABLES `huodongxinxi` WRITE;
/*!40000 ALTER TABLE `huodongxinxi` DISABLE KEYS */;
INSERT INTO `huodongxinxi` VALUES (101,'2024-03-11 14:37:29','活动名称1','file/huodongxinxiHuodongtupian1.jpg,file/huodongxinxiHuodongtupian2.jpg,file/huodongxinxiHuodongtupian3.jpg','活动类型1','2024-03-11 22:37:29','活动地点1','活动详情1','2024-03-11 22:37:29',1),(102,'2024-03-11 14:37:29','活动名称2','file/huodongxinxiHuodongtupian2.jpg,file/huodongxinxiHuodongtupian3.jpg,file/huodongxinxiHuodongtupian4.jpg','活动类型2','2024-03-11 22:37:29','活动地点2','活动详情2','2024-03-11 22:37:29',2),(103,'2024-03-11 14:37:29','活动名称3','file/huodongxinxiHuodongtupian3.jpg,file/huodongxinxiHuodongtupian4.jpg,file/huodongxinxiHuodongtupian5.jpg','活动类型3','2024-03-11 22:37:29','活动地点3','活动详情3','2024-03-11 22:37:29',3),(104,'2024-03-11 14:37:29','活动名称4','file/huodongxinxiHuodongtupian4.jpg,file/huodongxinxiHuodongtupian5.jpg,file/huodongxinxiHuodongtupian6.jpg','活动类型4','2024-03-11 22:37:29','活动地点4','活动详情4','2024-03-11 22:37:29',4),(105,'2024-03-11 14:37:29','活动名称5','file/huodongxinxiHuodongtupian5.jpg,file/huodongxinxiHuodongtupian6.jpg,file/huodongxinxiHuodongtupian7.jpg','活动类型5','2024-03-11 22:37:29','活动地点5','活动详情5','2024-03-11 22:37:29',5),(106,'2024-03-11 14:37:29','活动名称6','file/huodongxinxiHuodongtupian6.jpg,file/huodongxinxiHuodongtupian7.jpg,file/huodongxinxiHuodongtupian8.jpg','活动类型6','2024-03-11 22:37:29','活动地点6','活动详情6','2024-03-11 22:37:29',6);
/*!40000 ALTER TABLE `huodongxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `menujson` longtext COMMENT '菜单',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='菜单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'2024-03-11 14:37:29','[{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-vipcard\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"发展历程\",\"menuJump\":\"列表\",\"tableName\":\"aboutus\"}],\"fontClass\":\"icon-common5\",\"menu\":\"发展历程管理\",\"unicode\":\"&#xedae;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-shop\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"活动类型\",\"menuJump\":\"列表\",\"tableName\":\"huodongleixing\"},{\"appFrontIcon\":\"cuIcon-rank\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"参加活动\",\"活动类型统计\",\"首页统计\"],\"menu\":\"活动信息\",\"menuJump\":\"列表\",\"tableName\":\"huodongxinxi\"},{\"appFrontIcon\":\"cuIcon-pay\",\"buttons\":[\"查看\",\"修改\",\"删除\"],\"menu\":\"参加活动\",\"menuJump\":\"列表\",\"tableName\":\"canjiahuodong\"}],\"fontClass\":\"icon-common46\",\"menu\":\"活动信息展示\",\"unicode\":\"&#xef3d;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-circle\",\"buttons\":[\"查看\",\"修改\",\"删除\"],\"menu\":\"茶馆信息\",\"menuJump\":\"列表\",\"tableName\":\"chaguanxinxi\"},{\"appFrontIcon\":\"cuIcon-addressbook\",\"buttons\":[\"查看\",\"修改\",\"删除\",\"销售统计\",\"首页统计\"],\"menu\":\"茶位预约\",\"menuJump\":\"列表\",\"tableName\":\"chaweiyuyue\"}],\"fontClass\":\"icon-common5\",\"menu\":\"茶馆信息展示\",\"unicode\":\"&#xedae;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-goods\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"查看评论\"],\"menu\":\"茶叶信息\",\"menuJump\":\"列表\",\"tableName\":\"chayexinxi\"}],\"fontClass\":\"icon-common4\",\"menu\":\"茶叶信息展示\",\"unicode\":\"&#xedab;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-send\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"用户\",\"menuJump\":\"列表\",\"tableName\":\"yonghu\"},{\"appFrontIcon\":\"cuIcon-attentionfavor\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"商家\",\"menuJump\":\"列表\",\"tableName\":\"shangjia\"}],\"fontClass\":\"icon-user6\",\"menu\":\"用户管理\",\"unicode\":\"&#xef9c;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-circle\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"茶史信息\",\"menuJump\":\"列表\",\"tableName\":\"chashixinxi\"}],\"fontClass\":\"icon-common20\",\"menu\":\"茶史信息展示\",\"unicode\":\"&#xee02;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-full\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"轮播图\",\"menuJump\":\"列表\",\"tableName\":\"config\"},{\"appFrontIcon\":\"cuIcon-taxi\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"茶叶资讯\",\"menuJump\":\"列表\",\"tableName\":\"news\"}],\"fontClass\":\"icon-common24\",\"menu\":\"管理员管理\",\"unicode\":\"&#xee07;\"}],\"frontMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-qrcode\",\"buttons\":[\"查看\"],\"menu\":\"茶叶资讯\",\"menuJump\":\"列表\",\"tableName\":\"news\"}],\"menu\":\"新闻资讯管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-pic\",\"buttons\":[\"查看\",\"参加活动\"],\"menu\":\"活动信息\",\"menuJump\":\"列表\",\"tableName\":\"huodongxinxi\"}],\"menu\":\"活动信息管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-paint\",\"buttons\":[\"查看\"],\"menu\":\"茶叶信息\",\"menuJump\":\"列表\",\"tableName\":\"chayexinxi\"}],\"menu\":\"茶叶信息管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-addressbook\",\"buttons\":[\"查看\",\"预约\"],\"menu\":\"茶馆信息\",\"menuJump\":\"列表\",\"tableName\":\"chaguanxinxi\"}],\"menu\":\"茶馆信息管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-paint\",\"buttons\":[\"查看\"],\"menu\":\"茶史信息\",\"menuJump\":\"列表\",\"tableName\":\"chashixinxi\"}],\"menu\":\"茶史信息管理\"}],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"roleName\":\"管理员\",\"tableName\":\"users\"},{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-pay\",\"buttons\":[\"查看\"],\"menu\":\"我的收藏\",\"menuJump\":\"1\",\"tableName\":\"storeup\"}],\"fontClass\":\"icon-common8\",\"menu\":\"我的收藏管理\",\"unicode\":\"&#xedb6;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-addressbook\",\"buttons\":[\"查看\",\"支付\"],\"menu\":\"茶位预约\",\"menuJump\":\"列表\",\"tableName\":\"chaweiyuyue\"}],\"fontClass\":\"icon-common5\",\"menu\":\"茶馆信息展示\",\"unicode\":\"&#xedae;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-pay\",\"buttons\":[\"查看\"],\"menu\":\"参加活动\",\"menuJump\":\"列表\",\"tableName\":\"canjiahuodong\"}],\"fontClass\":\"icon-common46\",\"menu\":\"活动信息展示\",\"unicode\":\"&#xef3d;\"}],\"frontMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-qrcode\",\"buttons\":[\"查看\"],\"menu\":\"茶叶资讯\",\"menuJump\":\"列表\",\"tableName\":\"news\"}],\"menu\":\"新闻资讯管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-pic\",\"buttons\":[\"查看\",\"参加活动\"],\"menu\":\"活动信息\",\"menuJump\":\"列表\",\"tableName\":\"huodongxinxi\"}],\"menu\":\"活动信息管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-paint\",\"buttons\":[\"查看\"],\"menu\":\"茶叶信息\",\"menuJump\":\"列表\",\"tableName\":\"chayexinxi\"}],\"menu\":\"茶叶信息管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-addressbook\",\"buttons\":[\"查看\",\"预约\"],\"menu\":\"茶馆信息\",\"menuJump\":\"列表\",\"tableName\":\"chaguanxinxi\"}],\"menu\":\"茶馆信息管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-paint\",\"buttons\":[\"查看\"],\"menu\":\"茶史信息\",\"menuJump\":\"列表\",\"tableName\":\"chashixinxi\"}],\"menu\":\"茶史信息管理\"}],\"hasBackLogin\":\"否\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"是\",\"hasFrontRegister\":\"是\",\"roleName\":\"用户\",\"tableName\":\"yonghu\"},{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-circle\",\"buttons\":[\"查看\",\"修改\",\"删除\",\"新增\"],\"menu\":\"茶馆信息\",\"menuJump\":\"列表\",\"tableName\":\"chaguanxinxi\"},{\"appFrontIcon\":\"cuIcon-addressbook\",\"buttons\":[\"查看\",\"修改\",\"删除\"],\"menu\":\"茶位预约\",\"menuJump\":\"列表\",\"tableName\":\"chaweiyuyue\"}],\"fontClass\":\"icon-common5\",\"menu\":\"茶馆信息展示\",\"unicode\":\"&#xedae;\"}],\"frontMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-qrcode\",\"buttons\":[\"查看\"],\"menu\":\"茶叶资讯\",\"menuJump\":\"列表\",\"tableName\":\"news\"}],\"menu\":\"新闻资讯管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-pic\",\"buttons\":[\"查看\",\"参加活动\"],\"menu\":\"活动信息\",\"menuJump\":\"列表\",\"tableName\":\"huodongxinxi\"}],\"menu\":\"活动信息管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-paint\",\"buttons\":[\"查看\"],\"menu\":\"茶叶信息\",\"menuJump\":\"列表\",\"tableName\":\"chayexinxi\"}],\"menu\":\"茶叶信息管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-addressbook\",\"buttons\":[\"查看\",\"预约\"],\"menu\":\"茶馆信息\",\"menuJump\":\"列表\",\"tableName\":\"chaguanxinxi\"}],\"menu\":\"茶馆信息管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-paint\",\"buttons\":[\"查看\"],\"menu\":\"茶史信息\",\"menuJump\":\"列表\",\"tableName\":\"chashixinxi\"}],\"menu\":\"茶史信息管理\"}],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"是\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"roleName\":\"商家\",\"tableName\":\"shangjia\"}]');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` longtext NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='茶叶资讯';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (31,'2024-03-11 14:37:29','青花瓷','素胚勾勒出青花笔锋浓转淡，瓶身描绘的牡丹一如你初妆，冉冉檀香透过窗心事我了然，宣上走笔至此搁一半，釉色渲染仕女图韵味被私藏，而你嫣然的一笑如含苞待放，你的美缕飘散，去到我去不了的地方，天青色等烟雨 而我在等你，炊烟袅袅升起','file/newsPicture1.jpg','素胚勾勒出青花笔锋浓转淡，瓶身描绘的牡丹一如你初妆，冉冉檀香透过窗心事我了然，宣上走笔至此搁一半，釉色渲染仕女图韵味被私藏，而你嫣然的一笑如含苞待放，你的美缕飘散，去到我去不了的地方，天青色等烟雨 而我在等你，炊烟袅袅升起， 隔江千万里，在瓶底书前朝的飘逸，就当我为遇见你伏笔，天青色等烟雨， 而我在等你，月色被打捞起， 晕开了局，如传世的青花瓷自顾自美丽，你眼带笑意，色白花青的锦鲤跃然于碗底，临摹宋体落款时却惦记着你，你隐藏在窑烧里千年的秘密，极细腻犹如绣花针落地，帘外芭蕉惹骤雨门环惹铜绿，而我路过那江南小镇惹了你，在泼墨山水画里，你从墨色深处被隐去，天青色等烟雨 ，而我在等你，炊烟袅袅升起 ，隔江千万里，在瓶底书汉隶仿前朝的飘逸，就当我为遇见你伏笔，天色等烟雨 ，而我在等你，月色被打捞起， 晕开了结局，如传世的青花瓷自顾自美丽，你眼带笑意，天青色等烟雨 ，而我在等你，炊烟袅袅升起 ，隔江千万里，在瓶底书汉隶仿前朝的飘逸，就当我为遇见你伏笔，天青色等烟雨， 而我在等你，月色被打捞起 ，晕开了结局，如传世的青花瓷自顾自美丽，你眼带笑意。'),(32,'2024-03-11 14:37:29','理想三旬','雨后有车驶来，驶过暮色苍白，旧铁皮往南开，恋人已不在，收听浓烟下的，诗歌电台，不动情的咳嗽，至少看起来，归途也还可爱，琴弦少了姿态，再不见那夜里，听歌的小孩，时光匆匆独白，将颠沛磨成卡带，已枯倦的情怀，踏碎成年代，就老去吧，孤独别醒来，你渴望的离开，只是无处停摆，就歌唱吧，眼睛眯起来，而热泪的崩坏，只是没抵达的存在','file/newsPicture2.jpg','雨后有车驶来，驶过暮色苍白，旧铁皮往南开，恋人已不在，收听浓烟下的，诗歌电台，不动情的咳嗽，至少看起来，归途也还可爱，琴弦少了姿态，再不见那夜里，听歌的小孩，时光匆匆独白，将颠沛磨成卡带，已枯倦的情怀，踏碎成年代，就老去吧，孤独别醒来，你渴望的离开，只是无处停摆，就歌唱吧，眼睛眯起来，而热泪的崩坏，只是没抵达的存在，青春又醉倒在，籍籍无名的怀，靠嬉笑来虚度，聚散得慷慨，辗转却去不到，对的站台，如果漂泊是成长，必经的路牌，你迷醒岁月中，那贫瘠的未来，像遗憾季节里，未结果的爱，弄脏了每一页诗，吻最疼痛的告白，而风声吹到这，已不需要释怀，就老去吧，孤独别醒来，渴望的离开只是无处停摆就歌唱吧，眼睛眯起来而热泪的崩坏，只是没抵达的存在，就甜蜜地忍耐，繁星润湿窗台，光影跳动着像在，困倦里说爱，再无谓的感慨，以为明白，梦倒塌的地方，今已爬满青苔。'),(33,'2024-03-11 14:37:29','七里香','窗外的麻雀在电线杆上多嘴，你说这一句很有夏天的感觉，手中的铅笔在纸上来来回回，我用几行字形容你是我的谁，秋刀鱼的滋味猫跟你都想了解，初恋的香味就这样被我们寻回，那温暖的阳光像刚摘的鲜艳草莓，你说你舍不得吃掉这一种感觉，雨下整夜我的爱溢出就像雨水，院子落叶跟我的思念厚厚一叠','file/newsPicture3.jpg','窗外的麻雀在电线杆上多嘴，你说这一句很有夏天的感觉，手中的铅笔在纸上来来回回，我用几行字形容你是我的谁，秋刀鱼的滋味猫跟你都想了解，初恋的香味就这样被我们寻回，那温暖的阳光像刚摘的鲜艳草莓，你说你舍不得吃掉这一种感觉，雨下整夜我的爱溢出就像雨水，院子落叶跟我的思念厚厚一叠，几句是非也无法将我的热情冷却，你出现在我诗的每一页，雨下整夜我的爱溢出就像雨水，窗台蝴蝶像诗里纷飞的美丽章节，我接着写，把永远爱你写进诗的结尾，你是我唯一想要的了解，雨下整夜我的爱溢出就像雨水，院子落叶跟我的思念厚厚一叠，几句是非也无法将我的热情冷却，你出现在我诗的每一页，那饱满的稻穗幸福了这个季节，而你的脸颊像田里熟透的番茄，你突然对我说七里香的名字很美，我此刻却只想亲吻你倔强的嘴，雨下整夜我的爱溢出就像雨水，院子落叶跟我的思念厚厚一叠，几句是非也无法将我的热情冷却，你出现在我诗的每一页，整夜我的爱溢出就像雨水，窗台蝴蝶像诗里纷飞的美丽章节，我接着写，把永远爱你写进诗的结尾，是我唯一想要的了解。'),(34,'2024-03-11 14:37:29','江南','风到这里就是粘，粘住过客的思念，雨到了这里缠成线，缠着我们流连人世间，你在身边就是缘，缘分写在三生石上面，爱有万分之一甜，宁愿我就葬在这一点，圈圈圆圆圈圈，天天年年天天的我，深深看你的脸，生气的温柔，埋怨的温柔的脸','file/newsPicture4.jpg','风到这里就是粘，粘住过客的思念，雨到了这里缠成线，缠着我们流连人世间，你在身边就是缘，缘分写在三生石上面，爱有万分之一甜，宁愿我就葬在这一点，圈圈圆圆圈圈，天天年年天天的我，深深看你的脸，生气的温柔，埋怨的温柔的脸，不懂爱恨情愁煎熬的我们，都以为相爱就像风云的善变，相信爱一天抵过永远，在这一刹那冻结了时间，不懂怎么表现温柔的我们，还以为殉情只是古老的传言，离愁能有多痛痛有多浓，当梦被埋在江南烟雨中，心碎了才懂，圈圈圆圆圈圈，天天年年天天的我，深深看你的脸，生气的温柔，埋怨的温柔的脸，不懂爱恨情愁煎熬的我们，都以为相爱就像风云的善变，相信爱一天 抵过永远，在这一刹那冻结了时间，不懂怎么表现温柔的我们，还以为殉情只是古老的传言，离愁能有多痛 痛有多浓，当梦被埋在江南烟雨中，心碎了才懂，相信爱一天抵过永远。在这一刹那冻结了时间，不懂怎么表现温柔的我们，还以为殉情只是古老的传言，离愁能有多痛 痛有多浓，当梦被埋在江南烟雨中，心碎了才懂。'),(35,'2024-03-11 14:37:29','那些你很冒险的梦','当两颗心开始震动，当你瞳孔学会闪躲，当爱慢慢被遮住只剩下黑，距离像影子被拉拖，当爱的故事剩听说，我找不到你单纯的面孔，当生命每分每秒都为你转动，心多执着就加倍心痛，那些你很冒险的梦， 我陪你去疯，折纸飞机碰到雨天终究会坠落','file/newsPicture5.jpg','当两颗心开始震动，当你瞳孔学会闪躲，当爱慢慢被遮住只剩下黑，距离像影子被拉拖，当爱的故事剩听说，我找不到你单纯的面孔，当生命每分每秒都为你转动，心多执着就加倍心痛，那些你很冒险的梦， 我陪你去疯，折纸飞机碰到雨天终究会坠落，太残忍的话我直说 因为爱很重，你却不想懂 只往反方向走，当爱的故事剩听说，我找不到你单纯的面孔，当生命每分每秒都为你转动，心有多执着就加倍心痛，那些你很冒险的梦 我陪你去疯，折纸飞机 碰到雨天 终究会坠落，太残忍的话我直说 因为爱很重，你却不想懂 只往反方向走，我不想放手 你松开的左手，你爱的放纵 我白不回天空，我输了 累了，但你再也 不回头，那些你很冒险的梦 我陪你去疯，折纸飞机 碰到雨天 终究会坠落，太残忍的话我直说 因为爱很重，你却不想懂 只往反方向走，你真的不懂 我的爱已降落。'),(36,'2024-03-11 14:37:29','孤勇者','都，是勇敢的，你额头的伤口 你的 不同 你犯的错，都 不必隐藏，你破旧的玩偶 你的 面具 你的自我，他们说 要带着光 驯服每一头怪兽，他们说 要缝好你的伤，没有人爱小丑 为何孤独 不可 光荣，人只有不完美 值得歌颂，谁说污泥满身的不算英雄，爱你孤身走暗巷，爱你不跪的模样，爱你对峙过绝望','file/newsPicture6.jpg','都，是勇敢的，你额头的伤口 你的 不同 你犯的错，都 不必隐藏，你破旧的玩偶 你的 面具 你的自我，他们说 要带着光 驯服每一头怪兽，他们说 要缝好你的伤，没有人爱小丑 为何孤独 不可 光荣，人只有不完美 值得歌颂，谁说污泥满身的不算英雄，爱你孤身走暗巷，爱你不跪的模样，爱你对峙过绝望，不肯哭一场，爱你破烂的衣裳，却敢堵命运的枪，爱你和我那么像，缺口都一样，去吗 配吗 这褴褛的披风，战吗 战啊 以最卑微的梦，致那黑夜中的呜咽与怒吼，谁说站在光里的才算英雄，他们说 要戒了你的狂，就像擦掉了污垢，他们说 要顺台阶而上，而代价是低头，那就让我 不可 乘风，你一样骄傲着 那种孤勇，谁说对弈平凡的不算英雄，爱你孤身走暗巷 爱你不跪的模样，爱你对峙过绝望 不肯哭一场，爱你破烂的衣裳 却敢堵命运的枪，爱你和我那么像 缺口都一样，去吗 配吗 这褴褛的披风，战吗 战啊 以最卑微的梦，致那黑夜中的呜咽与怒吼，谁说站在光里的才算英雄，你的斑驳 与众不同 与众不同，你的沉默 震耳欲聋 震耳欲聋，You Are The Hero，爱你孤身走暗巷 爱你不跪的模样，爱你对峙过绝望 不肯哭一场，爱你来自于蛮荒 一生不借谁的光，你将造你的城邦 在废墟之上，去吗 去啊 以最卑微的梦，战吗 战啊 以最孤高的梦，致那黑夜中的呜咽与怒吼，谁说站在光里的才算英雄。');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangjia`
--

DROP TABLE IF EXISTS `shangjia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangjiazhanghao` varchar(200) NOT NULL COMMENT '商家账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `shangjiamingcheng` varchar(200) NOT NULL COMMENT '商家名称',
  `touxiang` longtext COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `chaguanmingcheng` varchar(200) DEFAULT NULL COMMENT '茶馆名称',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangjiazhanghao` (`shangjiazhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1710168213199 DEFAULT CHARSET=utf8 COMMENT='商家';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangjia`
--

LOCK TABLES `shangjia` WRITE;
/*!40000 ALTER TABLE `shangjia` DISABLE KEYS */;
INSERT INTO `shangjia` VALUES (51,'2024-03-11 14:37:29','商家账号1','123456','商家名称1','file/shangjiaTouxiang1.jpg','男','19819881111','茶馆名称1'),(52,'2024-03-11 14:37:29','商家账号2','123456','商家名称2','file/shangjiaTouxiang2.jpg','男','19819881112','茶馆名称2'),(53,'2024-03-11 14:37:29','商家账号3','123456','商家名称3','file/shangjiaTouxiang3.jpg','男','19819881113','茶馆名称3'),(54,'2024-03-11 14:37:29','商家账号4','123456','商家名称4','file/shangjiaTouxiang4.jpg','男','19819881114','茶馆名称4'),(55,'2024-03-11 14:37:29','商家账号5','123456','商家名称5','file/shangjiaTouxiang5.jpg','男','19819881115','茶馆名称5'),(56,'2024-03-11 14:37:29','商家账号6','123456','商家名称6','file/shangjiaTouxiang6.jpg','男','19819881116','茶馆名称6'),(1710168213198,'2024-03-11 14:43:33','111','111','111','file/1710168202350.png','男',NULL,'茶吧');
/*!40000 ALTER TABLE `shangjia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) DEFAULT NULL COMMENT 'refid',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '名称',
  `picture` longtext NOT NULL COMMENT '图片',
  `type` varchar(200) DEFAULT NULL COMMENT '类型(1:收藏,21:赞,22:踩,31:竞拍参与,41:关注)',
  `inteltype` varchar(200) DEFAULT NULL COMMENT '推荐类型',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1710168159008 DEFAULT CHARSET=utf8 COMMENT='我的收藏';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1710168159007,'2024-03-11 14:42:38',61,'chayexinxi','茶叶名称1','file/chayexinxiTupian1.jpg','1',NULL,NULL,1710168133814);
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1710168133814,'11','yonghu','用户','gb3yrzq1ffb5739x88z63p55h60ct8uz','2024-03-11 14:42:18','2024-03-11 15:44:27'),(2,1710168213198,'111','shangjia','商家','0m6qdhp5lh8wqd0ydqf0bmr3hle7gsd2','2024-03-11 14:43:41','2024-03-11 15:43:42'),(3,1,'admin','users','管理员','43rpczg7hauhawfvxk81salpwjkakbwi','2024-03-11 14:45:52','2024-03-11 15:45:53');
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
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `username` varchar(200) NOT NULL COMMENT '用户名',
  `password` varchar(200) NOT NULL COMMENT '密码',
  `role` varchar(200) DEFAULT NULL COMMENT '角色',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'2024-03-11 14:37:29','admin','admin','管理员');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) NOT NULL COMMENT '用户账号',
  `yonghumima` varchar(200) NOT NULL COMMENT '用户密码',
  `yonghuxingming` varchar(200) NOT NULL COMMENT '用户姓名',
  `touxiang` longtext COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuzhanghao` (`yonghuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1710168133815 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (41,'2024-03-11 14:37:29','用户账号1','123456','用户姓名1','file/yonghuTouxiang1.jpg','男','19819881111'),(42,'2024-03-11 14:37:29','用户账号2','123456','用户姓名2','file/yonghuTouxiang2.jpg','男','19819881112'),(43,'2024-03-11 14:37:29','用户账号3','123456','用户姓名3','file/yonghuTouxiang3.jpg','男','19819881113'),(44,'2024-03-11 14:37:29','用户账号4','123456','用户姓名4','file/yonghuTouxiang4.jpg','男','19819881114'),(45,'2024-03-11 14:37:29','用户账号5','123456','用户姓名5','file/yonghuTouxiang5.jpg','男','19819881115'),(46,'2024-03-11 14:37:29','用户账号6','123456','用户姓名6','file/yonghuTouxiang6.jpg','男','19819881116'),(1710168133814,'2024-03-11 14:42:13','11','11','11','','男',NULL);
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-12 11:21:49
