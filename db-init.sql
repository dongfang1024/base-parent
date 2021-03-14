# Host: localhost  (Version 5.7.19)
# Date: 2021-03-14 15:49:15
# Generator: MySQL-Front 6.1  (Build 1.26)


#
# Structure for table "permission"
#

CREATE TABLE `permission` (
                                  `id` bigint(0) NOT NULL DEFAULT '' COMMENT '编号',
                                  `pid` bigint(0) NOT NULL DEFAULT '' COMMENT '所属上级',
                                  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '名称',
                                  `type` tinyint(3) NOT NULL DEFAULT '0' COMMENT '类型(1:菜单,2:按钮)',
                                  `permission_value` varchar(50) DEFAULT NULL COMMENT '权限值',
                                  `path` varchar(100) DEFAULT NULL COMMENT '访问路径',
                                  `component` varchar(100) DEFAULT NULL COMMENT '组件路径',
                                  `icon` varchar(50) DEFAULT NULL COMMENT '图标',
                                  `status` tinyint(4) DEFAULT NULL COMMENT '状态(0:禁止,1:正常)',
                                  `created_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '创建人',
                                  `created_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
                                  `updated_by` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '更新人',
                                  `updated_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
                                  `deleted` tinyint(1) NULL DEFAULT NULL COMMENT '是否删除',
                                  PRIMARY KEY (`id`),
                                  KEY `idx_pid` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='权限';

#
# Data for table "permission"
#
INSERT INTO `permission` VALUES (1,'0','全部数据',0,NULL,NULL,NULL,NULL,NULL,0,'2019-11-15 17:13:06','2019-11-15 17:13:06'),
(2,1,'权限管理',1,NULL,'/acl','Layout',NULL,NULL,0,'2019-11-15 17:13:06','2019-11-18 13:54:25'),
(3,2,'用户管理',1,NULL,'user/list','/acl/user/list',NULL,NULL,'admin','2019-11-15 17:13:40','admin','2019-11-18 13:53:12',0),
(4,2,'角色管理',1,NULL,'role/list','/acl/role/list',NULL,NULL,0,'2019-11-15 17:14:21','2019-11-15 17:14:21'),
(5,2,'菜单管理',1,NULL,'menu/list','/acl/menu/list',NULL,NULL,0,'2019-11-15 17:14:46','2019-11-15 17:14:46'),
(6,3,'查看',2,'user.list','','',NULL,NULL,0,'2019-11-15 17:15:45','2019-11-17 21:57:16'),
(7,3,'添加',2,'user.add','user/add','/acl/user/form',NULL,NULL,0,'2019-11-15 17:16:22','2019-11-15 17:16:22'),
(8,3,'修改',2,'user.update','user/update/:id','/acl/user/form',NULL,NULL,0,'2019-11-15 17:17:04','2019-11-15 17:17:04'),
(9,3,'删除',2,'user.remove','','',NULL,NULL,0,'2019-11-15 17:17:22','2019-11-15 17:17:22'),
(10,4,'修改',2,'role.update','role/update/:id','/acl/role/form',NULL,NULL,0,'2019-11-15 17:18:27','2019-11-15 17:19:53'),
(11,4,'查看',2,'role.list','','',NULL,NULL,0,'2019-11-15 17:18:47','2019-11-15 17:18:47'),
(12,4,'添加',2,'role.add','role/add','/acl/role/form',NULL,NULL,0,'2019-11-15 17:19:19','2019-11-18 11:05:42'),
(13,4,'删除',2,'role.remove','','',NULL,NULL,0,'2019-11-15 17:20:55','2019-11-15 17:20:55'),
(14,4,'角色权限',2,'role.acl','role/distribution/:id','/acl/role/roleForm',NULL,NULL,0,'2019-11-15 17:21:38','2019-11-15 17:21:38'),
(15,5,'查看',2,'permission.list','','',NULL,NULL,0,'2019-11-15 17:22:07','2019-11-15 17:22:07'),
(16,5,'添加',2,'permission.add','','',NULL,NULL,0,'2019-11-15 17:22:23','2019-11-15 17:22:23'),
(17,5,'修改',2,'permission.update','','',NULL,NULL,0,'2019-11-15 17:22:35','2019-11-15 17:22:35'),
(18,5,'删除',2,'permission.remove','','',NULL,NULL,0,'2019-11-15 17:22:41','2019-11-15 17:22:41'),
(19,'1','讲师管理',1,NULL,'/edu/teacher','Layout',NULL,NULL,0,'2019-11-15 22:34:49','2019-11-15 22:34:49'),
(20,19,'讲师列表',1,NULL,'list','/edu/teacher/list',NULL,NULL,0,'2019-11-15 22:35:52','2019-11-15 22:35:52'),
(21,19,'添加讲师',1,NULL,'create','/edu/teacher/form',NULL,NULL,0,'2019-11-15 22:36:18','2019-11-15 22:36:18'),
(22,21,'添加',2,'teacher.add','','',NULL,NULL,0,'2019-11-15 22:36:34','2019-11-15 22:36:34'),
(23,20,'查看',2,'teacher.list','','',NULL,NULL,0,'2019-11-15 22:36:58','2019-11-15 22:36:58'),
(24,20,'修改',2,'teacher.update','edit/:id','/edu/teacher/form',NULL,NULL,0,'2019-11-15 22:37:31','2019-11-15 22:37:31'),
(25,20,'删除',2,'teacher.remove','','',NULL,NULL,0,'2019-11-15 22:37:48','2019-11-15 22:37:48'),
(26,'1','课程分类',1,NULL,'/edu/subject','Layout',NULL,NULL,0,'2019-11-15 22:38:15','2019-11-15 22:38:15'),
(27,26,'课程分类列表',1,NULL,'list','/edu/subject/list',NULL,NULL,0,'2019-11-15 22:38:38','2019-11-15 22:38:38'),
(28,26,'导入课程分类',1,NULL,'import','/edu/subject/import',NULL,NULL,0,'2019-11-15 22:39:03','2019-11-15 22:39:03'),
(29,27,'查看',2,'subject.list','','',NULL,NULL,0,'2019-11-15 22:39:29','2019-11-15 22:39:29'),
(30,28,'导入',2,'subject.import','','',NULL,NULL,0,'2019-11-15 22:39:47','2019-11-15 22:39:47'),
(31,'1','课程管理',1,NULL,'/edu/course','Layout',NULL,NULL,0,'2019-11-15 22:40:21','2019-11-15 22:40:21'),
(32,31,'课程列表',1,NULL,'list','/edu/course/list',NULL,NULL,0,'2019-11-15 22:40:42','2019-11-15 22:40:42'),
(33,31,'发布课程',1,NULL,'info','/edu/course/info',NULL,NULL,0,'2019-11-15 22:41:06','2019-11-15 22:41:06'),
(34,32,'完成发布',2,'course.publish','publish/:id','/edu/course/publish',NULL,NULL,0,'2019-11-15 22:41:40','2019-11-15 22:44:01'),
(35,32,'编辑课程',2,'course.update','info/:id','/edu/course/info',NULL,NULL,0,'2019-11-15 22:42:19','2019-11-15 22:42:19'),
(36,32,'编辑课程大纲',2,'chapter.update','chapter/:id','/edu/course/chapter',NULL,NULL,0,'2019-11-15 22:43:17','2019-11-15 22:43:17'),
(37,'1','统计分析',1,NULL,'/statistics/daily','Layout',NULL,NULL,0,'2019-11-15 22:44:27','2019-11-15 22:44:27'),
(38,37,'生成统计',1,NULL,'create','/statistics/daily/create',NULL,NULL,0,'2019-11-15 22:44:53','2019-11-15 22:44:53'),
(39,37,'统计图表',1,NULL,'chart','/statistics/daily/chart',NULL,NULL,0,'2019-11-15 22:45:13','2019-11-15 22:45:13'),
(40,39,'查看',2,'daily.list','','',NULL,NULL,0,'2019-11-15 22:45:30','2019-11-15 22:45:30'),
(41,38,'生成',2,'daily.add','','',NULL,NULL,0,'2019-11-15 22:45:51','2019-11-15 22:45:51'),
(42,'1','CMS管理',1,NULL,'/cms','Layout',NULL,NULL,0,'2019-11-15 22:47:11','2019-11-18 10:51:46'),
(43,46,'查看',2,'banner.list','',NULL,NULL,NULL,0,'2019-11-15 22:48:24','2019-11-15 22:48:24'),
(44,46,'添加',2,'banner.add','banner/add','/cms/banner/form',NULL,NULL,0,'2019-11-15 22:48:37','2019-11-18 10:52:10'),
(45,46,'修改',2,'banner.update','banner/update/:id','/cms/banner/form',NULL,NULL,0,'2019-11-15 22:49:11','2019-11-18 10:52:05'),
(46,42,'Bander列表',1,NULL,'banner/list','/cms/banner/list',NULL,NULL,0,'2019-11-15 22:51:01','2019-11-18 10:51:29'),
(47,46,'删除',2,'banner.remove','','',NULL,NULL,0,'2019-11-15 22:51:39','2019-11-15 22:51:39'),
(48,'1','订单管理',1,NULL,'/order','Layout',NULL,NULL,0,'2019-11-15 22:53:15','2019-11-15 22:53:15'),
(49,48,'订单列表',1,NULL,'list','/order/list',NULL,NULL,0,'2019-11-15 22:53:33','2019-11-15 22:53:58'),
(50,49,'查看',2,'order.list','','',NULL,NULL,0,'2019-11-15 22:54:12','2019-11-15 22:54:12'),
(51,3,'分配角色',2,'user.assgin','user/role/:id','/acl/user/roleForm',NULL,NULL,0,'2019-11-18 13:38:56','2019-11-18 13:38:56');

#
# Structure for table "role"
#

CREATE TABLE `role` (
                            `id` bigint(0) NOT NULL,
                            `code` varchar(30) DEFAULT NULL COMMENT '角色编码',
                            `name` varchar(30) NOT NULL DEFAULT '' COMMENT '角色名称',
                            `remark` varchar(255) DEFAULT NULL COMMENT '备注',
                            `created_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '创建人',
                            `created_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
                            `updated_by` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '更新人',
                            `updated_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
                            `deleted` tinyint(1) NULL DEFAULT NULL COMMENT '是否删除',
                            PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色';

#
# Data for table "role"
#

INSERT INTO `role` VALUES (1,'普通管理员',NULL,NULL,'admin','2019-11-11 13:09:32','admin','2019-11-18 10:27:18',0),
(2,'课程管理员',NULL,NULL,'admin','2019-11-11 13:09:45','admin','2019-11-18 10:25:44',0),
(3,'test',NULL,NULL,'admin','2019-11-18 13:35:58','admin','2019-11-18 13:35:58',0);

#
# Structure for table "role_permission"
#

CREATE TABLE `role_permission` (
                                       `id` bigint(0) NOT NULL,
                                       `role_id` bigint(0) NOT NULL,
                                       `permission_id` bigint(0) NOT NULL,
                                       `created_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '创建人',
                                       `created_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
                                       `updated_by` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '更新人',
                                       `updated_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
                                       `deleted` tinyint(1) NULL DEFAULT NULL COMMENT '是否删除',
                                       PRIMARY KEY (`id`),
                                       KEY `idx_role_id` (`role_id`),
                                       KEY `idx_permission_id` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色权限';

#
# Data for table "role_permission"
#
INSERT INTO `role_permission`
VALUES
	( 1, 1, 1, 'admin', '2019-11-18 13:39:53', 'admin', '2019-11-18 13:39:53', 1 ),
	( 2, 1, 5, 'admin', '2019-11-18 13:39:53', 'admin', '2019-11-18 13:39:53', 1 ),
	( 3, 1, '1195268616021139457', 'admin', '2019-11-18 13:39:53', 'admin', '2019-11-18 13:39:53', 1 ),
	( 4, 1, '1195269143060602882', 'admin', '2019-11-18 13:39:53', 'admin', '2019-11-18 13:39:53', 1 ),
	( 5, 1, '1195269295926206466', 'admin', '2019-11-18 13:39:53', 'admin', '2019-11-18 13:39:53', 1 ),
	( 6, 1, 8, 'admin', '2019-11-18 13:39:53', 'admin', '2019-11-18 13:39:53', 1 ),
	( 7, 1, 9, 'admin', '2019-11-18 13:39:53', 'admin', '2019-11-18 13:39:53', 1 ),
	( 8, 1, 51, 'admin', '2019-11-18 13:39:53', 'admin', '2019-11-18 13:39:53', 1 ),
	( 9, 1, '1195268788138598401', 'admin', '2019-11-18 13:39:53', 'admin', '2019-11-18 13:39:53', 1 ),
	( 10, 1, 10, 'admin', '2019-11-18 13:39:53', 'admin', '2019-11-18 13:39:53', 1 ),
	( 11, 1, 11, 'admin', '2019-11-18 13:39:53', 'admin', '2019-11-18 13:39:53', 1 ),
	( 12, 1, 12, 'admin', '2019-11-18 13:39:53', 'admin', '2019-11-18 13:39:53', 1 ),
	( 13, 1, 13, 'admin', '2019-11-18 13:39:53', 'admin', '2019-11-18 13:39:53', 1 ),
	( 14, 1, 14, 'admin', '2019-11-18 13:39:53', 'admin', '2019-11-18 13:39:53', 1 ),
	( 15, 1, '1195268893830864898', 'admin', '2019-11-18 13:39:53', 'admin', '2019-11-18 13:39:53', 1 ),
	( 16, 1, 15, 'admin', '2019-11-18 13:39:53', 'admin', '2019-11-18 13:39:53', 1 ),
	( 17, 1, 16, 'admin', '2019-11-18 13:39:53', 'admin', '2019-11-18 13:39:53', 1 ),
	( 18, 1, 17, 'admin', '2019-11-18 13:39:53', 'admin', '2019-11-18 13:39:53', 1 ),
	( 19, 1, 18, 'admin', '2019-11-18 13:39:53', 'admin', '2019-11-18 13:39:53', 1 ),
	( 20, 1, 19, 'admin', '2019-11-18 13:39:53', 'admin', '2019-11-18 13:39:53', 1 ),
	( 21, 1, 20, 'admin', '2019-11-18 13:39:53', 'admin', '2019-11-18 13:39:53', 1 ),
	( 22, 1, 23, 'admin', '2019-11-18 13:39:53', 'admin', '2019-11-18 13:39:53', 1 ),
	( 23, 1, 24, 'admin', '2019-11-18 13:39:53', 'admin', '2019-11-18 13:39:53', 1 ),
	( 25, 1, 25, 'admin', '2019-11-18 13:39:53', 'admin', '2019-11-18 13:39:53', 1 ),
	( 26, 1, 21, 'admin', '2019-11-18 13:39:53', 'admin', '2019-11-18 13:39:53', 1 ),
	( 27, 1, 22, 'admin', '2019-11-18 13:39:53', 'admin', '2019-11-18 13:39:53', 1 ),
	( 28, 1, 26, 'admin', '2019-11-18 13:39:53', 'admin', '2019-11-18 13:39:53', 1 ),
	( 29, 1, 27, 'admin', '2019-11-18 13:39:53', 'admin', '2019-11-18 13:39:53', 1 ),
	( 30, 1, 29, 'admin', '2019-11-18 13:39:53', 'admin', '2019-11-18 13:39:53', 1 ),
	( 31, 1, 28, 'admin', '2019-11-18 13:39:53', 'admin', '2019-11-18 13:39:53', 1 ),
	( 32, 1, 30, 'admin', '2019-11-18 13:39:53', 'admin', '2019-11-18 13:39:53', 1 ),
	( 33, 1, 31, 'admin', '2019-11-18 13:39:53', 'admin', '2019-11-18 13:39:53', 1 ),
	( 34, 1, 32, 'admin', '2019-11-18 13:39:53', 'admin', '2019-11-18 13:39:53', 1 ),
	( 35, 1, 34, 'admin', '2019-11-18 13:39:53', 'admin', '2019-11-18 13:39:53', 1 ),
	( 36, 1, 35, 'admin', '2019-11-18 13:39:53', 'admin', '2019-11-18 13:39:53', 1 ),
	( 37, 1, 36, 'admin', '2019-11-18 13:39:53', 'admin', '2019-11-18 13:39:53', 1 ),
	( 38, 1, 33, 'admin', '2019-11-18 13:39:53', 'admin', '2019-11-18 13:39:53', 1 ),
	( 39, 1, 37, 'admin', '2019-11-18 13:39:53', 'admin', '2019-11-18 13:39:53', 1 ),
	( 40, 1, 38, 'admin', '2019-11-18 13:39:53', 'admin', '2019-11-18 13:39:53', 1 ),
	( 41, 1, 41, 'admin', '2019-11-18 13:39:53', 'admin', '2019-11-18 13:39:53', 1 ),
	( 42, 1, 39, 'admin', '2019-11-18 13:39:53', 'admin', '2019-11-18 13:39:53', 1 ),
	( 43, 1, 40, 'admin', '2019-11-18 13:39:53', 'admin', '2019-11-18 13:39:53', 1 ),
	( 44, 1, 42, 'admin', '2019-11-18 13:39:53', 'admin', '2019-11-18 13:39:53', 1 ),
	( 45, 1, 46, 'admin', '2019-11-18 13:39:53', 'admin', '2019-11-18 13:39:53', 1 ),
	( 46, 1, 43, 'admin', '2019-11-18 13:39:53', 'admin', '2019-11-18 13:39:53', 1 ),
	( 47, 1, 44, 'admin', '2019-11-18 13:39:53', 'admin', '2019-11-18 13:39:53', 1 ),
	( 48, 1, 45, 'admin', '2019-11-18 13:39:53', 'admin', '2019-11-18 13:39:53', 1 ),
	( 49, 1, 47, 'admin', '2019-11-18 13:39:53', 'admin', '2019-11-18 13:39:53', 1 ),
	( 50, 1, 48, 'admin', '2019-11-18 13:39:53', 'admin', '2019-11-18 13:39:53', 1 ),
	( 51, 1, 49, 'admin', '2019-11-18 13:39:53', 'admin', '2019-11-18 13:39:53', 1 ),
	( 52, 1, 50, 'admin', '2019-11-18 13:39:53', 'admin', '2019-11-18 13:39:53', 1 ),
	( 53, 1, '1', 1, '2019-11-18 13:53:03', '2019-11-18 13:53:03' ),
	( 54, 1, 5, 1, '2019-11-18 13:53:03', '2019-11-18 13:53:03' ),
	( 55, 1, '1195268616021139457', 1, '2019-11-18 13:53:03', '2019-11-18 13:53:03' ),
	( 56, 1, '1195269143060602882', 1, '2019-11-18 13:53:03', '2019-11-18 13:53:03' ),
	( 57, 1, '1195269295926206466', 1, '2019-11-18 13:53:03', '2019-11-18 13:53:03' ),
	( 58, 1, 8, 1, '2019-11-18 13:53:03', '2019-11-18 13:53:03' ),
	( 59, 1, 9, 1, '2019-11-18 13:53:03', '2019-11-18 13:53:03' ),
	( 60, 1, 51, 1, '2019-11-18 13:53:03', '2019-11-18 13:53:03' ),
	( 61, 1, '1195268788138598401', 1, '2019-11-18 13:53:03', '2019-11-18 13:53:03' ),
	( 62, 1, 10, 1, '2019-11-18 13:53:03', '2019-11-18 13:53:03' ),
	( 63, 1, 11, 1, '2019-11-18 13:53:03', '2019-11-18 13:53:03' ),
	( 64, 1, 12, 1, '2019-11-18 13:53:03', '2019-11-18 13:53:03' ),
	( 65, 1, 13, 1, '2019-11-18 13:53:03', '2019-11-18 13:53:03' ),
	( 66, 1, 14, 1, '2019-11-18 13:53:03', '2019-11-18 13:53:03' ),
	( 67, 1, '1195268893830864898', 1, '2019-11-18 13:53:03', '2019-11-18 13:53:03' ),
	( 68, 1, 15, 1, '2019-11-18 13:53:03', '2019-11-18 13:53:03' ),
	( 69, 1, 19, 1, '2019-11-18 13:53:03', '2019-11-18 13:53:03' ),
	( 70, 1, 20, 1, '2019-11-18 13:53:03', '2019-11-18 13:53:03' ),
	( 71, 1, 23, 1, '2019-11-18 13:53:03', '2019-11-18 13:53:03' ),
	( 72, 1, 24, 1, '2019-11-18 13:53:03', '2019-11-18 13:53:03' ),
	( 73, 1, 25, 1, '2019-11-18 13:53:03', '2019-11-18 13:53:03' ),
	( 74, 1, 21, 1, '2019-11-18 13:53:03', '2019-11-18 13:53:03' ),
	( 75, 1, 22, 1, '2019-11-18 13:53:03', '2019-11-18 13:53:03' ),
	( 76, 1, 26, 1, '2019-11-18 13:53:03', '2019-11-18 13:53:03' ),
	( 77, 1, 27, 1, '2019-11-18 13:53:03', '2019-11-18 13:53:03' ),
	( 78, 1, 29, 1, '2019-11-18 13:53:03', '2019-11-18 13:53:03' ),
	( 79, 1, 28, 1, '2019-11-18 13:53:03', '2019-11-18 13:53:03' ),
	( 80, 1, 30, 1, '2019-11-18 13:53:03', '2019-11-18 13:53:03' ),
	( 81, 1, 31, 1, '2019-11-18 13:53:03', '2019-11-18 13:53:03' ),
	( 82, 1, 32, 1, '2019-11-18 13:53:03', '2019-11-18 13:53:03' ),
	( 83, 1, 34, 1, '2019-11-18 13:53:03', '2019-11-18 13:53:03' ),
	( 84, 1, 35, 1, '2019-11-18 13:53:03', '2019-11-18 13:53:03' ),
	( 85, 1, 36, 1, '2019-11-18 13:53:03', '2019-11-18 13:53:03' ),
	( 86, 1, 37, 1, '2019-11-18 13:53:03', '2019-11-18 13:53:03' ),
	( 87, 1, 38, 1, '2019-11-18 13:53:03', '2019-11-18 13:53:03' ),
	( 88, 1, 41, 1, '2019-11-18 13:53:03', '2019-11-18 13:53:03' ),
	( 89, 1, 39, 1, '2019-11-18 13:53:03', '2019-11-18 13:53:03' ),
	( 90, 1, 40, 1, '2019-11-18 13:53:03', '2019-11-18 13:53:03' ),
	( 91, 1, 42, 1, '2019-11-18 13:53:03', '2019-11-18 13:53:03' ),
	( 92, 1, 46, 1, '2019-11-18 13:53:03', '2019-11-18 13:53:03' ),
	( 93, 1, 43, 1, '2019-11-18 13:53:03', '2019-11-18 13:53:03' ),
	( 94, 1, 44, 1, '2019-11-18 13:53:03', '2019-11-18 13:53:03' ),
	( 95, 1, 45, 1, '2019-11-18 13:53:03', '2019-11-18 13:53:03' ),
	( 96, 1, 47, 1, '2019-11-18 13:53:03', '2019-11-18 13:53:03' ),
	( 97, 1, 48, 1, '2019-11-18 13:53:03', '2019-11-18 13:53:03' ),
	( 98, 1, 49, 1, '2019-11-18 13:53:03', '2019-11-18 13:53:03' ),
	( 99, 1, 50, 1, '2019-11-18 13:53:03', '2019-11-18 13:53:03' ),
	( 100, 1, '1', 1, '2019-11-18 13:54:08', '2019-11-18 13:54:08' ),
	( 101, 1, 5, 1, '2019-11-18 13:54:08', '2019-11-18 13:54:08' ),
	( 102, 1, '1195268616021139457', 1, '2019-11-18 13:54:08', '2019-11-18 13:54:08' ),
	( 103, 1, '1195269143060602882', 1, '2019-11-18 13:54:08', '2019-11-18 13:54:08' ),
	( 104, 1, '1195269295926206466', 1, '2019-11-18 13:54:08', '2019-11-18 13:54:08' ),
	( 105, 1, 8, 1, '2019-11-18 13:54:08', '2019-11-18 13:54:08' ),
	( 106, 1, 9, 1, '2019-11-18 13:54:08', '2019-11-18 13:54:08' ),
	( 107, 1, 51, 1, '2019-11-18 13:54:08', '2019-11-18 13:54:08' ),
	( 108, 1, '1195268788138598401', 1, '2019-11-18 13:54:08', '2019-11-18 13:54:08' ),
	( 109, 1, 10, 1, '2019-11-18 13:54:08', '2019-11-18 13:54:08' ),
	( 110, 1, 11, 1, '2019-11-18 13:54:08', '2019-11-18 13:54:08' ),
	( 111, 1, 12, 1, '2019-11-18 13:54:08', '2019-11-18 13:54:08' ),
	( 112, 1, 13, 1, '2019-11-18 13:54:08', '2019-11-18 13:54:08' ),
	( 113, 1, 14, 1, '2019-11-18 13:54:08', '2019-11-18 13:54:08' ),
	( 114, 1, '1195268893830864898', 1, '2019-11-18 13:54:08', '2019-11-18 13:54:08' ),
	( 115, 1, 15, 1, '2019-11-18 13:54:08', '2019-11-18 13:54:08' ),
	( 116, 1, 16, 1, '2019-11-18 13:54:08', '2019-11-18 13:54:08' ),
	( 117, 1, 17, 1, '2019-11-18 13:54:08', '2019-11-18 13:54:08' ),
	( 118, 1, 18, 1, '2019-11-18 13:54:08', '2019-11-18 13:54:08' ),
	( 119, 1, 19, 1, '2019-11-18 13:54:08', '2019-11-18 13:54:08' ),
	( 120, 1, 20, 1, '2019-11-18 13:54:08', '2019-11-18 13:54:08' ),
	( 121, 1, 23, 1, '2019-11-18 13:54:08', '2019-11-18 13:54:08' ),
	( 122, 1, 24, 1, '2019-11-18 13:54:08', '2019-11-18 13:54:08' ),
	( 123, 1, 25, 1, '2019-11-18 13:54:08', '2019-11-18 13:54:08' ),
	( 124, 1, 21, 1, '2019-11-18 13:54:08', '2019-11-18 13:54:08' ),
	( 125, 1, 22, 1, '2019-11-18 13:54:08', '2019-11-18 13:54:08' ),
	( 126, 1, 26, 1, '2019-11-18 13:54:08', '2019-11-18 13:54:08' ),
	( 127, 1, 27, 1, '2019-11-18 13:54:08', '2019-11-18 13:54:08' ),
	( 128, 1, 29, 1, '2019-11-18 13:54:08', '2019-11-18 13:54:08' ),
	( 129, 1, 28, 1, '2019-11-18 13:54:08', '2019-11-18 13:54:08' ),
	( 130, 1, 30, 1, '2019-11-18 13:54:08', '2019-11-18 13:54:08' ),
	( 131, 1, 31, 1, '2019-11-18 13:54:08', '2019-11-18 13:54:08' ),
	( 132, 1, 32, 1, '2019-11-18 13:54:08', '2019-11-18 13:54:08' ),
	( 133, 1, 34, 1, '2019-11-18 13:54:08', '2019-11-18 13:54:08' ),
	( 134, 1, 35, 1, '2019-11-18 13:54:08', '2019-11-18 13:54:08' ),
	( 135, 1, 36, 1, '2019-11-18 13:54:08', '2019-11-18 13:54:08' ),
	( 136, 1, 37, 1, '2019-11-18 13:54:08', '2019-11-18 13:54:08' ),
	( 137, 1, 38, 1, '2019-11-18 13:54:08', '2019-11-18 13:54:08' ),
	( 138, 1, 41, 1, '2019-11-18 13:54:08', '2019-11-18 13:54:08' ),
	( 139, 1, 39, 1, '2019-11-18 13:54:08', '2019-11-18 13:54:08' ),
	( 140, 1, 40, 1, '2019-11-18 13:54:08', '2019-11-18 13:54:08' ),
	( 141, 1, 42, 1, '2019-11-18 13:54:08', '2019-11-18 13:54:08' ),
	( 142, 1, 46, 1, '2019-11-18 13:54:08', '2019-11-18 13:54:08' ),
	( 143, 1, 43, 1, '2019-11-18 13:54:08', '2019-11-18 13:54:08' ),
	( 144, 1, 44, 1, '2019-11-18 13:54:08', '2019-11-18 13:54:08' ),
	( 145, 1, 45, 1, '2019-11-18 13:54:08', '2019-11-18 13:54:08' ),
	( 146, 1, 47, 1, '2019-11-18 13:54:08', '2019-11-18 13:54:08' ),
	( 147, 1, 48, 1, '2019-11-18 13:54:08', '2019-11-18 13:54:08' ),
	( 148, 1, 49, 1, '2019-11-18 13:54:08', '2019-11-18 13:54:08' ),
	( 149, 1, 50, 1, '2019-11-18 13:54:08', '2019-11-18 13:54:08' ),
	( 150, 1, '1', 0, '2019-11-18 14:22:29', '2019-11-18 14:22:29' ),
	( 151, 1, 5, 0, '2019-11-18 14:22:29', '2019-11-18 14:22:29' ),
	( 152, 1, '1195268616021139457', 0, '2019-11-18 14:22:29', '2019-11-18 14:22:29' ),
	( 153, 1, '1195269143060602882', 0, '2019-11-18 14:22:29', '2019-11-18 14:22:29' ),
	( 154, 1, '1195269295926206466', 0, '2019-11-18 14:22:29', '2019-11-18 14:22:29' ),
	( 155, 1, 8, 0, '2019-11-18 14:22:29', '2019-11-18 14:22:29' ),
	( 156, 1, 9, 0, '2019-11-18 14:22:29', '2019-11-18 14:22:29' ),
	( 157, 1, 51, 0, '2019-11-18 14:22:29', '2019-11-18 14:22:29' ),
	( 158, 1, '1195268788138598401', 0, '2019-11-18 14:22:29', '2019-11-18 14:22:29' ),
	( 159, 1, 10, 0, '2019-11-18 14:22:29', '2019-11-18 14:22:29' ),
	( 160, 1, 11, 0, '2019-11-18 14:22:29', '2019-11-18 14:22:29' ),
	( 161, 1, 12, 0, '2019-11-18 14:22:29', '2019-11-18 14:22:29' ),
	( 162, 1, 13, 0, '2019-11-18 14:22:29', '2019-11-18 14:22:29' ),
	( 163, 1, 14, 0, '2019-11-18 14:22:29', '2019-11-18 14:22:29' ),
	( 164, 1, '1195268893830864898', 0, '2019-11-18 14:22:29', '2019-11-18 14:22:29' ),
	( 165, 1, 15, 0, '2019-11-18 14:22:29', '2019-11-18 14:22:29' ),
	( 166, 1, 16, 0, '2019-11-18 14:22:30', '2019-11-18 14:22:30' ),
	( 167, 1, 17, 0, '2019-11-18 14:22:30', '2019-11-18 14:22:30' ),
	( 168, 1, 18, 0, '2019-11-18 14:22:30', '2019-11-18 14:22:30' ),
	( 169, 1, 19, 0, '2019-11-18 14:22:30', '2019-11-18 14:22:30' ),
	( 170, 1, 20, 0, '2019-11-18 14:22:30', '2019-11-18 14:22:30' ),
	( 171, 1, 23, 0, '2019-11-18 14:22:30', '2019-11-18 14:22:30' ),
	( 172, 1, 24, 0, '2019-11-18 14:22:30', '2019-11-18 14:22:30' ),
	( 173, 1, 25, 0, '2019-11-18 14:22:30', '2019-11-18 14:22:30' ),
	( 174, 1, 21, 0, '2019-11-18 14:22:30', '2019-11-18 14:22:30' ),
	( 175, 1, 22, 0, '2019-11-18 14:22:30', '2019-11-18 14:22:30' ),
	( 176, 1, 26, 0, '2019-11-18 14:22:30', '2019-11-18 14:22:30' ),
	( 177, 1, 27, 0, '2019-11-18 14:22:30', '2019-11-18 14:22:30' ),
	( 178, 1, 29, 0, '2019-11-18 14:22:30', '2019-11-18 14:22:30' ),
	( 179, 1, 28, 0, '2019-11-18 14:22:30', '2019-11-18 14:22:30' ),
	( 180, 1, 30, 0, '2019-11-18 14:22:30', '2019-11-18 14:22:30' ),
	( 181, 1, 31, 0, '2019-11-18 14:22:30', '2019-11-18 14:22:30' ),
	( 182, 1, 32, 0, '2019-11-18 14:22:30', '2019-11-18 14:22:30' ),
	( 183, 1, 34, 0, '2019-11-18 14:22:30', '2019-11-18 14:22:30' ),
	( 184, 1, 35, 0, '2019-11-18 14:22:30', '2019-11-18 14:22:30' ),
	( 185, 1, 36, 0, '2019-11-18 14:22:30', '2019-11-18 14:22:30' ),
	( 186, 1, 33, 0, '2019-11-18 14:22:30', '2019-11-18 14:22:30' ),
	( 187, 1, 37, 0, '2019-11-18 14:22:30', '2019-11-18 14:22:30' ),
	( 188, 1, 38, 0, '2019-11-18 14:22:30', '2019-11-18 14:22:30' ),
	( 189, 1, 41, 0, '2019-11-18 14:22:30', '2019-11-18 14:22:30' ),
	( 190, 1, 39, 0, '2019-11-18 14:22:30', '2019-11-18 14:22:30' ),
	( 191, 1, 40, 0, '2019-11-18 14:22:30', '2019-11-18 14:22:30' ),
	( 192, 1, 42, 0, '2019-11-18 14:22:30', '2019-11-18 14:22:30' ),
	( 193, 1, 46, 0, '2019-11-18 14:22:30', '2019-11-18 14:22:30' ),
	( 194, 1, 43, 0, '2019-11-18 14:22:30', '2019-11-18 14:22:30' ),
	( 195, 1, 44, 0, '2019-11-18 14:22:30', '2019-11-18 14:22:30' ),
	( 196, 1, 45, 0, '2019-11-18 14:22:30', '2019-11-18 14:22:30' ),
	( 197, 1, 47, 0, '2019-11-18 14:22:30', '2019-11-18 14:22:30' ),
	( 198, 1, 48, 0, '2019-11-18 14:22:30', '2019-11-18 14:22:30' ),
	( 199, 1, 49, 0, '2019-11-18 14:22:30', '2019-11-18 14:22:30' ),
	( 200, 1, 50, 0, '2019-11-18 14:22:30', '2019-11-18 14:22:30' );
#
# Structure for table "user"
#

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
                         `id` bigint(0) NOT NULL,
                         `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户名',
                         `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '密码',
                         `nickname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '昵称',
                         `profile_picture` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '头像',
                         `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户签名',
                         `created_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '创建人',
                         `created_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
                         `updated_by` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '更新人',
                         `updated_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
                         `deleted` tinyint(1) NULL DEFAULT NULL COMMENT '是否删除',
                         PRIMARY KEY (`id`) USING BTREE,
                         INDEX `unique_username`(`username`) USING BTREE,
                         INDEX `unique_nickname`(`nickname`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic COMMENT='用户表';

#
# Data for table "user"
#

INSERT INTO `user` VALUES (1,'admin','96e79218965eb72c92a549dd5a330112','高远','',NULL,NULL,'2021-03-14 10:39:47',NULL,'2021-03-14 10:39:47',0),
(2,'tony','96e79218965eb72c92a549dd5a330112','托尼','',NULL,NULL,'2021-03-14 10:39:47',NULL,'2021-03-14 10:39:47',0);

#
# Structure for table "user_role"
#

CREATE TABLE `user_role` (
                                 `id` bigint(0) NOT NULL,
                                 `role_id` bigint(0) NOT NULL COMMENT '角色id',
                                 `user_id` bigint(0) NOT NULL COMMENT '用户id',
                                 `created_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '创建人',
                                 `created_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
                                 `updated_by` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '更新人',
                                 `updated_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
                                 `deleted` tinyint(1) NULL DEFAULT NULL COMMENT '是否删除',
                                 PRIMARY KEY (`id`),
                                 KEY `idx_role_id` (`role_id`),
                                 KEY `idx_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "user_role"
#

INSERT INTO `user_role` VALUES (1,1,2,'admin','2019-11-11 13:09:53','admin','2019-11-11 13:09:53',0);