/*
Navicat MySQL Data Transfer

Source Server         : root
Source Server Version : 50624
Source Host           : 127.0.0.1:3306
Source Database       : shiro

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2018-05-17 13:56:52
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sys_resources
-- ----------------------------
DROP TABLE IF EXISTS `sys_resources`;
CREATE TABLE `sys_resources` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `permission` varchar(100) DEFAULT NULL,
  `parent_id` bigint(20) unsigned DEFAULT '0',
  `sort` int(10) unsigned DEFAULT NULL,
  `external` tinyint(1) unsigned DEFAULT NULL COMMENT '是否外部链接',
  `available` tinyint(1) unsigned DEFAULT '0',
  `icon` varchar(100) DEFAULT NULL COMMENT '菜单图标',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_sys_resource_parent_id` (`parent_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of sys_resources
-- ----------------------------
INSERT INTO `sys_resources` VALUES ('1', '用户管理', 'menu', null, null, '0', '1', '0', '1', 'fa fa-users', '2018-05-16 17:02:54', '2018-05-16 17:02:54');
INSERT INTO `sys_resources` VALUES ('2', '用户列表', 'menu', '/users', 'users', '1', '1', '0', '1', null, '2017-12-22 13:56:15', '2018-05-16 14:44:20');
INSERT INTO `sys_resources` VALUES ('3', '新增用户', 'button', null, 'user:add', '2', '2', '0', '1', null, '2018-05-16 14:07:43', '2018-05-16 14:16:23');
INSERT INTO `sys_resources` VALUES ('4', '批量删除用户', 'button', null, 'user:batchDelete', '2', '3', '0', '1', null, '2018-05-16 14:12:23', '2018-05-16 14:16:35');
INSERT INTO `sys_resources` VALUES ('5', '编辑用户', 'button', null, 'user:edit', '2', '4', '0', '1', null, '2018-05-16 14:12:50', '2018-05-16 14:16:43');
INSERT INTO `sys_resources` VALUES ('6', '删除用户', 'button', null, 'user:delete', '2', '5', '0', '1', null, '2018-05-16 14:13:09', '2018-05-16 14:51:50');
INSERT INTO `sys_resources` VALUES ('7', '分配用户角色', 'button', null, 'user:allotRole', '2', '6', '0', '1', null, '2018-05-16 14:15:28', '2018-05-16 14:16:54');
INSERT INTO `sys_resources` VALUES ('8', '系统配置', 'menu', null, null, '0', '2', '0', '1', 'fa fa-cogs', '2017-12-20 16:40:06', '2017-12-20 16:40:08');
INSERT INTO `sys_resources` VALUES ('9', '资源管理', 'menu', '/resources', 'resources', '8', '1', '0', '1', null, '2017-12-22 15:31:05', '2017-12-22 15:31:05');
INSERT INTO `sys_resources` VALUES ('10', '新增资源', 'button', null, 'resource:add', '9', '2', '0', '1', null, '2018-05-16 14:07:43', '2018-05-16 14:16:23');
INSERT INTO `sys_resources` VALUES ('11', '批量删除资源', 'button', null, 'resource:batchDelete', '9', '3', '0', '1', null, '2018-05-16 14:12:23', '2018-05-16 14:16:35');
INSERT INTO `sys_resources` VALUES ('12', '编辑资源', 'button', null, 'resource:edit', '9', '4', '0', '1', null, '2018-05-16 14:12:50', '2018-05-16 14:16:43');
INSERT INTO `sys_resources` VALUES ('13', '删除资源', 'button', null, 'resource:delete', '9', '5', '0', '1', null, '2018-05-16 14:13:09', '2018-05-16 14:51:50');
INSERT INTO `sys_resources` VALUES ('14', '角色管理', 'menu', '/roles', 'roles', '8', '2', '0', '1', '', '2017-12-22 15:31:27', '2018-05-17 12:51:06');
INSERT INTO `sys_resources` VALUES ('15', '新增角色', 'button', null, 'role:add', '14', '2', '0', '1', null, '2018-05-16 14:07:43', '2018-05-16 14:16:23');
INSERT INTO `sys_resources` VALUES ('16', '批量删除角色', 'button', null, 'role:batchDelete', '14', '3', '0', '1', null, '2018-05-16 14:12:23', '2018-05-16 14:16:35');
INSERT INTO `sys_resources` VALUES ('17', '编辑角色', 'button', null, 'role:edit', '14', '4', '0', '1', null, '2018-05-16 14:12:50', '2018-05-16 14:16:43');
INSERT INTO `sys_resources` VALUES ('18', '删除角色', 'button', null, 'role:delete', '14', '5', '0', '1', null, '2018-05-16 14:13:09', '2018-05-16 14:51:50');
INSERT INTO `sys_resources` VALUES ('19', '分配角色资源', 'button', null, 'role:allotResource', '14', '6', '0', '1', null, '2018-05-17 10:04:21', '2018-05-17 10:04:21');
INSERT INTO `sys_resources` VALUES ('20', '数据监控', 'menu', '', '', null, '3', '0', '1', 'fa fa-heartbeat', '2018-05-17 12:38:20', '2018-05-17 12:53:06');
INSERT INTO `sys_resources` VALUES ('21', 'Druid监控', 'menu', '/druid/index.html', 'druid', '20', '1', '1', '1', '', '2018-05-17 12:46:37', '2018-05-17 12:52:33');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL COMMENT '角色名',
  `description` varchar(100) DEFAULT NULL,
  `available` tinyint(1) DEFAULT '0',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', 'role:root', '超级管理员', '1', '2017-12-20 16:40:24', '2017-12-20 16:40:26');
INSERT INTO `sys_role` VALUES ('2', 'role:admin', '管理员', '1', '2017-12-22 13:56:39', '2017-12-22 13:56:39');

-- ----------------------------
-- Table structure for sys_role_resources
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_resources`;
CREATE TABLE `sys_role_resources` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) unsigned NOT NULL,
  `resources_id` bigint(20) unsigned NOT NULL,
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of sys_role_resources
-- ----------------------------
INSERT INTO `sys_role_resources` VALUES ('27', '1', '20', '2018-05-17 12:52:41', '2018-05-17 12:52:41');
INSERT INTO `sys_role_resources` VALUES ('28', '1', '21', '2018-05-17 12:52:41', '2018-05-17 12:52:41');
INSERT INTO `sys_role_resources` VALUES ('29', '1', '1', '2018-05-17 12:52:41', '2018-05-17 12:52:41');
INSERT INTO `sys_role_resources` VALUES ('30', '1', '2', '2018-05-17 12:52:41', '2018-05-17 12:52:41');
INSERT INTO `sys_role_resources` VALUES ('31', '1', '3', '2018-05-17 12:52:41', '2018-05-17 12:52:41');
INSERT INTO `sys_role_resources` VALUES ('32', '1', '4', '2018-05-17 12:52:41', '2018-05-17 12:52:41');
INSERT INTO `sys_role_resources` VALUES ('33', '1', '5', '2018-05-17 12:52:41', '2018-05-17 12:52:41');
INSERT INTO `sys_role_resources` VALUES ('34', '1', '6', '2018-05-17 12:52:41', '2018-05-17 12:52:41');
INSERT INTO `sys_role_resources` VALUES ('35', '1', '7', '2018-05-17 12:52:41', '2018-05-17 12:52:41');
INSERT INTO `sys_role_resources` VALUES ('36', '1', '8', '2018-05-17 12:52:41', '2018-05-17 12:52:41');
INSERT INTO `sys_role_resources` VALUES ('37', '1', '9', '2018-05-17 12:52:41', '2018-05-17 12:52:41');
INSERT INTO `sys_role_resources` VALUES ('38', '1', '10', '2018-05-17 12:52:41', '2018-05-17 12:52:41');
INSERT INTO `sys_role_resources` VALUES ('39', '1', '11', '2018-05-17 12:52:41', '2018-05-17 12:52:41');
INSERT INTO `sys_role_resources` VALUES ('40', '1', '12', '2018-05-17 12:52:41', '2018-05-17 12:52:41');
INSERT INTO `sys_role_resources` VALUES ('41', '1', '13', '2018-05-17 12:52:41', '2018-05-17 12:52:41');
INSERT INTO `sys_role_resources` VALUES ('42', '1', '14', '2018-05-17 12:52:41', '2018-05-17 12:52:41');
INSERT INTO `sys_role_resources` VALUES ('43', '1', '15', '2018-05-17 12:52:41', '2018-05-17 12:52:41');
INSERT INTO `sys_role_resources` VALUES ('44', '1', '16', '2018-05-17 12:52:41', '2018-05-17 12:52:41');
INSERT INTO `sys_role_resources` VALUES ('45', '1', '17', '2018-05-17 12:52:41', '2018-05-17 12:52:41');
INSERT INTO `sys_role_resources` VALUES ('46', '1', '18', '2018-05-17 12:52:41', '2018-05-17 12:52:41');
INSERT INTO `sys_role_resources` VALUES ('47', '1', '19', '2018-05-17 12:52:41', '2018-05-17 12:52:41');
INSERT INTO `sys_role_resources` VALUES ('48', '2', '20', '2018-05-17 12:52:51', '2018-05-17 12:52:51');
INSERT INTO `sys_role_resources` VALUES ('49', '2', '21', '2018-05-17 12:52:51', '2018-05-17 12:52:51');
INSERT INTO `sys_role_resources` VALUES ('50', '2', '2', '2018-05-17 12:52:51', '2018-05-17 12:52:51');
INSERT INTO `sys_role_resources` VALUES ('51', '2', '3', '2018-05-17 12:52:51', '2018-05-17 12:52:51');
INSERT INTO `sys_role_resources` VALUES ('52', '2', '8', '2018-05-17 12:52:51', '2018-05-17 12:52:51');
INSERT INTO `sys_role_resources` VALUES ('53', '2', '9', '2018-05-17 12:52:51', '2018-05-17 12:52:51');
INSERT INTO `sys_role_resources` VALUES ('54', '2', '10', '2018-05-17 12:52:51', '2018-05-17 12:52:51');
INSERT INTO `sys_role_resources` VALUES ('55', '2', '14', '2018-05-17 12:52:51', '2018-05-17 12:52:51');
INSERT INTO `sys_role_resources` VALUES ('56', '2', '15', '2018-05-17 12:52:51', '2018-05-17 12:52:51');
INSERT INTO `sys_role_resources` VALUES ('57', '2', '1', '2018-05-17 12:52:51', '2018-05-17 12:52:51');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL COMMENT '登录密码',
  `nickname` varchar(30) DEFAULT '' COMMENT '昵称',
  `mobile` varchar(30) DEFAULT NULL COMMENT '手机号',
  `email` varchar(100) DEFAULT NULL COMMENT '邮箱地址',
  `qq` varchar(20) DEFAULT NULL COMMENT 'QQ',
  `birthday` date DEFAULT NULL COMMENT '生日',
  `gender` tinyint(2) unsigned DEFAULT NULL COMMENT '性别',
  `avatar` varchar(255) DEFAULT NULL COMMENT '头像地址',
  `user_type` enum('ROOT','ADMIN','USER') DEFAULT 'ADMIN' COMMENT '超级管理员、管理员、普通用户',
  `reg_ip` varchar(30) DEFAULT NULL COMMENT '注册IP',
  `last_login_ip` varchar(30) DEFAULT NULL COMMENT '最近登录IP',
  `last_login_time` datetime DEFAULT NULL COMMENT '最近登录时间',
  `login_count` int(10) unsigned DEFAULT '0' COMMENT '登录次数',
  `remark` varchar(100) DEFAULT NULL COMMENT '用户备注',
  `status` int(1) unsigned DEFAULT NULL COMMENT '用户状态',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '注册时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'root', 'CGUx1FN++xS+4wNDFeN6DA==', '超级管理员', '15151551516', '843977358@qq.com', '843977358', null, null, 'https://static.zhyd.me/static/img/favicon.ico', 'ROOT', null, '127.0.0.1', '2018-05-17 13:09:35', '228', null, '1', '2018-01-02 09:32:15', '2018-05-17 13:09:35');
INSERT INTO `sys_user` VALUES ('2', 'admin', 'gXp2EbyZ+sB/A6QUMhiUJQ==', '管理员', '15151551516', '843977358@qq.com', '843977358', null, null, null, 'ADMIN', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1', '2018-05-17 13:08:30', '13', null, '1', '2018-01-02 15:56:34', '2018-05-17 13:08:30');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('1', '1', '1', '2018-01-02 10:47:27', '2018-01-02 10:47:27');
INSERT INTO `sys_user_role` VALUES ('2', '2', '2', '2018-01-05 18:21:02', '2018-01-05 18:21:02');
