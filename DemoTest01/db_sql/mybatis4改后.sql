/*
Navicat MySQL Data Transfer

Source Server         : MySQL_root_mysql
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : mybatis

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-01-19 13:43:09
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for company_topic
-- ----------------------------
DROP TABLE IF EXISTS `company_topic`;
CREATE TABLE `company_topic` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `project_id` int(11) DEFAULT NULL COMMENT '项目id',
  `wbs_id` varchar(20) DEFAULT NULL COMMENT 'WBS编号',
  `topic_package_id` int(11) DEFAULT NULL COMMENT '课题包id',
  `creation_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '����ʱ��',
  `created_by` varchar(100) DEFAULT NULL,
  `last_update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `last_update_by` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of company_topic
-- ----------------------------
INSERT INTO `company_topic` VALUES ('1', '1', null, null, '2018-01-18 13:51:37', null, null, null);
INSERT INTO `company_topic` VALUES ('2', '2', null, null, '2018-01-18 13:51:52', null, null, null);
INSERT INTO `company_topic` VALUES ('3', '3', null, null, '2018-01-18 13:52:24', null, null, null);

-- ----------------------------
-- Table structure for company_topic_task
-- ----------------------------
DROP TABLE IF EXISTS `company_topic_task`;
CREATE TABLE `company_topic_task` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `topic_id` varchar(255) DEFAULT NULL,
  `task_name` varchar(255) DEFAULT NULL,
  `progress` int(3) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
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
  `assigs` varchar(1000) DEFAULT NULL,
  `hasChild` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=734 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of company_topic_task
-- ----------------------------
INSERT INTO `company_topic_task` VALUES ('626', '1', '1', '案例库软件开发', '50', '', '1', 'STATUS_ACTIVE', null, '1', '2018-01-05 00:00:00.000000', '10', '2018-01-18 23:59:59.000000', '0', '0', '0', '[]', '1');
INSERT INTO `company_topic_task` VALUES ('627', '2', '1', 'UI demo 设计及实现', '100', '', '2', 'STATUS_DONE', null, '1', '2018-01-08 00:00:00.000000', '3', '2018-01-10 23:59:59.000000', '0', '0', '1', '[]', '0');
INSERT INTO `company_topic_task` VALUES ('628', '3', '1', '数据库设计及实现', '30', '', '2', 'STATUS_ACTIVE', '2', '1', '2018-01-11 00:00:00.000000', '4', '2018-01-16 23:59:59.000000', '0', '0', '0', '[]', '0');
INSERT INTO `company_topic_task` VALUES ('629', '4', '1', '故障参数管理', '0', '', '2', 'STATUS_SUSPENDED', null, '1', '2018-01-12 00:00:00.000000', '5', '2018-01-18 23:59:59.000000', '0', '0', '0', '[]', '0');
INSERT INTO `company_topic_task` VALUES ('630', '5', '1', '案例管理', '0', '', '2', 'STATUS_SUSPENDED', null, '1', '2018-01-10 00:00:00.000000', '2', '2018-01-11 23:59:59.000000', '0', '0', '1', '[]', '0');
INSERT INTO `company_topic_task` VALUES ('631', '6', '1', '其他', '0', '', '1', 'STATUS_UNDEFINED', null, '1', '2018-01-01 00:00:00.000000', '1', '2018-01-01 23:59:59.000000', '0', '0', '0', '[]', '1');
INSERT INTO `company_topic_task` VALUES ('632', '7', '1', '基础功能发布', '20', '', '2', 'STATUS_UNDEFINED', null, '1', '2018-01-01 00:00:00.000000', '1', '2018-01-01 23:59:59.000000', '0', '0', '1', '[]', '0');
INSERT INTO `company_topic_task` VALUES ('633', '8', '1', '10', '0', '', '1', 'STATUS_ACTIVE', null, '1', '2018-01-01 00:00:00.000000', '3', '2018-01-03 23:59:59.000000', '0', '0', '1', '[]', '1');
INSERT INTO `company_topic_task` VALUES ('634', '9', '1', '9', '0', '', '2', 'STATUS_ACTIVE', null, '1', '2018-01-02 00:00:00.000000', '1', '2018-01-02 23:59:59.000000', '0', '0', '0', '[]', '0');
INSERT INTO `company_topic_task` VALUES ('711', '1', '2', '22333', '0', '', '0', 'STATUS_UNDEFINED', '', '1', '2018-01-10 00:00:00.000000', '16', '2018-01-31 23:59:59.000000', '0', '0', '0', '[]', '1');
INSERT INTO `company_topic_task` VALUES ('712', '2', '2', '23123', '0', '', '1', 'STATUS_UNDEFINED', '', '1', '2018-01-10 00:00:00.000000', '1', '2018-01-10 23:59:59.000000', '0', '0', '0', '[]', '0');
INSERT INTO `company_topic_task` VALUES ('713', '3', '2', 'insert', '0', '', '1', 'STATUS_UNDEFINED', '', '1', '2018-01-10 00:00:00.000000', '1', '2018-01-10 23:59:59.000000', '0', '0', '0', '[]', '0');
INSERT INTO `company_topic_task` VALUES ('714', '4', '2', '123', '0', '', '1', 'STATUS_UNDEFINED', '', '1', '2018-01-10 00:00:00.000000', '1', '2018-01-10 23:59:59.000000', '0', '0', '0', '[]', '0');
INSERT INTO `company_topic_task` VALUES ('715', '5', '2', '45', '0', '', '1', 'STATUS_UNDEFINED', '', '1', '2018-01-10 00:00:00.000000', '1', '2018-01-10 23:59:59.000000', '0', '0', '0', '[]', '0');
INSERT INTO `company_topic_task` VALUES ('716', '6', '2', '222222', '0', '', '1', 'STATUS_UNDEFINED', '4', '1', '2018-01-11 00:00:00.000000', '1', '2018-01-11 23:59:59.000000', '0', '0', '0', '[]', '0');
INSERT INTO `company_topic_task` VALUES ('717', '7', '2', '555', '0', '', '1', 'STATUS_UNDEFINED', '', '1', '2018-01-10 00:00:00.000000', '1', '2018-01-10 23:59:59.000000', '0', '0', '0', '[]', '0');
INSERT INTO `company_topic_task` VALUES ('718', '8', '2', '66', '0', '', '1', 'STATUS_UNDEFINED', '', '1', '2018-01-10 00:00:00.000000', '1', '2018-01-10 23:59:59.000000', '0', '0', '0', '[]', '0');
INSERT INTO `company_topic_task` VALUES ('728', '1', '4', '4', '0', '', '0', 'STATUS_UNDEFINED', null, '1', '2018-01-10 00:00:00.000000', '1', '2018-01-10 23:59:59.000000', '0', '0', '0', '[{\"effort\":0,\"id\":\"tmp_1516244177224_1\",\"resourceId\":\"1\",\"roleId\":\"1\"}]', '1');
INSERT INTO `company_topic_task` VALUES ('729', '2', '4', '42', '0', '', '1', 'STATUS_UNDEFINED', '', '1', '2018-01-10 00:00:00.000000', '1', '2018-01-10 23:59:59.000000', '0', '0', '0', '[{\"effort\":0,\"id\":\"tmp_1516244379714_1\",\"resourceId\":\"2\",\"roleId\":\"1\"}]', '0');
INSERT INTO `company_topic_task` VALUES ('730', '3', '4', '43', '0', '', '1', 'STATUS_UNDEFINED', '', '1', '2018-01-10 00:00:00.000000', '1', '2018-01-10 23:59:59.000000', '0', '0', '0', '[]', '0');
INSERT INTO `company_topic_task` VALUES ('731', '1', '4', '4', '0', '', '0', 'STATUS_UNDEFINED', null, '1', '2018-01-10 00:00:00.000000', '1', '2018-01-10 23:59:59.000000', '0', '0', '0', '[{\"effort\":0,\"id\":\"tmp_1516244177224_1\",\"resourceId\":\"1\",\"roleId\":\"1\"}]', '1');
INSERT INTO `company_topic_task` VALUES ('732', '2', '4', '42', '0', '', '1', 'STATUS_UNDEFINED', '', '1', '2018-01-10 00:00:00.000000', '1', '2018-01-10 23:59:59.000000', '0', '0', '0', '[{\"effort\":0,\"id\":\"tmp_1516244379714_1\",\"resourceId\":\"2\",\"roleId\":\"1\"}]', '0');
INSERT INTO `company_topic_task` VALUES ('733', '3', '4', '43', '0', '', '1', 'STATUS_UNDEFINED', '', '1', '2018-01-10 00:00:00.000000', '1', '2018-01-10 23:59:59.000000', '0', '0', '0', '[{\"effort\":0,\"id\":\"tmp_1516247282073_1\",\"resourceId\":\"3\",\"roleId\":\"1\"}]', '0');

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
