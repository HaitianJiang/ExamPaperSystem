/*
 Navicat Premium Data Transfer

 Source Server         : SEPDMySQL
 Source Server Type    : MySQL
 Source Server Version : 50718
 Source Host           : cdb-lgy538lc.cd.tencentcdb.com:10100
 Source Schema         : ExamPaperManageSystem

 Target Server Type    : MySQL
 Target Server Version : 50718
 File Encoding         : 65001

 Date: 26/12/2020 08:44:01
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for answer
-- ----------------------------
DROP TABLE IF EXISTS `answer`;
CREATE TABLE `answer`  (
  `ans_no` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '答案编号',
  `ans_detail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '答案内容',
  `pro_no` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '答案对应习题编号 ',
  PRIMARY KEY (`ans_no`) USING BTREE,
  INDEX `pro_constrain`(`pro_no`) USING BTREE,
  CONSTRAINT `pro_constrain` FOREIGN KEY (`pro_no`) REFERENCES `problem` (`pro_no`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
