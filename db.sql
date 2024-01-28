/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssmfn91q
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssmfn91q` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssmfn91q`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssmfn91q/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssmfn91q/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssmfn91q/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `dingdanxinxi` */

DROP TABLE IF EXISTS `dingdanxinxi`;

CREATE TABLE `dingdanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) NOT NULL COMMENT '订单编号',
  `xinxibianhao` varchar(200) DEFAULT NULL COMMENT '信息编号',
  `xinximingcheng` varchar(200) DEFAULT NULL COMMENT '信息名称',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `jianjie` longtext COMMENT '简介',
  `xinxitupian` varchar(200) DEFAULT NULL COMMENT '信息图片',
  `maijiazhanghao` varchar(200) DEFAULT NULL COMMENT '卖家账号',
  `maijiaxingming` varchar(200) DEFAULT NULL COMMENT '卖家姓名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `maijiadizhi` varchar(200) DEFAULT NULL COMMENT '卖家地址',
  `goumairiqi` date DEFAULT NULL COMMENT '购买日期',
  `gerenzhanghao` varchar(200) DEFAULT NULL COMMENT '个人账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1617087090248 DEFAULT CHARSET=utf8 COMMENT='订单信息';

/*Data for the table `dingdanxinxi` */

insert  into `dingdanxinxi`(`id`,`addtime`,`dingdanbianhao`,`xinxibianhao`,`xinximingcheng`,`leixing`,`jianjie`,`xinxitupian`,`maijiazhanghao`,`maijiaxingming`,`lianxidianhua`,`maijiadizhi`,`goumairiqi`,`gerenzhanghao`,`xingming`,`sfsh`,`shhf`,`userid`) values (41,'2021-03-30 14:48:21','订单编号1','信息编号1','信息名称1','类型1','简介1','http://localhost:8080/ssmfn91q/upload/dingdanxinxi_xinxitupian1.jpg','卖家账号1','卖家姓名1','联系电话1','卖家地址1','2021-03-30','个人账号1','姓名1','是','',1),(42,'2021-03-30 14:48:21','订单编号2','信息编号2','信息名称2','类型2','简介2','http://localhost:8080/ssmfn91q/upload/dingdanxinxi_xinxitupian2.jpg','卖家账号2','卖家姓名2','联系电话2','卖家地址2','2021-03-30','个人账号2','姓名2','是','',2),(43,'2021-03-30 14:48:21','订单编号3','信息编号3','信息名称3','类型3','简介3','http://localhost:8080/ssmfn91q/upload/dingdanxinxi_xinxitupian3.jpg','卖家账号3','卖家姓名3','联系电话3','卖家地址3','2021-03-30','个人账号3','姓名3','是','',3),(44,'2021-03-30 14:48:21','订单编号4','信息编号4','信息名称4','类型4','简介4','http://localhost:8080/ssmfn91q/upload/dingdanxinxi_xinxitupian4.jpg','卖家账号4','卖家姓名4','联系电话4','卖家地址4','2021-03-30','个人账号4','姓名4','是','',4),(45,'2021-03-30 14:48:21','订单编号5','信息编号5','信息名称5','类型5','简介5','http://localhost:8080/ssmfn91q/upload/dingdanxinxi_xinxitupian5.jpg','卖家账号5','卖家姓名5','联系电话5','卖家地址5','2021-03-30','个人账号5','姓名5','是','',5),(46,'2021-03-30 14:48:21','订单编号6','信息编号6','信息名称6','类型6','简介6','http://localhost:8080/ssmfn91q/upload/dingdanxinxi_xinxitupian6.jpg','卖家账号6','卖家姓名6','联系电话6','卖家地址6','2021-03-30','个人账号6','姓名6','是','',6),(1617087090247,'2021-03-30 14:51:29','1617086969663','信息编号5','信息名称5','类型5','简介5','http://localhost:8080/ssmfn91q/upload/fabuxinxi_xinxitupian5.jpg','卖家账号5','卖家姓名5','联系电话5','卖家地址5','2021-05-30','1','测试','','',1617087066638);

/*Table structure for table `fabuxinxi` */

DROP TABLE IF EXISTS `fabuxinxi`;

CREATE TABLE `fabuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xinxibianhao` varchar(200) NOT NULL COMMENT '信息编号',
  `xinximingcheng` varchar(200) NOT NULL COMMENT '信息名称',
  `leixing` varchar(200) NOT NULL COMMENT '类型',
  `jianjie` longtext COMMENT '简介',
  `xinxineirong` longtext COMMENT '信息内容',
  `xinxitupian` varchar(200) DEFAULT NULL COMMENT '信息图片',
  `maijiazhanghao` varchar(200) DEFAULT NULL COMMENT '卖家账号',
  `maijiaxingming` varchar(200) DEFAULT NULL COMMENT '卖家姓名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `maijiadizhi` varchar(200) DEFAULT NULL COMMENT '卖家地址',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xinxibianhao` (`xinxibianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='发布信息';

/*Data for the table `fabuxinxi` */

insert  into `fabuxinxi`(`id`,`addtime`,`xinxibianhao`,`xinximingcheng`,`leixing`,`jianjie`,`xinxineirong`,`xinxitupian`,`maijiazhanghao`,`maijiaxingming`,`lianxidianhua`,`maijiadizhi`,`userid`) values (31,'2021-03-30 14:48:21','信息编号1','信息名称1','类型1','简介1','信息内容1','http://localhost:8080/ssmfn91q/upload/fabuxinxi_xinxitupian1.jpg','卖家账号1','卖家姓名1','联系电话1','卖家地址1',1),(32,'2021-03-30 14:48:21','信息编号2','信息名称2','类型2','简介2','信息内容2','http://localhost:8080/ssmfn91q/upload/fabuxinxi_xinxitupian2.jpg','卖家账号2','卖家姓名2','联系电话2','卖家地址2',2),(33,'2021-03-30 14:48:21','信息编号3','信息名称3','类型3','简介3','信息内容3','http://localhost:8080/ssmfn91q/upload/fabuxinxi_xinxitupian3.jpg','卖家账号3','卖家姓名3','联系电话3','卖家地址3',3),(34,'2021-03-30 14:48:21','信息编号4','信息名称4','类型4','简介4','信息内容4','http://localhost:8080/ssmfn91q/upload/fabuxinxi_xinxitupian4.jpg','卖家账号4','卖家姓名4','联系电话4','卖家地址4',4),(35,'2021-03-30 14:48:21','信息编号5','信息名称5','类型5','简介5','信息内容5','http://localhost:8080/ssmfn91q/upload/fabuxinxi_xinxitupian5.jpg','卖家账号5','卖家姓名5','联系电话5','卖家地址5',5),(36,'2021-03-30 14:48:21','信息编号6','信息名称6','类型6','简介6','信息内容6','http://localhost:8080/ssmfn91q/upload/fabuxinxi_xinxitupian6.jpg','卖家账号6','卖家姓名6','联系电话6','卖家地址6',6);

/*Table structure for table `leixing` */

DROP TABLE IF EXISTS `leixing`;

CREATE TABLE `leixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `leixingmingcheng` varchar(200) NOT NULL COMMENT '类型名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='类型';

/*Data for the table `leixing` */

insert  into `leixing`(`id`,`addtime`,`leixingmingcheng`) values (51,'2021-03-30 14:48:21','类型名称1'),(52,'2021-03-30 14:48:21','类型名称2'),(53,'2021-03-30 14:48:21','类型名称3'),(54,'2021-03-30 14:48:21','类型名称4'),(55,'2021-03-30 14:48:21','类型名称5'),(56,'2021-03-30 14:48:21','类型名称6');

/*Table structure for table `maijia` */

DROP TABLE IF EXISTS `maijia`;

CREATE TABLE `maijia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `maijiazhanghao` varchar(200) NOT NULL COMMENT '卖家账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `maijiaxingming` varchar(200) NOT NULL COMMENT '卖家姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `shenfenzhenghaoma` varchar(200) DEFAULT NULL COMMENT '身份证号码',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `xiangpian` varchar(200) DEFAULT NULL COMMENT '相片',
  `maijiadizhi` varchar(200) DEFAULT NULL COMMENT '卖家地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `maijiazhanghao` (`maijiazhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='卖家';

/*Data for the table `maijia` */

insert  into `maijia`(`id`,`addtime`,`maijiazhanghao`,`mima`,`maijiaxingming`,`xingbie`,`nianling`,`shenfenzhenghaoma`,`lianxidianhua`,`xiangpian`,`maijiadizhi`) values (21,'2021-03-30 14:48:21','卖家1','123456','卖家姓名1','男',1,'440300199101010001','13823888881','http://localhost:8080/ssmfn91q/upload/maijia_xiangpian1.jpg','卖家地址1'),(22,'2021-03-30 14:48:21','卖家2','123456','卖家姓名2','男',2,'440300199202020002','13823888882','http://localhost:8080/ssmfn91q/upload/maijia_xiangpian2.jpg','卖家地址2'),(23,'2021-03-30 14:48:21','卖家3','123456','卖家姓名3','男',3,'440300199303030003','13823888883','http://localhost:8080/ssmfn91q/upload/maijia_xiangpian3.jpg','卖家地址3'),(24,'2021-03-30 14:48:21','卖家4','123456','卖家姓名4','男',4,'440300199404040004','13823888884','http://localhost:8080/ssmfn91q/upload/maijia_xiangpian4.jpg','卖家地址4'),(25,'2021-03-30 14:48:21','卖家5','123456','卖家姓名5','男',5,'440300199505050005','13823888885','http://localhost:8080/ssmfn91q/upload/maijia_xiangpian5.jpg','卖家地址5'),(26,'2021-03-30 14:48:21','卖家6','123456','卖家姓名6','男',6,'440300199606060006','13823888886','http://localhost:8080/ssmfn91q/upload/maijia_xiangpian6.jpg','卖家地址6');

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1617087066638,'1','yonghu','用户','b8e6k7f9a2w2k9metubcdec9htu8lno9','2021-03-30 14:51:12','2021-03-30 15:51:13');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-03-30 14:48:21');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gerenzhanghao` varchar(200) NOT NULL COMMENT '个人账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `shenfenzhenghaoma` varchar(200) DEFAULT NULL COMMENT '身份证号码',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `xiangpian` varchar(200) DEFAULT NULL COMMENT '相片',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gerenzhanghao` (`gerenzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1617087066639 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`gerenzhanghao`,`mima`,`xingming`,`xingbie`,`nianling`,`shenfenzhenghaoma`,`shoujihaoma`,`xiangpian`,`dizhi`) values (11,'2021-03-30 14:48:21','用户1','123456','姓名1','男',1,'440300199101010001','13823888881','http://localhost:8080/ssmfn91q/upload/yonghu_xiangpian1.jpg','地址1'),(12,'2021-03-30 14:48:21','用户2','123456','姓名2','男',2,'440300199202020002','13823888882','http://localhost:8080/ssmfn91q/upload/yonghu_xiangpian2.jpg','地址2'),(13,'2021-03-30 14:48:21','用户3','123456','姓名3','男',3,'440300199303030003','13823888883','http://localhost:8080/ssmfn91q/upload/yonghu_xiangpian3.jpg','地址3'),(14,'2021-03-30 14:48:21','用户4','123456','姓名4','男',4,'440300199404040004','13823888884','http://localhost:8080/ssmfn91q/upload/yonghu_xiangpian4.jpg','地址4'),(15,'2021-03-30 14:48:21','用户5','123456','姓名5','男',5,'440300199505050005','13823888885','http://localhost:8080/ssmfn91q/upload/yonghu_xiangpian5.jpg','地址5'),(16,'2021-03-30 14:48:21','用户6','123456','姓名6','男',6,'440300199606060006','13823888886','http://localhost:8080/ssmfn91q/upload/yonghu_xiangpian6.jpg','地址6'),(1617087066638,'2021-03-30 14:51:06','1','1','测试','男',NULL,NULL,NULL,NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
