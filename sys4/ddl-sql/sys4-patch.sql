SET NAMES utf8mb4;

CREATE TABLE `data_privilege`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `p_id` int(11) NULL DEFAULT NULL COMMENT '父id',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '名称',
  `code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '编码',
  `state` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '状态',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `create_by` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '创建人',
  `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `update_by` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '更新人',
  `path` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

INSERT INTO `data_privilege` VALUES (2, -1, '全部（不限制数据权限）', 'SUPER_ALL', '10A', '2020-05-08 10:12:56', '123', '2020-05-08 10:12:56', '123', '2');
INSERT INTO `data_privilege` VALUES (3, -1, '全部(不限数据权限)', 'ALL', '10A', '2020-05-11 15:25:51', 'ED1484903C4C48EA997FDFC2557AC410', '2020-05-11 15:25:51', NULL, '3');

-- org 

CREATE TABLE `org` (
  `org_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `org_code` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '编码',
  `org_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `p_org_id` int(11) DEFAULT NULL COMMENT '父组织id',
  `state` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '状态',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `create_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `update_time` timestamp NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `update_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '更新人',
  `path` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`org_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- staff

CREATE TABLE `staff` (
  `staff_id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '主键',
  `staff_account` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '工号',
  `staff_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '姓名',
  `mobile` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机号',
  `post_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '岗位',
  `email` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '邮箱',
  `gender` tinyint(4) DEFAULT NULL COMMENT '性别',
  `state` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '状态',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `create_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `update_by` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '更新人',
  `org_id` int(11) DEFAULT NULL COMMENT '组织id',
  `remark` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`staff_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
ALTER TABLE sys_client add COLUMN `DATA_PRIVILEGE` int(11);
ALTER TABLE sys_role add COLUMN `DATA_PRIVILEGE` int(11);

update sys_client c set c.data_privilege=2 ;
update sys_role r set r.data_privilege=2 ;

-- 初始化系统管理员(123)-菜单权限
insert into sys_role_resource(RELATION_ID,ROLE_ID,RESOURCE_ID)
select UUID(), '123',R.RESOURCE_ID from sys_resource r where r.STATE='10A';