/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50636
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50636
File Encoding         : 65001

Date: 2017-09-26 22:34:06
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` int(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `sex` varchar(4) DEFAULT NULL,
  `birth` year(4) DEFAULT NULL,
  `department` varchar(20) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`,`birth`) USING BTREE,
  KEY `bir` (`birth`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('902', '张老二', '男', '1986', '中文系', '北京市昌平区');
INSERT INTO `student` VALUES ('903', '张三', '女', '1990', '中文系', '湖南省永州市');
INSERT INTO `student` VALUES ('904', '李四', '男', '1990', '英语系', '辽宁省阜新市');
INSERT INTO `student` VALUES ('905', '王五', '女', '1991', '英语系', '福建省厦门市');
INSERT INTO `student` VALUES ('906', '王六', '男', '1988', '计算机系', '湖南省衡阳市');
