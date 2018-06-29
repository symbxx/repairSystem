/*
Navicat MySQL Data Transfer

Source Server         : tp
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : repair

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2018-06-29 23:14:30
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `repair_admin_user`
-- ----------------------------
DROP TABLE IF EXISTS `repair_admin_user`;
CREATE TABLE `repair_admin_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `salt` varchar(50) NOT NULL,
  `user_nickname` varchar(50) NOT NULL,
  `statu` int(2) NOT NULL DEFAULT '1',
  `user_type` varchar(2) NOT NULL,
  `create_time` int(22) NOT NULL,
  `update_time` int(22) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of repair_admin_user
-- ----------------------------
INSERT INTO `repair_admin_user` VALUES ('1', 'superadmin', 'daa96d9681a21445772454cbddf0cac1', '472', '超级管理员', '1', '0', '1523971321', '1524798813');

-- ----------------------------
-- Table structure for `repair_article`
-- ----------------------------
DROP TABLE IF EXISTS `repair_article`;
CREATE TABLE `repair_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `content` text NOT NULL,
  `type` int(11) NOT NULL,
  `create_user` varchar(100) NOT NULL,
  `create_time` int(12) NOT NULL,
  `update_time` int(12) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of repair_article
-- ----------------------------
INSERT INTO `repair_article` VALUES ('8', '路由器配置方案', '&lt;div id=&quot;content&quot;&gt; &lt;div id=&quot;content&quot;&gt; &lt;div id=&quot;content&quot;&gt; &lt;div id=&quot;content&quot;&gt; &lt;div id=&quot;content&quot;&gt; &lt;div id=&quot;content&quot;&gt;&lt;/div&gt;&lt;p&gt;&lt;span style=&quot;font-weight: bold; font-style: italic;&quot;&gt;的撒是&lt;br&gt;&lt;/span&gt;&lt;/p&gt;&lt;/div&gt;&lt;p&gt;&lt;span style=&quot;font-weight: bold; font-style: italic;&quot;&gt;的撒多撒的撒的撒多撒&lt;br&gt;&lt;/span&gt;&lt;/p&gt;&lt;/div&gt;&lt;p&gt;&lt;span style=&quot;font-weight: bold; font-style: italic;&quot;&gt;的撒多撒的撒&lt;/span&gt;&lt;br&gt;&lt;/p&gt;&lt;/div&gt;&lt;table border=&quot;0&quot; width=&quot;100%&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot;&gt;&lt;tbody&gt;&lt;tr&gt;&lt;th&gt;&amp;nbsp;&lt;/th&gt;&lt;th&gt;&amp;nbsp;&lt;/th&gt;&lt;th&gt;&amp;nbsp;&lt;/th&gt;&lt;th&gt;&amp;nbsp;&lt;/th&gt;&lt;th&gt;&amp;nbsp;&lt;/th&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;&amp;nbsp;&lt;/td&gt;&lt;td&gt;&amp;nbsp;&lt;/td&gt;&lt;td&gt;&amp;nbsp;&lt;/td&gt;&lt;td&gt;&amp;nbsp;&lt;/td&gt;&lt;td&gt;&amp;nbsp;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;&amp;nbsp;&lt;/td&gt;&lt;td&gt;&amp;nbsp;&lt;/td&gt;&lt;td&gt;&amp;nbsp;&lt;/td&gt;&lt;td&gt;&amp;nbsp;&lt;/td&gt;&lt;td&gt;&amp;nbsp;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;&amp;nbsp;&lt;/td&gt;&lt;td&gt;&amp;nbsp;&lt;/td&gt;&lt;td&gt;&amp;nbsp;&lt;/td&gt;&lt;td&gt;&amp;nbsp;&lt;/td&gt;&lt;td&gt;&amp;nbsp;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;&amp;nbsp;&lt;/td&gt;&lt;td&gt;&amp;nbsp;&lt;/td&gt;&lt;td&gt;&amp;nbsp;&lt;/td&gt;&lt;td&gt;&amp;nbsp;&lt;/td&gt;&lt;td&gt;&amp;nbsp;&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;/div&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;/div&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '28', 'superadmin', '1524229352', '1524229352');
INSERT INTO `repair_article` VALUES ('9', '费用问题解决方案', '&lt;p&gt;咨询咨询&lt;/p&gt;', '29', 'superadmin', '1524623278', '1524623278');
INSERT INTO `repair_article` VALUES ('10', '的撒多撒', '&lt;div id=&quot;content&quot;&gt;&lt;/div&gt;&lt;p&gt;的撒的撒多打算萨达&lt;/p&gt;', '27', 'superadmin', '1524623359', '1524623359');
INSERT INTO `repair_article` VALUES ('11', '水电费公司', '&lt;div id=&quot;content&quot;&gt;&lt;/div&gt;&lt;p&gt;是的发个是&lt;/p&gt;', '23', 'superadmin', '1525916993', '1525916993');

-- ----------------------------
-- Table structure for `repair_notice`
-- ----------------------------
DROP TABLE IF EXISTS `repair_notice`;
CREATE TABLE `repair_notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text NOT NULL,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of repair_notice
-- ----------------------------
INSERT INTO `repair_notice` VALUES ('1', '&lt;div id=&quot;content&quot;&gt; &lt;div id=&quot;content&quot;&gt; &lt;div id=&quot;content&quot;&gt; &lt;div id=&quot;content&quot;&gt; &lt;div id=&quot;content&quot;&gt; &lt;div id=&quot;content&quot;&gt; &lt;div id=&quot;content&quot;&gt; &lt;div id=&quot;content&quot;&gt; &lt;div id=&quot;content&quot;&gt; &lt;div id=&quot;content&quot;&gt; &lt;div id=&quot;content&quot; style=&quot;text-align: center;&quot;&gt;&lt;h2 style=&quot;text-align: left;&quot;&gt;本系统可以报修，&lt;br&gt;种类如下：&lt;/h2&gt;&lt;ul&gt;&lt;li style=&quot;text-align: left;&quot;&gt;&lt;span style=&quot;background-color: rgb(238, 236, 224); color: rgb(249, 150, 59);&quot;&gt;密码问题&lt;/span&gt;&lt;/li&gt;&lt;li style=&quot;text-align: left;&quot;&gt;&lt;span style=&quot;background-color: rgb(238, 236, 224); color: rgb(249, 150, 59);&quot;&gt;账号问题&lt;/span&gt;&lt;/li&gt;&lt;li style=&quot;text-align: left;&quot;&gt;&lt;span style=&quot;background-color: rgb(238, 236, 224); color: rgb(249, 150, 59);&quot;&gt;消费问题&lt;/span&gt;&lt;/li&gt;&lt;li style=&quot;text-align: left;&quot;&gt;&lt;span style=&quot;background-color: rgb(238, 236, 224); color: rgb(249, 150, 59);&quot;&gt;网络问题&lt;/span&gt;&lt;/li&gt;&lt;li style=&quot;text-align: left;&quot;&gt;&lt;span style=&quot;background-color: rgb(238, 236, 224); color: rgb(249, 150, 59);&quot;&gt;延迟问题&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;p&gt;自助服务系统网址:&lt;a href=&quot;www.cauc.edu.cn/Self&quot; target=&quot;_blank&quot; style=&quot;background-color: white;&quot;&gt;自助服务系统&lt;/a&gt;&lt;/p&gt;&lt;p&gt;修改密码：&lt;/p&gt;&lt;div id=&quot;content&quot;&gt;&lt;div id=&quot;content&quot;&gt;&lt;div id=&quot;content&quot;&gt;&lt;div id=&quot;content&quot;&gt;&lt;ul&gt;&lt;li&gt;密码问题&lt;/li&gt;&lt;li&gt;账号问题&lt;/li&gt;&lt;li&gt;消费问题&lt;/li&gt;&lt;li&gt;网络问题&lt;/li&gt;&lt;li&gt;延迟问题&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;p&gt;自助服务系统网址:&lt;a href=&quot;http://www.cauc.edu.cn/Self&quot; target=&quot;_blank&quot; style=&quot;background-color: white;&quot;&gt;自助服务系统&lt;/a&gt;&lt;/p&gt;&lt;p&gt;修改密码：&lt;/p&gt;&lt;div id=&quot;content&quot;&gt;&lt;div id=&quot;content&quot;&gt;&lt;div id=&quot;content&quot;&gt;&lt;div id=&quot;content&quot;&gt;&lt;ul&gt;&lt;li&gt;密码问题&lt;/li&gt;&lt;li&gt;账号问题&lt;/li&gt;&lt;li&gt;消费问题&lt;/li&gt;&lt;li&gt;网络问题&lt;/li&gt;&lt;li&gt;延迟问题&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;p&gt;自助服务系统网址:&lt;a href=&quot;http://127.0.0.1/www.cauc.edu.cn/Self&quot; target=&quot;_blank&quot;&gt;自助服务系统&lt;/a&gt;&lt;/p&gt;&lt;p&gt;修改密码：&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '1523971703', '1524626133');

-- ----------------------------
-- Table structure for `repair_option_list`
-- ----------------------------
DROP TABLE IF EXISTS `repair_option_list`;
CREATE TABLE `repair_option_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `create_time` int(22) NOT NULL,
  `update_time` int(22) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of repair_option_list
-- ----------------------------
INSERT INTO `repair_option_list` VALUES ('1', '文章更新', 'admin_article_update', '0', '0');
INSERT INTO `repair_option_list` VALUES ('2', '添加文章', 'admin_article_add', '0', '0');
INSERT INTO `repair_option_list` VALUES ('3', '删除文章', 'admin_article_delete', '0', '0');
INSERT INTO `repair_option_list` VALUES ('4', '公告修改', 'admin_notice_change_notice', '0', '0');
INSERT INTO `repair_option_list` VALUES ('5', '修改任务状态', 'admin_repair_start_task', '0', '0');
INSERT INTO `repair_option_list` VALUES ('6', '修改任务状态', 'admin_repair_end_task', '0', '0');
INSERT INTO `repair_option_list` VALUES ('7', '修改任务状态', 'admin_repair_close_task', '0', '0');
INSERT INTO `repair_option_list` VALUES ('8', '添加新维修任务', 'admin_repair_add_task', '0', '0');
INSERT INTO `repair_option_list` VALUES ('9', '删除维修任务', 'admin_repair_delete_task', '0', '0');
INSERT INTO `repair_option_list` VALUES ('10', '新增报修类型', 'admin_type_add', '0', '0');
INSERT INTO `repair_option_list` VALUES ('11', '新增管理人员', 'admin_user_add', '0', '0');
INSERT INTO `repair_option_list` VALUES ('12', '删除管理人员', 'admin_user_delete', '0', '0');
INSERT INTO `repair_option_list` VALUES ('13', '重置密码', 'admin_user_reset', '0', '0');
INSERT INTO `repair_option_list` VALUES ('14', '修改自己的密码', 'admin_user_change_psd', '0', '0');
INSERT INTO `repair_option_list` VALUES ('15', '删除报修类型', 'admin_type_delete', '0', '0');

-- ----------------------------
-- Table structure for `repair_option_record`
-- ----------------------------
DROP TABLE IF EXISTS `repair_option_record`;
CREATE TABLE `repair_option_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ids` varchar(11) DEFAULT NULL,
  `request` text NOT NULL,
  `ip` varchar(22) NOT NULL,
  `user_nickname` varchar(111) NOT NULL,
  `create_time` int(12) NOT NULL,
  `update_time` int(12) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=190 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of repair_option_record
-- ----------------------------
INSERT INTO `repair_option_record` VALUES ('1', '添加新维修任务', '/admin/repair/add_task', null, '{\"type\":\"28\",\"linkman\":\"asdsa\",\"linktel\":\"dsa\",\"address\":\"dsadsa\",\"content\":\"dsad\"}', '127.0.0.1', '', '0', '0');
INSERT INTO `repair_option_record` VALUES ('2', '添加新维修任务', '/admin/repair/add_task', null, '{\"type\":\"28\",\"linkman\":\"\",\"linktel\":\"\",\"address\":\"\",\"content\":\"\"}', '127.0.0.1', '', '1524241033', '1524241033');
INSERT INTO `repair_option_record` VALUES ('3', '添加新维修任务', '/admin/repair/add_task', null, '{\"type\":\"28\",\"linkman\":\"\",\"linktel\":\"\",\"address\":\"\",\"content\":\"\"}', '127.0.0.1', '', '1524241184', '1524241184');
INSERT INTO `repair_option_record` VALUES ('4', '添加新维修任务', '/admin/repair/add_task', null, '{\"type\":\"28\",\"linkman\":\"dsad\",\"linktel\":\"dasdsa\",\"address\":\"dsad\",\"content\":\"dasd\"}', '127.0.0.1', '', '1524241242', '1524241242');
INSERT INTO `repair_option_record` VALUES ('5', '新增管理人员', '/admin/user/add', null, '{\"user_nickname\":\"\\u5c0f\\u660e\",\"username\":\"222@qq.com\",\"password\":\"123456a\",\"user_type\":\"2\"}', '127.0.0.1', '', '1524241277', '1524241277');
INSERT INTO `repair_option_record` VALUES ('6', '删除维修任务', '/admin/repair/delete_task', null, '{\"ids\":[\"50\",\"51\",\"52\",\"53\",\"54\"]}', '127.0.0.1', '超级管理员', '1524241666', '1524241666');
INSERT INTO `repair_option_record` VALUES ('7', '添加新维修任务', '/admin/repair/add_task', null, '{\"type\":\"28\",\"linkman\":\"\\u7684\\u6492\\u5927\\u6240\",\"linktel\":\"\\u7684\\u6492 \",\"address\":\"\\u662f\\u7684\\u6492\",\"content\":\"\\u5927\"}', '127.0.0.1', '超级管理员', '1524242537', '1524242537');
INSERT INTO `repair_option_record` VALUES ('8', '文章更新', '/admin/article/update', null, '{\"content\":\"&lt;div id=&quot;content&quot;&gt;&lt;\\/div&gt;&lt;p&gt;&lt;br&gt;&lt;\\/p&gt;\",\"type\":\"28\",\"title\":\"\\u5927\\u58f0\\u9053\\u4e09\\u662f\"}', '127.0.0.1', '超级管理员', '1524242608', '1524242608');
INSERT INTO `repair_option_record` VALUES ('9', '新增报修类型', '/admin/type/add', null, '{\"title\":\"\\u554a\\u554a\\u554a\",\"type\":\"1\"}', '127.0.0.1', '超级管理员', '1524242642', '1524242642');
INSERT INTO `repair_option_record` VALUES ('10', '新增报修类型', '/admin/type/add', null, '{\"title\":\"\\u8428\\u8fbe\\u6492\\u591a\",\"type\":\"1\"}', '127.0.0.1', '超级管理员', '1524242657', '1524242657');
INSERT INTO `repair_option_record` VALUES ('11', '文章更新', '/admin/article/update', null, '{\"content\":\"&lt;div id=&quot;content&quot;&gt; &lt;div id=&quot;content&quot;&gt;&lt;\\/div&gt;&lt;p&gt;&lt;br&gt;&lt;\\/p&gt;&lt;\\/div&gt;&lt;p&gt;\\u7684\\u6', '127.0.0.1', '超级管理员', '1524244709', '1524244709');
INSERT INTO `repair_option_record` VALUES ('12', '文章更新', '/admin/article/update', null, '{\"content\":\"&lt;div id=&quot;content&quot;&gt; &lt;div id=&quot;content&quot;&gt; &lt;div id=&quot;content&quot;&gt;&lt;\\/div&gt;&lt;p&gt;\\u7684\\u6492\\u662', '127.0.0.1', '超级管理员', '1524244785', '1524244785');
INSERT INTO `repair_option_record` VALUES ('13', '修改任务状态', '/admin/repair/start_task', '55', '{\"id\":\"55\"}', '127.0.0.1', '超级管理员', '1524245094', '1524245094');
INSERT INTO `repair_option_record` VALUES ('14', '修改自己的密码', '/admin/user/change_psd', null, '{\"old_psd\":\"dsa \",\"new_psd\":\"aaa\",\"new_psd2\":\"aaa\"}', '127.0.0.1', '超级管理员', '1524245130', '1524245130');
INSERT INTO `repair_option_record` VALUES ('15', '修改任务状态', '/admin/repair/start_task', '57', '{\"id\":\"57\"}', '127.0.0.1', '超级管理员', '1524249285', '1524249285');
INSERT INTO `repair_option_record` VALUES ('16', '修改任务状态', '/admin/repair/end_task', null, '{\"type\":\"31\",\"message\":\"\"}', '127.0.0.1', '超级管理员', '1524249312', '1524249312');
INSERT INTO `repair_option_record` VALUES ('17', '修改任务状态', '/admin/repair/close_task', '57', '{\"id\":\"57\"}', '127.0.0.1', '超级管理员', '1524249328', '1524249328');
INSERT INTO `repair_option_record` VALUES ('18', '删除维修任务', '/admin/repair/delete_task', null, '{\"ids\":[\"57\",\"56\",\"55\"]}', '127.0.0.1', '超级管理员', '1524280009', '1524280009');
INSERT INTO `repair_option_record` VALUES ('19', '添加新维修任务', '/admin/repair/add_task', null, '{\"type\":\"28\",\"linkman\":\"dsadsad\",\"linktel\":\"dsads\",\"address\":\"dsad\",\"content\":\"dsadsad\"}', '127.0.0.1', '超级管理员', '1524280015', '1524280015');
INSERT INTO `repair_option_record` VALUES ('20', '修改任务状态', '/admin/repair/end_task', null, '{\"type\":\"31\",\"message\":\"\"}', '127.0.0.1', '超级管理员', '1524280023', '1524280023');
INSERT INTO `repair_option_record` VALUES ('21', '修改任务状态', '/admin/repair/close_task', '58', '{\"id\":\"58\"}', '127.0.0.1', '超级管理员', '1524280027', '1524280027');
INSERT INTO `repair_option_record` VALUES ('22', '修改任务状态', '/admin/repair/end_task', null, '{\"type\":\"31\",\"message\":\"\"}', '127.0.0.1', '超级管理员', '1524287948', '1524287948');
INSERT INTO `repair_option_record` VALUES ('23', '修改任务状态', '/admin/repair/close_task', '59', '{\"id\":\"59\"}', '127.0.0.1', '超级管理员', '1524287956', '1524287956');
INSERT INTO `repair_option_record` VALUES ('24', '修改任务状态', '/admin/repair/end_task', null, '{\"type\":\"31\",\"message\":\"\"}', '127.0.0.1', '超级管理员', '1524287968', '1524287968');
INSERT INTO `repair_option_record` VALUES ('25', '修改任务状态', '/admin/repair/close_task', '60', '{\"id\":\"60\"}', '127.0.0.1', '超级管理员', '1524287974', '1524287974');
INSERT INTO `repair_option_record` VALUES ('26', '修改任务状态', '/admin/repair/end_task', null, '{\"type\":\"31\",\"message\":\"\"}', '127.0.0.1', '超级管理员', '1524288260', '1524288260');
INSERT INTO `repair_option_record` VALUES ('27', '修改任务状态', '/admin/repair/close_task', '61', '{\"id\":\"61\"}', '127.0.0.1', '超级管理员', '1524288262', '1524288262');
INSERT INTO `repair_option_record` VALUES ('28', '修改任务状态', '/admin/repair/end_task', null, '{\"type\":\"31\",\"message\":\"\"}', '127.0.0.1', '超级管理员', '1524288475', '1524288475');
INSERT INTO `repair_option_record` VALUES ('29', '修改任务状态', '/admin/repair/close_task', '62', '{\"id\":\"62\"}', '127.0.0.1', '超级管理员', '1524288476', '1524288476');
INSERT INTO `repair_option_record` VALUES ('30', '新增管理人员', '/admin/user/add', null, '{\"user_nickname\":\"XX\",\"username\":\"1234567a\",\"password\":\"12324\",\"user_type\":\"1\"}', '127.0.0.1', '超级管理员', '1524299741', '1524299741');
INSERT INTO `repair_option_record` VALUES ('31', '重置密码', '/admin/user/reset', '35', '{\"id\":\"35\"}', '127.0.0.1', '超级管理员', '1524299781', '1524299781');
INSERT INTO `repair_option_record` VALUES ('32', '修改任务状态', '/admin/repair/end_task', null, '{\"type\":\"31\",\"message\":\"\"}', '127.0.0.1', '超级管理员', '1524406574', '1524406574');
INSERT INTO `repair_option_record` VALUES ('33', '修改任务状态', '/admin/repair/close_task', '63', '{\"id\":\"63\"}', '127.0.0.1', '超级管理员', '1524406576', '1524406576');
INSERT INTO `repair_option_record` VALUES ('34', '新增报修类型', '/admin/type/add', null, '{\"title\":\"\\u8d26\\u53f7\\u95ee\\u9898\",\"type\":\"0\"}', '127.0.0.1', '超级管理员', '1524406685', '1524406685');
INSERT INTO `repair_option_record` VALUES ('35', '新增报修类型', '/admin/type/add', null, '{\"title\":\"\\u8def\\u7531\\u5668\\u95ee\\u9898\",\"type\":\"0\"}', '127.0.0.1', '超级管理员', '1524406694', '1524406694');
INSERT INTO `repair_option_record` VALUES ('36', '修改任务状态', '/admin/repair/end_task', null, '{\"type\":\"31\",\"message\":\"\"}', '127.0.0.1', '超级管理员', '1524406707', '1524406707');
INSERT INTO `repair_option_record` VALUES ('37', '修改任务状态', '/admin/repair/close_task', '64', '{\"id\":\"64\"}', '127.0.0.1', '超级管理员', '1524406708', '1524406708');
INSERT INTO `repair_option_record` VALUES ('38', '修改任务状态', '/admin/repair/end_task', null, '{\"type\":\"31\",\"message\":\"\"}', '127.0.0.1', '超级管理员', '1524406827', '1524406827');
INSERT INTO `repair_option_record` VALUES ('39', '修改任务状态', '/admin/repair/close_task', '65', '{\"id\":\"65\"}', '127.0.0.1', '超级管理员', '1524406967', '1524406967');
INSERT INTO `repair_option_record` VALUES ('40', '修改任务状态', '/admin/repair/end_task', null, '{\"type\":\"35\",\"message\":\"\\u7684\\u6492\\u591a\"}', '127.0.0.1', '超级管理员', '1524406974', '1524406974');
INSERT INTO `repair_option_record` VALUES ('41', '修改任务状态', '/admin/repair/close_task', '66', '{\"id\":\"66\"}', '127.0.0.1', '超级管理员', '1524407011', '1524407011');
INSERT INTO `repair_option_record` VALUES ('42', '添加新维修任务', '/admin/repair/add_task', null, '{\"type\":\"28\",\"linkman\":\"\\u5218\\u6cb3\",\"linktel\":\"18682711716\",\"address\":\"\\u531720\",\"content\":\"\\u5927\\u59d0\\u5927\\u6240\"}', '127.0.0.1', '超级管理员', '1524547899', '1524547899');
INSERT INTO `repair_option_record` VALUES ('43', '修改任务状态', '/admin/repair/start_task', '67', '{\"id\":\"67\"}', '127.0.0.1', '超级管理员', '1524547913', '1524547913');
INSERT INTO `repair_option_record` VALUES ('44', '修改任务状态', '/admin/repair/end_task', null, '{\"type\":\"36\",\"message\":\"\\u5927\\u53d4\\u5927\\u5a76\"}', '127.0.0.1', '超级管理员', '1524578652', '1524578652');
INSERT INTO `repair_option_record` VALUES ('45', '修改任务状态', '/admin/repair/close_task', '67', '{\"id\":\"67\"}', '127.0.0.1', '超级管理员', '1524578654', '1524578654');
INSERT INTO `repair_option_record` VALUES ('46', '修改任务状态', '/admin/repair/end_task', null, '{\"type\":\"32\",\"message\":\"\\u7684\\u6492\\u591a\\u6492\\u8428\\u8fbe\"}', '127.0.0.1', '超级管理员', '1524578658', '1524578658');
INSERT INTO `repair_option_record` VALUES ('47', '修改任务状态', '/admin/repair/close_task', '68', '{\"id\":\"68\"}', '127.0.0.1', '超级管理员', '1524578660', '1524578660');
INSERT INTO `repair_option_record` VALUES ('48', '文章更新', '/admin/article/update', null, '{\"content\":\"&lt;div id=&quot;content&quot;&gt; &lt;div id=&quot;content&quot;&gt; &lt;div id=&quot;content&quot;&gt; &lt;div id=&quot;content&quot;&gt;&lt;', '127.0.0.1', '超级管理员', '1524578777', '1524578777');
INSERT INTO `repair_option_record` VALUES ('49', '公告修改', '/admin/notice/change_notice', null, '{\"content\":\"&lt;div id=&quot;content&quot;&gt; &lt;div id=&quot;content&quot;&gt; &lt;div id=&quot;content&quot;&gt; &lt;div id=&quot;content&quot;&gt; &lt', '127.0.0.1', '超级管理员', '1524585522', '1524585522');
INSERT INTO `repair_option_record` VALUES ('50', '公告修改', '/admin/notice/change_notice', null, '{\"content\":\"&lt;div id=&quot;content&quot;&gt; &lt;div id=&quot;content&quot;&gt; &lt;div id=&quot;content&quot;&gt; &lt;div id=&quot;content&quot;&gt; &lt', '127.0.0.1', '超级管理员', '1524585850', '1524585850');
INSERT INTO `repair_option_record` VALUES ('51', '公告修改', '/admin/notice/change_notice', null, '{\"content\":\"&lt;div id=&quot;content&quot;&gt; &lt;div id=&quot;content&quot;&gt; &lt;div id=&quot;content&quot;&gt; &lt;div id=&quot;content&quot;&gt; &lt', '127.0.0.1', '超级管理员', '1524587092', '1524587092');
INSERT INTO `repair_option_record` VALUES ('52', '文章更新', '/admin/article/update', null, '{\"content\":\"&lt;div id=&quot;content&quot;&gt; &lt;div id=&quot;content&quot;&gt; &lt;div id=&quot;content&quot;&gt; &lt;div id=&quot;content&quot;&gt; &lt', '10.1.154.82', '超级管理员', '1524622219', '1524622219');
INSERT INTO `repair_option_record` VALUES ('53', '文章更新', '/admin/article/update', null, '{\"content\":\"&lt;div id=&quot;content&quot;&gt; &lt;div id=&quot;content&quot;&gt; &lt;div id=&quot;content&quot;&gt; &lt;div id=&quot;content&quot;&gt; &lt', '10.1.154.82', '超级管理员', '1524622910', '1524622910');
INSERT INTO `repair_option_record` VALUES ('54', '添加文章', '/admin/article/add', null, '{\"content\":\"&lt;p&gt;\\u54a8\\u8be2\\u54a8\\u8be2&lt;\\/p&gt;\",\"type\":\"29\",\"title\":\"\\u8d39\\u7528\\u95ee\\u9898\\u89e3\\u51b3\\u65b9\\u6848\"}', '10.1.154.82', '超级管理员', '1524623278', '1524623278');
INSERT INTO `repair_option_record` VALUES ('55', '添加文章', '/admin/article/add', null, '{\"content\":\"&lt;div id=&quot;content&quot;&gt;&lt;\\/div&gt;&lt;p&gt;\\u7684\\u6492\\u7684\\u6492\\u591a\\u6253\\u7b97\\u8428\\u8fbe&lt;\\/p&gt;\",\"type\":\"27\",\"title\":', '10.1.154.82', '超级管理员', '1524623359', '1524623359');
INSERT INTO `repair_option_record` VALUES ('56', '修改任务状态', '/admin/repair/end_task', null, '{\"type\":\"32\",\"message\":\"\\u7684\\u6492\\u591a\\u6492\"}', '10.1.154.82', '超级管理员', '1524624380', '1524624380');
INSERT INTO `repair_option_record` VALUES ('57', '修改任务状态', '/admin/repair/close_task', '69', '{\"id\":\"69\"}', '10.1.154.82', '超级管理员', '1524624382', '1524624382');
INSERT INTO `repair_option_record` VALUES ('58', '修改任务状态', '/admin/repair/end_task', null, '{\"type\":\"36\",\"message\":\"\\u7684\\u6492\\u591a\\u6492\"}', '10.1.154.82', '超级管理员', '1524624386', '1524624386');
INSERT INTO `repair_option_record` VALUES ('59', '修改任务状态', '/admin/repair/close_task', '70', '{\"id\":\"70\"}', '10.1.154.82', '超级管理员', '1524624388', '1524624388');
INSERT INTO `repair_option_record` VALUES ('60', '删除管理人员', '/admin/user/delete', '35', '{\"id\":\"35\"}', '10.1.154.82', '超级管理员', '1524625089', '1524625089');
INSERT INTO `repair_option_record` VALUES ('61', '公告修改', '/admin/notice/change_notice', null, '{\"content\":\"&lt;div id=&quot;content&quot;&gt; &lt;div id=&quot;content&quot;&gt; &lt;div id=&quot;content&quot;&gt; &lt;div id=&quot;content&quot;&gt; &lt', '10.1.154.82', '超级管理员', '1524626133', '1524626133');
INSERT INTO `repair_option_record` VALUES ('62', '修改自己的密码', '/admin/user/change_psd', null, '{\"old_psd\":\"123456a\",\"new_psd\":\"1\",\"new_psd2\":\"1\"}', '10.1.154.82', '超级管理员', '1524630760', '1524630760');
INSERT INTO `repair_option_record` VALUES ('63', '修改任务状态', '/admin/repair/start_task', '71', '{\"id\":\"71\"}', '127.0.0.1', '超级管理员', '1524707965', '1524707965');
INSERT INTO `repair_option_record` VALUES ('64', '重置密码', '/admin/user/reset', '37', '{\"id\":\"37\"}', '127.0.0.1', '超级管理员', '1524707996', '1524707996');
INSERT INTO `repair_option_record` VALUES ('65', '修改自己的密码', '/admin/user/change_psd', null, '{\"old_psd\":\"123456a\",\"new_psd\":\"1\",\"new_psd2\":\"1\"}', '127.0.0.1', '超级管理员', '1524712497', '1524712497');
INSERT INTO `repair_option_record` VALUES ('66', '修改自己的密码', '/admin/user/change_psd', null, '{\"old_psd\":\"1\",\"new_psd\":\"1\",\"new_psd2\":\"1\"}', '127.0.0.1', '超级管理员', '1524712499', '1524712499');
INSERT INTO `repair_option_record` VALUES ('67', '删除维修任务', '/admin/repair/delete_task', null, '{\"ids\":[\"72\",\"73\",\"74\",\"75\",\"76\",\"77\",\"78\",\"79\",\"80\",\"81\"]}', '127.0.0.1', '超级管理员', '1524712521', '1524712521');
INSERT INTO `repair_option_record` VALUES ('68', '删除维修任务', '/admin/repair/delete_task', null, '{\"ids\":[\"82\",\"83\",\"84\",\"85\",\"86\",\"87\",\"88\",\"89\",\"90\",\"91\"]}', '127.0.0.1', '超级管理员', '1524712525', '1524712525');
INSERT INTO `repair_option_record` VALUES ('69', '修改任务状态', '/admin/repair/end_task', null, '{\"type\":\"31\",\"message\":\"dsadasd\"}', '127.0.0.1', '超级管理员', '1524712809', '1524712809');
INSERT INTO `repair_option_record` VALUES ('70', '修改任务状态', '/admin/repair/close_task', '92', '{\"id\":\"92\"}', '127.0.0.1', '超级管理员', '1524713702', '1524713702');
INSERT INTO `repair_option_record` VALUES ('71', '删除维修任务', '/admin/repair/delete_task', null, '{\"ids\":[\"98\",\"97\",\"93\",\"94\",\"95\",\"96\",\"71\",\"59\",\"64\",\"65\"]}', '127.0.0.1', '超级管理员', '1524721752', '1524721752');
INSERT INTO `repair_option_record` VALUES ('72', '删除维修任务', '/admin/repair/delete_task', null, '{\"ids\":[\"66\",\"61\",\"60\",\"58\",\"62\",\"63\",\"67\",\"68\",\"69\",\"70\",\"92\"]}', '127.0.0.1', '超级管理员', '1524721757', '1524721757');
INSERT INTO `repair_option_record` VALUES ('73', '添加新维修任务', '/admin/repair/add_task', null, '{\"type\":\"28\",\"linkman\":\"\\u5218\\u6cb3\",\"linktel\":\"23213213\",\"address\":\"\\u7684\\u6492\\u5927\\u6240 \",\"content\":\"\\u7684\\u6492\\u591a\\u6492\"}', '127.0.0.1', '超级管理员', '1524721799', '1524721799');
INSERT INTO `repair_option_record` VALUES ('74', '修改任务状态', '/admin/repair/start_task', '99', '{\"id\":\"99\"}', '127.0.0.1', '超级管理员', '1524721810', '1524721810');
INSERT INTO `repair_option_record` VALUES ('75', '修改任务状态', '/admin/repair/end_task', null, '{\"type\":\"31\",\"message\":\"\"}', '127.0.0.1', '超级管理员', '1524721814', '1524721814');
INSERT INTO `repair_option_record` VALUES ('76', '修改任务状态', '/admin/repair/close_task', '99', '{\"id\":\"99\"}', '127.0.0.1', '超级管理员', '1524721816', '1524721816');
INSERT INTO `repair_option_record` VALUES ('77', '添加新维修任务', '/admin/repair/add_task', null, '{\"type\":\"27\",\"linkman\":\"\\u7684\\u6492\\u591a\\u7684\\u6492\",\"linktel\":\"\\u7684\\u6492\\u591a\\u6492\",\"address\":\"dsadsa\",\"content\":\"dsadasd\"}', '127.0.0.1', '超级管理员', '1524722341', '1524722341');
INSERT INTO `repair_option_record` VALUES ('78', '修改任务状态', '/admin/repair/start_task', '100', '{\"id\":\"100\"}', '127.0.0.1', '超级管理员', '1524722356', '1524722356');
INSERT INTO `repair_option_record` VALUES ('79', '修改任务状态', '/admin/repair/end_task', null, '{\"type\":\"31\",\"message\":\"\"}', '127.0.0.1', '超级管理员', '1524722359', '1524722359');
INSERT INTO `repair_option_record` VALUES ('80', '修改任务状态', '/admin/repair/end_task', null, '{\"type\":\"31\",\"message\":\"\"}', '127.0.0.1', '超级管理员', '1524722361', '1524722361');
INSERT INTO `repair_option_record` VALUES ('81', '修改任务状态', '/admin/repair/close_task', '100', '{\"id\":\"100\"}', '127.0.0.1', '超级管理员', '1524722363', '1524722363');
INSERT INTO `repair_option_record` VALUES ('82', '添加新维修任务', '/admin/repair/add_task', null, '{\"type\":\"24\",\"linkman\":\"dsa\",\"linktel\":\"dasddsaddsad\",\"address\":\"sadsad\",\"content\":\"dsadasd\"}', '127.0.0.1', '超级管理员', '1524722435', '1524722435');
INSERT INTO `repair_option_record` VALUES ('83', '添加新维修任务', '/admin/repair/add_task', null, '{\"type\":\"24\",\"linkman\":\"dsadsa\",\"linktel\":\"dsads\",\"address\":\"dsad\",\"content\":\"sadsa\"}', '127.0.0.1', '超级管理员', '1524722441', '1524722441');
INSERT INTO `repair_option_record` VALUES ('84', '修改任务状态', '/admin/repair/end_task', null, '{\"type\":\"31\",\"message\":\"\"}', '127.0.0.1', '超级管理员', '1524722446', '1524722446');
INSERT INTO `repair_option_record` VALUES ('85', '修改任务状态', '/admin/repair/end_task', null, '{\"type\":\"31\",\"message\":\"\"}', '127.0.0.1', '超级管理员', '1524722448', '1524722448');
INSERT INTO `repair_option_record` VALUES ('86', '修改任务状态', '/admin/repair/close_task', '101', '{\"id\":\"101\"}', '127.0.0.1', '超级管理员', '1524722450', '1524722450');
INSERT INTO `repair_option_record` VALUES ('87', '修改任务状态', '/admin/repair/close_task', '102', '{\"id\":\"102\"}', '127.0.0.1', '超级管理员', '1524722451', '1524722451');
INSERT INTO `repair_option_record` VALUES ('88', '修改任务状态', '/admin/repair/end_task', null, '{\"type\":\"31\",\"message\":\"\"}', '127.0.0.1', '超级管理员', '1524722764', '1524722764');
INSERT INTO `repair_option_record` VALUES ('89', '修改任务状态', '/admin/repair/close_task', '103', '{\"id\":\"103\"}', '127.0.0.1', '超级管理员', '1524722765', '1524722765');
INSERT INTO `repair_option_record` VALUES ('90', '添加新维修任务', '/admin/repair/add_task', null, '{\"type\":\"28\",\"linkman\":\"\\u7684\\u6492\\u591a\\u7684\\u6492\",\"linktel\":\"\\u7684\\u6492\\u5927\\u6240\\u7684\\u6492\",\"address\":\"\\u6253\\u7b97\",\"content\":\"\\u7684\\u6492\\u', '127.0.0.1', '超级管理员', '1524722802', '1524722802');
INSERT INTO `repair_option_record` VALUES ('91', '修改任务状态', '/admin/repair/end_task', null, '{\"type\":\"35\",\"message\":\"\"}', '127.0.0.1', '超级管理员', '1524751481', '1524751481');
INSERT INTO `repair_option_record` VALUES ('92', '修改任务状态', '/admin/repair/end_task', null, '{\"type\":\"32\",\"message\":\"dsa\"}', '127.0.0.1', '超级管理员', '1524751486', '1524751486');
INSERT INTO `repair_option_record` VALUES ('93', '修改任务状态', '/admin/repair/end_task', null, '{\"type\":\"35\",\"message\":\"\"}', '127.0.0.1', '超级管理员', '1524751489', '1524751489');
INSERT INTO `repair_option_record` VALUES ('94', '修改任务状态', '/admin/repair/end_task', null, '{\"type\":\"31\",\"message\":\"fdsfd\"}', '127.0.0.1', '超级管理员', '1524751493', '1524751493');
INSERT INTO `repair_option_record` VALUES ('95', '修改任务状态', '/admin/repair/close_task', '107', '{\"id\":\"107\"}', '127.0.0.1', '超级管理员', '1524751494', '1524751494');
INSERT INTO `repair_option_record` VALUES ('96', '修改任务状态', '/admin/repair/close_task', '106', '{\"id\":\"106\"}', '127.0.0.1', '超级管理员', '1524751495', '1524751495');
INSERT INTO `repair_option_record` VALUES ('97', '修改任务状态', '/admin/repair/close_task', '105', '{\"id\":\"105\"}', '127.0.0.1', '超级管理员', '1524751495', '1524751495');
INSERT INTO `repair_option_record` VALUES ('98', '修改任务状态', '/admin/repair/close_task', '104', '{\"id\":\"104\"}', '127.0.0.1', '超级管理员', '1524751496', '1524751496');
INSERT INTO `repair_option_record` VALUES ('99', '修改任务状态', '/admin/repair/end_task', null, '{\"type\":\"35\",\"message\":\"\\u5bc6\\u7801\\u5fd8\\u8bb0\\u4e86\"}', '127.0.0.1', '超级管理员', '1524752674', '1524752674');
INSERT INTO `repair_option_record` VALUES ('100', '修改任务状态', '/admin/repair/close_task', '108', '{\"id\":\"108\"}', '127.0.0.1', '超级管理员', '1524752676', '1524752676');
INSERT INTO `repair_option_record` VALUES ('101', '修改自己的密码', '/admin/user/change_psd', null, '{\"old_psd\":\"a\",\"new_psd\":\"a\",\"new_psd2\":\"a\"}', '127.0.0.1', '超级管理员', '1524798794', '1524798794');
INSERT INTO `repair_option_record` VALUES ('102', '修改自己的密码', '/admin/user/change_psd', null, '{\"old_psd\":\"1\",\"new_psd\":\"a\",\"new_psd2\":\"a\"}', '127.0.0.1', '超级管理员', '1524798797', '1524798797');
INSERT INTO `repair_option_record` VALUES ('103', '修改自己的密码', '/admin/user/change_psd', null, '{\"old_psd\":\"2\",\"new_psd\":\"1\",\"new_psd2\":\"1\"}', '10.1.154.82', '超级管理员', '1524798810', '1524798810');
INSERT INTO `repair_option_record` VALUES ('104', '修改自己的密码', '/admin/user/change_psd', null, '{\"old_psd\":\"a\",\"new_psd\":\"1\",\"new_psd2\":\"1\"}', '10.1.154.82', '超级管理员', '1524798813', '1524798813');
INSERT INTO `repair_option_record` VALUES ('105', '删除维修任务', '/admin/repair/delete_task', null, '{\"ids\":[\"111\"]}', '127.0.0.1', '超级管理员', '1524799625', '1524799625');
INSERT INTO `repair_option_record` VALUES ('106', '重置密码', '/admin/user/reset', '36', '{\"id\":\"36\"}', '127.0.0.1', '超级管理员', '1525315085', '1525315085');
INSERT INTO `repair_option_record` VALUES ('107', '修改任务状态', '/admin/repair/end_task', null, '{\"type\":\"35\",\"message\":\"dsa\"}', '127.0.0.1', '小明', '1525315298', '1525315298');
INSERT INTO `repair_option_record` VALUES ('108', '修改任务状态', '/admin/repair/close_task', '110', '{\"id\":\"110\"}', '127.0.0.1', '超级管理员', '1525315316', '1525315316');
INSERT INTO `repair_option_record` VALUES ('109', '重置密码', '/admin/user/reset', '37', '{\"id\":\"37\"}', '127.0.0.1', '超级管理员', '1525315353', '1525315353');
INSERT INTO `repair_option_record` VALUES ('110', '新增报修类型', '/admin/type/add', null, '{\"title\":\"\\u5bbf\\u820d\\u7ebf\\u8def\\u95ee\\u9898\",\"type\":\"1\"}', '10.4.1.45', '超级管理员', '1525914087', '1525914087');
INSERT INTO `repair_option_record` VALUES ('111', '新增报修类型', '/admin/type/add', null, '{\"title\":\"\\u63a5\\u5165\\u8bbe\\u5907\\u95ee\\u9898\",\"type\":\"1\"}', '10.4.1.45', '超级管理员', '1525914107', '1525914107');
INSERT INTO `repair_option_record` VALUES ('112', '新增报修类型', '/admin/type/add', null, '{\"title\":\"\\u5b66\\u6821\\u7ebf\\u8def\\u95ee\\u9898\",\"type\":\"1\"}', '10.4.1.45', '超级管理员', '1525914118', '1525914118');
INSERT INTO `repair_option_record` VALUES ('113', '新增管理人员', '/admin/user/add', null, '{\"user_nickname\":\"\\u9ad8\\u6c5f\\u6d9b\",\"username\":\"jtgao\",\"password\":\"123456\",\"user_type\":\"1\"}', '10.4.1.45', '超级管理员', '1525914175', '1525914175');
INSERT INTO `repair_option_record` VALUES ('114', '修改任务状态', '/admin/repair/start_task', '109', '{\"id\":\"109\"}', '10.4.1.45', '超级管理员', '1525914312', '1525914312');
INSERT INTO `repair_option_record` VALUES ('115', '修改任务状态', '/admin/repair/start_task', '112', '{\"id\":\"112\"}', '10.4.1.45', '超级管理员', '1525914438', '1525914438');
INSERT INTO `repair_option_record` VALUES ('116', '修改任务状态', '/admin/repair/end_task', null, '{\"type\":\"31\",\"message\":\"\\u5df2\\u7ecf\\u89e3\\u51b3\\uff0c\\u9700\\u8981\\u5b9a\\u671f\\u66f4\\u6362\\u5bc6\\u7801\\uff0c\\u5bc6\\u7801\\u8fc7\\u671f\\u4e86\"}', '10.4.1.45', '超级管理员', '1525914470', '1525914470');
INSERT INTO `repair_option_record` VALUES ('117', '修改任务状态', '/admin/repair/close_task', '112', '{\"id\":\"112\"}', '10.4.1.45', '超级管理员', '1525914505', '1525914505');
INSERT INTO `repair_option_record` VALUES ('118', '删除维修任务', '/admin/repair/delete_task', null, '{\"ids\":[\"112\"]}', '10.4.1.45', '超级管理员', '1525914591', '1525914591');
INSERT INTO `repair_option_record` VALUES ('119', '删除管理人员', '/admin/user/delete', '37', '{\"id\":\"37\"}', '10.4.1.45', '超级管理员', '1525915079', '1525915079');
INSERT INTO `repair_option_record` VALUES ('120', '重置密码', '/admin/user/reset', '38', '{\"id\":\"38\"}', '10.4.1.45', '超级管理员', '1525915084', '1525915084');
INSERT INTO `repair_option_record` VALUES ('121', '新增管理人员', '/admin/user/add', null, '{\"user_nickname\":\"\\u8d75\\u4fca\\u677e\",\"username\":\"js-zhao\",\"password\":\"cauc480\",\"user_type\":\"1\"}', '10.4.1.45', '超级管理员', '1525915196', '1525915196');
INSERT INTO `repair_option_record` VALUES ('122', '重置密码', '/admin/user/reset', '39', '{\"id\":\"39\"}', '10.4.1.45', '超级管理员', '1525915896', '1525915896');
INSERT INTO `repair_option_record` VALUES ('123', '新增管理人员', '/admin/user/add', null, '{\"user_nickname\":\"\\u8d75\\u4fca\\u677e\",\"username\":\"js-zhao\",\"password\":\"123\",\"user_type\":\"2\"}', '10.4.1.45', '超级管理员', '1525915931', '1525915931');
INSERT INTO `repair_option_record` VALUES ('124', '删除管理人员', '/admin/user/delete', '39', '{\"id\":\"39\"}', '10.4.1.45', '超级管理员', '1525915938', '1525915938');
INSERT INTO `repair_option_record` VALUES ('125', '重置密码', '/admin/user/reset', '38', '{\"id\":\"38\"}', '10.4.1.45', '超级管理员', '1525916184', '1525916184');
INSERT INTO `repair_option_record` VALUES ('126', '删除管理人员', '/admin/user/delete', '36', '{\"id\":\"36\"}', '10.4.1.45', '超级管理员', '1525916279', '1525916279');
INSERT INTO `repair_option_record` VALUES ('127', '新增管理人员', '/admin/user/add', null, '{\"user_nickname\":\"js-zhao\",\"username\":\"js-zhao\",\"password\":\"123456\",\"user_type\":\"2\"}', '10.4.1.45', '超级管理员', '1525916298', '1525916298');
INSERT INTO `repair_option_record` VALUES ('128', '修改任务状态', '/admin/repair/start_task', '113', '{\"id\":\"113\"}', '10.4.1.45', 'js-zhao', '1525916323', '1525916323');
INSERT INTO `repair_option_record` VALUES ('129', '修改任务状态', '/admin/repair/end_task', null, '{\"type\":\"35\",\"message\":\"\\u6d4b\\u8bd5\\u5b8c\\u6210\"}', '10.4.1.45', 'js-zhao', '1525916392', '1525916392');
INSERT INTO `repair_option_record` VALUES ('130', '修改任务状态', '/admin/repair/close_task', '113', '{\"id\":\"113\"}', '10.4.1.45', '高江涛', '1525916438', '1525916438');
INSERT INTO `repair_option_record` VALUES ('131', '删除维修任务', '/admin/repair/delete_task', null, '{\"ids\":[\"113\"]}', '10.4.1.45', '高江涛', '1525916493', '1525916493');
INSERT INTO `repair_option_record` VALUES ('132', '修改任务状态', '/admin/repair/end_task', null, '{\"type\":\"35\",\"message\":\"\\u7279\\u4f7f\\u5b8c\\u6210\"}', '10.4.1.45', 'js-zhao', '1525916568', '1525916568');
INSERT INTO `repair_option_record` VALUES ('133', '新增管理人员', '/admin/user/add', null, '{\"user_nickname\":\"\\u6765\\u71c3\",\"username\":\"rlai\",\"password\":\"123\",\"user_type\":\"2\"}', '10.4.1.45', '超级管理员', '1525916850', '1525916850');
INSERT INTO `repair_option_record` VALUES ('134', '添加文章', '/admin/article/add', null, '{\"content\":\"&lt;div id=&quot;content&quot;&gt;&lt;\\/div&gt;&lt;p&gt;\\u662f\\u7684\\u53d1\\u4e2a\\u662f&lt;\\/p&gt;\",\"type\":\"23\",\"title\":\"\\u6c34\\u7535\\u8d39\\u516', '10.4.1.45', '超级管理员', '1525916993', '1525916993');
INSERT INTO `repair_option_record` VALUES ('135', '修改任务状态', '/admin/repair/end_task', null, '{\"type\":\"35\",\"message\":\"\"}', '10.8.19.252', '超级管理员', '1525918106', '1525918106');
INSERT INTO `repair_option_record` VALUES ('136', '修改任务状态', '/admin/repair/close_task', '114', '{\"id\":\"114\"}', '10.8.19.252', '超级管理员', '1525918108', '1525918108');
INSERT INTO `repair_option_record` VALUES ('137', '修改任务状态', '/admin/repair/close_task', '109', '{\"id\":\"109\"}', '10.8.19.252', '超级管理员', '1525918109', '1525918109');
INSERT INTO `repair_option_record` VALUES ('138', '删除维修任务', '/admin/repair/delete_task', null, '{\"ids\":[\"110\",\"109\",\"106\",\"105\",\"104\",\"99\",\"100\",\"101\",\"102\"]}', '10.8.19.252', '超级管理员', '1525918303', '1525918303');
INSERT INTO `repair_option_record` VALUES ('139', '删除维修任务', '/admin/repair/delete_task', null, '{\"ids\":[\"108\",\"107\",\"103\"]}', '10.8.19.252', '超级管理员', '1525918311', '1525918311');
INSERT INTO `repair_option_record` VALUES ('140', '修改任务状态', '/admin/repair/end_task', null, '{\"type\":\"35\",\"message\":\"\"}', '10.8.19.252', '超级管理员', '1525918348', '1525918348');
INSERT INTO `repair_option_record` VALUES ('141', '修改任务状态', '/admin/repair/close_task', '115', '{\"id\":\"115\"}', '10.8.19.252', '超级管理员', '1525918371', '1525918371');
INSERT INTO `repair_option_record` VALUES ('142', '修改任务状态', '/admin/repair/end_task', null, '{\"type\":\"35\",\"message\":\"\"}', '127.0.0.1', '刘河', '1525958393', '1525958393');
INSERT INTO `repair_option_record` VALUES ('143', '修改任务状态', '/admin/repair/end_task', null, '{\"type\":\"35\",\"message\":\"\"}', '127.0.0.1', '刘河', '1525967279', '1525967279');
INSERT INTO `repair_option_record` VALUES ('144', '修改任务状态', '/admin/repair/close_task', '116', '{\"id\":\"116\"}', '127.0.0.1', '刘河', '1525967372', '1525967372');
INSERT INTO `repair_option_record` VALUES ('145', '修改任务状态', '/admin/repair/close_task', '117', '{\"id\":\"117\"}', '127.0.0.1', '刘河', '1525967385', '1525967385');
INSERT INTO `repair_option_record` VALUES ('146', '修改任务状态', '/admin/repair/start_task', '118', '{\"id\":\"118\"}', '127.0.0.1', '刘河', '1525967649', '1525967649');
INSERT INTO `repair_option_record` VALUES ('147', '修改任务状态', '/admin/repair/end_task', null, '{\"type\":\"32\",\"message\":\"\\u6709\\u95ee\\u9898\"}', '127.0.0.1', '刘河', '1525967658', '1525967658');
INSERT INTO `repair_option_record` VALUES ('148', '修改任务状态', '/admin/repair/close_task', '118', '{\"id\":\"118\"}', '127.0.0.1', '刘河', '1525967684', '1525967684');
INSERT INTO `repair_option_record` VALUES ('149', '修改任务状态', '/admin/repair/end_task', null, '{\"type\":\"35\",\"message\":\"\"}', '10.8.19.252', '刘河', '1525997617', '1525997617');
INSERT INTO `repair_option_record` VALUES ('150', '修改任务状态', '/admin/repair/close_task', '119', '{\"id\":\"119\"}', '10.8.19.252', '刘河', '1525997627', '1525997627');
INSERT INTO `repair_option_record` VALUES ('151', '修改任务状态', '/admin/repair/end_task', null, '{\"type\":\"35\",\"message\":\"\"}', '10.8.19.252', '刘河', '1525997836', '1525997836');
INSERT INTO `repair_option_record` VALUES ('152', '修改任务状态', '/admin/repair/close_task', '120', '{\"id\":\"120\"}', '10.8.19.252', '刘河', '1525997839', '1525997839');
INSERT INTO `repair_option_record` VALUES ('153', '删除管理人员', '/admin/user/delete', '41', '{\"id\":\"41\"}', '10.4.1.45', '超级管理员', '1526001703', '1526001703');
INSERT INTO `repair_option_record` VALUES ('154', '删除管理人员', '/admin/user/delete', '40', '{\"id\":\"40\"}', '10.4.1.45', '超级管理员', '1526001708', '1526001708');
INSERT INTO `repair_option_record` VALUES ('155', '新增管理人员', '/admin/user/add', null, '{\"user_nickname\":\"\\u8d75\\u4fca\\u677e\",\"username\":\"js-zhao\",\"password\":\"1111aaaa!\",\"user_type\":\"1\"}', '10.4.1.45', '超级管理员', '1526001740', '1526001740');
INSERT INTO `repair_option_record` VALUES ('156', '新增管理人员', '/admin/user/add', null, '{\"user_nickname\":\"\\u8d75\\u4e3d\\u5a1c\",\"username\":\"lnzhao\",\"password\":\"1111aaaa\\uff01\",\"user_type\":\"1\"}', '10.4.1.45', '超级管理员', '1526001769', '1526001769');
INSERT INTO `repair_option_record` VALUES ('157', '新增管理人员', '/admin/user/add', null, '{\"user_nickname\":\"\\u6731\\u6d77\\u9896\",\"username\":\"hyzhu\",\"password\":\"1111aaaa!\",\"user_type\":\"1\"}', '10.4.1.45', '超级管理员', '1526001799', '1526001799');
INSERT INTO `repair_option_record` VALUES ('158', '新增管理人员', '/admin/user/add', null, '{\"user_nickname\":\"\\u51af\\u5174\\u6770\",\"username\":\"xjfeng\",\"password\":\"1111aaaa!\",\"user_type\":\"1\"}', '10.4.1.45', '超级管理员', '1526001820', '1526001820');
INSERT INTO `repair_option_record` VALUES ('159', '新增管理人员', '/admin/user/add', null, '{\"user_nickname\":\"\\u82cf\\u676d\",\"username\":\"suhang\",\"password\":\"1111aaaa\\uff01\",\"user_type\":\"1\"}', '10.4.1.45', '超级管理员', '1526001861', '1526001861');
INSERT INTO `repair_option_record` VALUES ('160', '新增管理人员', '/admin/user/add', null, '{\"user_nickname\":\"admin\",\"username\":\"xrqiu\",\"password\":\"1111aaaa\\uff01\",\"user_type\":\"1\"}', '10.4.1.45', '超级管理员', '1526001940', '1526001940');
INSERT INTO `repair_option_record` VALUES ('161', '删除管理人员', '/admin/user/delete', '48', '{\"id\":\"48\"}', '10.4.1.45', '超级管理员', '1526001954', '1526001954');
INSERT INTO `repair_option_record` VALUES ('162', '新增管理人员', '/admin/user/add', null, '{\"user_nickname\":\"\\u4ec7\\u6653\\u9510\",\"username\":\"xrqiu\",\"password\":\"1111aaaa\\uff01\",\"user_type\":\"1\"}', '10.4.1.45', '超级管理员', '1526001978', '1526001978');
INSERT INTO `repair_option_record` VALUES ('163', '新增管理人员', '/admin/user/add', null, '{\"user_nickname\":\"\\u674e\\u4f73\",\"username\":\"jiali\",\"password\":\"1111aaaa\\uff01\",\"user_type\":\"1\"}', '10.4.1.45', '超级管理员', '1526002002', '1526002002');
INSERT INTO `repair_option_record` VALUES ('164', '新增管理人员', '/admin/user/add', null, '{\"user_nickname\":\"\\u9648\\u745e\",\"username\":\"rchen1_16\",\"password\":\"1111aaaa!\",\"user_type\":\"1\"}', '10.4.1.45', '超级管理员', '1526002045', '1526002045');
INSERT INTO `repair_option_record` VALUES ('165', '新增管理人员', '/admin/user/add', null, '{\"user_nickname\":\"j-li\",\"username\":\"j-li\",\"password\":\"1111aaaa!\",\"user_type\":\"1\"}', '10.4.1.45', '超级管理员', '1526002064', '1526002064');
INSERT INTO `repair_option_record` VALUES ('166', '删除管理人员', '/admin/user/delete', '52', '{\"id\":\"52\"}', '10.4.1.45', '超级管理员', '1526002070', '1526002070');
INSERT INTO `repair_option_record` VALUES ('167', '新增管理人员', '/admin/user/add', null, '{\"user_nickname\":\"\\u674e\\u6770\",\"username\":\"j-li\",\"password\":\"1111aaaa!\",\"user_type\":\"1\"}', '10.4.1.45', '超级管理员', '1526002095', '1526002095');
INSERT INTO `repair_option_record` VALUES ('168', '新增管理人员', '/admin/user/add', null, '{\"user_nickname\":\"\\u6765\\u71c3\",\"username\":\"rlai\",\"password\":\"1111aaaa!\",\"user_type\":\"1\"}', '10.4.1.45', '超级管理员', '1526002125', '1526002125');
INSERT INTO `repair_option_record` VALUES ('169', '新增管理人员', '/admin/user/add', null, '{\"user_nickname\":\"\\u674e\\u5de5\",\"username\":\"ligang\",\"password\":\"1111llll\\uff01\",\"user_type\":\"2\"}', '10.4.1.45', '超级管理员', '1526002434', '1526002434');
INSERT INTO `repair_option_record` VALUES ('170', '重置密码', '/admin/user/reset', '55', '{\"id\":\"55\"}', '10.4.1.45', '超级管理员', '1526002477', '1526002477');
INSERT INTO `repair_option_record` VALUES ('171', '修改任务状态', '/admin/repair/start_task', '121', '{\"id\":\"121\"}', '10.4.1.45', '李工', '1526002504', '1526002504');
INSERT INTO `repair_option_record` VALUES ('172', '修改任务状态', '/admin/repair/end_task', null, '{\"type\":\"36\",\"message\":\"\\u60c5\\u51b5\\u5c5e\\u5b9e\\uff0c\\u5df2\\u7ecf\\u89e3\\u51b3\"}', '10.4.1.45', '李工', '1526002544', '1526002544');
INSERT INTO `repair_option_record` VALUES ('173', '修改任务状态', '/admin/repair/close_task', '121', '{\"id\":\"121\"}', '10.4.1.45', '赵俊松', '1526002564', '1526002564');
INSERT INTO `repair_option_record` VALUES ('174', '添加新维修任务', '/admin/repair/add_task', null, '{\"type\":\"28\",\"linkman\":\"\\u5f20\\u4e09\",\"linktel\":\"123124312312331\",\"address\":\"\\u660e\\u5fb7\\u9986\\u4e94\\u697c\",\"content\":\"\\u660e\\u5fb7\\u9986\\u4e94\\u697c\\u660', '10.4.1.45', '超级管理员', '1526003711', '1526003711');
INSERT INTO `repair_option_record` VALUES ('175', '修改任务状态', '/admin/repair/end_task', null, '{\"type\":\"35\",\"message\":\"\\u6d4b\\u8bd5\\u6570\\u636e\"}', '10.4.1.45', '超级管理员', '1526003733', '1526003733');
INSERT INTO `repair_option_record` VALUES ('176', '修改任务状态', '/admin/repair/close_task', '122', '{\"id\":\"122\"}', '10.4.1.45', '超级管理员', '1526003736', '1526003736');
INSERT INTO `repair_option_record` VALUES ('177', '添加新维修任务', '/admin/repair/add_task', null, '{\"type\":\"28\",\"linkman\":\"\\u8d75\\u4fca\\u677e\",\"linktel\":\"24092621\",\"address\":\"\\u660e\\u5fb7\\u9986\\u4e94\\u697c\",\"content\":\"\\u4e0a\\u5395\\u6240\\u6ca1\\u5e26\\u7eb8', '10.4.0.17', '超级管理员', '1526004989', '1526004989');
INSERT INTO `repair_option_record` VALUES ('178', '删除维修任务', '/admin/repair/delete_task', null, '{\"ids\":[\"123\"]}', '10.4.0.17', '超级管理员', '1526005191', '1526005191');
INSERT INTO `repair_option_record` VALUES ('179', '删除维修任务', '/admin/repair/delete_task', null, '{\"ids\":[\"125\",\"126\",\"127\"]}', '127.0.0.1', '超级管理员', '1526059213', '1526059213');
INSERT INTO `repair_option_record` VALUES ('180', '添加新维修任务', '/admin/repair/add_task', null, '{\"type\":\"28\",\"linkman\":\"dsadsadsadsadasd\",\"linktel\":\"188682711716\",\"campus\":\"\",\"building\":\"\",\"address\":\"\\u5317\\u6821\\u533a\\u531720\\u6821\\u533b\\u9662\",\"cont', '127.0.0.1', '超级管理员', '1526399545', '1526399545');
INSERT INTO `repair_option_record` VALUES ('181', '添加新维修任务', '/admin/repair/add_task', null, '{\"type\":\"28\",\"linkman\":\"dsadsadsadsadasd\",\"linktel\":\"188682711716\",\"campus\":\"\",\"building\":\"\",\"address\":\"\\u5317\\u6821\\u533a\\u531720\\u6821\\u533b\\u9662\",\"cont', '127.0.0.1', '超级管理员', '1526399692', '1526399692');
INSERT INTO `repair_option_record` VALUES ('182', '添加新维修任务', '/admin/repair/add_task', null, '{\"type\":\"28\",\"linkman\":\"dsadsadsadsadasd\",\"linktel\":\"188682711716\",\"campus\":\"\",\"building\":\"\",\"address\":\"\\u5317\\u6821\\u533a\\u531720\\u6821\\u533b\\u9662\",\"cont', '127.0.0.1', '超级管理员', '1526399866', '1526399866');
INSERT INTO `repair_option_record` VALUES ('183', '添加新维修任务', '/admin/repair/add_task', null, '{\"type\":\"28\",\"linkman\":\"dsadsadsadsadasd\",\"linktel\":\"188682711716\",\"campus\":\"\",\"building\":\"\",\"address\":\"\\u5317\\u6821\\u533a\\u531720\\u6821\\u533b\\u9662\",\"cont', '127.0.0.1', '超级管理员', '1526399928', '1526399928');
INSERT INTO `repair_option_record` VALUES ('184', '添加新维修任务', '/admin/repair/add_task', null, '{\"type\":\"28\",\"linkman\":\"dsadsadsadsadasd\",\"linktel\":\"188682711716\",\"campus\":\"\",\"building\":\"\",\"address\":\"\\u5317\\u6821\\u533a\\u531720\\u6821\\u533b\\u9662\",\"cont', '127.0.0.1', '超级管理员', '1526399943', '1526399943');
INSERT INTO `repair_option_record` VALUES ('185', '删除维修任务', '/admin/repair/delete_task', null, '{\"ids\":[\"128\",\"129\",\"130\",\"131\",\"132\"]}', '127.0.0.1', '超级管理员', '1526399957', '1526399957');
INSERT INTO `repair_option_record` VALUES ('186', '添加新维修任务', '/admin/repair/add_task', null, '{\"type\":\"28\",\"linkman\":\"\\u7684\\u6492 \",\"linktel\":\"\\u7684\\u6492\\u591a\\u6492\",\"campus\":\"\\u5317\\u6821\\u533a\",\"building\":\"\\u4e13\\u5bb6\\u697c\\u5317\\u697c\",\"addr', '127.0.0.1', '超级管理员', '1526399975', '1526399975');
INSERT INTO `repair_option_record` VALUES ('187', '添加新维修任务', '/admin/repair/add_task', null, '{\"type\":\"28\",\"linkman\":\"dss \",\"linktel\":\"2321321\",\"campus\":\"\\u5317\\u6821\\u533a\",\"building\":\"\\u4e13\\u5bb6\\u697c\\u5317\\u697c\",\"address\":\"\\u7684\\u6492\\u591a\\u', '127.0.0.1', '超级管理员', '1526400205', '1526400205');
INSERT INTO `repair_option_record` VALUES ('188', '新增管理人员', '/admin/user/add', null, '{\"user_nickname\":\"\\u6492\\u6253\\u7b97\",\"username\":\"222@qq.com\",\"password\":\"1\",\"user_type\":\"0\"}', '127.0.0.1', '超级管理员', '1526463563', '1526463563');
INSERT INTO `repair_option_record` VALUES ('189', '删除管理人员', '/admin/user/delete', '56', '{\"id\":\"56\"}', '127.0.0.1', '撒打算', '1526465643', '1526465643');

-- ----------------------------
-- Table structure for `repair_repair_list`
-- ----------------------------
DROP TABLE IF EXISTS `repair_repair_list`;
CREATE TABLE `repair_repair_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(100) NOT NULL,
  `linkman` varchar(100) NOT NULL,
  `linktel` varchar(100) NOT NULL,
  `user` varchar(100) NOT NULL,
  `statu` int(2) NOT NULL DEFAULT '0',
  `address` varchar(100) NOT NULL,
  `content` varchar(255) NOT NULL,
  `message` varchar(255) DEFAULT NULL,
  `grade` float DEFAULT NULL,
  `create_time` int(22) NOT NULL,
  `update_time` int(22) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=137 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of repair_repair_list
-- ----------------------------
INSERT INTO `repair_repair_list` VALUES ('114', '35', '赵俊松', '13821475541', 'js-zhao', '4', '宿舍楼', '十大', '特使完成', '5', '1515811504', '1525916504');
INSERT INTO `repair_repair_list` VALUES ('115', '35', 'dsadsadsadsadasd', '188682711716', 'hliu3_15', '4', '北20', '登不上', '', '5', '1525918331', '1525918331');
INSERT INTO `repair_repair_list` VALUES ('116', '35', 'dsa ', 'dsads', 'hlu3_15', '4', '的撒多撒', ' 啊', '', '5', '1525958190', '1525958190');
INSERT INTO `repair_repair_list` VALUES ('117', '35', 'fds', '的撒多撒', '  aaa', '4', '的撒_(:з」∠)_', '的撒多撒', '', '5', '1525967223', '1525969141');
INSERT INTO `repair_repair_list` VALUES ('118', '32', 'fds', '的撒多撒', '  aaa', '4', '的撒_(:з」∠)_', '防守打法鼎折覆餗', '有问题', '4', '1525967614', '1525969138');
INSERT INTO `repair_repair_list` VALUES ('119', '35', 'dsadsadsadsadasd', '188682711716', 'hliu3_15', '4', '北20', '嗯嗯', '', '5', '1525997518', '1525997661');
INSERT INTO `repair_repair_list` VALUES ('120', '35', 'dsadsadsadsadasd', '188682711716', 'hliu3_15', '4', '北20', '嗯嗯', '', '5', '1525997824', '1526055352');
INSERT INTO `repair_repair_list` VALUES ('121', '36', '陈瑞', '13072012526', 'rchen1_16', '4', '南十八223', '测试', '情况属实，已经解决', '5', '1526002482', '1526002577');
INSERT INTO `repair_repair_list` VALUES ('122', '35', '张三', '123124312312331', 'superadmin', '4', '明德馆五楼', '明德馆五楼明德馆五楼明德馆五楼', '测试数据', '5', '1526003711', '1526003711');
INSERT INTO `repair_repair_list` VALUES ('136', '28', 'fds', '的撒多撒', '  aaa', '0', '北校区-学生活动中心（学工部）-的撒_(:з」∠)_', 'fdsfdsf', null, null, '1526921228', '1526921228');
INSERT INTO `repair_repair_list` VALUES ('135', '23', 'dsadsadsadsadasd', '188682711716', 'hliu3_15', '0', '北校区-学生活动中心（学工部）-北20', 'dsadsad', null, null, '1526400274', '1526400274');
INSERT INTO `repair_repair_list` VALUES ('134', '28', 'dss ', '2321321', 'superadmin', '0', '北校区专家楼北楼的撒多撒', '的撒', null, null, '1526400205', '1526400205');
INSERT INTO `repair_repair_list` VALUES ('133', '28', '的撒 ', '的撒多撒', 'superadmin', '0', 'dsadsad', 'dsdasd', null, null, '1526399975', '1526399975');

-- ----------------------------
-- Table structure for `repair_repair_list_body`
-- ----------------------------
DROP TABLE IF EXISTS `repair_repair_list_body`;
CREATE TABLE `repair_repair_list_body` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `list_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `user` varchar(100) NOT NULL,
  `hasread` int(2) DEFAULT '0',
  `is_admin` int(2) DEFAULT '0',
  `create_time` int(22) DEFAULT NULL,
  `update_time` int(22) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=288 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of repair_repair_list_body
-- ----------------------------
INSERT INTO `repair_repair_list_body` VALUES ('20', '14', '登录不进去，提示密码错误，怎么办啊？', 'superadmin', '1', '0', '1524127275', '1524127275');
INSERT INTO `repair_repair_list_body` VALUES ('21', '14', '来明德馆五楼网管中心办理！', 'superadmin', '0', '1', '1524131281', '1524131281');
INSERT INTO `repair_repair_list_body` VALUES ('22', '14', '啊啊啊？', 'superadmin', '0', '1', '1524131294', '1524131294');
INSERT INTO `repair_repair_list_body` VALUES ('23', '14', '好的，我们收到了！', 'superadmin', '0', '1', '1524131339', '1524131339');
INSERT INTO `repair_repair_list_body` VALUES ('24', '15', '密码不正确，怎么修改', 'superadmin', '1', '0', '1524139968', '1524140025');
INSERT INTO `repair_repair_list_body` VALUES ('25', '14', 'enne ', 'superadmin', '0', '1', '1524148387', '1524148387');
INSERT INTO `repair_repair_list_body` VALUES ('26', '14', '哈哈哈 好的', 'superadmin', '0', '1', '1524152365', '1524152365');
INSERT INTO `repair_repair_list_body` VALUES ('27', '14', '嗯嗯', 'superadmin', '0', '1', '1524152410', '1524152410');
INSERT INTO `repair_repair_list_body` VALUES ('28', '15', '明德馆五楼！', 'superadmin', '0', '1', '1524152508', '1524152508');
INSERT INTO `repair_repair_list_body` VALUES ('29', '16', '\r\n        的撒萨达', 'superadmin', '1', '0', '1524152961', '1524153016');
INSERT INTO `repair_repair_list_body` VALUES ('30', '16', '嗯嗯知道啦', 'superadmin', '0', '1', '1524153025', '1524153025');
INSERT INTO `repair_repair_list_body` VALUES ('31', '16', '的撒多撒', 'superadmin', '1', '0', '1524156578', '1524156585');
INSERT INTO `repair_repair_list_body` VALUES ('32', '16', 'enenen', 'superadmin', '0', '1', '1524156591', '1524156591');
INSERT INTO `repair_repair_list_body` VALUES ('33', '14', '傻逼吗？', 'superadmin', '1', '0', '1524157010', '1524213076');
INSERT INTO `repair_repair_list_body` VALUES ('34', '16', '该问题以及被管理员关闭', 'superadmin', '0', '1', '1524157480', '1524157480');
INSERT INTO `repair_repair_list_body` VALUES ('35', '17', '\r\n        3213213', 'superadmin', '1', '0', '1524158068', '1524158079');
INSERT INTO `repair_repair_list_body` VALUES ('36', '17', 'dsdsadsa', 'superadmin', '0', '1', '1524158081', '1524158081');
INSERT INTO `repair_repair_list_body` VALUES ('37', '17', '的撒多撒', 'superadmin', '1', '0', '1524158090', '1524158098');
INSERT INTO `repair_repair_list_body` VALUES ('38', '18', '\r\n        cxzcxz', 'superadmin', '1', '0', '1524186267', '1524186275');
INSERT INTO `repair_repair_list_body` VALUES ('39', '18', '嗯嗯呢', 'superadmin', '0', '1', '1524186382', '1524186382');
INSERT INTO `repair_repair_list_body` VALUES ('40', '18', 'EEEEE', 'superadmin', '1', '0', '1524186983', '1524186992');
INSERT INTO `repair_repair_list_body` VALUES ('41', '18', '不错啊', 'superadmin', '0', '1', '1524187123', '1524187123');
INSERT INTO `repair_repair_list_body` VALUES ('42', '18', '\n        ', 'superadmin', '1', '0', '1524187288', '1524199246');
INSERT INTO `repair_repair_list_body` VALUES ('43', '14', '该问题以及被管理员关闭', 'superadmin', '0', '1', '1524213245', '1524213245');
INSERT INTO `repair_repair_list_body` VALUES ('44', '15', '该问题以及被维修人员关闭,附加留言的撒旦撒旦SAS', 'superadmin', '0', '1', '1524218887', '1524218887');
INSERT INTO `repair_repair_list_body` VALUES ('45', '16', '该问题以及被维修人员关闭,附加留言的撒大所多', 'superadmin', '0', '1', '1524218915', '1524218915');
INSERT INTO `repair_repair_list_body` VALUES ('46', '17', '该问题以及被维修人员关闭,附加留言对的', 'superadmin', '0', '1', '1524218923', '1524218923');
INSERT INTO `repair_repair_list_body` VALUES ('47', '18', '该问题以及被维修人员关闭,附加留言我要维修', 'superadmin', '0', '1', '1524218929', '1524218929');
INSERT INTO `repair_repair_list_body` VALUES ('48', '19', '\r\n        打算', 'superadmin', '1', '0', '1524219712', '1524220490');
INSERT INTO `repair_repair_list_body` VALUES ('49', '20', '\r\n        打算', 'superadmin', '0', '0', '1524219712', '1524219712');
INSERT INTO `repair_repair_list_body` VALUES ('50', '21', '\r\n        打算', 'superadmin', '0', '0', '1524219712', '1524219712');
INSERT INTO `repair_repair_list_body` VALUES ('51', '22', '\r\n        打算', 'superadmin', '0', '0', '1524219712', '1524219712');
INSERT INTO `repair_repair_list_body` VALUES ('52', '23', '\r\n        打算', 'superadmin', '0', '0', '1524219712', '1524219712');
INSERT INTO `repair_repair_list_body` VALUES ('53', '24', '\r\n        打算', 'superadmin', '0', '0', '1524219712', '1524219712');
INSERT INTO `repair_repair_list_body` VALUES ('54', '25', '\r\n        打算', 'superadmin', '0', '0', '1524219713', '1524219713');
INSERT INTO `repair_repair_list_body` VALUES ('55', '26', '\r\n        打算', 'superadmin', '0', '0', '1524219713', '1524219713');
INSERT INTO `repair_repair_list_body` VALUES ('56', '27', '\r\n        打算', 'superadmin', '0', '0', '1524219713', '1524219713');
INSERT INTO `repair_repair_list_body` VALUES ('57', '28', '\r\n        打算', 'superadmin', '0', '0', '1524219713', '1524219713');
INSERT INTO `repair_repair_list_body` VALUES ('58', '29', '\r\n        打算', 'superadmin', '0', '0', '1524219713', '1524219713');
INSERT INTO `repair_repair_list_body` VALUES ('59', '30', '\r\n        打算', 'superadmin', '0', '0', '1524219713', '1524219713');
INSERT INTO `repair_repair_list_body` VALUES ('60', '31', '\r\n        打算', 'superadmin', '0', '0', '1524220231', '1524220231');
INSERT INTO `repair_repair_list_body` VALUES ('61', '32', '\r\n        打算', 'superadmin', '0', '0', '1524220231', '1524220231');
INSERT INTO `repair_repair_list_body` VALUES ('62', '33', '\r\n        打算', 'superadmin', '0', '0', '1524220232', '1524220232');
INSERT INTO `repair_repair_list_body` VALUES ('63', '14', '该问题以及被维修人员关闭,附加留言完成啦', 'superadmin', '0', '1', '1524220450', '1524220450');
INSERT INTO `repair_repair_list_body` VALUES ('64', '15', '该问题以及被维修人员关闭,附加留言是撒', 'superadmin', '0', '1', '1524220479', '1524220479');
INSERT INTO `repair_repair_list_body` VALUES ('65', '19', '该问题以及被维修人员关闭,附加留言读的', 'superadmin', '0', '1', '1524220495', '1524220495');
INSERT INTO `repair_repair_list_body` VALUES ('66', '20', '该问题以及被维修人员关闭,附加留言发送到爱是是', 'superadmin', '0', '1', '1524220746', '1524220746');
INSERT INTO `repair_repair_list_body` VALUES ('67', '34', '\r\n        打算', 'superadmin', '1', '0', '1524226584', '1524227304');
INSERT INTO `repair_repair_list_body` VALUES ('68', '35', '的撒的撒', 'superadmin', '0', '0', '1524226639', '1524226639');
INSERT INTO `repair_repair_list_body` VALUES ('69', '36', '\r\n        打算 ', 'superadmin', '0', '0', '1524226702', '1524226702');
INSERT INTO `repair_repair_list_body` VALUES ('70', '37', '阿萨德 \r\n        ', 'superadmin', '0', '0', '1524226728', '1524226728');
INSERT INTO `repair_repair_list_body` VALUES ('71', '38', '\r\n        撒', 'superadmin', '0', '0', '1524226755', '1524226755');
INSERT INTO `repair_repair_list_body` VALUES ('72', '39', '打算', 'superadmin', '0', '0', '1524226799', '1524226799');
INSERT INTO `repair_repair_list_body` VALUES ('73', '40', '大声道三', 'superadmin', '0', '0', '1524226941', '1524226941');
INSERT INTO `repair_repair_list_body` VALUES ('74', '41', '的撒旦教按实际件大事 打算 ', 'superadmin', '0', '0', '1524226954', '1524226954');
INSERT INTO `repair_repair_list_body` VALUES ('75', '42', '	的撒旦教按实际件大事 打算	的撒旦教按实际件大事 打算	的撒旦教按实际件大事 打算	的撒旦教按实际件大事 打算	的撒旦教按实际件大事 打算	的撒旦教按实际件大事 打算	的撒旦教按实际件大事 打算	的撒旦教按实际件大事 打算	的撒旦教按实际件大事 打算	的撒旦教按实际件大事 打算	的撒旦教按实际件大事 打算	的撒旦教按实际件大事 打算	的撒旦教按实际件大事 打算', 'superadmin', '0', '0', '1524226968', '1524226968');
INSERT INTO `repair_repair_list_body` VALUES ('76', '21', '该问题以及被维修人员关闭,附加留言的撒撒旦撒撒旦', 'superadmin', '0', '1', '1524227097', '1524227097');
INSERT INTO `repair_repair_list_body` VALUES ('77', '22', '该问题以及被维修人员关闭,附加留言', 'superadmin', '0', '1', '1524227397', '1524227397');
INSERT INTO `repair_repair_list_body` VALUES ('78', '23', '该问题以及被维修人员关闭,附加留言', 'superadmin', '0', '1', '1524227479', '1524227479');
INSERT INTO `repair_repair_list_body` VALUES ('79', '24', '该问题以及被维修人员关闭,附加留言', 'superadmin', '0', '1', '1524227484', '1524227484');
INSERT INTO `repair_repair_list_body` VALUES ('80', '43', '萨达', 'superadmin', '0', '0', '1524229433', '1524229433');
INSERT INTO `repair_repair_list_body` VALUES ('81', '44', 'asdd ', 'superadmin', '0', '0', '1524229568', '1524229568');
INSERT INTO `repair_repair_list_body` VALUES ('82', '45', 'DSADSA', 'superadmin', '1', '0', '1524229773', '1524229972');
INSERT INTO `repair_repair_list_body` VALUES ('83', '46', 'fds', 'superadmin', '1', '0', '1524229859', '1524229976');
INSERT INTO `repair_repair_list_body` VALUES ('84', '47', '的撒', 'superadmin', '1', '0', '1524229962', '1524230337');
INSERT INTO `repair_repair_list_body` VALUES ('85', '46', '维修人员开始处理', 'superadmin', '0', '1', '1524230303', '1524230303');
INSERT INTO `repair_repair_list_body` VALUES ('86', '47', '维修人员开始处理', 'superadmin', '0', '1', '1524230334', '1524230334');
INSERT INTO `repair_repair_list_body` VALUES ('87', '47', '被维修人员处理完成,附加留言：处理完成', 'superadmin', '0', '1', '1524230393', '1524230393');
INSERT INTO `repair_repair_list_body` VALUES ('88', '47', '管理员关闭了该报修', 'superadmin', '0', '1', '1524230400', '1524230400');
INSERT INTO `repair_repair_list_body` VALUES ('89', '48', '的撒', 'superadmin', '1', '0', '1524230826', '1524231263');
INSERT INTO `repair_repair_list_body` VALUES ('90', '48', '被维修人员处理完成,附加留言：fds爱是', 'superadmin', '0', '1', '1524230885', '1524230885');
INSERT INTO `repair_repair_list_body` VALUES ('91', '48', '管理员关闭了该报修', '111@qq.com', '0', '1', '1524231169', '1524231169');
INSERT INTO `repair_repair_list_body` VALUES ('92', '49', 'dsa ', 'superadmin', '1', '0', '1524233274', '1524233405');
INSERT INTO `repair_repair_list_body` VALUES ('93', '49', '维修人员开始处理', 'superadmin', '0', '1', '1524233680', '1524233680');
INSERT INTO `repair_repair_list_body` VALUES ('94', '45', '被维修人员处理完成,附加留言：enne', 'superadmin', '0', '1', '1524233685', '1524233685');
INSERT INTO `repair_repair_list_body` VALUES ('95', '45', '管理员关闭了该报修', '111@qq.com', '0', '1', '1524233698', '1524233698');
INSERT INTO `repair_repair_list_body` VALUES ('96', '50', '的撒多', '111@qq.com', '0', '0', '1524235840', '1524235840');
INSERT INTO `repair_repair_list_body` VALUES ('97', '51', 'ds', 'superadmin', '0', '0', '1524240523', '1524240523');
INSERT INTO `repair_repair_list_body` VALUES ('98', '52', 'dsad', 'superadmin', '0', '0', '1524240551', '1524240551');
INSERT INTO `repair_repair_list_body` VALUES ('99', '53', 'dsad', '111@qq.com', '0', '0', '1524240932', '1524240932');
INSERT INTO `repair_repair_list_body` VALUES ('100', '54', 'dasd', '111@qq.com', '0', '0', '1524241242', '1524241242');
INSERT INTO `repair_repair_list_body` VALUES ('101', '55', '大', 'superadmin', '0', '0', '1524242537', '1524242537');
INSERT INTO `repair_repair_list_body` VALUES ('102', '55', '维修人员开始处理', 'superadmin', '0', '1', '1524245094', '1524245094');
INSERT INTO `repair_repair_list_body` VALUES ('103', '56', '\r\n        dsad', 'superadmin', '0', '0', '1524248801', '1524248801');
INSERT INTO `repair_repair_list_body` VALUES ('104', '57', '\r\n        dsad', '  aaa', '0', '0', '1524248864', '1524248864');
INSERT INTO `repair_repair_list_body` VALUES ('105', '57', '维修人员开始处理', 'superadmin', '0', '1', '1524249285', '1524249285');
INSERT INTO `repair_repair_list_body` VALUES ('106', '57', '被维修人员处理完成,附加留言：', 'superadmin', '0', '1', '1524249312', '1524249312');
INSERT INTO `repair_repair_list_body` VALUES ('107', '57', '管理员关闭了该报修', 'superadmin', '0', '1', '1524249328', '1524249328');
INSERT INTO `repair_repair_list_body` VALUES ('108', '58', 'dsadsad', 'superadmin', '0', '0', '1524280015', '1524280015');
INSERT INTO `repair_repair_list_body` VALUES ('109', '58', '被维修人员处理完成,附加留言：', 'superadmin', '0', '1', '1524280023', '1524280023');
INSERT INTO `repair_repair_list_body` VALUES ('110', '58', '管理员关闭了该报修', 'superadmin', '0', '1', '1524280027', '1524280027');
INSERT INTO `repair_repair_list_body` VALUES ('111', '59', '\r\n        dsad', 'dsa', '0', '0', '1524280100', '1524280100');
INSERT INTO `repair_repair_list_body` VALUES ('112', '60', '\r\n        dad', 'aaa', '0', '0', '1524287916', '1524287916');
INSERT INTO `repair_repair_list_body` VALUES ('113', '59', '被维修人员处理完成,附加留言：', 'superadmin', '0', '1', '1524287948', '1524287948');
INSERT INTO `repair_repair_list_body` VALUES ('114', '59', '管理员关闭了该报修', 'superadmin', '0', '1', '1524287956', '1524287956');
INSERT INTO `repair_repair_list_body` VALUES ('115', '60', '被维修人员处理完成,附加留言：', 'superadmin', '0', '1', '1524287968', '1524287968');
INSERT INTO `repair_repair_list_body` VALUES ('116', '60', '管理员关闭了该报修', 'superadmin', '0', '1', '1524287974', '1524287974');
INSERT INTO `repair_repair_list_body` VALUES ('117', '61', '\r\n        打算', 'aaa', '0', '0', '1524288252', '1524288252');
INSERT INTO `repair_repair_list_body` VALUES ('118', '61', '被维修人员处理完成,附加留言：', 'superadmin', '0', '1', '1524288260', '1524288260');
INSERT INTO `repair_repair_list_body` VALUES ('119', '61', '管理员关闭了该报修', 'superadmin', '0', '1', '1524288262', '1524288262');
INSERT INTO `repair_repair_list_body` VALUES ('120', '61', '报修人评价完成，评分为5分', 'superadmin', '0', '0', '1524288312', '1524288312');
INSERT INTO `repair_repair_list_body` VALUES ('121', '62', '\r\n        佛挡杀佛', 'aaa', '0', '0', '1524288467', '1524288467');
INSERT INTO `repair_repair_list_body` VALUES ('122', '62', '被维修人员处理完成,附加留言：', 'superadmin', '0', '1', '1524288475', '1524288475');
INSERT INTO `repair_repair_list_body` VALUES ('123', '62', '管理员关闭了该报修', 'superadmin', '0', '1', '1524288476', '1524288476');
INSERT INTO `repair_repair_list_body` VALUES ('124', '62', '报修人评价完成，评分为1分', 'superadmin', '0', '0', '1524288494', '1524288494');
INSERT INTO `repair_repair_list_body` VALUES ('125', '63', '\r\n        阿萨德', 'aaas', '0', '0', '1524406566', '1524406566');
INSERT INTO `repair_repair_list_body` VALUES ('126', '63', '被维修人员处理完成,附加留言：', 'superadmin', '0', '1', '1524406574', '1524406574');
INSERT INTO `repair_repair_list_body` VALUES ('127', '63', '管理员关闭了该报修', 'superadmin', '0', '1', '1524406576', '1524406576');
INSERT INTO `repair_repair_list_body` VALUES ('128', '63', '报修人评价完成，评分为5分', 'superadmin', '0', '0', '1524406606', '1524406606');
INSERT INTO `repair_repair_list_body` VALUES ('129', '64', '\r\n        阿萨德', 'aaas', '0', '0', '1524406700', '1524406700');
INSERT INTO `repair_repair_list_body` VALUES ('130', '64', '被维修人员处理完成,附加留言：', 'superadmin', '0', '1', '1524406707', '1524406707');
INSERT INTO `repair_repair_list_body` VALUES ('131', '64', '管理员关闭了该报修', 'superadmin', '0', '1', '1524406709', '1524406709');
INSERT INTO `repair_repair_list_body` VALUES ('132', '65', '\r\n        阿萨德', 'aaas', '0', '0', '1524406809', '1524406809');
INSERT INTO `repair_repair_list_body` VALUES ('133', '65', '被维修人员处理完成,附加留言：', 'superadmin', '0', '1', '1524406827', '1524406827');
INSERT INTO `repair_repair_list_body` VALUES ('134', '65', '管理员关闭了该报修', 'superadmin', '0', '1', '1524406967', '1524406967');
INSERT INTO `repair_repair_list_body` VALUES ('135', '66', '\r\n        阿萨德', 'aaas', '0', '0', '1524406969', '1524406969');
INSERT INTO `repair_repair_list_body` VALUES ('136', '66', '被维修人员处理完成,附加留言：的撒多', 'superadmin', '0', '1', '1524406974', '1524406974');
INSERT INTO `repair_repair_list_body` VALUES ('137', '66', '管理员关闭了该报修', 'superadmin', '0', '1', '1524407011', '1524407011');
INSERT INTO `repair_repair_list_body` VALUES ('138', '67', '大姐大所', 'superadmin', '0', '0', '1524547899', '1524547899');
INSERT INTO `repair_repair_list_body` VALUES ('139', '67', '维修人员开始处理', 'superadmin', '0', '1', '1524547913', '1524547913');
INSERT INTO `repair_repair_list_body` VALUES ('140', '68', '\r\n        dsad的撒sa', 'superadmin', '0', '0', '1524578633', '1524578633');
INSERT INTO `repair_repair_list_body` VALUES ('141', '58', '报修人评价完成，评分为5分', 'superadmin', '0', '0', '1524578636', '1524578636');
INSERT INTO `repair_repair_list_body` VALUES ('142', '67', '被维修人员处理完成,附加留言：大叔大婶', 'superadmin', '0', '1', '1524578652', '1524578652');
INSERT INTO `repair_repair_list_body` VALUES ('143', '67', '管理员关闭了该报修', 'superadmin', '0', '1', '1524578654', '1524578654');
INSERT INTO `repair_repair_list_body` VALUES ('144', '68', '被维修人员处理完成,附加留言：的撒多撒萨达', 'superadmin', '0', '1', '1524578658', '1524578658');
INSERT INTO `repair_repair_list_body` VALUES ('145', '68', '管理员关闭了该报修', 'superadmin', '0', '1', '1524578660', '1524578660');
INSERT INTO `repair_repair_list_body` VALUES ('146', '67', '报修人评价完成，评分为2分', 'superadmin', '0', '0', '1524578665', '1524578665');
INSERT INTO `repair_repair_list_body` VALUES ('147', '68', '报修人评价完成，评分为4分', 'superadmin', '0', '0', '1524578667', '1524578667');
INSERT INTO `repair_repair_list_body` VALUES ('148', '69', '怀疑网口坏了', 'superadmin', '0', '0', '1524623997', '1524623997');
INSERT INTO `repair_repair_list_body` VALUES ('149', '70', '的撒多撒的撒', 'superadmin', '0', '0', '1524624366', '1524624366');
INSERT INTO `repair_repair_list_body` VALUES ('150', '69', '被维修人员处理完成,附加留言：的撒多撒', 'superadmin', '0', '1', '1524624380', '1524624380');
INSERT INTO `repair_repair_list_body` VALUES ('151', '69', '管理员关闭了该报修', 'superadmin', '0', '1', '1524624382', '1524624382');
INSERT INTO `repair_repair_list_body` VALUES ('152', '70', '被维修人员处理完成,附加留言：的撒多撒', 'superadmin', '0', '1', '1524624386', '1524624386');
INSERT INTO `repair_repair_list_body` VALUES ('153', '70', '管理员关闭了该报修', 'superadmin', '0', '1', '1524624388', '1524624388');
INSERT INTO `repair_repair_list_body` VALUES ('154', '70', '报修人评价完成，评分为5分', 'superadmin', '0', '0', '1524624394', '1524624394');
INSERT INTO `repair_repair_list_body` VALUES ('155', '69', '报修人评价完成，评分为5分', 'superadmin', '0', '0', '1524624396', '1524624396');
INSERT INTO `repair_repair_list_body` VALUES ('156', '71', '路由器坏了', 'asd', '0', '0', '1524707943', '1524707943');
INSERT INTO `repair_repair_list_body` VALUES ('157', '71', '维修人员开始处理', 'superadmin', '0', '1', '1524707965', '1524707965');
INSERT INTO `repair_repair_list_body` VALUES ('158', '72', '路由器坏了', 'hliu3_15', '0', '0', '1524709351', '1524709351');
INSERT INTO `repair_repair_list_body` VALUES ('159', '73', 'dsd', 'hliu3_15', '0', '0', '1524709367', '1524709367');
INSERT INTO `repair_repair_list_body` VALUES ('160', '74', 'dsd', 'hliu3_15', '0', '0', '1524709376', '1524709376');
INSERT INTO `repair_repair_list_body` VALUES ('161', '75', 'dsd', 'hliu3_15', '0', '0', '1524709609', '1524709609');
INSERT INTO `repair_repair_list_body` VALUES ('162', '76', 'dsd', 'hliu3_15', '0', '0', '1524709657', '1524709657');
INSERT INTO `repair_repair_list_body` VALUES ('163', '77', 'dsd', 'hliu3_15', '0', '0', '1524709708', '1524709708');
INSERT INTO `repair_repair_list_body` VALUES ('164', '78', 'dsd', 'hliu3_15', '0', '0', '1524709724', '1524709724');
INSERT INTO `repair_repair_list_body` VALUES ('165', '79', 'dsd', 'hliu3_15', '0', '0', '1524709751', '1524709751');
INSERT INTO `repair_repair_list_body` VALUES ('166', '80', 'dsd', 'hliu3_15', '0', '0', '1524709858', '1524709858');
INSERT INTO `repair_repair_list_body` VALUES ('167', '81', 'dsd', 'hliu3_15', '0', '0', '1524709879', '1524709879');
INSERT INTO `repair_repair_list_body` VALUES ('168', '82', 'dsd', 'hliu3_15', '0', '0', '1524709937', '1524709937');
INSERT INTO `repair_repair_list_body` VALUES ('169', '83', 'dsd', 'hliu3_15', '0', '0', '1524709937', '1524709937');
INSERT INTO `repair_repair_list_body` VALUES ('170', '84', 'dsd', 'hliu3_15', '0', '0', '1524709994', '1524709994');
INSERT INTO `repair_repair_list_body` VALUES ('171', '85', 'dsd', 'hliu3_15', '0', '0', '1524710062', '1524710062');
INSERT INTO `repair_repair_list_body` VALUES ('172', '86', 'dsadsda', 'hliu3_15', '0', '0', '1524710111', '1524710111');
INSERT INTO `repair_repair_list_body` VALUES ('173', '87', 'dsadsda', 'hliu3_15', '0', '0', '1524710163', '1524710163');
INSERT INTO `repair_repair_list_body` VALUES ('174', '88', 'dsa', 'ylli1_15', '0', '0', '1524710189', '1524710189');
INSERT INTO `repair_repair_list_body` VALUES ('175', '89', 'dsa', 'ylli1_15', '0', '0', '1524710194', '1524710194');
INSERT INTO `repair_repair_list_body` VALUES ('176', '90', 'dsa', 'ylli1_15', '0', '0', '1524710230', '1524710230');
INSERT INTO `repair_repair_list_body` VALUES ('177', '91', 'dsa', 'ylli1_15', '0', '0', '1524710251', '1524710251');
INSERT INTO `repair_repair_list_body` VALUES ('178', '92', 'dsa', 'ylli1_15', '0', '0', '1524710292', '1524710292');
INSERT INTO `repair_repair_list_body` VALUES ('179', '93', 'dsa', 'ylli1_15', '0', '0', '1524710317', '1524710317');
INSERT INTO `repair_repair_list_body` VALUES ('180', '94', 'dsa', 'ylli1_15', '0', '0', '1524710361', '1524710361');
INSERT INTO `repair_repair_list_body` VALUES ('181', '95', 'dsa', 'ylli1_15', '0', '0', '1524710375', '1524710375');
INSERT INTO `repair_repair_list_body` VALUES ('182', '96', 'dsadsa', 'ylli1_15', '0', '0', '1524712439', '1524712439');
INSERT INTO `repair_repair_list_body` VALUES ('183', '92', '被维修人员处理完成,附加留言：dsadasd', 'superadmin', '0', '1', '1524712809', '1524712809');
INSERT INTO `repair_repair_list_body` VALUES ('184', '92', '管理员关闭了该报修', 'superadmin', '0', '1', '1524713702', '1524713702');
INSERT INTO `repair_repair_list_body` VALUES ('185', '97', 'dsadsads', 'ylli1_15', '0', '0', '1524713812', '1524713812');
INSERT INTO `repair_repair_list_body` VALUES ('186', '92', '报修人评价完成，评分为5分', 'superadmin', '0', '0', '1524720399', '1524720399');
INSERT INTO `repair_repair_list_body` VALUES ('187', '98', '的撒多撒的撒', 'ylli1_15', '0', '0', '1524720447', '1524720447');
INSERT INTO `repair_repair_list_body` VALUES ('188', '99', '的撒多撒', 'superadmin', '0', '0', '1524721799', '1524721799');
INSERT INTO `repair_repair_list_body` VALUES ('189', '99', '维修人员开始处理', 'superadmin', '0', '1', '1524721810', '1524721810');
INSERT INTO `repair_repair_list_body` VALUES ('190', '99', '被维修人员处理完成,附加留言：', 'superadmin', '0', '1', '1524721814', '1524721814');
INSERT INTO `repair_repair_list_body` VALUES ('191', '99', '管理员关闭了该报修', 'superadmin', '0', '1', '1524721816', '1524721816');
INSERT INTO `repair_repair_list_body` VALUES ('192', '100', 'dsadasd', 'superadmin', '0', '0', '1524722341', '1524722341');
INSERT INTO `repair_repair_list_body` VALUES ('193', '100', '维修人员开始处理', 'superadmin', '0', '1', '1524722356', '1524722356');
INSERT INTO `repair_repair_list_body` VALUES ('194', '100', '被维修人员处理完成,附加留言：', 'superadmin', '0', '1', '1524722359', '1524722359');
INSERT INTO `repair_repair_list_body` VALUES ('195', '100', '管理员关闭了该报修', 'superadmin', '0', '1', '1524722363', '1524722363');
INSERT INTO `repair_repair_list_body` VALUES ('196', '101', 'dsadasd', 'superadmin', '0', '0', '1524722435', '1524722435');
INSERT INTO `repair_repair_list_body` VALUES ('197', '102', 'sadsa', 'superadmin', '0', '0', '1524722441', '1524722441');
INSERT INTO `repair_repair_list_body` VALUES ('198', '101', '被维修人员处理完成,附加留言：', 'superadmin', '0', '1', '1524722447', '1524722447');
INSERT INTO `repair_repair_list_body` VALUES ('199', '102', '被维修人员处理完成,附加留言：', 'superadmin', '0', '1', '1524722449', '1524722449');
INSERT INTO `repair_repair_list_body` VALUES ('200', '101', '管理员关闭了该报修', 'superadmin', '0', '1', '1524722450', '1524722450');
INSERT INTO `repair_repair_list_body` VALUES ('201', '102', '管理员关闭了该报修', 'superadmin', '0', '1', '1524722451', '1524722451');
INSERT INTO `repair_repair_list_body` VALUES ('202', '103', 'g的饭否嘀咕', 'hliu3_15', '0', '0', '1524722755', '1524722755');
INSERT INTO `repair_repair_list_body` VALUES ('203', '103', '被维修人员处理完成,附加留言：', 'superadmin', '0', '1', '1524722764', '1524722764');
INSERT INTO `repair_repair_list_body` VALUES ('204', '103', '管理员关闭了该报修', 'superadmin', '0', '1', '1524722765', '1524722765');
INSERT INTO `repair_repair_list_body` VALUES ('205', '103', '报修人评价完成，评分为5分', 'superadmin', '0', '0', '1524722770', '1524722770');
INSERT INTO `repair_repair_list_body` VALUES ('206', '104', '的撒多爱是', 'superadmin', '0', '0', '1524722802', '1524722802');
INSERT INTO `repair_repair_list_body` VALUES ('207', '105', '路由器坏了', 'mke_15', '0', '0', '1524724499', '1524724499');
INSERT INTO `repair_repair_list_body` VALUES ('208', '106', '路由器坏了', 'mke_15', '0', '0', '1524724847', '1524724847');
INSERT INTO `repair_repair_list_body` VALUES ('209', '107', 'dsadsa', 'hliu3_15', '0', '0', '1524751473', '1524751473');
INSERT INTO `repair_repair_list_body` VALUES ('210', '107', '被维修人员处理完成,附加留言：', 'superadmin', '0', '1', '1524751481', '1524751481');
INSERT INTO `repair_repair_list_body` VALUES ('211', '106', '被维修人员处理完成,附加留言：dsa', 'superadmin', '0', '1', '1524751486', '1524751486');
INSERT INTO `repair_repair_list_body` VALUES ('212', '105', '被维修人员处理完成,附加留言：', 'superadmin', '0', '1', '1524751490', '1524751490');
INSERT INTO `repair_repair_list_body` VALUES ('213', '104', '被维修人员处理完成,附加留言：fdsfd', 'superadmin', '0', '1', '1524751493', '1524751493');
INSERT INTO `repair_repair_list_body` VALUES ('214', '107', '管理员关闭了该报修', 'superadmin', '0', '1', '1524751494', '1524751494');
INSERT INTO `repair_repair_list_body` VALUES ('215', '106', '管理员关闭了该报修', 'superadmin', '0', '1', '1524751495', '1524751495');
INSERT INTO `repair_repair_list_body` VALUES ('216', '105', '管理员关闭了该报修', 'superadmin', '0', '1', '1524751496', '1524751496');
INSERT INTO `repair_repair_list_body` VALUES ('217', '104', '管理员关闭了该报修', 'superadmin', '0', '1', '1524751496', '1524751496');
INSERT INTO `repair_repair_list_body` VALUES ('218', '107', '报修人评价完成，评分为4分', 'superadmin', '0', '0', '1524751504', '1524751504');
INSERT INTO `repair_repair_list_body` VALUES ('219', '108', 'dsadsa', 'hliu3_15', '0', '0', '1524752186', '1524752186');
INSERT INTO `repair_repair_list_body` VALUES ('220', '108', '被维修人员处理完成,附加留言：密码忘记了', 'superadmin', '0', '1', '1524752674', '1524752674');
INSERT INTO `repair_repair_list_body` VALUES ('221', '108', '管理员关闭了该报修', 'superadmin', '0', '1', '1524752676', '1524752676');
INSERT INTO `repair_repair_list_body` VALUES ('222', '108', '报修人评价完成，评分为1分', 'superadmin', '0', '0', '1524752698', '1524752698');
INSERT INTO `repair_repair_list_body` VALUES ('223', '109', '网口坏了', 'hliu3_15', '0', '0', '1524798670', '1524798670');
INSERT INTO `repair_repair_list_body` VALUES ('224', '110', 'dnndndnd', 'hliu3_15', '0', '0', '1524799356', '1524799356');
INSERT INTO `repair_repair_list_body` VALUES ('225', '111', '&lt;script&gt;alert(2)&lt;/script&gt;', 'ylli1_15', '0', '0', '1524799579', '1524799579');
INSERT INTO `repair_repair_list_body` VALUES ('226', '110', '被维修人员处理完成,附加留言：dsa', '222@qq.com', '0', '1', '1525315298', '1525315298');
INSERT INTO `repair_repair_list_body` VALUES ('227', '110', '管理员关闭了该报修', 'superadmin', '0', '1', '1525315316', '1525315316');
INSERT INTO `repair_repair_list_body` VALUES ('228', '109', '维修人员开始处理', 'superadmin', '0', '1', '1525914312', '1525914312');
INSERT INTO `repair_repair_list_body` VALUES ('229', '112', '密码修改不成功', 'js-zhao', '0', '0', '1525914372', '1525914372');
INSERT INTO `repair_repair_list_body` VALUES ('230', '112', '维修人员开始处理', 'superadmin', '0', '1', '1525914438', '1525914438');
INSERT INTO `repair_repair_list_body` VALUES ('231', '112', '被维修人员处理完成,附加留言：已经解决，需要定期更换密码，密码过期了', 'superadmin', '0', '1', '1525914470', '1525914470');
INSERT INTO `repair_repair_list_body` VALUES ('232', '112', '管理员关闭了该报修', 'superadmin', '0', '1', '1525914505', '1525914505');
INSERT INTO `repair_repair_list_body` VALUES ('233', '113', '大时代大时代大时代大时代大时代大时代大时代大时代大时代大时代大时代大时代大时代大时代大时代大时代大时代大时代大时代大时代大时代大时代大时代大时代大时代大时代大时代大时代大时代大时代大时代大时代大时代大时代大时代大时代大时代大时代大时代大时代大时代大时代大时代大时代大时代大时代大时代大时代大时代大时代大时代大时代大时代大时代大时代大时代大时代大时代大时代大时代大时代大时代大时代大时代大时代大时代大时代大时代大时代大时代大时代对方水电费是对方水电费是对方水电费是对方水电费是对方水电费是对方水电费是对方水电费是对方水电费是对方水电费是对方水电费是对方水电费是对方水电费是对方水电费是对方水电费是对方水电费是对方水电费是对方水电费是对方水电费是对方水电费是对方水电费是对方水电费是对方水电费是对方水电费是对方水电费是对方水电费是对方水电费是对方水电费是对方水电费是对方水电费是对方水电费是对方水电费是对方水电费是对方水电费是对方水电费是对方水电费是对方水电费是对方水电费是对方水电费是对方水电费是对方水电费是对方水电费是对方水电费是对方水电费是对方水电费是对方水电费是对方水电费是对方水电费是对方水电费是对方水电费是对方水电费是对方水电费是对方水电费是对方水电费是对方水电费是对方水电费是对方水电费是对方水电费是对方水电费是对方水电费是对方水电费是对方水电费是对方水电费是对方水电费是对方水电费是对方水电费是对方水电费是对方水电费是对方水电费是对方水电费是', 'js-zhao', '0', '0', '1525916021', '1525916021');
INSERT INTO `repair_repair_list_body` VALUES ('234', '113', '维修人员开始处理', 'js-zhao', '0', '1', '1525916323', '1525916323');
INSERT INTO `repair_repair_list_body` VALUES ('235', '113', '被维修人员处理完成,附加留言：测试完成', 'js-zhao', '0', '1', '1525916392', '1525916392');
INSERT INTO `repair_repair_list_body` VALUES ('236', '113', '管理员关闭了该报修', 'jtgao', '0', '1', '1525916438', '1525916438');
INSERT INTO `repair_repair_list_body` VALUES ('237', '114', '十大', 'js-zhao', '0', '0', '1525916504', '1525916504');
INSERT INTO `repair_repair_list_body` VALUES ('238', '114', '被维修人员处理完成,附加留言：特使完成', 'js-zhao', '0', '1', '1525916568', '1525916568');
INSERT INTO `repair_repair_list_body` VALUES ('239', '109', '被维修人员处理完成,附加留言：', 'superadmin', '0', '1', '1525918106', '1525918106');
INSERT INTO `repair_repair_list_body` VALUES ('240', '114', '管理员关闭了该报修', 'superadmin', '0', '1', '1525918108', '1525918108');
INSERT INTO `repair_repair_list_body` VALUES ('241', '109', '管理员关闭了该报修', 'superadmin', '0', '1', '1525918109', '1525918109');
INSERT INTO `repair_repair_list_body` VALUES ('242', '115', '登不上', 'hliu3_15', '0', '0', '1525918331', '1525918331');
INSERT INTO `repair_repair_list_body` VALUES ('243', '115', '被维修人员处理完成,附加留言：', 'superadmin', '0', '1', '1525918348', '1525918348');
INSERT INTO `repair_repair_list_body` VALUES ('244', '115', '管理员关闭了该报修', 'superadmin', '0', '1', '1525918371', '1525918371');
INSERT INTO `repair_repair_list_body` VALUES ('245', '116', ' 啊', 'hlu3_15', '0', '0', '1525958190', '1525958190');
INSERT INTO `repair_repair_list_body` VALUES ('246', '116', '被维修人员处理完成,附加留言：', 'liuhe', '0', '1', '1525958393', '1525958393');
INSERT INTO `repair_repair_list_body` VALUES ('247', '117', '的撒多撒', '  aaa', '0', '0', '1525967223', '1525967223');
INSERT INTO `repair_repair_list_body` VALUES ('248', '117', '被维修人员处理完成,附加留言：', 'liuhe', '0', '1', '1525967279', '1525967279');
INSERT INTO `repair_repair_list_body` VALUES ('249', '116', '管理员关闭了该报修', 'liuhe', '0', '1', '1525967372', '1525967372');
INSERT INTO `repair_repair_list_body` VALUES ('250', '117', '管理员关闭了该报修', 'liuhe', '0', '1', '1525967385', '1525967385');
INSERT INTO `repair_repair_list_body` VALUES ('251', '117', '报修人评价完成，评分为5分', '  aaa', '0', '0', '1525967441', '1525967441');
INSERT INTO `repair_repair_list_body` VALUES ('252', '118', '防守打法鼎折覆餗', '  aaa', '0', '0', '1525967614', '1525967614');
INSERT INTO `repair_repair_list_body` VALUES ('253', '118', '维修人员开始处理', 'liuhe', '0', '1', '1525967649', '1525967649');
INSERT INTO `repair_repair_list_body` VALUES ('254', '118', '被维修人员处理完成,附加留言：有问题', 'liuhe', '0', '1', '1525967658', '1525967658');
INSERT INTO `repair_repair_list_body` VALUES ('255', '118', '管理员关闭了该报修', 'liuhe', '0', '1', '1525967684', '1525967684');
INSERT INTO `repair_repair_list_body` VALUES ('256', '118', '报修人评价完成，评分为4分', '  aaa', '0', '0', '1525969138', '1525969138');
INSERT INTO `repair_repair_list_body` VALUES ('257', '117', '报修人评价完成，评分为5分', '  aaa', '0', '0', '1525969141', '1525969141');
INSERT INTO `repair_repair_list_body` VALUES ('258', '119', '嗯嗯', 'hliu3_15', '0', '0', '1525997518', '1525997518');
INSERT INTO `repair_repair_list_body` VALUES ('259', '119', '被维修人员处理完成,附加留言：', 'liuhe', '0', '1', '1525997617', '1525997617');
INSERT INTO `repair_repair_list_body` VALUES ('260', '119', '管理员关闭了该报修', 'liuhe', '0', '1', '1525997627', '1525997627');
INSERT INTO `repair_repair_list_body` VALUES ('261', '119', '报修人评价完成，评分为5分', 'hliu3_15', '0', '0', '1525997661', '1525997661');
INSERT INTO `repair_repair_list_body` VALUES ('262', '120', '嗯嗯', 'hliu3_15', '0', '0', '1525997824', '1525997824');
INSERT INTO `repair_repair_list_body` VALUES ('263', '120', '被维修人员处理完成,附加留言：', 'liuhe', '0', '1', '1525997836', '1525997836');
INSERT INTO `repair_repair_list_body` VALUES ('264', '120', '管理员关闭了该报修', 'liuhe', '0', '1', '1525997839', '1525997839');
INSERT INTO `repair_repair_list_body` VALUES ('265', '121', '测试', 'rchen1_16', '0', '0', '1526002482', '1526002482');
INSERT INTO `repair_repair_list_body` VALUES ('266', '121', '维修人员开始处理', 'ligang', '0', '1', '1526002504', '1526002504');
INSERT INTO `repair_repair_list_body` VALUES ('267', '121', '被维修人员处理完成,附加留言：情况属实，已经解决', 'ligang', '0', '1', '1526002544', '1526002544');
INSERT INTO `repair_repair_list_body` VALUES ('268', '121', '管理员关闭了该报修', 'js-zhao', '0', '1', '1526002564', '1526002564');
INSERT INTO `repair_repair_list_body` VALUES ('269', '121', '报修人评价完成，评分为5分', 'rchen1_16', '0', '0', '1526002577', '1526002577');
INSERT INTO `repair_repair_list_body` VALUES ('270', '122', '明德馆五楼明德馆五楼明德馆五楼', 'superadmin', '0', '0', '1526003711', '1526003711');
INSERT INTO `repair_repair_list_body` VALUES ('271', '122', '被维修人员处理完成,附加留言：测试数据', 'superadmin', '0', '1', '1526003733', '1526003733');
INSERT INTO `repair_repair_list_body` VALUES ('272', '122', '管理员关闭了该报修', 'superadmin', '0', '1', '1526003736', '1526003736');
INSERT INTO `repair_repair_list_body` VALUES ('273', '123', '上厕所没带纸', 'superadmin', '0', '0', '1526004989', '1526004989');
INSERT INTO `repair_repair_list_body` VALUES ('274', '120', '报修人评价完成，评分为5分', 'hliu3_15', '0', '0', '1526055352', '1526055352');
INSERT INTO `repair_repair_list_body` VALUES ('275', '124', '的撒多', 'hliu3_15', '0', '0', '1526057692', '1526057692');
INSERT INTO `repair_repair_list_body` VALUES ('276', '125', '大叔大叔大叔大所大所', 'hliu3_15', '0', '0', '1526057858', '1526057858');
INSERT INTO `repair_repair_list_body` VALUES ('277', '126', '萨达撒多', 'hliu3_15', '0', '0', '1526058378', '1526058378');
INSERT INTO `repair_repair_list_body` VALUES ('278', '127', 'fdsf', 'hliu3_15', '0', '0', '1526058816', '1526058816');
INSERT INTO `repair_repair_list_body` VALUES ('279', '128', 'fgf', 'superadmin', '0', '0', '1526399545', '1526399545');
INSERT INTO `repair_repair_list_body` VALUES ('280', '129', 'dsa的撒多撒', 'superadmin', '0', '0', '1526399692', '1526399692');
INSERT INTO `repair_repair_list_body` VALUES ('281', '130', '的撒大所', 'superadmin', '0', '0', '1526399866', '1526399866');
INSERT INTO `repair_repair_list_body` VALUES ('282', '131', '的撒大所的撒', 'superadmin', '0', '0', '1526399929', '1526399929');
INSERT INTO `repair_repair_list_body` VALUES ('283', '132', '规范地方', 'superadmin', '0', '0', '1526399943', '1526399943');
INSERT INTO `repair_repair_list_body` VALUES ('284', '133', 'dsdasd', 'superadmin', '0', '0', '1526399975', '1526399975');
INSERT INTO `repair_repair_list_body` VALUES ('285', '134', '的撒', 'superadmin', '0', '0', '1526400206', '1526400206');
INSERT INTO `repair_repair_list_body` VALUES ('286', '135', 'dsadsad', 'hliu3_15', '0', '0', '1526400274', '1526400274');
INSERT INTO `repair_repair_list_body` VALUES ('287', '136', 'fdsfdsf', '  aaa', '0', '0', '1526921228', '1526921228');

-- ----------------------------
-- Table structure for `repair_repair_type`
-- ----------------------------
DROP TABLE IF EXISTS `repair_repair_type`;
CREATE TABLE `repair_repair_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `type` int(2) NOT NULL,
  `hide` int(2) NOT NULL DEFAULT '0',
  `create_time` int(22) NOT NULL,
  `update_time` int(22) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of repair_repair_type
-- ----------------------------
INSERT INTO `repair_repair_type` VALUES ('29', '费用问题', '1', '1', '1524069062', '1524069062');
INSERT INTO `repair_repair_type` VALUES ('28', '账号问题', '1', '0', '1524069045', '1524069045');
INSERT INTO `repair_repair_type` VALUES ('18', '的撒多撒的撒多的撒多', '0', '1', '1524024715', '1524024715');
INSERT INTO `repair_repair_type` VALUES ('27', '不按时上门', '1', '1', '1524069039', '1524069039');
INSERT INTO `repair_repair_type` VALUES ('23', '密码问题', '1', '0', '1524068991', '1524068991');
INSERT INTO `repair_repair_type` VALUES ('24', '网络不通', '1', '0', '1524069010', '1524069010');
INSERT INTO `repair_repair_type` VALUES ('25', '网络速度慢', '1', '1', '1524069016', '1524069016');
INSERT INTO `repair_repair_type` VALUES ('26', '开通滞后', '1', '1', '1524069032', '1524069032');
INSERT INTO `repair_repair_type` VALUES ('22', '的撒大所的撒', '0', '1', '1524049774', '1524049774');
INSERT INTO `repair_repair_type` VALUES ('30', '密码问题', '1', '1', '1524069538', '1524069538');
INSERT INTO `repair_repair_type` VALUES ('31', '密码问题', '0', '0', '1524152626', '1524152626');
INSERT INTO `repair_repair_type` VALUES ('32', '其他问题', '0', '0', '1524152631', '1524152631');
INSERT INTO `repair_repair_type` VALUES ('33', '啊啊啊', '1', '1', '1524242642', '1524242642');
INSERT INTO `repair_repair_type` VALUES ('34', '萨达撒多', '1', '1', '1524242657', '1524242657');
INSERT INTO `repair_repair_type` VALUES ('35', '账号问题', '0', '0', '1524406685', '1524406685');
INSERT INTO `repair_repair_type` VALUES ('36', '路由器问题', '0', '0', '1524406694', '1524406694');
INSERT INTO `repair_repair_type` VALUES ('37', '宿舍线路问题', '1', '0', '1525914087', '1525914087');
INSERT INTO `repair_repair_type` VALUES ('38', '接入设备问题', '1', '0', '1525914107', '1525914107');
INSERT INTO `repair_repair_type` VALUES ('39', '学校线路问题', '1', '0', '1525914118', '1525914118');

-- ----------------------------
-- Table structure for `repair_user`
-- ----------------------------
DROP TABLE IF EXISTS `repair_user`;
CREATE TABLE `repair_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `linkman` varchar(100) DEFAULT NULL,
  `linktel` varchar(100) DEFAULT NULL,
  `building` varchar(255) DEFAULT NULL,
  `campus` varchar(255) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `create_time` int(12) DEFAULT NULL,
  `update_time` int(12) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of repair_user
-- ----------------------------
INSERT INTO `repair_user` VALUES ('1', 'hliu3_15', 'dsadsadsadsadasd', '188682711716', '学生活动中心（学工部）', '北校区', '北20', null, '1526400274');
INSERT INTO `repair_user` VALUES ('2', 'ylli1_15', 'dsad', 'dsad', null, null, 'dsadsa', null, '1524799579');
INSERT INTO `repair_user` VALUES ('3', 'js-zhao', '赵俊松', '13821475541', null, null, '宿舍楼', null, '1525916504');
INSERT INTO `repair_user` VALUES ('4', 'hyzhu', null, null, null, null, null, null, null);
INSERT INTO `repair_user` VALUES ('5', 'mke_15', '柯明', '15222513573', null, null, '北20-403', null, '1524724847');
INSERT INTO `repair_user` VALUES ('6', 'superadmin', '', null, null, null, null, null, null);
INSERT INTO `repair_user` VALUES ('7', 'xjzhao_15', null, null, null, null, null, null, null);
INSERT INTO `repair_user` VALUES ('8', 'xdjn_15', null, null, null, null, null, null, null);
INSERT INTO `repair_user` VALUES ('9', 'xwang8_15', null, null, null, null, null, null, null);
INSERT INTO `repair_user` VALUES ('10', 'gfyan_15', null, null, null, null, null, null, null);
INSERT INTO `repair_user` VALUES ('11', 'xdjin_15', null, null, null, null, null, null, null);
INSERT INTO `repair_user` VALUES ('12', 'aaaa', null, null, null, null, null, null, null);
INSERT INTO `repair_user` VALUES ('13', 'xjfeng', null, null, null, null, null, null, null);
INSERT INTO `repair_user` VALUES ('14', 'hlu3_15', 'dsa ', 'dsads', null, null, '的撒多撒', null, '1525958190');
INSERT INTO `repair_user` VALUES ('16', '  aaa', 'fds', '的撒多撒', '学生活动中心（学工部）', '北校区', '的撒_(:з」∠)_', null, '1526921228');
INSERT INTO `repair_user` VALUES ('17', 'rchen1_16', '陈瑞', '13072012526', null, null, '南十八223', null, '1526002482');
INSERT INTO `repair_user` VALUES ('18', 'a', null, null, null, null, null, null, null);
