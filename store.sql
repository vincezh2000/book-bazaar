/*
 Navicat MySQL Data Transfer

 Source Server         : book
 Source Server Type    : MySQL
 Source Server Version : 80022
 Source Host           : localhost:3306
 Source Schema         : store

 Target Server Type    : MySQL
 Target Server Version : 80022
 File Encoding         : 65001

 Date: 18/06/2021 23:55:38
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_book
-- ----------------------------
DROP TABLE IF EXISTS `t_book`;
CREATE TABLE `t_book` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `author` varchar(50) NOT NULL,
  `price` decimal(11,2) NOT NULL,
  `sales` int NOT NULL,
  `stock` int NOT NULL,
  `img_path` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of t_book
-- ----------------------------
BEGIN;
INSERT INTO `t_book` VALUES (1, 'java从入门到放弃', 'mdh', 80.00, 10006, 3, 'static/img/default.jpg');
INSERT INTO `t_book` VALUES (2, '数据结构与算法', '严蔚敏', 78.50, 9, 10, 'static/img/default.jpg');
INSERT INTO `t_book` VALUES (3, 'Java从入门到精通', '龙伍', 68.00, 103, 48, 'static/img/default.jpg');
INSERT INTO `t_book` VALUES (4, '冰与火之歌', '乔治·马丁', 16.00, 106, 44, 'static/img/default.jpg');
INSERT INTO `t_book` VALUES (5, 'C++编程思想', 'Bruce', 45.50, 14, 95, 'static/img/default.jpg');
INSERT INTO `t_book` VALUES (6, '蛋炒饭', '周星星', 9.90, 12, 53, 'static/img/default.jpg');
INSERT INTO `t_book` VALUES (7, '撒哈拉的故事', '三毛', 66.50, 125, 535, 'static/img/default.jpg');
INSERT INTO `t_book` VALUES (8, 'Java编程思想', '陈昊鹏', 99.50, 47, 36, 'static/img/default.jpg');
INSERT INTO `t_book` VALUES (9, 'JavaScript从入门到精通', '刘智勇', 9.90, 85, 95, 'static/img/default.jpg');
INSERT INTO `t_book` VALUES (10, 'cocos2d-x游戏编程入门', '国', 49.00, 52, 62, 'static/img/default.jpg');
INSERT INTO `t_book` VALUES (11, 'C语言程序设计', '谭浩强', 28.00, 53, 73, 'static/img/default.jpg');
INSERT INTO `t_book` VALUES (12, 'Lua语言程序设计', '萨利姆斯奇', 51.50, 48, 82, 'static/img/default.jpg');
INSERT INTO `t_book` VALUES (13, '西游记', '罗贯中', 12.00, 19, 9999, 'static/img/default.jpg');
INSERT INTO `t_book` VALUES (14, '水浒传', '施耐庵', 33.05, 22, 88, 'static/img/default.jpg');
INSERT INTO `t_book` VALUES (15, '操作系统原理', '刘优', 133.05, 123, 187, 'static/img/default.jpg');
INSERT INTO `t_book` VALUES (16, '数据结构 java版', '封大神', 173.15, 21, 81, 'static/img/default.jpg');
INSERT INTO `t_book` VALUES (17, 'UNIX高级环境编程', '乐天', 99.15, 210, 810, 'static/img/default.jpg');
INSERT INTO `t_book` VALUES (18, 'javaScript高级编程', '国哥', 69.15, 210, 810, 'static/img/default.jpg');
INSERT INTO `t_book` VALUES (20, '人类简史', '赫拉利', 88.15, 20, 80, 'static/img/default.jpg');
INSERT INTO `t_book` VALUES (21, '哈利波特', '罗琳', 69.00, 50, 99, 'static/img/default.jpg');
COMMIT;

-- ----------------------------
-- Table structure for t_order
-- ----------------------------
DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order` (
  `order_id` varchar(50) NOT NULL,
  `create_time` datetime NOT NULL,
  `price` decimal(11,2) NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `user_id` int NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `t_order_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of t_order
-- ----------------------------
BEGIN;
INSERT INTO `t_order` VALUES ('1234567890', '2021-06-18 07:45:19', 100.00, 0, 1);
INSERT INTO `t_order` VALUES ('1234567891', '2021-06-18 07:35:26', 100.00, 0, 1);
INSERT INTO `t_order` VALUES ('1234567892', '2021-06-18 07:44:27', 100.00, 0, 1);
INSERT INTO `t_order` VALUES ('16240204209501', '2021-06-18 07:47:01', 249.05, 0, 1);
INSERT INTO `t_order` VALUES ('16240208304641', '2021-06-18 07:53:50', 2100.00, 0, 1);
INSERT INTO `t_order` VALUES ('16240213558711', '2021-06-18 08:02:36', 2100.00, 0, 1);
INSERT INTO `t_order` VALUES ('16240214408871', '2021-06-18 08:04:01', 84.00, 0, 1);
INSERT INTO `t_order` VALUES ('16240297053455', '2021-06-18 10:21:45', 192.00, 0, 5);
COMMIT;

-- ----------------------------
-- Table structure for t_order_item
-- ----------------------------
DROP TABLE IF EXISTS `t_order_item`;
CREATE TABLE `t_order_item` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `count` int NOT NULL,
  `price` decimal(11,2) DEFAULT NULL,
  `total_price` decimal(11,2) DEFAULT NULL,
  `order_id` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  CONSTRAINT `t_order_item_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `t_order` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of t_order_item
-- ----------------------------
BEGIN;
INSERT INTO `t_order_item` VALUES (4, 'java从入门到精通', 1, 100.00, 100.00, '1234567890');
INSERT INTO `t_order_item` VALUES (5, 'javaScript从入门到精通', 2, 100.00, 200.00, '1234567890');
INSERT INTO `t_order_item` VALUES (6, 'Netty入门', 1, 100.00, 100.00, '1234567890');
INSERT INTO `t_order_item` VALUES (7, 'Java从入门到精通', 1, 68.00, 68.00, '16240204209501');
INSERT INTO `t_order_item` VALUES (8, '冰与火之歌', 3, 16.00, 48.00, '16240204209501');
INSERT INTO `t_order_item` VALUES (9, '操作系统原理', 1, 133.05, 133.05, '16240204209501');
INSERT INTO `t_order_item` VALUES (10, 'java从入门到精通', 2, 1000.00, 2000.00, '16240208304641');
INSERT INTO `t_order_item` VALUES (11, '数据结构与算法', 1, 100.00, 100.00, '16240208304641');
INSERT INTO `t_order_item` VALUES (12, 'java从入门到精通', 2, 1000.00, 2000.00, '16240213558711');
INSERT INTO `t_order_item` VALUES (13, '数据结构与算法', 1, 100.00, 100.00, '16240213558711');
INSERT INTO `t_order_item` VALUES (14, 'Java从入门到精通', 1, 68.00, 68.00, '16240214408871');
INSERT INTO `t_order_item` VALUES (15, '冰与火之歌', 1, 16.00, 16.00, '16240214408871');
INSERT INTO `t_order_item` VALUES (16, 'java从入门到放弃', 1, 80.00, 80.00, '16240297053455');
INSERT INTO `t_order_item` VALUES (17, 'Java从入门到精通', 1, 68.00, 68.00, '16240297053455');
INSERT INTO `t_order_item` VALUES (18, '冰与火之歌', 1, 16.00, 16.00, '16240297053455');
INSERT INTO `t_order_item` VALUES (19, 'C语言程序设计', 1, 28.00, 28.00, '16240297053455');
COMMIT;

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of t_user
-- ----------------------------
BEGIN;
INSERT INTO `t_user` VALUES (1, 'admin', 'admin', 'admin@atguigu.com');
INSERT INTO `t_user` VALUES (2, 'wzg168', '123456', 'wzg168@qq.com');
INSERT INTO `t_user` VALUES (3, '1804030623', '1804030623', '1804030623@st.btbu.edu.cn');
INSERT INTO `t_user` VALUES (4, '1804030622', '1804030622', '1804030622@st.btbu.edu.cn');
INSERT INTO `t_user` VALUES (5, '1804030624', '1804030624', '1804030624@st.btbu.edu.cn');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
