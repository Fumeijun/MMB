/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : wangpo

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2017-06-13 14:47:51
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `account`
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `acc_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `acc_lname` varchar(12) DEFAULT NULL COMMENT '账户名称',
  `acc_rname` varchar(12) DEFAULT NULL COMMENT '真实名字',
  `acc_gender` varchar(3) DEFAULT NULL COMMENT '用户性别',
  `acc_age` int(3) DEFAULT NULL COMMENT '用户年龄',
  `acc_pro` varchar(12) DEFAULT NULL COMMENT '用户职业',
  `acc_pay` varchar(10) DEFAULT NULL COMMENT '用户薪资',
  `acc_edu` varchar(10) DEFAULT NULL COMMENT '用户学历',
  `acc_idno` varchar(18) DEFAULT NULL COMMENT '身份证号码',
  `acc_tel` varchar(11) DEFAULT NULL COMMENT '用户电话号码',
  `acc_qq` varchar(12) DEFAULT NULL COMMENT '用户QQ号',
  `acc_mail` varchar(22) DEFAULT NULL COMMENT '用户邮箱',
  `acc_hob` varchar(24) DEFAULT NULL COMMENT '兴趣爱好',
  `acc_ava` varchar(24) DEFAULT NULL COMMENT '用户头像',
  `acc_addr` varchar(12) DEFAULT NULL COMMENT '用户地址',
  `acc_marr` varchar(2) DEFAULT NULL COMMENT '婚姻状况',
  `acc_page` varchar(24) DEFAULT NULL COMMENT '用户主页',
  `acc_chi` int(1) DEFAULT '0' COMMENT '有几个小孩',
  `acc_sta` int(1) DEFAULT '0' COMMENT '用户状态',
  `acc_type` int(1) DEFAULT '0' COMMENT '用户类型',
  PRIMARY KEY (`acc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of account
-- ----------------------------

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `adm_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '管理员ID',
  `adm_name` varchar(12) DEFAULT NULL COMMENT '管理员名',
  `adm_pwd` varchar(12) DEFAULT NULL COMMENT '密码',
  PRIMARY KEY (`adm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------

-- ----------------------------
-- Table structure for `event`
-- ----------------------------
DROP TABLE IF EXISTS `event`;
CREATE TABLE `event` (
  `e_id` int(12) NOT NULL AUTO_INCREMENT COMMENT '活动ID',
  `e_acc` int(15) DEFAULT NULL COMMENT '申请账户',
  `e_atime` date DEFAULT NULL COMMENT '申请时间',
  `e_sta` varchar(11) DEFAULT NULL COMMENT '活动状态',
  `e_stime` date DEFAULT NULL COMMENT '活动开始时间',
  `e_type` varchar(12) DEFAULT NULL COMMENT '活动类型',
  `e_maxqua` int(5) DEFAULT NULL COMMENT '最大参加人数',
  `e_model` varchar(11) DEFAULT NULL COMMENT '参加人',
  PRIMARY KEY (`e_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of event
-- ----------------------------

-- ----------------------------
-- Table structure for `eventlist`
-- ----------------------------
DROP TABLE IF EXISTS `eventlist`;
CREATE TABLE `eventlist` (
  `e_id` int(12) NOT NULL COMMENT '活动ID',
  `a_id` int(12) DEFAULT NULL COMMENT '参加人员',
  PRIMARY KEY (`e_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of eventlist
-- ----------------------------

-- ----------------------------
-- Table structure for `friend`
-- ----------------------------
DROP TABLE IF EXISTS `friend`;
CREATE TABLE `friend` (
  `acc_id` int(24) NOT NULL COMMENT '用户ID',
  `fr_id` int(24) DEFAULT NULL COMMENT '好友id',
  PRIMARY KEY (`acc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of friend
-- ----------------------------

-- ----------------------------
-- Table structure for `machlog`
-- ----------------------------
DROP TABLE IF EXISTS `machlog`;
CREATE TABLE `machlog` (
  `l_id` int(22) NOT NULL COMMENT '记录ID',
  `m_acc` int(12) DEFAULT NULL COMMENT '男方账户',
  `f_acc` int(12) DEFAULT NULL COMMENT '女方账户',
  `l_date` date DEFAULT NULL COMMENT '日期',
  `l_relation` varchar(12) DEFAULT NULL COMMENT '目前关系',
  PRIMARY KEY (`l_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of machlog
-- ----------------------------

-- ----------------------------
-- Table structure for `one4one`
-- ----------------------------
DROP TABLE IF EXISTS `one4one`;
CREATE TABLE `one4one` (
  `o_id` int(12) NOT NULL AUTO_INCREMENT COMMENT '表ID',
  `o_acc` int(15) DEFAULT NULL COMMENT '申请账户',
  `o_operator` varchar(12) DEFAULT NULL COMMENT '处理人',
  `o_sta` varchar(12) DEFAULT NULL COMMENT '处理状态',
  `o_cost` varchar(12) DEFAULT NULL COMMENT '缴纳状态',
  `o_remark` varchar(22) DEFAULT NULL COMMENT '备注',
  `o_money` decimal(8,0) DEFAULT NULL COMMENT '金额',
  PRIMARY KEY (`o_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of one4one
-- ----------------------------

-- ----------------------------
-- Table structure for `register`
-- ----------------------------
DROP TABLE IF EXISTS `register`;
CREATE TABLE `register` (
  `rid` int(10) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `rname` varchar(12) DEFAULT NULL COMMENT '账户名称',
  `rpwd` varchar(12) DEFAULT NULL,
  `rage` int(3) DEFAULT NULL COMMENT '用户年龄',
  `ridno` varchar(18) DEFAULT NULL COMMENT '身份证号码',
  `rtel` varchar(11) DEFAULT NULL COMMENT '用户电话号码',
  `rsta` int(1) DEFAULT '0' COMMENT '审核状态',
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of register
-- ----------------------------

-- ----------------------------
-- Table structure for `type`
-- ----------------------------
DROP TABLE IF EXISTS `type`;
CREATE TABLE `type` (
  `t_id` int(1) NOT NULL COMMENT '类型id',
  `t_type` varchar(12) DEFAULT NULL COMMENT '类型',
  `t_money` decimal(12,2) DEFAULT NULL COMMENT '金额',
  PRIMARY KEY (`t_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of type
-- ----------------------------
INSERT INTO `type` VALUES ('1', '普通会员', '20.00');
INSERT INTO `type` VALUES ('2', '黄金会员', '35.00');
INSERT INTO `type` VALUES ('3', '铂金会员', '50.00');
