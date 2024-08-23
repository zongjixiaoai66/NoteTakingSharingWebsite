/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t384`;
CREATE DATABASE IF NOT EXISTS `t384` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t384`;

DROP TABLE IF EXISTS `address`;
CREATE TABLE IF NOT EXISTS `address` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int NOT NULL COMMENT '创建用户',
  `address_name` varchar(200) NOT NULL COMMENT '收货人 ',
  `address_phone` varchar(200) NOT NULL COMMENT '电话 ',
  `address_dizhi` varchar(200) NOT NULL COMMENT '地址 ',
  `isdefault_types` int NOT NULL COMMENT '是否默认地址 ',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COMMENT='收货地址';

DELETE FROM `address`;
INSERT INTO `address` (`id`, `yonghu_id`, `address_name`, `address_phone`, `address_dizhi`, `isdefault_types`, `insert_time`, `update_time`, `create_time`) VALUES
	(1, 1, '收货人1', '17703786901', '地址1', 1, '2023-04-27 05:48:20', '2023-04-27 05:48:20', '2023-04-27 05:48:20'),
	(2, 3, '收货人2', '17703786902', '地址2', 1, '2023-04-27 05:48:20', '2023-04-27 05:48:20', '2023-04-27 05:48:20'),
	(3, 2, '收货人3', '17703786903', '地址3', 1, '2023-04-27 05:48:20', '2023-04-27 05:48:20', '2023-04-27 05:48:20'),
	(4, 2, '收货人4', '17703786904', '地址4', 1, '2023-04-27 05:48:20', '2023-04-27 05:48:20', '2023-04-27 05:48:20'),
	(5, 1, '收货人5', '17703786905', '地址5', 1, '2023-04-27 05:48:20', '2023-04-27 05:48:20', '2023-04-27 05:48:20'),
	(6, 3, '收货人6', '17703786906', '地址6', 1, '2023-04-27 05:48:20', '2023-04-27 05:48:20', '2023-04-27 05:48:20'),
	(7, 2, '收货人7', '17703786907', '地址7', 1, '2023-04-27 05:48:20', '2023-04-27 05:48:20', '2023-04-27 05:48:20'),
	(8, 2, '收货人8', '17703786908', '地址8', 1, '2023-04-27 05:48:20', '2023-04-27 05:48:20', '2023-04-27 05:48:20'),
	(9, 1, '收货人9', '17703786909', '地址9', 1, '2023-04-27 05:48:20', '2023-04-27 05:48:20', '2023-04-27 05:48:20'),
	(10, 1, '收货人10', '17703786910', '地址10', 1, '2023-04-27 05:48:20', '2023-04-27 05:48:20', '2023-04-27 05:48:20'),
	(11, 3, '收货人11', '17703786911', '地址11', 1, '2023-04-27 05:48:20', '2023-04-27 05:48:20', '2023-04-27 05:48:20'),
	(12, 1, '收货人12', '17703786912', '地址12', 1, '2023-04-27 05:48:20', '2023-04-27 05:48:20', '2023-04-27 05:48:20'),
	(13, 3, '收货人13', '17703786913', '地址13', 1, '2023-04-27 05:48:20', '2023-04-27 05:48:20', '2023-04-27 05:48:20'),
	(14, 2, '收货人14', '17703786914', '地址14', 1, '2023-04-27 05:48:20', '2023-04-27 05:48:20', '2023-04-27 05:48:20'),
	(15, 4, '张三', '17788889999', '地址111', 2, '2023-04-27 07:02:09', '2023-04-27 07:02:08', '2023-04-27 07:02:09');

DROP TABLE IF EXISTS `biji`;
CREATE TABLE IF NOT EXISTS `biji` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `biji_name` varchar(200) DEFAULT NULL COMMENT '笔记名称  Search111 ',
  `biji_uuid_number` varchar(200) DEFAULT NULL COMMENT '笔记编号',
  `biji_photo` varchar(200) DEFAULT NULL COMMENT '笔记照片',
  `zan_number` int DEFAULT NULL COMMENT '赞',
  `cai_number` int DEFAULT NULL COMMENT '踩',
  `biji_types` int DEFAULT NULL COMMENT '笔记类型 Search111',
  `biji_content` longtext COMMENT '笔记内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COMMENT='笔记广场';

DELETE FROM `biji`;
INSERT INTO `biji` (`id`, `yonghu_id`, `biji_name`, `biji_uuid_number`, `biji_photo`, `zan_number`, `cai_number`, `biji_types`, `biji_content`, `insert_time`, `create_time`) VALUES
	(1, 2, '笔记名称1', '1682574500407', 'upload/biji1.jpg', 337, 481, 3, '笔记内容1', '2023-04-27 05:48:20', '2023-04-27 05:48:20'),
	(2, 2, '笔记名称2', '1682574500354', 'upload/biji2.jpg', 383, 495, 4, '笔记内容2', '2023-04-27 05:48:20', '2023-04-27 05:48:20'),
	(3, 1, '笔记名称3', '1682574500346', 'upload/biji3.jpg', 221, 254, 1, '笔记内容3', '2023-04-27 05:48:20', '2023-04-27 05:48:20'),
	(4, 3, '笔记名称4', '1682574500341', 'upload/biji4.jpg', 404, 142, 2, '笔记内容4', '2023-04-27 05:48:20', '2023-04-27 05:48:20'),
	(5, 3, '笔记名称5', '1682574500418', 'upload/biji5.jpg', 501, 356, 2, '笔记内容5', '2023-04-27 05:48:20', '2023-04-27 05:48:20'),
	(6, 1, '笔记名称6', '1682574500420', 'upload/biji6.jpg', 457, 114, 4, '笔记内容6', '2023-04-27 05:48:20', '2023-04-27 05:48:20'),
	(7, 1, '笔记名称7', '1682574500339', 'upload/biji7.jpg', 40, 478, 2, '笔记内容7', '2023-04-27 05:48:20', '2023-04-27 05:48:20'),
	(8, 3, '笔记名称8', '1682574500340', 'upload/biji8.jpg', 499, 172, 3, '笔记内容8', '2023-04-27 05:48:20', '2023-04-27 05:48:20'),
	(9, 1, '笔记名称9', '1682574500352', 'upload/biji9.jpg', 344, 366, 4, '笔记内容9', '2023-04-27 05:48:20', '2023-04-27 05:48:20'),
	(10, 1, '笔记名称10', '1682574500389', 'upload/biji10.jpg', 362, 283, 2, '笔记内容10', '2023-04-27 05:48:20', '2023-04-27 05:48:20'),
	(11, 2, '笔记名称11', '1682574500371', 'upload/biji11.jpg', 130, 12, 2, '笔记内容11', '2023-04-27 05:48:20', '2023-04-27 05:48:20'),
	(12, 1, '笔记名称12', '1682574500376', 'upload/biji12.jpg', 222, 323, 4, '笔记内容12', '2023-04-27 05:48:20', '2023-04-27 05:48:20'),
	(13, 2, '笔记名称13', '1682574500389', 'upload/biji13.jpg', 473, 421, 3, '笔记内容13', '2023-04-27 05:48:20', '2023-04-27 05:48:20'),
	(14, 3, '笔记名称14', '1682574500354', 'upload/biji14.jpg', 110, 247, 2, '笔记内容14', '2023-04-27 05:48:20', '2023-04-27 05:48:20'),
	(15, 1, '笔记111', '1682578192796', 'upload/1682578199648.jpg', 2, 1, 4, '固定死噶十多个大概话费电话费的和待发货烦得很的风格话费电话费的', '2023-04-27 06:50:04', '2023-04-27 06:50:04'),
	(16, 4, '笔记111', '1682579039931', 'upload/1682579044571.jpg', 1, 1, 4, '广东省广东省公司个', '2023-04-27 07:04:07', '2023-04-27 07:04:07');

DROP TABLE IF EXISTS `biji_collection`;
CREATE TABLE IF NOT EXISTS `biji_collection` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `biji_id` int DEFAULT NULL COMMENT '笔记',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `biji_collection_types` int DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb3 COMMENT='笔记收藏';

DELETE FROM `biji_collection`;
INSERT INTO `biji_collection` (`id`, `biji_id`, `yonghu_id`, `biji_collection_types`, `insert_time`, `create_time`) VALUES
	(1, 1, 2, 1, '2023-04-27 05:48:20', '2023-04-27 05:48:20'),
	(2, 2, 3, 1, '2023-04-27 05:48:20', '2023-04-27 05:48:20'),
	(3, 3, 2, 1, '2023-04-27 05:48:20', '2023-04-27 05:48:20'),
	(4, 4, 1, 1, '2023-04-27 05:48:20', '2023-04-27 05:48:20'),
	(5, 5, 1, 1, '2023-04-27 05:48:20', '2023-04-27 05:48:20'),
	(6, 6, 1, 1, '2023-04-27 05:48:20', '2023-04-27 05:48:20'),
	(7, 7, 2, 1, '2023-04-27 05:48:20', '2023-04-27 05:48:20'),
	(8, 8, 3, 1, '2023-04-27 05:48:20', '2023-04-27 05:48:20'),
	(9, 9, 2, 1, '2023-04-27 05:48:20', '2023-04-27 05:48:20'),
	(10, 10, 2, 1, '2023-04-27 05:48:20', '2023-04-27 05:48:20'),
	(11, 11, 2, 1, '2023-04-27 05:48:20', '2023-04-27 05:48:20'),
	(12, 12, 3, 1, '2023-04-27 05:48:20', '2023-04-27 05:48:20'),
	(13, 13, 3, 1, '2023-04-27 05:48:20', '2023-04-27 05:48:20'),
	(14, 14, 3, 1, '2023-04-27 05:48:20', '2023-04-27 05:48:20'),
	(15, 14, 4, 2, '2023-04-27 07:00:29', '2023-04-27 07:00:29'),
	(17, 15, 4, 2, '2023-04-27 07:01:38', '2023-04-27 07:01:38'),
	(18, 15, 4, 1, '2023-04-27 07:01:45', '2023-04-27 07:01:45'),
	(19, 10, 4, 1, '2023-04-27 07:01:47', '2023-04-27 07:01:47'),
	(20, 6, 4, 1, '2023-04-27 07:01:49', '2023-04-27 07:01:49'),
	(21, 15, 1, 1, '2024-08-13 06:16:57', '2024-08-13 06:16:57');

DROP TABLE IF EXISTS `biji_liuyan`;
CREATE TABLE IF NOT EXISTS `biji_liuyan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `biji_id` int DEFAULT NULL COMMENT '笔记',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `biji_liuyan_text` longtext COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COMMENT='笔记留言';

DELETE FROM `biji_liuyan`;
INSERT INTO `biji_liuyan` (`id`, `biji_id`, `yonghu_id`, `biji_liuyan_text`, `insert_time`, `reply_text`, `update_time`, `create_time`) VALUES
	(1, 1, 3, '留言内容1', '2023-04-27 05:48:20', '回复信息1', '2023-04-27 05:48:20', '2023-04-27 05:48:20'),
	(2, 2, 1, '留言内容2', '2023-04-27 05:48:20', '回复信息2', '2023-04-27 05:48:20', '2023-04-27 05:48:20'),
	(3, 3, 2, '留言内容3', '2023-04-27 05:48:20', '回复信息3', '2023-04-27 05:48:20', '2023-04-27 05:48:20'),
	(4, 4, 1, '留言内容4', '2023-04-27 05:48:20', '回复信息4', '2023-04-27 05:48:20', '2023-04-27 05:48:20'),
	(5, 5, 3, '留言内容5', '2023-04-27 05:48:20', '回复信息5', '2023-04-27 05:48:20', '2023-04-27 05:48:20'),
	(6, 6, 1, '留言内容6', '2023-04-27 05:48:20', '回复信息6', '2023-04-27 05:48:20', '2023-04-27 05:48:20'),
	(7, 7, 3, '留言内容7', '2023-04-27 05:48:20', '回复信息7', '2023-04-27 05:48:20', '2023-04-27 05:48:20'),
	(8, 8, 1, '留言内容8', '2023-04-27 05:48:20', '回复信息8', '2023-04-27 05:48:20', '2023-04-27 05:48:20'),
	(9, 9, 3, '留言内容9', '2023-04-27 05:48:20', '回复信息9', '2023-04-27 05:48:20', '2023-04-27 05:48:20'),
	(10, 10, 3, '留言内容10', '2023-04-27 05:48:20', '回复信息10', '2023-04-27 05:48:20', '2023-04-27 05:48:20'),
	(11, 11, 2, '留言内容11', '2023-04-27 05:48:20', '回复信息11', '2023-04-27 05:48:20', '2023-04-27 05:48:20'),
	(12, 12, 1, '留言内容12', '2023-04-27 05:48:20', '回复信息12', '2023-04-27 05:48:20', '2023-04-27 05:48:20'),
	(13, 13, 2, '留言内容13', '2023-04-27 05:48:20', '回复信息13', '2023-04-27 05:48:20', '2023-04-27 05:48:20'),
	(14, 14, 1, '留言内容14', '2023-04-27 05:48:20', '回复信息14', '2023-04-27 05:48:20', '2023-04-27 05:48:20'),
	(15, 15, 4, '广东省广东省公司的', '2023-04-27 07:01:41', NULL, NULL, '2023-04-27 07:01:41');

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int DEFAULT NULL COMMENT '所属用户',
  `shangpin_id` int DEFAULT NULL COMMENT '商品',
  `buy_number` int DEFAULT NULL COMMENT '购买数量',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='购物车';

DELETE FROM `cart`;
INSERT INTO `cart` (`id`, `yonghu_id`, `shangpin_id`, `buy_number`, `create_time`, `update_time`, `insert_time`) VALUES
	(5, 1, 12, 1, '2024-08-13 06:17:10', NULL, '2024-08-13 06:17:10');

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, '轮播图1回复的后代和', 'upload/config1.jpg'),
	(2, '轮播图2', 'upload/config2.jpg'),
	(3, '轮播图3', 'upload/config3.jpg');

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb3 COMMENT='字典表';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(17, 'gonggao_types', '公告类型', 1, '公告类型1', NULL, NULL, '2023-04-27 05:48:15'),
	(18, 'gonggao_types', '公告类型', 2, '公告类型2', NULL, NULL, '2023-04-27 05:48:15'),
	(19, 'sex_types', '性别类型', 1, '男', NULL, NULL, '2023-04-27 05:48:16'),
	(20, 'sex_types', '性别类型', 2, '女', NULL, NULL, '2023-04-27 05:48:16'),
	(21, 'jinyong_types', '账户状态', 1, '启用', NULL, NULL, '2023-04-27 05:48:16'),
	(22, 'jinyong_types', '账户状态', 2, '禁用', NULL, NULL, '2023-04-27 05:48:16'),
	(23, 'biji_types', '笔记类型', 1, '笔记类型1', NULL, NULL, '2023-04-27 05:48:16'),
	(24, 'biji_types', '笔记类型', 2, '笔记类型2', NULL, NULL, '2023-04-27 05:48:16'),
	(25, 'biji_types', '笔记类型', 3, '笔记类型3', NULL, NULL, '2023-04-27 05:48:16'),
	(26, 'biji_types', '笔记类型', 4, '笔记类型4', NULL, NULL, '2023-04-27 05:48:16'),
	(27, 'biji_collection_types', '收藏表类型', 1, '收藏', NULL, NULL, '2023-04-27 05:48:16'),
	(28, 'biji_collection_types', '收藏表类型', 2, '赞', NULL, NULL, '2023-04-27 05:48:16'),
	(29, 'biji_collection_types', '收藏表类型', 3, '踩', NULL, NULL, '2023-04-27 05:48:16'),
	(30, 'richangrenwu_types', '日常任务类型', 1, '日常任务类型1', NULL, NULL, '2023-04-27 05:48:16'),
	(31, 'richangrenwu_types', '日常任务类型', 2, '日常任务类型2', NULL, NULL, '2023-04-27 05:48:16'),
	(32, 'richangrenwu_types', '日常任务类型', 3, '日常任务类型3', NULL, NULL, '2023-04-27 05:48:16'),
	(33, 'richangrenwu_types', '日常任务类型', 4, '日常任务类型4', NULL, NULL, '2023-04-27 05:48:16'),
	(34, 'richangrenwu_lingqu_types', '任务状态', 1, '已领取', NULL, NULL, '2023-04-27 05:48:16'),
	(35, 'richangrenwu_lingqu_types', '任务状态', 2, '已完成', NULL, NULL, '2023-04-27 05:48:16'),
	(36, 'richangrenwu_lingqu_types', '任务状态', 3, '未完成', NULL, NULL, '2023-04-27 05:48:16'),
	(37, 'richangrenwu_lingqu_yesno_types', '审核状态', 1, '待审核', NULL, NULL, '2023-04-27 05:48:16'),
	(38, 'richangrenwu_lingqu_yesno_types', '审核状态', 2, '任务已完成', NULL, NULL, '2023-04-27 05:48:16'),
	(39, 'richangrenwu_lingqu_yesno_types', '审核状态', 3, '任务未完成', NULL, NULL, '2023-04-27 05:48:16'),
	(40, 'shangxia_types', '上下架', 1, '上架', NULL, NULL, '2023-04-27 05:48:16'),
	(41, 'shangxia_types', '上下架', 2, '下架', NULL, NULL, '2023-04-27 05:48:16'),
	(42, 'shangpin_types', '商品类型', 1, '商品类型1', NULL, NULL, '2023-04-27 05:48:16'),
	(43, 'shangpin_types', '商品类型', 2, '商品类型2', NULL, NULL, '2023-04-27 05:48:16'),
	(44, 'shangpin_types', '商品类型', 3, '商品类型3', NULL, NULL, '2023-04-27 05:48:16'),
	(45, 'shangpin_types', '商品类型', 4, '商品类型4', NULL, NULL, '2023-04-27 05:48:16'),
	(46, 'shangpin_collection_types', '收藏表类型', 1, '收藏', NULL, NULL, '2023-04-27 05:48:16'),
	(47, 'shangpin_collection_types', '收藏表类型', 2, '赞', NULL, NULL, '2023-04-27 05:48:16'),
	(48, 'shangpin_collection_types', '收藏表类型', 3, '踩', NULL, NULL, '2023-04-27 05:48:17'),
	(49, 'shangpin_order_types', '订单类型', 101, '已兑换', NULL, NULL, '2023-04-27 05:48:17'),
	(50, 'shangpin_order_types', '订单类型', 102, '已取消兑换', NULL, NULL, '2023-04-27 05:48:17'),
	(51, 'shangpin_order_types', '订单类型', 103, '已发货', NULL, NULL, '2023-04-27 05:48:17'),
	(52, 'shangpin_order_types', '订单类型', 104, '已收货', NULL, NULL, '2023-04-27 05:48:17'),
	(53, 'shangpin_order_types', '订单类型', 105, '已评价', NULL, NULL, '2023-04-27 05:48:17'),
	(54, 'shangpin_order_payment_types', '订单支付类型', 1, '积分', NULL, NULL, '2023-04-27 05:48:17'),
	(55, 'isdefault_types', '是否默认地址', 1, '否', NULL, NULL, '2023-04-27 05:48:17'),
	(56, 'isdefault_types', '是否默认地址', 2, '是', NULL, NULL, '2023-04-27 05:48:17'),
	(57, 'shangpin_types', '商品类型', 5, '商品类型5', NULL, '', '2023-04-27 07:05:04');

DROP TABLE IF EXISTS `gonggao`;
CREATE TABLE IF NOT EXISTS `gonggao` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `gonggao_content` longtext COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='公告信息';

DELETE FROM `gonggao`;
INSERT INTO `gonggao` (`id`, `gonggao_name`, `gonggao_photo`, `gonggao_types`, `insert_time`, `gonggao_content`, `create_time`) VALUES
	(1, '公告名称1', 'upload/gonggao1.jpg', 1, '2023-04-27 05:48:20', '公告详情1', '2023-04-27 05:48:20'),
	(2, '公告名称2', 'upload/gonggao2.jpg', 1, '2023-04-27 05:48:20', '公告详情2', '2023-04-27 05:48:20'),
	(3, '公告名称3', 'upload/gonggao3.jpg', 2, '2023-04-27 05:48:20', '公告详情3', '2023-04-27 05:48:20'),
	(4, '公告名称4', 'upload/gonggao4.jpg', 1, '2023-04-27 05:48:20', '公告详情4', '2023-04-27 05:48:20'),
	(5, '公告名称5', 'upload/gonggao5.jpg', 2, '2023-04-27 05:48:20', '公告详情5', '2023-04-27 05:48:20'),
	(6, '公告名称6', 'upload/gonggao6.jpg', 1, '2023-04-27 05:48:20', '公告详情6', '2023-04-27 05:48:20'),
	(7, '公告名称7', 'upload/gonggao7.jpg', 1, '2023-04-27 05:48:20', '公告详情7', '2023-04-27 05:48:20'),
	(8, '公告名称8', 'upload/gonggao8.jpg', 1, '2023-04-27 05:48:20', '公告详情8', '2023-04-27 05:48:20'),
	(9, '公告名称9', 'upload/gonggao9.jpg', 2, '2023-04-27 05:48:20', '公告详情9', '2023-04-27 05:48:20'),
	(10, '公告名称10', 'upload/gonggao10.jpg', 1, '2023-04-27 05:48:20', '公告详情10', '2023-04-27 05:48:20'),
	(11, '公告名称11', 'upload/gonggao11.jpg', 2, '2023-04-27 05:48:20', '公告详情11', '2023-04-27 05:48:20'),
	(12, '公告名称12', 'upload/gonggao12.jpg', 2, '2023-04-27 05:48:20', '公告详情12', '2023-04-27 05:48:20'),
	(13, '公告名称13', 'upload/gonggao13.jpg', 2, '2023-04-27 05:48:20', '公告详情13', '2023-04-27 05:48:20'),
	(14, '公告名称14', 'upload/gonggao14.jpg', 1, '2023-04-27 05:48:20', '<p>公告详情14gdsgsg 反倒是感受到</p>', '2023-04-27 05:48:20');

DROP TABLE IF EXISTS `guanzhu`;
CREATE TABLE IF NOT EXISTS `guanzhu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `guanzhu_uuid_number` varchar(200) DEFAULT NULL COMMENT '关注编号',
  `guanzhu_kucun_number` int DEFAULT NULL COMMENT '关注人',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '关注时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb3 COMMENT='我的关注';

DELETE FROM `guanzhu`;
INSERT INTO `guanzhu` (`id`, `yonghu_id`, `guanzhu_uuid_number`, `guanzhu_kucun_number`, `insert_time`, `create_time`) VALUES
	(17, 3, '1682577273629', 1, '2023-04-27 06:34:34', '2023-04-27 06:34:34'),
	(19, 4, '1682578888324', 4, '2023-04-27 07:01:28', '2023-04-27 07:01:28'),
	(20, 3, '1682578890693', 4, '2023-04-27 07:01:31', '2023-04-27 07:01:31'),
	(21, 4, '1723529811327', 1, '2024-08-13 06:16:51', '2024-08-13 06:16:51');

DROP TABLE IF EXISTS `richangrenwu`;
CREATE TABLE IF NOT EXISTS `richangrenwu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `richangrenwu_uuid_number` varchar(200) DEFAULT NULL COMMENT '日常任务编号',
  `richangrenwu_name` varchar(200) DEFAULT NULL COMMENT '日常任务标题  Search111 ',
  `richangrenwu_types` int DEFAULT NULL COMMENT '日常任务类型 Search111',
  `richangrenwu_jifen` decimal(10,2) DEFAULT NULL COMMENT '任务积分',
  `richangrenwu_content` longtext COMMENT '任务内容',
  `richangrenwu_wancheng_content` longtext COMMENT '完成标准',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='日常任务';

DELETE FROM `richangrenwu`;
INSERT INTO `richangrenwu` (`id`, `richangrenwu_uuid_number`, `richangrenwu_name`, `richangrenwu_types`, `richangrenwu_jifen`, `richangrenwu_content`, `richangrenwu_wancheng_content`, `create_time`) VALUES
	(1, '1682574500403', '日常任务标题1', 2, 369.94, '任务内容1', '完成标准1', '2023-04-27 05:48:20'),
	(2, '1682574500356', '日常任务标题2', 2, 451.97, '任务内容2', '完成标准2', '2023-04-27 05:48:20'),
	(3, '1682574500406', '日常任务标题3', 3, 216.08, '任务内容3', '完成标准3', '2023-04-27 05:48:20'),
	(4, '1682574500412', '日常任务标题4', 1, 109.67, '任务内容4', '完成标准4', '2023-04-27 05:48:20'),
	(5, '1682574500380', '日常任务标题5', 1, 442.05, '任务内容5', '完成标准5', '2023-04-27 05:48:20'),
	(6, '1682574500395', '日常任务标题6', 3, 86.28, '任务内容6', '完成标准6', '2023-04-27 05:48:20'),
	(7, '1682574500404', '日常任务标题7', 3, 652.45, '任务内容7', '完成标准7', '2023-04-27 05:48:20'),
	(8, '1682574500430', '日常任务标题8', 4, 496.94, '任务内容8', '完成标准8', '2023-04-27 05:48:20'),
	(9, '1682574500424', '日常任务标题9', 2, 391.55, '任务内容9', '完成标准9', '2023-04-27 05:48:20'),
	(10, '1682574500376', '日常任务标题10', 1, 183.58, '任务内容10', '完成标准10', '2023-04-27 05:48:20'),
	(11, '1682574500425', '日常任务标题11', 2, 450.53, '任务内容11', '完成标准11', '2023-04-27 05:48:20'),
	(12, '1682574500429', '日常任务标题12', 4, 749.80, '任务内容12', '完成标准12', '2023-04-27 05:48:20'),
	(13, '1682574500418', '日常任务标题13', 1, 234.84, '任务内容13', '完成标准13', '2023-04-27 05:48:20'),
	(14, '1682574500357', '日常任务标题14', 1, 943.54, '任务内容14', '完成标准14', '2023-04-27 05:48:20');

DROP TABLE IF EXISTS `richangrenwu_lingqu`;
CREATE TABLE IF NOT EXISTS `richangrenwu_lingqu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `richangrenwu_id` int DEFAULT NULL COMMENT '日常任务',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `richangrenwu_lingqu_uuid_number` varchar(200) DEFAULT NULL COMMENT '领取任务编号',
  `richangrenwu_lingqu_time` date DEFAULT NULL COMMENT '所属日期',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '领取时间',
  `richangrenwu_lingqu_types` int DEFAULT NULL COMMENT '任务状态 Search111',
  `richangrenwu_lingqu_yesno_types` int DEFAULT NULL COMMENT '审核状态 Search111',
  `richangrenwu_lingqu_yesno_text` longtext COMMENT '审核回复',
  `richangrenwu_lingqu_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间   show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb3 COMMENT='领取任务';

DELETE FROM `richangrenwu_lingqu`;
INSERT INTO `richangrenwu_lingqu` (`id`, `richangrenwu_id`, `yonghu_id`, `richangrenwu_lingqu_uuid_number`, `richangrenwu_lingqu_time`, `insert_time`, `richangrenwu_lingqu_types`, `richangrenwu_lingqu_yesno_types`, `richangrenwu_lingqu_yesno_text`, `richangrenwu_lingqu_shenhe_time`, `create_time`) VALUES
	(1, 1, 3, '1682574500415', '2023-04-27', '2023-04-27 05:48:20', 1, 1, NULL, NULL, '2023-04-27 05:48:20'),
	(2, 2, 1, '1682574500388', '2023-04-27', '2023-04-27 05:48:20', 3, 1, NULL, NULL, '2023-04-27 05:48:20'),
	(3, 3, 2, '1682574500397', '2023-04-27', '2023-04-27 05:48:20', 2, 1, NULL, NULL, '2023-04-27 05:48:20'),
	(4, 4, 1, '1682574500357', '2023-04-27', '2023-04-27 05:48:20', 2, 1, NULL, NULL, '2023-04-27 05:48:20'),
	(5, 5, 1, '1682574500341', '2023-04-27', '2023-04-27 05:48:20', 3, 1, NULL, NULL, '2023-04-27 05:48:20'),
	(6, 6, 2, '1682574500424', '2023-04-27', '2023-04-27 05:48:20', 1, 1, NULL, NULL, '2023-04-27 05:48:20'),
	(7, 7, 2, '1682574500381', '2023-04-27', '2023-04-27 05:48:20', 1, 1, NULL, NULL, '2023-04-27 05:48:20'),
	(8, 8, 1, '1682574500387', '2023-04-27', '2023-04-27 05:48:20', 2, 1, NULL, NULL, '2023-04-27 05:48:20'),
	(9, 9, 1, '1682574500357', '2023-04-27', '2023-04-27 05:48:20', 3, 1, NULL, NULL, '2023-04-27 05:48:20'),
	(10, 10, 3, '1682574500402', '2023-04-27', '2023-04-27 05:48:20', 2, 1, NULL, NULL, '2023-04-27 05:48:20'),
	(11, 11, 2, '1682574500385', '2023-04-27', '2023-04-27 05:48:20', 2, 1, NULL, NULL, '2023-04-27 05:48:20'),
	(12, 12, 3, '1682574500340', '2023-04-27', '2023-04-27 05:48:20', 3, 1, NULL, NULL, '2023-04-27 05:48:20'),
	(13, 13, 1, '1682574500411', '2023-04-27', '2023-04-27 05:48:20', 1, 1, NULL, NULL, '2023-04-27 05:48:20'),
	(14, 14, 2, '1682574500383', '2023-04-27', '2023-04-27 05:48:20', 2, 1, NULL, NULL, '2023-04-27 05:48:20'),
	(20, 14, 1, '1682578027064', '2023-04-27', '2023-04-27 06:47:08', 1, 1, NULL, NULL, '2023-04-27 06:47:08'),
	(21, 14, 4, '1682578944403', '2023-04-27', '2023-04-27 07:02:24', 2, 2, '回复是广东发生过的', '2023-04-27 07:02:40', '2023-04-27 07:02:24'),
	(22, 11, 4, '1682579073010', '2023-04-27', '2023-04-27 07:04:33', 3, 3, '个第三个第三个', '2023-04-27 07:05:32', '2023-04-27 07:04:33');

DROP TABLE IF EXISTS `shangpin`;
CREATE TABLE IF NOT EXISTS `shangpin` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `shangpin_name` varchar(200) DEFAULT NULL COMMENT '商品名称  Search111 ',
  `shangpin_uuid_number` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `shangpin_photo` varchar(200) DEFAULT NULL COMMENT '商品照片',
  `zan_number` int DEFAULT NULL COMMENT '赞',
  `cai_number` int DEFAULT NULL COMMENT '踩',
  `shangpin_types` int DEFAULT NULL COMMENT '商品类型 Search111',
  `shangpin_kucun_number` int DEFAULT NULL COMMENT '商品库存',
  `shangpin_new_money` decimal(10,2) DEFAULT NULL COMMENT '所需积分',
  `shangpin_cangku` varchar(200) DEFAULT NULL COMMENT '所属仓库 Search111',
  `shangpin_clicknum` int DEFAULT NULL COMMENT '商品热度',
  `shangpin_content` longtext COMMENT '商品介绍 ',
  `shangxia_types` int DEFAULT NULL COMMENT '是否上架 ',
  `shangpin_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='商品';

DELETE FROM `shangpin`;
INSERT INTO `shangpin` (`id`, `shangpin_name`, `shangpin_uuid_number`, `shangpin_photo`, `zan_number`, `cai_number`, `shangpin_types`, `shangpin_kucun_number`, `shangpin_new_money`, `shangpin_cangku`, `shangpin_clicknum`, `shangpin_content`, `shangxia_types`, `shangpin_delete`, `insert_time`, `create_time`) VALUES
	(1, '商品名称1', '1682574500347', 'upload/shangpin1.jpg', 434, 413, 2, 101, 28.76, '所属仓库1', 232, '商品介绍1', 1, 1, '2023-04-27 05:48:20', '2023-04-27 05:48:20'),
	(2, '商品名称2', '1682574500339', 'upload/shangpin2.jpg', 465, 363, 1, 102, 142.08, '所属仓库2', 320, '商品介绍2', 1, 1, '2023-04-27 05:48:20', '2023-04-27 05:48:20'),
	(3, '商品名称3', '1682574500409', 'upload/shangpin3.jpg', 135, 153, 2, 103, 291.35, '所属仓库3', 370, '商品介绍3', 1, 1, '2023-04-27 05:48:20', '2023-04-27 05:48:20'),
	(4, '商品名称4', '1682574500391', 'upload/shangpin4.jpg', 216, 385, 3, 104, 378.65, '所属仓库4', 447, '商品介绍4', 1, 1, '2023-04-27 05:48:20', '2023-04-27 05:48:20'),
	(5, '商品名称5', '1682574500347', 'upload/shangpin5.jpg', 350, 442, 2, 104, 461.00, '所属仓库5', 497, '商品介绍5', 1, 1, '2023-04-27 05:48:20', '2023-04-27 05:48:20'),
	(6, '商品名称6', '1682574500399', 'upload/shangpin6.jpg', 339, 487, 4, 106, 46.81, '所属仓库6', 69, '商品介绍6', 1, 1, '2023-04-27 05:48:20', '2023-04-27 05:48:20'),
	(7, '商品名称7', '1682574500391', 'upload/shangpin7.jpg', 155, 166, 4, 107, 391.62, '所属仓库7', 245, '商品介绍7', 1, 1, '2023-04-27 05:48:20', '2023-04-27 05:48:20'),
	(8, '商品名称8', '1682574500403', 'upload/shangpin8.jpg', 159, 41, 2, 103, 54.71, '所属仓库8', 459, '商品介绍8', 1, 1, '2023-04-27 05:48:20', '2023-04-27 05:48:20'),
	(9, '商品名称9', '1682574500379', 'upload/shangpin9.jpg', 276, 18, 4, 109, 254.04, '所属仓库9', 144, '商品介绍9', 1, 1, '2023-04-27 05:48:20', '2023-04-27 05:48:20'),
	(10, '商品名称10', '1682574500407', 'upload/shangpin10.jpg', 43, 452, 4, 1010, 112.17, '所属仓库10', 86, '商品介绍10', 1, 1, '2023-04-27 05:48:20', '2023-04-27 05:48:20'),
	(11, '商品名称11', '1682574500433', 'upload/shangpin11.jpg', 81, 481, 4, 1011, 257.66, '所属仓库11', 329, '商品介绍11', 1, 1, '2023-04-27 05:48:20', '2023-04-27 05:48:20'),
	(12, '商品名称12', '1682574500404', 'upload/shangpin12.jpg', 154, 229, 2, 1011, 413.96, '所属仓库12', 503, '商品介绍12', 1, 1, '2023-04-27 05:48:20', '2023-04-27 05:48:20'),
	(13, '商品名称13', '1682574500377', 'upload/shangpin13.jpg', 111, 43, 3, 1012, 124.25, '所属仓库13', 256, '商品介绍13', 1, 1, '2023-04-27 05:48:20', '2023-04-27 05:48:20'),
	(14, '商品名称14', '1682574500389', 'upload/shangpin14.jpg', 412, 87, 1, 1014, 370.78, '所属仓库14', 465, '商品介绍14', 1, 1, '2023-04-27 05:48:20', '2023-04-27 05:48:20');

DROP TABLE IF EXISTS `shangpin_collection`;
CREATE TABLE IF NOT EXISTS `shangpin_collection` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_id` int DEFAULT NULL COMMENT '商品',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `shangpin_collection_types` int DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COMMENT='商品收藏';

DELETE FROM `shangpin_collection`;
INSERT INTO `shangpin_collection` (`id`, `shangpin_id`, `yonghu_id`, `shangpin_collection_types`, `insert_time`, `create_time`) VALUES
	(1, 1, 2, 1, '2023-04-27 05:48:20', '2023-04-27 05:48:20'),
	(2, 2, 1, 1, '2023-04-27 05:48:20', '2023-04-27 05:48:20'),
	(3, 3, 1, 1, '2023-04-27 05:48:20', '2023-04-27 05:48:20'),
	(4, 4, 2, 1, '2023-04-27 05:48:20', '2023-04-27 05:48:20'),
	(5, 5, 2, 1, '2023-04-27 05:48:20', '2023-04-27 05:48:20'),
	(6, 6, 2, 1, '2023-04-27 05:48:20', '2023-04-27 05:48:20'),
	(7, 7, 2, 1, '2023-04-27 05:48:20', '2023-04-27 05:48:20'),
	(8, 8, 2, 1, '2023-04-27 05:48:20', '2023-04-27 05:48:20'),
	(9, 9, 1, 1, '2023-04-27 05:48:20', '2023-04-27 05:48:20'),
	(10, 10, 2, 1, '2023-04-27 05:48:20', '2023-04-27 05:48:20'),
	(11, 11, 2, 1, '2023-04-27 05:48:20', '2023-04-27 05:48:20'),
	(12, 12, 3, 1, '2023-04-27 05:48:20', '2023-04-27 05:48:20'),
	(13, 13, 1, 1, '2023-04-27 05:48:20', '2023-04-27 05:48:20'),
	(14, 14, 3, 1, '2023-04-27 05:48:20', '2023-04-27 05:48:20'),
	(15, 14, 4, 1, '2023-04-27 07:04:41', '2023-04-27 07:04:41'),
	(16, 12, 1, 1, '2024-08-13 06:17:08', '2024-08-13 06:17:08');

DROP TABLE IF EXISTS `shangpin_commentback`;
CREATE TABLE IF NOT EXISTS `shangpin_commentback` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_id` int DEFAULT NULL COMMENT '商品',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `shangpin_commentback_text` longtext COMMENT '评价内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COMMENT='商品评价';

DELETE FROM `shangpin_commentback`;
INSERT INTO `shangpin_commentback` (`id`, `shangpin_id`, `yonghu_id`, `shangpin_commentback_text`, `insert_time`, `reply_text`, `update_time`, `create_time`) VALUES
	(1, 1, 1, '评价内容1', '2023-04-27 05:48:20', '回复信息1', '2023-04-27 05:48:20', '2023-04-27 05:48:20'),
	(2, 2, 3, '评价内容2', '2023-04-27 05:48:20', '回复信息2', '2023-04-27 05:48:20', '2023-04-27 05:48:20'),
	(3, 3, 2, '评价内容3', '2023-04-27 05:48:20', '回复信息3', '2023-04-27 05:48:20', '2023-04-27 05:48:20'),
	(4, 4, 2, '评价内容4', '2023-04-27 05:48:20', '回复信息4', '2023-04-27 05:48:20', '2023-04-27 05:48:20'),
	(5, 5, 1, '评价内容5', '2023-04-27 05:48:20', '回复信息5', '2023-04-27 05:48:20', '2023-04-27 05:48:20'),
	(6, 6, 3, '评价内容6', '2023-04-27 05:48:20', '回复信息6', '2023-04-27 05:48:20', '2023-04-27 05:48:20'),
	(7, 7, 2, '评价内容7', '2023-04-27 05:48:20', '回复信息7', '2023-04-27 05:48:20', '2023-04-27 05:48:20'),
	(8, 8, 1, '评价内容8', '2023-04-27 05:48:20', '回复信息8', '2023-04-27 05:48:20', '2023-04-27 05:48:20'),
	(9, 9, 1, '评价内容9', '2023-04-27 05:48:20', '回复信息9', '2023-04-27 05:48:20', '2023-04-27 05:48:20'),
	(10, 10, 3, '评价内容10', '2023-04-27 05:48:20', '回复信息10', '2023-04-27 05:48:20', '2023-04-27 05:48:20'),
	(11, 11, 3, '评价内容11', '2023-04-27 05:48:20', '回复信息11', '2023-04-27 05:48:20', '2023-04-27 05:48:20'),
	(12, 12, 1, '评价内容12', '2023-04-27 05:48:20', '回复信息12', '2023-04-27 05:48:20', '2023-04-27 05:48:20'),
	(13, 13, 3, '评价内容13', '2023-04-27 05:48:20', '回复信息13', '2023-04-27 05:48:20', '2023-04-27 05:48:20'),
	(14, 14, 2, '评价内容14', '2023-04-27 05:48:20', '回复信息14', '2023-04-27 05:48:20', '2023-04-27 05:48:20'),
	(15, 13, 4, '郭德纲是个的', '2023-04-27 07:03:44', '哈哈哈哈军', '2023-04-27 07:05:52', '2023-04-27 07:03:44');

DROP TABLE IF EXISTS `shangpin_order`;
CREATE TABLE IF NOT EXISTS `shangpin_order` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单编号 Search111 ',
  `address_id` int DEFAULT NULL COMMENT '收货地址 ',
  `shangpin_id` int DEFAULT NULL COMMENT '商品',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `buy_number` int DEFAULT NULL COMMENT '兑换数量',
  `shangpin_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '花费积分',
  `shangpin_order_courier_name` varchar(200) DEFAULT NULL COMMENT '快递公司',
  `shangpin_order_courier_number` varchar(200) DEFAULT NULL COMMENT '快递单号',
  `shangpin_order_types` int DEFAULT NULL COMMENT '订单类型 Search111 ',
  `shangpin_order_payment_types` int DEFAULT NULL COMMENT '支付类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='商品兑换';

DELETE FROM `shangpin_order`;
INSERT INTO `shangpin_order` (`id`, `shangpin_order_uuid_number`, `address_id`, `shangpin_id`, `yonghu_id`, `buy_number`, `shangpin_order_true_price`, `shangpin_order_courier_name`, `shangpin_order_courier_number`, `shangpin_order_types`, `shangpin_order_payment_types`, `insert_time`, `create_time`) VALUES
	(1, '1682577379192', 5, 12, 1, 1, 413.96, NULL, NULL, 101, 1, '2023-04-27 06:36:19', '2023-04-27 06:36:19'),
	(2, '1682578649525', 5, 8, 1, 1, 54.71, NULL, NULL, 101, 1, '2023-04-27 06:57:30', '2023-04-27 06:57:30'),
	(3, '1682578974230', 15, 5, 4, 1, 461.00, NULL, NULL, 101, 1, '2023-04-27 07:02:54', '2023-04-27 07:02:54'),
	(4, '1682578986307', 15, 8, 4, 2, 109.42, NULL, NULL, 101, 1, '2023-04-27 07:03:06', '2023-04-27 07:03:06'),
	(5, '1682579003409', 15, 8, 4, 2, 109.42, '顺丰', '5341354354', 103, 1, '2023-04-27 07:03:23', '2023-04-27 07:03:23'),
	(6, '1682579003409', 15, 13, 4, 1, 124.25, '疏风', '12481534156', 105, 1, '2023-04-27 07:03:23', '2023-04-27 07:03:23');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '学生id',
  `username` varchar(100) NOT NULL COMMENT '学生名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'a1', 'yonghu', '用户', 'j56kd7j6e7zhy61n18azy2bpmt3zeovf', '2023-04-27 06:10:25', '2024-08-13 07:16:42'),
	(2, 1, 'admin', 'users', '管理员', 'vzg54lftx8xwqyb8ucju4hmlw303g0ua', '2023-04-27 06:59:18', '2024-08-13 07:15:16'),
	(3, 4, 'a5', 'yonghu', '用户', 'ngshx2ey1eeh8sx4zwk1ri9g6pk86tbv', '2023-04-27 07:00:08', '2023-04-27 08:00:08');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '学生名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='管理员';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2023-04-27 05:48:15');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '用户邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '积分',
  `yonghu_content` longtext COMMENT '用户介绍',
  `jinyong_types` int DEFAULT NULL COMMENT '账户状态 Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_name`, `yonghu_phone`, `yonghu_id_number`, `yonghu_photo`, `sex_types`, `yonghu_email`, `new_money`, `yonghu_content`, `jinyong_types`, `create_time`) VALUES
	(1, '用户1', '123456', '用户姓名1', '17703786901', '410224199010102001', 'upload/yonghu1.jpg', 2, '1@qq.com', 254.78, '用户介绍1过大个搭嘎多个第三个', 1, '2023-04-27 05:48:20'),
	(2, '用户2', '123456', '用户姓名2', '17703786902', '410224199010102002', 'upload/yonghu2.jpg', 1, '2@qq.com', 623.77, '用户介绍2', 1, '2023-04-27 05:48:20'),
	(3, '用户3', '123456', '用户姓名3', '17703786903', '410224199010102003', 'upload/yonghu3.jpg', 2, '3@qq.com', 854.16, '用户介绍3', 1, '2023-04-27 05:48:20'),
	(4, '用户4', '123456', '张5', '17788889999', '444222333366669999', 'upload/1682578816214.jpg', 2, '44@qq.com', 139.45, 'gdagdsgds个是大纲的三个是', 2, '2023-04-27 07:00:03');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
