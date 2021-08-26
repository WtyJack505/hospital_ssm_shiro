/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50724
 Source Host           : localhost:3306
 Source Schema         : hospital

 Target Server Type    : MySQL
 Target Server Version : 50724
 File Encoding         : 65001

 Date: 26/08/2021 17:58:06
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ht_deployment
-- ----------------------------
DROP TABLE IF EXISTS `ht_deployment`;
CREATE TABLE `ht_deployment`  (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `icon` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pid` bigint(19) NULL DEFAULT NULL,
  `seq` tinyint(2) NOT NULL DEFAULT 0,
  `createdate` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '组织机构' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of ht_deployment
-- ----------------------------

-- ----------------------------
-- Table structure for ht_menu
-- ----------------------------
DROP TABLE IF EXISTS `ht_menu`;
CREATE TABLE `ht_menu`  (
  `m_id` int(11) NOT NULL AUTO_INCREMENT,
  `m_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `m_parent_id` int(11) NOT NULL,
  `m_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`m_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜单表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of ht_menu
-- ----------------------------

-- ----------------------------
-- Table structure for ht_resource
-- ----------------------------
DROP TABLE IF EXISTS `ht_resource`;
CREATE TABLE `ht_resource`  (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `url` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `permission` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `icon` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pid` bigint(19) NULL DEFAULT NULL,
  `seq` tinyint(2) NOT NULL DEFAULT 0,
  `status` tinyint(2) NOT NULL DEFAULT 0,
  `resourcetype` tinyint(2) NOT NULL DEFAULT 0,
  `createdate` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 227 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '资源' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of ht_resource
-- ----------------------------

-- ----------------------------
-- Table structure for ht_role
-- ----------------------------
DROP TABLE IF EXISTS `ht_role`;
CREATE TABLE `ht_role`  (
  `r_id` int(11) NOT NULL AUTO_INCREMENT,
  `r_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色名',
  `r_desc` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色备注',
  `r_status` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色状态\r\n',
  `r_seq` tinyint(2) NULL DEFAULT NULL,
  PRIMARY KEY (`r_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of ht_role
-- ----------------------------

-- ----------------------------
-- Table structure for ht_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `ht_role_menu`;
CREATE TABLE `ht_role_menu`  (
  `rm_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '不同的用户对应不同的菜单' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of ht_role_menu
-- ----------------------------

-- ----------------------------
-- Table structure for ht_role_resource
-- ----------------------------
DROP TABLE IF EXISTS `ht_role_resource`;
CREATE TABLE `ht_role_resource`  (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(19) NOT NULL,
  `resource_id` bigint(19) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1159 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色资源' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of ht_role_resource
-- ----------------------------

-- ----------------------------
-- Table structure for ht_syslog
-- ----------------------------
DROP TABLE IF EXISTS `ht_syslog`;
CREATE TABLE `ht_syslog`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `loginName` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `operationName` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '操作',
  `operationClass` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `operationAddress` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '执行方法',
  `params` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '请求参数',
  `ip` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createTime` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 192 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of ht_syslog
-- ----------------------------
INSERT INTO `ht_syslog` VALUES (191, '系统自动任务', '定时删除日志：0条', '', '', '', '', '2021-08-26 12:00:00');

-- ----------------------------
-- Table structure for ht_user
-- ----------------------------
DROP TABLE IF EXISTS `ht_user`;
CREATE TABLE `ht_user`  (
  `u_id` bigint(19) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `u_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `u_sex` int(2) NULL DEFAULT NULL,
  `u_age` int(2) NULL DEFAULT NULL,
  `u_phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `u_nickname` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `u_password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `u_type` int(11) NOT NULL COMMENT '类型',
  `u_status` int(2) NULL DEFAULT NULL,
  `u_createdate` datetime NULL DEFAULT NULL,
  `d_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门/组织ID',
  PRIMARY KEY (`u_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of ht_user
-- ----------------------------
INSERT INTO `ht_user` VALUES (1, '王通阳', 1, 23, '17712403476', 'admin', '123456', 0, 1, '2021-08-25 10:35:19', '1');

-- ----------------------------
-- Table structure for ht_user_role
-- ----------------------------
DROP TABLE IF EXISTS `ht_user_role`;
CREATE TABLE `ht_user_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `u_id` int(11) NOT NULL,
  `r_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户和角色的对应表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of ht_user_role
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
