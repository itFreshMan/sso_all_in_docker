CREATE TABLE `com_tag_info` (
`ID` varchar(36) NOT NULL,
`TAG_CODE` varchar(50) NOT NULL,
`TAG_NAME` varchar(50) NULL,
`TAG_DESC` text NULL,
`DATA_SOURCE` varchar(50) NULL COMMENT 'COM_CODE_INFO',
`STATE` varchar(3) NULL,
`STATE_DATE` date NULL,
`TAG_SQL_ID` decimal(10,0) NULL COMMENT 'SQL语句ID',
`IS_STATIC_TAG` varchar(2) NULL COMMENT '是否为静态TAG,动态TAG需要每次执行,静态TAG系统启动初始化 Y：静态  N：动态',
`TAG_SQL` text NULL COMMENT 'sql语句体',
PRIMARY KEY (`ID`, `TAG_CODE`) 
);
/**
CREATE TABLE `SYS_AUTH` (
`LOGIN_ACCOUNT` varchar(200) NOT NULL,
`TOKEN` text NOT NULL,
UNIQUE INDEX `SYS_AUTH_LOGIN_ACCOUNT_UINDEX` (`LOGIN_ACCOUNT` ASC),
UNIQUE INDEX `SYS_AUTH_TOKEN_UINDEX` (`TOKEN` ASC)
)
COMMENT = '用户登录鉴权表'
TABLESPACE `SYSTEM`;
**/
CREATE TABLE `sys_client` (
`CLIENT_ID` varchar(36) NOT NULL,
`CLIENT_CODE` varchar(50) NULL,
`CLIENT_NAME` varchar(100) NULL,
`CLIENT_TYPE` varchar(10) NULL,
`INNER_URL` text NULL,
`OUTTER_URL` text NULL,
`ACCESS_STRATEGY` varchar(30) NULL,
`STATE` varchar(4) NULL,
`CREATE_TIME` date NULL,
`UPDATE_TIME` date NULL,
`CLIENT_DESC` varchar(200) NULL,
`DISP_ORDER` decimal(65,30) NULL,
`CREATE_BY` varchar(36) NULL,
`UPDATE_BY` varchar(36) NULL,
`PUBLIC_KEY` text NULL COMMENT '加密公钥',
`PRIVATE_KEY` text NULL COMMENT '加密私钥',
PRIMARY KEY (`CLIENT_ID`) 
);
CREATE TABLE `sys_client_auth` (
`ID` varchar(36) NOT NULL,
`SOURCE_CLIENT_ID` varchar(36) NULL,
`TARGET_CLIENT_ID` varchar(36) NULL,
`AUTHORIZE_TYPE` varchar(10) NULL,
`CREATE_BY` varchar(36) NULL,
`UPDATE_BY` varchar(36) NULL,
`UPDATE_TIME` date NULL,
PRIMARY KEY (`ID`) 
);
CREATE TABLE `sys_code_map` (
`ID` varchar(36) NOT NULL,
`P_ID` varchar(36) NULL COMMENT '父ID，部分是100+ID',
`TAB_NAME` varchar(30) NULL COMMENT '对应表名',
`COL_NAME` varchar(30) NULL COMMENT '对应字段名',
`KEY` varchar(50) NULL,
`VALUE` text NULL,
`DISP_ORDER` decimal(65,30) NULL COMMENT '展示顺序（下拉框的排序）',
`STATE` varchar(4) NULL COMMENT '状态标识（10A 有效；10X 注销）',
`STATE_DATE` date NULL COMMENT '修改时间',
`CODE_DESC` varchar(200) NULL COMMENT '详细描述',
`COLOR` varchar(30) NULL COMMENT '页面显示的颜色（ Cred 红色 ；   Cgreen 绿色 ；  Cblue  蓝色',
`MENU_ORDER` decimal(65,30) NULL COMMENT '展示顺序（列表的状态统计栏）',
`FINISH_MARK` varchar(10) NULL COMMENT '完成标识（End 已完成  ；  Do 进行中）',
`PARENT_ID` varchar(36) NULL
);

CREATE TABLE `sys_resource` (
`RESOURCE_ID` varchar(36) NOT NULL,
`P_RESOURCE_ID` varchar(36) NULL,
`CLIENT_ID` varchar(36) NULL,
`RESOURCE_NAME` varchar(100) NULL,
`PRIVILEGE_CODE` varchar(50) NULL,
`RESOURCE_TYPE` varchar(10) NULL,
`RESOURCE_LEVEL` decimal(65,30) NULL,
`DISP_ORDER` decimal(65,30) NULL,
`RESOURCE_PATH` varchar(250) NULL,
`RESOURCE_URL` text NULL,
`STATE` varchar(4) NULL,
`ELEMENT_TYPE` varchar(10) NULL,
`CREATE_TIME` date NULL,
`UPDATE_TIME` date NULL,
`RESOURCE_DESC` varchar(200) NULL,
`CREATE_BY` varchar(36) NULL,
`UPDATE_BY` varchar(36) NULL,
PRIMARY KEY (`RESOURCE_ID`) 
);
/**
CREATE TABLE `SYS_RESOURCE_ATTR` (
`ATTR_ID` varchar(36) NOT NULL,
`RESOURCE_ID` varchar(36) NULL,
`ATTR_CODE` varchar(50) NULL,
`ATTR_VALUE` text NULL,
`CREATE_TIME` date NULL,
`UPDATE_TIME` date NULL,
`CREATE_BY` varchar(36) NULL,
`UPDATE_BY` varchar(36) NULL,
PRIMARY KEY (`ATTR_ID`) 
)
TABLESPACE `SYSTEM`; 
**/
CREATE TABLE `sys_role` (
`ROLE_ID` varchar(36) NOT NULL,
`ROLE_CODE` varchar(30) NULL,
`ROLE_NAME` varchar(150) NULL,
`ROLE_TYPE` varchar(1) NULL,
`ROLE_LEVEL` decimal(65,30) NULL,
`ROLE_DESC` varchar(200) NULL,
`STATE` varchar(4) NULL,
`CREATE_TIME` date NULL,
`UPDATE_TIME` date NULL,
`CREATE_BY` varchar(36) NULL,
`UPDATE_BY` varchar(36) NULL,
PRIMARY KEY (`ROLE_ID`) 
);
CREATE TABLE `sys_role_client` (
`RELATION_ID` varchar(36) NOT NULL,
`ROLE_ID` varchar(36) NULL,
`CLIENT_ID` varchar(36) NULL,
`RELATION_TYPE` varchar(10) NULL,
PRIMARY KEY (`RELATION_ID`) 
);
CREATE TABLE `sys_role_resource` (
`RELATION_ID` varchar(36) NOT NULL,
`ROLE_ID` varchar(36) NULL,
`RESOURCE_ID` varchar(36) NULL,
`RELATION_TYPE` varchar(10) NULL,
PRIMARY KEY (`RELATION_ID`) 
);
CREATE TABLE `sys_user` (
`USER_ID` varchar(36) NOT NULL,
`LOGIN_ACCT` varchar(50) NULL,
`PASSWORD` varchar(64) NULL,
`NICK_NAME` varchar(100) NULL,
`STATE` varchar(4) NULL,
`SALT` varchar(255) NULL,
`USER_TYPE` varchar(4) NULL,
`CREATE_TIME` date NULL,
`UPDATE_TIME` date NULL,
`REG_SOURCE` varchar(36) NULL,
`HR_EMPEE_ID` varchar(36) NULL,
`IS_GUEST` varchar(1) NULL COMMENT 'Y-是 N-否',
`ACCOUNT_TYPE` varchar(4) NULL COMMENT '1-自定义 2-工号 3-手机号 4-email',
`CREATE_BY` varchar(36) NULL,
`UPDATE_BY` varchar(36) NULL,
PRIMARY KEY (`USER_ID`) 
) ;
CREATE TABLE `sys_user_role` (
`RELATION_ID` varchar(36) NOT NULL,
`USER_ID` varchar(36) NULL,
`ROLE_ID` varchar(36) NULL,
`RELATION_TYPE` varchar(10) NULL,
PRIMARY KEY (`RELATION_ID`) 
);
