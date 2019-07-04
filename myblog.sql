/*
 Navicat Premium Data Transfer

 Source Server         : 127.0.0.1
 Source Server Type    : MySQL
 Source Server Version : 50549
 Source Host           : localhost:3306
 Source Schema         : myblog

 Target Server Type    : MySQL
 Target Server Version : 50549
 File Encoding         : 65001

 Date: 03/07/2019 14:24:09
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (5, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (8, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (9, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (10, 'Can add user', 4, 'add_user');
INSERT INTO `auth_permission` VALUES (11, 'Can change user', 4, 'change_user');
INSERT INTO `auth_permission` VALUES (12, 'Can delete user', 4, 'delete_user');
INSERT INTO `auth_permission` VALUES (13, 'Can add content type', 5, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (14, 'Can change content type', 5, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (15, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (16, 'Can add session', 6, 'add_session');
INSERT INTO `auth_permission` VALUES (17, 'Can change session', 6, 'change_session');
INSERT INTO `auth_permission` VALUES (18, 'Can delete session', 6, 'delete_session');
INSERT INTO `auth_permission` VALUES (19, 'Can add 文章标签', 7, 'add_tag');
INSERT INTO `auth_permission` VALUES (20, 'Can change 文章标签', 7, 'change_tag');
INSERT INTO `auth_permission` VALUES (21, 'Can delete 文章标签', 7, 'delete_tag');
INSERT INTO `auth_permission` VALUES (22, 'Can add 我的博客', 8, 'add_blog');
INSERT INTO `auth_permission` VALUES (23, 'Can change 我的博客', 8, 'change_blog');
INSERT INTO `auth_permission` VALUES (24, 'Can delete 我的博客', 8, 'delete_blog');
INSERT INTO `auth_permission` VALUES (25, 'Can add 文章类别', 9, 'add_category');
INSERT INTO `auth_permission` VALUES (26, 'Can change 文章类别', 9, 'change_category');
INSERT INTO `auth_permission` VALUES (27, 'Can delete 文章类别', 9, 'delete_category');
INSERT INTO `auth_permission` VALUES (28, 'Can add 博客评论', 10, 'add_comment');
INSERT INTO `auth_permission` VALUES (29, 'Can change 博客评论', 10, 'change_comment');
INSERT INTO `auth_permission` VALUES (30, 'Can delete 博客评论', 10, 'delete_comment');
INSERT INTO `auth_permission` VALUES (31, 'Can add 数目统计', 11, 'add_counts');
INSERT INTO `auth_permission` VALUES (32, 'Can change 数目统计', 11, 'change_counts');
INSERT INTO `auth_permission` VALUES (33, 'Can delete 数目统计', 11, 'delete_counts');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `last_login` datetime NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `first_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `last_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO `auth_user` VALUES (1, 'pbkdf2_sha256$36000$YYrNDgHNDDAv$7PanYe5nVrcsFEdY/dt0jBKOezNQRkcqEF9iLvl98ew=', '2019-07-02 06:45:48', 1, 'root', '', '', 'yypython@163.com', 1, 1, '2019-07-02 06:44:40');

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_groups_user_id_group_id_94350c0c_uniq`(`user_id`, `group_id`) USING BTREE,
  INDEX `auth_user_groups_group_id_97559544_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq`(`user_id`, `permission_id`) USING BTREE,
  INDEX `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `content_type_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_auth_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO `django_admin_log` VALUES (1, '2019-07-02 06:47:06', '1', '技术', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (2, '2019-07-02 06:47:14', '2', '鸡汤', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (3, '2019-07-02 06:47:31', '1', 'django开发', 1, '[{\"added\": {}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (4, '2019-07-02 06:47:42', '2', 'flask开发', 1, '[{\"added\": {}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (5, '2019-07-02 06:47:48', '1', '这是我的第一篇博客文章', 1, '[{\"added\": {}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (6, '2019-07-02 07:48:12', '4', '无名之辈', 1, '[{\"added\": {}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (7, '2019-07-02 07:48:26', '5', '强将', 1, '[{\"added\": {}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (8, '2019-07-02 07:48:40', '6', '我的第六篇博客', 1, '[{\"added\": {}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (9, '2019-07-02 12:07:24', '7', '第七篇博文', 1, '[{\"added\": {}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (10, '2019-07-02 12:08:24', '3', '实用', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (11, '2019-07-02 12:08:33', '3', '实用', 2, '[{\"changed\": {\"fields\": [\"number\"]}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (12, '2019-07-02 12:08:46', '4', '未来', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (13, '2019-07-02 12:09:25', '3', 'scrapy', 1, '[{\"added\": {}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (14, '2019-07-02 12:09:33', '4', 'requests', 1, '[{\"added\": {}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (15, '2019-07-02 12:42:04', '8', '滑块验证码破解', 1, '[{\"added\": {}}]', 8, 1);

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (8, 'myblog', 'blog');
INSERT INTO `django_content_type` VALUES (9, 'myblog', 'category');
INSERT INTO `django_content_type` VALUES (10, 'myblog', 'comment');
INSERT INTO `django_content_type` VALUES (11, 'myblog', 'counts');
INSERT INTO `django_content_type` VALUES (7, 'myblog', 'tag');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2019-07-02 06:33:11');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2019-07-02 06:33:11');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2019-07-02 06:33:11');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2019-07-02 06:33:11');
INSERT INTO `django_migrations` VALUES (5, 'contenttypes', '0002_remove_content_type_name', '2019-07-02 06:33:11');
INSERT INTO `django_migrations` VALUES (6, 'auth', '0002_alter_permission_name_max_length', '2019-07-02 06:33:11');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0003_alter_user_email_max_length', '2019-07-02 06:33:12');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0004_alter_user_username_opts', '2019-07-02 06:33:12');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0005_alter_user_last_login_null', '2019-07-02 06:33:12');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0006_require_contenttypes_0002', '2019-07-02 06:33:12');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0007_alter_validators_add_error_messages', '2019-07-02 06:33:12');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0008_alter_user_username_max_length', '2019-07-02 06:33:12');
INSERT INTO `django_migrations` VALUES (13, 'sessions', '0001_initial', '2019-07-02 06:33:12');
INSERT INTO `django_migrations` VALUES (14, 'myblog', '0001_initial', '2019-07-02 06:38:27');
INSERT INTO `django_migrations` VALUES (15, 'myblog', '0002_auto_20190702_1640', '2019-07-02 08:40:18');
INSERT INTO `django_migrations` VALUES (16, 'myblog', '0003_comment', '2019-07-02 09:18:20');
INSERT INTO `django_migrations` VALUES (17, 'myblog', '0004_counts', '2019-07-02 11:53:33');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('qn9na44ualjpyao9z98hepv2s3mg6jpe', 'NTIyODIzMmQ3MGI4ZDRlYzUzZDE5ZDVmNTUwNGFkZmZmNjkxZmI1Nzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZDZkNDMxODNhYWZiZGQ0ZTZiNmI0YWI3OGYyMmQ2ZTRmMzMxZjY0In0=', '2019-07-16 06:45:48');

-- ----------------------------
-- Table structure for myblog_blog
-- ----------------------------
DROP TABLE IF EXISTS `myblog_blog`;
CREATE TABLE `myblog_blog`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime NOT NULL,
  `click_nums` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `myblog_blog_category_id_1e968d17_fk_myblog_category_id`(`category_id`) USING BTREE,
  CONSTRAINT `myblog_blog_category_id_1e968d17_fk_myblog_category_id` FOREIGN KEY (`category_id`) REFERENCES `myblog_category` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of myblog_blog
-- ----------------------------
INSERT INTO `myblog_blog` VALUES (1, '这是我的第一篇博客文章', '我们可以对其进行增加、修改、删除操作。\r\n\r\n现在我们开始写第一篇博客，保存之后，进入到navicat中blog表中，可以看到多出一个数据，这就是我们刚添加的第一篇博客。是不是很方便呢，admin也是django中最方便的一个特性了。\r\n\r\n但是，我们点击进入我的博客后，发现只有博客的标题展示出来，如果我们还想添加其它字段，比如点击数、发表时间等，同样可以在admin.py中进行配置\r\n\r\n我们可以对其进行增加、修改、删除操作。\r\n\r\n现在我们开始写第一篇博客，保存之后，进入到navicat中blog表中，可以看到多出一个数据，这就是我们刚添加的第一篇博客。是不是很方便呢，admin也是django中最方便的一个特性了。\r\n\r\n但是，我们点击进入我的博客后，发现只有博客的标题展示出来，如果我们还想添加其它字段，比如点击数、发表时间等，同样可以在admin.py中进行配置', '2019-07-02 06:46:00', '2019-07-02 06:47:48', -1, 1);
INSERT INTO `myblog_blog` VALUES (2, '这是第二篇博客文章', '雷锋网(公众号：雷锋网) AI 科技评论按：在 CVPR 2019 CLIC 图像压缩挑战赛中，图鸭科技所提出的算法 TucodecSSIM 夺得了 MS-SSIM 和 MOS 两项指标的冠军，算法 TucodecPSNR 夺得了 PSNR 指标的冠军，算法 TucodecPSNR40dB 则夺得高码点图像压缩 Transparent Track 的冠军。以下为图鸭科技提供的技术解读。\r\n\r\n摘要：\r\n\r\n近年来随着人工智能技术的发展，基于深度学习的图像压缩技术已取得了飞速的发展。一个典型的基于深度学习的图像压缩框架包括：自编码网络结构设计、量化、码率估计和率-失真优化等几个模块。本文将主要介绍图鸭科技在 CVPR 2019 CLIC 图像压缩挑战赛上的相关技术方案，针对于比赛所设置的低码点和高码点压缩两个赛道，我们基于变分自编码网络设计了可进行端到端优化的图像压缩方案。该方案包括一个非线性编码网络、软量化模块、一个非线性解码网络和一个熵估计模块。我们技术方案的特色之处总结如下：\r\n\r\n1. 提出了基于全局特征分析的 non-lcao 注意力模块，并融合进编码网络和解码网络，以实现提升自适应码字分配性能的目的。\r\n\r\n2. 设计了一种基于自适应聚类的软量化方法以降低量化损失。\r\n\r\n3. 提出了能融合超先验子网络和基于 pixel cnn++的上下文模型的码率估计模块。\r\n\r\n得益于优良的网络结构和算法设计，我们所提出的算法 TucodecSSIM 夺得了 MS-SSIM 和 MOS 两项指标的冠军，算法 TucodecPSNR 夺得了 PSNR 指标的冠军，算法 TucodecPSNR40dB 则夺得高码点图像压缩指标的冠军。接下来将具体介绍我们的算法方案：\r\n\r\n方法介绍：\r\n\r\n(1) 编码网络和解码网络\r\n\r\n我们的主干压缩自编码网络使用了如图 1 所示的非对称结构，它包括卷积、非线性单元和残差 non-local 注意力卷积等模块。值得注意的是，通过使用残差 non-local 注意力模块来对特征的全局关联性进行捕捉和建模，图像中的纹理、边界等复杂部分能得到更好的重建。在 kodak 标准数据集上的实验表明，通过在编码和解码网络结构中融合 non-local 注意力模块，能在 PSNR 指标熵带来 0.6db 的提升', '2019-07-02 15:28:09', '2019-07-02 12:05:18', 11, 2);
INSERT INTO `myblog_blog` VALUES (3, '第三篇博客', '是时候摆脱黑盒模型，构建起对机器学习的信任了！\r\n\r\n想象你是一个数据科学家，你想要在业余时间根据你朋友在facebook和twitter上发布的信息，来预估你朋友假期要去度假的地方。如果你预测对了，你朋友一定叹为观止，觉得你是锦鲤附身。如果你猜错了也没啥，只不过有点影响身为数据科学家的口碑而已。但如果你和其他人打了赌，就赌这个朋友暑假会去哪里，这时候预测错误的成本就有点高了。也就是说，当模型对错本身不造成很大影响的时候，解释性并不算是很重要的要素。不过当预测模型用于金融、公共事务等重大影响决策时，解释性就显得尤为重要了。\r\n\r\n  可解释的机器学习\r\n理解（interpret）表示用可被认知（understandable）的说法去解释（explain）或呈现（present）。在机器学习的场景中，可解释性（interpretability）就表示模型能够使用人类可认知的说法进行解释和呈现。[Finale Doshi-Velez]', '2018-06-02 15:28:46', '2019-07-02 15:28:57', 100, 1);
INSERT INTO `myblog_blog` VALUES (4, '无名之辈', '在编程的过程中，我们经常会重复性的写了很多的代码，比如一个页面的框架部分，这样有多少个页面就得写上多少次，这样既不好维护，也不够高效，所以我们引出了html的模板继承部分。\r\n\r\n通过观察我的博客：http://www.geerniya.cn/，我们发现，很多页面大体构造都是一样的，因此我们可以将公用的框架作为一个模板，其它页面可以继承自这个模板，然后在其基础上添加上自己的东西。\r\n\r\n新建base.html页面\r\n\r\n我们在templates下新建一个base页面，将上一节中的index.html页面全部剪切进来。\r\n\r\n然后在index.html页面中第一行写下如下，即可将base.html页面完全继承过来。', '2019-07-02 07:47:00', '2019-07-02 12:33:58', 1, 1);
INSERT INTO `myblog_blog` VALUES (5, '强将', '在编程的过程中，我们经常会重复性的写了很多的代码，比如一个页面的框架部分，这样有多少个页面就得写上多少次，这样既不好维护，也不够高效，所以我们引出了html的模板继承部分。\r\n\r\n通过观察我的博客：http://www.geerniya.cn/，我们发现，很多页面大体构造都是一样的，因此我们可以将公用的框架作为一个模板，其它页面可以继承自这个模板，然后在其基础上添加上自己的东西。\r\n\r\n新建base.html页面\r\n\r\n我们在templates下新建一个base页面，将上一节中的index.html页面全部剪切进来。\r\n\r\n然后在index.html页面中第一行写下如下，即可将base.html页面完全继承过来。', '2019-07-02 07:48:00', '2019-07-02 07:48:26', 0, 1);
INSERT INTO `myblog_blog` VALUES (6, '我的第六篇博客', '在编程的过程中，我们经常会重复性的写了很多的代码，比如一个页面的框架部分，这样有多少个页面就得写上多少次，这样既不好维护，也不够高效，所以我们引出了html的模板继承部分。\r\n\r\n通过观察我的博客：http://www.geerniya.cn/，我们发现，很多页面大体构造都是一样的，因此我们可以将公用的框架作为一个模板，其它页面可以继承自这个模板，然后在其基础上添加上自己的东西。\r\n\r\n新建base.html页面\r\n\r\n我们在templates下新建一个base页面，将上一节中的index.html页面全部剪切进来。\r\n\r\n然后在index.html页面中第一行写下如下，即可将base.html页面完全继承过来。', '2019-07-02 07:48:00', '2019-07-02 12:05:41', 2, 1);
INSERT INTO `myblog_blog` VALUES (7, '第七篇博文', '当然，这只能适配简单的场景，更多复杂的场景需要在iss样式里定制，还好别人已经给我们设计好了，我们这里直接用就行了。然而，我们后来自行添加的搜索框及评论内容样式设计的不够好，这也需要日后进一步的完善。\r\n\r\n添加超链接\r\n\r\n我们博客的首页有很多超链接，包括我们自己的社交链接，我这里只添加了个人的GitHub、知乎、CSDN博客，各位如果还可以自行添加其他内容。\r\n\r\n下面还添加了别的网站的超链接，也可以自行添加。当然，欢迎把我的博客网站也添加进来。\r\n\r\n博文的阅读量\r\n\r\n很多博客喜欢在博文后面添加上阅读量，我们在数据库中也定义了该字段，在视图函数中也应当添加上相关代码\r\n\r\n当然，这只能适配简单的场景，更多复杂的场景需要在iss样式里定制，还好别人已经给我们设计好了，我们这里直接用就行了。然而，我们后来自行添加的搜索框及评论内容样式设计的不够好，这也需要日后进一步的完善。\r\n\r\n添加超链接\r\n\r\n我们博客的首页有很多超链接，包括我们自己的社交链接，我这里只添加了个人的GitHub、知乎、CSDN博客，各位如果还可以自行添加其他内容。\r\n\r\n下面还添加了别的网站的超链接，也可以自行添加。当然，欢迎把我的博客网站也添加进来。\r\n\r\n博文的阅读量\r\n\r\n很多博客喜欢在博文后面添加上阅读量，我们在数据库中也定义了该字段，在视图函数中也应当添加上相关代码', '2019-07-02 12:06:00', '2019-07-02 12:07:24', 100, 2);
INSERT INTO `myblog_blog` VALUES (8, '滑块验证码破解', '极验最初的滑块验证码是两张图，首先出现的是原图，点一下出现凹槽，然后拖动滑块进去，注意拖拽速度就可以破解成功。\r\n###### 原理： 分别遍历扫描原图和有凹槽的图片像素，进行对比，像素不一致的位置就是凹槽，拖动滑块到凹槽就可以破解。\r\n1. 模拟点击验证按钮\r\n2. 识别滑块缺口位置\r\n3. 拖动滑块到缺口位置\r\n现在极验登录升级了验证码，首先出来的就是凹槽，这样无法获取原图，就没有办法进行对比。登录地址为：https://auth.geetest.com/login/\r\n![在这里插入图片描述](https://img-blog.csdnimg.cn/2019062517025065.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3o0MzQ4OTA=,size_16,color_FFFFFF,t_70)\r\n极验现在登录不仅有这种滑块，还有图案顺序验证的方式![在这里插入图片描述](https://img-blog.csdnimg.cn/20190625170103811.jpg?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3o0MzQ4OTA=,size_16,color_FFFFFF,t_70)\r\n我们简化看一个博客园的例子，它采用的也是极验的验证码，登录地址为：\r\nhttps://account.cnblogs.com/signin\r\n![在这里插入图片描述](https://img-blog.csdnimg.cn/20190625170553987.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3o0MzQ4OTA=,size_16,color_FFFFFF,t_70)\r\n第一个点在于获取原图，如果获取到原图，就可以用上面的原理进行解决。在element调试分析如图一：\r\n![在这里插入图片描述](https://img-blog.csdnimg.cn/20190625171203135.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3o0MzQ4OTA=,size_16,color_FFFFFF,t_70)\r\n示例图二\r\n![在这里插入图片描述](https://img-blog.csdnimg.cn/20190625171452377.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3o0MzQ4OTA=,size_16,color_FFFFFF,t_70)\r\n对应的执行如下代码：\r\n```\r\nbrowser.execute_script(\r\n            \"var x=document.getElementsByClassName(\'geetest_canvas_fullbg geetest_fade geetest_absolute\')[0];\"\r\n            \"x.style.display=\'block\';\"\r\n            \"x.style.opacity=1;\"\r\n        )\r\n```\r\n图一与图二如果直接进行像素扫描，会由于小滑块的干扰，无法找到缺口，这也是一个点。示例图三：\r\n![在这里插入图片描述](https://img-blog.csdnimg.cn/2019062517210663.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3o0MzQ4OTA=,size_16,color_FFFFFF,t_70)\r\n执行如下代码去掉小滑块：\r\n\r\n```\r\nbrowser.execute_script(\r\n            \"document.getElementsByClassName(\'geetest_canvas_slice geetest_absolute\')[0].remove();\"\r\n        )\r\n```\r\n然后就可以用利用上面原理的常规方法来解决了。\r\n需要注意的是，在使用selenium的方法解决验证码图片的时候，截取的是window图，不能直接获取到验证码图片，要进行处理，获取到尺寸从屏幕截图当中抠出验证码图片。\r\n![在这里插入图片描述](https://img-blog.csdnimg.cn/20190625172832482.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3o0MzQ4OTA=,size_16,color_FFFFFF,t_70)\r\n如下：\r\n\r\n```\r\n    def get_captcha_pic(name=\"captcha.png\"):\r\n        \"\"\"\r\n        获取验证码图片\r\n        :param name:\r\n        :return: captcha图片对象\r\n        \"\"\"\r\n        browser.save_screenshot(name)  # 截屏幕图\r\n        im = Image.open(name)\r\n        aa = (572, 193, 980, 452)  # 获取验证码图片在屏幕图当中的位置，测量不知道比例，可以再一边测好了，直接使用，否则返回的验证码图片不正确\r\n        captcha = im.crop(aa)  # todo 识别的时候存在问题\r\n        captcha.save(name)  # 保存验证码图片\r\n        return captcha\r\n\r\n```\r\n![在这里插入图片描述](https://img-blog.csdnimg.cn/20190625173210218.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3o0MzQ4OTA=,size_16,color_FFFFFF,t_70)\r\n![在这里插入图片描述](https://img-blog.csdnimg.cn/20190625173222306.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3o0MzQ4OTA=,size_16,color_FFFFFF,t_70)\r\n两张图片进行对比扫描找缺口的时候，有一些小技巧，比如图三中的第一个箭头是阴影小滑块，要把干扰去掉\r\n\r\n```\r\n    def pixel_is_equal(image1, image2, x, y):\r\n        \"\"\"\r\n        判断两张图片的像素是否相等,不相等即为缺口位置\r\n        :param image1:\r\n        :param image2:\r\n        :param x:\r\n        :param y:\r\n        :return:\r\n        \"\"\"\r\n        # 取两个图片的像素点\r\n        pixel1 = image1.load()[x, y]\r\n        pixel2 = image2.load()[x, y]\r\n        threshold = 60  # 像素色差\r\n        if abs(pixel1[0] - pixel2[0]) < threshold and abs(pixel1[1] - pixel2[1]) < threshold and abs(\r\n                pixel1[2] - pixel2[2]) < threshold:\r\n            return True  # 像素色差小于60，默认为没区别\r\n        else:\r\n            return False\r\n```\r\n过程中还有一些其它问题，可以留言讨论，完整代码如下：\r\n\r\n```\r\n# -*- coding: utf-8 -*-\r\nimport time\r\nfrom PIL import Image\r\nfrom selenium import webdriver\r\nfrom selenium.webdriver import ActionChains\r\nfrom selenium.webdriver.common.by import By\r\nfrom selenium.webdriver.support.ui import WebDriverWait\r\nfrom selenium.webdriver.support import expected_conditions as EC\r\n\r\n\r\nclass BlogYuan(object):\r\n    def __init__(self):\r\n        self.browser = webdriver.Chrome()\r\n        self.wait = WebDriverWait(self.browser, 20)\r\n\r\n    def open(self):\r\n        self.browser.get(\'https://account.cnblogs.com/signin\')\r\n        self.browser.implicitly_wait(3)\r\n        input_username = self.browser.find_element_by_id(\'LoginName\')\r\n        input_username.send_keys(\'dawfawfaefag\')\r\n        input_password = self.browser.find_element_by_id(\'Password\')\r\n        input_password.send_keys(\'cawfafaf\')\r\n        submitBtn = self.browser.find_element_by_id(\'submitBtn\')\r\n        time.sleep(1)\r\n        submitBtn.click()\r\n        time.sleep(2)  # 等待验证码加载\r\n\r\n    def get_captcha_pic(self, name=\"captcha.png\"):\r\n        \"\"\"\r\n        获取验证码图片\r\n        :param name:\r\n        :return: captcha图片对象\r\n        \"\"\"\r\n        self.browser.save_screenshot(name)  # 截屏幕图\r\n        im = Image.open(name)\r\n        aa = (572, 193, 980, 452)  # 获取验证码图片在屏幕图当中的位置，测量不知道比例，可以再一边测好了\r\n        captcha = im.crop(aa)  # todo 识别的时候存在问题\r\n        captcha.save(name)  # 保存验证码图片\r\n        return captcha\r\n\r\n    def get_slider(self):\r\n        \"\"\"\r\n        获取滑块\r\n        :return:\r\n        \"\"\"\r\n        slide = self.wait.until(EC.element_to_be_clickable((By.CLASS_NAME, \'geetest_slider_button\')))\r\n        return slide\r\n\r\n    def pixel_is_equal(self, image1, image2, x, y):\r\n        \"\"\"\r\n        判断两张图片的像素是否相等,不相等即为缺口位置\r\n        :param image1:\r\n        :param image2:\r\n        :param x:\r\n        :param y:\r\n        :return:\r\n        \"\"\"\r\n        # 取两个图片的像素点\r\n        pixel1 = image1.load()[x, y]\r\n        pixel2 = image2.load()[x, y]\r\n        threshold = 60  # 像素色差\r\n        if abs(pixel1[0] - pixel2[0]) < threshold and abs(pixel1[1] - pixel2[1]) < threshold and abs(\r\n                pixel1[2] - pixel2[2]) < threshold:\r\n            return True  # 像素色差小于60，默认为没区别\r\n        else:\r\n            return False\r\n\r\n    def get_gap(self, image1, image2):\r\n        \"\"\"\r\n        获取缺口位置\r\n        :param image1:完整图片\r\n        :param image2: 带缺口的图片\r\n        :return:\r\n        \"\"\"\r\n        left = 60  # 设置一个起始量,因为验证码一般不可能在左边，加快识别速度\r\n        for i in range(left, image1.size[0]):\r\n            for j in range(image1.size[1]):\r\n                if not self.pixel_is_equal(image1, image2, i, j):\r\n                    left = i\r\n                    return left\r\n        return left\r\n\r\n    def slide_path(self, gap):\r\n        \"\"\"\r\n        滑动路径\r\n        :param gap:\r\n        :return: 滑动路径\r\n        \"\"\"\r\n        # 移动轨迹\r\n        track = []\r\n        # 当前位移\r\n        current = 0\r\n        # 减速阈值\r\n        mid = gap * 4 / 5\r\n        # 计算间隔\r\n        t = 0.2\r\n        # 初速度\r\n        v = 0\r\n\r\n        while current < gap:\r\n            if current < mid:\r\n                # 加速度为正2\r\n                a = 2\r\n            else:\r\n                # 加速度为负3\r\n                a = -3\r\n            # 初速度v0\r\n            v0 = v\r\n            # 当前速度v = v0 + at\r\n            v = v0 + a * t\r\n            # 移动距离x = v0t + 1/2 * a * t^2\r\n            move = v0 * t + 1 / 2 * a * t * t\r\n            # 当前位移\r\n            current += move\r\n            # 加入轨迹\r\n            track.append(round(move))\r\n        return track\r\n\r\n    def move_to_gap(self, slider, track):\r\n        \"\"\"\r\n        拖动滑块到缺口处\r\n        :param slider: 滑块\r\n        :param track: 轨迹\r\n        :return:\r\n        \"\"\"\r\n        ActionChains(self.browser).click_and_hold(slider).perform()\r\n        for x in track:\r\n            ActionChains(self.browser).move_by_offset(xoffset=x, yoffset=0).perform()\r\n        time.sleep(0.5)\r\n        ActionChains(self.browser).release().perform()\r\n\r\n    def check_gap(self, gap):\r\n        \"\"\"\r\n        校准gap，可以自己调节，越精细，效果越好\r\n        :param gap:\r\n        :return: gap\r\n        \"\"\"\r\n        aa = round(gap / 12.5)\r\n        bb = {4: 38, 5: 41, 6: 42, 7: 43, 8: 46, 9: 52, 10: 54, 11: 59, 12: 62, 13: 65, 14: 68, 15: 71, 16: 74, 17: 79,\r\n              18: 84, 19: 86, 20: 87, 21: 92, 22: 93, 23: 95, 24: 98, 25: 101}\r\n        return gap - bb.get(int(aa))\r\n\r\n    def run(self):\r\n        self.open()\r\n        #  移除滑块，否则滑块会对色差造成影响，无法获取gap\r\n        self.browser.execute_script(\r\n            \"document.getElementsByClassName(\'geetest_canvas_slice geetest_absolute\')[0].remove();\"\r\n        )\r\n        image1 = self.get_captcha_pic(\"image1.png\")  # 获取有缺口验证码图片,\r\n        # 显示无缺口图片\r\n        self.browser.execute_script(\r\n            \"var x=document.getElementsByClassName(\'geetest_canvas_fullbg geetest_fade geetest_absolute\')[0];\"\r\n            \"x.style.display=\'block\';\"\r\n            \"x.style.opacity=1;\"\r\n        )\r\n\r\n        image2 = self.get_captcha_pic(\"image2.png\")  # 获取无缺口验证码图片\r\n        # 获取缺口的位置\r\n        gap = self.get_gap(image1, image2)\r\n        # 减去缺口位移\r\n        gap -= 6\r\n        # 获取滑动路径\r\n        track = self.slide_path(self.check_gap(gap))\r\n        # 拖动滑块\r\n        slide = self.get_slider()\r\n        self.move_to_gap(slide, track)\r\n        time.sleep(1)\r\n        self.browser.close()\r\n        # 如果验证通过，执行，，，\r\n\r\n\r\nif __name__ == \"__main__\":\r\n    gt = BlogYuan()\r\n    gt.run()\r\n```', '2019-07-02 12:40:00', '2019-07-02 12:42:03', 0, 1);

-- ----------------------------
-- Table structure for myblog_blog_tag
-- ----------------------------
DROP TABLE IF EXISTS `myblog_blog_tag`;
CREATE TABLE `myblog_blog_tag`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `blog_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `myblog_blog_tag_blog_id_tag_id_a63c3832_uniq`(`blog_id`, `tag_id`) USING BTREE,
  INDEX `myblog_blog_tag_tag_id_f7a72b16_fk_myblog_tag_id`(`tag_id`) USING BTREE,
  CONSTRAINT `myblog_blog_tag_tag_id_f7a72b16_fk_myblog_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `myblog_tag` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `myblog_blog_tag_blog_id_3e8b1101_fk_myblog_blog_id` FOREIGN KEY (`blog_id`) REFERENCES `myblog_blog` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of myblog_blog_tag
-- ----------------------------
INSERT INTO `myblog_blog_tag` VALUES (1, 1, 1);
INSERT INTO `myblog_blog_tag` VALUES (2, 4, 1);
INSERT INTO `myblog_blog_tag` VALUES (3, 5, 1);
INSERT INTO `myblog_blog_tag` VALUES (4, 6, 1);
INSERT INTO `myblog_blog_tag` VALUES (5, 7, 2);
INSERT INTO `myblog_blog_tag` VALUES (6, 8, 1);

-- ----------------------------
-- Table structure for myblog_category
-- ----------------------------
DROP TABLE IF EXISTS `myblog_category`;
CREATE TABLE `myblog_category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `number` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of myblog_category
-- ----------------------------
INSERT INTO `myblog_category` VALUES (1, '技术', 6);
INSERT INTO `myblog_category` VALUES (2, '鸡汤', 2);
INSERT INTO `myblog_category` VALUES (3, '实用', 3);
INSERT INTO `myblog_category` VALUES (4, '未来', 4);

-- ----------------------------
-- Table structure for myblog_comment
-- ----------------------------
DROP TABLE IF EXISTS `myblog_comment`;
CREATE TABLE `myblog_comment`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `content` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `create_time` datetime NOT NULL,
  `blog_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `myblog_comment_blog_id_8de55cf0_fk_myblog_blog_id`(`blog_id`) USING BTREE,
  CONSTRAINT `myblog_comment_blog_id_8de55cf0_fk_myblog_blog_id` FOREIGN KEY (`blog_id`) REFERENCES `myblog_blog` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of myblog_comment
-- ----------------------------
INSERT INTO `myblog_comment` VALUES (1, '17671465696', '添加的第一条评论', '2019-07-02 09:28:59', 5);
INSERT INTO `myblog_comment` VALUES (2, '游客94369539', '第二条评论', '2019-07-02 09:29:59', 5);

-- ----------------------------
-- Table structure for myblog_counts
-- ----------------------------
DROP TABLE IF EXISTS `myblog_counts`;
CREATE TABLE `myblog_counts`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `blog_nums` int(11) NOT NULL,
  `category_nums` int(11) NOT NULL,
  `tag_nums` int(11) NOT NULL,
  `visit_nums` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of myblog_counts
-- ----------------------------
INSERT INTO `myblog_counts` VALUES (1, 8, 4, 4, 3);

-- ----------------------------
-- Table structure for myblog_tag
-- ----------------------------
DROP TABLE IF EXISTS `myblog_tag`;
CREATE TABLE `myblog_tag`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `number` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of myblog_tag
-- ----------------------------
INSERT INTO `myblog_tag` VALUES (1, 'django开发', 1);
INSERT INTO `myblog_tag` VALUES (2, 'flask开发', 1);
INSERT INTO `myblog_tag` VALUES (3, 'scrapy', 3);
INSERT INTO `myblog_tag` VALUES (4, 'requests', 4);

SET FOREIGN_KEY_CHECKS = 1;
