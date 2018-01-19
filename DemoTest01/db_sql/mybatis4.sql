/*
Navicat MySQL Data Transfer

Source Server         : MySQL_root_mysql
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : mybatis

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-01-16 11:19:21
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for resources
-- ----------------------------
DROP TABLE IF EXISTS `resources`;
CREATE TABLE `resources` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `resources_id` int(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of resources
-- ----------------------------
INSERT INTO `resources` VALUES ('50', '1', '001');
INSERT INTO `resources` VALUES ('51', '2', '002');
INSERT INTO `resources` VALUES ('52', '3', '003');

-- ----------------------------
-- Table structure for ret
-- ----------------------------
DROP TABLE IF EXISTS `ret`;
CREATE TABLE `ret` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `projectId` varchar(255) DEFAULT NULL COMMENT '项目id',
  `canWrite` tinyint(4) DEFAULT NULL COMMENT '不能编辑',
  `canDelete` tinyint(4) DEFAULT NULL,
  `zoom` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ret
-- ----------------------------
INSERT INTO `ret` VALUES ('1', '1', '1', '1', 'w3');
INSERT INTO `ret` VALUES ('2', '2', '1', '1', 'm');
INSERT INTO `ret` VALUES ('9', '3', '1', '1', 'w3');
INSERT INTO `ret` VALUES ('10', '4', '1', '1', 'w3');
INSERT INTO `ret` VALUES ('11', '5', '1', '1', 'w3');

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
INSERT INTO `roles` VALUES ('1', '1', 'Project Manager');
INSERT INTO `roles` VALUES ('2', '2', 'Worker');
INSERT INTO `roles` VALUES ('3', '3', 'Stakeholder');
INSERT INTO `roles` VALUES ('4', '4', 'Customer');
INSERT INTO `roles` VALUES ('5', '5', 'Boss');

-- ----------------------------
-- Table structure for tasks
-- ----------------------------
DROP TABLE IF EXISTS `tasks`;
CREATE TABLE `tasks` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tasks_Id` int(11) DEFAULT NULL,
  `projectId` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `progress` int(3) DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=719 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tasks
-- ----------------------------
INSERT INTO `tasks` VALUES ('551', '1', '4', '123', '0', '0', '0', null, null, null, null, '0', 'STATUS_UNDEFINED', null, '1', '2018-01-10 00:00:00.000000', '1', '2018-01-10 23:59:59.000000', '0', '0', '0', '[]', '0');
INSERT INTO `tasks` VALUES ('626', '1', '1', '案例库软件开发', '50', '0', '0', null, null, '', '1', '1', 'STATUS_ACTIVE', null, '1', '2018-01-05 00:00:00.000000', '10', '2018-01-18 23:59:59.000000', '0', '0', '0', '[]', '1');
INSERT INTO `tasks` VALUES ('627', '2', '1', 'UI demo 设计及实现', '100', '0', '0', null, null, '', '2', '2', 'STATUS_DONE', null, '1', '2018-01-08 00:00:00.000000', '3', '2018-01-10 23:59:59.000000', '0', '0', '1', '[]', '0');
INSERT INTO `tasks` VALUES ('628', '3', '1', '数据库设计及实现', '30', '0', '0', '', '', '', '', '2', 'STATUS_ACTIVE', '2', '1', '2018-01-11 00:00:00.000000', '4', '2018-01-16 23:59:59.000000', '0', '0', '0', '[]', '0');
INSERT INTO `tasks` VALUES ('629', '4', '1', '故障参数管理', '0', '0', '0', '', '', '', '', '2', 'STATUS_SUSPENDED', null, '1', '2018-01-12 00:00:00.000000', '5', '2018-01-18 23:59:59.000000', '0', '0', '0', '[]', '0');
INSERT INTO `tasks` VALUES ('630', '5', '1', '案例管理', '0', '0', '0', '', '', '', '', '2', 'STATUS_SUSPENDED', null, '1', '2018-01-10 00:00:00.000000', '2', '2018-01-11 23:59:59.000000', '0', '0', '1', '[]', '0');
INSERT INTO `tasks` VALUES ('631', '6', '1', '其他', '0', '0', '0', '', '', '', '', '1', 'STATUS_UNDEFINED', null, '1', '2018-01-01 00:00:00.000000', '1', '2018-01-01 23:59:59.000000', '0', '0', '0', '[]', '1');
INSERT INTO `tasks` VALUES ('632', '7', '1', '基础功能发布', '20', '1', '0', '', '', '', '', '2', 'STATUS_UNDEFINED', null, '1', '2018-01-01 00:00:00.000000', '1', '2018-01-01 23:59:59.000000', '0', '0', '1', '[]', '0');
INSERT INTO `tasks` VALUES ('633', '8', '1', '10', '0', '0', '0', '', '', '', '', '1', 'STATUS_ACTIVE', null, '1', '2018-01-01 00:00:00.000000', '3', '2018-01-03 23:59:59.000000', '0', '0', '1', '[]', '1');
INSERT INTO `tasks` VALUES ('634', '9', '1', '9', '0', '0', '0', '', '', '', '', '2', 'STATUS_ACTIVE', null, '1', '2018-01-02 00:00:00.000000', '1', '2018-01-02 23:59:59.000000', '0', '0', '0', '[]', '0');
INSERT INTO `tasks` VALUES ('711', '1', '2', '22333', '0', '0', '0', null, null, '', '', '0', 'STATUS_UNDEFINED', '', '1', '2018-01-10 00:00:00.000000', '16', '2018-01-31 23:59:59.000000', '0', '0', '0', '[]', '1');
INSERT INTO `tasks` VALUES ('712', '2', '2', '23123', '0', '0', '0', '', '', '', '', '1', 'STATUS_UNDEFINED', '', '1', '2018-01-10 00:00:00.000000', '1', '2018-01-10 23:59:59.000000', '0', '0', '0', '[]', '0');
INSERT INTO `tasks` VALUES ('713', '3', '2', 'insert', '0', '0', '0', '', '', '', '', '1', 'STATUS_UNDEFINED', '', '1', '2018-01-10 00:00:00.000000', '1', '2018-01-10 23:59:59.000000', '0', '0', '0', '[]', '0');
INSERT INTO `tasks` VALUES ('714', '4', '2', '123', '0', '0', '0', '', '', '', '', '1', 'STATUS_UNDEFINED', '', '1', '2018-01-10 00:00:00.000000', '1', '2018-01-10 23:59:59.000000', '0', '0', '0', '[]', '0');
INSERT INTO `tasks` VALUES ('715', '5', '2', '45', '0', '0', '0', '', '', '', '', '1', 'STATUS_UNDEFINED', '', '1', '2018-01-10 00:00:00.000000', '1', '2018-01-10 23:59:59.000000', '0', '0', '0', '[]', '0');
INSERT INTO `tasks` VALUES ('716', '6', '2', '222222', '0', '0', '0', '', '', '', '', '1', 'STATUS_UNDEFINED', '4', '1', '2018-01-11 00:00:00.000000', '1', '2018-01-11 23:59:59.000000', '0', '0', '0', '[]', '0');
INSERT INTO `tasks` VALUES ('717', '7', '2', '555', '0', '0', '0', '', '', '', '', '1', 'STATUS_UNDEFINED', '', '1', '2018-01-10 00:00:00.000000', '1', '2018-01-10 23:59:59.000000', '0', '0', '0', '[]', '0');
INSERT INTO `tasks` VALUES ('718', '8', '2', '66', '0', '0', '0', '', '', '', '', '1', 'STATUS_UNDEFINED', '', '1', '2018-01-10 00:00:00.000000', '1', '2018-01-10 23:59:59.000000', '0', '0', '0', '[]', '0');
