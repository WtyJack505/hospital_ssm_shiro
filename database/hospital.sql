/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50732
 Source Host           : localhost:3306
 Source Schema         : hospital

 Target Server Type    : MySQL
 Target Server Version : 50732
 File Encoding         : 65001

 Date: 24/08/2021 23:33:02
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

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
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ht_menu
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
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色表' ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '不同的用户对应不同的菜单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ht_role_menu
-- ----------------------------

-- ----------------------------
-- Table structure for ht_user
-- ----------------------------
DROP TABLE IF EXISTS `ht_user`;
CREATE TABLE `ht_user`  (
  `u_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `u_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `u_sex` int(2) NULL DEFAULT NULL,
  `u_age` int(100) NULL DEFAULT NULL,
  `u_phone` int(11) NULL DEFAULT NULL,
  `u_nickname` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `u_password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `u_type` int(11) NOT NULL COMMENT '类型',
  `u_status` int(2) NULL DEFAULT NULL,
  `u_createdate` date NULL DEFAULT NULL,
  `d_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门/组织ID',
  PRIMARY KEY (`u_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ht_user
-- ----------------------------
INSERT INTO `ht_user` VALUES (1, '王通阳', NULL, NULL, NULL, 'admin', '123456', 0, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for ht_user_role
-- ----------------------------
DROP TABLE IF EXISTS `ht_user_role`;
CREATE TABLE `ht_user_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `u_id` int(11) NOT NULL,
  `r_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户和角色的对应表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ht_user_role
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
