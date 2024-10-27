/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - daxueshengpingshichengjilianghua
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`daxueshengpingshichengjilianghua` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `daxueshengpingshichengjilianghua`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'fabujiaoan_types','教案类型',1,'教案类型1',NULL,NULL,'2023-03-13 14:42:20'),(2,'fabujiaoan_types','教案类型',2,'教案类型2',NULL,NULL,'2023-03-13 14:42:20'),(3,'fabujiaoan_types','教案类型',3,'教案类型3',NULL,NULL,'2023-03-13 14:42:20'),(4,'kecheng_types','课程类型',1,'课程类型1',NULL,NULL,'2023-03-13 14:42:20'),(5,'kecheng_types','课程类型',2,'课程类型2',NULL,NULL,'2023-03-13 14:42:20'),(6,'kecheng_types','课程类型',3,'课程类型3',NULL,NULL,'2023-03-13 14:42:20'),(7,'sex_types','性别',1,'男',NULL,NULL,'2023-03-13 14:42:20'),(8,'sex_types','性别',2,'女',NULL,NULL,'2023-03-13 14:42:20'),(9,'news_types','公告类型',1,'公告类型1',NULL,NULL,'2023-03-13 14:42:20'),(10,'news_types','公告类型',2,'公告类型2',NULL,NULL,'2023-03-13 14:42:20'),(11,'news_types','公告类型',3,'公告类型3',NULL,NULL,'2023-03-13 14:42:20'),(12,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2023-03-13 14:42:20'),(13,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2023-03-13 14:42:20'),(14,'kecheng_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-03-13 14:42:21'),(15,'kecheng_collection_types','收藏表类型',2,'赞',NULL,NULL,'2023-03-13 14:42:21'),(16,'kecheng_collection_types','收藏表类型',3,'踩',NULL,NULL,'2023-03-13 14:42:21'),(17,'xueke_types','学科',1,'学科1',NULL,NULL,'2023-03-13 14:42:21'),(18,'xueke_types','学科',2,'学科2',NULL,NULL,'2023-03-13 14:42:21'),(19,'xueke_types','学科',3,'学科3',NULL,NULL,'2023-03-13 14:42:21');

/*Table structure for table `fabujiaoan` */

DROP TABLE IF EXISTS `fabujiaoan`;

CREATE TABLE `fabujiaoan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `fabujiaoan_name` varchar(200) DEFAULT NULL COMMENT '教案名称 Search111',
  `fabujiaoan_photo` varchar(200) DEFAULT NULL COMMENT '教案图片',
  `fabujiaoan_types` int(11) DEFAULT NULL COMMENT '教案类型  Search111',
  `fabujiaoan_content` text COMMENT '教案详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='教案信息';

/*Data for the table `fabujiaoan` */

insert  into `fabujiaoan`(`id`,`fabujiaoan_name`,`fabujiaoan_photo`,`fabujiaoan_types`,`fabujiaoan_content`,`create_time`) values (1,'教案名称1','upload/fabujiaoan1.jpg',3,'教案详情1','2023-03-13 14:42:36'),(2,'教案名称2','upload/fabujiaoan2.jpg',1,'教案详情2','2023-03-13 14:42:36'),(3,'教案名称3','upload/fabujiaoan3.jpg',1,'教案详情3','2023-03-13 14:42:36'),(4,'教案名称4','upload/fabujiaoan4.jpg',1,'教案详情4','2023-03-13 14:42:36'),(5,'教案名称5','upload/fabujiaoan5.jpg',3,'教案详情5','2023-03-13 14:42:36'),(6,'教案名称6','upload/fabujiaoan6.jpg',2,'教案详情6','2023-03-13 14:42:36'),(7,'教案名称7','upload/fabujiaoan7.jpg',3,'教案详情7','2023-03-13 14:42:36'),(8,'教案名称8','upload/fabujiaoan8.jpg',2,'教案详情8','2023-03-13 14:42:36'),(9,'教案名称9','upload/fabujiaoan9.jpg',3,'教案详情9','2023-03-13 14:42:36'),(10,'教案名称10','upload/fabujiaoan10.jpg',3,'教案详情10','2023-03-13 14:42:36'),(11,'教案名称11','upload/fabujiaoan11.jpg',2,'教案详情11','2023-03-13 14:42:36'),(12,'教案名称12','upload/fabujiaoan12.jpg',3,'教案详情12','2023-03-13 14:42:36'),(13,'教案名称13','upload/fabujiaoan13.jpg',2,'教案详情13','2023-03-13 14:42:36'),(14,'教案名称14','upload/fabujiaoan14.jpg',1,'教案详情14','2023-03-13 14:42:36');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '学生',
  `jiaoshi_id` int(11) DEFAULT NULL COMMENT '教师',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` text COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`jiaoshi_id`,`users_id`,`forum_content`,`super_ids`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',2,NULL,NULL,'发布内容1',493,1,'2023-03-13 14:42:36','2023-03-13 14:42:36','2023-03-13 14:42:36'),(2,'帖子标题2',1,NULL,NULL,'发布内容2',230,1,'2023-03-13 14:42:36','2023-03-13 14:42:36','2023-03-13 14:42:36'),(3,'帖子标题3',1,NULL,NULL,'发布内容3',166,1,'2023-03-13 14:42:36','2023-03-13 14:42:36','2023-03-13 14:42:36'),(4,'帖子标题4',2,NULL,NULL,'发布内容4',37,1,'2023-03-13 14:42:36','2023-03-13 14:42:36','2023-03-13 14:42:36'),(5,'帖子标题5',1,NULL,NULL,'发布内容5',225,1,'2023-03-13 14:42:36','2023-03-13 14:42:36','2023-03-13 14:42:36'),(6,'帖子标题6',2,NULL,NULL,'发布内容6',245,1,'2023-03-13 14:42:36','2023-03-13 14:42:36','2023-03-13 14:42:36'),(7,'帖子标题7',2,NULL,NULL,'发布内容7',196,1,'2023-03-13 14:42:36','2023-03-13 14:42:36','2023-03-13 14:42:36'),(8,'帖子标题8',2,NULL,NULL,'发布内容8',397,1,'2023-03-13 14:42:36','2023-03-13 14:42:36','2023-03-13 14:42:36'),(9,'帖子标题9',3,NULL,NULL,'发布内容9',37,1,'2023-03-13 14:42:36','2023-03-13 14:42:36','2023-03-13 14:42:36'),(10,'帖子标题10',2,NULL,NULL,'发布内容10',333,1,'2023-03-13 14:42:36','2023-03-13 14:42:36','2023-03-13 14:42:36'),(11,'帖子标题11',1,NULL,NULL,'发布内容11',409,1,'2023-03-13 14:42:36','2023-03-13 14:42:36','2023-03-13 14:42:36'),(12,'帖子标题12',2,NULL,NULL,'发布内容12',489,1,'2023-03-13 14:42:36','2023-03-13 14:42:36','2023-03-13 14:42:36'),(13,'帖子标题13',2,NULL,NULL,'发布内容13',285,1,'2023-03-13 14:42:36','2023-03-13 14:42:36','2023-03-13 14:42:36'),(14,'帖子标题14',1,NULL,NULL,'发布内容14',160,1,'2023-03-13 14:42:36','2023-03-13 14:42:36','2023-03-13 14:42:36'),(15,NULL,1,NULL,NULL,'123123',14,2,'2023-03-13 15:10:26',NULL,'2023-03-13 15:10:26'),(16,NULL,NULL,1,NULL,'123',14,2,'2023-03-13 15:11:43',NULL,'2023-03-13 15:11:43'),(17,NULL,NULL,NULL,NULL,'123123',14,2,'2023-03-13 15:12:34',NULL,'2023-03-13 15:12:34');

/*Table structure for table `jiaoshi` */

DROP TABLE IF EXISTS `jiaoshi`;

CREATE TABLE `jiaoshi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jiaoshi_uuid_number` varchar(200) DEFAULT NULL COMMENT '工号 Search111 ',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `jiaoshi_name` varchar(200) DEFAULT NULL COMMENT '教师姓名 Search111 ',
  `jiaoshi_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `jiaoshi_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `jiaoshi_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `jiaoshi_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='教师';

/*Data for the table `jiaoshi` */

insert  into `jiaoshi`(`id`,`jiaoshi_uuid_number`,`username`,`password`,`jiaoshi_name`,`jiaoshi_photo`,`sex_types`,`jiaoshi_phone`,`jiaoshi_email`,`jiaoshi_delete`,`create_time`) values (1,'1678689756311','a1','123456','教师姓名1','upload/jiaoshi1.jpg',1,'17703786901','1@qq.com',1,'2023-03-13 14:42:36'),(2,'1678689756321','a2','123456','教师姓名2','upload/jiaoshi2.jpg',2,'17703786902','2@qq.com',1,'2023-03-13 14:42:36'),(3,'1678689756337','a3','123456','教师姓名3','upload/jiaoshi3.jpg',2,'17703786903','3@qq.com',1,'2023-03-13 14:42:36');

/*Table structure for table `kecheng` */

DROP TABLE IF EXISTS `kecheng`;

CREATE TABLE `kecheng` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `kecheng_name` varchar(200) DEFAULT NULL COMMENT '课程名称 Search111',
  `kecheng_photo` varchar(200) DEFAULT NULL COMMENT '课程封面',
  `kecheng_video` varchar(200) DEFAULT NULL COMMENT '课程视频',
  `kecheng_file` varchar(200) DEFAULT NULL COMMENT '课程文件',
  `xueke_types` int(11) DEFAULT NULL COMMENT '学科 Search111',
  `jiaoshi_id` int(11) DEFAULT NULL COMMENT '教师',
  `zan_number` int(11) DEFAULT NULL COMMENT '赞',
  `cai_number` int(11) DEFAULT NULL COMMENT '踩',
  `kecheng_types` int(11) DEFAULT NULL COMMENT '课程类型  Search111',
  `kecheng_content` text COMMENT '课程详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='课程资源';

/*Data for the table `kecheng` */

insert  into `kecheng`(`id`,`kecheng_name`,`kecheng_photo`,`kecheng_video`,`kecheng_file`,`xueke_types`,`jiaoshi_id`,`zan_number`,`cai_number`,`kecheng_types`,`kecheng_content`,`create_time`) values (1,'课程名称1','upload/kecheng1.jpg','upload/video.mp4','upload/file.rar',2,1,112,377,1,'课程详情1','2023-03-13 14:42:36'),(2,'课程名称2','upload/kecheng2.jpg','upload/video.mp4','upload/file.rar',1,3,496,363,3,'课程详情2','2023-03-13 14:42:36'),(3,'课程名称3','upload/kecheng3.jpg','upload/video.mp4','upload/file.rar',1,2,165,439,3,'课程详情3','2023-03-13 14:42:36'),(4,'课程名称4','upload/kecheng4.jpg','upload/video.mp4','upload/file.rar',1,1,304,479,1,'课程详情4','2023-03-13 14:42:36'),(5,'课程名称5','upload/kecheng5.jpg','upload/video.mp4','upload/file.rar',2,2,433,332,1,'课程详情5','2023-03-13 14:42:36'),(6,'课程名称6','upload/kecheng6.jpg','upload/video.mp4','upload/file.rar',2,2,236,500,2,'课程详情6','2023-03-13 14:42:36'),(7,'课程名称7','upload/kecheng7.jpg','upload/video.mp4','upload/file.rar',2,2,165,113,3,'课程详情7','2023-03-13 14:42:36'),(8,'课程名称8','upload/kecheng8.jpg','upload/video.mp4','upload/file.rar',2,2,181,252,3,'课程详情8','2023-03-13 14:42:36'),(9,'课程名称9','upload/kecheng9.jpg','upload/video.mp4','upload/file.rar',2,2,158,371,1,'课程详情9','2023-03-13 14:42:36'),(10,'课程名称10','upload/kecheng10.jpg','upload/video.mp4','upload/file.rar',2,2,145,270,1,'课程详情10','2023-03-13 14:42:36'),(11,'课程名称11','upload/kecheng11.jpg','upload/video.mp4','upload/file.rar',1,1,297,129,2,'课程详情11','2023-03-13 14:42:36'),(12,'课程名称12','upload/kecheng12.jpg','upload/video.mp4','upload/file.rar',3,1,426,205,1,'课程详情12','2023-03-13 14:42:36'),(13,'课程名称13','upload/kecheng13.jpg','upload/video.mp4','upload/file.rar',3,3,414,45,2,'课程详情13','2023-03-13 14:42:36'),(14,'课程名称14','upload/kecheng14.jpg','upload/video.mp4','upload/file.rar',3,1,258,7,3,'<p>课程详情14</p>','2023-03-13 14:42:36');

/*Table structure for table `kecheng_collection` */

DROP TABLE IF EXISTS `kecheng_collection`;

CREATE TABLE `kecheng_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `kecheng_id` int(11) DEFAULT NULL COMMENT '课程',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `kecheng_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='课程收藏';

/*Data for the table `kecheng_collection` */

insert  into `kecheng_collection`(`id`,`kecheng_id`,`yonghu_id`,`kecheng_collection_types`,`insert_time`,`create_time`) values (1,1,3,1,'2023-03-13 14:42:36','2023-03-13 14:42:36'),(2,2,1,1,'2023-03-13 14:42:36','2023-03-13 14:42:36'),(3,3,1,1,'2023-03-13 14:42:36','2023-03-13 14:42:36'),(4,4,2,1,'2023-03-13 14:42:36','2023-03-13 14:42:36'),(5,5,2,1,'2023-03-13 14:42:36','2023-03-13 14:42:36'),(6,6,2,1,'2023-03-13 14:42:36','2023-03-13 14:42:36'),(9,9,3,1,'2023-03-13 14:42:36','2023-03-13 14:42:36'),(11,11,3,1,'2023-03-13 14:42:36','2023-03-13 14:42:36'),(12,12,2,1,'2023-03-13 14:42:36','2023-03-13 14:42:36'),(13,13,2,1,'2023-03-13 14:42:36','2023-03-13 14:42:36'),(14,14,1,1,'2023-03-13 14:42:36','2023-03-13 14:42:36'),(15,10,1,2,'2023-03-13 15:09:55','2023-03-13 15:09:55'),(17,13,1,2,'2023-03-13 15:10:43','2023-03-13 15:10:43');

/*Table structure for table `kecheng_liuyan` */

DROP TABLE IF EXISTS `kecheng_liuyan`;

CREATE TABLE `kecheng_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `kecheng_id` int(11) DEFAULT NULL COMMENT '课程',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `kecheng_liuyan_text` text COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='课程留言';

/*Data for the table `kecheng_liuyan` */

insert  into `kecheng_liuyan`(`id`,`kecheng_id`,`yonghu_id`,`kecheng_liuyan_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,2,'留言内容1','2023-03-13 14:42:36','回复信息1','2023-03-13 14:42:36','2023-03-13 14:42:36'),(2,2,2,'留言内容2','2023-03-13 14:42:36','回复信息2','2023-03-13 14:42:36','2023-03-13 14:42:36'),(3,3,3,'留言内容3','2023-03-13 14:42:36','回复信息3','2023-03-13 14:42:36','2023-03-13 14:42:36'),(4,4,3,'留言内容4','2023-03-13 14:42:36','回复信息4','2023-03-13 14:42:36','2023-03-13 14:42:36'),(5,5,3,'留言内容5','2023-03-13 14:42:36','回复信息5','2023-03-13 14:42:36','2023-03-13 14:42:36'),(6,6,2,'留言内容6','2023-03-13 14:42:36','回复信息6','2023-03-13 14:42:36','2023-03-13 14:42:36'),(7,7,3,'留言内容7','2023-03-13 14:42:36','回复信息7','2023-03-13 14:42:36','2023-03-13 14:42:36'),(8,8,1,'留言内容8','2023-03-13 14:42:36','回复信息8','2023-03-13 14:42:36','2023-03-13 14:42:36'),(9,9,1,'留言内容9','2023-03-13 14:42:36','回复信息9','2023-03-13 14:42:36','2023-03-13 14:42:36'),(10,10,3,'留言内容10','2023-03-13 14:42:36','回复信息10','2023-03-13 14:42:36','2023-03-13 14:42:36'),(11,11,3,'留言内容11','2023-03-13 14:42:36','回复信息11','2023-03-13 14:42:36','2023-03-13 14:42:36'),(12,12,1,'留言内容12','2023-03-13 14:42:36','回复信息12','2023-03-13 14:42:36','2023-03-13 14:42:36'),(13,13,1,'留言内容13','2023-03-13 14:42:36','回复信息13','2023-03-13 14:42:36','2023-03-13 14:42:36'),(14,14,1,'留言内容14','2023-03-13 14:42:36','回复信息14111111','2023-03-13 15:11:24','2023-03-13 14:42:36');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告标题1',1,'upload/news1.jpg','2023-03-13 14:42:36','公告详情1','2023-03-13 14:42:36'),(2,'公告标题2',3,'upload/news2.jpg','2023-03-13 14:42:36','公告详情2','2023-03-13 14:42:36'),(3,'公告标题3',2,'upload/news3.jpg','2023-03-13 14:42:36','公告详情3','2023-03-13 14:42:36'),(4,'公告标题4',2,'upload/news4.jpg','2023-03-13 14:42:36','公告详情4','2023-03-13 14:42:36'),(5,'公告标题5',1,'upload/news5.jpg','2023-03-13 14:42:36','公告详情5','2023-03-13 14:42:36'),(6,'公告标题6',3,'upload/news6.jpg','2023-03-13 14:42:36','公告详情6','2023-03-13 14:42:36'),(7,'公告标题7',2,'upload/news7.jpg','2023-03-13 14:42:36','公告详情7','2023-03-13 14:42:36'),(8,'公告标题8',1,'upload/news8.jpg','2023-03-13 14:42:36','公告详情8','2023-03-13 14:42:36'),(9,'公告标题9',1,'upload/news9.jpg','2023-03-13 14:42:36','公告详情9','2023-03-13 14:42:36'),(10,'公告标题10',1,'upload/news10.jpg','2023-03-13 14:42:36','公告详情10','2023-03-13 14:42:36'),(11,'公告标题11',3,'upload/news11.jpg','2023-03-13 14:42:36','公告详情11','2023-03-13 14:42:36'),(12,'公告标题12',1,'upload/news12.jpg','2023-03-13 14:42:36','公告详情12','2023-03-13 14:42:36'),(13,'公告标题13',1,'upload/news13.jpg','2023-03-13 14:42:36','公告详情13','2023-03-13 14:42:36'),(14,'公告标题14',2,'upload/news14.jpg','2023-03-13 14:42:36','公告详情14','2023-03-13 14:42:36');

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (4,1,'admin','users','管理员','zdruuwybjtxolo5enow04j719sptxfbu','2023-03-13 15:00:52','2023-03-13 16:14:22'),(5,1,'a1','yonghu','学生','0ql5t8o2gkm88mkabmz9i784edlt7fy8','2023-03-13 15:01:34','2023-03-13 16:09:52'),(6,1,'a1','jiaoshi','教师','cxuc5icct1eqlsyiy84yhoddd0uhstxu','2023-03-13 15:11:10','2023-03-13 16:11:11');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-03-13 14:42:21');

/*Table structure for table `xueshengchengji` */

DROP TABLE IF EXISTS `xueshengchengji`;

CREATE TABLE `xueshengchengji` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '学生',
  `jiaoshi_id` int(11) DEFAULT NULL COMMENT '教师',
  `chengji` int(11) DEFAULT NULL COMMENT '成绩',
  `xueshengchengji_time` date DEFAULT NULL COMMENT '时间',
  `xueke_types` int(11) DEFAULT NULL COMMENT '学科 Search111',
  `xueshengchengji_content` text COMMENT '成绩详情',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='学生成绩';

/*Data for the table `xueshengchengji` */

insert  into `xueshengchengji`(`id`,`yonghu_id`,`jiaoshi_id`,`chengji`,`xueshengchengji_time`,`xueke_types`,`xueshengchengji_content`,`insert_time`,`create_time`) values (1,2,2,269,'2023-03-13',2,'成绩详情1','2023-03-13 14:42:36','2023-03-13 14:42:36'),(2,1,3,231,'2023-03-13',1,'成绩详情2','2023-03-13 14:42:36','2023-03-13 14:42:36'),(3,3,1,63,'2023-03-13',2,'成绩详情3','2023-03-13 14:42:36','2023-03-13 14:42:36'),(4,1,1,467,'2023-03-13',3,'成绩详情4','2023-03-13 14:42:36','2023-03-13 14:42:36'),(5,1,2,330,'2023-03-13',2,'成绩详情5','2023-03-13 14:42:36','2023-03-13 14:42:36'),(6,1,1,131,'2023-03-13',1,'成绩详情6','2023-03-13 14:42:36','2023-03-13 14:42:36'),(7,3,2,361,'2023-03-13',3,'成绩详情7','2023-03-13 14:42:36','2023-03-13 14:42:36'),(8,2,2,492,'2023-03-13',3,'成绩详情8','2023-03-13 14:42:36','2023-03-13 14:42:36'),(9,1,2,25,'2023-03-13',3,'成绩详情9','2023-03-13 14:42:36','2023-03-13 14:42:36'),(10,2,1,254,'2023-03-13',1,'成绩详情10','2023-03-13 14:42:36','2023-03-13 14:42:36'),(11,1,1,495,'2023-03-13',2,'成绩详情11','2023-03-13 14:42:36','2023-03-13 14:42:36'),(12,1,3,370,'2023-03-13',1,'成绩详情12','2023-03-13 14:42:36','2023-03-13 14:42:36'),(13,3,3,357,'2023-03-13',2,'成绩详情13','2023-03-13 14:42:36','2023-03-13 14:42:36'),(14,2,3,57,'2023-03-13',1,'成绩详情14','2023-03-13 14:42:36','2023-03-13 14:42:36');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_uuid_number` varchar(200) DEFAULT NULL COMMENT '学号 Search111 ',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '学生姓名 Search111 ',
  `yonghu_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '学生身份证号 ',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `yonghu_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`yonghu_uuid_number`,`username`,`password`,`yonghu_name`,`yonghu_photo`,`sex_types`,`yonghu_phone`,`yonghu_id_number`,`yonghu_email`,`yonghu_delete`,`create_time`) values (1,'1678689756363','a1','123456','学生姓名1','upload/yonghu1.jpg',2,'17703786901','410224199010102001','1@qq.com',1,'2023-03-13 14:42:36'),(2,'1678689756341','a2','123456','学生姓名2','upload/yonghu2.jpg',1,'17703786902','410224199010102002','2@qq.com',1,'2023-03-13 14:42:36'),(3,'1678689756384','a3','123456','学生姓名3','upload/yonghu3.jpg',2,'17703786903','410224199010102003','3@qq.com',1,'2023-03-13 14:42:36');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
