/*
 Navicat MySQL Data Transfer

 Source Server         : My_database
 Source Server Type    : MySQL
 Source Server Version : 80017
 Source Host           : localhost:3306
 Source Schema         : test_api

 Target Server Type    : MySQL
 Target Server Version : 80017
 File Encoding         : 65001

 Date: 07/09/2019 20:53:11
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(16) NOT NULL,
  `password` varchar(32) NOT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `lastedLoginTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO `users` VALUES (1, 'admin', 'admin1', '/public/images/1493205134560.png', NULL, '2019-09-07 19:10:54');
INSERT INTO `users` VALUES (2, 'user1', 'user11', '/public/images/1493203535918.png', '2019-09-07 20:52:37', '2019-09-07 18:45:22');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
