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

 Date: 16/09/2021 17:00:59
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
INSERT INTO `ht_deployment` VALUES (1, '总经办', NULL, '01', NULL, NULL, 0, '2021-09-14 10:12:36');
INSERT INTO `ht_deployment` VALUES (3, '技术部', NULL, '02', NULL, NULL, 0, '2021-09-14 10:13:05');
INSERT INTO `ht_deployment` VALUES (5, '产品部', NULL, '03', NULL, NULL, 0, '2021-09-14 10:13:29');
INSERT INTO `ht_deployment` VALUES (6, '测试组', NULL, '04', NULL, NULL, 0, '2021-09-14 10:13:50');

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
INSERT INTO `ht_resource` VALUES (1, '系统管理', NULL, NULL, '系统管理', NULL, NULL, 3, 0, 0, '2021-09-14 10:14:58');
INSERT INTO `ht_resource` VALUES (11, '资源管理', '/resource/manager', NULL, '资源管理', 'icon-ziyuanguanli1', 223, 3, 0, 0, '2021-09-14 01:00:00');
INSERT INTO `ht_resource` VALUES (12, '角色管理', '/role/manager', NULL, '角色管理', 'icon-jiaoseguanli', 223, 2, 0, 0, '2021-09-14 01:00:00');
INSERT INTO `ht_resource` VALUES (13, '用户信息管理', '/user/manager', NULL, '用户管理', 'icon-untitled85', 223, 1, 0, 0, '2021-09-14 01:00:00');
INSERT INTO `ht_resource` VALUES (14, '部门资源', '/organization/manager', NULL, '部门管理', 'icon-bumen1', 223, 4, 0, 0, '2021-09-14 01:00:00');
INSERT INTO `ht_resource` VALUES (111, '列表', '/resource/treeGrid', 'resource:list', '资源列表', 'define-list', 11, 0, 0, 1, '2021-09-14 01:00:00');
INSERT INTO `ht_resource` VALUES (112, '添加', '/resource/add', 'resource:add', '资源添加', 'define-add', 11, 0, 0, 1, '2021-09-14 01:00:00');
INSERT INTO `ht_resource` VALUES (113, '编辑', '/resource/edit', 'resource:edit', '资源编辑', 'define-edit', 11, 0, 0, 1, '2021-09-14 01:00:00');
INSERT INTO `ht_resource` VALUES (114, '删除', '/resource/delete', 'resource:delete', '资源删除', 'define-del', 11, 0, 0, 1, '2021-09-14 01:00:00');
INSERT INTO `ht_resource` VALUES (121, '列表', '/role/dataGrid', 'role:list', '角色列表', 'define-list', 12, 0, 0, 1, '2021-09-14 01:00:00');
INSERT INTO `ht_resource` VALUES (122, '添加', '/role/add', 'role:add', '角色添加', 'define-add', 12, 0, 0, 1, '2021-09-14 01:00:00');
INSERT INTO `ht_resource` VALUES (123, '编辑', '/role/edit', 'role:edit', '角色编辑', 'define-edit', 12, 0, 0, 1, '2021-09-14 01:00:00');
INSERT INTO `ht_resource` VALUES (124, '删除', '/role/delete', 'role:delete', '角色删除', 'define-del', 12, 0, 0, 1, '2021-09-14 01:00:00');
INSERT INTO `ht_resource` VALUES (125, '授权', '/role/grant', 'role:grant', '角色授权', 'define-true', 12, 0, 0, 1, '2021-09-14 01:00:00');
INSERT INTO `ht_resource` VALUES (131, '列表', '/user/dataGrid', 'user:list', '用户列表', 'define-list', 13, 0, 0, 1, '2021-09-14 01:00:00');
INSERT INTO `ht_resource` VALUES (132, '添加', '/user/add', 'user:add', '用户添加', 'define-add', 13, 0, 0, 1, '2021-09-14 01:00:00');
INSERT INTO `ht_resource` VALUES (133, '编辑', '/user/edit', 'user:edit', '用户编辑', 'define-edit', 13, 0, 0, 1, '2021-09-14 01:00:00');
INSERT INTO `ht_resource` VALUES (134, '删除', '/user/delete', 'user:delete', '用户删除', 'define-del', 13, 0, 0, 1, '2021-09-14 01:00:00');
INSERT INTO `ht_resource` VALUES (141, '列表', '/organization/treeGrid', 'organization:list', '用户列表', 'define-list', 14, 0, 0, 1, '2021-09-14 01:00:00');
INSERT INTO `ht_resource` VALUES (142, '添加', '/organization/add', 'organization:add', '部门添加', 'define-add', 14, 0, 0, 1, '2021-09-14 01:00:00');
INSERT INTO `ht_resource` VALUES (143, '编辑', '/organization/edit', 'organization:edit', '部门编辑', 'define-edit', 14, 0, 0, 1, '2021-09-14 01:00:00');
INSERT INTO `ht_resource` VALUES (144, '删除', '/organization/delete', 'organization:delete', '部门删除', 'define-del', 14, 0, 0, 1, '2021-09-14 01:00:00');
INSERT INTO `ht_resource` VALUES (221, '日志管理', '/log/manager', NULL, NULL, 'icon-rizhiguanli', 1, 1, 0, 0, '2021-09-14 01:00:00');
INSERT INTO `ht_resource` VALUES (222, '后台首页', '/main', '', NULL, 'icon-houtai', NULL, 0, 0, 0, '2021-09-14 01:00:00');
INSERT INTO `ht_resource` VALUES (223, '管理员管理', '', NULL, NULL, 'icon-guanliyuan', NULL, 1, 0, 0, '2021-09-14 01:00:00');
INSERT INTO `ht_resource` VALUES (224, '字典管理', '/dictionary/manager', '', NULL, 'icon-rizhiguanli1', 1, 0, 0, 0, '2021-09-14 01:00:00');
INSERT INTO `ht_resource` VALUES (225, '批量删除', '/log/batchDelete', 'log:batchDelete', NULL, 'define-del', 221, 1, 0, 1, '2021-09-14 01:00:00');
INSERT INTO `ht_resource` VALUES (226, '列表', '/log/dataGrid', 'log:list', NULL, 'define-list', 221, 0, 0, 1, '2021-09-14 01:00:00');

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
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of ht_role
-- ----------------------------
INSERT INTO `ht_role` VALUES (1, '超级管理员', '超级管理员', '0', 0);
INSERT INTO `ht_role` VALUES (2, '技术部门经理', '技术部门经理', '1', 0);
INSERT INTO `ht_role` VALUES (3, '测试账户', '测试账户', '0', 0);
INSERT INTO `ht_role` VALUES (4, '部门管理员', '部门管理员', '0', 0);

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
INSERT INTO `ht_role_resource` VALUES (1089, 3, 222);
INSERT INTO `ht_role_resource` VALUES (1090, 3, 223);
INSERT INTO `ht_role_resource` VALUES (1091, 3, 13);
INSERT INTO `ht_role_resource` VALUES (1092, 3, 131);
INSERT INTO `ht_role_resource` VALUES (1093, 3, 12);
INSERT INTO `ht_role_resource` VALUES (1094, 3, 121);
INSERT INTO `ht_role_resource` VALUES (1095, 3, 11);
INSERT INTO `ht_role_resource` VALUES (1096, 3, 111);
INSERT INTO `ht_role_resource` VALUES (1097, 3, 14);
INSERT INTO `ht_role_resource` VALUES (1098, 3, 141);
INSERT INTO `ht_role_resource` VALUES (1099, 3, 1);
INSERT INTO `ht_role_resource` VALUES (1100, 3, 224);
INSERT INTO `ht_role_resource` VALUES (1101, 3, 221);
INSERT INTO `ht_role_resource` VALUES (1102, 3, 226);
INSERT INTO `ht_role_resource` VALUES (1103, 1, 222);
INSERT INTO `ht_role_resource` VALUES (1104, 1, 223);
INSERT INTO `ht_role_resource` VALUES (1105, 1, 13);
INSERT INTO `ht_role_resource` VALUES (1106, 1, 131);
INSERT INTO `ht_role_resource` VALUES (1107, 1, 132);
INSERT INTO `ht_role_resource` VALUES (1108, 1, 133);
INSERT INTO `ht_role_resource` VALUES (1109, 1, 134);
INSERT INTO `ht_role_resource` VALUES (1110, 1, 12);
INSERT INTO `ht_role_resource` VALUES (1111, 1, 121);
INSERT INTO `ht_role_resource` VALUES (1112, 1, 122);
INSERT INTO `ht_role_resource` VALUES (1113, 1, 123);
INSERT INTO `ht_role_resource` VALUES (1114, 1, 124);
INSERT INTO `ht_role_resource` VALUES (1115, 1, 125);
INSERT INTO `ht_role_resource` VALUES (1116, 1, 11);
INSERT INTO `ht_role_resource` VALUES (1117, 1, 111);
INSERT INTO `ht_role_resource` VALUES (1118, 1, 112);
INSERT INTO `ht_role_resource` VALUES (1119, 1, 113);
INSERT INTO `ht_role_resource` VALUES (1120, 1, 114);
INSERT INTO `ht_role_resource` VALUES (1121, 1, 14);
INSERT INTO `ht_role_resource` VALUES (1122, 1, 141);
INSERT INTO `ht_role_resource` VALUES (1123, 1, 142);
INSERT INTO `ht_role_resource` VALUES (1124, 1, 143);
INSERT INTO `ht_role_resource` VALUES (1125, 1, 144);
INSERT INTO `ht_role_resource` VALUES (1126, 1, 1);
INSERT INTO `ht_role_resource` VALUES (1127, 1, 224);
INSERT INTO `ht_role_resource` VALUES (1128, 1, 221);
INSERT INTO `ht_role_resource` VALUES (1129, 1, 226);
INSERT INTO `ht_role_resource` VALUES (1130, 1, 225);
INSERT INTO `ht_role_resource` VALUES (1131, 2, 222);
INSERT INTO `ht_role_resource` VALUES (1132, 2, 223);
INSERT INTO `ht_role_resource` VALUES (1133, 2, 13);
INSERT INTO `ht_role_resource` VALUES (1134, 2, 131);
INSERT INTO `ht_role_resource` VALUES (1135, 2, 12);
INSERT INTO `ht_role_resource` VALUES (1136, 2, 121);
INSERT INTO `ht_role_resource` VALUES (1137, 2, 11);
INSERT INTO `ht_role_resource` VALUES (1138, 2, 111);
INSERT INTO `ht_role_resource` VALUES (1139, 2, 14);
INSERT INTO `ht_role_resource` VALUES (1140, 2, 141);
INSERT INTO `ht_role_resource` VALUES (1141, 2, 1);
INSERT INTO `ht_role_resource` VALUES (1142, 2, 224);
INSERT INTO `ht_role_resource` VALUES (1143, 2, 221);
INSERT INTO `ht_role_resource` VALUES (1144, 2, 226);
INSERT INTO `ht_role_resource` VALUES (1145, 4, 222);
INSERT INTO `ht_role_resource` VALUES (1146, 4, 223);
INSERT INTO `ht_role_resource` VALUES (1147, 4, 13);
INSERT INTO `ht_role_resource` VALUES (1148, 4, 131);
INSERT INTO `ht_role_resource` VALUES (1149, 4, 12);
INSERT INTO `ht_role_resource` VALUES (1150, 4, 121);
INSERT INTO `ht_role_resource` VALUES (1151, 4, 11);
INSERT INTO `ht_role_resource` VALUES (1152, 4, 111);
INSERT INTO `ht_role_resource` VALUES (1153, 4, 14);
INSERT INTO `ht_role_resource` VALUES (1154, 4, 141);
INSERT INTO `ht_role_resource` VALUES (1155, 4, 1);
INSERT INTO `ht_role_resource` VALUES (1156, 4, 224);
INSERT INTO `ht_role_resource` VALUES (1157, 4, 221);
INSERT INTO `ht_role_resource` VALUES (1158, 4, 226);

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
) ENGINE = InnoDB AUTO_INCREMENT = 193 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of ht_syslog
-- ----------------------------
INSERT INTO `ht_syslog` VALUES (191, '系统自动任务', '定时删除日志：0条', '', '', '', '', '2021-08-26 12:00:00');
INSERT INTO `ht_syslog` VALUES (192, '系统自动任务', '定时删除日志：0条', '', '', '', '', '2021-09-14 12:00:00');

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
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户和角色的对应表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of ht_user_role
-- ----------------------------
INSERT INTO `ht_user_role` VALUES (1, 1, 1);

SET FOREIGN_KEY_CHECKS = 1;
