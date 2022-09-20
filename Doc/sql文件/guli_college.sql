/*
 Navicat Premium Data Transfer

 Source Server         : 192.168.56.11
 Source Server Type    : MySQL
 Source Server Version : 80027
 Source Host           : 192.168.56.11:3306
 Source Schema         : guli_college

 Target Server Type    : MySQL
 Target Server Version : 80027
 File Encoding         : 65001

 Date: 20/09/2022 11:17:11
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for acl_permission
-- ----------------------------
DROP TABLE IF EXISTS `acl_permission`;
CREATE TABLE `acl_permission`  (
  `id` char(19) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '编号',
  `pid` char(19) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '所属上级',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '名称',
  `type` tinyint(0) NOT NULL DEFAULT 0 COMMENT '类型(1:菜单,2:按钮)',
  `permission_value` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '权限值',
  `path` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '访问路径',
  `component` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '组件路径',
  `icon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '图标',
  `status` tinyint(0) NULL DEFAULT NULL COMMENT '状态(0:禁止,1:正常)',
  `is_deleted` tinyint(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '逻辑删除 1（true）已删除， 0（false）未删除',
  `gmt_create` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `gmt_modified` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_pid`(`pid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '权限' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of acl_permission
-- ----------------------------
INSERT INTO `acl_permission` VALUES ('1', '0', '全部数据', 0, NULL, NULL, NULL, '', NULL, 0, '2019-11-15 17:13:06', '2019-11-15 17:13:06');
INSERT INTO `acl_permission` VALUES ('1195268474480156673', '1', '系统管理', 1, NULL, '/acl', 'Layout', '', NULL, 0, '2019-11-15 17:13:06', '2019-11-18 13:54:25');
INSERT INTO `acl_permission` VALUES ('1195268616021139457', '1195268474480156673', '用户管理', 1, NULL, 'user/list', '/acl/user/list', '', NULL, 0, '2019-11-15 17:13:40', '2019-11-18 13:53:12');
INSERT INTO `acl_permission` VALUES ('1195268788138598401', '1195268474480156673', '角色管理', 1, NULL, 'role/list', '/acl/role/list', NULL, NULL, 0, '2019-11-15 17:14:21', '2019-11-15 17:14:21');
INSERT INTO `acl_permission` VALUES ('1195268893830864898', '1195268474480156673', '菜单管理', 1, NULL, 'menu/list', '/acl/menu/list', NULL, NULL, 0, '2019-11-15 17:14:46', '2019-11-15 17:14:46');
INSERT INTO `acl_permission` VALUES ('1195269143060602882', '1195268616021139457', '查看', 2, 'user.list', '', '', NULL, NULL, 0, '2019-11-15 17:15:45', '2019-11-17 21:57:16');
INSERT INTO `acl_permission` VALUES ('1195269295926206466', '1195268616021139457', '添加', 2, 'user.add', 'user/add', '/acl/user/form', NULL, NULL, 0, '2019-11-15 17:16:22', '2019-11-15 17:16:22');
INSERT INTO `acl_permission` VALUES ('1195269473479483394', '1195268616021139457', '修改', 2, 'user.update', 'user/update/:id', '/acl/user/form', NULL, NULL, 0, '2019-11-15 17:17:04', '2019-11-15 17:17:04');
INSERT INTO `acl_permission` VALUES ('1195269547269873666', '1195268616021139457', '删除', 2, 'user.remove', '', '', NULL, NULL, 0, '2019-11-15 17:17:22', '2019-11-15 17:17:22');
INSERT INTO `acl_permission` VALUES ('1195269821262782465', '1195268788138598401', '修改', 2, 'role.update', 'role/update/:id', '/acl/role/form', NULL, NULL, 0, '2019-11-15 17:18:27', '2019-11-15 17:19:53');
INSERT INTO `acl_permission` VALUES ('1195269903542444034', '1195268788138598401', '查看', 2, 'role.list', '', '', NULL, NULL, 0, '2019-11-15 17:18:47', '2019-11-15 17:18:47');
INSERT INTO `acl_permission` VALUES ('1195270037005197313', '1195268788138598401', '添加', 2, 'role.add', 'role/add', '/acl/role/form', NULL, NULL, 0, '2019-11-15 17:19:19', '2019-11-18 11:05:42');
INSERT INTO `acl_permission` VALUES ('1195270442602782721', '1195268788138598401', '删除', 2, 'role.remove', '', '', NULL, NULL, 0, '2019-11-15 17:20:55', '2019-11-15 17:20:55');
INSERT INTO `acl_permission` VALUES ('1195270621548568578', '1195268788138598401', '角色权限', 2, 'role.acl', 'role/distribution/:id', '/acl/role/roleForm', NULL, NULL, 0, '2019-11-15 17:21:38', '2019-11-15 17:21:38');
INSERT INTO `acl_permission` VALUES ('1195270744097742849', '1195268893830864898', '查看', 2, 'permission.list', '', '', NULL, NULL, 0, '2019-11-15 17:22:07', '2019-11-15 17:22:07');
INSERT INTO `acl_permission` VALUES ('1195270810560684034', '1195268893830864898', '添加', 2, 'permission.add', '', '', NULL, NULL, 0, '2019-11-15 17:22:23', '2019-11-15 17:22:23');
INSERT INTO `acl_permission` VALUES ('1195270862100291586', '1195268893830864898', '修改', 2, 'permission.update', '', '', NULL, NULL, 0, '2019-11-15 17:22:35', '2019-11-15 17:22:35');
INSERT INTO `acl_permission` VALUES ('1195270887933009922', '1195268893830864898', '删除', 2, 'permission.remove', '', '', NULL, NULL, 0, '2019-11-15 17:22:41', '2019-11-15 17:22:41');
INSERT INTO `acl_permission` VALUES ('1195349439240048642', '1', '讲师管理', 1, NULL, '/teacher', 'Layout', NULL, NULL, 0, '2019-11-15 22:34:49', '2019-11-15 22:34:49');
INSERT INTO `acl_permission` VALUES ('1195349699995734017', '1195349439240048642', '讲师列表', 1, '', 'table', '/edu/teacher/list', '', NULL, 0, '2019-11-15 22:35:52', '2019-11-15 22:35:52');
INSERT INTO `acl_permission` VALUES ('1195349810561781761', '1195349439240048642', '添加讲师', 1, '', 'save', '/edu/teacher/save', '', NULL, 0, '2019-11-15 22:36:18', '2019-11-15 22:36:18');
INSERT INTO `acl_permission` VALUES ('1195349876252971010', '1195349810561781761', '添加', 2, 'teacher.add', '', '', NULL, NULL, 0, '2019-11-15 22:36:34', '2019-11-15 22:36:34');
INSERT INTO `acl_permission` VALUES ('1195349979797753857', '1195349699995734017', '查看', 2, 'teacher.list', '', '', NULL, NULL, 0, '2019-11-15 22:36:58', '2019-11-15 22:36:58');
INSERT INTO `acl_permission` VALUES ('1195350117270261762', '1195349699995734017', '修改', 2, 'teacher.update', 'edit/:id', '/edu/teacher/save', NULL, NULL, 0, '2019-11-15 22:37:31', '2019-11-15 22:37:31');
INSERT INTO `acl_permission` VALUES ('1195350188359520258', '1195349699995734017', '删除', 2, 'teacher.remove', '', '', NULL, NULL, 0, '2019-11-15 22:37:48', '2019-11-15 22:37:48');
INSERT INTO `acl_permission` VALUES ('1195350299365969922', '1', '课程分类', 1, NULL, '/subject', 'Layout', NULL, NULL, 0, '2019-11-15 22:38:15', '2019-11-15 22:38:15');
INSERT INTO `acl_permission` VALUES ('1195350397751758850', '1195350299365969922', '课程分类列表', 1, NULL, 'list', '/edu/subject/list', NULL, NULL, 0, '2019-11-15 22:38:38', '2019-11-15 22:38:38');
INSERT INTO `acl_permission` VALUES ('1195350500512206850', '1195350299365969922', '导入课程分类', 1, NULL, 'save', '/edu/subject/save', NULL, NULL, 0, '2019-11-15 22:39:03', '2019-11-15 22:39:03');
INSERT INTO `acl_permission` VALUES ('1195350612172967938', '1195350397751758850', '查看', 2, 'subject.list', '', '', NULL, NULL, 0, '2019-11-15 22:39:29', '2019-11-15 22:39:29');
INSERT INTO `acl_permission` VALUES ('1195350687590748161', '1195350500512206850', '导入', 2, 'subject.import', '', '', NULL, NULL, 0, '2019-11-15 22:39:47', '2019-11-15 22:39:47');
INSERT INTO `acl_permission` VALUES ('1195350831744782337', '1', '课程管理', 1, NULL, '/course', 'Layout', NULL, NULL, 0, '2019-11-15 22:40:21', '2019-11-15 22:40:21');
INSERT INTO `acl_permission` VALUES ('1195350919074385921', '1195350831744782337', '课程列表', 1, NULL, 'list', '/edu/course/list', NULL, NULL, 0, '2019-11-15 22:40:42', '2019-11-15 22:40:42');
INSERT INTO `acl_permission` VALUES ('1195351020463296513', '1195350831744782337', '发布课程', 1, NULL, 'info', '/edu/course/info', NULL, NULL, 0, '2019-11-15 22:41:06', '2019-11-15 22:41:06');
INSERT INTO `acl_permission` VALUES ('1195351159672246274', '1195350919074385921', '完成发布', 2, 'course.publish', 'publish/:id', '/edu/course/publish', NULL, NULL, 0, '2019-11-15 22:41:40', '2019-11-15 22:44:01');
INSERT INTO `acl_permission` VALUES ('1195351326706208770', '1195350919074385921', '编辑课程', 2, 'course.update', 'info/:id', '/edu/course/info', NULL, NULL, 0, '2019-11-15 22:42:19', '2019-11-15 22:42:19');
INSERT INTO `acl_permission` VALUES ('1195351566221938690', '1195350919074385921', '编辑课程大纲', 2, 'chapter.update', 'chapter/:id', '/edu/course/chapter', NULL, NULL, 0, '2019-11-15 22:43:17', '2019-11-15 22:43:17');
INSERT INTO `acl_permission` VALUES ('1195351862889254913', '1', '统计分析', 1, NULL, '/sta', 'Layout', NULL, NULL, 0, '2019-11-15 22:44:27', '2019-11-15 22:44:27');
INSERT INTO `acl_permission` VALUES ('1195351968841568257', '1195351862889254913', '生成统计', 1, NULL, 'create', '/sta/create', NULL, NULL, 0, '2019-11-15 22:44:53', '2019-11-15 22:44:53');
INSERT INTO `acl_permission` VALUES ('1195352054917074946', '1195351862889254913', '统计图表', 1, NULL, 'show', '/sta/show', NULL, NULL, 0, '2019-11-15 22:45:13', '2019-11-15 22:45:13');
INSERT INTO `acl_permission` VALUES ('1195352127734386690', '1195352054917074946', '查看', 2, 'daily.list', '', '', NULL, NULL, 0, '2019-11-15 22:45:30', '2019-11-15 22:45:30');
INSERT INTO `acl_permission` VALUES ('1195352215768633346', '1195351968841568257', '生成', 2, 'daily.add', '', '', NULL, NULL, 0, '2019-11-15 22:45:51', '2019-11-15 22:45:51');
INSERT INTO `acl_permission` VALUES ('1195352547621965825', '1', '首页管理', 1, NULL, '/homepage', 'Layout', NULL, NULL, 0, '2019-11-15 22:47:11', '2019-11-18 10:51:46');
INSERT INTO `acl_permission` VALUES ('1195352856645701633', '1195353513549205505', '查看', 2, 'banner.list', '', NULL, NULL, NULL, 0, '2019-11-15 22:48:24', '2019-11-15 22:48:24');
INSERT INTO `acl_permission` VALUES ('1195352909401657346', '1195353513549205505', '添加', 2, 'banner.add', '', '/homepage/website/index', NULL, NULL, 0, '2019-11-15 22:48:37', '2019-11-18 10:52:10');
INSERT INTO `acl_permission` VALUES ('1195353051395624961', '1195353513549205505', '修改', 2, 'banner.update', 'banner/update/:id', '/cms/banner/form', NULL, NULL, 0, '2019-11-15 22:49:11', '2019-11-18 10:52:05');
INSERT INTO `acl_permission` VALUES ('1195353513549205505', '1195352547621965825', '头部导航', 1, NULL, 'website/index', '/homepage/website/index', NULL, NULL, 0, '2019-11-15 22:51:01', '2019-11-18 10:51:29');
INSERT INTO `acl_permission` VALUES ('1195353672110673921', '1195353513549205505', '删除', 2, 'banner.remove', '', '', NULL, NULL, 0, '2019-11-15 22:51:39', '2019-11-15 22:51:39');
INSERT INTO `acl_permission` VALUES ('1195354076890370050', '1', '订单管理', 1, NULL, '/order', 'Layout', NULL, NULL, 0, '2019-11-15 22:53:15', '2019-11-15 22:53:15');
INSERT INTO `acl_permission` VALUES ('1195354153482555393', '1195354076890370050', '订单列表', 1, NULL, 'index', '/order/index', NULL, NULL, 0, '2019-11-15 22:53:33', '2022-07-19 16:16:16');
INSERT INTO `acl_permission` VALUES ('1195354315093282817', '1195354153482555393', '查看', 2, 'order.list', '', '', NULL, NULL, 0, '2019-11-15 22:54:12', '2019-11-15 22:54:12');
INSERT INTO `acl_permission` VALUES ('1196301740985311234', '1195268616021139457', '分配角色', 2, 'user.assgin', 'user/role/:id', '/acl/user/roleForm', NULL, NULL, 0, '2019-11-18 13:38:56', '2019-11-18 13:38:56');
INSERT INTO `acl_permission` VALUES ('1549299136216457218', '1', '学员管理', 1, NULL, '/student', 'Layout', NULL, NULL, 0, '2022-07-19 15:44:33', '2022-07-19 15:44:33');
INSERT INTO `acl_permission` VALUES ('1549299636219437058', '1549299136216457218', '学员列表', 1, NULL, 'index', '/student/index', NULL, NULL, 0, '2022-07-19 15:46:33', '2022-07-19 16:16:41');
INSERT INTO `acl_permission` VALUES ('1549302551977943042', '1195352547621965825', '专区管理', 1, NULL, 'zone/index', '/homepage/zone/index', NULL, NULL, 0, '2022-07-19 15:58:08', '2022-07-19 15:58:08');
INSERT INTO `acl_permission` VALUES ('1549302806161154049', '1195352547621965825', '轮播图管理', 1, NULL, 'banner/index', '/homepage/banner/index', NULL, NULL, 0, '2022-07-19 15:59:08', '2022-07-19 15:59:08');
INSERT INTO `acl_permission` VALUES ('1549303265240309762', '1195352547621965825', '底部链接', 1, NULL, 'footer/index', '/homepage/footer/index', NULL, NULL, 0, '2022-07-19 16:00:58', '2022-07-19 16:00:58');
INSERT INTO `acl_permission` VALUES ('1549310212203110401', '1195350831744782337', '评论列表', 1, NULL, 'comment/index', '/edu/comment/index', NULL, NULL, 0, '2022-07-19 16:28:34', '2022-07-19 16:28:34');
INSERT INTO `acl_permission` VALUES ('1552474248130396162', '1195349439240048642', '讲师审核', 1, NULL, 'audit', '/edu/teacher/audit', NULL, NULL, 0, '2022-07-28 10:01:19', '2022-07-28 10:01:19');

-- ----------------------------
-- Table structure for acl_role
-- ----------------------------
DROP TABLE IF EXISTS `acl_role`;
CREATE TABLE `acl_role`  (
  `role_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '角色id',
  `role_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '角色名称',
  `role_code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色编码',
  `role_sort` int(0) NULL DEFAULT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色状态（0-正常 1-停用）',
  `is_deleted` tinyint(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '逻辑删除（1-已删除 0-未删除）',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `gmt_create` datetime(0) NOT NULL COMMENT '创建时间',
  `gmt_modified` datetime(0) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of acl_role
-- ----------------------------
INSERT INTO `acl_role` VALUES (1, '超级管理员', 'admin', 1, '0', 0, NULL, '2019-11-11 13:09:32', '2022-07-27 14:34:45');
INSERT INTO `acl_role` VALUES (2, '系统管理员', 'common', 2, '0', 0, NULL, '2019-11-11 13:09:45', '2022-09-17 02:22:55');
INSERT INTO `acl_role` VALUES (3, '课程管理员', 'course', 3, '0', 0, NULL, '2022-07-19 14:42:53', '2022-09-17 02:34:54');

-- ----------------------------
-- Table structure for acl_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `acl_role_permission`;
CREATE TABLE `acl_role_permission`  (
  `role_id` bigint(0) NOT NULL DEFAULT 0 COMMENT '角色id',
  `permission_id` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '权限id',
  PRIMARY KEY (`role_id`, `permission_id`) USING BTREE,
  INDEX `idx_role_id`(`role_id`) USING BTREE,
  INDEX `idx_permission_id`(`permission_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色权限' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of acl_role_permission
-- ----------------------------
INSERT INTO `acl_role_permission` VALUES (1, '1');
INSERT INTO `acl_role_permission` VALUES (1, '1195268474480156673');
INSERT INTO `acl_role_permission` VALUES (1, '1195268616021139457');
INSERT INTO `acl_role_permission` VALUES (1, '1195268788138598401');
INSERT INTO `acl_role_permission` VALUES (1, '1195268893830864898');
INSERT INTO `acl_role_permission` VALUES (1, '1195269143060602882');
INSERT INTO `acl_role_permission` VALUES (1, '1195269295926206466');
INSERT INTO `acl_role_permission` VALUES (1, '1195269473479483394');
INSERT INTO `acl_role_permission` VALUES (1, '1195269547269873666');
INSERT INTO `acl_role_permission` VALUES (1, '1195269821262782465');
INSERT INTO `acl_role_permission` VALUES (1, '1195269903542444034');
INSERT INTO `acl_role_permission` VALUES (1, '1195270037005197313');
INSERT INTO `acl_role_permission` VALUES (1, '1195270442602782721');
INSERT INTO `acl_role_permission` VALUES (1, '1195270621548568578');
INSERT INTO `acl_role_permission` VALUES (1, '1195270744097742849');
INSERT INTO `acl_role_permission` VALUES (1, '1195270810560684034');
INSERT INTO `acl_role_permission` VALUES (1, '1195270862100291586');
INSERT INTO `acl_role_permission` VALUES (1, '1195270887933009922');
INSERT INTO `acl_role_permission` VALUES (1, '1195349439240048642');
INSERT INTO `acl_role_permission` VALUES (1, '1195349699995734017');
INSERT INTO `acl_role_permission` VALUES (1, '1195349810561781761');
INSERT INTO `acl_role_permission` VALUES (1, '1195349876252971010');
INSERT INTO `acl_role_permission` VALUES (1, '1195349979797753857');
INSERT INTO `acl_role_permission` VALUES (1, '1195350117270261762');
INSERT INTO `acl_role_permission` VALUES (1, '1195350188359520258');
INSERT INTO `acl_role_permission` VALUES (1, '1195350299365969922');
INSERT INTO `acl_role_permission` VALUES (1, '1195350397751758850');
INSERT INTO `acl_role_permission` VALUES (1, '1195350500512206850');
INSERT INTO `acl_role_permission` VALUES (1, '1195350612172967938');
INSERT INTO `acl_role_permission` VALUES (1, '1195350687590748161');
INSERT INTO `acl_role_permission` VALUES (1, '1195350831744782337');
INSERT INTO `acl_role_permission` VALUES (1, '1195350919074385921');
INSERT INTO `acl_role_permission` VALUES (1, '1195351020463296513');
INSERT INTO `acl_role_permission` VALUES (1, '1195351159672246274');
INSERT INTO `acl_role_permission` VALUES (1, '1195351326706208770');
INSERT INTO `acl_role_permission` VALUES (1, '1195351566221938690');
INSERT INTO `acl_role_permission` VALUES (1, '1195351862889254913');
INSERT INTO `acl_role_permission` VALUES (1, '1195351968841568257');
INSERT INTO `acl_role_permission` VALUES (1, '1195352054917074946');
INSERT INTO `acl_role_permission` VALUES (1, '1195352127734386690');
INSERT INTO `acl_role_permission` VALUES (1, '1195352215768633346');
INSERT INTO `acl_role_permission` VALUES (1, '1195352547621965825');
INSERT INTO `acl_role_permission` VALUES (1, '1195352856645701633');
INSERT INTO `acl_role_permission` VALUES (1, '1195352909401657346');
INSERT INTO `acl_role_permission` VALUES (1, '1195353051395624961');
INSERT INTO `acl_role_permission` VALUES (1, '1195353513549205505');
INSERT INTO `acl_role_permission` VALUES (1, '1195353672110673921');
INSERT INTO `acl_role_permission` VALUES (1, '1195354076890370050');
INSERT INTO `acl_role_permission` VALUES (1, '1195354153482555393');
INSERT INTO `acl_role_permission` VALUES (1, '1195354315093282817');
INSERT INTO `acl_role_permission` VALUES (1, '1196301740985311234');
INSERT INTO `acl_role_permission` VALUES (1, '1549299136216457218');
INSERT INTO `acl_role_permission` VALUES (1, '1549299636219437058');
INSERT INTO `acl_role_permission` VALUES (1, '1549302551977943042');
INSERT INTO `acl_role_permission` VALUES (1, '1549302806161154049');
INSERT INTO `acl_role_permission` VALUES (1, '1549303265240309762');
INSERT INTO `acl_role_permission` VALUES (1, '1549310212203110401');
INSERT INTO `acl_role_permission` VALUES (2, '1195268616021139457');
INSERT INTO `acl_role_permission` VALUES (2, '1195268788138598401');
INSERT INTO `acl_role_permission` VALUES (2, '1195269143060602882');
INSERT INTO `acl_role_permission` VALUES (2, '1195269295926206466');
INSERT INTO `acl_role_permission` VALUES (2, '1195269473479483394');
INSERT INTO `acl_role_permission` VALUES (2, '1195269547269873666');
INSERT INTO `acl_role_permission` VALUES (2, '1195269821262782465');
INSERT INTO `acl_role_permission` VALUES (2, '1195269903542444034');
INSERT INTO `acl_role_permission` VALUES (2, '1195270037005197313');
INSERT INTO `acl_role_permission` VALUES (2, '1195270442602782721');
INSERT INTO `acl_role_permission` VALUES (2, '1195270621548568578');
INSERT INTO `acl_role_permission` VALUES (2, '1196301740985311234');
INSERT INTO `acl_role_permission` VALUES (3, '1');
INSERT INTO `acl_role_permission` VALUES (3, '1195350299365969922');
INSERT INTO `acl_role_permission` VALUES (3, '1195350397751758850');
INSERT INTO `acl_role_permission` VALUES (3, '1195350500512206850');
INSERT INTO `acl_role_permission` VALUES (3, '1195350612172967938');
INSERT INTO `acl_role_permission` VALUES (3, '1195350687590748161');
INSERT INTO `acl_role_permission` VALUES (3, '1195350831744782337');
INSERT INTO `acl_role_permission` VALUES (3, '1195350919074385921');
INSERT INTO `acl_role_permission` VALUES (3, '1195351020463296513');
INSERT INTO `acl_role_permission` VALUES (3, '1195351159672246274');
INSERT INTO `acl_role_permission` VALUES (3, '1195351326706208770');
INSERT INTO `acl_role_permission` VALUES (3, '1195351566221938690');
INSERT INTO `acl_role_permission` VALUES (3, '1549310212203110401');

-- ----------------------------
-- Table structure for acl_user
-- ----------------------------
DROP TABLE IF EXISTS `acl_user`;
CREATE TABLE `acl_user`  (
  `user_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `username` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户号',
  `password` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '密码',
  `nick_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '昵称',
  `phonenumber` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '手机号',
  `sex` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '性别（0-男 1-女 2-未知）',
  `email` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `status` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '状态（0-启用，1-停用）',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户头像',
  `token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户签名',
  `is_deleted` tinyint(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '逻辑删除 1（true）已删除， 0（false）未删除',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `gmt_create` datetime(0) NOT NULL COMMENT '创建时间',
  `gmt_modified` datetime(0) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`user_id`) USING BTREE,
  UNIQUE INDEX `uk_username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of acl_user
-- ----------------------------
INSERT INTO `acl_user` VALUES (1, 'admin', '96e79218965eb72c92a549dd5a330112', '超级管理员', '18011111111', '0', 'admin@qq.com', '0', '', NULL, 0, NULL, '2019-11-01 10:39:47', '2022-09-17 16:28:05');
INSERT INTO `acl_user` VALUES (3, 'edu', '96e79218965eb72c92a549dd5a330112', '课程管理员', '18022222222', '1', 'edu@qq.com', '0', NULL, NULL, 0, NULL, '2022-03-22 11:35:11', '2022-09-17 16:28:24');
INSERT INTO `acl_user` VALUES (4, 'chenfl', '96e79218965eb72c92a549dd5a330112', '系统管理员', '18033333333', '0', 'chenfl@qq.com', '0', NULL, NULL, 0, NULL, '2022-09-17 10:10:32', '2022-09-17 16:28:58');

-- ----------------------------
-- Table structure for acl_user_role
-- ----------------------------
DROP TABLE IF EXISTS `acl_user_role`;
CREATE TABLE `acl_user_role`  (
  `user_id` bigint(0) NOT NULL DEFAULT 0 COMMENT '用户id',
  `role_id` bigint(0) NOT NULL DEFAULT 0 COMMENT '角色id',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE,
  INDEX `idx_role_id`(`role_id`) USING BTREE,
  INDEX `idx_user_id`(`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of acl_user_role
-- ----------------------------
INSERT INTO `acl_user_role` VALUES (1, 1);
INSERT INTO `acl_user_role` VALUES (4, 2);
INSERT INTO `acl_user_role` VALUES (3, 3);

-- ----------------------------
-- Table structure for crm_banner
-- ----------------------------
DROP TABLE IF EXISTS `crm_banner`;
CREATE TABLE `crm_banner`  (
  `id` char(19) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT 'ID',
  `title` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '标题',
  `image_url` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '图片地址',
  `link_url` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '链接地址',
  `sort` int(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '排序',
  `is_deleted` tinyint(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '逻辑删除 1（true）已删除， 0（false）未删除',
  `gmt_create` datetime(0) NOT NULL COMMENT '创建时间',
  `gmt_modified` datetime(0) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_name`(`title`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '首页banner表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of crm_banner
-- ----------------------------
INSERT INTO `crm_banner` VALUES ('1194556896025845762', 'test1', 'https://gulistu-edu-1010.oss-cn-beijing.aliyuncs.com/2022/09/17/15375531895e994953.jpg', '/', 1, 0, '2019-11-13 18:05:32', '2019-11-18 10:28:22');
INSERT INTO `crm_banner` VALUES ('1194607458461216769', 'test2', 'https://gulistu-edu-1010.oss-cn-beijing.aliyuncs.com/2022/09/17/171400881c0d537063.jpg', '/', 2, 0, '2019-11-13 21:26:27', '2019-11-14 09:12:15');
INSERT INTO `crm_banner` VALUES ('1194607458461316768', 'test3', 'https://gulistu-edu-1010.oss-cn-beijing.aliyuncs.com/2022/09/17/15062952f3d2109639.jpg', '/', 3, 0, '2022-07-22 21:26:27', '2022-07-22 09:12:15');
INSERT INTO `crm_banner` VALUES ('1194607458481036763', 'test4', 'https://gulistu-edu-1010.oss-cn-beijing.aliyuncs.com/2022/09/17/1502113c1947586168.jpg', '/', 4, 0, '2022-07-22 21:26:27', '2022-07-22 09:12:15');
INSERT INTO `crm_banner` VALUES ('1194607458481036768', 'test5', 'https://gulistu-edu-1010.oss-cn-beijing.aliyuncs.com/2022/09/17/0906240b35aa451537.jpg', '/', 5, 0, '2022-09-17 14:03:45', '2022-09-17 14:03:48');

-- ----------------------------
-- Table structure for edu_chapter
-- ----------------------------
DROP TABLE IF EXISTS `edu_chapter`;
CREATE TABLE `edu_chapter`  (
  `id` char(19) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '章节ID',
  `course_id` char(19) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '课程ID',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '章节名称',
  `sort` int(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '显示排序',
  `gmt_create` datetime(0) NOT NULL COMMENT '创建时间',
  `gmt_modified` datetime(0) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_course_id`(`course_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '课程' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of edu_chapter
-- ----------------------------
INSERT INTO `edu_chapter` VALUES ('1571072774758305794', '1571072526375817218', '课程管理', 0, '2022-09-17 17:45:13', '2022-09-19 09:10:05');
INSERT INTO `edu_chapter` VALUES ('1571667878971830274', '1571072526375817218', '高并发编程', 0, '2022-09-19 09:09:57', '2022-09-19 09:13:31');
INSERT INTO `edu_chapter` VALUES ('1571671797466787842', '1571671477848240129', '课程概述', 0, '2022-09-19 09:25:31', '2022-09-19 09:25:31');
INSERT INTO `edu_chapter` VALUES ('1571672779022004225', '1571671477848240129', '版本选型', 0, '2022-09-19 09:29:25', '2022-09-19 09:29:25');
INSERT INTO `edu_chapter` VALUES ('1571673847583862786', '1571673770924568577', '概述', 0, '2022-09-19 09:33:40', '2022-09-19 09:33:40');
INSERT INTO `edu_chapter` VALUES ('1571679517506924546', '1571679458467901442', '概述', 0, '2022-09-19 09:56:12', '2022-09-19 09:56:12');
INSERT INTO `edu_chapter` VALUES ('1571680794919956482', '1571680700048994305', '概述', 0, '2022-09-19 10:01:17', '2022-09-19 10:01:29');
INSERT INTO `edu_chapter` VALUES ('1571682488412139521', '1571682457135214593', '概述', 0, '2022-09-19 10:08:00', '2022-09-19 10:08:00');
INSERT INTO `edu_chapter` VALUES ('1571683086066905090', '1571682457135214593', '框架概述', 0, '2022-09-19 10:10:23', '2022-09-19 10:10:23');
INSERT INTO `edu_chapter` VALUES ('1571683550128893954', '1571682457135214593', '入门案例', 0, '2022-09-19 10:12:13', '2022-09-19 10:12:13');

-- ----------------------------
-- Table structure for edu_comment
-- ----------------------------
DROP TABLE IF EXISTS `edu_comment`;
CREATE TABLE `edu_comment`  (
  `id` char(19) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '评论ID',
  `course_id` varchar(19) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '课程id',
  `teacher_id` char(19) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '讲师id',
  `member_id` varchar(19) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '会员id',
  `nickname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '会员昵称',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '会员头像',
  `content` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '评论内容',
  `is_deleted` tinyint(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '逻辑删除 1（true）已删除， 0（false）未删除',
  `gmt_create` datetime(0) NOT NULL COMMENT '创建时间',
  `gmt_modified` datetime(0) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_course_id`(`course_id`) USING BTREE,
  INDEX `idx_teacher_id`(`teacher_id`) USING BTREE,
  INDEX `idx_member_id`(`member_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '评论' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of edu_comment
-- ----------------------------

-- ----------------------------
-- Table structure for edu_course
-- ----------------------------
DROP TABLE IF EXISTS `edu_course`;
CREATE TABLE `edu_course`  (
  `id` char(19) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '课程ID',
  `teacher_id` char(19) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '课程讲师ID',
  `subject_id` char(19) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '课程专业ID',
  `subject_parent_id` char(19) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '课程专业父级ID',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '课程标题',
  `price` decimal(10, 2) UNSIGNED NOT NULL COMMENT '课程销售价格，设置为0则可免费观看',
  `lesson_num` int(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '总课时',
  `cover` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '课程封面图片路径',
  `buy_count` bigint(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '销售数量',
  `view_count` bigint(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '浏览数量',
  `version` bigint(0) UNSIGNED NOT NULL DEFAULT 1 COMMENT '乐观锁',
  `status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'Draft' COMMENT '课程状态 Draft未发布  Normal已发布',
  `is_deleted` tinyint(0) NULL DEFAULT 0 COMMENT '逻辑删除 1（true）已删除， 0（false）未删除',
  `gmt_create` datetime(0) NOT NULL COMMENT '创建时间',
  `gmt_modified` datetime(0) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_title`(`title`) USING BTREE,
  INDEX `idx_subject_id`(`subject_id`) USING BTREE,
  INDEX `idx_teacher_id`(`teacher_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '课程' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of edu_course
-- ----------------------------
INSERT INTO `edu_course` VALUES ('1571072526375817218', '1571065517085659137', '1571071495470419969', '1571071495453642754', '高级技术之JUC高并发编程2021最新版', 0.00, 5, 'https://gulistu-edu-1010.oss-cn-beijing.aliyuncs.com/2022/09/17/94b606a479de48a69c2f15e8987b6e65142935ff3420029435.jpg', 0, 0, 1, 'Normal', 0, '2022-09-17 17:44:14', '2022-09-19 09:20:37');
INSERT INTO `edu_course` VALUES ('1571671477848240129', '1571064681752268802', '1571071495470419969', '1571071495453642754', 'SpringCloud教程2020最新版', 0.00, 5, 'https://gulistu-edu-1010.oss-cn-beijing.aliyuncs.com/2022/09/19/a95a9c792b40493598924f82199211761952342d690a152544.jpg', 0, 0, 1, 'Normal', 0, '2022-09-19 09:24:15', '2022-09-19 09:31:51');
INSERT INTO `edu_course` VALUES ('1571673770924568577', '1571064977169682433', '1571071495617220609', '1571071495600443394', 'MySQL高级', 0.00, 0, 'https://gulistu-edu-1010.oss-cn-beijing.aliyuncs.com/2022/09/19/f4b88dd87c4348baabac7d915884e9791125233b6eb4989911.jpg', 0, 0, 1, 'Normal', 0, '2022-09-19 09:33:22', '2022-09-19 09:52:43');
INSERT INTO `edu_course` VALUES ('1571679458467901442', '1571065228492378114', '1571071495298453506', '1571071495281676289', 'ue源码解析', 0.00, 0, 'https://gulistu-edu-1010.oss-cn-beijing.aliyuncs.com/2022/09/19/20eb56a5f4544d349a0a49ef52012f5b1141564a17d1349497.jpg', 0, 0, 1, 'Normal', 0, '2022-09-19 09:55:58', '2022-09-19 09:59:40');
INSERT INTO `edu_course` VALUES ('1571680700048994305', '1571065517085659137', '1571071495432671234', '1571071495281676289', '2021 React全家桶', 0.00, 0, 'https://gulistu-edu-1010.oss-cn-beijing.aliyuncs.com/2022/09/19/8defa22469094c24b14525c9b126570408474739daa6852574.jpg', 0, 0, 1, 'Normal', 0, '2022-09-19 10:00:54', '2022-09-19 10:05:31');
INSERT INTO `edu_course` VALUES ('1571682457135214593', '1571065708882792450', '1571071495470419969', '1571071495453642754', 'Spring Security', 0.01, 3, 'https://gulistu-edu-1010.oss-cn-beijing.aliyuncs.com/2022/09/19/962ffefc3262451f9132c95c0fbfa987163141dcde63903016.jpg', 0, 0, 1, 'Normal', 0, '2022-09-19 10:07:53', '2022-09-19 10:13:33');

-- ----------------------------
-- Table structure for edu_course_collect
-- ----------------------------
DROP TABLE IF EXISTS `edu_course_collect`;
CREATE TABLE `edu_course_collect`  (
  `id` char(19) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '收藏ID',
  `course_id` char(19) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '课程讲师ID',
  `member_id` char(19) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '课程专业ID',
  `is_deleted` tinyint(0) NOT NULL DEFAULT 0 COMMENT '逻辑删除 1（true）已删除， 0（false）未删除',
  `gmt_create` datetime(0) NOT NULL COMMENT '创建时间',
  `gmt_modified` datetime(0) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '课程收藏' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of edu_course_collect
-- ----------------------------

-- ----------------------------
-- Table structure for edu_course_description
-- ----------------------------
DROP TABLE IF EXISTS `edu_course_description`;
CREATE TABLE `edu_course_description`  (
  `id` char(19) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '课程ID',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '课程简介',
  `gmt_create` datetime(0) NOT NULL COMMENT '创建时间',
  `gmt_modified` datetime(0) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '课程简介' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of edu_course_description
-- ----------------------------
INSERT INTO `edu_course_description` VALUES ('1571072526375817218', '<p>看了一大堆书，对多线程高并发还是很懵，跳槽去大厂被JUC笔试题劝退&hellip;&hellip;你需要这套从理论到实战的JUC进阶教程。</p>\n<p>本套教程针对1-5年的Java程序员精心设计，名师力作。知识点涵盖全面，课程深度对标阿里P6-P7，庖丁解牛式讲解，案例驱动，即给方法又给方案，生产环境模拟教学，大厂面试真题剖析，应有尽有，全面提升你的高并发多线程设计能力！</p>\n<p>深度打磨的明星课程，讲解激情幽默，技术与包袱兼备，干货与段子齐飞，让你在德云社里打怪升级。独到的课程设计与讲授技巧，让你学到的知识，即能应用到生产环境中，又能武装到简历里，带你轻松搞定高并发，升职加薪，通过大厂面试。</p>', '2022-09-17 17:44:14', '2022-09-17 17:44:14');
INSERT INTO `edu_course_description` VALUES ('1571671477848240129', '<p>2020新版视频含SpringCloud Hoxton和SpringCloud alibaba，<span style=\"font-family: 微软雅黑;\">双剑合并，威力大增！内容涵盖目前火热的分布式微服务架构的全部技术栈，是尚硅谷高阶班微服务课程的升级版。新版教程对老版的五大技术做了升级加强和替换更新，对原有技术进行了更加深入的讲解，此外，引入了后起新秀</span>SpringCloud alibaba，满足你对新技术的探索欲望！</p>\n<p>&nbsp;</p>\n<p><span style=\"font-family: 微软雅黑;\">教程重点讲解了</span>SpringCloud各种组件停止更新进入维护阶段后，后续技术组件的升级和替换策略及方案选型，既有传统Eureka、Ribbon、OpenFeign、Hystrix、Config等技术的升级讲解，又有Consul、Gateway、Bus、Stream、Sleuth、zipkin和阿里巴巴的Nacos、Sentinel、Seata等技术，分享了服务降级、服务熔断、服务限流、hotkey控制、分布式统一配置管理、分布式全局事务控制、RabbitMQ与Stream整合、Nacos和Nginx配置高可用集群等技术，干货满满！</p>\n<p>&nbsp;</p>\n<p><span style=\"font-family: 微软雅黑;\">学技术何必东奔西走，在知学打包一套带走！</span></p>', '2022-09-19 09:24:15', '2022-09-19 09:24:15');
INSERT INTO `edu_course_description` VALUES ('1571673770924568577', '<p>MySQL是目前常用的关系型数据库管理系统，在WEB应用方面 MySQL 也是目前很好的 RDBMS 应用软件之一。随着淘宝去IOE(去除IBM小型机、Oracle数据库及EMC存储设备)化的推进，MySQL 数据库在当前的互联网应用中变得越来越重要，本教程主要讲授针对 Java 开发所需的 MySQL 高级知识，课程中会让大家快速掌握索引，如何避免索引失效，索引的优化策略，了解innodb和myisam存储引擎，熟悉MySQL锁机制，能熟练配置MySQL主从复制，熟练掌握explain、show profile、慢查询日志等日常SQL诊断和性能分析策略。</p>', '2022-09-19 09:33:22', '2022-09-19 09:33:22');
INSERT INTO `edu_course_description` VALUES ('1571679458467901442', '<p>你有没有发现前端面试题越来越难？很多面试都开始问关于Vue底层源码的问题了。因为人人都会Vue，大学生都用Vue写毕设了，更有甚者，有人DOM都不会但Vue玩的贼溜。<br /><br /><strong>学习Vue底层源码已经迫在眉睫！</strong>然而网上充斥着一些面试题，可以让你背诵数据劫持机理、最小量更新机理、模板编译机理等，但都非常皮毛，面试官稍加追问，你就会招架不住。光背题是没用的，踏踏实实弄懂Vue底层源码，你才能和面试官谈笑风生拿下Offer！<br /><br /><strong>知学重磅推出Vue源码解析系列视频教程！</strong>然直达核心，带你分析Vue底层工作原理，将Vue核心模块一一拆解，手写底层源码，拒绝纸上谈兵，带你手撸一个自己的Vue框架！本套教程带你手写响应式数据系统底层、手写模板编译系统底层、手写虚拟DOM和diff算法底层&hellip;&hellip;内容循序渐进，深入浅出，讲解图文并茂，鞭辟入里，用丰富的图示和例子做演示，注重编程思想讲解，真正让你提升编程底蕴，达到中高级前端标准。教程兼顾Vue2.0和3.0，并着重讲解二者的底层区别，力求让你理解每一个核心机理。<br /><br /><strong>适合人群：</strong><br />需要提升编程能力、面试能力的前端程序员均可学习，学前需掌握Vue基本语法。</p>', '2022-09-19 09:55:58', '2022-09-19 09:55:58');
INSERT INTO `edu_course_description` VALUES ('1571680700048994305', '<p>本套视频教程基于版React17录制，对React开发中的各项核心技术进行了详细讲解。知识点涵盖全面，即包括：虚拟DOM与JSX、DOM-Diffing算法、React-Router、生命周期（新版+旧版）等基础内容的讲解；又包括：组件的基本使用、组件的封装、组件的懒加载、组件的优化等组件核心技术；还包括：Pubsub、Redux、React-Redux、hooks、ErrorBoundary、Context等进阶内容；更包括：高阶函数、函数柯里化、this指向分析、ES6/7/8部分新语法、antdUI组件库、fetch等扩展内容&hellip;&hellip;</p>\n<p>&nbsp;</p>\n<p>核心React基础知识+周边技术一网打尽！</p>\n<p>师出名门的UI组件库：antd（蚂蚁金服出品），集中式状态管理的经典之作：Redux，消息订阅与发布理念中的老大哥：Pubsub，同时扩展了React的hooks、错误边界、Context等内容，全面且系统的知识点剖析，助你轻松驾驭真实项目！</p>\n<p>&nbsp;</p>\n<p>所有知识点都以案例为驱动，演绎式教学，生活化举例，保姆式解读官网，授之以渔更授之以渔！讲解细致，幽默风趣，让你听着上头，学到痴迷。教程配备了丰富的图示、案例、笔记、服务器，即便零基础的小伙伴也可以愉快地学会React技术，仅需一套课程让你精通React技术栈，让开发如丝滑般流畅！</p>', '2022-09-19 10:00:54', '2022-09-19 10:00:54');
INSERT INTO `edu_course_description` VALUES ('1571682457135214593', '<p>Spring Security是Spring家族中的重要成员，它基于Spring框架，提供了一套Web应用安全性的完整解决方案。</p>\n<p>本套视频教程适合具备一定软件开发经验的人员，学前需掌握JavaWeb和SpringBoot。</p>\n<p>教程分为五大部分：Spring Security框架概述、Spring Security入门和基本原理、Spring Security基于Web的权限方案、Spring Security基于微服务的权限方案、Spring Security源码剖析，详细讲解了Spring Security框架，内容由浅入深，理论实践相结合，更深入源码级学习。通过本套教程的学习，你将对于Spring Security框架在各种场景下的使用，以及内部的实现原理，有更加深入的认识。</p>', '2022-09-19 10:07:53', '2022-09-19 10:07:53');

-- ----------------------------
-- Table structure for edu_subject
-- ----------------------------
DROP TABLE IF EXISTS `edu_subject`;
CREATE TABLE `edu_subject`  (
  `id` char(19) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '课程类别ID',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '类别名称',
  `parent_id` char(19) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0' COMMENT '父ID',
  `sort` int(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '排序字段',
  `gmt_create` datetime(0) NOT NULL COMMENT '创建时间',
  `gmt_modified` datetime(0) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_parent_id`(`parent_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '课程科目' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of edu_subject
-- ----------------------------
INSERT INTO `edu_subject` VALUES ('1571071495281676289', '前端开发', '0', 0, '2022-09-17 17:40:08', '2022-09-17 17:40:08');
INSERT INTO `edu_subject` VALUES ('1571071495298453506', 'vue', '1571071495281676289', 0, '2022-09-17 17:40:08', '2022-09-17 17:40:08');
INSERT INTO `edu_subject` VALUES ('1571071495319425026', 'JavaScript', '1571071495281676289', 0, '2022-09-17 17:40:08', '2022-09-17 17:40:08');
INSERT INTO `edu_subject` VALUES ('1571071495340396546', 'jquery', '1571071495281676289', 0, '2022-09-17 17:40:08', '2022-09-17 17:40:08');
INSERT INTO `edu_subject` VALUES ('1571071495365562370', 'HTML+CSS', '1571071495281676289', 0, '2022-09-17 17:40:08', '2022-09-17 17:40:08');
INSERT INTO `edu_subject` VALUES ('1571071495382339586', 'ES6', '1571071495281676289', 0, '2022-09-17 17:40:08', '2022-09-17 17:40:08');
INSERT INTO `edu_subject` VALUES ('1571071495407505410', 'axios', '1571071495281676289', 0, '2022-09-17 17:40:08', '2022-09-17 17:40:08');
INSERT INTO `edu_subject` VALUES ('1571071495432671234', 'react', '1571071495281676289', 0, '2022-09-17 17:40:08', '2022-09-17 17:40:08');
INSERT INTO `edu_subject` VALUES ('1571071495453642754', '后端开发', '0', 0, '2022-09-17 17:40:08', '2022-09-17 17:40:08');
INSERT INTO `edu_subject` VALUES ('1571071495470419969', 'Java', '1571071495453642754', 0, '2022-09-17 17:40:08', '2022-09-17 17:40:08');
INSERT INTO `edu_subject` VALUES ('1571071495491391489', 'C++', '1571071495453642754', 0, '2022-09-17 17:40:08', '2022-09-17 17:40:08');
INSERT INTO `edu_subject` VALUES ('1571071495508168705', 'python', '1571071495453642754', 0, '2022-09-17 17:40:08', '2022-09-17 17:40:08');
INSERT INTO `edu_subject` VALUES ('1571071495524945922', 'go', '1571071495453642754', 0, '2022-09-17 17:40:08', '2022-09-17 17:40:08');
INSERT INTO `edu_subject` VALUES ('1571071495541723138', 'Android', '0', 0, '2022-09-17 17:40:08', '2022-09-17 17:40:08');
INSERT INTO `edu_subject` VALUES ('1571071495550111745', 'Android入门', '1571071495541723138', 0, '2022-09-17 17:40:08', '2022-09-17 17:40:08');
INSERT INTO `edu_subject` VALUES ('1571071495575277570', '大数据', '0', 0, '2022-09-17 17:40:08', '2022-09-17 17:40:08');
INSERT INTO `edu_subject` VALUES ('1571071495592054786', 'Flink', '1571071495575277570', 0, '2022-09-17 17:40:08', '2022-09-17 17:40:08');
INSERT INTO `edu_subject` VALUES ('1571071495600443394', '数据库开发', '0', 0, '2022-09-17 17:40:08', '2022-09-17 17:40:08');
INSERT INTO `edu_subject` VALUES ('1571071495617220609', 'mysql', '1571071495600443394', 0, '2022-09-17 17:40:08', '2022-09-17 17:40:08');

-- ----------------------------
-- Table structure for edu_teacher
-- ----------------------------
DROP TABLE IF EXISTS `edu_teacher`;
CREATE TABLE `edu_teacher`  (
  `id` char(19) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '讲师ID',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '讲师姓名',
  `intro` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '讲师简介',
  `career` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '讲师资历,一句话说明讲师',
  `level` int(0) UNSIGNED NULL DEFAULT 1 COMMENT '头衔 1高级讲师 2首席讲师',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '讲师头像',
  `phonenumber` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '手机号',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '状态',
  `sort` int(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '排序',
  `is_deleted` tinyint(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '逻辑删除 1（true）已删除， 0（false）未删除',
  `audit_status` int(0) NULL DEFAULT 0 COMMENT '审核状态（0-待审核 1-审核通过 2-审核不通过）',
  `audit_opinion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '审核意见',
  `gmt_create` datetime(0) NOT NULL COMMENT '创建时间',
  `gmt_modified` datetime(0) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_name`(`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '讲师' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of edu_teacher
-- ----------------------------
INSERT INTO `edu_teacher` VALUES ('1571063187145592833', '慕容巧春', '曾于北航软件开发环境国家重点实验室研究多项课题，对智能交通—浮动车海量数据挖掘及在线社交网络信息传播和控制问题有深入研究，曾发表论文数篇。先后担任过高级软件开发工程师，系统架构师，高级讲师。具备丰富的软件开发经验和教学经验。精通C/C++、Java、Objective-C 等开发语言， 对JavaEE、Android开发有深入理解，对以Java语言为基础的各种框架有深入研究。亲自主持开发过多个大型项目，具备很强的项目管理能力和丰富的项目实施经验。', '东北师大理学学士，北京航空航天大学硕士', 1, 'https://gulistu-edu-1010.oss-cn-beijing.aliyuncs.com/2022/09/17/019bcc4af04249cbbe8b44b0037b47e9file.png', '17643484172', '17643484172@qq.com', '0', 0, 0, 1, '可以的', '2022-09-17 17:07:07', '2022-09-17 09:23:34');
INSERT INTO `edu_teacher` VALUES ('1571064114426515457', '柳泽恩', '国内早期的UNIX/Linux从业者，中国UNIX用户协会成员，首批红旗Linux认证讲师。先后出版过《UNIX系统管理实用教程》、《Sun Solaris 8系统管理员指南》、《PHP5项目开发实战详解》、《完美应用Ubuntu》、《细说Linux系统管理》等多本计算机技术图书，国内多所大学特聘讲师，猎聘特邀讲师。近年来致力于Linux开源技术推广及职业教育，录制的Linux视频教程是无数从业者的入门宝典，出版的就业指导图书《明哥聊求职》广受好评，曾作客BTV《书香北京》栏目分享，在中国大学慕课网开设《年轻人的第一堂就业指导课》，2017年明哥聊求职获教育行业优秀自媒体奖，全网粉丝近百万。', '从业近二十年，曾任即时Linux研究院副院长、PHPChina技术总监等职', 1, 'https://gulistu-edu-1010.oss-cn-beijing.aliyuncs.com/2022/09/17/c1f371fac80b4127acb79054673399d1file.png', '15081464826', '15081464826@qq.com', '0', 0, 0, 1, '可以的', '2022-09-17 17:10:48', '2022-09-17 09:23:30');
INSERT INTO `edu_teacher` VALUES ('1571064681752268802', '帅良朋', '历经电信、互联网金融等热门行业的项目历练，对传统JavaEE技术体系、云计算、大数据及当下热门的互联网技术都具有深厚的技术功底。 能够将企业流行、实用的技术带回课堂，引导学生少走弯路。', '多年开发及管理经验，曾先后就职于神华和信、亚信联创、安润金融等大中型互联网公司，任技术经理、项目经理、架构师等职位。', 1, 'https://gulistu-edu-1010.oss-cn-beijing.aliyuncs.com/2022/09/17/c4516d0367224870a4215926b2facbd4file.png', '17737245181', '17737245181@qq.com', '0', 0, 0, 1, '可以的', '2022-09-17 17:13:04', '2022-09-17 09:23:25');
INSERT INTO `edu_teacher` VALUES ('1571064977169682433', '杜骏', '多年项目开发、管理经验。精通 Go、Hadoop、Spark、Android、Java、C/C++，对区块链、大数据、Linux 等有深入研究。技术功底深厚，热衷于新技术的研究。从业IT教育多年，学员多任职于腾讯、联想、京东、新浪、Oracle、IBM 等国内外互联网公司。人称大海哥，号称第一帅。', '辽工大外聘大数据、区块链专家、辽工大保送硕士，曾就职于交大思诺、文思海辉、宅急送等知名企业，历任项目经理、架构师 。', 1, 'https://gulistu-edu-1010.oss-cn-beijing.aliyuncs.com/2022/09/17/57d30b72565a4efca48fdcf50dc9318ffile.png', '15157007200', '15157007200@qq.com', '0', 0, 0, 1, '可以的', '2022-09-17 17:14:14', '2022-09-17 09:23:22');
INSERT INTO `edu_teacher` VALUES ('1571065228492378114', '万韶丽', 'JavaWeb 原理有深刻理解，精通多种主流框架以及 Maven、Ant 等构建工具。 课堂教学循序渐进，深入浅出，主张快乐学习，学以致用。', '具多年软件开发经验，曾主持或参与开发《中国电力轨道交通线路数据交换平台》、《SG186工程宁夏电网营销 稽查管理项目》、《天津市广告监管系统》等项目。对JavaEE 技术体系结构、', 1, 'https://gulistu-edu-1010.oss-cn-beijing.aliyuncs.com/2022/09/17/4dba0a6a4e004624a872df257732ab70file.png', '15305268404', '15305268404@qq.com', '0', 0, 0, 1, '可以的', '2022-09-17 17:15:14', '2022-09-17 09:23:20');
INSERT INTO `edu_teacher` VALUES ('1571065517085659137', '舒代容', '精通JavaEE、Android、 C++、C#等开发语言，主持并参与Android SDK开发，熟练掌握JavaEE技术及架构体系、SpringMVC、Spring、 Mybatis、Redis、Struts2、Hibernate等框架。', '具有多年项目开发和教育培训经验，曾先后任职于致远协创、用友科技等知名企业，历任项目经理、架构师等', 1, 'https://gulistu-edu-1010.oss-cn-beijing.aliyuncs.com/2022/09/17/f3f4c78c2b9c4076a1c0fb786e5aa5d3file.png', '15754619330', '15754619330@qq.com', '0', 0, 0, 1, '可以的', '2022-09-17 17:16:23', '2022-09-17 09:23:15');
INSERT INTO `edu_teacher` VALUES ('1571065708882792450', '上官言心', '精通Oracle、MySQL、SSH、MyBatis、JBPM等众多框架，现专注于JavaSE技术的研究、教学和推广。“细心，耐心，用心”是一贯坚持的工作态度，追求“润物细无声”的教育方式。', '具有多年的教学和项目开发经验。曾参与国家电网内蒙古供电企业一体化管理信息系统的研发、国土资源局的国土资源非空间数据服务系统的研发、赛迪时代公司内部项目通用基础组件的设计与研发，并为新华南方等众多IT企业储备人才及广东、山东等多所高校大学生进行实训授课。', 1, 'https://gulistu-edu-1010.oss-cn-beijing.aliyuncs.com/2022/09/17/e2c70951901f4f45a4f588d027d8666bfile.png', '15171018941', '15171018941@qq.com', '0', 0, 0, 1, '可以的', '2022-09-17 17:17:09', '2022-09-17 09:23:11');
INSERT INTO `edu_teacher` VALUES ('1571065936788688897', '那莎莉', '精通java核心框架、大数据Hadoop、Spark技术，曾先后就职于南天软件、用友金融、中植集团、百合贷，任技术经理、项目经理、技术部负责人。主持开发了中信银行、国家电网、中植集团、东方资产等大型企业的金融类系统，也对时下流行的互联网金融有深入的研究。 十余年的项目经历，练就了纯厚的技术底蕴和丰富的职场经验。', '中国人民大学软件工程硕士。', 1, 'https://gulistu-edu-1010.oss-cn-beijing.aliyuncs.com/2022/09/17/4a1bac02aeac49889ef6665ee6717ea6file.png', '19844781740', '19844781740@qq.com', '0', 0, 0, 1, '可以的', '2022-09-17 17:18:03', '2022-09-17 09:23:06');
INSERT INTO `edu_teacher` VALUES ('1571066157375524865', '乾慕梅', '曾参与大型物联网系统（智能物流）、智慧城市系统的开发，并主持开发某社交软件的移动端（Android/iOS）、服务端（openfire）、桌面端（swing）、网页端（webIM），对即时通讯、图像处理、流媒体领域等有深入研究。', '具有多年软件开发经验，熟悉 Java、C/C++等多种开发语言，对主流框架Spring、Struts2、Hibernate、MyBatis、SpringMVC等具有丰富的开发经验。', 1, 'https://gulistu-edu-1010.oss-cn-beijing.aliyuncs.com/2022/09/17/2156cb6740764db189a7eea083a2368efile.png', '15175264940', '15175264940@qq.com', '0', 0, 0, 1, '可以的', '2022-09-17 17:18:56', '2022-09-17 09:23:03');
INSERT INTO `edu_teacher` VALUES ('1571066398233432066', '计晓灵', '授课细致，深入浅出，深受学生喜爱。曾参与开发了首钢集团OA系统；CMMI项目管理系统；eGov电子政务系统等。对学生寄语：既然选择就别轻言放弃！', '从事JavaEE技术多年，一直致力于Java技术培训，热爱教育。深入掌握Struts、Hibernate、Spring、SpringMVC、MyBatis、EJB等主流框架,通过分析源码，讲解框架设计原理。', 1, 'https://gulistu-edu-1010.oss-cn-beijing.aliyuncs.com/2022/09/17/2cf926d358314c73a9194f0890e231e5file.png', '18858823262', '18858823262@qq.com', '0', 0, 0, 1, '可以的', '2022-09-17 17:19:53', '2022-09-17 09:23:00');
INSERT INTO `edu_teacher` VALUES ('1571066613107625986', '梁冰真', '参与完成辽宁某高校远程教学管理系统、慧文信息门户系统、日本麦卡尔超市管理系统、崎玉市外来人口登记系统、深海视频会议管理系统、仙台市宫城县日常事务系统等项目的设计和开发。 十年软件培训经验：曾在中国AOP全球外包排名第一的公司任Java、Oracle培训讲师、负责对公司员工新技术培训；曾任花旗银行特约JavaEE培训讲师；某部队研究所JavaEE培训；曾受聘为北航、厦门大学移动云计算专业教学主任， 并主讲Java、Android、iOS课程。', '资深项目经理、技术讲师、SUN SCJP、SCWCD、原工信部移动云计算教育培训中心教学总监。 十年软件开发经验', 2, 'https://guli-edu-20201.oss-cn-beijing.aliyuncs.com/avatar/default.jpg', '18180265737', '18180265737@qq.com', '0', 0, 0, 1, '可以的', '2022-09-17 17:20:44', '2022-09-17 09:22:57');
INSERT INTO `edu_teacher` VALUES ('1571067000334159874', '依芦雪', '先后出版过《UNIX系统管理实用教程》、《Sun Solaris 8系统管理员指南》、《PHP5项目开发实战详解》、《完美应用Ubuntu》、《细说Linux系统管理》等多本计算机技术图书，国内多所大学特聘讲师，猎聘特邀讲师。近年来致力于Linux开源技术推广及职业教育，录制的Linux视频教程是无数从业者的入门宝典，出版的就业指导图书《明哥聊求职》广受好评，曾作客BTV《书香北京》栏目分享，在中国大学慕课网开设《年轻人的第一堂就业指导课》，2017年明哥聊求职获教育行业优秀自媒体奖，全网粉丝近百万。', '从业近二十年，曾任即时Linux研究院副院长、PHPChina技术总监等职，国内早期的UNIX/Linux从业者，中国UNIX用户协会成员，首批红旗Linux认证讲师。', 2, 'https://gulistu-edu-1010.oss-cn-beijing.aliyuncs.com/2022/09/17/029e2a0ba5024da6998931f9f7b86536file.png', '18956236640', '18956236640@qq.com', '0', 0, 0, 1, '可以的', '2022-09-17 17:22:17', '2022-09-17 09:22:53');

-- ----------------------------
-- Table structure for edu_video
-- ----------------------------
DROP TABLE IF EXISTS `edu_video`;
CREATE TABLE `edu_video`  (
  `id` char(19) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '视频ID',
  `course_id` char(19) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '课程ID',
  `chapter_id` char(19) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '章节ID',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '节点名称',
  `video_source_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '云端视频资源',
  `video_original_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '原始文件名称',
  `sort` int(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '排序字段',
  `play_count` bigint(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '播放次数',
  `is_free` tinyint(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否可以试听：0可以 1不可以',
  `duration` float NOT NULL DEFAULT 0 COMMENT '视频时长（秒）',
  `status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'Empty' COMMENT 'Empty未上传 Transcoding转码中  Normal正常',
  `size` bigint(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '视频源文件大小（字节）',
  `version` bigint(0) UNSIGNED NOT NULL DEFAULT 1 COMMENT '乐观锁',
  `gmt_create` datetime(0) NOT NULL COMMENT '创建时间',
  `gmt_modified` datetime(0) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_course_id`(`course_id`) USING BTREE,
  INDEX `idx_chapter_id`(`chapter_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '课程视频' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of edu_video
-- ----------------------------
INSERT INTO `edu_video` VALUES ('1571072884380635137', '1571072526375817218', '1571072774758305794', '课程介绍', '3e98cd0bfe0c44e6adc0e29a97ca3281', '01-尚硅谷-JUC高并发编程-课程介绍', 0, 0, 0, 0, 'Empty', 0, 1, '2022-09-17 17:45:39', '2022-09-17 17:45:39');
INSERT INTO `edu_video` VALUES ('1571073023279206402', '1571072526375817218', '1571072774758305794', 'JUC概述和进程线程概念1', 'ce80c124b1644cfbbe8c7971cce30d36', '02-尚硅谷-JUC高并发编程-JUC概述和进程线程概念（1）', 0, 0, 0, 0, 'Empty', 0, 1, '2022-09-17 17:46:13', '2022-09-17 17:46:13');
INSERT INTO `edu_video` VALUES ('1571073118007562242', '1571072526375817218', '1571072774758305794', 'JUC概述和进程线程概念2', '27c6c45a44234ad392c7b23c16dbe67d', '03-尚硅谷-JUC高并发编程-JUC概述和进程线程概念（2）', 0, 0, 0, 0, 'Empty', 0, 1, '2022-09-17 17:46:35', '2022-09-17 17:46:35');
INSERT INTO `edu_video` VALUES ('1571073297154674690', '1571072526375817218', '1571072774758305794', 'JUC概述和进程线程概念3', 'dd5b901f178c4502a224b2bdfce181f8', '04-尚硅谷-JUC高并发编程-JUC概述和进程线程概念（3）', 0, 0, 0, 0, 'Empty', 0, 1, '2022-09-17 17:47:18', '2022-09-17 17:47:18');
INSERT INTO `edu_video` VALUES ('1571669008116215810', '1571072526375817218', '1571667878971830274', 'Synchronized复习和案例分析', 'c23afa43ff2141b482d30d4ea41bd130', '05-尚硅谷-JUC高并发编程-Synchronized复习和案例分析.mp4', 0, 0, 0, 0, 'Empty', 0, 1, '2022-09-19 09:14:26', '2022-09-19 09:14:26');
INSERT INTO `edu_video` VALUES ('1571669335146098690', '1571072526375817218', '1571667878971830274', 'Synchronized实现案例', '5b15b5a1c3da4e6f87b7d8f9a13fb0e5', '06-尚硅谷-JUC高并发编程-Synchronized实现案例.mp4', 0, 0, 0, 0, 'Empty', 0, 1, '2022-09-19 09:15:44', '2022-09-19 09:15:44');
INSERT INTO `edu_video` VALUES ('1571670499489083394', '1571072526375817218', '1571667878971830274', 'Lock接口概述和实现案例', '34b5494c7f504551bcc4c595e9e2f432', '07-尚硅谷-JUC高并发编程-Lock接口概述和实现案例.mp4', 0, 0, 0, 0, 'Empty', 0, 1, '2022-09-19 09:20:22', '2022-09-19 09:20:22');
INSERT INTO `edu_video` VALUES ('1571672125222285313', '1571671477848240129', '1571671797466787842', '前言闲聊和课程说明', 'e8ea2fbef62d4024aa47175456aad8f1', '01_前言闲聊和课程说明.mp4', 0, 0, 0, 0, 'Empty', 0, 1, '2022-09-19 09:26:50', '2022-09-19 09:26:50');
INSERT INTO `edu_video` VALUES ('1571672667902308354', '1571671477848240129', '1571671797466787842', '零基础微服务架构理论入门', 'ef33265973cf4b69b34411f16c97f358', '02_零基础微服务架构理论入门.mp4', 0, 0, 0, 0, 'Empty', 0, 1, '2022-09-19 09:28:59', '2022-09-19 09:28:59');
INSERT INTO `edu_video` VALUES ('1571673357005484034', '1571671477848240129', '1571672779022004225', 'Spring Boot和Cloud版本选型', '6d8c734e435b43e0b77d4251011cf35a', '03_第二季Boot和Cloud版本选型.mp4', 0, 0, 0, 0, 'Empty', 0, 1, '2022-09-19 09:31:43', '2022-09-19 09:31:43');
INSERT INTO `edu_video` VALUES ('1571678132317057026', '1571673770924568577', '1571673847583862786', 'MySQL高级_课程简介', 'c27eb44cb72f4301933500c7e560d0ea', '01.尚硅谷_MySQL高级_课程简介.avi', 0, 0, 0, 0, 'Empty', 0, 1, '2022-09-19 09:50:42', '2022-09-19 09:50:42');
INSERT INTO `edu_video` VALUES ('1571678583984877570', '1571673770924568577', '1571673847583862786', 'MySQL高级_MySQL简介', 'a5564291b0a44374a909f9784d3793dd', '02.尚硅谷_MySQL高级_MySQL简介.avi', 0, 0, 0, 0, 'Empty', 0, 1, '2022-09-19 09:52:29', '2022-09-19 09:52:29');
INSERT INTO `edu_video` VALUES ('1571680363409960961', '1571679458467901442', '1571679517506924546', 'Vue源码mustache模板引擎-课程简介', '18ad2edc767248e4a70f7d9ac73f80e6', '01-尚硅谷-Vue源码mustache模板引擎-课程简介.mp4', 0, 0, 0, 0, 'Empty', 0, 1, '2022-09-19 09:59:34', '2022-09-19 09:59:34');
INSERT INTO `edu_video` VALUES ('1571681846520049665', '1571680700048994305', '1571680794919956482', 'react简介', '940fb7e8adc84e4c854f67e19e3d75e1', '001_尚硅谷react教程_react简介.mp4', 0, 0, 0, 0, 'Empty', 0, 1, '2022-09-19 10:05:27', '2022-09-19 10:05:27');
INSERT INTO `edu_video` VALUES ('1571682981960085505', '1571682457135214593', '1571682488412139521', 'SpringSecurity-课程介绍', '5d10fcd8564d4e1cb50c812669218c2e', '01-尚硅谷-SpringSecurity-课程介绍.mp4', 0, 0, 0, 0, 'Empty', 0, 1, '2022-09-19 10:09:58', '2022-09-19 10:09:58');
INSERT INTO `edu_video` VALUES ('1571683478041391105', '1571682457135214593', '1571683086066905090', 'SpringSecurity-框架概述', 'e43312e5895d4c07a0b550c07477427f', '02-尚硅谷-SpringSecurity-框架概述.mp4', 0, 0, 0, 0, 'Empty', 0, 1, '2022-09-19 10:11:56', '2022-09-19 10:11:56');
INSERT INTO `edu_video` VALUES ('1571683863799918594', '1571682457135214593', '1571683550128893954', 'SpringSecurity-入门案例', '47a11e6d274b4c0b99b437861f038037', '03-尚硅谷-SpringSecurity-入门案例.mp4', 0, 0, 1, 0, 'Empty', 0, 1, '2022-09-19 10:13:28', '2022-09-19 10:13:28');

-- ----------------------------
-- Table structure for statistics_daily
-- ----------------------------
DROP TABLE IF EXISTS `statistics_daily`;
CREATE TABLE `statistics_daily`  (
  `id` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键',
  `date_calculated` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '统计日期',
  `register_num` int(0) NOT NULL DEFAULT 0 COMMENT '注册人数',
  `login_num` int(0) NOT NULL DEFAULT 0 COMMENT '登录人数',
  `video_view_num` int(0) NOT NULL DEFAULT 0 COMMENT '每日播放视频数',
  `course_num` int(0) NOT NULL DEFAULT 0 COMMENT '每日新增课程数',
  `gmt_create` datetime(0) NOT NULL COMMENT '创建时间',
  `gmt_modified` datetime(0) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `statistics_day`(`date_calculated`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '网站统计日数据' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of statistics_daily
-- ----------------------------
INSERT INTO `statistics_daily` VALUES ('1571730748736647170', '2022-09-18', 0, 180, 166, 174, '2022-09-19 13:19:47', '2022-09-19 13:19:47');
INSERT INTO `statistics_daily` VALUES ('1572060198237900802', '2022-09-19', 0, 197, 143, 106, '2022-09-20 11:08:53', '2022-09-20 11:08:53');

-- ----------------------------
-- Table structure for t_order
-- ----------------------------
DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order`  (
  `id` char(19) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `order_no` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '订单号',
  `course_id` varchar(19) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '课程id',
  `course_title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '课程名称',
  `course_cover` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '课程封面',
  `teacher_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '讲师id',
  `teacher_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '讲师名称',
  `member_id` varchar(19) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '会员id',
  `nickname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '会员昵称',
  `mobile` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '会员手机',
  `total_fee` decimal(10, 2) NULL DEFAULT 0.01 COMMENT '订单金额（分）',
  `pay_type` tinyint(0) NULL DEFAULT NULL COMMENT '支付类型（1：微信 2：支付宝）',
  `status` tinyint(0) NULL DEFAULT NULL COMMENT '订单状态（0：未支付 1：已支付）',
  `is_deleted` tinyint(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '逻辑删除 1（true）已删除， 0（false）未删除',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `gmt_create` datetime(0) NOT NULL COMMENT '创建时间',
  `gmt_modified` datetime(0) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `ux_order_no`(`order_no`) USING BTREE,
  INDEX `idx_course_id`(`course_id`) USING BTREE,
  INDEX `idx_member_id`(`member_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '订单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_order
-- ----------------------------
INSERT INTO `t_order` VALUES ('1572055086446698498', '20220920104834338', '1571682457135214593', 'Spring Security', 'https://gulistu-edu-1010.oss-cn-beijing.aliyuncs.com/2022/09/19/962ffefc3262451f9132c95c0fbfa987163141dcde63903016.jpg', '1571065708882792450', '上官言心', '1571100005123604481', 'chenfl', '18070516157', 0.01, 1, 1, 0, NULL, '2022-09-20 10:48:35', '2022-09-20 10:48:46');

-- ----------------------------
-- Table structure for t_pay_log
-- ----------------------------
DROP TABLE IF EXISTS `t_pay_log`;
CREATE TABLE `t_pay_log`  (
  `id` char(19) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `order_no` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '订单号',
  `pay_time` datetime(0) NULL DEFAULT NULL COMMENT '支付完成时间',
  `total_fee` decimal(10, 2) NULL DEFAULT 0.01 COMMENT '支付金额（分）',
  `transaction_id` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '交易流水号',
  `trade_state` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '交易状态',
  `pay_type` tinyint(0) NOT NULL DEFAULT 0 COMMENT '支付类型（1：微信 2：支付宝）',
  `attr` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '其他属性',
  `is_deleted` tinyint(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '逻辑删除 1（true）已删除， 0（false）未删除',
  `gmt_create` datetime(0) NOT NULL COMMENT '创建时间',
  `gmt_modified` datetime(0) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_order_no`(`order_no`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '支付日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_pay_log
-- ----------------------------
INSERT INTO `t_pay_log` VALUES ('1571830608018132994', '20220919195539750', '2022-09-19 19:56:35', 0.01, '4200001548202209196435284338', 'SUCCESS', 1, '{\"transaction_id\":\"4200001548202209196435284338\",\"nonce_str\":\"wVul8ox7ZZvVk2Kk\",\"trade_state\":\"SUCCESS\",\"bank_type\":\"OTHERS\",\"openid\":\"oHwsHuLi-ai27j7VbBoDYMJcm8Uo\",\"sign\":\"67AEE8E6925A82160696C74EF7F0D5A3\",\"return_msg\":\"OK\",\"fee_type\":\"CNY\",\"mch_id\":\"1558950191\",\"cash_fee\":\"1\",\"out_trade_no\":\"20220919195539750\",\"cash_fee_type\":\"CNY\",\"appid\":\"wx74862e0dfcf69954\",\"total_fee\":\"1\",\"trade_state_desc\":\"支付成功\",\"trade_type\":\"NATIVE\",\"result_code\":\"SUCCESS\",\"attach\":\"\",\"time_end\":\"20220919195634\",\"is_subscribe\":\"N\",\"return_code\":\"SUCCESS\"}', 0, '2022-09-19 19:56:35', '2022-09-19 19:56:35');
INSERT INTO `t_pay_log` VALUES ('1571845292574232578', '20220919205444648', '2022-09-19 20:54:56', 0.01, '4200001549202209196495538409', 'SUCCESS', 1, '{\"transaction_id\":\"4200001549202209196495538409\",\"nonce_str\":\"2B6UQg80RTMWgP9A\",\"trade_state\":\"SUCCESS\",\"bank_type\":\"OTHERS\",\"openid\":\"oHwsHuLi-ai27j7VbBoDYMJcm8Uo\",\"sign\":\"3B675AF19DA7EC280EA1B9EA71976375\",\"return_msg\":\"OK\",\"fee_type\":\"CNY\",\"mch_id\":\"1558950191\",\"cash_fee\":\"1\",\"out_trade_no\":\"20220919205444648\",\"cash_fee_type\":\"CNY\",\"appid\":\"wx74862e0dfcf69954\",\"total_fee\":\"1\",\"trade_state_desc\":\"支付成功\",\"trade_type\":\"NATIVE\",\"result_code\":\"SUCCESS\",\"attach\":\"\",\"time_end\":\"20220919205453\",\"is_subscribe\":\"N\",\"return_code\":\"SUCCESS\"}', 0, '2022-09-19 20:54:56', '2022-09-19 20:54:56');
INSERT INTO `t_pay_log` VALUES ('1571846311848824833', '20220919205850583', '2022-09-19 20:58:59', 0.01, '4200001568202209194669470578', 'SUCCESS', 1, '{\"transaction_id\":\"4200001568202209194669470578\",\"nonce_str\":\"UKtQyRPyOeZ9MXln\",\"trade_state\":\"SUCCESS\",\"bank_type\":\"OTHERS\",\"openid\":\"oHwsHuLi-ai27j7VbBoDYMJcm8Uo\",\"sign\":\"279CBB65E080FB66599C00B97B13496D\",\"return_msg\":\"OK\",\"fee_type\":\"CNY\",\"mch_id\":\"1558950191\",\"cash_fee\":\"1\",\"out_trade_no\":\"20220919205850583\",\"cash_fee_type\":\"CNY\",\"appid\":\"wx74862e0dfcf69954\",\"total_fee\":\"1\",\"trade_state_desc\":\"支付成功\",\"trade_type\":\"NATIVE\",\"result_code\":\"SUCCESS\",\"attach\":\"\",\"time_end\":\"20220919205858\",\"is_subscribe\":\"N\",\"return_code\":\"SUCCESS\"}', 0, '2022-09-19 20:58:59', '2022-09-19 20:58:59');
INSERT INTO `t_pay_log` VALUES ('1571847338576695298', '20220919210254735', '2022-09-19 21:03:04', 0.01, '4200001560202209192932861252', 'SUCCESS', 1, '{\"transaction_id\":\"4200001560202209192932861252\",\"nonce_str\":\"kOLiohZdAmiOjZeW\",\"trade_state\":\"SUCCESS\",\"bank_type\":\"OTHERS\",\"openid\":\"oHwsHuLi-ai27j7VbBoDYMJcm8Uo\",\"sign\":\"C7BB8CE148DCD97833C85C07CF312655\",\"return_msg\":\"OK\",\"fee_type\":\"CNY\",\"mch_id\":\"1558950191\",\"cash_fee\":\"1\",\"out_trade_no\":\"20220919210254735\",\"cash_fee_type\":\"CNY\",\"appid\":\"wx74862e0dfcf69954\",\"total_fee\":\"1\",\"trade_state_desc\":\"支付成功\",\"trade_type\":\"NATIVE\",\"result_code\":\"SUCCESS\",\"attach\":\"\",\"time_end\":\"20220919210302\",\"is_subscribe\":\"N\",\"return_code\":\"SUCCESS\"}', 0, '2022-09-19 21:03:04', '2022-09-19 21:03:04');
INSERT INTO `t_pay_log` VALUES ('1571851192626077698', '20220919211806101', '2022-09-19 21:18:23', 0.01, '4200001571202209190165845292', 'SUCCESS', 1, '{\"transaction_id\":\"4200001571202209190165845292\",\"nonce_str\":\"Rm5Ch5OH5UTFrPkr\",\"trade_state\":\"SUCCESS\",\"bank_type\":\"OTHERS\",\"openid\":\"o4Q_cs9Byo95VA37Z6TPLZ0gYUPc\",\"sign\":\"F07D563C2740B09D98B553D7FB7C3759\",\"return_msg\":\"OK\",\"fee_type\":\"CNY\",\"mch_id\":\"1249296201\",\"cash_fee\":\"1\",\"out_trade_no\":\"20220919211806101\",\"cash_fee_type\":\"CNY\",\"appid\":\"wxc46e72f242ab5a19\",\"total_fee\":\"1\",\"trade_state_desc\":\"支付成功\",\"trade_type\":\"NATIVE\",\"result_code\":\"SUCCESS\",\"attach\":\"\",\"time_end\":\"20220919211820\",\"is_subscribe\":\"Y\",\"return_code\":\"SUCCESS\"}', 0, '2022-09-19 21:18:23', '2022-09-19 21:18:23');
INSERT INTO `t_pay_log` VALUES ('1572047066639654914', '20220920101626397', '2022-09-20 10:16:43', 0.01, '4200001577202209203061783191', 'SUCCESS', 1, '{\"transaction_id\":\"4200001577202209203061783191\",\"nonce_str\":\"4W1zauR4MltzBPpX\",\"trade_state\":\"SUCCESS\",\"bank_type\":\"OTHERS\",\"openid\":\"oHwsHuLi-ai27j7VbBoDYMJcm8Uo\",\"sign\":\"9873679F5A3E2919DE679D1B0EBE8A5C\",\"return_msg\":\"OK\",\"fee_type\":\"CNY\",\"mch_id\":\"1558950191\",\"cash_fee\":\"1\",\"out_trade_no\":\"20220920101626397\",\"cash_fee_type\":\"CNY\",\"appid\":\"wx74862e0dfcf69954\",\"total_fee\":\"1\",\"trade_state_desc\":\"支付成功\",\"trade_type\":\"NATIVE\",\"result_code\":\"SUCCESS\",\"attach\":\"\",\"time_end\":\"20220920101643\",\"is_subscribe\":\"N\",\"return_code\":\"SUCCESS\"}', 0, '2022-09-20 10:16:43', '2022-09-20 10:16:43');
INSERT INTO `t_pay_log` VALUES ('1572055135364866050', '20220920104834338', '2022-09-20 10:48:46', 0.01, '4200001545202209201140844785', 'SUCCESS', 1, '{\"transaction_id\":\"4200001545202209201140844785\",\"nonce_str\":\"Fgw98CY8gzqv6Zms\",\"trade_state\":\"SUCCESS\",\"bank_type\":\"OTHERS\",\"openid\":\"oHwsHuLi-ai27j7VbBoDYMJcm8Uo\",\"sign\":\"177175D6D276A964A1557E03E6B9F0AF\",\"return_msg\":\"OK\",\"fee_type\":\"CNY\",\"mch_id\":\"1558950191\",\"cash_fee\":\"1\",\"out_trade_no\":\"20220920104834338\",\"cash_fee_type\":\"CNY\",\"appid\":\"wx74862e0dfcf69954\",\"total_fee\":\"1\",\"trade_state_desc\":\"支付成功\",\"trade_type\":\"NATIVE\",\"result_code\":\"SUCCESS\",\"attach\":\"\",\"time_end\":\"20220920104846\",\"is_subscribe\":\"N\",\"return_code\":\"SUCCESS\"}', 0, '2022-09-20 10:48:46', '2022-09-20 10:48:46');

-- ----------------------------
-- Table structure for ucenter_member
-- ----------------------------
DROP TABLE IF EXISTS `ucenter_member`;
CREATE TABLE `ucenter_member`  (
  `id` char(19) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '会员id',
  `openid` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '微信openid',
  `mobile` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '手机号',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '密码',
  `nickname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '昵称',
  `sex` tinyint(0) UNSIGNED NULL DEFAULT NULL COMMENT '性别 1 女，2 男',
  `age` tinyint(0) UNSIGNED NULL DEFAULT NULL COMMENT '年龄',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户头像',
  `sign` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户签名',
  `is_disabled` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否禁用 1（true）已禁用，  0（false）未禁用',
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0 COMMENT '逻辑删除 1（true）已删除， 0（false）未删除',
  `gmt_create` datetime(0) NOT NULL COMMENT '创建时间',
  `gmt_modified` datetime(0) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '会员表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ucenter_member
-- ----------------------------
INSERT INTO `ucenter_member` VALUES ('1571100005123604481', NULL, '18070516157', '96e79218965eb72c92a549dd5a330112', 'chenfl', NULL, NULL, 'https://gulistu-edu-1010.oss-cn-beijing.aliyuncs.com/2022/09/15/Snipaste_2022-09-16_14-34-45.jpg', NULL, 0, 0, '2022-09-17 19:33:26', '2022-09-17 19:33:26');

SET FOREIGN_KEY_CHECKS = 1;
