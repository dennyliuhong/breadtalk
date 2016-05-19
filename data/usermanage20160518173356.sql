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
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menuinfo`
--

LOCK TABLES `menuinfo` WRITE;
/*!40000 ALTER TABLE `menuinfo` DISABLE KEYS */;
INSERT INTO `menuinfo` VALUES (1,'法式手撕面包','法式手撕面包是以高低粉、黄油等食材制成的一道美食。\r\n		','高粉150克、低粉100克、黄油15克、鸡蛋一个、水90克左右、盐5克、白糖25克、酵母3克。\r\n裹入用黄油140克。\r\n		','1、裹入用黄油和面团，一定要相同的软硬程度。如果你的室温比较低，我建议你不要试了。因为面团很容易发软。而黄油比较容易发硬，如果再擀不开，就会造成黄油断裂。一般室温是十几度比较好。不要超过20度，那样也不好操作。个人觉得温度10度至20度是最佳。\r\n2、黄油要想擀成正方形很容易，可以借助于尺子。\r\n3、黄油直接就成正方形，用手按上去有手印，能够轻松弯曲，操作比较佳。\r\n4、面团，就是原料中的除黄油外先揉至光滑，再加入黄油，至扩展阶段就可以了。然后发酵至两倍大，再擀成方形。\r\n5、先在案板上撒些高粉（记住一切手擀粉一定是高粉。低粉很容易粘的，而高粉是防粘的），将面团擀成片放在下面，黄油放在上面。\r\n6、面片比黄油不要太大，如果太大了，面片就觉得过多，到时候制作出来的面片就显得多。所以，刚好可以把黄油片包住就可以了。包好了，还要捏紧，这一步记得不要有高粉在捏紧的面团里，这样会让黄油露出来，沾不牢。\r\n7、然后将包好的面团擀长。面团和黄油要步调一致。不要黄油快，或者面团快。那样都会容易造成失败。　8、我用的是三擀三折。先把左边的三分之一面片折过来。\r\n9、再把右边的三分之一面片折过去，就完成了一次三折。可以将面团放冰箱冷藏醒一下。\r\n10、然后把面团转成90度，再操作7-9一次。就完成二次三折。如果能接着折就不要去放冰箱冷藏或冷冻，因为如果室温低冷冻，也容易让黄油成碎片。\r\n11、最后再把面团转成90度，再操作7-9一次，就完成了三次三折。折好后的面团不要急着擀，放冰箱冷冻或冷藏一会儿。如果你的面团够大，那么松弛的时间还要再长。\r\n12、面团擀成24厘米长的面片。\r\n13、然后在面片上每2厘米做出记号。\r\n14、切成五到六份。\r\n15、然后取其中一份弯曲。\r\n16、放入模具中。\r\n17、醒发至两倍大，然后烤箱210度预热，中层烤至上色即可。\r\n		',0,'b8014a90f603738d9808f63db51bb051f819ec6b.jpg'),(2,'豆沙面包','现在很喜欢下了班回家做面包，揉面粉，尽管白天工作很累， \r\n可做起面包的时候我就觉得我又活过来了， \r\n我有时候在想做面包学烘焙这件事，没人逼着我， \r\n没人问我要作业，没人给我发文凭， \r\n我为什么这么拼，每天再累也要做， \r\n下了班不自觉的就想呆在厨房里，这是为啥呢？','高筋面粉200g，纯牛奶95g，全蛋液20g，盐2g，细砂糖28g，酵母 4g，无盐黄油20g，红豆沙180g，鸡蛋液适量（刷表面用）','1、把纯牛奶、全蛋液、盐和细砂糖放入面包桶里\r\n2、筛入高粉，在面粉上挖个小坑埋好酵母\r\n3、启动面包机和面程序，二十分钟揉面完毕，加入软化好的黄油，继续揉面到完全阶段\r\n4、盖保鲜膜室温发酵至1.5至2倍大，手指沾面粉，插孔面团不回缩，发酵完毕\r\n5、取出面团挤排气，按60g/份每份分成6份，滚圆，盖保鲜膜室温醒发15分钟\r\n6、把提前炒好的豆沙馅，按照30g/份称好\r\n7、取一个面团，压扁，放上豆沙馅，包好捏紧，收口朝下\r\n8、轻柔地把面团慢慢擀成长椭圆形\r\n9、整形一（毛毛虫）：用锋利的小刀在面团上横着割均匀的切口，只割上层，露出豆沙即可，不要把下层割漏，把割好切口的面片轻轻翻过来，割口面朝下，从侧面轻轻卷起，一直卷过去，成长筒状，割口刚好朝上。卷至松紧适度，不要太紧，容易撑断条，也不要太松，发酵时容易散开。卷好后，依次放入烤盘，中间隔开距离。\r\n10、整形二（圆圈）：用锋利的小刀在面团上竖着割均匀的切口，只割上层，露出豆沙即可，不要把下层割漏，把割好切口的面片轻轻按8字形扭转，两头接口收紧，接好后，割口面朝外，依次放入烤盘，中间隔开距离。\r\n11、室温发酵15分钟，大约发酵至1.5倍大即可。注意不要发酵过度，会把切条撑破。\r\n12、在面包表面刷鸡蛋液，放入预热好180度的烤箱，烤制20分钟，上色稍微满意时，适当调整烤箱温度和缩短烤制时间，防止烤糊。',0,'f002.jpg'),(6,'奶香面包','家里换了烤箱之后还没烤过面包，先来个简单点的试探一下温度，比原来的烤箱温度要高出20度，面包一放进烤箱不到10分钟就上色，结果把面包烤得颜色太深，不过味道是不会变的，一样的松软，就是颜色方面有点深。','高筋面粉375克牛奶180克\r\n辅料黄油35克细砂糖30克奶粉11克酵母粉4克食盐3克鸡蛋1个','1.将所有材料，黄油除外放进面包桶内，鸡蛋留下10克用作最后刷面\r\n\r\n2.然后启动和面程序，揉至扩展阶段，加入软化的黄油\r\n\r\n3.再揉一个程序出手套膜\r\n\r\n4.然后盖上保鲜膜\r\n\r\n5.发酵至比原来两倍大\r\n\r\n6.取出面团压扁排气\r\n\r\n7.再分成10份滚圆\r\n\r\n8.取一份面团擀成椭圆形\r\n\r\n9.然后由上至下卷起\r\n\r\n10.卷好后，收口向下\r\n\r\n11.烤盘铺上油纸，再把卷好的面包坯放上\r\n\r\n12.然后放温暖处发酵至比原来两倍大\r\n\r\n13.再刷上蛋液\r\n\r\n14.烤箱预热160度，放中层烤20分钟，表面上色即可',0,'s113291_72995.jpg'),(7,'奶黄牛角面包','奶黄牛角面包奶黄牛角面包','1、面包发酵面团500克。\r\n2、黄油、鸡蛋液、奶黄馅。','1．将黄油包入面包发酵面团中，擀叠3次，擀成长方形，再切成三角形，卷入奶黄馅，做成菱形生坯，放入醒发箱中醒发。\r\n2．将醒发好的生坯刷上黄油和蛋液，放入180度烤箱中烤熟即成。',0,'timg.jpg'),(8,'测试','				测试\r\n		\r\n		','				测试\r\n		\r\n		','				测试\r\n		\r\n		',0,'timg.jpg'),(9,'测试','测试','测试','测试',0,'b8014a90f603738d9808f63db51bb051f819ec6b.jpg'),(10,'测试','测试','测试','测试',0,'b8014a90f603738d9808f63db51bb051f819ec6b.jpg');
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
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userinfo`
--

LOCK TABLES `userinfo` WRITE;
/*!40000 ALTER TABLE `userinfo` DISABLE KEYS */;
INSERT INTO `userinfo` VALUES (2,'jerry','123456','teacher','13785478956'),(12,'tom','123',' ',' '),(13,'denny','456789',' ',' ');
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

-- Dump completed on 2016-05-18 17:33:57
