/*!40101 SET NAMES 'utf8mb4' */;

-- com_tag_info
insert into com_tag_info (id, tag_code, tag_name, tag_desc, data_source, state, state_date, tag_sql_id, is_static_tag, tag_sql)
values ('f2e1378a020246d89373c377121aad53', 'QRY_COMMON_STATE', 'QRY_COMMON_STATE', '查询通用状态', null, '10A', null, null, null, 'SELECT `KEY` VALUE, `VALUE` TEXT FROM sys_code_map WHERE TAB_NAME = "SYS_COMMON" AND COL_NAME = "SYS_COMMON_STATE" AND STATE = "10A"');
insert into com_tag_info (id, tag_code, tag_name, tag_desc, data_source, state, state_date, tag_sql_id, is_static_tag, tag_sql)
values ('68acc99403234f19a375584621f49b9f', 'QRY_CLIENT_TYPE', 'QRY_CLIENT_TYPE', '查询系统类型', null, '10A', null, null, null, 'SELECT `KEY` VALUE, `VALUE` TEXT FROM sys_code_map WHERE TAB_NAME = "sys_client" AND COL_NAME = "CLIENT_TYPE" AND STATE = "10A"' );
insert into com_tag_info (id, tag_code, tag_name, tag_desc, data_source, state, state_date, tag_sql_id, is_static_tag, tag_sql)
values ('c27a1dfeffa149c98294e8318550c806', 'QRY_CLIENT_ACCESS_STRATEGY', 'QRY_CLIENT_ACCESS_STRATEGY', '查询系统访问控制', null, '10A', null, null, null, 'SELECT `KEY` VALUE, `VALUE` TEXT FROM sys_code_map WHERE TAB_NAME = "sys_client" AND COL_NAME = "CLIENT_ACCESS" AND STATE = "10A"');
insert into com_tag_info (id, tag_code, tag_name, tag_desc, data_source, state, state_date, tag_sql_id, is_static_tag, tag_sql)
values ('cc2459f490944cbcbc6dbd520df14052', 'QRY_RESOURCE_TYPE', 'QRY_RESOURCE_TYPE', '查询资源类型', null, '10A', null, null, null, 'SELECT `KEY` VALUE, `VALUE` TEXT FROM sys_code_map WHERE TAB_NAME = "SYS_RESOURCE" AND COL_NAME = "RESOURCE_TYPE" AND STATE = "10A"');
insert into com_tag_info (id, tag_code, tag_name, tag_desc, data_source, state, state_date, tag_sql_id, is_static_tag, tag_sql)
values ('b51c699495494907b37da930b5be0acf', 'QRY_RESOURCE_ELEMENT_TYPE', 'QRY_RESOURCE_ELEMENT_TYPE', '查询元素类型', null, '10A', null, null, null, 'SELECT `KEY` VALUE, `VALUE` TEXT FROM sys_code_map WHERE TAB_NAME = "SYS_RESOURCE" AND COL_NAME = "RESOURCE_ELEMENT_TYPE" AND STATE = "10A"');
insert into com_tag_info (id, tag_code, tag_name, tag_desc, data_source, state, state_date, tag_sql_id, is_static_tag, tag_sql)
values ('1b772cbc47b84bd88824c790ac8ba1d6', 'QRY_USER_ACCOUNT_TYPE', 'QRY_USER_ACCOUNT_TYPE', '查询账户类型', null, '10A', null, null, null, 'SELECT `KEY` VALUE, `VALUE` TEXT FROM sys_code_map WHERE TAB_NAME = "SYS_USER" AND COL_NAME = "USER_ACCOUNT_TYPE" AND STATE = "10A"');
insert into com_tag_info (id, tag_code, tag_name, tag_desc, data_source, state, state_date, tag_sql_id, is_static_tag, tag_sql)
values ('8b799377e1c9496397b8c0e4259c015a', 'QRY_COMMON_JUDGE', 'QRY_COMMON_JUDGE', '查询是否', null, '10A', null, null, null, 'SELECT `KEY` VALUE, `VALUE` TEXT FROM sys_code_map WHERE TAB_NAME = "SYS_COMMON" AND COL_NAME = "SYS_COMMON_JUDGE" AND STATE = "10A"');
insert into com_tag_info (id, tag_code, tag_name, tag_desc, data_source, state, state_date, tag_sql_id, is_static_tag, tag_sql)
values ('6296F0177F2A9724E055000000000001', 'QRY_VALID_CLIENTS', 'QRY_VALID_CLIENTS', '查询已注册系统', null, '10A', null, null, null, 'SELECT CLIENT_CODE VALUE, CLIENT_NAME TEXT   FROM sys_client WHERE STATE = "10A"');
/*insert into com_tag_info (id, tag_code, tag_name, tag_desc, data_source, state, state_date, tag_sql_id, is_static_tag, tag_sql)
values ('639CADD0488720B5E055000000000001', 'QRY_ROLE', 'QRY_ROLE', '查询角色', null, '10A', null, null, null, null);*/

-- sys_client
insert into sys_client (client_id, client_code, client_name, client_type, inner_url, outter_url, access_strategy, state, create_time, update_time, client_desc, disp_order, create_by, update_by, public_key, private_key)
values ('2135E3D00337471783D6AF46BD43CE4B', '2135E3D00337471783D6AF46BD43CE4B', '系统管理3.1', 'WEB',  'http://localhost:8000','http://60.173.195.121:9906/sys3', 'AUTH', '10A', now(), now(), '系统管理3.1 vue', 0, '1', '123', 'MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCvm1qA89dLlnZ3MfwEbYbgtyIoZczHX//MDvilLwEUkJnjX69do8ZGHJq4W1HUojofNV70fkkLy9psNuPgt2xNywXmqtkHtoFGPELRjxZ7yrwfMo9Toit/9CBr1/MJbbEwFuTJMQXtAw8YuYmMtQVOOMoNkITB2nRcH2ZGr8XcGQIDAQAB', 'MIICdgIBADANBgkqhkiG9w0BAQEFAASCAmAwggJcAgEAAoGBAK+bWoDz10uWdncx/ARthuC3IihlzMdf/8wO+KUvARSQmeNfr12jxkYcmrhbUdSiOh81XvR+SQvL2mw24+C3bE3LBeaq2Qe2gUY8QtGPFnvKvB8yj1OiK3/0IGvX8wltsTAW5MkxBe0DDxi5iYy1BU44yg2QhMHadFwfZkavxdwZAgMBAAECgYBVfgqnsQ7ly9DM4tbQyQnbKQ1GIZl6jzAXhkpjEOkzu9pPqevUaMFErPReQIcsP/aP7wnVeg3R4mLqQCbc5i+hN65C96LscPEt8xRqwDZfV0UPuzCKgS3h7aCBve8PvHxJocCerYfpH7lZJu1GdF+HxvlRd3Y3CK5Dv78CknrhSQJBAPIBoasvVEaRR8mxuPg8gTNUnrD5wTH4pGt9F3SxR+tcAcgYM0AW4EbSPfeI91bpK/uEAEE8j3qHffaVhXuZ8cMCQQC5wtL38fHMKdYzAEm8kbz9RLANRb1uSTPMBDYWUgfEYe/6+6HpPhOfWVz+gzpqTku/zu44WmwfBSz/uor8DyDzAkEA6exRzRpup9d+QKOdW7WAXZGJ4x9Hc3oX1B6SMaW7EvFYd4WM5II4P7yxUTf/fO7eKLwrUuOq/JFDXLqi0Bq56QJAdisDPYsBgBjVE9iJD5W+HXcGb0r/+BpFAvFi3swL+Nc8a/KKyu8cWG/mgllEXb+03C1syRhsU0ddmsg2BaYyFQJAKMBi+b1mO/FX8MNa7vLU1a04/OO3NKravvuXkuQlnljC9JZAeC9PXwvQHOYdJGtI95RR4hK0CACkjKfFWZOyTQ==');
insert into sys_client (client_id, client_code, client_name, client_type, inner_url, outter_url, access_strategy, state, create_time, update_time, client_desc, disp_order, create_by, update_by, public_key, private_key)
values ('BB9E309C9FA6426FB7C9F0C3D3883940', 'BB9E309C9FA6426FB7C9F0C3D3883940', 'CMDB-WEB', 'WEB', 'http://localhost:8000', 'http://192.168.129.44:8000/web-cmdb', 'AUTH', '10A', now(), now(), null, 22, '123', '123', 'MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCeZfzTQjdzfNAAK2TRUYItA7zftULbFapPpD9ESy93f53lNfiMV78IwjE0DC5/nV2/d0RTIj0X8jcrEk94BVh9V+ogrRX6g2xajPIkup1ilGl6eh28kEtQgkhcyTuOvBEFfGveS8Xw069ZIFq1ziF0t5vtYYN+Zwtb4sXayLhlPwIDAQAB', 'MIICdgIBADANBgkqhkiG9w0BAQEFAASCAmAwggJcAgEAAoGBAJ5l/NNCN3N80AArZNFRgi0DvN+1QtsVqk+kP0RLL3d/neU1+IxXvwjCMTQMLn+dXb93RFMiPRfyNysST3gFWH1X6iCtFfqDbFqM8iS6nWKUaXp6HbyQS1CCSFzJO468EQV8a95LxfDTr1kgWrXOIXS3m+1hg35nC1vixdrIuGU/AgMBAAECgYAQ/HbkYNF5fQUBP6YMHGWNVj1G8DU/MU+WQtLWDAoHEpRoJCWHR1GhKtID9tp1rPaEtdGJ6L4Md1kbMVd8U3Ztr3MpFqk1XxMEX8JWoqn0hrT+pTbB2oCFyRPWnEO/6Mn2l0T880MJ/ocCFL2lU53UAsTY4cEdArzNSJl3z0pfwQJBAMqTYx53Se7aA9yU1haw28hfRHco/VYgudTuY3iWQiAmWFGjHj46r7zvB9FhPOA2jlnvloJiZV6g8it32leLKckCQQDILAenTkK1xxppmYp82qJ02qmehAHEf2CQJtfx/6Dzj8fJLbbdURKywzWiU5ZQvCSPLlGtXzZTGGGmvXMVKJrHAkB4fm6own/BiQBfBlDJsm0opDIPRtxZjKG8nAeixI2UnfpOpN3qWfIKSYu26UXSf+DwcehuqaRuQwGJBYNkKyyxAkB1CTlYWuuqOMV6pKlSIssFo6u04N3fs9ITtoJgHeRPQ+u99pqKgBJ8rqI3TMQAZGDDzoM26QpsPz8pLG+TGXCVAkEAl+auu2obvhfCivqQgU5rbMbDjzFpB8avqbfvJ1JG/U1LFS1RLHudIC/08Ig4a2iF/rb3v2W8uly8Xfj0i9vPqA==');
insert into sys_client (client_id, client_code, client_name, client_type, inner_url, outter_url, access_strategy, state, create_time, update_time, client_desc, disp_order, create_by, update_by, public_key, private_key)
values ('E855F6B612B24A5D988B4D3A171E4B27', 'E855F6B612B24A5D988B4D3A171E4B27', 'crm需求管理', 'WEB', 'http://localhost:8000', null, 'OPEN', '10A', now(), now(), null, 27, '123', null, 'MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCFFDBFsWYUCmrTlvEaoLjg1i2pPX85Gq496UaPvoKNRPT+Uumd+vTxrU1KCt3iCaArzfWSLu4uQ6oGXaERgbhLpf2zoKiHghBp6EfyUR5hhUgAaYmCvg+7P5QxUF7FXkmf/9e/PAkCs2DiErokMju+u944YoFwH+aib6wbO45xGwIDAQAB', 'MIICdQIBADANBgkqhkiG9w0BAQEFAASCAl8wggJbAgEAAoGBAIUUMEWxZhQKatOW8RqguODWLak9fzkarj3pRo++go1E9P5S6Z369PGtTUoK3eIJoCvN9ZIu7i5DqgZdoRGBuEul/bOgqIeCEGnoR/JRHmGFSABpiYK+D7s/lDFQXsVeSZ//1788CQKzYOISuiQyO7673jhigXAf5qJvrBs7jnEbAgMBAAECgYBr88uQzW479ZNg3wHoktZGdReHQT6x6QXNbS1zL5yh0n1WzZV7NPd8ERQwaw5A7YQD5Mg/dFh8KSGElnExTWRcteovzWsyNk8EZdkRdMvOwz8C1v/eg9f+XmeVrINvG6kDndTsEufb0t1cq5cBXJDF1VoOGbmZae3NdsmGPn7skQJBALqEmcpB6B/DBUwEdNn2+O1taBJu47/jZvpm2cprnwRLlh43y4sNzJ/da2IFpP94FiIO6Mi7bVmM9EnIcMU3zxkCQQC2p1Wxzw41H5I/FDiLJ9961Srwia40vk+qMIZEAepj1Zo/RY7eJSKeXTUq6Uw4Tl+Qu70zI9LJeXW6ajjLjixTAkAd433ZgXI3FMNWiShIfWEqeuvAeHCaoVAxNCYWX+SdhZdKxFojsFRoEc1RaeIk5hN15bm74P0G6qWC5VHc6LKRAkBdBGSYs4hZt2VD6GlPPJQLuskuS/9CbvSlCCcoNQ2Hn/z4YdT6/lBd87uiycJ+HjN+woz8oS60Wb2BnJyl1RZvAkBGH9Y/jsvTqIDWllqqm7U7A2daiZSu9+NMQ5/UbG6Q2TMs0BTaPbQUfcTSDUMC6/KQhrDlMPY43o2aI36NBd7q');

-- sys_client_AUTH
insert into sys_client_auth (id, source_client_id, target_client_id, authorize_type, create_by, update_by, update_time)
values ('3', 'BB9E309C9FA6426FB7C9F0C3D3883940', 'E855F6B612B24A5D988B4D3A171E4B27', 'SSO', null, null, null);


-- sys_code_map
insert into sys_code_map (id, p_id, tab_name, col_name, `key`, `value`, disp_order, state, state_date, code_desc, color, menu_order, finish_mark, parent_id)
values ('93fe18e015e4434f908d911a7bddecd2', null, 'SYS_COMMON', 'SYS_COMMON_STATE', '10A', '正常', 1, '10A', null, '正常', null, null, null, null);
insert into sys_code_map (id, p_id, tab_name, col_name, `key`, `value`, disp_order, state, state_date, code_desc, color, menu_order, finish_mark, parent_id)
values ('6dd82f0e015f4a18b83d441bd5eb51be', null, 'SYS_COMMON', 'SYS_COMMON_STATE', '10X', '无效', 2, '10A', null, '无效', null, null, null, null);
insert into sys_code_map (id, p_id, tab_name, col_name, `key`, `value`, disp_order, state, state_date, code_desc, color, menu_order, finish_mark, parent_id)
values ('64ae1289fd734e949d4238bf719c525c', null, 'SYS_COMMON', 'SYS_COMMON_STATE', '10F', '冻结', 3, '10A', null, '冻结', null, null, null, null);
insert into sys_code_map (id, p_id, tab_name, col_name, `key`, `value`, disp_order, state, state_date, code_desc, color, menu_order, finish_mark, parent_id)
values ('0d5051e6e21e4e8cbf02753edb467086', null, 'sys_client', 'CLIENT_TYPE', 'WEB', 'WEB系统', 1, '10A', null, 'WEB系统', null, null, null, null);
insert into sys_code_map (id, p_id, tab_name, col_name, `key`, `value`, disp_order, state, state_date, code_desc, color, menu_order, finish_mark, parent_id)
values ('0e04b553a5c84fd99f052efdeccbc00f', null, 'sys_client', 'CLIENT_TYPE', 'APP', 'APP应用', 2, '10A', null, 'APP应用', null, null, null, null);
insert into sys_code_map (id, p_id, tab_name, col_name, `key`, `value`, disp_order, state, state_date, code_desc, color, menu_order, finish_mark, parent_id)
values ('7498114631eb413096051cbfd45a3373', null, 'sys_client', 'CLIENT_TYPE', 'SERVICE', '接口服务', 3, '10A', null, '接口服务', null, null, null, null);
insert into sys_code_map (id, p_id, tab_name, col_name, `key`, `value`, disp_order, state, state_date, code_desc, color, menu_order, finish_mark, parent_id)
values ('bfe33ec3f2ef4f838d9813aa1057296f', null, 'sys_client', 'CLIENT_ACCESS', 'OPEN', '开放', 1, '10A', null, '开放', null, null, null, null);
insert into sys_code_map (id, p_id, tab_name, col_name, `key`, `value`, disp_order, state, state_date, code_desc, color, menu_order, finish_mark, parent_id)
values ('a0d76cd83e07406bb4f770b37ef0c1bd', null, 'sys_client', 'CLIENT_ACCESS', 'AUTH', '授权', 2, '10A', null, '授权', null, null, null, null);
insert into sys_code_map (id, p_id, tab_name, col_name, `key`, `value`, disp_order, state, state_date, code_desc, color, menu_order, finish_mark, parent_id)
values ('9b20fa5fdcce4dbe86212e19e6bb9b82', null, 'sys_client', 'CLIENT_ACCESS', 'FORB', '禁止', 3, '10A', null, '禁止', null, null, null, null);
insert into sys_code_map (id, p_id, tab_name, col_name, `key`, `value`, disp_order, state, state_date, code_desc, color, menu_order, finish_mark, parent_id)
values ('bb0217cf7e0145c7b71014a17b2c29ac', null, 'SYS_RESOURCE', 'RESOURCE_TYPE', 'MENU', '菜单', 1, '10A', null, '菜单', null, null, null, null);
insert into sys_code_map (id, p_id, tab_name, col_name, `key`, `value`, disp_order, state, state_date, code_desc, color, menu_order, finish_mark, parent_id)
values ('2769f452c37341dbbaf5516bd3c3c885', null, 'SYS_RESOURCE', 'RESOURCE_TYPE', 'ELEMENT', '页面元素', 2, '10A', null, '页面元素', null, null, null, null);
insert into sys_code_map (id, p_id, tab_name, col_name, `key`, `value`, disp_order, state, state_date, code_desc, color, menu_order, finish_mark, parent_id)
values ('b51c699495494907b37da930b5be0acf', null, 'SYS_RESOURCE', 'RESOURCE_ELEMENT_TYPE', 'BTN', '按钮', 1, '10A', null, '按钮', null, null, null, null);
insert into sys_code_map (id, p_id, tab_name, col_name, `key`, `value`, disp_order, state, state_date, code_desc, color, menu_order, finish_mark, parent_id)
values ('cc2459f490944cbcbc6dbd520df14052', null, 'SYS_RESOURCE', 'RESOURCE_ELEMENT_TYPE', 'LINK', '链接', 2, '10A', null, '链接', null, null, null, null);
insert into sys_code_map (id, p_id, tab_name, col_name, `key`, `value`, disp_order, state, state_date, code_desc, color, menu_order, finish_mark, parent_id)
values ('62468162728d48dc9fe18bc82da8e6a4', null, 'SYS_RESOURCE', 'RESOURCE_ELEMENT_TYPE', 'SPAN', '标签', 3, '10A', null, '标签', null, null, null, null);
insert into sys_code_map (id, p_id, tab_name, col_name, `key`, `value`, disp_order, state, state_date, code_desc, color, menu_order, finish_mark, parent_id)
values ('defa839cdb2941b7abb5b698599c47af', null, 'SYS_RESOURCE', 'RESOURCE_ELEMENT_TYPE', 'SELECT', '下拉框', 4, '10A', null, '下拉框', null, null, null, null);
insert into sys_code_map (id, p_id, tab_name, col_name, `key`, `value`, disp_order, state, state_date, code_desc, color, menu_order, finish_mark, parent_id)
values ('fa21030160224a48b52cb1dc4ecbaf68', null, 'SYS_RESOURCE', 'RESOURCE_ELEMENT_TYPE', 'CHECKBOX ', '复选框', 5, '10A', null, '复选框', null, null, null, null);
insert into sys_code_map (id, p_id, tab_name, col_name, `key`, `value`, disp_order, state, state_date, code_desc, color, menu_order, finish_mark, parent_id)
values ('ad41bbd80f694a2696957b0ac4cf3804', null, 'SYS_RESOURCE', 'RESOURCE_ELEMENT_TYPE', 'RADIO', '单选框', 6, '10A', null, '单选框', null, null, null, null);
insert into sys_code_map (id, p_id, tab_name, col_name, `key`, `value`, disp_order, state, state_date, code_desc, color, menu_order, finish_mark, parent_id)
values ('880e397476c14f25a2b99a2b1921332c', null, 'SYS_RESOURCE', 'RESOURCE_ELEMENT_TYPE', 'INPUT', '输入框', 7, '10A', null, '输入框', null, null, null, null);
insert into sys_code_map (id, p_id, tab_name, col_name, `key`, `value`, disp_order, state, state_date, code_desc, color, menu_order, finish_mark, parent_id)
values ('62468162728d48dc9fe18bc82da8e6a4', null, 'SYS_RESOURCE', 'RESOURCE_ELEMENT_TYPE', 'OTHERS', '其他', 8, '10A', null, '其他', null, null, null, null);
insert into sys_code_map (id, p_id, tab_name, col_name, `key`, `value`, disp_order, state, state_date, code_desc, color, menu_order, finish_mark, parent_id)
values ('08445591188c40938dda73c45d1f86ed', null, 'SYS_USER', 'USER_ACCOUNT_TYPE', '1', '工号', 1, '10A', null, '工号', null, null, null, null);
insert into sys_code_map (id, p_id, tab_name, col_name, `key`, `value`, disp_order, state, state_date, code_desc, color, menu_order, finish_mark, parent_id)
values ('7d33d2be707744caab38054eba3eaf58', null, 'SYS_USER', 'USER_ACCOUNT_TYPE', '2', '手机号', 2, '10A', null, '手机号', null, null, null, null);
insert into sys_code_map (id, p_id, tab_name, col_name, `key`, `value`, disp_order, state, state_date, code_desc, color, menu_order, finish_mark, parent_id)
values ('ab4ab7a32b524fd8b55edad7a4452d94', null, 'SYS_USER', 'USER_ACCOUNT_TYPE', '3', '自定义', 3, '10A', null, '自定义', null, null, null, null);
insert into sys_code_map (id, p_id, tab_name, col_name, `key`, `value`, disp_order, state, state_date, code_desc, color, menu_order, finish_mark, parent_id)
values ('48c65ee9ae7a4fe89968cc6c779f69f5', null, 'SYS_COMMON', 'SYS_COMMON_JUDGE', 'Y', '是', 1, '10A', null, '是', null, null, null, null);
insert into sys_code_map (id, p_id, tab_name, col_name, `key`, `value`, disp_order, state, state_date, code_desc, color, menu_order, finish_mark, parent_id)
values ('45d437cfb38e43eaa866193c8c99c4a1', null, 'SYS_COMMON', 'SYS_COMMON_JUDGE', 'N', '否', 2, '10A', null, '否', null, null, null, null);
insert into sys_code_map (id, p_id, tab_name, col_name, `key`, `value`, disp_order, state, state_date, code_desc, color, menu_order, finish_mark, parent_id)
values ('f61bf0de7e1e4c43b2e58ca51a41c6ba', null, 'SYS_USER', 'USER_ACCOUNT_TYPE', '4', '邮箱', 4, '10A', null, '邮箱', null, null, null, null);
insert into sys_code_map (id, p_id, tab_name, col_name, `key`, `value`, disp_order, state, state_date, code_desc, color, menu_order, finish_mark, parent_id)
values ('639C3F30F9F01F3CE055000000000001', null, 'SYS_ROLE', 'ROLE_TYPE', 'N', '普通角色', 1, '10A', null, null, null, null, null, null);
insert into sys_code_map (id, p_id, tab_name, col_name, `key`, `value`, disp_order, state, state_date, code_desc, color, menu_order, finish_mark, parent_id)
values ('639C3F30F9F11F3CE055000000000001', null, 'SYS_ROLE', 'ROLE_TYPE', 'S', '系统角色', 2, '10A', null, null, null, null, null, null);
insert into sys_code_map (id, p_id, tab_name, col_name, `key`, `value`, disp_order, state, state_date, code_desc, color, menu_order, finish_mark, parent_id)
values ('639C3F30F9F21F3CE055000000000001', null, 'SYS_ROLE', 'ROLE_LEVEL', '1', '一级', 1, '10A', null, null, null, null, null, null);
insert into sys_code_map (id, p_id, tab_name, col_name, `key`, `value`, disp_order, state, state_date, code_desc, color, menu_order, finish_mark, parent_id)
values ('639C3F30F9F31F3CE055000000000001', null, 'SYS_ROLE', 'ROLE_LEVEL', '2', '二级', 2, '10A', null, null, null, null, null, null);
insert into sys_code_map (id, p_id, tab_name, col_name, `key`, `value`, disp_order, state, state_date, code_desc, color, menu_order, finish_mark, parent_id)
values ('639C3F30F9F41F3CE055000000000001', null, 'SYS_ROLE', 'ROLE_LEVEL', '3', '三级', 3, '10A', null, null, null, null, null, null);
insert into sys_code_map (id, p_id, tab_name, col_name, `key`, `value`, disp_order, state, state_date, code_desc, color, menu_order, finish_mark, parent_id)
values ('639C3F30F9F51F3CE055000000000001', null, 'SYS_ROLE', 'ROLE_LEVEL', '4', '四级', 4, '10A', null, null, null, null, null, null);
insert into sys_code_map (id, p_id, tab_name, col_name, `key`, `value`, disp_order, state, state_date, code_desc, color, menu_order, finish_mark, parent_id)
values ('639C3F30F9F61F3CE055000000000001', null, 'SYS_ROLE', 'ROLE_LEVEL', '5', '五级', 5, '10A', null, null, null, null, null, null);

-- SYS_USER
insert into sys_user (USER_ID, LOGIN_ACCT, PASSWORD, NICK_NAME, STATE, SALT, USER_TYPE, CREATE_TIME, UPDATE_TIME, REG_SOURCE, HR_EMPEE_ID, IS_GUEST, ACCOUNT_TYPE, CREATE_BY, UPDATE_BY)
values ('123', 'ADMIN2', 'ad6cb9f5219a5924b18ff715b53954434947f489', '超级管理员1号', '10A', '1231', null, now(), now(), 'SYS3.1', null, 'Y', '1', null, '123');
insert into sys_user (USER_ID, LOGIN_ACCT, PASSWORD, NICK_NAME, STATE, SALT, USER_TYPE, CREATE_TIME, UPDATE_TIME, REG_SOURCE, HR_EMPEE_ID, IS_GUEST, ACCOUNT_TYPE, CREATE_BY, UPDATE_BY)
values ('5D840CDC2E574D41A8FF05FF2B51B711', 'test002', '40a01f615d0e6c3c8eebcc5265a3c7d4521c21ef', '特靠谱', '10A', 'c718aea6fbf93fdd', null, null, now(), 'SYS3.1', null, 'Y', '1', '123', '123');

-- SYS_ROLE
insert into sys_role (ROLE_ID, ROLE_CODE, ROLE_NAME, ROLE_TYPE, ROLE_LEVEL, ROLE_DESC, STATE, CREATE_TIME, UPDATE_TIME, CREATE_BY, UPDATE_BY)
values ('123', 'SUPER_ADMIN', '超级管理员', 'N', 1, '超级管理员', '10A', now(), now(), '1', '123');
insert into sys_role (ROLE_ID, ROLE_CODE, ROLE_NAME, ROLE_TYPE, ROLE_LEVEL, ROLE_DESC, STATE, CREATE_TIME, UPDATE_TIME, CREATE_BY, UPDATE_BY)
values ('75734925E44B4B9187BB3A886512ED23', 'RMS_ADMIN', 'rms系统管理员', 'N', 1, null, '10A', now(), null, '123', null);
insert into sys_role (ROLE_ID, ROLE_CODE, ROLE_NAME, ROLE_TYPE, ROLE_LEVEL, ROLE_DESC, STATE, CREATE_TIME, UPDATE_TIME, CREATE_BY, UPDATE_BY)
values ('C13ABC63EB7B4BB59BFAE81AB62FE155', 'CMDB_ADMIN', 'cmdb管理员', 'S', 1, null, '10A', now(), null, '123', null);


-- SYS_ROLE_CLIENT
insert into sys_role_client (RELATION_ID, ROLE_ID, CLIENT_ID, RELATION_TYPE)
values ('68495FD3DB6840E9A3A0E04D02119DFB', '75734925E44B4B9187BB3A886512ED23', 'E855F6B612B24A5D988B4D3A171E4B27', null);
insert into sys_role_client (RELATION_ID, ROLE_ID, CLIENT_ID, RELATION_TYPE)
values ('C456E50C9281442891004F77F31F2D44', '123', '2135E3D00337471783D6AF46BD43CE4B', null);
insert into sys_role_client (RELATION_ID, ROLE_ID, CLIENT_ID, RELATION_TYPE)
values ('BC6CE5411BC94E6FBB00F4F1AD77F839', 'C13ABC63EB7B4BB59BFAE81AB62FE155', 'BB9E309C9FA6426FB7C9F0C3D3883940', null);

-- SYS_USER_ROLE
insert into sys_user_role (RELATION_ID, USER_ID, ROLE_ID, RELATION_TYPE)
values ('C4842EF81EA44DB08CAFA28316465472', '123', '123', null);
insert into sys_user_role (RELATION_ID, USER_ID, ROLE_ID, RELATION_TYPE)
values ('3F67ABE333414C27A30FAFE911BABCC5', '5D840CDC2E574D41A8FF05FF2B51B711', '75734925E44B4B9187BB3A886512ED23', null);
insert into sys_user_role (RELATION_ID, USER_ID, ROLE_ID, RELATION_TYPE)
values ('D87202DF324D490E87A524C174FFD50E', '5D840CDC2E574D41A8FF05FF2B51B711', 'C13ABC63EB7B4BB59BFAE81AB62FE155', null);

-- SYS_RESOURCE
insert into sys_resource (RESOURCE_ID, P_RESOURCE_ID, CLIENT_ID, RESOURCE_NAME, PRIVILEGE_CODE, RESOURCE_TYPE, RESOURCE_LEVEL, DISP_ORDER, RESOURCE_PATH, RESOURCE_URL, STATE, ELEMENT_TYPE, CREATE_TIME, UPDATE_TIME, RESOURCE_DESC, CREATE_BY, UPDATE_BY)
values ('EDFA912495EE401BA5302D1554B73A8A', null, '2135E3D00337471783D6AF46BD43CE4B', '首页', 'SYS-INDEX', 'MENU', null, 0, null, '/index', '10A', 'LINK', null, null, null, '1', '123');

insert into sys_resource (RESOURCE_ID, P_RESOURCE_ID, CLIENT_ID, RESOURCE_NAME, PRIVILEGE_CODE, RESOURCE_TYPE, RESOURCE_LEVEL, DISP_ORDER, RESOURCE_PATH, RESOURCE_URL, STATE, ELEMENT_TYPE, CREATE_TIME, UPDATE_TIME, RESOURCE_DESC, CREATE_BY, UPDATE_BY)
values ('02804B3C67F8403186B6380E693F6581', null, '2135E3D00337471783D6AF46BD43CE4B', '系统配置', 'SYS-MANAGE', 'MENU', null, 1, null, null, '10A', null, null, null, null, '1', '1');

insert into sys_resource (RESOURCE_ID, P_RESOURCE_ID, CLIENT_ID, RESOURCE_NAME, PRIVILEGE_CODE, RESOURCE_TYPE, RESOURCE_LEVEL, DISP_ORDER, RESOURCE_PATH, RESOURCE_URL, STATE, ELEMENT_TYPE, CREATE_TIME, UPDATE_TIME, RESOURCE_DESC, CREATE_BY, UPDATE_BY)
values ('890C666EB13940B083C2FA4B20A6DA3C', '02804B3C67F8403186B6380E693F6581', '2135E3D00337471783D6AF46BD43CE4B', '用户管理', 'SYS-MANAGE-USER:INDEX', 'MENU', null, 0, null, '/view/user/index', '10A', null, null, null, null, '1', '123');

insert into sys_resource (RESOURCE_ID, P_RESOURCE_ID, CLIENT_ID, RESOURCE_NAME, PRIVILEGE_CODE, RESOURCE_TYPE, RESOURCE_LEVEL, DISP_ORDER, RESOURCE_PATH, RESOURCE_URL, STATE, ELEMENT_TYPE, CREATE_TIME, UPDATE_TIME, RESOURCE_DESC, CREATE_BY, UPDATE_BY)
values ('8C5C30F9EF184FBEAE6F03DAD7CB3A4C', '02804B3C67F8403186B6380E693F6581', '2135E3D00337471783D6AF46BD43CE4B', '角色管理', 'SYS-MANAGE-ROLE:INDEX', 'MENU', null, 1, null, '/view/role/index', '10A', null, null, null, null, '1', '123');

insert into sys_resource (RESOURCE_ID, P_RESOURCE_ID, CLIENT_ID, RESOURCE_NAME, PRIVILEGE_CODE, RESOURCE_TYPE, RESOURCE_LEVEL, DISP_ORDER, RESOURCE_PATH, RESOURCE_URL, STATE, ELEMENT_TYPE, CREATE_TIME, UPDATE_TIME, RESOURCE_DESC, CREATE_BY, UPDATE_BY)
values ('92C87291D4594063A4B3D9AAA6BB7D09', '02804B3C67F8403186B6380E693F6581', '2135E3D00337471783D6AF46BD43CE4B', '资源管理', 'SYS-MANAGE-RESOURCE:INDEX', 'MENU', null, 2, null, '/view/resource/index', '10A', null, null, null, null, '1', '123');

insert into sys_resource (RESOURCE_ID, P_RESOURCE_ID, CLIENT_ID, RESOURCE_NAME, PRIVILEGE_CODE, RESOURCE_TYPE, RESOURCE_LEVEL, DISP_ORDER, RESOURCE_PATH, RESOURCE_URL, STATE, ELEMENT_TYPE, CREATE_TIME, UPDATE_TIME, RESOURCE_DESC, CREATE_BY, UPDATE_BY)
values ('726D8E0EE82E43EAA13BBD962F3108D5', '02804B3C67F8403186B6380E693F6581', '2135E3D00337471783D6AF46BD43CE4B', '系统注册', 'SYS-MANAGE-CLIENT:INDEX', 'MENU', null, 3, null, '/view/client/index', '10A', null, null, null, null, '1', '123');

insert into sys_resource (RESOURCE_ID, P_RESOURCE_ID, CLIENT_ID, RESOURCE_NAME, PRIVILEGE_CODE, RESOURCE_TYPE, RESOURCE_LEVEL, DISP_ORDER, RESOURCE_PATH, RESOURCE_URL, STATE, ELEMENT_TYPE, CREATE_TIME, UPDATE_TIME, RESOURCE_DESC, CREATE_BY, UPDATE_BY)
values ('83F36078AA174D00847F6E4DD91D5EB9', '8C5C30F9EF184FBEAE6F03DAD7CB3A4C', '2135E3D00337471783D6AF46BD43CE4B', '角色查询', 'SYS-MANAGE-ROLE:QUERY', 'ELEMENT', null, 4, null, '#', '10A', 'OTHERS', null, null, null, '123', null);

insert into sys_resource (RESOURCE_ID, P_RESOURCE_ID, CLIENT_ID, RESOURCE_NAME, PRIVILEGE_CODE, RESOURCE_TYPE, RESOURCE_LEVEL, DISP_ORDER, RESOURCE_PATH, RESOURCE_URL, STATE, ELEMENT_TYPE, CREATE_TIME, UPDATE_TIME, RESOURCE_DESC, CREATE_BY, UPDATE_BY)
values ('434409154F2D4394990799F604EA3152', '726D8E0EE82E43EAA13BBD962F3108D5', '2135E3D00337471783D6AF46BD43CE4B', '系统激活', 'sys_clientS_ENABLE', 'ELEMENT', null, 2, null, '#', '10A', 'BTN', null, null, null, '123', '123');

insert into sys_resource (RESOURCE_ID, P_RESOURCE_ID, CLIENT_ID, RESOURCE_NAME, PRIVILEGE_CODE, RESOURCE_TYPE, RESOURCE_LEVEL, DISP_ORDER, RESOURCE_PATH, RESOURCE_URL, STATE, ELEMENT_TYPE, CREATE_TIME, UPDATE_TIME, RESOURCE_DESC, CREATE_BY, UPDATE_BY)
values ('F15958602A6A480A9A22851098B770CD', '890C666EB13940B083C2FA4B20A6DA3C', '2135E3D00337471783D6AF46BD43CE4B', '新增', 'SYS_USERS_ADD', 'ELEMENT', null, 0, null, null, '10A', 'BTN', null, null, null, '123', '123');

insert into sys_resource (RESOURCE_ID, P_RESOURCE_ID, CLIENT_ID, RESOURCE_NAME, PRIVILEGE_CODE, RESOURCE_TYPE, RESOURCE_LEVEL, DISP_ORDER, RESOURCE_PATH, RESOURCE_URL, STATE, ELEMENT_TYPE, CREATE_TIME, UPDATE_TIME, RESOURCE_DESC, CREATE_BY, UPDATE_BY)
values ('09438E923A7A4B17BBBA755C3BA0DF00', '890C666EB13940B083C2FA4B20A6DA3C', '2135E3D00337471783D6AF46BD43CE4B', '修改', 'SYS_USERS_EDIT', 'ELEMENT', null, 4, null, null, '10A', 'BTN', null, null, null, '123', null);

insert into sys_resource (RESOURCE_ID, P_RESOURCE_ID, CLIENT_ID, RESOURCE_NAME, PRIVILEGE_CODE, RESOURCE_TYPE, RESOURCE_LEVEL, DISP_ORDER, RESOURCE_PATH, RESOURCE_URL, STATE, ELEMENT_TYPE, CREATE_TIME, UPDATE_TIME, RESOURCE_DESC, CREATE_BY, UPDATE_BY)
values ('E0655BB1995C48A7892BA22D75489994', '726D8E0EE82E43EAA13BBD962F3108D5', '2135E3D00337471783D6AF46BD43CE4B', '系统新增', 'sys_client_ADD', 'ELEMENT', null, 1, null, '#', '10A', 'BTN', null, null, null, '123', '123');

insert into sys_resource (RESOURCE_ID, P_RESOURCE_ID, CLIENT_ID, RESOURCE_NAME, PRIVILEGE_CODE, RESOURCE_TYPE, RESOURCE_LEVEL, DISP_ORDER, RESOURCE_PATH, RESOURCE_URL, STATE, ELEMENT_TYPE, CREATE_TIME, UPDATE_TIME, RESOURCE_DESC, CREATE_BY, UPDATE_BY)
values ('48C7695FD3D14F08919EAAD5D44C3241', '890C666EB13940B083C2FA4B20A6DA3C', '2135E3D00337471783D6AF46BD43CE4B', '绑定角色', 'SYS_USERS_BIND_ROLE', 'ELEMENT', null, 5, null, null, '10A', 'BTN', null, null, null, '123', null);

insert into sys_resource (RESOURCE_ID, P_RESOURCE_ID, CLIENT_ID, RESOURCE_NAME, PRIVILEGE_CODE, RESOURCE_TYPE, RESOURCE_LEVEL, DISP_ORDER, RESOURCE_PATH, RESOURCE_URL, STATE, ELEMENT_TYPE, CREATE_TIME, UPDATE_TIME, RESOURCE_DESC, CREATE_BY, UPDATE_BY)
values ('4670990BBDC345358F1C685DCFD4547B', '890C666EB13940B083C2FA4B20A6DA3C', '2135E3D00337471783D6AF46BD43CE4B', '重置密码', 'SYS_USERS_RESET_PASSWORD', 'ELEMENT', null, 6, null, null, '10A', 'BTN', null, null, null, '123', null);

insert into sys_resource (RESOURCE_ID, P_RESOURCE_ID, CLIENT_ID, RESOURCE_NAME, PRIVILEGE_CODE, RESOURCE_TYPE, RESOURCE_LEVEL, DISP_ORDER, RESOURCE_PATH, RESOURCE_URL, STATE, ELEMENT_TYPE, CREATE_TIME, UPDATE_TIME, RESOURCE_DESC, CREATE_BY, UPDATE_BY)
values ('15AEDED337D34290B468556919B4C3C0', '890C666EB13940B083C2FA4B20A6DA3C', '2135E3D00337471783D6AF46BD43CE4B', '注销', 'SYS_USERS_CANCEL', 'ELEMENT', null, 7, null, null, '10A', 'BTN', null, null, null, '123', null);

insert into sys_resource (RESOURCE_ID, P_RESOURCE_ID, CLIENT_ID, RESOURCE_NAME, PRIVILEGE_CODE, RESOURCE_TYPE, RESOURCE_LEVEL, DISP_ORDER, RESOURCE_PATH, RESOURCE_URL, STATE, ELEMENT_TYPE, CREATE_TIME, UPDATE_TIME, RESOURCE_DESC, CREATE_BY, UPDATE_BY)
values ('D1102BB6A33E4403BBAA40450D71486D', '890C666EB13940B083C2FA4B20A6DA3C', '2135E3D00337471783D6AF46BD43CE4B', '冻结', 'SYS_USERS_FREEZE', 'ELEMENT', null, 8, null, null, '10A', 'BTN', null, null, null, '123', null);

insert into sys_resource (RESOURCE_ID, P_RESOURCE_ID, CLIENT_ID, RESOURCE_NAME, PRIVILEGE_CODE, RESOURCE_TYPE, RESOURCE_LEVEL, DISP_ORDER, RESOURCE_PATH, RESOURCE_URL, STATE, ELEMENT_TYPE, CREATE_TIME, UPDATE_TIME, RESOURCE_DESC, CREATE_BY, UPDATE_BY)
values ('8648348DECD34DE68ADB42476604A481', '890C666EB13940B083C2FA4B20A6DA3C', '2135E3D00337471783D6AF46BD43CE4B', '解冻', 'SYS_USERS_UNFREEZE', 'ELEMENT', null, 9, null, null, '10A', 'BTN', null, null, null, '123', null);

insert into sys_resource (RESOURCE_ID, P_RESOURCE_ID, CLIENT_ID, RESOURCE_NAME, PRIVILEGE_CODE, RESOURCE_TYPE, RESOURCE_LEVEL, DISP_ORDER, RESOURCE_PATH, RESOURCE_URL, STATE, ELEMENT_TYPE, CREATE_TIME, UPDATE_TIME, RESOURCE_DESC, CREATE_BY, UPDATE_BY)
values ('2EDE646529D241D98125BB2FA7F4579B', '8C5C30F9EF184FBEAE6F03DAD7CB3A4C', '2135E3D00337471783D6AF46BD43CE4B', '角色新增', 'SYS_ROLES_ADD', 'ELEMENT', null, 0, null, null, '10A', 'BTN', null, null, null, '123', null);

insert into sys_resource (RESOURCE_ID, P_RESOURCE_ID, CLIENT_ID, RESOURCE_NAME, PRIVILEGE_CODE, RESOURCE_TYPE, RESOURCE_LEVEL, DISP_ORDER, RESOURCE_PATH, RESOURCE_URL, STATE, ELEMENT_TYPE, CREATE_TIME, UPDATE_TIME, RESOURCE_DESC, CREATE_BY, UPDATE_BY)
values ('5FDA1C2812F046E79A59CB8821C37662', '8C5C30F9EF184FBEAE6F03DAD7CB3A4C', '2135E3D00337471783D6AF46BD43CE4B', '角色编辑', 'SYS_ROLES_EDIT', 'ELEMENT', null, 1, null, null, '10A', 'BTN', null, null, null, '123', null);

insert into sys_resource (RESOURCE_ID, P_RESOURCE_ID, CLIENT_ID, RESOURCE_NAME, PRIVILEGE_CODE, RESOURCE_TYPE, RESOURCE_LEVEL, DISP_ORDER, RESOURCE_PATH, RESOURCE_URL, STATE, ELEMENT_TYPE, CREATE_TIME, UPDATE_TIME, RESOURCE_DESC, CREATE_BY, UPDATE_BY)
values ('D6B20076A4A642D797595EA47D7B0C2C', '8C5C30F9EF184FBEAE6F03DAD7CB3A4C', '2135E3D00337471783D6AF46BD43CE4B', '绑定用户', 'SYS_ROLES_BIND_USER', 'ELEMENT', null, 2, null, null, '10A', 'BTN', null, null, null, '123', null);

insert into sys_resource (RESOURCE_ID, P_RESOURCE_ID, CLIENT_ID, RESOURCE_NAME, PRIVILEGE_CODE, RESOURCE_TYPE, RESOURCE_LEVEL, DISP_ORDER, RESOURCE_PATH, RESOURCE_URL, STATE, ELEMENT_TYPE, CREATE_TIME, UPDATE_TIME, RESOURCE_DESC, CREATE_BY, UPDATE_BY)
values ('3DDEC6C406134F34B913B68A08C035C8', '8C5C30F9EF184FBEAE6F03DAD7CB3A4C', '2135E3D00337471783D6AF46BD43CE4B', '删除角色', 'SYS_ROLES_DELETE', 'ELEMENT', null, 3, null, null, '10A', 'BTN', null, null, null, '123', null);

insert into sys_resource (RESOURCE_ID, P_RESOURCE_ID, CLIENT_ID, RESOURCE_NAME, PRIVILEGE_CODE, RESOURCE_TYPE, RESOURCE_LEVEL, DISP_ORDER, RESOURCE_PATH, RESOURCE_URL, STATE, ELEMENT_TYPE, CREATE_TIME, UPDATE_TIME, RESOURCE_DESC, CREATE_BY, UPDATE_BY)
values ('EF38E908A3694C2FAC6F2E5712663E68', '92C87291D4594063A4B3D9AAA6BB7D09', '2135E3D00337471783D6AF46BD43CE4B', '资源查询', 'SYS_RESOURCES_QUERY', 'ELEMENT', null, 0, null, '#', '10A', 'OTHERS', null, null, null, '123', '123');

insert into sys_resource (RESOURCE_ID, P_RESOURCE_ID, CLIENT_ID, RESOURCE_NAME, PRIVILEGE_CODE, RESOURCE_TYPE, RESOURCE_LEVEL, DISP_ORDER, RESOURCE_PATH, RESOURCE_URL, STATE, ELEMENT_TYPE, CREATE_TIME, UPDATE_TIME, RESOURCE_DESC, CREATE_BY, UPDATE_BY)
values ('3C36E5FB6ECC4B25857C23C1F2773292', '92C87291D4594063A4B3D9AAA6BB7D09', '2135E3D00337471783D6AF46BD43CE4B', '资源新增', 'SYS_RESOURCES_ADD', 'ELEMENT', null, 1, null, '#', '10A', 'BTN', null, null, null, '123', '123');

insert into sys_resource (RESOURCE_ID, P_RESOURCE_ID, CLIENT_ID, RESOURCE_NAME, PRIVILEGE_CODE, RESOURCE_TYPE, RESOURCE_LEVEL, DISP_ORDER, RESOURCE_PATH, RESOURCE_URL, STATE, ELEMENT_TYPE, CREATE_TIME, UPDATE_TIME, RESOURCE_DESC, CREATE_BY, UPDATE_BY)
values ('4DDE5844B59045F08B35517C6514A9E7', '92C87291D4594063A4B3D9AAA6BB7D09', '2135E3D00337471783D6AF46BD43CE4B', '资源编辑', 'SYS_RESOURCES_EDIT', 'ELEMENT', null, 2, null, '#', '10A', 'BTN', null, null, null, '123', '123');

insert into sys_resource (RESOURCE_ID, P_RESOURCE_ID, CLIENT_ID, RESOURCE_NAME, PRIVILEGE_CODE, RESOURCE_TYPE, RESOURCE_LEVEL, DISP_ORDER, RESOURCE_PATH, RESOURCE_URL, STATE, ELEMENT_TYPE, CREATE_TIME, UPDATE_TIME, RESOURCE_DESC, CREATE_BY, UPDATE_BY)
values ('6CE236D55BA44654B9C78E6A447E3DCF', '92C87291D4594063A4B3D9AAA6BB7D09', '2135E3D00337471783D6AF46BD43CE4B', '资源删除', 'SYS_RESOURCES_REMOVE', 'ELEMENT', null, 3, null, '#', '10A', 'BTN', null, null, null, '123', '123');

insert into sys_resource (RESOURCE_ID, P_RESOURCE_ID, CLIENT_ID, RESOURCE_NAME, PRIVILEGE_CODE, RESOURCE_TYPE, RESOURCE_LEVEL, DISP_ORDER, RESOURCE_PATH, RESOURCE_URL, STATE, ELEMENT_TYPE, CREATE_TIME, UPDATE_TIME, RESOURCE_DESC, CREATE_BY, UPDATE_BY)
values ('3A16529774F04E4387786BB9B864748C', '726D8E0EE82E43EAA13BBD962F3108D5', '2135E3D00337471783D6AF46BD43CE4B', '系统查询', 'sys_clientS_QUERY', 'ELEMENT', null, 0, null, '#', '10A', 'OTHERS', null, null, null, '123', '123');

insert into sys_resource (RESOURCE_ID, P_RESOURCE_ID, CLIENT_ID, RESOURCE_NAME, PRIVILEGE_CODE, RESOURCE_TYPE, RESOURCE_LEVEL, DISP_ORDER, RESOURCE_PATH, RESOURCE_URL, STATE, ELEMENT_TYPE, CREATE_TIME, UPDATE_TIME, RESOURCE_DESC, CREATE_BY, UPDATE_BY)
values ('943D7B9A036F45C494D978366269E537', '726D8E0EE82E43EAA13BBD962F3108D5', '2135E3D00337471783D6AF46BD43CE4B', '系统注销', 'sys_clientS_DISABLE', 'ELEMENT', null, 3, null, '#', '10A', 'BTN', null, null, null, '123', '123');

insert into sys_resource (RESOURCE_ID, P_RESOURCE_ID, CLIENT_ID, RESOURCE_NAME, PRIVILEGE_CODE, RESOURCE_TYPE, RESOURCE_LEVEL, DISP_ORDER, RESOURCE_PATH, RESOURCE_URL, STATE, ELEMENT_TYPE, CREATE_TIME, UPDATE_TIME, RESOURCE_DESC, CREATE_BY, UPDATE_BY)
values ('F69BD299C5DC45B0B026C0B7838C246E', '726D8E0EE82E43EAA13BBD962F3108D5', '2135E3D00337471783D6AF46BD43CE4B', '系统编辑', 'sys_clientS_EDIT', 'ELEMENT', null, 2, null, '#', '10A', 'BTN', null, null, null, '123', null);

insert into sys_resource (RESOURCE_ID, P_RESOURCE_ID, CLIENT_ID, RESOURCE_NAME, PRIVILEGE_CODE, RESOURCE_TYPE, RESOURCE_LEVEL, DISP_ORDER, RESOURCE_PATH, RESOURCE_URL, STATE, ELEMENT_TYPE, CREATE_TIME, UPDATE_TIME, RESOURCE_DESC, CREATE_BY, UPDATE_BY)
values ('FD179ED5CD0B4DCC9FA74F13C9539E89', null, 'BB9E309C9FA6426FB7C9F0C3D3883940', '应用版本列表', 'AUTH:PAGE:REALSE', 'MENU', null, 1, null, '/realse', '10A', null, null, null, null, '123', null);

insert into sys_resource (RESOURCE_ID, P_RESOURCE_ID, CLIENT_ID, RESOURCE_NAME, PRIVILEGE_CODE, RESOURCE_TYPE, RESOURCE_LEVEL, DISP_ORDER, RESOURCE_PATH, RESOURCE_URL, STATE, ELEMENT_TYPE, CREATE_TIME, UPDATE_TIME, RESOURCE_DESC, CREATE_BY, UPDATE_BY)
values ('B65C93AF9332431DA8BEE72B88CC5AA4', null, 'BB9E309C9FA6426FB7C9F0C3D3883940', '主机管理', 'AUTH:PAGE:HOST', 'MENU', null, 2, null, '/host', '10A', null, null, null, null, '123', null);

insert into sys_resource (RESOURCE_ID, P_RESOURCE_ID, CLIENT_ID, RESOURCE_NAME, PRIVILEGE_CODE, RESOURCE_TYPE, RESOURCE_LEVEL, DISP_ORDER, RESOURCE_PATH, RESOURCE_URL, STATE, ELEMENT_TYPE, CREATE_TIME, UPDATE_TIME, RESOURCE_DESC, CREATE_BY, UPDATE_BY)
values ('F55047CE05774B88B9CA232CC0E9BE11', null, 'BB9E309C9FA6426FB7C9F0C3D3883940', '部署管理', 'AUTH:PAGE:DEPLOY', 'MENU', null, 3, null, '/deployment', '10A', null, null, null, null, '123', '123');

insert into sys_resource (RESOURCE_ID, P_RESOURCE_ID, CLIENT_ID, RESOURCE_NAME, PRIVILEGE_CODE, RESOURCE_TYPE, RESOURCE_LEVEL, DISP_ORDER, RESOURCE_PATH, RESOURCE_URL, STATE, ELEMENT_TYPE, CREATE_TIME, UPDATE_TIME, RESOURCE_DESC, CREATE_BY, UPDATE_BY)
values ('80F0EAED3D8C482096EC1985A35B1F5F', null, 'BB9E309C9FA6426FB7C9F0C3D3883940', '集群与节点管理', 'AUTH:PAGE:CLUSTER', 'MENU', null, 4, null, '/cluster', '10A', null, null, null, null, '123', null);

insert into sys_resource (RESOURCE_ID, P_RESOURCE_ID, CLIENT_ID, RESOURCE_NAME, PRIVILEGE_CODE, RESOURCE_TYPE, RESOURCE_LEVEL, DISP_ORDER, RESOURCE_PATH, RESOURCE_URL, STATE, ELEMENT_TYPE, CREATE_TIME, UPDATE_TIME, RESOURCE_DESC, CREATE_BY, UPDATE_BY)
values ('F8A91013D6DB472BAE73912FFA748431', null, 'E855F6B612B24A5D988B4D3A171E4B27', '首页', 'menu:index', 'MENU', null, 0, null, '/', '10A', null, null, null, null, '123', null);

insert into sys_resource (RESOURCE_ID, P_RESOURCE_ID, CLIENT_ID, RESOURCE_NAME, PRIVILEGE_CODE, RESOURCE_TYPE, RESOURCE_LEVEL, DISP_ORDER, RESOURCE_PATH, RESOURCE_URL, STATE, ELEMENT_TYPE, CREATE_TIME, UPDATE_TIME, RESOURCE_DESC, CREATE_BY, UPDATE_BY)
values ('8A114810B2E94F2EB369FD4D787ED352', null, 'E855F6B612B24A5D988B4D3A171E4B27', 'demo', 'menu:demo_index', 'MENU', null, 1, null, '/demo/index', '10A', null, null, null, null, '123', null);


-- SYS_ROLE_RESOURCE