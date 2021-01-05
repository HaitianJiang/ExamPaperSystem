/*
 Navicat Premium Data Transfer

 Source Server         : yueluz
 Source Server Type    : MySQL
 Source Server Version : 50718
 Source Host           : cdb-lgy538lc.cd.tencentcdb.com:10100
 Source Schema         : ExamPaperManageSystem

 Target Server Type    : MySQL
 Target Server Version : 50718
 File Encoding         : 65001

 Date: 03/01/2021 08:51:20
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for Detail
-- ----------------------------
DROP TABLE IF EXISTS `Detail`;
CREATE TABLE `Detail`  (
  `de_no` int(11) NOT NULL,
  `T-name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `T-kinds1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `T-kinds2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `T-kinds3` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `T-diff` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `T-sn` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `T-ss` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `T-tn` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `T-ts` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `T-dn` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `T-ds` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `T-1n` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `T-2n` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `T-3n` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`de_no`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of Detail
-- ----------------------------
INSERT INTO `Detail` VALUES (1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Detail` VALUES (2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Detail` VALUES (3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Detail` VALUES (4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Detail` VALUES (5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Detail` VALUES (6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Detail` VALUES (7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Detail` VALUES (8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Detail` VALUES (9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Detail` VALUES (10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Detail` VALUES (11, 'sad', '选择题', '填空题', '简答题', '普通', '2', '2', '2', '2', '2', '10', NULL, NULL, NULL);
INSERT INTO `Detail` VALUES (12, 'salsa', '选择题', '填空题', '简答题', '普通', '2', '2', '2', '2', '2', '10', NULL, NULL, NULL);
INSERT INTO `Detail` VALUES (13, 'sands', '选择题', '填空题', '简答题', '普通', '4', '2', '4', '2', '2', '10', NULL, NULL, NULL);
INSERT INTO `Detail` VALUES (14, 'skas', '选择题', '填空题', '简答题', '普通', '2', '2', '2', '2', '2', '10', NULL, NULL, NULL);
INSERT INTO `Detail` VALUES (15, 'sad', '选择题', '填空题', '简答题', '普通', '2', '2', '2', '2', '2', '10', NULL, NULL, NULL);
INSERT INTO `Detail` VALUES (16, 'sa d', '选择题', '填空题', '简答题', '普通', '2', '2', '2', '2', '2', '10', NULL, NULL, NULL);
INSERT INTO `Detail` VALUES (17, 'sad', '选择题', '填空题', '简答题', '普通', '2', '2', '2', '2', '2', '10', NULL, NULL, NULL);
INSERT INTO `Detail` VALUES (18, 'eqwweqw', '选择题', '填空题', '简答题', '普通', '2', '2', '2', '2', '2', '10', NULL, NULL, NULL);
INSERT INTO `Detail` VALUES (19, 'dd sa', '选择题', '填空题', '简答题', '普通', '2', '2', '2', '2', '2', '10', NULL, NULL, NULL);
INSERT INTO `Detail` VALUES (20, 'dasd', '选择题', '填空题', '简答题', '普通', '2', '2', '2', '2', '1', '10', NULL, NULL, NULL);
INSERT INTO `Detail` VALUES (21, 'csda', '选择题', '填空题', '100', '普通', '2', '2', '2', '2', '100', '100', NULL, NULL, NULL);
INSERT INTO `Detail` VALUES (24, NULL, '100', '100', '100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Detail` VALUES (25, NULL, '100', '100', '100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Detail` VALUES (26, NULL, '100', '100', '100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Detail` VALUES (27, NULL, '100', '100', '100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Detail` VALUES (28, NULL, '100', '100', '100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Detail` VALUES (29, NULL, '100', '100', '100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Detail` VALUES (30, NULL, '100', '100', '100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Detail` VALUES (31, NULL, '100', '100', '100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Detail` VALUES (32, NULL, '100', '100', '100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Detail` VALUES (33, 'qwe', '选择题', '填空题', '100', '普通', '2', '2', '2', '2', '100', '100', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for answer
-- ----------------------------
DROP TABLE IF EXISTS `answer`;
CREATE TABLE `answer`  (
  `ans_no` int(255) NOT NULL AUTO_INCREMENT COMMENT '答案编号',
  `ans_detail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '答案内容',
  `pro_no` int(255) NULL DEFAULT NULL COMMENT '答案对应习题编号 ',
  PRIMARY KEY (`ans_no`) USING BTREE,
  INDEX `pro_num_cons`(`pro_no`) USING BTREE,
  CONSTRAINT `pro_num_cons` FOREIGN KEY (`pro_no`) REFERENCES `problem` (`pro_no`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of answer
-- ----------------------------
INSERT INTO `answer` VALUES (2, '错', 11);
INSERT INTO `answer` VALUES (3, '选择A选项', 12);
INSERT INTO `answer` VALUES (4, '对', 13);
INSERT INTO `answer` VALUES (5, '错', 14);
INSERT INTO `answer` VALUES (6, '选择B选项', 15);
INSERT INTO `answer` VALUES (7, '选择C选项', 16);
INSERT INTO `answer` VALUES (8, '选择D选项', 17);
INSERT INTO `answer` VALUES (9, '选择A选项', 18);
INSERT INTO `answer` VALUES (10, '选择B选项', 19);
INSERT INTO `answer` VALUES (11, '选择C选项', 20);
INSERT INTO `answer` VALUES (12, '物理内存管理实验', 21);
INSERT INTO `answer` VALUES (13, '操作系统概述', 22);
INSERT INTO `answer` VALUES (14, '存储管理 进程管理', 23);
INSERT INTO `answer` VALUES (15, '处理机运行时间', 24);
INSERT INTO `answer` VALUES (16, '批处理操作系统', 25);
INSERT INTO `answer` VALUES (17, '分时操作系统', 26);
INSERT INTO `answer` VALUES (18, '所谓“多道程序设计”技术，即是通过软件的手段，允许在计算机内存中同时存放几道相互独立的作业程序，让它们对系统中的资源进行“共享”和“竞争”，以使系统中的各种资源尽可能地满负荷工作，从而提高整个计算机系统的使用效率。基于这种考虑，计算机科学家开始把CPU、存储器、外部设备以及各种软件都视为计算机系统的“资源”，并逐步设计出一种软件来管理这些资源，不仅使它们能够得到合理地使用，而且还要高效地使用。具有这种功能的软件就是“操作系统”。所以，“多道程序设计”的出现，加快了操作系统的诞生。', 27);
INSERT INTO `answer` VALUES (19, '运行态，就绪态，阻塞态', 28);
INSERT INTO `answer` VALUES (20, '在多道程序设计系统中，内存中存放多个程序，它们以交替的方式使用CPU。因此，从宏观上看，这些程序都开始了自己的工作。但由于CPU只有一个，在任何时刻CPU只能执行一个进程程序。所以这些进程程序的执行过程是交织在一起的。也就是说，从微观上看，每一个进程一会儿在向前走，一会儿又停步不前，处于一种“走走停停”的状态之中。', 29);
INSERT INTO `answer` VALUES (21, '特权指令和访管指令都是CPU指令系统中的指令，只是前者是一些只能在管态下执行的指令，后者是一条只能在目态下执行的指令。原语和系统调用命令都是操作系统中的功能程序，只是前者执行时不能被其他程序所打断，后者没有这个要求。操作系统中有些系统调用命令是以原语的形式出现的，例如创建进程就是一条原语式的系统调用命令。但并不是所有系统调用命令都是原语。因为如果那样的话，整个系统的并发性就不可能得到充分地发挥。', 30);
INSERT INTO `answer` VALUES (22, '创建进程原语的主要功能有以下三项。\r\n\r\n（1）为新建进程申请一个PCB。\r\n\r\n（2）将创建者（即父进程）提供的新建进程的信息填入PCB中。\r\n\r\n（3）将新建进程设置为就绪状态，并按照所采用的调度算法，把PCB排入就绪队列中。', 31);
INSERT INTO `answer` VALUES (23, '选择A选项', 32);
INSERT INTO `answer` VALUES (24, '选择A选项', 33);
INSERT INTO `answer` VALUES (25, '只要是涉及管理，就应该有管理的规则，没有规则就不成方圆。如果处于阻塞状态的一个进程，在它所等待的事件发生时就径直将它投入运行（也就是把CPU从当前运行进程的手中抢夺过来），那么系统就无法控制对CPU这种资源的管理和使用，进而也就失去了设置操作系统的作用。所以，阻塞状态的进程在它所等待的事件发生时，必须先进入就绪队列，然后再去考虑它使用CPU的问题。', 34);
INSERT INTO `answer` VALUES (26, '在采用线程技术的操作系统中，线程与进程的根本区别在于：进程是资源的分配单位，而线程是调度和执行单位。', 35);
INSERT INTO `answer` VALUES (27, '直接通信是固定在一对进程间进行的,而间接通信时以信箱为媒体实现通信。因此在send和receive原语中,第一个参数互不相同。直接通信时分别为接收者进程名和发送者进程名,而间接通情时均为信箱名。', 36);
INSERT INTO `answer` VALUES (28, '通过专门的通信机制实现进程间交换大量信息的通信方式称为进程通信。最基本的通信原语有send原语和receive原语，前者负责发送信件，后者负责接收信件。', 37);
INSERT INTO `answer` VALUES (29, '预防死锁、避免死锁、检测死锁 和解除死锁', 38);
INSERT INTO `answer` VALUES (30, '选择A选项', 39);

-- ----------------------------
-- Table structure for manager
-- ----------------------------
DROP TABLE IF EXISTS `manager`;
CREATE TABLE `manager`  (
  `mana_no` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '账号',
  `mana_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '姓名',
  `mana_pwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  PRIMARY KEY (`mana_no`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of manager
-- ----------------------------
INSERT INTO `manager` VALUES ('1001', 'my', '123');

-- ----------------------------
-- Table structure for problem
-- ----------------------------
DROP TABLE IF EXISTS `problem`;
CREATE TABLE `problem`  (
  `pro_no` int(255) NOT NULL AUTO_INCREMENT COMMENT '题目编号',
  `pro_detail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '题目题干',
  `option_A` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '选项A',
  `option_B` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT ' 选项B',
  `option_C` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT ' 选项C',
  `option_D` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '选项D',
  `pro_ansno` int(255) NOT NULL COMMENT '习题答案编号',
  `pro_keyw` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '关键字',
  `pro_dif` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '难度系数',
  `cha_no` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '所属章节编号',
  `cha_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '所属章节标题',
  `cha_mpiont` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '所属章节要点',
  `pro_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '习题类型',
  PRIMARY KEY (`pro_no`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 42 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of problem
-- ----------------------------
INSERT INTO `problem` VALUES (11, ' 一系统若当前处于全状态则，此系统将不会发生死锁。', NULL, NULL, NULL, NULL, 2, '1', '简单', '1', '引论', '操作系统的目标和作用', '填空题');
INSERT INTO `problem` VALUES (12, '关于段页式存储管理系统中的页表数，下面哪种说法比较准确？', '整个系统有一个', '整个系统有多个', '每个进程有一个', '每个进程有多个', 3, '非连续内存分配', '中等', '1', '引论', '操作系统的发展过程', '选择题');
INSERT INTO `problem` VALUES (13, '作业处于运行状态时，其程序一定在处理机上执行', NULL, NULL, NULL, NULL, 4, '4', '简单', '1', '引论', '操作系统的基本特性', '填空题');
INSERT INTO `problem` VALUES (14, '在消息缓冲通信中，消息队列属于临界资源', NULL, NULL, NULL, NULL, 5, '5', '简单', '1', '引论', '操作系统的主要功能', '填空题');
INSERT INTO `problem` VALUES (15, '在BFD和SFD分开的系统中，SFD中应记录下列哪类信息？', '文件名', '文件长度', '存取权限', '物理存储位置', 6, '6', '简单', '2', '进程', '前趋图和程序执行', '选择题');
INSERT INTO `problem` VALUES (16, '作业经过下面哪一个过程进入“后备”状态', '作业创建', '作业调度', '进程调度', '作业终止', 7, '7', '简单', '2', '进程', '进程的描述', '选择题');
INSERT INTO `problem` VALUES (17, 'Windows NT属于哪一类操作系统？', '单用户单任务', '单用户多任务', '单道批处理', '多用户', 8, '8', '中等', '2', '进程', '进程控制', '选择题');
INSERT INTO `problem` VALUES (18, '下列哪一条不是批处理系统的优点？', '吞吐量大', '资源利用率高', '系统开销小', '响应及时', 9, '9', '简单', '2', '进程', '进程同步', '选择题');
INSERT INTO `problem` VALUES (19, 'I/O请求完成会导致哪种进程状态演变？', 'A.就绪 → 执行', 'B.阻塞 → 就绪', 'C.阻塞 → 执行', 'D.执行 → 阻塞', 10, '10', '中等', '2', '进程', '进程同步', '选择题');
INSERT INTO `problem` VALUES (20, '流式文件内部没有记录的概念，可将其看作是', '数组', '记录', '字符串', '页面', 11, '11', '简单', '3', '线程', '线程的基本概念', '选择题');
INSERT INTO `problem` VALUES (21, '二进制串的一位对应一个', '物理文件', '逻辑文件', '物理块', '缓冲区', 12, '12', '困难', '3', '线程', '线程的实现', '选择题');
INSERT INTO `problem` VALUES (22, '有关抢夺资源预防死锁说法中不正确', NULL, NULL, NULL, NULL, 13, '13', '困难', '4', '虚存管理', '虚拟存储器概述', '填空题');
INSERT INTO `problem` VALUES (23, 'UNIX/XENIX中不退出系统而使自己成为另一用户的命令为', NULL, NULL, NULL, NULL, 14, '14', '中等', '5', '文件管理', '文件和文件系统', '填空题');
INSERT INTO `problem` VALUES (24, 'DOS操作系统是一种', NULL, NULL, NULL, NULL, 15, '15', '简单', '6', '输入输出系统', 'I/O设备和设备控制器', '填空题');
INSERT INTO `problem` VALUES (25, '如果一个操作系统在用户提交作业后，不提供交互能力，只追求计算机资源的利用率、大吞吐量和作业流程的自动化，则属于______操作系统。', NULL, NULL, NULL, NULL, 16, '16', '简单', '1', '引论', '操作系统的基本特性', '填空题');
INSERT INTO `problem` VALUES (26, '若一个操作系统具有很强的交互性，可同时供多个用户使用，则是_____操作系统。', NULL, NULL, NULL, NULL, 17, '17', '中等', '1', '引论', '操作系统的基本特性', '填空题');
INSERT INTO `problem` VALUES (27, '什么是“多道程序设计”技术？它对操作系统的形成起到什么作用？', NULL, NULL, NULL, NULL, 18, '18', '中等', '1', '引论', '操作系统的主要功能', '简答题');
INSERT INTO `problem` VALUES (28, '进程在执行过程中有3种基本状态，它们是_________、_________、________.', NULL, NULL, NULL, NULL, 19, '19', '简单', '2', '进程', '进程的描述', '填空题');
INSERT INTO `problem` VALUES (29, '在多道程序设计系统中，如何理解“内存中的多个程序的执行过程交织在一起，大家都在走走停停”这样一个现象？', NULL, NULL, NULL, NULL, 20, '20', '困难', '2', '进程', '进程控制', '简答题');
INSERT INTO `problem` VALUES (30, '什么是“原语”、“特权指令”、“系统调用命令”和“访管指令”？它们之间有无一定的联系？', NULL, NULL, NULL, NULL, 21, '21', '困难', '2', '进程', '进程控制', '简答题');
INSERT INTO `problem` VALUES (31, '试述创建进程原语的主要功能。', NULL, NULL, NULL, NULL, 22, '22', '中等', '2', '进程', '进程同步', '简答题');
INSERT INTO `problem` VALUES (32, '虚拟存储器的最大容量是由（）决定的。', '内、外存容量之和', '计算机系统的地址结构', '作业的相对地址空间', '作业的绝对地址空间', 23, '23', '简单', '4', '虚存管理', '虚拟存储器概述', '选择题');
INSERT INTO `problem` VALUES (33, '银行家算法是一种（）算法。', '死锁避免', '死锁防止', '死锁检测', '死锁解除', 24, '24', '简单', '3', '线程', '线程的基本概念', '选择题');
INSERT INTO `problem` VALUES (34, '处于阻塞状态的一个进程，它所等待的事件发生时，就把它的状态由阻塞改变为就绪，让它到就绪队列里排队，为什么不直接将它投入运行呢？', NULL, NULL, NULL, NULL, 25, '25', '中等', '2', '进程', '进程通信', '简答题');
INSERT INTO `problem` VALUES (35, '线程与进程的根本区别是什么?', NULL, NULL, NULL, NULL, 26, '26', '中等', '3', '线程', '线程的基本概念', '简答题');
INSERT INTO `problem` VALUES (36, '直接通信与间接通信有何区别?', NULL, NULL, NULL, NULL, 27, '27', '简单', '3', '线程', ' 线程的实现', '简答题');
INSERT INTO `problem` VALUES (37, '何谓进程通信?最基本的通信原语有哪些?', NULL, NULL, NULL, NULL, 28, '28', '困难', '2', '进程', '进程通信', '简答题');
INSERT INTO `problem` VALUES (38, '死锁的处理方法包括（  ）、（  ）、（  ）和（）。', NULL, NULL, NULL, NULL, 29, '29', '简单', '3', '线程', '线程的基本概念', '填空题');
INSERT INTO `problem` VALUES (39, '（）是指从作业提交系统到作业完成的时间间隔。', '周转时间 ', '响应时间', ' 等待时间', ' 运行时间', 30, ' 30', ' 简单', '3', '线程', '线程的实现', '填空题');
INSERT INTO `problem` VALUES (40, '3', '', '', '', '', 1, 'xcx', '4', '4', 's', 's', '填空题');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `stu_no` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '学号',
  `stu_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '学生姓名',
  `stu_pwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `stu_discipline` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '专业',
  `stu_grade` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '年级',
  PRIMARY KEY (`stu_no`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('201810001', '风拳前锋军', 'xyz', '计算机科学与技术', '18级');
INSERT INTO `student` VALUES ('201810002', '丘丘人暴徒', 'abcd', '计算机科学与技术', '18级');
INSERT INTO `student` VALUES ('201810003', '火深渊法师', 'abcd', '计算机科学与技术', '18级');
INSERT INTO `student` VALUES ('201810004', '安德留斯', 'abcd', '计算机科学与技术', '18级');
INSERT INTO `student` VALUES ('201810005', '提米の鸽', 'abcd', '计算机科学与技术', '18级');

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher`  (
  `tea_no` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '工号',
  `tea_pwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `tea_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '姓名',
  `tea_discipline` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '专业',
  `tea_mail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '邮箱',
  PRIMARY KEY (`tea_no`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('10001', 'bbbb', '钟离', '计算机科学与技术', '123@qut.edu.cn');
INSERT INTO `teacher` VALUES ('10002', 'abcd', '达达利亚', '计算机科学与技术', '456@qut.edu.cn');
INSERT INTO `teacher` VALUES ('10003', 'abcd', '狄卢克', '计算机科学与技术', '789@qut.edu.cn');

-- ----------------------------
-- Table structure for test
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test`  (
  `tst_no` int(255) NOT NULL AUTO_INCREMENT COMMENT '试卷编号',
  `tst_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '试卷名称',
  `tst_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成时间',
  `tst_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '试卷类型',
  `tst_dif` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '试卷难度',
  `tst_num` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '试题数量',
  `tst_score` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '试卷总分',
  `tst_detail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '试卷内容',
  `tst_stu_view` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '若为1，学生能够查看该试卷，默认0',
  `tst_stu_ans_view` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '若为1，学生能够查看该试卷答案，默认0',
  PRIMARY KEY (`tst_no`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of test
-- ----------------------------
INSERT INTO `test` VALUES (1, '操作系统习题一', '2020-12-14', '章节测试', '简单', '3', '100', '11 12 22', '1', '1');
INSERT INTO `test` VALUES (2, '操作系统期中考', '2020-11-20', '期中考试', '困难', '2', '100', '4 5 ', '1', '0');
INSERT INTO `test` VALUES (3, '操作系统期中考', '2020-11-20', '期中考试', '困难', '2', '100', '4 5 ', '1', '1');
INSERT INTO `test` VALUES (4, '操作系统期中考', '2020-11-20', '期中考试', '困难', '2', '100', '4 5 ', '0', '0');
INSERT INTO `test` VALUES (5, '操作系统期中考', '2020-11-20', '期中考试', '困难', '2', '100', '4 5 ', '0', '0');
INSERT INTO `test` VALUES (6, '操作系统期中考', '2020-11-20', '期中考试', '困难', '8', '100', '28 29 30 11 13 14 15 18', '1', '1');
INSERT INTO `test` VALUES (7, '操作系统期中考', '2020-11-20', '期中考试', '困难', '2', '100', '4 5 ', '0', '0');
INSERT INTO `test` VALUES (8, '操作系统期中考', '2020-11-20', '期中考试', '中等', '2', '100', '4 5 ', '0', '0');
INSERT INTO `test` VALUES (9, '操作系统期中考', '2020-11-20', '期中考试', '困难', '2', '100', '1 2 3', '1', '1');
INSERT INTO `test` VALUES (10, '操作系统期中考', '2020-11-20', '期中考试', '困难', '2', '100', '4 5 ', '0', NULL);
INSERT INTO `test` VALUES (11, 'sad', '2021-01-04', '小测验', '普通', '6', '28', '1 2 3', '1', '2');
INSERT INTO `test` VALUES (12, 'salsa', '2021-01-04', '小测验', '普通', '6', '28', NULL, '1', '2');
INSERT INTO `test` VALUES (13, 'sands', '2021-01-04', '小测验', '普通', '10', '36', '', '1', '0');
INSERT INTO `test` VALUES (14, 'skas', '2021-01-04', '小测验', '普通', '6', '28', '', '1', '0');
INSERT INTO `test` VALUES (15, 'sad', '2021-01-04', '小测验', '普通', '6', '28', '', '1', '0');
INSERT INTO `test` VALUES (16, 'sa d', '2021-01-04', '小测验', '普通', '6', '28', '', '1', '0');
INSERT INTO `test` VALUES (17, 'sad', '2021-01-04', '小测验', '普通', '6', '28', '', '1', '0');
INSERT INTO `test` VALUES (18, 'eqwweqw', '2021-01-04', '小测验', '普通', '6', '28', '', '1', '0');
INSERT INTO `test` VALUES (20, 'dasd', '2021-01-04', '小测验', '普通', '5', '18', '15123826', '1', '0');
INSERT INTO `test` VALUES (21, 'csda', '2021-01-04', '小测验', '普通', '104', '10008', '16 12 25 26 ', '1', '0');
INSERT INTO `test` VALUES (33, 'qwe', '2021-01-04', '小测验', '普通', '104', '10008', '20 12 11 26 ', '1', '0');

-- ----------------------------
-- Table structure for test_screen
-- ----------------------------
DROP TABLE IF EXISTS `test_screen`;
CREATE TABLE `test_screen`  (
  `tst_id` int(11) NOT NULL COMMENT '试卷id',
  `tst_chapter` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '试卷id对应的章节，一个id若有多个章节，就生成多行'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of test_screen
-- ----------------------------
INSERT INTO `test_screen` VALUES (1, '引论');
INSERT INTO `test_screen` VALUES (1, '进程');
INSERT INTO `test_screen` VALUES (1, '线程');

SET FOREIGN_KEY_CHECKS = 1;
