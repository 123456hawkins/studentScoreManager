/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50730
Source Host           : localhost:3306
Source Database       : labtest

Target Server Type    : MYSQL
Target Server Version : 50730
File Encoding         : 65001

Date: 2022-01-09 16:06:30
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin_table
-- ----------------------------
DROP TABLE IF EXISTS `admin_table`;
CREATE TABLE `admin_table` (
  `id` bigint(25) NOT NULL AUTO_INCREMENT,
  `no` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `name` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_table
-- ----------------------------
INSERT INTO `admin_table` VALUES ('1', '20021', '111111', '李军');

-- ----------------------------
-- Table structure for course_table
-- ----------------------------
DROP TABLE IF EXISTS `course_table`;
CREATE TABLE `course_table` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `courseno` varchar(25) NOT NULL,
  `procno` varchar(25) NOT NULL,
  `coursename` varchar(25) NOT NULL,
  `credit` float(10,1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course_table
-- ----------------------------
INSERT INTO `course_table` VALUES ('1', 'c001', 'p001', 'web开发技术', '2.0');
INSERT INTO `course_table` VALUES ('2', 'c002', 'p001', '机器学习', '2.0');
INSERT INTO `course_table` VALUES ('3', 'c003', 'p001', '数据库原理', '2.5');
INSERT INTO `course_table` VALUES ('4', 'c004', 'p002', '微观金融学', '4.0');
INSERT INTO `course_table` VALUES ('5', 'c005', 'p002', '概率论', '4.0');
INSERT INTO `course_table` VALUES ('6', 'c006', 'p002', '计量金融学', '4.0');
INSERT INTO `course_table` VALUES ('7', 'c007', 'p003', '有机化学', '2.0');
INSERT INTO `course_table` VALUES ('8', 'c008', 'p003', '物理化学', '3.0');
INSERT INTO `course_table` VALUES ('9', 'c009', 'p003', '高分子化学', '2.5');
INSERT INTO `course_table` VALUES ('10', 'c010', 'p004', '物理基础', '2.0');
INSERT INTO `course_table` VALUES ('11', 'c011', 'p004', '流体力学', '3.5');
INSERT INTO `course_table` VALUES ('12', 'c012', 'p004', '弹道学', '4.0');
INSERT INTO `course_table` VALUES ('13', 'c013', 'p005', '理论力学', '3.0');
INSERT INTO `course_table` VALUES ('14', 'c014', 'p005', '电动力学', '2.0');
INSERT INTO `course_table` VALUES ('15', 'c015', 'p005', '恒星物理基础', '1.0');
INSERT INTO `course_table` VALUES ('16', 'c016', 'p006', '环境监测', '2.0');
INSERT INTO `course_table` VALUES ('17', 'c017', 'p006', '水污控制工程', '3.0');
INSERT INTO `course_table` VALUES ('18', 'c018', 'p006', '环境工程学', '4.0');
INSERT INTO `course_table` VALUES ('20', 'c020', 'p004', '金属演练', '2.0');
INSERT INTO `course_table` VALUES ('27', 'c999', 'p001', 'dfs', '2.0');

-- ----------------------------
-- Table structure for proc_table
-- ----------------------------
DROP TABLE IF EXISTS `proc_table`;
CREATE TABLE `proc_table` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `procno` varchar(25) NOT NULL,
  `procname` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of proc_table
-- ----------------------------
INSERT INTO `proc_table` VALUES ('1', 'p001', '计算机科学与技术');
INSERT INTO `proc_table` VALUES ('2', 'p002', '金融学');
INSERT INTO `proc_table` VALUES ('3', 'p003', '化学');
INSERT INTO `proc_table` VALUES ('4', 'p004', '物理学');
INSERT INTO `proc_table` VALUES ('5', 'p005', '天文学');
INSERT INTO `proc_table` VALUES ('6', 'p006', '环境科学');
INSERT INTO `proc_table` VALUES ('7', 'p007', '数学');
INSERT INTO `proc_table` VALUES ('8', 'p008', '临床医学');
INSERT INTO `proc_table` VALUES ('10', 'p013', '计算机大类');
INSERT INTO `proc_table` VALUES ('11', 'p014', '武术');
INSERT INTO `proc_table` VALUES ('12', 'p016', '艺术');
INSERT INTO `proc_table` VALUES ('13', 'p017', '精工仪器');
INSERT INTO `proc_table` VALUES ('14', 'p099', '应用英语');

-- ----------------------------
-- Table structure for score_table
-- ----------------------------
DROP TABLE IF EXISTS `score_table`;
CREATE TABLE `score_table` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `courseno` varchar(25) NOT NULL,
  `stuno` varchar(25) NOT NULL,
  `scoreusual` float(10,1) DEFAULT NULL,
  `scorefinal` float(10,1) DEFAULT NULL,
  `scoremakeup` float(10,1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of score_table
-- ----------------------------
INSERT INTO `score_table` VALUES ('1', 'c001', '2019131312', '100.0', '99.0', null);
INSERT INTO `score_table` VALUES ('2', 'c002', '2019131312', '99.0', '97.5', null);
INSERT INTO `score_table` VALUES ('8', 'c002', '2019130002', '99.0', '99.0', null);
INSERT INTO `score_table` VALUES ('12', 'c004', '2019130011', '94.0', '93.2', null);
INSERT INTO `score_table` VALUES ('15', 'c006', '2019130011', '99.0', '99.0', null);

-- ----------------------------
-- Table structure for student_table
-- ----------------------------
DROP TABLE IF EXISTS `student_table`;
CREATE TABLE `student_table` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `no` varchar(255) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `sex` varchar(50) DEFAULT NULL,
  `procname` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of student_table
-- ----------------------------
INSERT INTO `student_table` VALUES ('23', '2019130011', '黄月', '123', '男', '化学');
INSERT INTO `student_table` VALUES ('25', '2019131310', '李三', '123123', '女', '物理学');
INSERT INTO `student_table` VALUES ('26', '2019130001', '王军', '23123', '女', '化学');
INSERT INTO `student_table` VALUES ('27', '2019130002', '李军', '434324', '女', '计算机科学与技术');
INSERT INTO `student_table` VALUES ('28', '2019131312', '黄培', '123123', '男', '计算机科学与技术');
INSERT INTO `student_table` VALUES ('29', '2019130003', '王平', '23123', '女', '物理学');
INSERT INTO `student_table` VALUES ('30', '2019130004', '李凯', '34534', '男', '数学');
INSERT INTO `student_table` VALUES ('31', '2019130005', '张全蛋', '4534', '女', '临床医学');

-- ----------------------------
-- View structure for student_score
-- ----------------------------
DROP VIEW IF EXISTS `student_score`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `student_score` AS select `course_table`.`id` AS `id`,`course_table`.`credit` AS `credit`,`score_table`.`scoreusual` AS `scoreusual`,`score_table`.`scorefinal` AS `scorefinal`,`score_table`.`scoremakeup` AS `scoremakeup`,`course_table`.`coursename` AS `coursename`,`proc_table`.`procno` AS `procno`,`proc_table`.`procname` AS `procname`,`course_table`.`courseno` AS `courseno`,`student_table`.`no` AS `no` from (((`student_table` join `score_table`) join `proc_table`) join `course_table`) where ((`student_table`.`no` = convert(`score_table`.`stuno` using utf8mb4)) and (`student_table`.`procname` = convert(`proc_table`.`procname` using utf8mb4)) and (`proc_table`.`procno` = `course_table`.`procno`) and (`course_table`.`courseno` = `score_table`.`courseno`)) ;
