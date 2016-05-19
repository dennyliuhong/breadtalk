-- MySQL dump 10.13  Distrib 5.5.47, for Win32 (x86)
--
-- Host: localhost    Database: usermanage
-- ------------------------------------------------------
-- Server version	5.5.47

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
-- Table structure for table `menuinfo`
--

DROP TABLE IF EXISTS `menuinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menuinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(50) DEFAULT NULL COMMENT '食物名称',
  `fbrief` varchar(255) DEFAULT NULL COMMENT '简介',
  `fmaterial` varchar(255) DEFAULT NULL COMMENT '食材',
  `fmethod` text COMMENT '做法',
  `fhit` int(11) DEFAULT '0' COMMENT '阅读次数',
  `fimg` varchar(255) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menuinfo`
--

LOCK TABLES `menuinfo` WRITE;
/*!40000 ALTER TABLE `menuinfo` DISABLE KEYS */;
INSERT INTO `menuinfo` VALUES (1,'土司面包','看着新回来的土司模我实在是坐不住了，拖着我的这条腿，坐着我的轮椅  开始了我的第一个土司面包 费了牛劲了，从早上11：00开始弄的，一直到晚上7：00才弄好，因为行动不便吗，而且我的脚不能长时间的站，会充血，胀的厉害。所以只能做一做，歇一歇，精神可嘉吧？！   看下我的成品吧，可以撕着吃的。','奶粉60克，蛋清1个，细砂糖25克，蛋黄3个，高筋面粉360克，炼乳20克，鲜奶油（植脂）55克，酵母5克，盐4克，牛奶90克','1.1.牛奶加热后放入酵母拌匀后静置10分钟。\r\n2.将除奶油外的材料一块放入面盆和成面团（我揉的不好就那样吧，我实在是没有耐心）。\r\n3.15分钟后，放入奶油，接着揉，一直揉，没完没了的揉，揉至扩展阶段（我是没有揉到，也不知道所谓的扩展阶段是什么样子 呵呵）发酵至2倍大\r\n4.分割滚圆，松弛20分钟后，擀卷松弛10分钟，再赶卷再松弛。\r\n5.放入土司模中，二次发酵。发至与模具齐平（我是没有发到那样只有8分左右，而且我分割的也不均匀呵呵）。\r\n6.烤箱预热180°，底层 180°烤15分钟，盖锡纸，转至150°20分钟。\r\n小诀窍\r\n细砂糖 25克（我绝的不是很甜，下次多放点） ； 牛奶90克（我好像放了100克）。',0,'f001.jpg'),(2,'豆沙面包','现在很喜欢下了班回家做面包，揉面粉，尽管白天工作很累， \r\n可做起面包的时候我就觉得我又活过来了， \r\n我有时候在想做面包学烘焙这件事，没人逼着我， \r\n没人问我要作业，没人给我发文凭， \r\n我为什么这么拼，每天再累也要做， \r\n下了班不自觉的就想呆在厨房里，这是为啥呢？','高筋面粉200g，纯牛奶95g，全蛋液20g，盐2g，细砂糖28g，酵母 4g，无盐黄油20g，红豆沙180g，鸡蛋液适量（刷表面用）','1、把纯牛奶、全蛋液、盐和细砂糖放入面包桶里\r\n2、筛入高粉，在面粉上挖个小坑埋好酵母\r\n3、启动面包机和面程序，二十分钟揉面完毕，加入软化好的黄油，继续揉面到完全阶段\r\n4、盖保鲜膜室温发酵至1.5至2倍大，手指沾面粉，插孔面团不回缩，发酵完毕\r\n5、取出面团挤排气，按60g/份每份分成6份，滚圆，盖保鲜膜室温醒发15分钟\r\n6、把提前炒好的豆沙馅，按照30g/份称好\r\n7、取一个面团，压扁，放上豆沙馅，包好捏紧，收口朝下\r\n8、轻柔地把面团慢慢擀成长椭圆形\r\n9、整形一（毛毛虫）：用锋利的小刀在面团上横着割均匀的切口，只割上层，露出豆沙即可，不要把下层割漏，把割好切口的面片轻轻翻过来，割口面朝下，从侧面轻轻卷起，一直卷过去，成长筒状，割口刚好朝上。卷至松紧适度，不要太紧，容易撑断条，也不要太松，发酵时容易散开。卷好后，依次放入烤盘，中间隔开距离。\r\n10、整形二（圆圈）：用锋利的小刀在面团上竖着割均匀的切口，只割上层，露出豆沙即可，不要把下层割漏，把割好切口的面片轻轻按8字形扭转，两头接口收紧，接好后，割口面朝外，依次放入烤盘，中间隔开距离。\r\n11、室温发酵15分钟，大约发酵至1.5倍大即可。注意不要发酵过度，会把切条撑破。\r\n12、在面包表面刷鸡蛋液，放入预热好180度的烤箱，烤制20分钟，上色稍微满意时，适当调整烤箱温度和缩短烤制时间，防止烤糊。',0,'f002.jpg');
/*!40000 ALTER TABLE `menuinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userinfo`
--

DROP TABLE IF EXISTS `userinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `userpassword` varchar(60) DEFAULT NULL,
  `role` varchar(20) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userinfo`
--

LOCK TABLES `userinfo` WRITE;
/*!40000 ALTER TABLE `userinfo` DISABLE KEYS */;
INSERT INTO `userinfo` VALUES (2,'jerry','123456','teacher','13785478956');
/*!40000 ALTER TABLE `userinfo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-05-11 20:29:39
