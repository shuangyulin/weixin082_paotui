/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssmd8hxw
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssmd8hxw` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssmd8hxw`;

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='联系客服';

/*Data for the table `chat` */

insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (71,'2021-05-05 11:29:05',1,1,'提问1','回复1',1);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (72,'2021-05-05 11:29:05',2,2,'提问2','回复2',2);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (73,'2021-05-05 11:29:05',3,3,'提问3','回复3',3);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (74,'2021-05-05 11:29:05',4,4,'提问4','回复4',4);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (75,'2021-05-05 11:29:05',5,5,'提问5','回复5',5);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (76,'2021-05-05 11:29:05',6,6,'提问6','回复6',6);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssmd8hxw/upload/picture1.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/ssmd8hxw/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/ssmd8hxw/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `faburenwu` */

DROP TABLE IF EXISTS `faburenwu`;

CREATE TABLE `faburenwu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `renwubiaoti` varchar(200) NOT NULL COMMENT '任务标题',
  `renwuleixing` varchar(200) NOT NULL COMMENT '任务类型',
  `songjiandizhi` varchar(200) DEFAULT NULL COMMENT '送件地址',
  `paidanmingzi` varchar(200) DEFAULT NULL COMMENT '派单名字',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `renwushijian` varchar(200) DEFAULT NULL COMMENT '任务时间',
  `renwumiaoshu` longtext COMMENT '任务描述',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `baojia` float DEFAULT NULL COMMENT '报价',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `xiaoyouzhanghao` varchar(200) NOT NULL COMMENT '校友账号',
  `xiaoyouxingming` varchar(200) NOT NULL COMMENT '校友姓名',
  `lianxifangshi` varchar(200) NOT NULL COMMENT '联系方式',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='发布任务';

/*Data for the table `faburenwu` */

insert  into `faburenwu`(`id`,`addtime`,`renwubiaoti`,`renwuleixing`,`songjiandizhi`,`paidanmingzi`,`lianxidianhua`,`renwushijian`,`renwumiaoshu`,`fengmian`,`baojia`,`beizhu`,`xiaoyouzhanghao`,`xiaoyouxingming`,`lianxifangshi`,`dizhi`,`clicktime`,`clicknum`,`userid`) values (41,'2021-05-05 11:29:05','任务标题1','任务类型1','送件地址1','派单名字1','13823888881','任务时间1','任务描述1','http://localhost:8080/ssmd8hxw/upload/faburenwu_fengmian1.jpg',1,'备注1','校友账号1','校友姓名1','联系方式1','地址1','2021-05-05 11:29:05',1,1);
insert  into `faburenwu`(`id`,`addtime`,`renwubiaoti`,`renwuleixing`,`songjiandizhi`,`paidanmingzi`,`lianxidianhua`,`renwushijian`,`renwumiaoshu`,`fengmian`,`baojia`,`beizhu`,`xiaoyouzhanghao`,`xiaoyouxingming`,`lianxifangshi`,`dizhi`,`clicktime`,`clicknum`,`userid`) values (42,'2021-05-05 11:29:05','任务标题2','任务类型2','送件地址2','派单名字2','13823888882','任务时间2','任务描述2','http://localhost:8080/ssmd8hxw/upload/faburenwu_fengmian2.jpg',2,'备注2','校友账号2','校友姓名2','联系方式2','地址2','2021-05-05 11:29:05',2,2);
insert  into `faburenwu`(`id`,`addtime`,`renwubiaoti`,`renwuleixing`,`songjiandizhi`,`paidanmingzi`,`lianxidianhua`,`renwushijian`,`renwumiaoshu`,`fengmian`,`baojia`,`beizhu`,`xiaoyouzhanghao`,`xiaoyouxingming`,`lianxifangshi`,`dizhi`,`clicktime`,`clicknum`,`userid`) values (43,'2021-05-05 11:29:05','任务标题3','任务类型3','送件地址3','派单名字3','13823888883','任务时间3','任务描述3','http://localhost:8080/ssmd8hxw/upload/faburenwu_fengmian3.jpg',3,'备注3','校友账号3','校友姓名3','联系方式3','地址3','2021-05-05 11:29:05',3,3);
insert  into `faburenwu`(`id`,`addtime`,`renwubiaoti`,`renwuleixing`,`songjiandizhi`,`paidanmingzi`,`lianxidianhua`,`renwushijian`,`renwumiaoshu`,`fengmian`,`baojia`,`beizhu`,`xiaoyouzhanghao`,`xiaoyouxingming`,`lianxifangshi`,`dizhi`,`clicktime`,`clicknum`,`userid`) values (44,'2021-05-05 11:29:05','任务标题4','任务类型4','送件地址4','派单名字4','13823888884','任务时间4','任务描述4','http://localhost:8080/ssmd8hxw/upload/faburenwu_fengmian4.jpg',4,'备注4','校友账号4','校友姓名4','联系方式4','地址4','2021-05-05 11:29:05',4,4);
insert  into `faburenwu`(`id`,`addtime`,`renwubiaoti`,`renwuleixing`,`songjiandizhi`,`paidanmingzi`,`lianxidianhua`,`renwushijian`,`renwumiaoshu`,`fengmian`,`baojia`,`beizhu`,`xiaoyouzhanghao`,`xiaoyouxingming`,`lianxifangshi`,`dizhi`,`clicktime`,`clicknum`,`userid`) values (45,'2021-05-05 11:29:05','任务标题5','任务类型5','送件地址5','派单名字5','13823888885','任务时间5','任务描述5','http://localhost:8080/ssmd8hxw/upload/faburenwu_fengmian5.jpg',5,'备注5','校友账号5','校友姓名5','联系方式5','地址5','2021-05-05 11:29:05',5,5);
insert  into `faburenwu`(`id`,`addtime`,`renwubiaoti`,`renwuleixing`,`songjiandizhi`,`paidanmingzi`,`lianxidianhua`,`renwushijian`,`renwumiaoshu`,`fengmian`,`baojia`,`beizhu`,`xiaoyouzhanghao`,`xiaoyouxingming`,`lianxifangshi`,`dizhi`,`clicktime`,`clicknum`,`userid`) values (46,'2021-05-05 11:29:05','任务标题6','任务类型6','送件地址6','派单名字6','13823888886','任务时间6','任务描述6','http://localhost:8080/ssmd8hxw/upload/faburenwu_fengmian6.jpg',6,'备注6','校友账号6','校友姓名6','联系方式6','地址6','2021-05-05 11:29:05',6,6);

/*Table structure for table `paotuiyuan` */

DROP TABLE IF EXISTS `paotuiyuan`;

CREATE TABLE `paotuiyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `nianling` int(11) NOT NULL COMMENT '年龄',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) NOT NULL COMMENT '手机',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='跑腿员';

/*Data for the table `paotuiyuan` */

insert  into `paotuiyuan`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`) values (21,'2021-05-05 11:29:05','跑腿员1','123456','姓名1',1,'男','13823888881','http://localhost:8080/ssmd8hxw/upload/paotuiyuan_zhaopian1.jpg');
insert  into `paotuiyuan`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`) values (22,'2021-05-05 11:29:05','跑腿员2','123456','姓名2',2,'男','13823888882','http://localhost:8080/ssmd8hxw/upload/paotuiyuan_zhaopian2.jpg');
insert  into `paotuiyuan`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`) values (23,'2021-05-05 11:29:05','跑腿员3','123456','姓名3',3,'男','13823888883','http://localhost:8080/ssmd8hxw/upload/paotuiyuan_zhaopian3.jpg');
insert  into `paotuiyuan`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`) values (24,'2021-05-05 11:29:05','跑腿员4','123456','姓名4',4,'男','13823888884','http://localhost:8080/ssmd8hxw/upload/paotuiyuan_zhaopian4.jpg');
insert  into `paotuiyuan`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`) values (25,'2021-05-05 11:29:05','跑腿员5','123456','姓名5',5,'男','13823888885','http://localhost:8080/ssmd8hxw/upload/paotuiyuan_zhaopian5.jpg');
insert  into `paotuiyuan`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`) values (26,'2021-05-05 11:29:05','跑腿员6','123456','姓名6',6,'男','13823888886','http://localhost:8080/ssmd8hxw/upload/paotuiyuan_zhaopian6.jpg');

/*Table structure for table `renwudingdan` */

DROP TABLE IF EXISTS `renwudingdan`;

CREATE TABLE `renwudingdan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `renwubiaoti` varchar(200) DEFAULT NULL COMMENT '任务标题',
  `renwuleixing` varchar(200) DEFAULT NULL COMMENT '任务类型',
  `baojia` varchar(200) DEFAULT NULL COMMENT '报价',
  `songjiandizhi` varchar(200) DEFAULT NULL COMMENT '送件地址',
  `paidanmingzi` varchar(200) DEFAULT NULL COMMENT '派单名字',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `dingdanzhuangtai` varchar(200) DEFAULT NULL COMMENT '订单状态',
  `wanchengshijian` datetime DEFAULT NULL COMMENT '完成时间',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `xiaoyouzhanghao` varchar(200) DEFAULT NULL COMMENT '校友账号',
  `xiaoyouxingming` varchar(200) DEFAULT NULL COMMENT '校友姓名',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='任务订单';

/*Data for the table `renwudingdan` */

insert  into `renwudingdan`(`id`,`addtime`,`dingdanbianhao`,`renwubiaoti`,`renwuleixing`,`baojia`,`songjiandizhi`,`paidanmingzi`,`lianxidianhua`,`dingdanzhuangtai`,`wanchengshijian`,`fengmian`,`xiaoyouzhanghao`,`xiaoyouxingming`,`lianxifangshi`,`dizhi`,`zhanghao`,`xingming`,`shouji`,`sfsh`,`shhf`,`ispay`,`userid`) values (51,'2021-05-05 11:29:05','订单编号1','任务标题1','任务类型1','报价1','送件地址1','派单名字1','联系电话1','未开始','2021-05-05 11:29:05','http://localhost:8080/ssmd8hxw/upload/renwudingdan_fengmian1.jpg','校友账号1','校友姓名1','联系方式1','地址1','账号1','姓名1','手机1','是','','未支付',1);
insert  into `renwudingdan`(`id`,`addtime`,`dingdanbianhao`,`renwubiaoti`,`renwuleixing`,`baojia`,`songjiandizhi`,`paidanmingzi`,`lianxidianhua`,`dingdanzhuangtai`,`wanchengshijian`,`fengmian`,`xiaoyouzhanghao`,`xiaoyouxingming`,`lianxifangshi`,`dizhi`,`zhanghao`,`xingming`,`shouji`,`sfsh`,`shhf`,`ispay`,`userid`) values (52,'2021-05-05 11:29:05','订单编号2','任务标题2','任务类型2','报价2','送件地址2','派单名字2','联系电话2','未开始','2021-05-05 11:29:05','http://localhost:8080/ssmd8hxw/upload/renwudingdan_fengmian2.jpg','校友账号2','校友姓名2','联系方式2','地址2','账号2','姓名2','手机2','是','','未支付',2);
insert  into `renwudingdan`(`id`,`addtime`,`dingdanbianhao`,`renwubiaoti`,`renwuleixing`,`baojia`,`songjiandizhi`,`paidanmingzi`,`lianxidianhua`,`dingdanzhuangtai`,`wanchengshijian`,`fengmian`,`xiaoyouzhanghao`,`xiaoyouxingming`,`lianxifangshi`,`dizhi`,`zhanghao`,`xingming`,`shouji`,`sfsh`,`shhf`,`ispay`,`userid`) values (53,'2021-05-05 11:29:05','订单编号3','任务标题3','任务类型3','报价3','送件地址3','派单名字3','联系电话3','未开始','2021-05-05 11:29:05','http://localhost:8080/ssmd8hxw/upload/renwudingdan_fengmian3.jpg','校友账号3','校友姓名3','联系方式3','地址3','账号3','姓名3','手机3','是','','未支付',3);
insert  into `renwudingdan`(`id`,`addtime`,`dingdanbianhao`,`renwubiaoti`,`renwuleixing`,`baojia`,`songjiandizhi`,`paidanmingzi`,`lianxidianhua`,`dingdanzhuangtai`,`wanchengshijian`,`fengmian`,`xiaoyouzhanghao`,`xiaoyouxingming`,`lianxifangshi`,`dizhi`,`zhanghao`,`xingming`,`shouji`,`sfsh`,`shhf`,`ispay`,`userid`) values (54,'2021-05-05 11:29:05','订单编号4','任务标题4','任务类型4','报价4','送件地址4','派单名字4','联系电话4','未开始','2021-05-05 11:29:05','http://localhost:8080/ssmd8hxw/upload/renwudingdan_fengmian4.jpg','校友账号4','校友姓名4','联系方式4','地址4','账号4','姓名4','手机4','是','','未支付',4);
insert  into `renwudingdan`(`id`,`addtime`,`dingdanbianhao`,`renwubiaoti`,`renwuleixing`,`baojia`,`songjiandizhi`,`paidanmingzi`,`lianxidianhua`,`dingdanzhuangtai`,`wanchengshijian`,`fengmian`,`xiaoyouzhanghao`,`xiaoyouxingming`,`lianxifangshi`,`dizhi`,`zhanghao`,`xingming`,`shouji`,`sfsh`,`shhf`,`ispay`,`userid`) values (55,'2021-05-05 11:29:05','订单编号5','任务标题5','任务类型5','报价5','送件地址5','派单名字5','联系电话5','未开始','2021-05-05 11:29:05','http://localhost:8080/ssmd8hxw/upload/renwudingdan_fengmian5.jpg','校友账号5','校友姓名5','联系方式5','地址5','账号5','姓名5','手机5','是','','未支付',5);
insert  into `renwudingdan`(`id`,`addtime`,`dingdanbianhao`,`renwubiaoti`,`renwuleixing`,`baojia`,`songjiandizhi`,`paidanmingzi`,`lianxidianhua`,`dingdanzhuangtai`,`wanchengshijian`,`fengmian`,`xiaoyouzhanghao`,`xiaoyouxingming`,`lianxifangshi`,`dizhi`,`zhanghao`,`xingming`,`shouji`,`sfsh`,`shhf`,`ispay`,`userid`) values (56,'2021-05-05 11:29:05','订单编号6','任务标题6','任务类型6','报价6','送件地址6','派单名字6','联系电话6','未开始','2021-05-05 11:29:05','http://localhost:8080/ssmd8hxw/upload/renwudingdan_fengmian6.jpg','校友账号6','校友姓名6','联系方式6','地址6','账号6','姓名6','手机6','是','','未支付',6);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-05-05 11:29:06');

/*Table structure for table `xiaoxizhongxin` */

DROP TABLE IF EXISTS `xiaoxizhongxin`;

CREATE TABLE `xiaoxizhongxin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `neirong` longtext COMMENT '内容',
  `xiaoyouzhanghao` varchar(200) DEFAULT NULL COMMENT '校友账号',
  `xiaoyouxingming` varchar(200) DEFAULT NULL COMMENT '校友姓名',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='消息中心';

/*Data for the table `xiaoxizhongxin` */

insert  into `xiaoxizhongxin`(`id`,`addtime`,`neirong`,`xiaoyouzhanghao`,`xiaoyouxingming`,`zhaopian`,`userid`) values (61,'2021-05-05 11:29:05','内容1','校友账号1','校友姓名1','http://localhost:8080/ssmd8hxw/upload/xiaoxizhongxin_zhaopian1.jpg',1);
insert  into `xiaoxizhongxin`(`id`,`addtime`,`neirong`,`xiaoyouzhanghao`,`xiaoyouxingming`,`zhaopian`,`userid`) values (62,'2021-05-05 11:29:05','内容2','校友账号2','校友姓名2','http://localhost:8080/ssmd8hxw/upload/xiaoxizhongxin_zhaopian2.jpg',2);
insert  into `xiaoxizhongxin`(`id`,`addtime`,`neirong`,`xiaoyouzhanghao`,`xiaoyouxingming`,`zhaopian`,`userid`) values (63,'2021-05-05 11:29:05','内容3','校友账号3','校友姓名3','http://localhost:8080/ssmd8hxw/upload/xiaoxizhongxin_zhaopian3.jpg',3);
insert  into `xiaoxizhongxin`(`id`,`addtime`,`neirong`,`xiaoyouzhanghao`,`xiaoyouxingming`,`zhaopian`,`userid`) values (64,'2021-05-05 11:29:05','内容4','校友账号4','校友姓名4','http://localhost:8080/ssmd8hxw/upload/xiaoxizhongxin_zhaopian4.jpg',4);
insert  into `xiaoxizhongxin`(`id`,`addtime`,`neirong`,`xiaoyouzhanghao`,`xiaoyouxingming`,`zhaopian`,`userid`) values (65,'2021-05-05 11:29:05','内容5','校友账号5','校友姓名5','http://localhost:8080/ssmd8hxw/upload/xiaoxizhongxin_zhaopian5.jpg',5);
insert  into `xiaoxizhongxin`(`id`,`addtime`,`neirong`,`xiaoyouzhanghao`,`xiaoyouxingming`,`zhaopian`,`userid`) values (66,'2021-05-05 11:29:05','内容6','校友账号6','校友姓名6','http://localhost:8080/ssmd8hxw/upload/xiaoxizhongxin_zhaopian6.jpg',6);

/*Table structure for table `xiaoyou` */

DROP TABLE IF EXISTS `xiaoyou`;

CREATE TABLE `xiaoyou` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xiaoyouzhanghao` varchar(200) NOT NULL COMMENT '校友账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xiaoyouxingming` varchar(200) NOT NULL COMMENT '校友姓名',
  `nianling` int(11) NOT NULL COMMENT '年龄',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxifangshi` varchar(200) NOT NULL COMMENT '联系方式',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xiaoyouzhanghao` (`xiaoyouzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='校友';

/*Data for the table `xiaoyou` */

insert  into `xiaoyou`(`id`,`addtime`,`xiaoyouzhanghao`,`mima`,`xiaoyouxingming`,`nianling`,`xingbie`,`lianxifangshi`,`zhaopian`,`dizhi`) values (11,'2021-05-05 11:29:05','校友1','123456','校友姓名1',1,'男','13823888881','http://localhost:8080/ssmd8hxw/upload/xiaoyou_zhaopian1.jpg','地址1');
insert  into `xiaoyou`(`id`,`addtime`,`xiaoyouzhanghao`,`mima`,`xiaoyouxingming`,`nianling`,`xingbie`,`lianxifangshi`,`zhaopian`,`dizhi`) values (12,'2021-05-05 11:29:05','校友2','123456','校友姓名2',2,'男','13823888882','http://localhost:8080/ssmd8hxw/upload/xiaoyou_zhaopian2.jpg','地址2');
insert  into `xiaoyou`(`id`,`addtime`,`xiaoyouzhanghao`,`mima`,`xiaoyouxingming`,`nianling`,`xingbie`,`lianxifangshi`,`zhaopian`,`dizhi`) values (13,'2021-05-05 11:29:05','校友3','123456','校友姓名3',3,'男','13823888883','http://localhost:8080/ssmd8hxw/upload/xiaoyou_zhaopian3.jpg','地址3');
insert  into `xiaoyou`(`id`,`addtime`,`xiaoyouzhanghao`,`mima`,`xiaoyouxingming`,`nianling`,`xingbie`,`lianxifangshi`,`zhaopian`,`dizhi`) values (14,'2021-05-05 11:29:05','校友4','123456','校友姓名4',4,'男','13823888884','http://localhost:8080/ssmd8hxw/upload/xiaoyou_zhaopian4.jpg','地址4');
insert  into `xiaoyou`(`id`,`addtime`,`xiaoyouzhanghao`,`mima`,`xiaoyouxingming`,`nianling`,`xingbie`,`lianxifangshi`,`zhaopian`,`dizhi`) values (15,'2021-05-05 11:29:05','校友5','123456','校友姓名5',5,'男','13823888885','http://localhost:8080/ssmd8hxw/upload/xiaoyou_zhaopian5.jpg','地址5');
insert  into `xiaoyou`(`id`,`addtime`,`xiaoyouzhanghao`,`mima`,`xiaoyouxingming`,`nianling`,`xingbie`,`lianxifangshi`,`zhaopian`,`dizhi`) values (16,'2021-05-05 11:29:05','校友6','123456','校友姓名6',6,'男','13823888886','http://localhost:8080/ssmd8hxw/upload/xiaoyou_zhaopian6.jpg','地址6');

/*Table structure for table `xiaoyoudongtai` */

DROP TABLE IF EXISTS `xiaoyoudongtai`;

CREATE TABLE `xiaoyoudongtai` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `xinxileibie` varchar(200) NOT NULL COMMENT '信息类别',
  `jianjie` longtext COMMENT '简介',
  `neirong` longtext COMMENT '内容',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `xiaoyouzhanghao` varchar(200) DEFAULT NULL COMMENT '校友账号',
  `xiaoyouxingming` varchar(200) DEFAULT NULL COMMENT '校友姓名',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='校友动态';

/*Data for the table `xiaoyoudongtai` */

insert  into `xiaoyoudongtai`(`id`,`addtime`,`biaoti`,`xinxileibie`,`jianjie`,`neirong`,`fabushijian`,`fengmian`,`xiaoyouzhanghao`,`xiaoyouxingming`,`clicktime`,`clicknum`) values (31,'2021-05-05 11:29:05','标题1','信息类别1','简介1','内容1','2021-05-05','http://localhost:8080/ssmd8hxw/upload/xiaoyoudongtai_fengmian1.jpg','校友账号1','校友姓名1','2021-05-05 11:29:05',1);
insert  into `xiaoyoudongtai`(`id`,`addtime`,`biaoti`,`xinxileibie`,`jianjie`,`neirong`,`fabushijian`,`fengmian`,`xiaoyouzhanghao`,`xiaoyouxingming`,`clicktime`,`clicknum`) values (32,'2021-05-05 11:29:05','标题2','信息类别2','简介2','内容2','2021-05-05','http://localhost:8080/ssmd8hxw/upload/xiaoyoudongtai_fengmian2.jpg','校友账号2','校友姓名2','2021-05-05 11:29:05',2);
insert  into `xiaoyoudongtai`(`id`,`addtime`,`biaoti`,`xinxileibie`,`jianjie`,`neirong`,`fabushijian`,`fengmian`,`xiaoyouzhanghao`,`xiaoyouxingming`,`clicktime`,`clicknum`) values (33,'2021-05-05 11:29:05','标题3','信息类别3','简介3','内容3','2021-05-05','http://localhost:8080/ssmd8hxw/upload/xiaoyoudongtai_fengmian3.jpg','校友账号3','校友姓名3','2021-05-05 11:29:05',3);
insert  into `xiaoyoudongtai`(`id`,`addtime`,`biaoti`,`xinxileibie`,`jianjie`,`neirong`,`fabushijian`,`fengmian`,`xiaoyouzhanghao`,`xiaoyouxingming`,`clicktime`,`clicknum`) values (34,'2021-05-05 11:29:05','标题4','信息类别4','简介4','内容4','2021-05-05','http://localhost:8080/ssmd8hxw/upload/xiaoyoudongtai_fengmian4.jpg','校友账号4','校友姓名4','2021-05-05 11:29:05',4);
insert  into `xiaoyoudongtai`(`id`,`addtime`,`biaoti`,`xinxileibie`,`jianjie`,`neirong`,`fabushijian`,`fengmian`,`xiaoyouzhanghao`,`xiaoyouxingming`,`clicktime`,`clicknum`) values (35,'2021-05-05 11:29:05','标题5','信息类别5','简介5','内容5','2021-05-05','http://localhost:8080/ssmd8hxw/upload/xiaoyoudongtai_fengmian5.jpg','校友账号5','校友姓名5','2021-05-05 11:29:05',5);
insert  into `xiaoyoudongtai`(`id`,`addtime`,`biaoti`,`xinxileibie`,`jianjie`,`neirong`,`fabushijian`,`fengmian`,`xiaoyouzhanghao`,`xiaoyouxingming`,`clicktime`,`clicknum`) values (36,'2021-05-05 11:29:05','标题6','信息类别6','简介6','内容6','2021-05-05','http://localhost:8080/ssmd8hxw/upload/xiaoyoudongtai_fengmian6.jpg','校友账号6','校友姓名6','2021-05-05 11:29:05',6);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
