/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50720
 Source Host           : localhost:3306
 Source Schema         : bishe

 Target Server Type    : MySQL
 Target Server Version : 50720
 File Encoding         : 65001

 Date: 01/04/2019 11:59:59
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for add_credit_order
-- ----------------------------
DROP TABLE IF EXISTS `add_credit_order`;
CREATE TABLE `add_credit_order`  (
  `add_id` int(11) NOT NULL AUTO_INCREMENT,
  `stu_id` int(11) NULL DEFAULT NULL,
  `rule_id` int(11) NULL DEFAULT NULL,
  `score` int(255) NULL DEFAULT NULL,
  `status` int(255) NULL DEFAULT NULL,
  PRIMARY KEY (`add_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of add_credit_order
-- ----------------------------
INSERT INTO `add_credit_order` VALUES (1, 1, 1, 10, 0);
INSERT INTO `add_credit_order` VALUES (2, 2, 2, 1, 0);
INSERT INTO `add_credit_order` VALUES (3, 3, 3, 5, 0);

-- ----------------------------
-- Table structure for borrow
-- ----------------------------
DROP TABLE IF EXISTS `borrow`;
CREATE TABLE `borrow`  (
  `book_id` int(11) NOT NULL AUTO_INCREMENT,
  `book_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `status` int(255) NULL DEFAULT NULL,
  `price` decimal(10, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`book_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of borrow
-- ----------------------------
INSERT INTO `borrow` VALUES (1, '高等数学', 0, 10.00);
INSERT INTO `borrow` VALUES (2, 'python', 0, 20.00);
INSERT INTO `borrow` VALUES (3, 'SQL', 1, 20.00);

-- ----------------------------
-- Table structure for borrow_order
-- ----------------------------
DROP TABLE IF EXISTS `borrow_order`;
CREATE TABLE `borrow_order`  (
  `borrow_id` int(11) NOT NULL AUTO_INCREMENT,
  `stu_id` int(11) NULL DEFAULT NULL,
  `book_id` int(11) NULL DEFAULT NULL,
  `startdate` datetime(0) NULL DEFAULT NULL,
  `supposedate` datetime(0) NULL DEFAULT NULL,
  `actdate` datetime(0) NULL DEFAULT NULL,
  `penatly_status` int(255) NULL DEFAULT NULL,
  `appeal_status` int(255) NULL DEFAULT NULL,
  `return_status` int(255) NULL DEFAULT NULL,
  `price` decimal(10, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`borrow_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of borrow_order
-- ----------------------------
INSERT INTO `borrow_order` VALUES (1, 1, 3, '2019-03-20 21:11:23', '2019-03-15 21:33:15', '2019-03-15 21:33:19', 0, 1, 0, 20.00);

-- ----------------------------
-- Table structure for borrow_rule
-- ----------------------------
DROP TABLE IF EXISTS `borrow_rule`;
CREATE TABLE `borrow_rule`  (
  `education` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `day` int(255) NULL DEFAULT NULL,
  PRIMARY KEY (`education`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of borrow_rule
-- ----------------------------
INSERT INTO `borrow_rule` VALUES ('本科', 90);
INSERT INTO `borrow_rule` VALUES ('研究生', 120);

-- ----------------------------
-- Table structure for certification
-- ----------------------------
DROP TABLE IF EXISTS `certification`;
CREATE TABLE `certification`  (
  `certi_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_choice_id` int(11) NULL DEFAULT NULL,
  `status` binary(255) NULL DEFAULT NULL,
  PRIMARY KEY (`certi_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for credit
-- ----------------------------
DROP TABLE IF EXISTS `credit`;
CREATE TABLE `credit`  (
  `credit_id` int(11) NOT NULL AUTO_INCREMENT,
  `stu_id` int(11) NULL DEFAULT NULL,
  `year` year NULL DEFAULT NULL,
  `score` int(255) NULL DEFAULT NULL,
  PRIMARY KEY (`credit_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cultivate_plan
-- ----------------------------
DROP TABLE IF EXISTS `cultivate_plan`;
CREATE TABLE `cultivate_plan`  (
  `course_id` int(255) NOT NULL AUTO_INCREMENT,
  `course_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `major_id` int(255) NULL DEFAULT NULL,
  `credit` int(255) NULL DEFAULT NULL,
  `grade` int(255) NULL DEFAULT NULL,
  `semester` int(255) NULL DEFAULT NULL,
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '用数字代表时间 如果数字有重复 则不可重复选择',
  `certification` int(255) NULL DEFAULT NULL COMMENT '是否可以被认证',
  PRIMARY KEY (`course_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cultivate_plan
-- ----------------------------
INSERT INTO `cultivate_plan` VALUES (1, '大数据', 1, 3, 3, 1, '周一下午', 1);
INSERT INTO `cultivate_plan` VALUES (2, 'Python', 1, 2, 3, 2, '周三上午', 1);
INSERT INTO `cultivate_plan` VALUES (3, '基础会计', 3, 2, 2, 1, '周一上午', 0);
INSERT INTO `cultivate_plan` VALUES (4, '建模', 2, 2, 3, 2, '周五上午', 0);

-- ----------------------------
-- Table structure for dorm
-- ----------------------------
DROP TABLE IF EXISTS `dorm`;
CREATE TABLE `dorm`  (
  `bed_id` int(255) NOT NULL AUTO_INCREMENT,
  `dorm_id` int(255) NULL DEFAULT NULL,
  `status` int(255) NULL DEFAULT NULL,
  PRIMARY KEY (`bed_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 305 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dorm
-- ----------------------------
INSERT INTO `dorm` VALUES (101, 1, 1);
INSERT INTO `dorm` VALUES (102, 1, 1);
INSERT INTO `dorm` VALUES (103, 1, 0);
INSERT INTO `dorm` VALUES (104, 1, 0);
INSERT INTO `dorm` VALUES (201, 2, 1);
INSERT INTO `dorm` VALUES (202, 2, 1);
INSERT INTO `dorm` VALUES (203, 2, 0);
INSERT INTO `dorm` VALUES (204, 2, 0);
INSERT INTO `dorm` VALUES (301, 3, 0);
INSERT INTO `dorm` VALUES (302, 3, 0);
INSERT INTO `dorm` VALUES (303, 3, 0);
INSERT INTO `dorm` VALUES (304, 3, 0);

-- ----------------------------
-- Table structure for instructor
-- ----------------------------
DROP TABLE IF EXISTS `instructor`;
CREATE TABLE `instructor`  (
  `instructor_id` int(11) NOT NULL AUTO_INCREMENT,
  `instructor_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`instructor_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of instructor
-- ----------------------------
INSERT INTO `instructor` VALUES (1, '辅导员1');
INSERT INTO `instructor` VALUES (2, '辅导员2');

-- ----------------------------
-- Table structure for lost_history
-- ----------------------------
DROP TABLE IF EXISTS `lost_history`;
CREATE TABLE `lost_history`  (
  `lost_id` int(11) NOT NULL AUTO_INCREMENT,
  `borrow_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`lost_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for major
-- ----------------------------
DROP TABLE IF EXISTS `major`;
CREATE TABLE `major`  (
  `major_id` int(11) NOT NULL AUTO_INCREMENT,
  `major_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`major_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of major
-- ----------------------------
INSERT INTO `major` VALUES (1, '信管');
INSERT INTO `major` VALUES (2, '管科');
INSERT INTO `major` VALUES (3, '会计');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NULL DEFAULT NULL,
  `buyer_id` int(11) NULL DEFAULT NULL,
  `seller_comm` int(255) NULL DEFAULT NULL,
  `buyer_comm` int(255) NULL DEFAULT NULL,
  `price` int(10) NULL DEFAULT NULL,
  PRIMARY KEY (`order_id`) USING BTREE,
  INDEX `product_id`(`product_id`) USING BTREE,
  INDEX `buyer_id`(`buyer_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for pen_appeal
-- ----------------------------
DROP TABLE IF EXISTS `pen_appeal`;
CREATE TABLE `pen_appeal`  (
  `pen_appeal_id` int(11) NOT NULL,
  `stu_pen_id` int(11) NULL DEFAULT NULL,
  `teacher_id` int(11) NULL DEFAULT NULL,
  `status` int(255) NULL DEFAULT NULL,
  PRIMARY KEY (`pen_appeal_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for penalty
-- ----------------------------
DROP TABLE IF EXISTS `penalty`;
CREATE TABLE `penalty`  (
  `stu_pen_id` int(255) NOT NULL AUTO_INCREMENT,
  `borrow_id` int(11) NULL DEFAULT NULL,
  `pen_money` int(255) NULL DEFAULT NULL,
  `education` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`stu_pen_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products`  (
  `pro_id` int(11) NOT NULL AUTO_INCREMENT,
  `pro_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `price_org` int(255) NULL DEFAULT NULL,
  `price_cur` int(255) NULL DEFAULT NULL,
  `seller_id` int(11) NULL DEFAULT NULL,
  `location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `status` int(255) NULL DEFAULT NULL,
  PRIMARY KEY (`pro_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES (1, 'iPhone', 5999, 3999, 1, '操场', 0);
INSERT INTO `products` VALUES (2, 'iPad', 4999, 2999, 1, '南校门', 1);

-- ----------------------------
-- Table structure for rules
-- ----------------------------
DROP TABLE IF EXISTS `rules`;
CREATE TABLE `rules`  (
  `rule_id` int(11) NOT NULL AUTO_INCREMENT,
  `rule_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `score` int(255) NULL DEFAULT NULL,
  PRIMARY KEY (`rule_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rules
-- ----------------------------
INSERT INTO `rules` VALUES (1, 'A类期刊', 10);
INSERT INTO `rules` VALUES (2, '志愿者', 1);
INSERT INTO `rules` VALUES (3, '学生会会长', 5);

-- ----------------------------
-- Table structure for scholarship
-- ----------------------------
DROP TABLE IF EXISTS `scholarship`;
CREATE TABLE `scholarship`  (
  `sch_id` int(255) NOT NULL AUTO_INCREMENT,
  `student_choice_id` int(255) NULL DEFAULT NULL,
  `status` binary(255) NULL DEFAULT NULL,
  `stu_comm` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`sch_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `stu_id` int(255) NOT NULL AUTO_INCREMENT,
  `stu_pwd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `stu_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `stu_year` year NULL DEFAULT NULL,
  `major_id` int(255) NULL DEFAULT NULL,
  `money` int(255) NULL DEFAULT NULL,
  `stu_edu` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `bed_id` int(255) NULL DEFAULT NULL,
  `dorm_id` int(255) NULL DEFAULT NULL,
  `instructor_id` int(255) NULL DEFAULT NULL,
  PRIMARY KEY (`stu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES (1, '000', 'yyh', 2015, 1, 100, '本科', 101, 1, 1);
INSERT INTO `student` VALUES (2, '000', 'xxc', 2015, 1, 100, '本科', 201, 2, 1);
INSERT INTO `student` VALUES (3, '000', 'tjy', 2015, 1, 100, '本科', 102, 1, 1);
INSERT INTO `student` VALUES (4, '000', 'ljh', 2015, 1, 100, '本科', 202, 2, 1);

-- ----------------------------
-- Table structure for student_choice
-- ----------------------------
DROP TABLE IF EXISTS `student_choice`;
CREATE TABLE `student_choice`  (
  `student_choice_id` int(11) NOT NULL AUTO_INCREMENT,
  `teacher_choice_id` int(11) NULL DEFAULT NULL,
  `score` int(255) NULL DEFAULT NULL,
  `stu_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`student_choice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student_choice
-- ----------------------------
INSERT INTO `student_choice` VALUES (1, 1, 95, 1);
INSERT INTO `student_choice` VALUES (2, 1, 95, 2);
INSERT INTO `student_choice` VALUES (3, 1, 85, 3);
INSERT INTO `student_choice` VALUES (4, 1, 0, 4);

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher`  (
  `tea_id` int(255) NOT NULL AUTO_INCREMENT,
  `teacher_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `major_id` int(255) NULL DEFAULT NULL,
  PRIMARY KEY (`tea_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES (1, 'zxd', 1);

-- ----------------------------
-- Table structure for teacher_choice
-- ----------------------------
DROP TABLE IF EXISTS `teacher_choice`;
CREATE TABLE `teacher_choice`  (
  `teacher_choice_id` int(11) NOT NULL AUTO_INCREMENT,
  `teacher_id` int(11) NULL DEFAULT NULL,
  `course_id` int(11) NULL DEFAULT NULL,
  `course_year` year NULL DEFAULT NULL,
  `status` int(255) NULL DEFAULT NULL,
  `time` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `certification` int(255) NULL DEFAULT NULL,
  PRIMARY KEY (`teacher_choice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of teacher_choice
-- ----------------------------
INSERT INTO `teacher_choice` VALUES (1, 1, 1, 2018, 0, '周一下午', 1);

SET FOREIGN_KEY_CHECKS = 1;
