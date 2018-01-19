/*
Navicat MySQL Data Transfer

Source Server         : MySQL_root_mysql
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : mybatis

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-01-19 13:35:34
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
  `topic_id` varchar(25) DEFAULT NULL,
  `task_name` varchar(25) DEFAULT NULL,
  `progress` int(3) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `start` timestamp(6) NULL DEFAULT NULL,
  `end` timestamp(6) NULL DEFAULT NULL,
  `duration` int(4) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `depends` varchar(255) DEFAULT NULL,
  `canWrite` tinyint(4) DEFAULT NULL,
  `startIsMilestone` tinyint(255) DEFAULT NULL,
  `endIsMilestone` tinyint(4) DEFAULT NULL,
  `collapsed` tinyint(4) DEFAULT NULL,
  `assigs` varchar(1000) DEFAULT NULL,
  `hasChild` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of company_topic_task
-- ----------------------------

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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ret
-- ----------------------------
INSERT INTO `ret` VALUES ('2', '2', '1', '1', 'm');
INSERT INTO `ret` VALUES ('9', '3', '1', '1', 'w3');
INSERT INTO `ret` VALUES ('11', '5', '1', '1', 'w3');
INSERT INTO `ret` VALUES ('20', '4', '1', '1', 'w3');

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
