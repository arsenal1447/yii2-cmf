/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : yii

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2016-08-04 16:16:44
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `yii2cmf_admin_log`
-- ----------------------------
DROP TABLE IF EXISTS `yii2cmf_admin_log`;
CREATE TABLE `yii2cmf_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `route` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `created_at` int(10) NOT NULL DEFAULT '0',
  `user_id` int(10) NOT NULL DEFAULT '0',
  `ip` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yii2cmf_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for `yii2cmf_area`
-- ----------------------------
DROP TABLE IF EXISTS `yii2cmf_area`;
CREATE TABLE `yii2cmf_area` (
  `area_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `blocks` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`area_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of yii2cmf_area
-- ----------------------------
INSERT INTO `yii2cmf_area` VALUES ('1', '首页头部', 'index-header', 'default', '');
INSERT INTO `yii2cmf_area` VALUES ('3', '侧边栏', 'sidebar', '侧边栏', '');

-- ----------------------------
-- Table structure for `yii2cmf_area_block`
-- ----------------------------
DROP TABLE IF EXISTS `yii2cmf_area_block`;
CREATE TABLE `yii2cmf_area_block` (
  `block_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `widget` text COLLATE utf8_unicode_ci,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `config` text COLLATE utf8_unicode_ci,
  `template` text COLLATE utf8_unicode_ci,
  `cache` int(11) NOT NULL,
  `used` smallint(6) NOT NULL,
  PRIMARY KEY (`block_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of yii2cmf_area_block
-- ----------------------------
INSERT INTO `yii2cmf_area_block` VALUES ('7', '公告', 'text', 'frontend\\widgets\\area\\TextWidget', 'gong-gao', '', '<p>这里是公告</p>', '0', '0');
INSERT INTO `yii2cmf_area_block` VALUES ('9', '区域测试', 'text', 'frontend\\widgets\\area\\TextWidget', 'qu-yu-ce-shi', '', '<p>这里是侧边栏的区域中的一个区块</p>', '0', '0');

-- ----------------------------
-- Table structure for `yii2cmf_article`
-- ----------------------------
DROP TABLE IF EXISTS `yii2cmf_article`;
CREATE TABLE `yii2cmf_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL COMMENT '标题',
  `category` varchar(50) NOT NULL COMMENT '分类',
  `category_id` int(11) NOT NULL DEFAULT '0',
  `created_at` int(10) NOT NULL DEFAULT '0',
  `updated_at` int(10) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL COMMENT '状态',
  `cover` varchar(255) DEFAULT NULL COMMENT '封面',
  `comment` int(11) NOT NULL DEFAULT '0',
  `up` int(11) NOT NULL DEFAULT '0',
  `down` int(11) NOT NULL DEFAULT '0',
  `view` int(11) NOT NULL DEFAULT '0',
  `is_top` smallint(1) NOT NULL DEFAULT '0' COMMENT '是否置顶',
  `description` varchar(255) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `source` varchar(50) NOT NULL DEFAULT '0',
  `deleted_at` int(10) NOT NULL DEFAULT '0',
  `favourite` int(11) NOT NULL DEFAULT '0',
  `published_at` int(10) NOT NULL DEFAULT '0',
  `module` varchar(255) DEFAULT 'base' COMMENT '文档类型',
  `is_hot` smallint(6) NOT NULL DEFAULT '0' COMMENT '是否热门',
  `is_best` smallint(6) NOT NULL DEFAULT '0' COMMENT '是否精华',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yii2cmf_article
-- ----------------------------

-- ----------------------------
-- Table structure for `yii2cmf_article_data`
-- ----------------------------
DROP TABLE IF EXISTS `yii2cmf_article_data`;
CREATE TABLE `yii2cmf_article_data` (
  `id` int(11) NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  `markdown` smallint(1) NOT NULL DEFAULT '0' COMMENT '是否markdown格式',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yii2cmf_article_data
-- ----------------------------

-- ----------------------------
-- Table structure for `yii2cmf_article_exhibition`
-- ----------------------------
DROP TABLE IF EXISTS `yii2cmf_article_exhibition`;
CREATE TABLE `yii2cmf_article_exhibition` (
  `id` int(11) DEFAULT NULL,
  `start_at` timestamp NULL DEFAULT NULL COMMENT '开始时间',
  `end_at` timestamp NULL DEFAULT NULL COMMENT '结束时间',
  `city` varchar(50) DEFAULT NULL COMMENT '举办城市',
  `address` varchar(255) DEFAULT NULL COMMENT '举办地址',
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yii2cmf_article_exhibition
-- ----------------------------

-- ----------------------------
-- Table structure for `yii2cmf_article_module`
-- ----------------------------
DROP TABLE IF EXISTS `yii2cmf_article_module`;
CREATE TABLE `yii2cmf_article_module` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `model` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yii2cmf_article_module
-- ----------------------------

-- ----------------------------
-- Table structure for `yii2cmf_article_tag`
-- ----------------------------
DROP TABLE IF EXISTS `yii2cmf_article_tag`;
CREATE TABLE `yii2cmf_article_tag` (
  `article_id` int(10) NOT NULL DEFAULT '0',
  `tag_id` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yii2cmf_article_tag
-- ----------------------------

-- ----------------------------
-- Table structure for `yii2cmf_attachment`
-- ----------------------------
DROP TABLE IF EXISTS `yii2cmf_attachment`;
CREATE TABLE `yii2cmf_attachment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `url` varchar(255) NOT NULL,
  `hash` varchar(64) NOT NULL,
  `size` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `extension` varchar(255) DEFAULT NULL,
  `created_at` int(10) NOT NULL DEFAULT '0',
  `updated_at` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yii2cmf_attachment
-- ----------------------------

-- ----------------------------
-- Table structure for `yii2cmf_auth`
-- ----------------------------
DROP TABLE IF EXISTS `yii2cmf_auth`;
CREATE TABLE `yii2cmf_auth` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `source` varchar(255) NOT NULL DEFAULT '0',
  `source_id` varchar(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yii2cmf_auth
-- ----------------------------

-- ----------------------------
-- Table structure for `yii2cmf_auth_assignment`
-- ----------------------------
DROP TABLE IF EXISTS `yii2cmf_auth_assignment`;
CREATE TABLE `yii2cmf_auth_assignment` (
  `item_name` varchar(64) NOT NULL,
  `user_id` varchar(64) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_name`,`user_id`),
  CONSTRAINT `fk_auth_assignment_item_name` FOREIGN KEY (`item_name`) REFERENCES `yii2cmf_auth_item` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yii2cmf_auth_assignment
-- ----------------------------
INSERT INTO `yii2cmf_auth_assignment` VALUES ('superAdmin', '1', '1443080982');

-- ----------------------------
-- Table structure for `yii2cmf_auth_item`
-- ----------------------------
DROP TABLE IF EXISTS `yii2cmf_auth_item`;
CREATE TABLE `yii2cmf_auth_item` (
  `name` varchar(64) NOT NULL,
  `type` int(11) NOT NULL,
  `description` text,
  `rule_name` varchar(64) DEFAULT NULL,
  `data` text,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `fk_auth_item_rule_name` (`rule_name`),
  CONSTRAINT `fk_auth_item_rule_name` FOREIGN KEY (`rule_name`) REFERENCES `yii2cmf_auth_rule` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yii2cmf_auth_item
-- ----------------------------
INSERT INTO `yii2cmf_auth_item` VALUES ('/*', '2', null, null, null, '1458640575', '1458640575');
INSERT INTO `yii2cmf_auth_item` VALUES ('superAdmin', '1', '超级管理员', null, null, '1443080982', '1443408507');

-- ----------------------------
-- Table structure for `yii2cmf_auth_item_child`
-- ----------------------------
DROP TABLE IF EXISTS `yii2cmf_auth_item_child`;
CREATE TABLE `yii2cmf_auth_item_child` (
  `parent` varchar(64) NOT NULL,
  `child` varchar(64) NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `fk_auth_item_child_child` (`child`),
  CONSTRAINT `fk_auth_item_child_child` FOREIGN KEY (`child`) REFERENCES `yii2cmf_auth_item` (`name`),
  CONSTRAINT `fk_auth_item_child_parent` FOREIGN KEY (`parent`) REFERENCES `yii2cmf_auth_item` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yii2cmf_auth_item_child
-- ----------------------------
INSERT INTO `yii2cmf_auth_item_child` VALUES ('superAdmin', '/*');

-- ----------------------------
-- Table structure for `yii2cmf_auth_rule`
-- ----------------------------
DROP TABLE IF EXISTS `yii2cmf_auth_rule`;
CREATE TABLE `yii2cmf_auth_rule` (
  `name` varchar(64) NOT NULL,
  `data` text,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yii2cmf_auth_rule
-- ----------------------------

-- ----------------------------
-- Table structure for `yii2cmf_carousel`
-- ----------------------------
DROP TABLE IF EXISTS `yii2cmf_carousel`;
CREATE TABLE `yii2cmf_carousel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of yii2cmf_carousel
-- ----------------------------

-- ----------------------------
-- Table structure for `yii2cmf_carousel_item`
-- ----------------------------
DROP TABLE IF EXISTS `yii2cmf_carousel_item`;
CREATE TABLE `yii2cmf_carousel_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `carousel_id` int(11) NOT NULL,
  `image` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  `caption` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` smallint(6) NOT NULL DEFAULT '0',
  `order` int(11) DEFAULT '0',
  `created_at` int(11) NOT NULL DEFAULT '0',
  `updated_at` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of yii2cmf_carousel_item
-- ----------------------------

-- ----------------------------
-- Table structure for `yii2cmf_category`
-- ----------------------------
DROP TABLE IF EXISTS `yii2cmf_category`;
CREATE TABLE `yii2cmf_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL COMMENT '名字',
  `pid` int(11) NOT NULL DEFAULT '0' COMMENT '父id',
  `created_at` int(10) NOT NULL DEFAULT '0',
  `updated_at` int(10) NOT NULL DEFAULT '0',
  `slug` varchar(20) NOT NULL DEFAULT '0',
  `description` varchar(1000) NOT NULL DEFAULT '',
  `article` int(10) NOT NULL DEFAULT '0',
  `sort` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(255) DEFAULT 'base' COMMENT '文档类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yii2cmf_category
-- ----------------------------

-- ----------------------------
-- Table structure for `yii2cmf_city`
-- ----------------------------
DROP TABLE IF EXISTS `yii2cmf_city`;
CREATE TABLE `yii2cmf_city` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '地区名',
  `parent_id` int(11) DEFAULT NULL COMMENT '父ID',
  `sort` smallint(1) DEFAULT NULL COMMENT '排序',
  `deep` smallint(1) DEFAULT NULL COMMENT '地区深度,冗余字段',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=45056 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yii2cmf_city
-- ----------------------------
INSERT INTO `yii2cmf_city` VALUES ('1', '北京', '0', '0', '1');
INSERT INTO `yii2cmf_city` VALUES ('2', '天津', '0', '0', '1');
INSERT INTO `yii2cmf_city` VALUES ('3', '河北省', '0', '0', '1');
INSERT INTO `yii2cmf_city` VALUES ('4', '山西省', '0', '0', '1');
INSERT INTO `yii2cmf_city` VALUES ('5', '内蒙古自治区', '0', '0', '1');
INSERT INTO `yii2cmf_city` VALUES ('6', '辽宁省', '0', '0', '1');
INSERT INTO `yii2cmf_city` VALUES ('7', '吉林省', '0', '0', '1');
INSERT INTO `yii2cmf_city` VALUES ('8', '黑龙江省', '0', '0', '1');
INSERT INTO `yii2cmf_city` VALUES ('9', '上海', '0', '0', '1');
INSERT INTO `yii2cmf_city` VALUES ('10', '江苏省', '0', '0', '1');
INSERT INTO `yii2cmf_city` VALUES ('11', '浙江省', '0', '0', '1');
INSERT INTO `yii2cmf_city` VALUES ('12', '安徽省', '0', '0', '1');
INSERT INTO `yii2cmf_city` VALUES ('13', '福建省', '0', '0', '1');
INSERT INTO `yii2cmf_city` VALUES ('14', '江西省', '0', '0', '1');
INSERT INTO `yii2cmf_city` VALUES ('15', '山东省', '0', '0', '1');
INSERT INTO `yii2cmf_city` VALUES ('16', '河南省', '0', '0', '1');
INSERT INTO `yii2cmf_city` VALUES ('17', '湖北省', '0', '0', '1');
INSERT INTO `yii2cmf_city` VALUES ('18', '湖南省', '0', '0', '1');
INSERT INTO `yii2cmf_city` VALUES ('19', '广东省', '0', '0', '1');
INSERT INTO `yii2cmf_city` VALUES ('20', '广西壮族自治区', '0', '0', '1');
INSERT INTO `yii2cmf_city` VALUES ('21', '海南省', '0', '0', '1');
INSERT INTO `yii2cmf_city` VALUES ('22', '重庆', '0', '0', '1');
INSERT INTO `yii2cmf_city` VALUES ('23', '四川省', '0', '0', '1');
INSERT INTO `yii2cmf_city` VALUES ('24', '贵州省', '0', '0', '1');
INSERT INTO `yii2cmf_city` VALUES ('25', '云南省', '0', '0', '1');
INSERT INTO `yii2cmf_city` VALUES ('26', '西藏自治区', '0', '0', '1');
INSERT INTO `yii2cmf_city` VALUES ('27', '陕西省', '0', '0', '1');
INSERT INTO `yii2cmf_city` VALUES ('28', '甘肃省', '0', '0', '1');
INSERT INTO `yii2cmf_city` VALUES ('29', '青海省', '0', '0', '1');
INSERT INTO `yii2cmf_city` VALUES ('30', '宁夏回族自治区', '0', '0', '1');
INSERT INTO `yii2cmf_city` VALUES ('31', '新疆维吾尔自治区', '0', '0', '1');
INSERT INTO `yii2cmf_city` VALUES ('32', '台湾省', '0', '0', '1');
INSERT INTO `yii2cmf_city` VALUES ('33', '香港特别行政区', '0', '0', '1');
INSERT INTO `yii2cmf_city` VALUES ('34', '澳门特别行政区', '0', '0', '1');
INSERT INTO `yii2cmf_city` VALUES ('35', '海外', '0', '0', '1');
INSERT INTO `yii2cmf_city` VALUES ('36', '北京市', '1', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('37', '东城区', '36', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('38', '西城区', '36', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('39', '上海市', '9', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('40', '天津市', '2', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('41', '朝阳区', '36', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('42', '丰台区', '36', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('43', '石景山区', '36', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('44', '海淀区', '36', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('45', '门头沟区', '36', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('46', '房山区', '36', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('47', '通州区', '36', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('48', '顺义区', '36', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('49', '昌平区', '36', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('50', '大兴区', '36', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('51', '怀柔区', '36', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('52', '平谷区', '36', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('53', '密云县', '36', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('54', '延庆县', '36', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('55', '和平区', '40', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('56', '河东区', '40', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('57', '河西区', '40', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('58', '南开区', '40', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('59', '河北区', '40', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('60', '红桥区', '40', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('61', '塘沽区', '40', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('62', '重庆市', '22', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('64', '东丽区', '40', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('65', '西青区', '40', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('66', '津南区', '40', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('67', '北辰区', '40', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('68', '武清区', '40', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('69', '宝坻区', '40', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('70', '宁河县', '40', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('71', '静海县', '40', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('72', '蓟县', '40', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('73', '石家庄市', '3', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('74', '唐山市', '3', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('75', '秦皇岛市', '3', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('76', '邯郸市', '3', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('77', '邢台市', '3', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('78', '保定市', '3', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('79', '张家口市', '3', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('80', '承德市', '3', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('81', '衡水市', '3', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('82', '廊坊市', '3', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('83', '沧州市', '3', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('84', '太原市', '4', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('85', '大同市', '4', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('86', '阳泉市', '4', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('87', '长治市', '4', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('88', '晋城市', '4', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('89', '朔州市', '4', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('90', '晋中市', '4', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('91', '运城市', '4', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('92', '忻州市', '4', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('93', '临汾市', '4', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('94', '吕梁市', '4', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('95', '呼和浩特市', '5', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('96', '包头市', '5', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('97', '乌海市', '5', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('98', '赤峰市', '5', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('99', '通辽市', '5', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('100', '鄂尔多斯市', '5', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('101', '呼伦贝尔市', '5', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('102', '巴彦淖尔市', '5', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('103', '乌兰察布市', '5', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('104', '兴安盟', '5', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('105', '锡林郭勒盟', '5', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('106', '阿拉善盟', '5', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('107', '沈阳市', '6', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('108', '大连市', '6', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('109', '鞍山市', '6', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('110', '抚顺市', '6', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('111', '本溪市', '6', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('112', '丹东市', '6', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('113', '锦州市', '6', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('114', '营口市', '6', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('115', '阜新市', '6', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('116', '辽阳市', '6', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('117', '盘锦市', '6', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('118', '铁岭市', '6', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('119', '朝阳市', '6', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('120', '葫芦岛市', '6', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('121', '长春市', '7', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('122', '吉林市', '7', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('123', '四平市', '7', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('124', '辽源市', '7', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('125', '通化市', '7', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('126', '白山市', '7', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('127', '松原市', '7', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('128', '白城市', '7', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('129', '延边朝鲜族自治州', '7', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('130', '哈尔滨市', '8', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('131', '齐齐哈尔市', '8', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('132', '鸡西市', '8', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('133', '鹤岗市', '8', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('134', '双鸭山市', '8', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('135', '大庆市', '8', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('136', '伊春市', '8', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('137', '佳木斯市', '8', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('138', '七台河市', '8', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('139', '牡丹江市', '8', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('140', '黑河市', '8', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('141', '绥化市', '8', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('142', '大兴安岭地区', '8', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('143', '黄浦区', '39', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('144', '卢湾区', '39', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('145', '徐汇区', '39', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('146', '长宁区', '39', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('147', '静安区', '39', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('148', '普陀区', '39', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('149', '闸北区', '39', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('150', '虹口区', '39', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('151', '杨浦区', '39', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('152', '闵行区', '39', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('153', '宝山区', '39', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('154', '嘉定区', '39', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('155', '浦东新区', '39', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('156', '金山区', '39', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('157', '松江区', '39', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('158', '青浦区', '39', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('159', '南汇区', '39', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('160', '奉贤区', '39', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('161', '崇明县', '39', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('162', '南京市', '10', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('163', '无锡市', '10', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('164', '徐州市', '10', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('165', '常州市', '10', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('166', '苏州市', '10', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('167', '南通市', '10', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('168', '连云港市', '10', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('169', '淮安市', '10', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('170', '盐城市', '10', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('171', '扬州市', '10', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('172', '镇江市', '10', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('173', '泰州市', '10', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('174', '宿迁市', '10', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('175', '杭州市', '11', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('176', '宁波市', '11', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('177', '温州市', '11', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('178', '嘉兴市', '11', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('179', '湖州市', '11', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('180', '绍兴市', '11', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('181', '舟山市', '11', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('182', '衢州市', '11', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('183', '金华市', '11', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('184', '台州市', '11', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('185', '丽水市', '11', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('186', '合肥市', '12', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('187', '芜湖市', '12', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('188', '蚌埠市', '12', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('189', '淮南市', '12', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('190', '马鞍山市', '12', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('191', '淮北市', '12', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('192', '铜陵市', '12', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('193', '安庆市', '12', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('194', '黄山市', '12', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('195', '滁州市', '12', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('196', '阜阳市', '12', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('197', '宿州市', '12', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('198', '巢湖市', '12', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('199', '六安市', '12', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('200', '亳州市', '12', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('201', '池州市', '12', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('202', '宣城市', '12', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('203', '福州市', '13', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('204', '厦门市', '13', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('205', '莆田市', '13', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('206', '三明市', '13', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('207', '泉州市', '13', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('208', '漳州市', '13', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('209', '南平市', '13', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('210', '龙岩市', '13', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('211', '宁德市', '13', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('212', '南昌市', '14', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('213', '景德镇市', '14', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('214', '萍乡市', '14', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('215', '九江市', '14', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('216', '新余市', '14', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('217', '鹰潭市', '14', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('218', '赣州市', '14', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('219', '吉安市', '14', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('220', '宜春市', '14', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('221', '抚州市', '14', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('222', '上饶市', '14', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('223', '济南市', '15', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('224', '青岛市', '15', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('225', '淄博市', '15', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('226', '枣庄市', '15', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('227', '东营市', '15', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('228', '烟台市', '15', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('229', '潍坊市', '15', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('230', '济宁市', '15', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('231', '泰安市', '15', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('232', '威海市', '15', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('233', '日照市', '15', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('234', '莱芜市', '15', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('235', '临沂市', '15', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('236', '德州市', '15', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('237', '聊城市', '15', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('238', '滨州市', '15', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('239', '菏泽市', '15', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('240', '郑州市', '16', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('241', '开封市', '16', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('242', '洛阳市', '16', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('243', '平顶山市', '16', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('244', '安阳市', '16', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('245', '鹤壁市', '16', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('246', '新乡市', '16', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('247', '焦作市', '16', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('248', '濮阳市', '16', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('249', '许昌市', '16', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('250', '漯河市', '16', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('251', '三门峡市', '16', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('252', '南阳市', '16', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('253', '商丘市', '16', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('254', '信阳市', '16', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('255', '周口市', '16', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('256', '驻马店市', '16', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('257', '济源市', '16', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('258', '武汉市', '17', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('259', '黄石市', '17', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('260', '十堰市', '17', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('261', '宜昌市', '17', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('262', '襄樊市', '17', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('263', '鄂州市', '17', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('264', '荆门市', '17', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('265', '孝感市', '17', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('266', '荆州市', '17', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('267', '黄冈市', '17', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('268', '咸宁市', '17', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('269', '随州市', '17', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('270', '恩施土家族苗族自治州', '17', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('271', '仙桃市', '17', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('272', '潜江市', '17', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('273', '天门市', '17', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('274', '神农架林区', '17', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('275', '长沙市', '18', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('276', '株洲市', '18', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('277', '湘潭市', '18', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('278', '衡阳市', '18', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('279', '邵阳市', '18', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('280', '岳阳市', '18', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('281', '常德市', '18', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('282', '张家界市', '18', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('283', '益阳市', '18', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('284', '郴州市', '18', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('285', '永州市', '18', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('286', '怀化市', '18', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('287', '娄底市', '18', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('288', '湘西土家族苗族自治州', '18', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('289', '广州市', '19', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('290', '韶关市', '19', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('291', '深圳市', '19', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('292', '珠海市', '19', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('293', '汕头市', '19', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('294', '佛山市', '19', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('295', '江门市', '19', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('296', '湛江市', '19', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('297', '茂名市', '19', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('298', '肇庆市', '19', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('299', '惠州市', '19', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('300', '梅州市', '19', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('301', '汕尾市', '19', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('302', '河源市', '19', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('303', '阳江市', '19', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('304', '清远市', '19', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('305', '东莞市', '19', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('306', '中山市', '19', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('307', '潮州市', '19', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('308', '揭阳市', '19', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('309', '云浮市', '19', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('310', '南宁市', '20', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('311', '柳州市', '20', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('312', '桂林市', '20', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('313', '梧州市', '20', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('314', '北海市', '20', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('315', '防城港市', '20', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('316', '钦州市', '20', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('317', '贵港市', '20', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('318', '玉林市', '20', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('319', '百色市', '20', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('320', '贺州市', '20', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('321', '河池市', '20', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('322', '来宾市', '20', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('323', '崇左市', '20', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('324', '海口市', '21', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('325', '三亚市', '21', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('326', '五指山市', '21', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('327', '琼海市', '21', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('328', '儋州市', '21', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('329', '文昌市', '21', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('330', '万宁市', '21', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('331', '东方市', '21', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('332', '定安县', '21', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('333', '屯昌县', '21', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('334', '澄迈县', '21', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('335', '临高县', '21', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('336', '白沙黎族自治县', '21', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('337', '昌江黎族自治县', '21', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('338', '乐东黎族自治县', '21', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('339', '陵水黎族自治县', '21', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('340', '保亭黎族苗族自治县', '21', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('341', '琼中黎族苗族自治县', '21', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('342', '西沙群岛', '21', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('343', '南沙群岛', '21', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('344', '中沙群岛的岛礁及其海域', '21', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('345', '万州区', '62', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('346', '涪陵区', '62', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('347', '渝中区', '62', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('348', '大渡口区', '62', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('349', '江北区', '62', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('350', '沙坪坝区', '62', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('351', '九龙坡区', '62', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('352', '南岸区', '62', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('353', '北碚区', '62', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('354', '双桥区', '62', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('355', '万盛区', '62', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('356', '渝北区', '62', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('357', '巴南区', '62', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('358', '黔江区', '62', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('359', '长寿区', '62', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('360', '綦江县', '62', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('361', '潼南县', '62', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('362', '铜梁县', '62', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('363', '大足县', '62', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('364', '荣昌县', '62', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('365', '璧山县', '62', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('366', '梁平县', '62', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('367', '城口县', '62', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('368', '丰都县', '62', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('369', '垫江县', '62', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('370', '武隆县', '62', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('371', '忠县', '62', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('372', '开县', '62', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('373', '云阳县', '62', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('374', '奉节县', '62', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('375', '巫山县', '62', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('376', '巫溪县', '62', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('377', '石柱土家族自治县', '62', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('378', '秀山土家族苗族自治县', '62', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('379', '酉阳土家族苗族自治县', '62', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('380', '彭水苗族土家族自治县', '62', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('381', '江津市', '62', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('382', '合川市', '62', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('383', '永川市', '62', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('384', '南川市', '62', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('385', '成都市', '23', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('386', '自贡市', '23', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('387', '攀枝花市', '23', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('388', '泸州市', '23', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('389', '德阳市', '23', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('390', '绵阳市', '23', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('391', '广元市', '23', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('392', '遂宁市', '23', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('393', '内江市', '23', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('394', '乐山市', '23', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('395', '南充市', '23', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('396', '眉山市', '23', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('397', '宜宾市', '23', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('398', '广安市', '23', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('399', '达州市', '23', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('400', '雅安市', '23', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('401', '巴中市', '23', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('402', '资阳市', '23', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('403', '阿坝藏族羌族自治州', '23', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('404', '甘孜藏族自治州', '23', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('405', '凉山彝族自治州', '23', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('406', '贵阳市', '24', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('407', '六盘水市', '24', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('408', '遵义市', '24', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('409', '安顺市', '24', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('410', '铜仁地区', '24', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('411', '黔西南布依族苗族自治州', '24', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('412', '毕节地区', '24', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('413', '黔东南苗族侗族自治州', '24', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('414', '黔南布依族苗族自治州', '24', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('415', '昆明市', '25', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('416', '曲靖市', '25', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('417', '玉溪市', '25', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('418', '保山市', '25', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('419', '昭通市', '25', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('420', '丽江市', '25', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('421', '思茅市', '25', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('422', '临沧市', '25', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('423', '楚雄彝族自治州', '25', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('424', '红河哈尼族彝族自治州', '25', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('425', '文山壮族苗族自治州', '25', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('426', '西双版纳傣族自治州', '25', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('427', '大理白族自治州', '25', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('428', '德宏傣族景颇族自治州', '25', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('429', '怒江傈僳族自治州', '25', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('430', '迪庆藏族自治州', '25', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('431', '拉萨市', '26', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('432', '昌都地区', '26', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('433', '山南地区', '26', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('434', '日喀则地区', '26', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('435', '那曲地区', '26', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('436', '阿里地区', '26', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('437', '林芝地区', '26', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('438', '西安市', '27', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('439', '铜川市', '27', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('440', '宝鸡市', '27', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('441', '咸阳市', '27', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('442', '渭南市', '27', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('443', '延安市', '27', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('444', '汉中市', '27', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('445', '榆林市', '27', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('446', '安康市', '27', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('447', '商洛市', '27', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('448', '兰州市', '28', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('449', '嘉峪关市', '28', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('450', '金昌市', '28', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('451', '白银市', '28', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('452', '天水市', '28', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('453', '武威市', '28', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('454', '张掖市', '28', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('455', '平凉市', '28', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('456', '酒泉市', '28', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('457', '庆阳市', '28', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('458', '定西市', '28', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('459', '陇南市', '28', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('460', '临夏回族自治州', '28', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('461', '甘南藏族自治州', '28', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('462', '西宁市', '29', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('463', '海东地区', '29', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('464', '海北藏族自治州', '29', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('465', '黄南藏族自治州', '29', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('466', '海南藏族自治州', '29', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('467', '果洛藏族自治州', '29', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('468', '玉树藏族自治州', '29', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('469', '海西蒙古族藏族自治州', '29', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('470', '银川市', '30', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('471', '石嘴山市', '30', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('472', '吴忠市', '30', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('473', '固原市', '30', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('474', '中卫市', '30', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('475', '乌鲁木齐市', '31', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('476', '克拉玛依市', '31', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('477', '吐鲁番地区', '31', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('478', '哈密地区', '31', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('479', '昌吉回族自治州', '31', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('480', '博尔塔拉蒙古自治州', '31', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('481', '巴音郭楞蒙古自治州', '31', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('482', '阿克苏地区', '31', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('483', '克孜勒苏柯尔克孜自治州', '31', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('484', '喀什地区', '31', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('485', '和田地区', '31', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('486', '伊犁哈萨克自治州', '31', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('487', '塔城地区', '31', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('488', '阿勒泰地区', '31', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('489', '石河子市', '31', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('490', '阿拉尔市', '31', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('491', '图木舒克市', '31', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('492', '五家渠市', '31', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('493', '台北市', '32', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('494', '高雄市', '32', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('495', '基隆市', '32', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('496', '台中市', '32', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('497', '台南市', '32', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('498', '新竹市', '32', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('499', '嘉义市', '32', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('500', '台北县', '32', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('501', '宜兰县', '32', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('502', '桃园县', '32', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('503', '新竹县', '32', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('504', '苗栗县', '32', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('505', '台中县', '32', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('506', '彰化县', '32', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('507', '南投县', '32', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('508', '云林县', '32', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('509', '嘉义县', '32', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('510', '台南县', '32', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('511', '高雄县', '32', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('512', '屏东县', '32', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('513', '澎湖县', '32', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('514', '台东县', '32', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('515', '花莲县', '32', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('516', '中西区', '33', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('517', '东区', '33', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('518', '九龙城区', '33', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('519', '观塘区', '33', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('520', '南区', '33', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('521', '深水埗区', '33', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('522', '黄大仙区', '33', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('523', '湾仔区', '33', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('524', '油尖旺区', '33', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('525', '离岛区', '33', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('526', '葵青区', '33', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('527', '北区', '33', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('528', '西贡区', '33', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('529', '沙田区', '33', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('530', '屯门区', '33', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('531', '大埔区', '33', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('532', '荃湾区', '33', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('533', '元朗区', '33', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('534', '澳门特别行政区', '34', '0', '2');
INSERT INTO `yii2cmf_city` VALUES ('535', '美国', '45055', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('536', '加拿大', '45055', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('537', '澳大利亚', '45055', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('538', '新西兰', '45055', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('539', '英国', '45055', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('540', '法国', '45055', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('541', '德国', '45055', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('542', '捷克', '45055', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('543', '荷兰', '45055', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('544', '瑞士', '45055', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('545', '希腊', '45055', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('546', '挪威', '45055', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('547', '瑞典', '45055', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('548', '丹麦', '45055', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('549', '芬兰', '45055', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('550', '爱尔兰', '45055', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('551', '奥地利', '45055', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('552', '意大利', '45055', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('553', '乌克兰', '45055', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('554', '俄罗斯', '45055', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('555', '西班牙', '45055', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('556', '韩国', '45055', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('557', '新加坡', '45055', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('558', '马来西亚', '45055', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('559', '印度', '45055', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('560', '泰国', '45055', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('561', '日本', '45055', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('562', '巴西', '45055', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('563', '阿根廷', '45055', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('564', '南非', '45055', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('565', '埃及', '45055', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('566', '其他', '36', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1126', '井陉县', '73', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1127', '井陉矿区', '73', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1128', '元氏县', '73', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1129', '平山县', '73', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1130', '新乐市', '73', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1131', '新华区', '73', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1132', '无极县', '73', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1133', '晋州市', '73', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1134', '栾城县', '73', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1135', '桥东区', '73', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1136', '桥西区', '73', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1137', '正定县', '73', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1138', '深泽县', '73', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1139', '灵寿县', '73', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1140', '藁城市', '73', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1141', '行唐县', '73', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1142', '裕华区', '73', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1143', '赞皇县', '73', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1144', '赵县', '73', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1145', '辛集市', '73', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1146', '长安区', '73', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1147', '高邑县', '73', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1148', '鹿泉市', '73', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1149', '丰南区', '74', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1150', '丰润区', '74', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1151', '乐亭县', '74', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1152', '古冶区', '74', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1153', '唐海县', '74', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1154', '开平区', '74', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1155', '滦南县', '74', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1156', '滦县', '74', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1157', '玉田县', '74', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1158', '路北区', '74', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1159', '路南区', '74', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1160', '迁安市', '74', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1161', '迁西县', '74', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1162', '遵化市', '74', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1163', '北戴河区', '75', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1164', '卢龙县', '75', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1165', '山海关区', '75', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1166', '抚宁县', '75', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1167', '昌黎县', '75', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1168', '海港区', '75', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1169', '青龙满族自治县', '75', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1170', '丛台区', '76', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1171', '临漳县', '76', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1172', '复兴区', '76', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1173', '大名县', '76', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1174', '峰峰矿区', '76', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1175', '广平县', '76', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1176', '成安县', '76', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1177', '曲周县', '76', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1178', '武安市', '76', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1179', '永年县', '76', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1180', '涉县', '76', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1181', '磁县', '76', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1182', '肥乡县', '76', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1183', '邯山区', '76', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1184', '邯郸县', '76', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1185', '邱县', '76', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1186', '馆陶县', '76', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1187', '魏县', '76', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1188', '鸡泽县', '76', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1189', '临城县', '77', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1190', '临西县', '77', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1191', '任县', '77', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1192', '内丘县', '77', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1193', '南和县', '77', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1194', '南宫市', '77', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1195', '威县', '77', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1196', '宁晋县', '77', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1197', '巨鹿县', '77', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1198', '平乡县', '77', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1199', '广宗县', '77', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1200', '新河县', '77', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1201', '柏乡县', '77', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1202', '桥东区', '77', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1203', '桥西区', '77', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1204', '沙河市', '77', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1205', '清河县', '77', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1206', '邢台县', '77', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1207', '隆尧县', '77', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1208', '北市区', '78', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1209', '南市区', '78', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1210', '博野县', '78', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1211', '唐县', '78', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1212', '安国市', '78', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1213', '安新县', '78', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1214', '定兴县', '78', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1215', '定州市', '78', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1216', '容城县', '78', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1217', '徐水县', '78', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1218', '新市区', '78', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1219', '易县', '78', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1220', '曲阳县', '78', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1221', '望都县', '78', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1222', '涞水县', '78', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1223', '涞源县', '78', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1224', '涿州市', '78', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1225', '清苑县', '78', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1226', '满城县', '78', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1227', '蠡县', '78', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1228', '阜平县', '78', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1229', '雄县', '78', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1230', '顺平县', '78', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1231', '高碑店市', '78', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1232', '高阳县', '78', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1233', '万全县', '79', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1234', '下花园区', '79', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1235', '宣化区', '79', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1236', '宣化县', '79', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1237', '尚义县', '79', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1238', '崇礼县', '79', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1239', '康保县', '79', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1240', '张北县', '79', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1241', '怀安县', '79', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1242', '怀来县', '79', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1243', '桥东区', '79', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1244', '桥西区', '79', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1245', '沽源县', '79', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1246', '涿鹿县', '79', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1247', '蔚县', '79', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1248', '赤城县', '79', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1249', '阳原县', '79', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1250', '丰宁满族自治县', '80', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1251', '兴隆县', '80', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1252', '双桥区', '80', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1253', '双滦区', '80', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1254', '围场满族蒙古族自治县', '80', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1255', '宽城满族自治县', '80', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1256', '平泉县', '80', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1257', '承德县', '80', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1258', '滦平县', '80', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1259', '隆化县', '80', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1260', '鹰手营子矿区', '80', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1261', '冀州市', '81', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1262', '安平县', '81', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1263', '故城县', '81', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1264', '景县', '81', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1265', '枣强县', '81', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1266', '桃城区', '81', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1267', '武强县', '81', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1268', '武邑县', '81', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1269', '深州市', '81', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1270', '阜城县', '81', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1271', '饶阳县', '81', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1272', '三河市', '82', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1273', '固安县', '82', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1274', '大厂回族自治县', '82', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1275', '大城县', '82', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1276', '安次区', '82', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1277', '广阳区', '82', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1278', '文安县', '82', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1279', '永清县', '82', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1280', '霸州市', '82', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1281', '香河县', '82', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1282', '东光县', '83', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1283', '任丘市', '83', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1284', '南皮县', '83', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1285', '吴桥县', '83', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1286', '孟村回族自治县', '83', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1287', '新华区', '83', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1288', '沧县', '83', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1289', '河间市', '83', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1290', '泊头市', '83', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1291', '海兴县', '83', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1292', '献县', '83', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1293', '盐山县', '83', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1294', '肃宁县', '83', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1295', '运河区', '83', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1296', '青县', '83', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1297', '黄骅市', '83', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1298', '万柏林区', '84', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1299', '古交市', '84', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1300', '娄烦县', '84', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1301', '小店区', '84', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1302', '尖草坪区', '84', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1303', '晋源区', '84', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1304', '杏花岭区', '84', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1305', '清徐县', '84', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1306', '迎泽区', '84', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1307', '阳曲县', '84', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1308', '南郊区', '85', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1309', '城区', '85', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1310', '大同县', '85', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1311', '天镇县', '85', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1312', '左云县', '85', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1313', '广灵县', '85', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1314', '新荣区', '85', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1315', '浑源县', '85', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1316', '灵丘县', '85', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1317', '矿区', '85', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1318', '阳高县', '85', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1319', '城区', '86', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1320', '平定县', '86', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1321', '盂县', '86', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1322', '矿区', '86', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1323', '郊区', '86', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1324', '城区', '87', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1325', '壶关县', '87', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1326', '屯留县', '87', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1327', '平顺县', '87', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1328', '武乡县', '87', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1329', '沁县', '87', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1330', '沁源县', '87', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1331', '潞城市', '87', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1332', '襄垣县', '87', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1333', '郊区', '87', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1334', '长子县', '87', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1335', '长治县', '87', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1336', '黎城县', '87', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1337', '城区', '88', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1338', '沁水县', '88', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1339', '泽州县', '88', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1340', '阳城县', '88', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1341', '陵川县', '88', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1342', '高平市', '88', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1343', '右玉县', '89', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1344', '山阴县', '89', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1345', '平鲁区', '89', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1346', '应县', '89', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1347', '怀仁县', '89', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1348', '朔城区', '89', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1349', '介休市', '90', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1350', '和顺县', '90', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1351', '太谷县', '90', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1352', '寿阳县', '90', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1353', '左权县', '90', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1354', '平遥县', '90', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1355', '昔阳县', '90', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1356', '榆次区', '90', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1357', '榆社县', '90', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1358', '灵石县', '90', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1359', '祁县', '90', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1360', '万荣县', '91', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1361', '临猗县', '91', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1362', '垣曲县', '91', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1363', '夏县', '91', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1364', '平陆县', '91', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1365', '新绛县', '91', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1366', '永济市', '91', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1367', '河津市', '91', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1368', '盐湖区', '91', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1369', '稷山县', '91', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1370', '绛县', '91', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1371', '芮城县', '91', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1372', '闻喜县', '91', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1373', '五台县', '92', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1374', '五寨县', '92', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1375', '代县', '92', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1376', '保德县', '92', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1377', '偏关县', '92', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1378', '原平市', '92', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1379', '宁武县', '92', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1380', '定襄县', '92', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1381', '岢岚县', '92', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1382', '忻府区', '92', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1383', '河曲县', '92', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1384', '神池县', '92', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1385', '繁峙县', '92', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1386', '静乐县', '92', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1387', '乡宁县', '93', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1388', '侯马市', '93', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1389', '古县', '93', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1390', '吉县', '93', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1391', '大宁县', '93', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1392', '安泽县', '93', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1393', '尧都区', '93', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1394', '曲沃县', '93', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1395', '永和县', '93', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1396', '汾西县', '93', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1397', '洪洞县', '93', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1398', '浮山县', '93', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1399', '翼城县', '93', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1400', '蒲县', '93', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1401', '襄汾县', '93', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1402', '隰县', '93', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1403', '霍州市', '93', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1404', '中阳县', '94', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1405', '临县', '94', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1406', '交口县', '94', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1407', '交城县', '94', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1408', '兴县', '94', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1409', '孝义市', '94', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1410', '岚县', '94', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1411', '文水县', '94', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1412', '方山县', '94', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1413', '柳林县', '94', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1414', '汾阳市', '94', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1415', '石楼县', '94', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1416', '离石区', '94', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1417', '和林格尔县', '95', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1418', '回民区', '95', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1419', '土默特左旗', '95', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1420', '托克托县', '95', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1421', '新城区', '95', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1422', '武川县', '95', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1423', '清水河县', '95', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1424', '玉泉区', '95', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1425', '赛罕区', '95', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1426', '东河区', '96', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1427', '九原区', '96', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1428', '固阳县', '96', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1429', '土默特右旗', '96', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1430', '昆都仑区', '96', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1431', '白云矿区', '96', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1432', '石拐区', '96', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1433', '达尔罕茂明安联合旗', '96', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1434', '青山区', '96', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1435', '乌达区', '97', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1436', '海勃湾区', '97', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1437', '海南区', '97', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1438', '元宝山区', '98', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1439', '克什克腾旗', '98', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1440', '喀喇沁旗', '98', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1441', '宁城县', '98', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1442', '巴林右旗', '98', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1443', '巴林左旗', '98', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1444', '敖汉旗', '98', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1445', '松山区', '98', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1446', '林西县', '98', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1447', '红山区', '98', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1448', '翁牛特旗', '98', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1449', '阿鲁科尔沁旗', '98', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1450', '奈曼旗', '99', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1451', '库伦旗', '99', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1452', '开鲁县', '99', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1453', '扎鲁特旗', '99', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1454', '科尔沁区', '99', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1455', '科尔沁左翼中旗', '99', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1456', '科尔沁左翼后旗', '99', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1457', '霍林郭勒市', '99', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1458', '东胜区', '100', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1459', '乌审旗', '100', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1460', '伊金霍洛旗', '100', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1461', '准格尔旗', '100', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1462', '杭锦旗', '100', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1463', '达拉特旗', '100', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1464', '鄂东胜区', '100', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1465', '鄂托克前旗', '100', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1466', '鄂托克旗', '100', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1467', '扎兰屯市', '101', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1468', '新巴尔虎右旗', '101', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1469', '新巴尔虎左旗', '101', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1470', '根河市', '101', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1471', '海拉尔区', '101', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1472', '满洲里市', '101', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1473', '牙克石市', '101', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1474', '莫力达瓦达斡尔族自治旗', '101', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1475', '鄂伦春自治旗', '101', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1476', '鄂温克族自治旗', '101', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1477', '阿荣旗', '101', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1478', '陈巴尔虎旗', '101', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1479', '额尔古纳市', '101', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1480', '临河区', '102', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1481', '乌拉特中旗', '102', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1482', '乌拉特前旗', '102', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1483', '乌拉特后旗', '102', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1484', '五原县', '102', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1485', '杭锦后旗', '102', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1486', '磴口县', '102', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1487', '丰镇市', '103', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1488', '兴和县', '103', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1489', '凉城县', '103', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1490', '化德县', '103', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1491', '卓资县', '103', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1492', '商都县', '103', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1493', '四子王旗', '103', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1494', '察哈尔右翼中旗', '103', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1495', '察哈尔右翼前旗', '103', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1496', '察哈尔右翼后旗', '103', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1497', '集宁区', '103', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1498', '乌兰浩特市', '104', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1499', '扎赉特旗', '104', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1500', '科尔沁右翼中旗', '104', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1501', '科尔沁右翼前旗', '104', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1502', '突泉县', '104', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1503', '阿尔山市', '104', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1504', '东乌珠穆沁旗', '105', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1505', '二连浩特市', '105', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1506', '多伦县', '105', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1507', '太仆寺旗', '105', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1508', '正蓝旗', '105', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1509', '正镶白旗', '105', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1510', '苏尼特右旗', '105', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1511', '苏尼特左旗', '105', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1512', '西乌珠穆沁旗', '105', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1513', '锡林浩特市', '105', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1514', '镶黄旗', '105', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1515', '阿巴嘎旗', '105', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1516', '阿拉善右旗', '106', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1517', '阿拉善左旗', '106', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1518', '额济纳旗', '106', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1519', '东陵区', '107', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1520', '于洪区', '107', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1521', '和平区', '107', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1522', '大东区', '107', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1523', '康平县', '107', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1524', '新民市', '107', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1525', '沈北新区', '107', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1526', '沈河区', '107', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1527', '法库县', '107', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1528', '皇姑区', '107', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1529', '苏家屯区', '107', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1530', '辽中县', '107', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1531', '铁西区', '107', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1532', '中山区', '108', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1533', '庄河市', '108', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1534', '旅顺口区', '108', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1535', '普兰店市', '108', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1536', '沙河口区', '108', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1537', '瓦房店市', '108', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1538', '甘井子区', '108', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1539', '西岗区', '108', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1540', '金州区', '108', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1541', '长海县', '108', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1542', '千山区', '109', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1543', '台安县', '109', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1544', '岫岩满族自治县', '109', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1545', '海城市', '109', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1546', '立山区', '109', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1547', '铁东区', '109', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1548', '铁西区', '109', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1549', '东洲区', '110', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1550', '抚顺县', '110', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1551', '新宾满族自治县', '110', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1552', '新抚区', '110', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1553', '望花区', '110', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1554', '清原满族自治县', '110', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1555', '顺城区', '110', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1556', '南芬区', '111', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1557', '平山区', '111', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1558', '明山区', '111', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1559', '本溪满族自治县', '111', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1560', '桓仁满族自治县', '111', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1561', '溪湖区', '111', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1562', '东港市', '112', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1563', '元宝区', '112', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1564', '凤城市', '112', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1565', '宽甸满族自治县', '112', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1566', '振兴区', '112', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1567', '振安区', '112', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1568', '义县', '113', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1569', '凌河区', '113', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1570', '凌海市', '113', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1571', '北镇市', '113', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1572', '古塔区', '113', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1573', '太和区', '113', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1574', '黑山县', '113', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1575', '大石桥市', '114', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1576', '盖州市', '114', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1577', '站前区', '114', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1578', '老边区', '114', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1579', '西市区', '114', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1580', '鲅鱼圈区', '114', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1581', '太平区', '115', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1582', '彰武县', '115', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1583', '新邱区', '115', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1584', '海州区', '115', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1585', '清河门区', '115', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1586', '细河区', '115', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1587', '蒙古族自治县', '115', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1588', '太子河区', '116', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1589', '宏伟区', '116', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1590', '弓长岭区', '116', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1591', '文圣区', '116', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1592', '灯塔市', '116', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1593', '白塔区', '116', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1594', '辽阳县', '116', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1595', '兴隆台区', '117', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1596', '双台子区', '117', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1597', '大洼县', '117', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1598', '盘山县', '117', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1599', '开原市', '118', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1600', '昌图县', '118', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1601', '清河区', '118', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1602', '西丰县', '118', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1603', '调兵山市', '118', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1604', '铁岭县', '118', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1605', '银州区', '118', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1606', '凌源市', '119', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1607', '北票市', '119', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1608', '双塔区', '119', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1609', '喀喇沁左翼蒙古族自治县', '119', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1610', '建平县', '119', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1611', '朝阳县', '119', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1612', '龙城区', '119', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1613', '兴城市', '120', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1614', '南票区', '120', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1615', '建昌县', '120', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1616', '绥中县', '120', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1617', '连山区', '120', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1618', '龙港区', '120', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1619', '九台市', '121', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1620', '二道区', '121', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1621', '农安县', '121', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1622', '南关区', '121', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1623', '双阳区', '121', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1624', '宽城区', '121', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1625', '德惠市', '121', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1626', '朝阳区', '121', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1627', '榆树市', '121', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1628', '绿园区', '121', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1629', '丰满区', '122', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1630', '昌邑区', '122', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1631', '桦甸市', '122', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1632', '永吉县', '122', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1633', '磐石市', '122', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1634', '舒兰市', '122', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1635', '船营区', '122', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1636', '蛟河市', '122', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1637', '龙潭区', '122', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1638', '伊通满族自治县', '123', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1639', '公主岭市', '123', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1640', '双辽市', '123', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1641', '梨树县', '123', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1642', '铁东区', '123', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1643', '铁西区', '123', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1644', '东丰县', '124', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1645', '东辽县', '124', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1646', '西安区', '124', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1647', '龙山区', '124', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1648', '东昌区', '125', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1649', '二道江区', '125', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1650', '柳河县', '125', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1651', '梅河口市', '125', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1652', '辉南县', '125', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1653', '通化县', '125', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1654', '集安市', '125', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1655', '临江市', '126', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1656', '八道江区', '126', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1657', '抚松县', '126', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1658', '江源区', '126', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1659', '长白朝鲜族自治县', '126', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1660', '靖宇县', '126', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1661', '干安县', '127', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1662', '前郭尔罗斯蒙古族自治县', '127', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1663', '宁江区', '127', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1664', '扶余县', '127', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1665', '长岭县', '127', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1666', '大安市', '128', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1667', '洮北区', '128', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1668', '洮南市', '128', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1669', '通榆县', '128', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1670', '镇赉县', '128', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1671', '和龙市', '129', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1672', '图们市', '129', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1673', '安图县', '129', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1674', '延吉市', '129', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1675', '敦化市', '129', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1676', '汪清县', '129', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1677', '珲春市', '129', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1678', '龙井市', '129', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1679', '五常市', '130', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1680', '依兰县', '130', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1681', '南岗区', '130', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1682', '双城市', '130', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1683', '呼兰区', '130', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1684', '哈尔滨市道里区', '130', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1685', '宾县', '130', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1686', '尚志市', '130', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1687', '巴彦县', '130', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1688', '平房区', '130', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1689', '延寿县', '130', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1690', '方正县', '130', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1691', '木兰县', '130', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1692', '松北区', '130', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1693', '通河县', '130', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1694', '道外区', '130', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1695', '阿城区', '130', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1696', '香坊区', '130', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1697', '依安县', '131', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1698', '克东县', '131', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1699', '克山县', '131', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1700', '富拉尔基区', '131', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1701', '富裕县', '131', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1702', '建华区', '131', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1703', '拜泉县', '131', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1704', '昂昂溪区', '131', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1705', '梅里斯达斡尔族区', '131', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1706', '泰来县', '131', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1707', '甘南县', '131', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1708', '碾子山区', '131', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1709', '讷河市', '131', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1710', '铁锋区', '131', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1711', '龙江县', '131', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1712', '龙沙区', '131', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1713', '城子河区', '132', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1714', '密山市', '132', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1715', '恒山区', '132', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1716', '梨树区', '132', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1717', '滴道区', '132', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1718', '虎林市', '132', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1719', '鸡东县', '132', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1720', '鸡冠区', '132', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1721', '麻山区', '132', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1722', '东山区', '133', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1723', '兴安区', '133', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1724', '兴山区', '133', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1725', '南山区', '133', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1726', '向阳区', '133', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1727', '工农区', '133', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1728', '绥滨县', '133', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1729', '萝北县', '133', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1730', '友谊县', '134', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1731', '四方台区', '134', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1732', '宝山区', '134', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1733', '宝清县', '134', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1734', '尖山区', '134', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1735', '岭东区', '134', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1736', '集贤县', '134', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1737', '饶河县', '134', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1738', '大同区', '135', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1739', '杜尔伯特蒙古族自治县', '135', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1740', '林甸县', '135', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1741', '红岗区', '135', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1742', '肇州县', '135', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1743', '肇源县', '135', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1744', '胡路区', '135', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1745', '萨尔图区', '135', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1746', '龙凤区', '135', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1747', '上甘岭区', '136', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1748', '乌伊岭区', '136', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1749', '乌马河区', '136', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1750', '五营区', '136', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1751', '伊春区', '136', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1752', '南岔区', '136', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1753', '友好区', '136', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1754', '嘉荫县', '136', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1755', '带岭区', '136', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1756', '新青区', '136', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1757', '汤旺河区', '136', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1758', '红星区', '136', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1759', '美溪区', '136', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1760', '翠峦区', '136', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1761', '西林区', '136', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1762', '金山屯区', '136', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1763', '铁力市', '136', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1764', '东风区', '137', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1765', '前进区', '137', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1766', '同江市', '137', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1767', '向阳区', '137', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1768', '富锦市', '137', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1769', '抚远县', '137', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1770', '桦南县', '137', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1771', '桦川县', '137', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1772', '汤原县', '137', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1773', '郊区', '137', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1774', '勃利县', '138', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1775', '新兴区', '138', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1776', '桃山区', '138', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1777', '茄子河区', '138', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1778', '东宁县', '139', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1779', '东安区', '139', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1780', '宁安市', '139', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1781', '林口县', '139', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1782', '海林市', '139', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1783', '爱民区', '139', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1784', '穆棱市', '139', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1785', '绥芬河市', '139', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1786', '西安区', '139', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1787', '阳明区', '139', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1788', '五大连池市', '140', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1789', '北安市', '140', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1790', '嫩江县', '140', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1791', '孙吴县', '140', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1792', '爱辉区', '140', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1793', '车逊克县', '140', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1794', '逊克县', '140', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1795', '兰西县', '141', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1796', '安达市', '141', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1797', '庆安县', '141', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1798', '明水县', '141', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1799', '望奎县', '141', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1800', '海伦市', '141', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1801', '绥化市北林区', '141', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1802', '绥棱县', '141', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1803', '肇东市', '141', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1804', '青冈县', '141', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1805', '呼玛县', '142', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1806', '塔河县', '142', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1807', '大兴安岭地区加格达奇区', '142', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1808', '大兴安岭地区呼中区', '142', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1809', '大兴安岭地区新林区', '142', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1810', '大兴安岭地区松岭区', '142', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('1811', '漠河县', '142', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2027', '下关区', '162', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2028', '六合区', '162', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2029', '建邺区', '162', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2030', '栖霞区', '162', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2031', '江宁区', '162', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2032', '浦口区', '162', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2033', '溧水县', '162', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2034', '玄武区', '162', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2035', '白下区', '162', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2036', '秦淮区', '162', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2037', '雨花台区', '162', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2038', '高淳县', '162', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2039', '鼓楼区', '162', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2040', '北塘区', '163', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2041', '南长区', '163', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2042', '宜兴市', '163', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2043', '崇安区', '163', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2044', '惠山区', '163', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2045', '江阴市', '163', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2046', '滨湖区', '163', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2047', '锡山区', '163', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2048', '丰县', '164', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2049', '九里区', '164', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2050', '云龙区', '164', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2051', '新沂市', '164', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2052', '沛县', '164', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2053', '泉山区', '164', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2054', '睢宁县', '164', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2055', '贾汪区', '164', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2056', '邳州市', '164', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2057', '铜山县', '164', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2058', '鼓楼区', '164', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2059', '天宁区', '165', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2060', '戚墅堰区', '165', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2061', '新北区', '165', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2062', '武进区', '165', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2063', '溧阳市', '165', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2064', '金坛市', '165', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2065', '钟楼区', '165', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2066', '吴中区', '166', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2067', '吴江市', '166', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2068', '太仓市', '166', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2069', '常熟市', '166', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2070', '平江区', '166', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2071', '张家港市', '166', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2072', '昆山市', '166', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2073', '沧浪区', '166', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2074', '相城区', '166', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2075', '苏州工业园区', '166', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2076', '虎丘区', '166', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2077', '金阊区', '166', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2078', '启东市', '167', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2079', '如东县', '167', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2080', '如皋市', '167', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2081', '崇川区', '167', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2082', '海安县', '167', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2083', '海门市', '167', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2084', '港闸区', '167', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2085', '通州市', '167', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2086', '东海县', '168', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2087', '新浦区', '168', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2088', '海州区', '168', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2089', '灌云县', '168', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2090', '灌南县', '168', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2091', '赣榆县', '168', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2092', '连云区', '168', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2093', '楚州区', '169', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2094', '洪泽县', '169', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2095', '涟水县', '169', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2096', '淮阴区', '169', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2097', '清河区', '169', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2098', '清浦区', '169', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2099', '盱眙县', '169', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2100', '金湖县', '169', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2101', '东台市', '170', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2102', '亭湖区', '170', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2103', '响水县', '170', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2104', '大丰市', '170', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2105', '射阳县', '170', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2106', '建湖县', '170', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2107', '滨海县', '170', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2108', '盐都区', '170', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2109', '阜宁县', '170', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2110', '仪征市', '171', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2111', '宝应县', '171', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2112', '广陵区', '171', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2113', '江都市', '171', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2114', '维扬区', '171', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2115', '邗江区', '171', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2116', '高邮市', '171', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2117', '丹徒区', '172', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2118', '丹阳市', '172', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2119', '京口区', '172', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2120', '句容市', '172', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2121', '扬中市', '172', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2122', '润州区', '172', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2123', '兴化市', '173', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2124', '姜堰市', '173', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2125', '泰兴市', '173', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2126', '海陵区', '173', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2127', '靖江市', '173', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2128', '高港区', '173', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2129', '宿城区', '174', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2130', '宿豫区', '174', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2131', '沭阳县', '174', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2132', '泗洪县', '174', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2133', '泗阳县', '174', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2134', '上城区', '175', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2135', '下城区', '175', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2136', '临安市', '175', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2137', '余杭区', '175', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2138', '富阳市', '175', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2139', '建德市', '175', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2140', '拱墅区', '175', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2141', '桐庐县', '175', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2142', '江干区', '175', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2143', '淳安县', '175', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2144', '滨江区', '175', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2145', '萧山区', '175', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2146', '西湖区', '175', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2147', '余姚市', '176', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2148', '北仑区', '176', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2149', '奉化市', '176', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2150', '宁海县', '176', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2151', '慈溪市', '176', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2152', '江东区', '176', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2153', '江北区', '176', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2154', '海曙区', '176', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2155', '象山县', '176', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2156', '鄞州区', '176', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2157', '镇海区', '176', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2158', '乐清市', '177', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2159', '平阳县', '177', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2160', '文成县', '177', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2161', '永嘉县', '177', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2162', '泰顺县', '177', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2163', '洞头县', '177', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2164', '瑞安市', '177', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2165', '瓯海区', '177', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2166', '苍南县', '177', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2167', '鹿城区', '177', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2168', '龙湾区', '177', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2169', '南湖区', '178', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2170', '嘉善县', '178', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2171', '平湖市', '178', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2172', '桐乡市', '178', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2173', '海宁市', '178', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2174', '海盐县', '178', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2175', '秀洲区', '178', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2176', '南浔区', '179', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2177', '吴兴区', '179', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2178', '安吉县', '179', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2179', '德清县', '179', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2180', '长兴县', '179', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2181', '上虞市', '180', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2182', '嵊州市', '180', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2183', '新昌县', '180', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2184', '绍兴县', '180', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2185', '诸暨市', '180', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2186', '越城区', '180', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2187', '定海区', '181', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2188', '岱山县', '181', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2189', '嵊泗县', '181', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2190', '普陀区', '181', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2191', '常山县', '182', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2192', '开化县', '182', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2193', '柯城区', '182', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2194', '江山市', '182', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2195', '衢江区', '182', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2196', '龙游县', '182', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2197', '东阳市', '183', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2198', '义乌市', '183', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2199', '兰溪市', '183', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2200', '婺城区', '183', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2201', '武义县', '183', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2202', '永康市', '183', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2203', '浦江县', '183', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2204', '磐安县', '183', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2205', '金东区', '183', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2206', '三门县', '184', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2207', '临海市', '184', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2208', '仙居县', '184', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2209', '天台县', '184', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2210', '椒江区', '184', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2211', '温岭市', '184', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2212', '玉环县', '184', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2213', '路桥区', '184', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2214', '黄岩区', '184', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2215', '云和县', '185', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2216', '庆元县', '185', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2217', '景宁畲族自治县', '185', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2218', '松阳县', '185', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2219', '缙云县', '185', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2220', '莲都区', '185', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2221', '遂昌县', '185', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2222', '青田县', '185', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2223', '龙泉市', '185', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2224', '包河区', '186', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2225', '庐阳区', '186', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2226', '瑶海区', '186', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2227', '肥东县', '186', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2228', '肥西县', '186', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2229', '蜀山区', '186', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2230', '长丰县', '186', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2231', '三山区', '187', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2232', '南陵县', '187', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2233', '弋江区', '187', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2234', '繁昌县', '187', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2235', '芜湖县', '187', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2236', '镜湖区', '187', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2237', '鸠江区', '187', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2238', '五河县', '188', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2239', '固镇县', '188', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2240', '怀远县', '188', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2241', '淮上区', '188', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2242', '禹会区', '188', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2243', '蚌山区', '188', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2244', '龙子湖区', '188', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2245', '八公山区', '189', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2246', '凤台县', '189', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2247', '大通区', '189', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2248', '潘集区', '189', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2249', '田家庵区', '189', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2250', '谢家集区', '189', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2251', '当涂县', '190', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2252', '花山区', '190', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2253', '金家庄区', '190', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2254', '雨山区', '190', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2255', '杜集区', '191', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2256', '濉溪县', '191', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2257', '烈山区', '191', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2258', '相山区', '191', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2259', '狮子山区', '192', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2260', '郊区', '192', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2261', '铜官山区', '192', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2262', '铜陵县', '192', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2263', '大观区', '193', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2264', '太湖县', '193', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2265', '宜秀区', '193', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2266', '宿松县', '193', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2267', '岳西县', '193', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2268', '怀宁县', '193', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2269', '望江县', '193', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2270', '枞阳县', '193', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2271', '桐城市', '193', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2272', '潜山县', '193', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2273', '迎江区', '193', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2274', '休宁县', '194', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2275', '屯溪区', '194', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2276', '徽州区', '194', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2277', '歙县', '194', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2278', '祁门县', '194', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2279', '黄山区', '194', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2280', '黟县', '194', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2281', '全椒县', '195', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2282', '凤阳县', '195', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2283', '南谯区', '195', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2284', '天长市', '195', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2285', '定远县', '195', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2286', '明光市', '195', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2287', '来安县', '195', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2288', '琅玡区', '195', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2289', '临泉县', '196', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2290', '太和县', '196', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2291', '界首市', '196', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2292', '阜南县', '196', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2293', '颍东区', '196', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2294', '颍州区', '196', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2295', '颍泉区', '196', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2296', '颖上县', '196', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2297', '埇桥区', '197', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2298', '泗县辖', '197', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2299', '灵璧县', '197', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2300', '砀山县', '197', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2301', '萧县', '197', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2302', '含山县', '198', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2303', '和县', '198', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2304', '居巢区', '198', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2305', '庐江县', '198', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2306', '无为县', '198', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2307', '寿县', '199', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2308', '舒城县', '199', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2309', '裕安区', '199', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2310', '金安区', '199', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2311', '金寨县', '199', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2312', '霍山县', '199', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2313', '霍邱县', '199', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2314', '利辛县', '200', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2315', '涡阳县', '200', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2316', '蒙城县', '200', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2317', '谯城区', '200', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2318', '东至县', '201', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2319', '石台县', '201', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2320', '贵池区', '201', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2321', '青阳县', '201', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2322', '宁国市', '202', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2323', '宣州区', '202', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2324', '广德县', '202', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2325', '旌德县', '202', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2326', '泾县', '202', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2327', '绩溪县', '202', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2328', '郎溪县', '202', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2329', '仓山区', '203', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2330', '台江区', '203', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2331', '平潭县', '203', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2332', '晋安区', '203', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2333', '永泰县', '203', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2334', '福清市', '203', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2335', '罗源县', '203', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2336', '连江县', '203', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2337', '长乐市', '203', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2338', '闽侯县', '203', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2339', '闽清县', '203', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2340', '马尾区', '203', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2341', '鼓楼区', '203', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2342', '同安区', '204', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2343', '思明区', '204', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2344', '海沧区', '204', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2345', '湖里区', '204', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2346', '翔安区', '204', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2347', '集美区', '204', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2348', '仙游县', '205', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2349', '城厢区', '205', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2350', '涵江区', '205', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2351', '秀屿区', '205', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2352', '荔城区', '205', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2353', '三元区', '206', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2354', '大田县', '206', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2355', '宁化县', '206', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2356', '将乐县', '206', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2357', '尤溪县', '206', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2358', '建宁县', '206', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2359', '明溪县', '206', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2360', '梅列区', '206', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2361', '永安市', '206', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2362', '沙县', '206', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2363', '泰宁县', '206', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2364', '清流县', '206', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2365', '丰泽区', '207', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2366', '南安市', '207', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2367', '安溪县', '207', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2368', '德化县', '207', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2369', '惠安县', '207', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2370', '晋江市', '207', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2371', '永春县', '207', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2372', '泉港区', '207', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2373', '洛江区', '207', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2374', '石狮市', '207', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2375', '金门县', '207', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2376', '鲤城区', '207', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2377', '东山县', '208', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2378', '云霄县', '208', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2379', '华安县', '208', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2380', '南靖县', '208', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2381', '平和县', '208', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2382', '漳浦县', '208', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2383', '芗城区', '208', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2384', '诏安县', '208', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2385', '长泰县', '208', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2386', '龙文区', '208', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2387', '龙海市', '208', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2388', '光泽县', '209', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2389', '延平区', '209', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2390', '建瓯市', '209', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2391', '建阳市', '209', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2392', '政和县', '209', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2393', '松溪县', '209', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2394', '武夷山市', '209', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2395', '浦城县', '209', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2396', '邵武市', '209', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2397', '顺昌县', '209', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2398', '上杭县', '210', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2399', '新罗区', '210', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2400', '武平县', '210', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2401', '永定县', '210', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2402', '漳平市', '210', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2403', '连城县', '210', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2404', '长汀县', '210', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2405', '古田县', '211', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2406', '周宁县', '211', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2407', '寿宁县', '211', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2408', '屏南县', '211', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2409', '柘荣县', '211', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2410', '福安市', '211', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2411', '福鼎市', '211', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2412', '蕉城区', '211', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2413', '霞浦县', '211', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2414', '东湖区', '212', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2415', '南昌县', '212', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2416', '安义县', '212', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2417', '新建县', '212', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2418', '湾里区', '212', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2419', '西湖区', '212', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2420', '进贤县', '212', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2421', '青云谱区', '212', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2422', '青山湖区', '212', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2423', '乐平市', '213', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2424', '昌江区', '213', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2425', '浮梁县', '213', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2426', '珠山区', '213', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2427', '上栗县', '214', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2428', '安源区', '214', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2429', '湘东区', '214', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2430', '芦溪县', '214', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2431', '莲花县', '214', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2432', '九江县', '215', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2433', '修水县', '215', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2434', '庐山区', '215', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2435', '彭泽县', '215', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2436', '德安县', '215', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2437', '星子县', '215', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2438', '武宁县', '215', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2439', '永修县', '215', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2440', '浔阳区', '215', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2441', '湖口县', '215', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2442', '瑞昌市', '215', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2443', '都昌县', '215', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2444', '分宜县', '216', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2445', '渝水区', '216', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2446', '余江县', '217', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2447', '月湖区', '217', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2448', '贵溪市', '217', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2449', '上犹县', '218', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2450', '于都县', '218', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2451', '会昌县', '218', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2452', '信丰县', '218', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2453', '全南县', '218', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2454', '兴国县', '218', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2455', '南康市', '218', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2456', '大余县', '218', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2457', '宁都县', '218', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2458', '安远县', '218', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2459', '定南县', '218', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2460', '寻乌县', '218', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2461', '崇义县', '218', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2462', '瑞金市', '218', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2463', '石城县', '218', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2464', '章贡区', '218', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2465', '赣县', '218', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2466', '龙南县', '218', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2467', '万安县', '219', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2468', '井冈山市', '219', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2469', '吉安县', '219', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2470', '吉州区', '219', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2471', '吉水县', '219', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2472', '安福县', '219', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2473', '峡江县', '219', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2474', '新干县', '219', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2475', '永丰县', '219', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2476', '永新县', '219', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2477', '泰和县', '219', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2478', '遂川县', '219', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2479', '青原区', '219', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2480', '万载县', '220', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2481', '上高县', '220', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2482', '丰城市', '220', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2483', '奉新县', '220', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2484', '宜丰县', '220', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2485', '樟树市', '220', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2486', '袁州区', '220', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2487', '铜鼓县', '220', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2488', '靖安县', '220', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2489', '高安市', '220', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2490', '东乡县', '221', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2491', '临川区', '221', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2492', '乐安县', '221', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2493', '南丰县', '221', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2494', '南城县', '221', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2495', '宜黄县', '221', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2496', '崇仁县', '221', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2497', '广昌县', '221', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2498', '资溪县', '221', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2499', '金溪县', '221', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2500', '黎川县', '221', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2501', '万年县', '222', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2502', '上饶县', '222', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2503', '余干县', '222', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2504', '信州区', '222', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2505', '婺源县', '222', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2506', '广丰县', '222', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2507', '弋阳县', '222', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2508', '德兴市', '222', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2509', '横峰县', '222', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2510', '玉山县', '222', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2511', '鄱阳县', '222', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2512', '铅山县', '222', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2513', '历下区', '223', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2514', '历城区', '223', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2515', '商河县', '223', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2516', '天桥区', '223', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2517', '市中区', '223', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2518', '平阴县', '223', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2519', '槐荫区', '223', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2520', '济阳县', '223', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2521', '章丘市', '223', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2522', '长清区', '223', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2523', '即墨市', '224', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2524', '四方区', '224', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2525', '城阳区', '224', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2526', '崂山区', '224', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2527', '市北区', '224', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2528', '市南区', '224', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2529', '平度市', '224', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2530', '李沧区', '224', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2531', '胶南市', '224', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2532', '胶州市', '224', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2533', '莱西市', '224', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2534', '黄岛区', '224', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2535', '临淄区', '225', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2536', '博山区', '225', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2537', '周村区', '225', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2538', '张店区', '225', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2539', '桓台县', '225', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2540', '沂源县', '225', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2541', '淄川区', '225', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2542', '高青县', '225', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2543', '台儿庄区', '226', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2544', '山亭区', '226', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2545', '峄城区', '226', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2546', '市中区', '226', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2547', '滕州市', '226', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2548', '薛城区', '226', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2549', '东营区', '227', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2550', '利津县', '227', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2551', '垦利县', '227', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2552', '广饶县', '227', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2553', '河口区', '227', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2554', '招远市', '228', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2555', '栖霞市', '228', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2556', '海阳市', '228', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2557', '牟平区', '228', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2558', '福山区', '228', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2559', '芝罘区', '228', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2560', '莱山区', '228', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2561', '莱州市', '228', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2562', '莱阳市', '228', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2563', '蓬莱市', '228', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2564', '长岛县', '228', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2565', '龙口市', '228', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2566', '临朐县', '229', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2567', '坊子区', '229', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2568', '奎文区', '229', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2569', '安丘市', '229', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2570', '寒亭区', '229', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2571', '寿光市', '229', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2572', '昌乐县', '229', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2573', '昌邑市', '229', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2574', '潍城区', '229', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2575', '诸城市', '229', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2576', '青州市', '229', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2577', '高密市', '229', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2578', '任城区', '230', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2579', '兖州市', '230', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2580', '嘉祥县', '230', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2581', '市中区', '230', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2582', '微山县', '230', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2583', '曲阜市', '230', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2584', '梁山县', '230', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2585', '汶上县', '230', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2586', '泗水县', '230', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2587', '邹城市', '230', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2588', '金乡县', '230', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2589', '鱼台县', '230', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2590', '东平县', '231', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2591', '宁阳县', '231', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2592', '岱岳区', '231', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2593', '新泰市', '231', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2594', '泰山区', '231', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2595', '肥城市', '231', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2596', '乳山市', '232', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2597', '文登市', '232', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2598', '环翠区', '232', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2599', '荣成市', '232', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2600', '东港区', '233', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2601', '五莲县', '233', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2602', '岚山区', '233', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2603', '莒县', '233', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2604', '莱城区', '234', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2605', '钢城区', '234', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2606', '临沭县', '235', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2607', '兰山区', '235', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2608', '平邑县', '235', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2609', '沂南县', '235', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2610', '沂水县', '235', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2611', '河东区', '235', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2612', '罗庄区', '235', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2613', '苍山县', '235', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2614', '莒南县', '235', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2615', '蒙阴县', '235', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2616', '费县', '235', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2617', '郯城县', '235', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2618', '临邑县', '236', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2619', '乐陵市', '236', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2620', '夏津县', '236', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2621', '宁津县', '236', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2622', '平原县', '236', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2623', '庆云县', '236', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2624', '德城区', '236', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2625', '武城县', '236', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2626', '禹城市', '236', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2627', '陵县', '236', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2628', '齐河县', '236', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2629', '东昌府区', '237', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2630', '东阿县', '237', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2631', '临清市', '237', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2632', '冠县', '237', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2633', '茌平县', '237', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2634', '莘县', '237', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2635', '阳谷县', '237', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2636', '高唐县', '237', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2637', '博兴县', '238', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2638', '惠民县', '238', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2639', '无棣县', '238', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2640', '沾化县', '238', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2641', '滨城区', '238', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2642', '邹平县', '238', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2643', '阳信县', '238', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2644', '东明县', '239', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2645', '单县', '239', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2646', '定陶县', '239', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2647', '巨野县', '239', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2648', '成武县', '239', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2649', '曹县', '239', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2650', '牡丹区', '239', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2651', '郓城县', '239', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2652', '鄄城县', '239', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2653', '上街区', '240', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2654', '中原区', '240', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2655', '中牟县', '240', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2656', '二七区', '240', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2657', '巩义市', '240', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2658', '惠济区', '240', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2659', '新密市', '240', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2660', '新郑市', '240', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2661', '登封市', '240', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2662', '管城回族区', '240', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2663', '荥阳市', '240', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2664', '金水区', '240', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2665', '兰考县', '241', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2666', '尉氏县', '241', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2667', '开封县', '241', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2668', '杞县', '241', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2669', '禹王台区', '241', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2670', '通许县', '241', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2671', '金明区', '241', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2672', '顺河回族区', '241', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2673', '鼓楼区', '241', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2674', '龙亭区', '241', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2675', '伊川县', '242', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2676', '偃师市', '242', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2677', '吉利区', '242', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2678', '孟津县', '242', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2679', '宜阳县', '242', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2680', '嵩县', '242', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2681', '新安县', '242', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2682', '栾川县', '242', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2683', '汝阳县', '242', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2684', '洛宁县', '242', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2685', '洛龙区', '242', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2686', '涧西区', '242', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2687', '瀍河回族区', '242', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2688', '老城区', '242', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2689', '西工区', '242', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2690', '卫东区', '243', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2691', '叶县', '243', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2692', '宝丰县', '243', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2693', '新华区', '243', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2694', '汝州市', '243', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2695', '湛河区', '243', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2696', '石龙区', '243', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2697', '舞钢市', '243', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2698', '郏县', '243', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2699', '鲁山县', '243', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2700', '内黄县', '244', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2701', '北关区', '244', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2702', '安阳县', '244', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2703', '文峰区', '244', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2704', '林州市', '244', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2705', '殷都区', '244', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2706', '汤阴县', '244', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2707', '滑县', '244', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2708', '龙安区', '244', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2709', '山城区', '245', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2710', '浚县', '245', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2711', '淇县', '245', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2712', '淇滨区', '245', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2713', '鹤山区', '245', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2714', '凤泉区', '246', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2715', '卫滨区', '246', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2716', '卫辉市', '246', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2717', '原阳县', '246', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2718', '封丘县', '246', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2719', '延津县', '246', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2720', '新乡县', '246', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2721', '牧野区', '246', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2722', '红旗区', '246', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2723', '获嘉县', '246', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2724', '辉县市', '246', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2725', '长垣县', '246', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2726', '中站区', '247', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2727', '修武县', '247', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2728', '博爱县', '247', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2729', '孟州市', '247', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2730', '山阳区', '247', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2731', '武陟县', '247', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2732', '沁阳市', '247', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2733', '温县', '247', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2734', '解放区', '247', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2735', '马村区', '247', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2736', '华龙区', '248', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2737', '南乐县', '248', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2738', '台前县', '248', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2739', '清丰县', '248', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2740', '濮阳县', '248', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2741', '范县', '248', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2742', '禹州市', '249', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2743', '襄城县', '249', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2744', '许昌县', '249', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2745', '鄢陵县', '249', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2746', '长葛市', '249', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2747', '魏都区', '249', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2748', '临颍县', '250', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2749', '召陵区', '250', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2750', '源汇区', '250', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2751', '舞阳县', '250', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2752', '郾城区', '250', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2753', '义马市', '251', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2754', '卢氏县', '251', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2755', '渑池县', '251', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2756', '湖滨区', '251', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2757', '灵宝市', '251', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2758', '陕县', '251', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2759', '内乡县', '252', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2760', '南召县', '252', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2761', '卧龙区', '252', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2762', '唐河县', '252', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2763', '宛城区', '252', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2764', '新野县', '252', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2765', '方城县', '252', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2766', '桐柏县', '252', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2767', '淅川县', '252', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2768', '社旗县', '252', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2769', '西峡县', '252', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2770', '邓州市', '252', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2771', '镇平县', '252', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2772', '夏邑县', '253', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2773', '宁陵县', '253', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2774', '柘城县', '253', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2775', '民权县', '253', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2776', '永城市', '253', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2777', '睢县', '253', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2778', '睢阳区', '253', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2779', '粱园区', '253', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2780', '虞城县', '253', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2781', '光山县', '254', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2782', '商城县', '254', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2783', '固始县', '254', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2784', '平桥区', '254', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2785', '息县', '254', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2786', '新县', '254', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2787', '浉河区', '254', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2788', '淮滨县', '254', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2789', '潢川县', '254', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2790', '罗山县', '254', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2791', '商水县', '255', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2792', '太康县', '255', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2793', '川汇区', '255', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2794', '扶沟县', '255', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2795', '沈丘县', '255', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2796', '淮阳县', '255', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2797', '西华县', '255', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2798', '郸城县', '255', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2799', '项城市', '255', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2800', '鹿邑县', '255', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2801', '上蔡县', '256', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2802', '平舆县', '256', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2803', '新蔡县', '256', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2804', '正阳县', '256', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2805', '汝南县', '256', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2806', '泌阳县', '256', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2807', '确山县', '256', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2808', '西平县', '256', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2809', '遂平县', '256', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2810', '驿城区', '256', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2811', '济源市', '257', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2812', '东西湖区', '258', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2813', '新洲区', '258', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2814', '武昌区', '258', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2815', '汉南区', '258', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2816', '汉阳区', '258', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2817', '江夏区', '258', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2818', '江岸区', '258', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2819', '江汉区', '258', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2820', '洪山区', '258', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2821', '硚口区', '258', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2822', '蔡甸区', '258', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2823', '青山区', '258', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2824', '黄陂区', '258', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2825', '下陆区', '259', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2826', '大冶市', '259', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2827', '西塞山区', '259', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2828', '铁山区', '259', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2829', '阳新县', '259', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2830', '黄石港区', '259', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2831', '丹江口市', '260', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2832', '张湾区', '260', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2833', '房县', '260', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2834', '竹山县', '260', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2835', '竹溪县', '260', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2836', '茅箭区', '260', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2837', '郧县', '260', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2838', '郧西县', '260', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2839', '五峰土家族自治县', '261', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2840', '伍家岗区', '261', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2841', '兴山县', '261', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2842', '夷陵区', '261', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2843', '宜都市', '261', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2844', '当阳市', '261', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2845', '枝江市', '261', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2846', '点军区', '261', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2847', '秭归县', '261', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2848', '虢亭区', '261', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2849', '西陵区', '261', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2850', '远安县', '261', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2851', '长阳土家族自治县', '261', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2852', '保康县', '262', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2853', '南漳县', '262', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2854', '宜城市', '262', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2855', '枣阳市', '262', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2856', '樊城区', '262', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2857', '老河口市', '262', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2858', '襄城区', '262', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2859', '襄阳区', '262', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2860', '谷城县', '262', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2861', '华容区', '263', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2862', '粱子湖', '263', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2863', '鄂城区', '263', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2864', '东宝区', '264', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2865', '京山县', '264', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2866', '掇刀区', '264', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2867', '沙洋县', '264', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2868', '钟祥市', '264', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2869', '云梦县', '265', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2870', '大悟县', '265', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2871', '孝南区', '265', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2872', '孝昌县', '265', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2873', '安陆市', '265', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2874', '应城市', '265', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2875', '汉川市', '265', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2876', '公安县', '266', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2877', '松滋市', '266', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2878', '江陵县', '266', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2879', '沙市区', '266', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2880', '洪湖市', '266', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2881', '监利县', '266', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2882', '石首市', '266', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2883', '荆州区', '266', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2884', '团风县', '267', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2885', '武穴市', '267', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2886', '浠水县', '267', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2887', '红安县', '267', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2888', '罗田县', '267', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2889', '英山县', '267', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2890', '蕲春县', '267', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2891', '麻城市', '267', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2892', '黄州区', '267', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2893', '黄梅县', '267', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2894', '咸安区', '268', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2895', '嘉鱼县', '268', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2896', '崇阳县', '268', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2897', '赤壁市', '268', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2898', '通城县', '268', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2899', '通山县', '268', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2900', '广水市', '269', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2901', '曾都区', '269', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2902', '利川市', '270', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2903', '咸丰县', '270', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2904', '宣恩县', '270', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2905', '巴东县', '270', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2906', '建始县', '270', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2907', '恩施市', '270', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2908', '来凤县', '270', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2909', '鹤峰县', '270', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2910', '仙桃市', '271', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2911', '潜江市', '272', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2912', '天门市', '273', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2913', '神农架林区', '274', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2914', '天心区', '275', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2915', '宁乡县', '275', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2916', '岳麓区', '275', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2917', '开福区', '275', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2918', '望城县', '275', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2919', '浏阳市', '275', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2920', '芙蓉区', '275', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2921', '长沙县', '275', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2922', '雨花区', '275', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2923', '天元区', '276', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2924', '攸县', '276', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2925', '株洲县', '276', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2926', '炎陵县', '276', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2927', '石峰区', '276', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2928', '芦淞区', '276', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2929', '茶陵县', '276', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2930', '荷塘区', '276', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2931', '醴陵市', '276', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2932', '岳塘区', '277', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2933', '湘乡市', '277', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2934', '湘潭县', '277', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2935', '雨湖区', '277', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2936', '韶山市', '277', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2937', '南岳区', '278', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2938', '常宁市', '278', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2939', '珠晖区', '278', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2940', '石鼓区', '278', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2941', '祁东县', '278', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2942', '耒阳市', '278', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2943', '蒸湘区', '278', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2944', '衡东县', '278', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2945', '衡南县', '278', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2946', '衡山县', '278', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2947', '衡阳县', '278', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2948', '雁峰区', '278', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2949', '北塔区', '279', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2950', '双清区', '279', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2951', '城步苗族自治县', '279', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2952', '大祥区', '279', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2953', '新宁县', '279', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2954', '新邵县', '279', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2955', '武冈市', '279', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2956', '洞口县', '279', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2957', '绥宁县', '279', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2958', '邵东县', '279', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2959', '邵阳县', '279', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2960', '隆回县', '279', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2961', '临湘市', '280', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2962', '云溪区', '280', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2963', '华容县', '280', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2964', '君山区', '280', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2965', '岳阳县', '280', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2966', '岳阳楼区', '280', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2967', '平江县', '280', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2968', '汨罗市', '280', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2969', '湘阴县', '280', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2970', '临澧县', '281', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2971', '安乡县', '281', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2972', '桃源县', '281', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2973', '武陵区', '281', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2974', '汉寿县', '281', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2975', '津市市', '281', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2976', '澧县', '281', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2977', '石门县', '281', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2978', '鼎城区', '281', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2979', '慈利县', '282', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2980', '桑植县', '282', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2981', '武陵源区', '282', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2982', '永定区', '282', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2983', '南县', '283', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2984', '安化县', '283', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2985', '桃江县', '283', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2986', '沅江市', '283', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2987', '资阳区', '283', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2988', '赫山区', '283', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2989', '临武县', '284', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2990', '北湖区', '284', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2991', '嘉禾县', '284', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2992', '安仁县', '284', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2993', '宜章县', '284', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2994', '桂东县', '284', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2995', '桂阳县', '284', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2996', '永兴县', '284', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2997', '汝城县', '284', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2998', '苏仙区', '284', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('2999', '资兴市', '284', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3000', '东安县', '285', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3001', '冷水滩区', '285', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3002', '双牌县', '285', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3003', '宁远县', '285', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3004', '新田县', '285', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3005', '江华瑶族自治县', '285', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3006', '江永县', '285', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3007', '祁阳县', '285', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3008', '蓝山县', '285', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3009', '道县', '285', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3010', '零陵区', '285', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3011', '中方县', '286', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3012', '会同县', '286', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3013', '新晃侗族自治县', '286', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3014', '沅陵县', '286', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3015', '洪江市/洪江区', '286', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3016', '溆浦县', '286', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3017', '芷江侗族自治县', '286', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3018', '辰溪县', '286', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3019', '通道侗族自治县', '286', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3020', '靖州苗族侗族自治县', '286', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3021', '鹤城区', '286', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3022', '麻阳苗族自治县', '286', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3023', '冷水江市', '287', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3024', '双峰县', '287', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3025', '娄星区', '287', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3026', '新化县', '287', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3027', '涟源市', '287', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3028', '保靖县', '288', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3029', '凤凰县', '288', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3030', '古丈县', '288', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3031', '吉首市', '288', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3032', '永顺县', '288', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3033', '泸溪县', '288', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3034', '花垣县', '288', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3035', '龙山县', '288', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3036', '萝岗区', '289', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3037', '南沙区', '289', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3038', '从化市', '289', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3039', '增城市', '289', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3040', '天河区', '289', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3041', '海珠区', '289', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3042', '番禺区', '289', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3043', '白云区', '289', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3044', '花都区', '289', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3045', '荔湾区', '289', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3046', '越秀区', '289', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3047', '黄埔区', '289', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3048', '乐昌市', '290', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3049', '乳源瑶族自治县', '290', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3050', '仁化县', '290', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3051', '南雄市', '290', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3052', '始兴县', '290', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3053', '新丰县', '290', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3054', '曲江区', '290', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3055', '武江区', '290', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3056', '浈江区', '290', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3057', '翁源县', '290', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3058', '南山区', '291', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3059', '宝安区', '291', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3060', '盐田区', '291', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3061', '福田区', '291', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3062', '罗湖区', '291', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3063', '龙岗区', '291', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3064', '斗门区', '292', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3065', '金湾区', '292', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3066', '香洲区', '292', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3067', '南澳县', '293', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3068', '潮南区', '293', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3069', '潮阳区', '293', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3070', '澄海区', '293', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3071', '濠江区', '293', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3072', '金平区', '293', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3073', '龙湖区', '293', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3074', '三水区', '294', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3075', '南海区', '294', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3076', '禅城区', '294', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3077', '顺德区', '294', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3078', '高明区', '294', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3079', '台山市', '295', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3080', '开平市', '295', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3081', '恩平市', '295', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3082', '新会区', '295', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3083', '江海区', '295', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3084', '蓬江区', '295', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3085', '鹤山市', '295', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3086', '吴川市', '296', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3087', '坡头区', '296', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3088', '廉江市', '296', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3089', '徐闻县', '296', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3090', '赤坎区', '296', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3091', '遂溪县', '296', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3092', '雷州市', '296', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3093', '霞山区', '296', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3094', '麻章区', '296', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3095', '信宜市', '297', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3096', '化州市', '297', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3097', '电白县', '297', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3098', '茂南区', '297', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3099', '茂港区', '297', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3100', '高州市', '297', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3101', '四会市', '298', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3102', '封开县', '298', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3103', '广宁县', '298', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3104', '德庆县', '298', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3105', '怀集县', '298', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3106', '端州区', '298', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3107', '高要市', '298', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3108', '鼎湖区', '298', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3109', '博罗县', '299', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3110', '惠东县', '299', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3111', '惠城区', '299', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3112', '惠阳区', '299', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3113', '龙门县', '299', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3114', '丰顺县', '300', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3115', '五华县', '300', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3116', '兴宁市', '300', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3117', '大埔县', '300', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3118', '平远县', '300', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3119', '梅县', '300', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3120', '梅江区', '300', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3121', '蕉岭县', '300', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3122', '城区', '301', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3123', '海丰县', '301', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3124', '陆丰市', '301', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3125', '陆河县', '301', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3126', '东源县', '302', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3127', '和平县', '302', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3128', '源城区', '302', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3129', '紫金县', '302', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3130', '连平县', '302', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3131', '龙川县', '302', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3132', '江城区', '303', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3133', '阳东县', '303', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3134', '阳春市', '303', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3135', '阳西县', '303', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3136', '佛冈县', '304', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3137', '清城区', '304', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3138', '清新县', '304', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3139', '英德市', '304', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3140', '连南瑶族自治县', '304', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3141', '连山壮族瑶族自治县', '304', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3142', '连州市', '304', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3143', '阳山县', '304', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3144', '东莞市', '305', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3145', '中山市', '306', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3146', '湘桥区', '307', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3147', '潮安县', '307', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3148', '饶平县', '307', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3149', '惠来县', '308', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3150', '揭东县', '308', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3151', '揭西县', '308', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3152', '普宁市', '308', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3153', '榕城区', '308', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3154', '云城区', '309', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3155', '云安县', '309', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3156', '新兴县', '309', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3157', '罗定市', '309', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3158', '郁南县', '309', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3159', '上林县', '310', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3160', '兴宁区', '310', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3161', '宾阳县', '310', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3162', '横县', '310', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3163', '武鸣县', '310', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3164', '江南区', '310', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3165', '良庆区', '310', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3166', '西乡塘区', '310', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3167', '邕宁区', '310', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3168', '隆安县', '310', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3169', '青秀区', '310', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3170', '马山县', '310', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3171', '三江侗族自治县', '311', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3172', '城中区', '311', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3173', '柳北区', '311', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3174', '柳南区', '311', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3175', '柳城县', '311', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3176', '柳江县', '311', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3177', '融安县', '311', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3178', '融水苗族自治县', '311', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3179', '鱼峰区', '311', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3180', '鹿寨县', '311', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3181', '七星区', '312', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3182', '临桂县', '312', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3183', '全州县', '312', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3184', '兴安县', '312', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3185', '叠彩区', '312', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3186', '平乐县', '312', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3187', '恭城瑶族自治县', '312', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3188', '永福县', '312', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3189', '灌阳县', '312', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3190', '灵川县', '312', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3191', '秀峰区', '312', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3192', '荔浦县', '312', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3193', '象山区', '312', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3194', '资源县', '312', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3195', '阳朔县', '312', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3196', '雁山区', '312', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3197', '龙胜各族自治县', '312', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3198', '万秀区', '313', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3199', '岑溪市', '313', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3200', '苍梧县', '313', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3201', '蒙山县', '313', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3202', '藤县', '313', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3203', '蝶山区', '313', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3204', '长洲区', '313', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3205', '合浦县', '314', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3206', '海城区', '314', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3207', '铁山港区', '314', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3208', '银海区', '314', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3209', '上思县', '315', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3210', '东兴市', '315', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3211', '港口区', '315', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3212', '防城区', '315', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3213', '浦北县', '316', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3214', '灵山县', '316', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3215', '钦北区', '316', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3216', '钦南区', '316', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3217', '平南县', '317', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3218', '桂平市', '317', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3219', '港北区', '317', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3220', '港南区', '317', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3221', '覃塘区', '317', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3222', '兴业县', '318', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3223', '北流市', '318', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3224', '博白县', '318', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3225', '容县', '318', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3226', '玉州区', '318', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3227', '陆川县', '318', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3228', '乐业县', '319', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3229', '凌云县', '319', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3230', '右江区', '319', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3231', '平果县', '319', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3232', '德保县', '319', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3233', '田东县', '319', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3234', '田林县', '319', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3235', '田阳县', '319', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3236', '西林县', '319', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3237', '那坡县', '319', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3238', '隆林各族自治县', '319', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3239', '靖西县', '319', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3240', '八步区', '320', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3241', '富川瑶族自治县', '320', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3242', '昭平县', '320', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3243', '钟山县', '320', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3244', '东兰县', '321', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3245', '凤山县', '321', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3246', '南丹县', '321', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3247', '大化瑶族自治县', '321', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3248', '天峨县', '321', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3249', '宜州市', '321', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3250', '巴马瑶族自治县', '321', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3251', '环江毛南族自治县', '321', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3252', '罗城仫佬族自治县', '321', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3253', '都安瑶族自治县', '321', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3254', '金城江区', '321', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3255', '兴宾区', '322', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3256', '合山市', '322', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3257', '忻城县', '322', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3258', '武宣县', '322', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3259', '象州县', '322', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3260', '金秀瑶族自治县', '322', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3261', '凭祥市', '323', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3262', '大新县', '323', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3263', '天等县', '323', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3264', '宁明县', '323', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3265', '扶绥县', '323', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3266', '江州区', '323', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3267', '龙州县', '323', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3268', '琼山区', '324', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3269', '秀英区', '324', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3270', '美兰区', '324', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3271', '龙华区', '324', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3272', '三亚市', '325', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3273', '五指山市', '326', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3274', '琼海市', '327', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3275', '儋州市', '328', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3276', '文昌市', '329', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3277', '万宁市', '330', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3278', '东方市', '331', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3279', '定安县', '332', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3280', '屯昌县', '333', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3281', '澄迈县', '334', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3282', '临高县', '335', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3283', '白沙黎族自治县', '336', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3284', '昌江黎族自治县', '337', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3285', '乐东黎族自治县', '338', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3286', '陵水黎族自治县', '339', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3287', '保亭黎族苗族自治县', '340', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('3288', '琼中黎族苗族自治县', '341', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4209', '双流县', '385', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4210', '大邑县', '385', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4211', '崇州市', '385', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4212', '彭州市', '385', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4213', '成华区', '385', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4214', '新津县', '385', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4215', '新都区', '385', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4216', '武侯区', '385', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4217', '温江区', '385', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4218', '蒲江县', '385', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4219', '邛崃市', '385', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4220', '郫县', '385', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4221', '都江堰市', '385', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4222', '金堂县', '385', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4223', '金牛区', '385', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4224', '锦江区', '385', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4225', '青白江区', '385', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4226', '青羊区', '385', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4227', '龙泉驿区', '385', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4228', '大安区', '386', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4229', '富顺县', '386', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4230', '沿滩区', '386', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4231', '自流井区', '386', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4232', '荣县', '386', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4233', '贡井区', '386', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4234', '东区', '387', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4235', '仁和区', '387', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4236', '盐边县', '387', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4237', '米易县', '387', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4238', '西区', '387', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4239', '叙永县', '388', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4240', '古蔺县', '388', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4241', '合江县', '388', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4242', '江阳区', '388', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4243', '泸县', '388', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4244', '纳溪区', '388', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4245', '龙马潭区', '388', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4246', '中江县', '389', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4247', '什邡市', '389', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4248', '广汉市', '389', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4249', '旌阳区', '389', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4250', '绵竹市', '389', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4251', '罗江县', '389', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4252', '三台县', '390', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4253', '北川羌族自治县', '390', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4254', '安县', '390', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4255', '平武县', '390', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4256', '梓潼县', '390', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4257', '江油市', '390', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4258', '涪城区', '390', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4259', '游仙区', '390', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4260', '盐亭县', '390', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4261', '元坝区', '391', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4262', '利州区', '391', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4263', '剑阁县', '391', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4264', '旺苍县', '391', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4265', '朝天区', '391', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4266', '苍溪县', '391', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4267', '青川县', '391', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4268', '大英县', '392', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4269', '安居区', '392', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4270', '射洪县', '392', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4271', '船山区', '392', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4272', '蓬溪县', '392', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4273', '东兴区', '393', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4274', '威远县', '393', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4275', '市中区', '393', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4276', '资中县', '393', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4277', '隆昌县', '393', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4278', '五通桥区', '394', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4279', '井研县', '394', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4280', '夹江县', '394', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4281', '峨眉山市', '394', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4282', '峨边彝族自治县', '394', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4283', '市中区', '394', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4284', '沐川县', '394', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4285', '沙湾区', '394', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4286', '犍为县', '394', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4287', '金口河区', '394', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4288', '马边彝族自治县', '394', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4289', '仪陇县', '395', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4290', '南充市嘉陵区', '395', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4291', '南部县', '395', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4292', '嘉陵区', '395', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4293', '营山县', '395', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4294', '蓬安县', '395', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4295', '西充县', '395', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4296', '阆中市', '395', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4297', '顺庆区', '395', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4298', '高坪区', '395', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4299', '东坡区', '396', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4300', '丹棱县', '396', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4301', '仁寿县', '396', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4302', '彭山县', '396', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4303', '洪雅县', '396', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4304', '青神县', '396', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4305', '兴文县', '397', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4306', '南溪县', '397', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4307', '宜宾县', '397', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4308', '屏山县', '397', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4309', '江安县', '397', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4310', '珙县', '397', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4311', '筠连县', '397', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4312', '翠屏区', '397', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4313', '长宁县', '397', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4314', '高县', '397', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4315', '华蓥市', '398', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4316', '岳池县', '398', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4317', '广安区', '398', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4318', '武胜县', '398', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4319', '邻水县', '398', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4320', '万源市', '399', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4321', '大竹县', '399', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4322', '宣汉县', '399', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4323', '开江县', '399', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4324', '渠县', '399', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4325', '达县', '399', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4326', '通川区', '399', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4327', '名山县', '400', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4328', '天全县', '400', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4329', '宝兴县', '400', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4330', '汉源县', '400', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4331', '石棉县', '400', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4332', '芦山县', '400', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4333', '荥经县', '400', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4334', '雨城区', '400', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4335', '南江县', '401', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4336', '巴州区', '401', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4337', '平昌县', '401', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4338', '通江县', '401', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4339', '乐至县', '402', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4340', '安岳县', '402', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4341', '简阳市', '402', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4342', '雁江区', '402', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4343', '九寨沟县', '403', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4344', '壤塘县', '403', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4345', '小金县', '403', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4346', '松潘县', '403', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4347', '汶川县', '403', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4348', '理县', '403', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4349', '红原县', '403', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4350', '若尔盖县', '403', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4351', '茂县', '403', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4352', '金川县', '403', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4353', '阿坝县', '403', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4354', '马尔康县', '403', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4355', '黑水县', '403', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4356', '丹巴县', '404', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4357', '乡城县', '404', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4358', '巴塘县', '404', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4359', '康定县', '404', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4360', '得荣县', '404', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4361', '德格县', '404', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4362', '新龙县', '404', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4363', '泸定县', '404', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4364', '炉霍县', '404', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4365', '理塘县', '404', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4366', '甘孜县', '404', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4367', '白玉县', '404', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4368', '石渠县', '404', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4369', '稻城县', '404', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4370', '色达县', '404', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4371', '道孚县', '404', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4372', '雅江县', '404', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4373', '会东县', '405', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4374', '会理县', '405', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4375', '冕宁县', '405', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4376', '喜德县', '405', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4377', '宁南县', '405', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4378', '布拖县', '405', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4379', '德昌县', '405', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4380', '昭觉县', '405', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4381', '普格县', '405', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4382', '木里藏族自治县', '405', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4383', '甘洛县', '405', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4384', '盐源县', '405', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4385', '美姑县', '405', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4386', '西昌', '405', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4387', '越西县', '405', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4388', '金阳县', '405', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4389', '雷波县', '405', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4390', '乌当区', '406', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4391', '云岩区', '406', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4392', '修文县', '406', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4393', '南明区', '406', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4394', '小河区', '406', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4395', '开阳县', '406', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4396', '息烽县', '406', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4397', '清镇市', '406', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4398', '白云区', '406', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4399', '花溪区', '406', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4400', '六枝特区', '407', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4401', '水城县', '407', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4402', '盘县', '407', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4403', '钟山区', '407', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4404', '习水县', '408', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4405', '仁怀市', '408', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4406', '余庆县', '408', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4407', '凤冈县', '408', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4408', '务川仡佬族苗族自治县', '408', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4409', '桐梓县', '408', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4410', '正安县', '408', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4411', '汇川区', '408', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4412', '湄潭县', '408', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4413', '红花岗区', '408', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4414', '绥阳县', '408', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4415', '赤水市', '408', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4416', '道真仡佬族苗族自治县', '408', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4417', '遵义县', '408', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4418', '关岭布依族苗族自治县', '409', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4419', '平坝县', '409', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4420', '普定县', '409', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4421', '紫云苗族布依族自治县', '409', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4422', '西秀区', '409', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4423', '镇宁布依族苗族自治县', '409', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4424', '万山特区', '410', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4425', '印江土家族苗族自治县', '410', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4426', '德江县', '410', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4427', '思南县', '410', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4428', '松桃苗族自治县', '410', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4429', '江口县', '410', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4430', '沿河土家族自治县', '410', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4431', '玉屏侗族自治县', '410', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4432', '石阡县', '410', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4433', '铜仁市', '410', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4434', '兴义市', '411', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4435', '兴仁县', '411', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4436', '册亨县', '411', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4437', '安龙县', '411', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4438', '普安县', '411', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4439', '晴隆县', '411', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4440', '望谟县', '411', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4441', '贞丰县', '411', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4442', '大方县', '412', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4443', '威宁彝族回族苗族自治县', '412', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4444', '毕节市', '412', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4445', '纳雍县', '412', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4446', '织金县', '412', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4447', '赫章县', '412', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4448', '金沙县', '412', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4449', '黔西县', '412', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4450', '三穗县', '413', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4451', '丹寨县', '413', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4452', '从江县', '413', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4453', '凯里市', '413', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4454', '剑河县', '413', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4455', '台江县', '413', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4456', '天柱县', '413', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4457', '岑巩县', '413', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4458', '施秉县', '413', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4459', '榕江县', '413', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4460', '锦屏县', '413', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4461', '镇远县', '413', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4462', '雷山县', '413', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4463', '麻江县', '413', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4464', '黄平县', '413', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4465', '黎平县', '413', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4466', '三都水族自治县', '414', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4467', '平塘县', '414', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4468', '惠水县', '414', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4469', '独山县', '414', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4470', '瓮安县', '414', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4471', '福泉市', '414', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4472', '罗甸县', '414', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4473', '荔波县', '414', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4474', '贵定县', '414', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4475', '都匀市', '414', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4476', '长顺县', '414', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4477', '龙里县', '414', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4478', '东川区', '415', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4479', '五华区', '415', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4480', '呈贡县', '415', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4481', '安宁市', '415', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4482', '官渡区', '415', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4483', '宜良县', '415', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4484', '富民县', '415', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4485', '寻甸回族彝族自治县', '415', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4486', '嵩明县', '415', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4487', '晋宁县', '415', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4488', '盘龙区', '415', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4489', '石林彝族自治县', '415', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4490', '禄劝彝族苗族自治县', '415', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4491', '西山区', '415', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4492', '会泽县', '416', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4493', '宣威市', '416', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4494', '富源县', '416', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4495', '师宗县', '416', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4496', '沾益县', '416', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4497', '罗平县', '416', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4498', '陆良县', '416', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4499', '马龙县', '416', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4500', '麒麟区', '416', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4501', '元江哈尼族彝族傣族自治县', '417', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4502', '华宁县', '417', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4503', '峨山彝族自治县', '417', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4504', '新平彝族傣族自治县', '417', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4505', '易门县', '417', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4506', '江川县', '417', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4507', '澄江县', '417', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4508', '红塔区', '417', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4509', '通海县', '417', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4510', '施甸县', '418', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4511', '昌宁县', '418', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4512', '腾冲县', '418', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4513', '隆阳区', '418', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4514', '龙陵县', '418', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4515', '大关县', '419', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4516', '威信县', '419', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4517', '巧家县', '419', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4518', '彝良县', '419', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4519', '昭阳区', '419', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4520', '水富县', '419', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4521', '永善县', '419', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4522', '盐津县', '419', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4523', '绥江县', '419', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4524', '镇雄县', '419', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4525', '鲁甸县', '419', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4526', '华坪县', '420', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4527', '古城区', '420', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4528', '宁蒗彝族自治县', '420', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4529', '永胜县', '420', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4530', '玉龙纳西族自治县', '420', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4531', '临翔区', '422', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4532', '云县', '422', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4533', '凤庆县', '422', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4534', '双江拉祜族佤族布朗族傣族自治县', '422', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4535', '永德县', '422', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4536', '沧源佤族自治县', '422', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4537', '耿马傣族佤族自治县', '422', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4538', '镇康县', '422', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4539', '元谋县', '423', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4540', '南华县', '423', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4541', '双柏县', '423', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4542', '大姚县', '423', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4543', '姚安县', '423', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4544', '楚雄市', '423', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4545', '武定县', '423', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4546', '永仁县', '423', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4547', '牟定县', '423', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4548', '禄丰县', '423', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4549', '个旧市', '424', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4550', '元阳县', '424', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4551', '屏边苗族自治县', '424', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4552', '建水县', '424', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4553', '开远市', '424', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4554', '弥勒县', '424', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4555', '河口瑶族自治县', '424', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4556', '泸西县', '424', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4557', '石屏县', '424', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4558', '红河县', '424', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4559', '绿春县', '424', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4560', '蒙自县', '424', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4561', '金平苗族瑶族傣族自治县', '424', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4562', '丘北县', '425', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4563', '富宁县', '425', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4564', '广南县', '425', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4565', '文山县', '425', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4566', '砚山县', '425', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4567', '西畴县', '425', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4568', '马关县', '425', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4569', '麻栗坡县', '425', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4570', '勐海县', '426', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4571', '勐腊县', '426', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4572', '景洪市', '426', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4573', '云龙县', '427', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4574', '剑川县', '427', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4575', '南涧彝族自治县', '427', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4576', '大理市', '427', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4577', '宾川县', '427', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4578', '巍山彝族回族自治县', '427', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4579', '弥渡县', '427', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4580', '永平县', '427', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4581', '洱源县', '427', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4582', '漾濞彝族自治县', '427', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4583', '祥云县', '427', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4584', '鹤庆县', '427', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4585', '梁河县', '428', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4586', '潞西市', '428', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4587', '瑞丽市', '428', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4588', '盈江县', '428', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4589', '陇川县', '428', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4590', '德钦县', '430', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4591', '维西傈僳族自治县', '430', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4592', '香格里拉县', '430', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4593', '城关区', '431', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4594', '堆龙德庆县', '431', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4595', '墨竹工卡县', '431', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4596', '尼木县', '431', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4597', '当雄县', '431', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4598', '曲水县', '431', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4599', '林周县', '431', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4600', '达孜县', '431', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4601', '丁青县', '432', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4602', '八宿县', '432', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4603', '察雅县', '432', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4604', '左贡县', '432', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4605', '昌都县', '432', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4606', '江达县', '432', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4607', '洛隆县', '432', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4608', '类乌齐县', '432', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4609', '芒康县', '432', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4610', '贡觉县', '432', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4611', '边坝县', '432', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4612', '乃东县', '433', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4613', '加查县', '433', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4614', '扎囊县', '433', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4615', '措美县', '433', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4616', '曲松县', '433', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4617', '桑日县', '433', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4618', '洛扎县', '433', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4619', '浪卡子县', '433', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4620', '琼结县', '433', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4621', '贡嘎县', '433', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4622', '错那县', '433', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4623', '隆子县', '433', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4624', '亚东县', '434', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4625', '仁布县', '434', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4626', '仲巴县', '434', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4627', '南木林县', '434', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4628', '吉隆县', '434', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4629', '定日县', '434', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4630', '定结县', '434', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4631', '岗巴县', '434', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4632', '康马县', '434', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4633', '拉孜县', '434', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4634', '日喀则市', '434', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4635', '昂仁县', '434', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4636', '江孜县', '434', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4637', '白朗县', '434', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4638', '聂拉木县', '434', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4639', '萨嘎县', '434', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4640', '萨迦县', '434', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4641', '谢通门县', '434', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4642', '嘉黎县', '435', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4643', '安多县', '435', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4644', '尼玛县', '435', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4645', '巴青县', '435', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4646', '比如县', '435', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4647', '班戈县', '435', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4648', '申扎县', '435', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4649', '索县', '435', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4650', '聂荣县', '435', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4651', '那曲县', '435', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4652', '噶尔县', '436', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4653', '措勤县', '436', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4654', '改则县', '436', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4655', '日土县', '436', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4656', '普兰县', '436', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4657', '札达县', '436', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4658', '革吉县', '436', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4659', '墨脱县', '437', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4660', '察隅县', '437', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4661', '工布江达县', '437', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4662', '朗县', '437', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4663', '林芝县', '437', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4664', '波密县', '437', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4665', '米林县', '437', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4666', '临潼区', '438', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4667', '周至县', '438', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4668', '户县', '438', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4669', '新城区', '438', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4670', '未央区', '438', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4671', '灞桥区', '438', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4672', '碑林区', '438', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4673', '莲湖区', '438', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4674', '蓝田县', '438', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4675', '长安区', '438', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4676', '阎良区', '438', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4677', '雁塔区', '438', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4678', '高陵县', '438', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4679', '印台区', '439', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4680', '宜君县', '439', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4681', '王益区', '439', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4682', '耀州区', '439', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4683', '凤县', '440', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4684', '凤翔县', '440', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4685', '千阳县', '440', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4686', '太白县', '440', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4687', '岐山县', '440', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4688', '扶风县', '440', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4689', '渭滨区', '440', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4690', '眉县', '440', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4691', '金台区', '440', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4692', '陇县', '440', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4693', '陈仓区', '440', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4694', '麟游县', '440', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4695', '三原县', '441', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4696', '干县', '441', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4697', '兴平市', '441', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4698', '彬县', '441', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4699', '旬邑县', '441', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4700', '杨陵区', '441', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4701', '武功县', '441', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4702', '永寿县', '441', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4703', '泾阳县', '441', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4704', '淳化县', '441', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4705', '渭城区', '441', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4706', '礼泉县', '441', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4707', '秦都区', '441', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4708', '长武县', '441', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4709', '临渭区', '442', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4710', '华县', '442', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4711', '华阴市', '442', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4712', '合阳县', '442', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4713', '大荔县', '442', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4714', '富平县', '442', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4715', '潼关县', '442', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4716', '澄城县', '442', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4717', '白水县', '442', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4718', '蒲城县', '442', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4719', '韩城市', '442', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4720', '吴起县', '443', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4721', '子长县', '443', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4722', '安塞县', '443', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4723', '宜川县', '443', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4724', '宝塔区', '443', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4725', '富县', '443', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4726', '延川县', '443', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4727', '延长县', '443', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4728', '志丹县', '443', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4729', '洛川县', '443', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4730', '甘泉县', '443', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4731', '黄陵县', '443', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4732', '黄龙县', '443', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4733', '佛坪县', '444', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4734', '勉县', '444', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4735', '南郑县', '444', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4736', '城固县', '444', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4737', '宁强县', '444', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4738', '汉台区', '444', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4739', '洋县', '444', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4740', '留坝县', '444', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4741', '略阳县', '444', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4742', '西乡县', '444', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4743', '镇巴县', '444', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4744', '佳县', '445', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4745', '吴堡县', '445', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4746', '子洲县', '445', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4747', '定边县', '445', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4748', '府谷县', '445', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4749', '榆林市榆阳区', '445', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4750', '横山县', '445', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4751', '清涧县', '445', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4752', '神木县', '445', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4753', '米脂县', '445', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4754', '绥德县', '445', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4755', '靖边县', '445', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4756', '宁陕县', '446', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4757', '岚皋县', '446', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4758', '平利县', '446', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4759', '旬阳县', '446', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4760', '汉滨区', '446', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4761', '汉阴县', '446', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4762', '白河县', '446', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4763', '石泉县', '446', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4764', '紫阳县', '446', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4765', '镇坪县', '446', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4766', '丹凤县', '447', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4767', '商南县', '447', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4768', '商州区', '447', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4769', '山阳县', '447', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4770', '柞水县', '447', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4771', '洛南县', '447', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4772', '镇安县', '447', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4773', '七里河区', '448', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4774', '城关区', '448', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4775', '安宁区', '448', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4776', '榆中县', '448', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4777', '永登县', '448', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4778', '皋兰县', '448', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4779', '红古区', '448', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4780', '西固区', '448', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4781', '嘉峪关市', '449', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4782', '永昌县', '450', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4783', '金川区', '450', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4784', '会宁县', '451', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4785', '平川区', '451', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4786', '景泰县', '451', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4787', '白银区', '451', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4788', '靖远县', '451', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4789', '张家川回族自治县', '452', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4790', '武山县', '452', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4791', '清水县', '452', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4792', '甘谷县', '452', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4793', '秦安县', '452', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4794', '秦州区', '452', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4795', '麦积区', '452', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4796', '凉州区', '453', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4797', '古浪县', '453', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4798', '天祝藏族自治县', '453', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4799', '民勤县', '453', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4800', '临泽县', '454', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4801', '山丹县', '454', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4802', '民乐县', '454', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4803', '甘州区', '454', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4804', '肃南裕固族自治县', '454', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4805', '高台县', '454', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4806', '华亭县', '455', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4807', '崆峒区', '455', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4808', '崇信县', '455', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4809', '庄浪县', '455', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4810', '泾川县', '455', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4811', '灵台县', '455', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4812', '静宁县', '455', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4813', '敦煌市', '456', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4814', '玉门市', '456', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4815', '瓜州县（原安西县）', '456', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4816', '肃北蒙古族自治县', '456', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4817', '肃州区', '456', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4818', '金塔县', '456', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4819', '阿克塞哈萨克族自治县', '456', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4820', '华池县', '457', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4821', '合水县', '457', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4822', '宁县', '457', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4823', '庆城县', '457', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4824', '正宁县', '457', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4825', '环县', '457', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4826', '西峰区', '457', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4827', '镇原县', '457', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4828', '临洮县', '458', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4829', '安定区', '458', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4830', '岷县', '458', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4831', '渭源县', '458', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4832', '漳县', '458', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4833', '通渭县', '458', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4834', '陇西县', '458', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4835', '两当县', '459', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4836', '宕昌县', '459', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4837', '康县', '459', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4838', '徽县', '459', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4839', '成县', '459', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4840', '文县', '459', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4841', '武都区', '459', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4842', '礼县', '459', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4843', '西和县', '459', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4844', '东乡族自治县', '460', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4845', '临夏县', '460', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4846', '临夏市', '460', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4847', '和政县', '460', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4848', '广河县', '460', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4849', '康乐县', '460', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4850', '永靖县', '460', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4851', '积石山保安族东乡族撒拉族自治县', '460', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4852', '临潭县', '461', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4853', '卓尼县', '461', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4854', '合作市', '461', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4855', '夏河县', '461', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4856', '玛曲县', '461', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4857', '碌曲县', '461', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4858', '舟曲县', '461', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4859', '迭部县', '461', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4860', '城东区', '462', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4861', '城中区', '462', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4862', '城北区', '462', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4863', '城西区', '462', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4864', '大通回族土族自治县', '462', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4865', '湟中县', '462', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4866', '湟源县', '462', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4867', '乐都县', '463', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4868', '互助土族自治县', '463', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4869', '化隆回族自治县', '463', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4870', '平安县', '463', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4871', '循化撒拉族自治县', '463', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4872', '民和回族土族自治县', '463', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4873', '刚察县', '464', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4874', '海晏县', '464', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4875', '祁连县', '464', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4876', '门源回族自治县', '464', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4877', '同仁县', '465', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4878', '尖扎县', '465', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4879', '河南蒙古族自治县', '465', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4880', '泽库县', '465', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4881', '共和县', '466', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4882', '兴海县', '466', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4883', '同德县', '466', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4884', '贵南县', '466', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4885', '贵德县', '466', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4886', '久治县', '467', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4887', '玛多县', '467', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4888', '玛沁县', '467', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4889', '班玛县', '467', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4890', '甘德县', '467', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4891', '达日县', '467', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4892', '囊谦县', '468', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4893', '曲麻莱县', '468', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4894', '杂多县', '468', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4895', '治多县', '468', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4896', '玉树县', '468', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4897', '称多县', '468', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4898', '乌兰县', '469', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4899', '冷湖行委', '469', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4900', '大柴旦行委', '469', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4901', '天峻县', '469', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4902', '德令哈市', '469', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4903', '格尔木市', '469', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4904', '茫崖行委', '469', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4905', '都兰县', '469', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4906', '兴庆区', '470', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4907', '永宁县', '470', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4908', '灵武市', '470', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4909', '西夏区', '470', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4910', '贺兰县', '470', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4911', '金凤区', '470', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4912', '大武口区', '471', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4913', '平罗县', '471', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4914', '惠农区', '471', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4915', '利通区', '472', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4916', '同心县', '472', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4917', '盐池县', '472', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4918', '青铜峡市', '472', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4919', '原州区', '473', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4920', '彭阳县', '473', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4921', '泾源县', '473', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4922', '西吉县', '473', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4923', '隆德县', '473', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4924', '中宁县', '474', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4925', '沙坡头区', '474', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4926', '海原县', '474', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4927', '东山区', '475', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4928', '乌鲁木齐县', '475', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4929', '天山区', '475', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4930', '头屯河区', '475', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4931', '新市区', '475', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4932', '水磨沟区', '475', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4933', '沙依巴克区', '475', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4934', '达坂城区', '475', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4935', '乌尔禾区', '476', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4936', '克拉玛依区', '476', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4937', '独山子区', '476', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4938', '白碱滩区', '476', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4939', '吐鲁番市', '477', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4940', '托克逊县', '477', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4941', '鄯善县', '477', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4942', '伊吾县', '478', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4943', '哈密市', '478', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4944', '巴里坤哈萨克自治县', '478', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4945', '吉木萨尔县', '479', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4946', '呼图壁县', '479', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4947', '奇台县', '479', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4948', '昌吉市', '479', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4949', '木垒哈萨克自治县', '479', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4950', '玛纳斯县', '479', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4951', '米泉市', '479', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4952', '阜康市', '479', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4953', '博乐市', '480', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4954', '温泉县', '480', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4955', '精河县', '480', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4956', '博湖县', '481', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4957', '和硕县', '481', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4958', '和静县', '481', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4959', '尉犁县', '481', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4960', '库尔勒市', '481', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4961', '焉耆回族自治县', '481', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4962', '若羌县', '481', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4963', '轮台县', '481', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4964', '乌什县', '482', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4965', '库车县', '482', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4966', '拜城县', '482', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4967', '新和县', '482', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4968', '柯坪县', '482', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4969', '沙雅县', '482', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4970', '温宿县', '482', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4971', '阿克苏市', '482', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4972', '阿瓦提县', '482', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4973', '乌恰县', '483', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4974', '阿克陶县', '483', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4975', '阿合奇县', '483', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4976', '阿图什市', '483', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4977', '伽师县', '484', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4978', '叶城县', '484', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4979', '喀什市', '484', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4980', '塔什库尔干塔吉克自治县', '484', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4981', '岳普湖县', '484', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4982', '巴楚县', '484', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4983', '泽普县', '484', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4984', '疏勒县', '484', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4985', '疏附县', '484', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4986', '英吉沙县', '484', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4987', '莎车县', '484', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4988', '麦盖提县', '484', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4989', '于田县', '485', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4990', '和田县', '485', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4991', '和田市', '485', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4992', '墨玉县', '485', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4993', '民丰县', '485', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4994', '洛浦县', '485', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4995', '皮山县', '485', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4996', '策勒县', '485', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4997', '伊宁县', '486', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4998', '伊宁市', '486', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('4999', '奎屯市', '486', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('5000', '察布查尔锡伯自治县', '486', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('5001', '尼勒克县', '486', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('5002', '巩留县', '486', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('5003', '新源县', '486', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('5004', '昭苏县', '486', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('5005', '特克斯县', '486', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('5006', '霍城县', '486', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('5007', '乌苏市', '487', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('5008', '和布克赛尔蒙古自治县', '487', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('5009', '塔城市', '487', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('5010', '托里县', '487', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('5011', '沙湾县', '487', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('5012', '裕民县', '487', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('5013', '额敏县', '487', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('5014', '吉木乃县', '488', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('5015', '哈巴河县', '488', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('5016', '富蕴县', '488', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('5017', '布尔津县', '488', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('5018', '福海县', '488', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('5019', '阿勒泰市', '488', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('5020', '青河县', '488', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('5021', '石河子市', '489', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('5022', '阿拉尔市', '490', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('5023', '图木舒克市', '491', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('5024', '五家渠市', '492', '0', '3');
INSERT INTO `yii2cmf_city` VALUES ('45055', '海外', '35', '0', '2');

-- ----------------------------
-- Table structure for `yii2cmf_comment`
-- ----------------------------
DROP TABLE IF EXISTS `yii2cmf_comment`;
CREATE TABLE `yii2cmf_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL DEFAULT '0',
  `content` text NOT NULL COMMENT '内容',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `up` int(1) NOT NULL DEFAULT '0',
  `down` int(1) NOT NULL DEFAULT '0',
  `is_top` smallint(1) NOT NULL DEFAULT '0',
  `type` varchar(20) NOT NULL DEFAULT '0',
  `created_at` int(10) NOT NULL DEFAULT '0',
  `updated_at` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `type` (`type`,`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yii2cmf_comment
-- ----------------------------

-- ----------------------------
-- Table structure for `yii2cmf_config`
-- ----------------------------
DROP TABLE IF EXISTS `yii2cmf_config`;
CREATE TABLE `yii2cmf_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '配置名',
  `value` text COMMENT '配置值',
  `extra` varchar(255) NOT NULL DEFAULT '0',
  `description` varchar(255) DEFAULT NULL COMMENT '配置描述',
  `type` varchar(30) DEFAULT 'text' COMMENT '配置类型',
  `created_at` int(10) NOT NULL DEFAULT '0',
  `updated_at` int(10) NOT NULL DEFAULT '0',
  `group` varchar(30) DEFAULT 'system' COMMENT '配置分组',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yii2cmf_config
-- ----------------------------
INSERT INTO `yii2cmf_config` VALUES ('1', 'CONFIG_TYPE_LIST', 'text=>字符\r\narray=>数组\r\npassword=>密码\r\nimage=>图片\r\ntextarea=>多行字符\r\nselect=>下拉框\r\nradio=>单选框\r\ncheckbox=>多选框\r\neditor=>富文本编辑器', '', '配置类型列表', 'array', '0', '1461937892', 'system');
INSERT INTO `yii2cmf_config` VALUES ('2', 'CONFIG_GROUP', 'site=>网站\r\nsystem=>系统\r\nemail=>邮箱', '', '配置分组', 'array', '1468405444', '1468421137', 'system');
INSERT INTO `yii2cmf_config` VALUES ('3', 'SITE_NAME', 'yii2cmf', '', '网站名称', 'text', '0', '1461937892', 'site');
INSERT INTO `yii2cmf_config` VALUES ('4', 'SITE_ICP', '', '', '域名备案号', 'text', '0', '1461937892', 'site');
INSERT INTO `yii2cmf_config` VALUES ('5', 'SITE_LOGO', '', '', '网站LOGO', 'image', '0', '1461937892', 'site');
INSERT INTO `yii2cmf_config` VALUES ('6', 'SEO_SITE_DESCRIPTION', 'yiicmf2', '', 'meta description', 'text', '0', '1468403120', 'site');
INSERT INTO `yii2cmf_config` VALUES ('7', 'SEO_SITE_KEYWORDS', 'yiicmf', '', 'meta keywords', 'text', '0', '1461937892', 'site');
INSERT INTO `yii2cmf_config` VALUES ('8', 'FOOTER', '', '', '底部', 'textarea', '0', '1461937892', 'site');
INSERT INTO `yii2cmf_config` VALUES ('9', 'THEME_NAME', 'basic', '', '主题名', 'text', '0', '1467882452', 'site');
INSERT INTO `yii2cmf_config` VALUES ('10', 'BACKEND_SKIN', 'skin-purple', 'skin-black=>skin-black\r\nskin-blue=>skin-blue\r\nskin-green=>skin-green\r\nskin-purple=>skin-purple\r\nskin-red=>skin-red\r\nskin-yellow=>skin-yellow', '后台皮肤', 'select', '1461931367', '1461937892', 'system');
INSERT INTO `yii2cmf_config` VALUES ('11', 'ADMIN_EMAIL', '', '', '管理员邮箱', 'text', '0', '1468406411', 'email');

-- ----------------------------
-- Table structure for `yii2cmf_favourite`
-- ----------------------------
DROP TABLE IF EXISTS `yii2cmf_favourite`;
CREATE TABLE `yii2cmf_favourite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `article_id` int(11) NOT NULL DEFAULT '0',
  `created_at` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yii2cmf_favourite
-- ----------------------------

-- ----------------------------
-- Table structure for `yii2cmf_friend`
-- ----------------------------
DROP TABLE IF EXISTS `yii2cmf_friend`;
CREATE TABLE `yii2cmf_friend` (
  `owner_id` int(11) NOT NULL,
  `friend_id` int(11) NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '1',
  `created_at` int(11) NOT NULL DEFAULT '0',
  `updated_at` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `friend` (`owner_id`,`friend_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yii2cmf_friend
-- ----------------------------

-- ----------------------------
-- Table structure for `yii2cmf_gather`
-- ----------------------------
DROP TABLE IF EXISTS `yii2cmf_gather`;
CREATE TABLE `yii2cmf_gather` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '0',
  `category` varchar(255) NOT NULL DEFAULT '0',
  `url` varchar(255) NOT NULL DEFAULT '0',
  `url_org` varchar(255) NOT NULL DEFAULT '0',
  `res` tinyint(1) NOT NULL DEFAULT '1',
  `result` varchar(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yii2cmf_gather
-- ----------------------------

-- ----------------------------
-- Table structure for `yii2cmf_i18n_message`
-- ----------------------------
DROP TABLE IF EXISTS `yii2cmf_i18n_message`;
CREATE TABLE `yii2cmf_i18n_message` (
  `id` int(11) NOT NULL DEFAULT '0',
  `language` varchar(16) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `translation` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of yii2cmf_i18n_message
-- ----------------------------

-- ----------------------------
-- Table structure for `yii2cmf_i18n_source_message`
-- ----------------------------
DROP TABLE IF EXISTS `yii2cmf_i18n_source_message`;
CREATE TABLE `yii2cmf_i18n_source_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of yii2cmf_i18n_source_message
-- ----------------------------

-- ----------------------------
-- Table structure for `yii2cmf_menu`
-- ----------------------------
DROP TABLE IF EXISTS `yii2cmf_menu`;
CREATE TABLE `yii2cmf_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL DEFAULT '0',
  `parent` int(11) DEFAULT NULL,
  `route` varchar(256) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `data` text,
  `icon` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `fk_menu_parent` (`parent`),
  CONSTRAINT `fk_menu_parent` FOREIGN KEY (`parent`) REFERENCES `yii2cmf_menu` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yii2cmf_menu
-- ----------------------------
INSERT INTO `yii2cmf_menu` VALUES ('15', '用户管理', '33', '/user/admin/index', null, null, '');
INSERT INTO `yii2cmf_menu` VALUES ('16', '路由管理', '33', '/rbac/route/index', null, null, '');
INSERT INTO `yii2cmf_menu` VALUES ('17', '角色管理', '33', '/rbac/role/index', null, null, '');
INSERT INTO `yii2cmf_menu` VALUES ('22', '文章列表', '39', '/article/index', '1', null, '');
INSERT INTO `yii2cmf_menu` VALUES ('24', '系统管理', null, null, '2', null, 'cog');
INSERT INTO `yii2cmf_menu` VALUES ('25', '网站设置', '24', '/system/config', '1', null, '');
INSERT INTO `yii2cmf_menu` VALUES ('26', '配置管理', '24', '/config/index', '2', null, '');
INSERT INTO `yii2cmf_menu` VALUES ('27', '单页管理', '39', '/page/index', '40', null, '');
INSERT INTO `yii2cmf_menu` VALUES ('29', '分类管理', '39', '/category/index', '4', null, '');
INSERT INTO `yii2cmf_menu` VALUES ('30', '数据库备份', null, null, '5', null, 'book');
INSERT INTO `yii2cmf_menu` VALUES ('31', '备份', '30', '/backup/export/index', null, null, '');
INSERT INTO `yii2cmf_menu` VALUES ('32', '还原', '30', '/backup/import/index', null, null, '');
INSERT INTO `yii2cmf_menu` VALUES ('33', '权限管理', null, null, '1', null, 'users');
INSERT INTO `yii2cmf_menu` VALUES ('34', '菜单管理', '33', '/rbac/menu/index', null, null, '');
INSERT INTO `yii2cmf_menu` VALUES ('37', '操作记录', '24', '/admin-log/index', null, null, '');
INSERT INTO `yii2cmf_menu` VALUES ('39', '内容管理', null, null, '3', null, 'edit');
INSERT INTO `yii2cmf_menu` VALUES ('40', '发布文章', '39', '/article/create', '2', null, '');
INSERT INTO `yii2cmf_menu` VALUES ('41', '回收站', '39', '/article/trash', '3', null, '');
INSERT INTO `yii2cmf_menu` VALUES ('42', '评论管理', '39', '/comment/index', '6', null, '');
INSERT INTO `yii2cmf_menu` VALUES ('43', '留言板', '39', '/suggest/index', '7', null, '');
INSERT INTO `yii2cmf_menu` VALUES ('44', '插件管理', null, null, '4', null, 'plug');
INSERT INTO `yii2cmf_menu` VALUES ('45', '插件', '44', '/plugins/index', null, null, '');
INSERT INTO `yii2cmf_menu` VALUES ('46', '外观', null, null, '6', null, 'tv');
INSERT INTO `yii2cmf_menu` VALUES ('47', '主题', '46', '/theme/index', '4', null, '');
INSERT INTO `yii2cmf_menu` VALUES ('48', '幻灯片', '46', '/carousel/index', '3', null, '');
INSERT INTO `yii2cmf_menu` VALUES ('49', '导航', '46', '/nav/index', '5', null, '');
INSERT INTO `yii2cmf_menu` VALUES ('50', '区域', '46', '/area/index', '1', null, '');
INSERT INTO `yii2cmf_menu` VALUES ('51', '区块', '46', '/block/index', '2', null, '');

-- ----------------------------
-- Table structure for `yii2cmf_meta`
-- ----------------------------
DROP TABLE IF EXISTS `yii2cmf_meta`;
CREATE TABLE `yii2cmf_meta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) DEFAULT NULL,
  `keywords` varchar(128) DEFAULT NULL,
  `description` varchar(128) DEFAULT NULL,
  `type` varchar(128) DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yii2cmf_meta
-- ----------------------------

-- ----------------------------
-- Table structure for `yii2cmf_migration`
-- ----------------------------
DROP TABLE IF EXISTS `yii2cmf_migration`;
CREATE TABLE `yii2cmf_migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yii2cmf_migration
-- ----------------------------
INSERT INTO `yii2cmf_migration` VALUES ('m000000_000000_base', '1470298501');
INSERT INTO `yii2cmf_migration` VALUES ('m130524_201442_init', '1470298514');
INSERT INTO `yii2cmf_migration` VALUES ('m160622_073825_create_notify', '1470298516');
INSERT INTO `yii2cmf_migration` VALUES ('m160702_101410_create_plugins', '1470298518');
INSERT INTO `yii2cmf_migration` VALUES ('m160707_084650_create_article_exhibition', '1470298520');
INSERT INTO `yii2cmf_migration` VALUES ('m160712_030817_create_city_table', '1470298531');
INSERT INTO `yii2cmf_migration` VALUES ('m160716_091753_create_nav_table', '1470298533');
INSERT INTO `yii2cmf_migration` VALUES ('m160717_034804_add_markdown_column_to_article_data_table', '1470298534');
INSERT INTO `yii2cmf_migration` VALUES ('m160717_062452_create_attachment_table', '1470298534');
INSERT INTO `yii2cmf_migration` VALUES ('m160718_040058_create_article_module_table', '1470298537');
INSERT INTO `yii2cmf_migration` VALUES ('m160720_163208_create_meta_table', '1470298537');
INSERT INTO `yii2cmf_migration` VALUES ('m160721_134955_create_carousel_table', '1470298539');
INSERT INTO `yii2cmf_migration` VALUES ('m160721_151110_create_i18n_table', '1470298541');
INSERT INTO `yii2cmf_migration` VALUES ('m160722_051000_create_friend_table', '1470298544');
INSERT INTO `yii2cmf_migration` VALUES ('m160722_114202_create_area_table', '1470298545');
INSERT INTO `yii2cmf_migration` VALUES ('m160726_093217_create_user_table', '1470298547');
INSERT INTO `yii2cmf_migration` VALUES ('m160728_025305_create_config_table', '1470298548');
INSERT INTO `yii2cmf_migration` VALUES ('m160728_025849_create_rbac_table', '1470298553');

-- ----------------------------
-- Table structure for `yii2cmf_module`
-- ----------------------------
DROP TABLE IF EXISTS `yii2cmf_module`;
CREATE TABLE `yii2cmf_module` (
  `id` varchar(50) NOT NULL COMMENT '标识',
  `name` varchar(50) NOT NULL DEFAULT '0',
  `app` varchar(50) NOT NULL COMMENT '模块所属应用ID',
  `status` smallint(1) NOT NULL DEFAULT '0',
  `config` text COMMENT '配置',
  `created_at` int(10) NOT NULL DEFAULT '0',
  `updated_at` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yii2cmf_module
-- ----------------------------

-- ----------------------------
-- Table structure for `yii2cmf_nav`
-- ----------------------------
DROP TABLE IF EXISTS `yii2cmf_nav`;
CREATE TABLE `yii2cmf_nav` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(128) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yii2cmf_nav
-- ----------------------------
INSERT INTO `yii2cmf_nav` VALUES ('1', 'header', '顶部导航');
INSERT INTO `yii2cmf_nav` VALUES ('2', 'friend-link', '友情链接');

-- ----------------------------
-- Table structure for `yii2cmf_nav_item`
-- ----------------------------
DROP TABLE IF EXISTS `yii2cmf_nav_item`;
CREATE TABLE `yii2cmf_nav_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nav_id` int(11) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `url` varchar(128) DEFAULT NULL,
  `order` smallint(1) DEFAULT NULL,
  `status` smallint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yii2cmf_nav_item
-- ----------------------------
INSERT INTO `yii2cmf_nav_item` VALUES ('1', '1', '首页', '/', '1', '1');

-- ----------------------------
-- Table structure for `yii2cmf_notify`
-- ----------------------------
DROP TABLE IF EXISTS `yii2cmf_notify`;
CREATE TABLE `yii2cmf_notify` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_uid` int(11) NOT NULL,
  `to_uid` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL COMMENT '通知分类ID',
  `extra` text COMMENT '附加信息',
  `created_at` int(10) NOT NULL,
  `read` tinyint(1) NOT NULL DEFAULT '0',
  `link` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yii2cmf_notify
-- ----------------------------

-- ----------------------------
-- Table structure for `yii2cmf_notify_category`
-- ----------------------------
DROP TABLE IF EXISTS `yii2cmf_notify_category`;
CREATE TABLE `yii2cmf_notify_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yii2cmf_notify_category
-- ----------------------------
INSERT INTO `yii2cmf_notify_category` VALUES ('1', 'reply', '{from.username} 回复了你的评论', '{extra.comment}');
INSERT INTO `yii2cmf_notify_category` VALUES ('2', 'suggest', '{from.username} 给你留言了', '{extra.comment}');
INSERT INTO `yii2cmf_notify_category` VALUES ('3', 'comment', '{from.username} 评论了你的文章 {extra.article_title}', '{extra.comment}');
INSERT INTO `yii2cmf_notify_category` VALUES ('4', 'favourite', '{from.username} 收藏了你的文章 {extra.article_title}', null);
INSERT INTO `yii2cmf_notify_category` VALUES ('5', 'up_article', '{from.username} 赞了你的文章 {extra.article_title}', null);

-- ----------------------------
-- Table structure for `yii2cmf_page`
-- ----------------------------
DROP TABLE IF EXISTS `yii2cmf_page`;
CREATE TABLE `yii2cmf_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `use_layout` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0:不使用1:使用',
  `content` text NOT NULL COMMENT '内容',
  `title` varchar(50) NOT NULL COMMENT '标题',
  `slug` varchar(50) NOT NULL DEFAULT '',
  `created_at` int(10) DEFAULT NULL,
  `updated_at` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yii2cmf_page
-- ----------------------------
INSERT INTO `yii2cmf_page` VALUES ('1', '1', '关于我们', '关于我们', 'aboutus', '1441766741', '1441766741');

-- ----------------------------
-- Table structure for `yii2cmf_profile`
-- ----------------------------
DROP TABLE IF EXISTS `yii2cmf_profile`;
CREATE TABLE `yii2cmf_profile` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `money` int(11) NOT NULL DEFAULT '0',
  `signature` varchar(100) NOT NULL DEFAULT '',
  `avatar` varchar(255) NOT NULL DEFAULT '',
  `gender` tinyint(1) NOT NULL DEFAULT '0',
  `qq` varchar(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `province` smallint(4) DEFAULT NULL,
  `city` smallint(4) DEFAULT NULL,
  `area` smallint(4) DEFAULT NULL,
  `locale` varchar(32) NOT NULL DEFAULT 'zh-CN',
  `created_at` int(10) NOT NULL DEFAULT '0',
  `updated_at` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yii2cmf_profile
-- ----------------------------
INSERT INTO `yii2cmf_profile` VALUES ('1', '0', '', '', '0', null, null, null, null, null, 'zh-CN', '0', '0');

-- ----------------------------
-- Table structure for `yii2cmf_reward`
-- ----------------------------
DROP TABLE IF EXISTS `yii2cmf_reward`;
CREATE TABLE `yii2cmf_reward` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `money` int(11) NOT NULL DEFAULT '0',
  `created_at` int(10) NOT NULL DEFAULT '0',
  `updated_at` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yii2cmf_reward
-- ----------------------------

-- ----------------------------
-- Table structure for `yii2cmf_sign`
-- ----------------------------
DROP TABLE IF EXISTS `yii2cmf_sign`;
CREATE TABLE `yii2cmf_sign` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `last_sign_at` int(10) NOT NULL DEFAULT '0',
  `times` int(11) NOT NULL DEFAULT '0',
  `continue_times` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yii2cmf_sign
-- ----------------------------

-- ----------------------------
-- Table structure for `yii2cmf_spider`
-- ----------------------------
DROP TABLE IF EXISTS `yii2cmf_spider`;
CREATE TABLE `yii2cmf_spider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL COMMENT '标识',
  `title` varchar(100) NOT NULL COMMENT '名称',
  `domain` varchar(255) NOT NULL COMMENT '域名',
  `page_dom` varchar(255) NOT NULL COMMENT '分页链接元素',
  `list_dom` varchar(255) NOT NULL COMMENT '列表链接元素',
  `time_dom` varchar(255) DEFAULT NULL COMMENT '内容页时间元素',
  `content_dom` varchar(255) NOT NULL COMMENT '内容页内容元素',
  `title_dom` varchar(255) NOT NULL COMMENT '内容页标题元素',
  `target_category` varchar(255) NOT NULL COMMENT '目标分类',
  `target_category_url` varchar(255) NOT NULL COMMENT '目标分类地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yii2cmf_spider
-- ----------------------------

-- ----------------------------
-- Table structure for `yii2cmf_subscribe`
-- ----------------------------
DROP TABLE IF EXISTS `yii2cmf_subscribe`;
CREATE TABLE `yii2cmf_subscribe` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `email` varchar(30) NOT NULL DEFAULT '0',
  `created_at` int(10) NOT NULL DEFAULT '0',
  `updated_at` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yii2cmf_subscribe
-- ----------------------------

-- ----------------------------
-- Table structure for `yii2cmf_suggest`
-- ----------------------------
DROP TABLE IF EXISTS `yii2cmf_suggest`;
CREATE TABLE `yii2cmf_suggest` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text NOT NULL,
  `created_at` int(10) NOT NULL DEFAULT '0',
  `updated_at` int(10) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yii2cmf_suggest
-- ----------------------------

-- ----------------------------
-- Table structure for `yii2cmf_system_log`
-- ----------------------------
DROP TABLE IF EXISTS `yii2cmf_system_log`;
CREATE TABLE `yii2cmf_system_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `level` int(11) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `log_time` double DEFAULT NULL,
  `prefix` text,
  `message` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yii2cmf_system_log
-- ----------------------------
INSERT INTO `yii2cmf_system_log` VALUES ('1', '2', 'yii\\log\\Dispatcher::dispatch', '1470298556.6144', '[app-console][]', 'Unable to send log via yii\\debug\\LogTarget: Exception \'yii\\base\\UnknownMethodException\' with message \'Calling unknown method: yii\\console\\Request::getAbsoluteUrl()\' \n\nin E:\\work\\yii2cmf\\vendor\\yiisoft\\yii2\\base\\Component.php:285\n\nStack trace:\n#0 E:\\work\\yii2cmf\\vendor\\yiisoft\\yii2-debug\\LogTarget.php(147): yii\\base\\Component->__call(\'getAbsoluteUrl\', Array)\n#1 E:\\work\\yii2cmf\\vendor\\yiisoft\\yii2-debug\\LogTarget.php(147): yii\\console\\Request->getAbsoluteUrl()\n#2 E:\\work\\yii2cmf\\vendor\\yiisoft\\yii2-debug\\LogTarget.php(50): yii\\debug\\LogTarget->collectSummary()\n#3 E:\\work\\yii2cmf\\vendor\\yiisoft\\yii2-debug\\LogTarget.php(118): yii\\debug\\LogTarget->export()\n#4 E:\\work\\yii2cmf\\vendor\\yiisoft\\yii2\\log\\Dispatcher.php(188): yii\\debug\\LogTarget->collect(Array, true)\n#5 E:\\work\\yii2cmf\\vendor\\yiisoft\\yii2\\log\\Logger.php(173): yii\\log\\Dispatcher->dispatch(Array, true)\n#6 [internal function]: yii\\log\\Logger->flush(true)\n#7 {main}');

-- ----------------------------
-- Table structure for `yii2cmf_tag`
-- ----------------------------
DROP TABLE IF EXISTS `yii2cmf_tag`;
CREATE TABLE `yii2cmf_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '0',
  `article` int(11) NOT NULL DEFAULT '0' COMMENT '有该标签的文章数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yii2cmf_tag
-- ----------------------------

-- ----------------------------
-- Table structure for `yii2cmf_user`
-- ----------------------------
DROP TABLE IF EXISTS `yii2cmf_user`;
CREATE TABLE `yii2cmf_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `auth_key` varchar(32) NOT NULL DEFAULT '0',
  `password_hash` varchar(255) NOT NULL DEFAULT '0',
  `password_reset_token` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL DEFAULT '0',
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL DEFAULT '0',
  `updated_at` int(11) NOT NULL DEFAULT '0',
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  `login_at` int(11) DEFAULT NULL,
  `blocked_at` int(11) DEFAULT NULL,
  `confirmed_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yii2cmf_user
-- ----------------------------
INSERT INTO `yii2cmf_user` VALUES ('1', 'hehe', '1lQl4TG6sYlyWRqXZEWL0ZhQkPATVnMs', '$2y$13$lYlhIcBcs6jBr7yTd6YrWueckcs.Cvx70juIHs6wEfjtUwnA318VW', null, 'hehe@xxx.com', '10', '1441766741', '1441766741', '0', '1441766741', null, '1441766741');

-- ----------------------------
-- Table structure for `yii2cmf_vote`
-- ----------------------------
DROP TABLE IF EXISTS `yii2cmf_vote`;
CREATE TABLE `yii2cmf_vote` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(20) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `created_at` int(10) NOT NULL DEFAULT '0',
  `updated_at` int(10) NOT NULL DEFAULT '0',
  `action` varchar(20) NOT NULL DEFAULT 'up',
  `type_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yii2cmf_vote
-- ----------------------------
