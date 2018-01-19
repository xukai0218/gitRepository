/*
Navicat MySQL Data Transfer

Source Server         : MySQL_root_mysql
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : mybatis

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-01-08 16:01:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for assignment
-- ----------------------------
DROP TABLE IF EXISTS `assignment`;
CREATE TABLE `assignment` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `taskId` int(11) DEFAULT NULL,
  `assignId` varchar(255) DEFAULT NULL,
  `resourceId` varchar(255) DEFAULT NULL,
  `roleId` varchar(255) DEFAULT NULL,
  `effort` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of assignment
-- ----------------------------
INSERT INTO `assignment` VALUES ('1', '1', '', '1', '2', '0');
INSERT INTO `assignment` VALUES ('2', '1', '', '2', '2', '0');
INSERT INTO `assignment` VALUES ('3', '2', '', '3', '3', '0');
INSERT INTO `assignment` VALUES ('4', '3', '', '4', '4', '0');
INSERT INTO `assignment` VALUES ('5', '4', '', '2', '1', '0');

-- ----------------------------
-- Table structure for items
-- ----------------------------
DROP TABLE IF EXISTS `items`;
CREATE TABLE `items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL COMMENT '商品名称',
  `price` float(10,1) NOT NULL COMMENT '商品定价',
  `detail` text COMMENT '商品描述',
  `pic` varchar(64) DEFAULT NULL COMMENT '商品图片',
  `createtime` datetime NOT NULL COMMENT '生产日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of items
-- ----------------------------
INSERT INTO `items` VALUES ('1', '台式机', '3000.0', '该电脑质量非常好！！！！', null, '2015-02-03 13:22:53');
INSERT INTO `items` VALUES ('2', '笔记本', '6000.0', '笔记本性能好，质量好！！！！！', null, '2015-02-09 13:22:57');
INSERT INTO `items` VALUES ('3', '背包', '200.0', '名牌背包，容量大质量好！！！！', null, '2015-02-06 13:23:02');

-- ----------------------------
-- Table structure for orderdetail
-- ----------------------------
DROP TABLE IF EXISTS `orderdetail`;
CREATE TABLE `orderdetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orders_id` int(11) NOT NULL COMMENT '订单id',
  `items_id` int(11) NOT NULL COMMENT '商品id',
  `items_num` int(11) DEFAULT NULL COMMENT '商品购买数量',
  PRIMARY KEY (`id`),
  KEY `FK_orderdetail_1` (`orders_id`),
  KEY `FK_orderdetail_2` (`items_id`),
  CONSTRAINT `FK_orderdetail_1` FOREIGN KEY (`orders_id`) REFERENCES `orders` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_orderdetail_2` FOREIGN KEY (`items_id`) REFERENCES `items` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orderdetail
-- ----------------------------
INSERT INTO `orderdetail` VALUES ('1', '3', '1', '1');
INSERT INTO `orderdetail` VALUES ('2', '3', '2', '3');
INSERT INTO `orderdetail` VALUES ('3', '4', '3', '4');
INSERT INTO `orderdetail` VALUES ('4', '4', '2', '3');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '下单用户id',
  `number` varchar(32) NOT NULL COMMENT '订单号',
  `createtime` datetime NOT NULL COMMENT '创建订单时间',
  `note` varchar(100) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  KEY `FK_orders_1` (`user_id`),
  CONSTRAINT `FK_orders_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('3', '1', '1000010', '2015-02-04 13:22:35', null);
INSERT INTO `orders` VALUES ('4', '1', '1000011', '2015-02-03 13:22:41', null);
INSERT INTO `orders` VALUES ('5', '10', '1000012', '2015-02-12 16:13:23', null);

-- ----------------------------
-- Table structure for resources
-- ----------------------------
DROP TABLE IF EXISTS `resources`;
CREATE TABLE `resources` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `resources_id` int(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of resources
-- ----------------------------
INSERT INTO `resources` VALUES ('44', '1', '001');
INSERT INTO `resources` VALUES ('45', '2', '002');

-- ----------------------------
-- Table structure for ret
-- ----------------------------
DROP TABLE IF EXISTS `ret`;
CREATE TABLE `ret` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `projectName` varchar(255) DEFAULT NULL,
  `resources` varchar(255) DEFAULT NULL,
  `roles` varchar(255) DEFAULT NULL,
  `selectRow` int(255) DEFAULT NULL,
  `canWrite` tinyint(4) DEFAULT NULL,
  `canDelete` tinyint(4) DEFAULT NULL,
  `canWriteOnParent` tinyint(4) DEFAULT NULL,
  `zoom` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ret
-- ----------------------------
INSERT INTO `ret` VALUES ('1', '测试1', null, null, '2', '1', '1', '0', 'w3');

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `roles_id` int(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES ('1', null, 'Project Manager');
INSERT INTO `roles` VALUES ('2', null, 'Worker');
INSERT INTO `roles` VALUES ('3', null, 'Stakeholder');
INSERT INTO `roles` VALUES ('4', null, 'Customer');
INSERT INTO `roles` VALUES ('5', null, 'Boss');

-- ----------------------------
-- Table structure for tasks
-- ----------------------------
DROP TABLE IF EXISTS `tasks`;
CREATE TABLE `tasks` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `tasks_Id` int(11) DEFAULT NULL,
  `projectName` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `progress` int(255) DEFAULT NULL,
  `progressByWorklog` tinyint(4) DEFAULT NULL,
  `relevance` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `typeId` varchar(255) DEFAULT NULL,
  `description` varchar(10000) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `depends` varchar(255) DEFAULT NULL,
  `canWrite` tinyint(4) DEFAULT NULL,
  `start` timestamp(6) NULL DEFAULT NULL,
  `duration` int(255) DEFAULT NULL,
  `end` timestamp(6) NULL DEFAULT NULL,
  `startIsMilestone` tinyint(255) DEFAULT NULL,
  `endIsMilestone` tinyint(4) DEFAULT NULL,
  `collapsed` tinyint(4) DEFAULT NULL,
  `assigs` varchar(10000) DEFAULT NULL,
  `hasChild` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=329 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tasks
-- ----------------------------
INSERT INTO `tasks` VALUES ('322', '1', null, '案例库软件开发', '50', '0', '0', null, null, '', '1', '1', 'STATUS_ACTIVE', null, '1', '2018-01-01 00:00:00.000000', '11', '2018-01-15 23:59:59.000000', '1', '1', '0', '[{\"effort\":0,\"id\":\"tmp_1515397886035_1\",\"resourceId\":\"2\",\"roleId\":\"1\"}]', '1');
INSERT INTO `tasks` VALUES ('323', '2', null, 'UI demo 设计及实现', '100', '0', '0', null, null, '', '2', '2', 'STATUS_DONE', null, '1', '2018-01-01 00:00:00.000000', '3', '2018-01-03 23:59:59.000000', '1', '1', '1', '[{\"effort\":0,\"id\":\"tmp_1515239067027_1\",\"resourceId\":\"2\",\"roleId\":\"1\"}]', '0');
INSERT INTO `tasks` VALUES ('324', '3', null, '数据库设计及实现', '30', '0', '0', '', '', '', '', '2', 'STATUS_ACTIVE', null, '1', '2018-01-02 00:00:00.000000', '4', '2018-01-05 23:59:59.000000', '0', '0', '0', '[]', '0');
INSERT INTO `tasks` VALUES ('325', '4', null, '故障参数管理', '0', '0', '0', '', '', '', '', '2', 'STATUS_SUSPENDED', null, '1', '2018-01-03 00:00:00.000000', '5', '2018-01-09 23:59:59.000000', '0', '0', '1', '[]', '0');
INSERT INTO `tasks` VALUES ('326', '5', null, '案例管理', '0', '0', '0', '', '', '', '', '2', 'STATUS_SUSPENDED', null, '1', '2018-01-02 00:00:00.000000', '2', '2018-01-03 23:59:59.000000', '0', '0', '0', '[]', '0');
INSERT INTO `tasks` VALUES ('327', '6', null, '其他', '0', '0', '0', '', '', '', '', '1', 'STATUS_ACTIVE', null, '1', '2018-01-01 00:00:00.000000', '1', '2018-01-01 23:59:59.000000', '0', '0', '0', '[]', '1');
INSERT INTO `tasks` VALUES ('328', '7', null, '基础功能发布', '20', '1', '0', '', '', '', '', '2', 'STATUS_SUSPENDED', null, '1', '2018-01-01 00:00:00.000000', '1', '2018-01-01 23:59:59.000000', '0', '0', '0', '[]', '0');

-- ----------------------------
-- Table structure for tasks_copy
-- ----------------------------
DROP TABLE IF EXISTS `tasks_copy`;
CREATE TABLE `tasks_copy` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `tasks_Id` int(11) DEFAULT NULL,
  `projectName` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `progress` int(255) DEFAULT NULL,
  `progressByWorklog` tinyint(4) DEFAULT NULL,
  `relevance` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `typeId` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `depends` varchar(255) DEFAULT NULL,
  `canWrite` tinyint(4) DEFAULT NULL,
  `start` timestamp(6) NULL DEFAULT NULL,
  `duration` int(255) DEFAULT NULL,
  `end` timestamp(6) NULL DEFAULT NULL,
  `startIsMilestone` tinyint(255) DEFAULT NULL,
  `endIsMilestone` tinyint(4) DEFAULT NULL,
  `collapsed` tinyint(4) DEFAULT NULL,
  `assigs` varchar(255) DEFAULT NULL,
  `hasChild` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tasks_copy
-- ----------------------------
INSERT INTO `tasks_copy` VALUES ('1', '1', '测试1', 'Gantt', '50', '0', '0', null, null, '123', '1', '0', 'STATUS_ACTIVE', '', '1', '2018-01-02 00:00:00.000000', '9', '2018-01-12 23:59:59.000000', '0', '0', '0', '[{\"id\":\"1\",\"resourceId\":\"1\",\"roleId\":\"2\",\"effort\":0},{\"id\":\"2\",\"resourceId\":\"1\",\"roleId\":\"2\",\"effort\":0}]', '1');
INSERT INTO `tasks_copy` VALUES ('2', '2', '测试1', 'coding2', '100', '0', '0', null, null, '', '3', '1', 'STATUS_DONE', null, '1', '2018-01-02 00:00:00.000000', '8', '2018-01-11 23:59:59.000000', '0', '0', '0', '[{\"id\":\"2\",\"resourceId\":\"1\",\"roleId\":\"2\",\"effort\":0}]', '1');
INSERT INTO `tasks_copy` VALUES ('3', '3', '测试1', 'gantt3', '25', '0', '0', null, null, null, '2', '2', 'STATUS_FAILED', null, '1', '2018-01-03 00:00:00.000000', '7', '2018-01-11 23:59:59.000000', '0', '0', '0', '[{\"id\":\"3\",\"resourceId\":\"1\",\"roleId\":\"2\",\"effort\":0}]', '0');
INSERT INTO `tasks_copy` VALUES ('4', '4', '测试1', 'task44', '10', '0', '0', null, null, '', '4', '0', 'STATUS_UNDEFINED', null, '1', '2017-10-30 00:00:00.000000', '3', '2017-11-01 23:59:59.000000', '0', '0', '0', '', '1');

-- ----------------------------
-- Table structure for test
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test
-- ----------------------------
INSERT INTO `test` VALUES ('5', '5');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL COMMENT '用户名称',
  `birthday` date DEFAULT NULL COMMENT '生日',
  `sex` char(1) DEFAULT NULL COMMENT '性别',
  `address` varchar(256) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '王五', null, '2', null);
INSERT INTO `user` VALUES ('10', '张三', '2014-07-10', '1', '北京市');
INSERT INTO `user` VALUES ('16', '张小明', null, '1', '河南郑州');
INSERT INTO `user` VALUES ('22', '陈小明', null, '1', '河南郑州');
INSERT INTO `user` VALUES ('24', '张三丰', null, '1', '河南郑州');
INSERT INTO `user` VALUES ('25', '陈小明', null, '1', '河南郑州');
INSERT INTO `user` VALUES ('26', '王五', null, null, null);
INSERT INTO `user` VALUES ('29', '12许', '2017-11-07', '1', '上海');
