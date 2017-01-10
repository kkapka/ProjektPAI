/*
Navicat MySQL Data Transfer

Source Server         : pai_project
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : online_classifieds

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2017-01-10 01:02:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `ad`
-- ----------------------------
DROP TABLE IF EXISTS `ad`;
CREATE TABLE `ad` (
  `id_ad` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title_ad` varchar(50) NOT NULL,
  `description_ad` text NOT NULL,
  `view_counter_ad` int(10) unsigned NOT NULL,
  `author_ad` int(10) unsigned NOT NULL,
  `category_ad` int(10) unsigned NOT NULL,
  `location_ad` int(10) unsigned NOT NULL,
  `datetime_add_ad` datetime NOT NULL,
  `datetime_end_ad` datetime NOT NULL,
  `price_ad` decimal(10,0) unsigned NOT NULL,
  PRIMARY KEY (`id_ad`),
  KEY `author_ad_FK` (`author_ad`),
  KEY `location_ad_FK` (`location_ad`),
  KEY `category_ad_FK` (`category_ad`),
  CONSTRAINT `author_ad_FK` FOREIGN KEY (`author_ad`) REFERENCES `user` (`id_user`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `category_ad_FK` FOREIGN KEY (`category_ad`) REFERENCES `category` (`id_category`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `location_ad_FK` FOREIGN KEY (`location_ad`) REFERENCES `location` (`id_location`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=238 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ad
-- ----------------------------
INSERT INTO `ad` VALUES ('234', 'asas', 'qw', '0', '37', '12', '536', '2017-01-09 22:37:03', '2017-01-23 22:37:03', '12');
INSERT INTO `ad` VALUES ('235', 'asasa', 'qwqw', '0', '37', '12', '172', '2017-01-09 22:41:07', '2017-01-23 22:41:07', '1223');

-- ----------------------------
-- Table structure for `address`
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address` (
  `id_address` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `location_address` int(10) unsigned NOT NULL,
  `street_address` varchar(100) NOT NULL,
  `street_number_address` varchar(10) NOT NULL,
  PRIMARY KEY (`id_address`),
  KEY `location_address_FK` (`location_address`),
  CONSTRAINT `location_address_FK` FOREIGN KEY (`location_address`) REFERENCES `location` (`id_location`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES ('1', '815', 'Piastowska', '76');
INSERT INTO `address` VALUES ('2', '853', 'dasd', '1');
INSERT INTO `address` VALUES ('3', '614', 'Dziwna', '77');
INSERT INTO `address` VALUES ('4', '853', 'a', 'a');
INSERT INTO `address` VALUES ('5', '853', 'a', 'a');
INSERT INTO `address` VALUES ('6', '853', 'a', 'a');
INSERT INTO `address` VALUES ('7', '853', 'a', 'a');
INSERT INTO `address` VALUES ('8', '853', 'a', 'a');
INSERT INTO `address` VALUES ('9', '853', 'a', 'a');
INSERT INTO `address` VALUES ('10', '853', 'a', 'a');
INSERT INTO `address` VALUES ('11', '853', 'a', 'a');
INSERT INTO `address` VALUES ('12', '853', 'a', 'a');
INSERT INTO `address` VALUES ('13', '853', 'a', 'a');
INSERT INTO `address` VALUES ('14', '853', 'a', 'a');
INSERT INTO `address` VALUES ('15', '853', 'a', 'a');
INSERT INTO `address` VALUES ('16', '853', 'Kwiatowa', '68');
INSERT INTO `address` VALUES ('17', '853', 'Kwiatowa', '68');
INSERT INTO `address` VALUES ('18', '853', 'Ola', '00');
INSERT INTO `address` VALUES ('19', '853', 'a', 'a');
INSERT INTO `address` VALUES ('20', '853', 'a', 'a');
INSERT INTO `address` VALUES ('21', '853', '', '');
INSERT INTO `address` VALUES ('22', '853', '', '');
INSERT INTO `address` VALUES ('23', '419', 'Młyńska', '11');
INSERT INTO `address` VALUES ('24', '853', '', '');
INSERT INTO `address` VALUES ('25', '853', 'aa', '7');
INSERT INTO `address` VALUES ('26', '815', 'kapka', '11');
INSERT INTO `address` VALUES ('27', '815', 'kamil', 'kamil');
INSERT INTO `address` VALUES ('28', '172', 'interia', 'interia');
INSERT INTO `address` VALUES ('29', '389', 'Piastowska', '76');
INSERT INTO `address` VALUES ('30', '172', 'd', 's');
INSERT INTO `address` VALUES ('31', '667', 'kasia', 'kasia');
INSERT INTO `address` VALUES ('32', '365', 'a', 'a');
INSERT INTO `address` VALUES ('33', '526', 'kasia', 'kasia');
INSERT INTO `address` VALUES ('34', '84', 'a', 'a');
INSERT INTO `address` VALUES ('35', '84', 'julia', 'julia');
INSERT INTO `address` VALUES ('36', '14', 's', '2');
INSERT INTO `address` VALUES ('37', '794', 'kk', '12');
INSERT INTO `address` VALUES ('38', '84', 'a', 'a');
INSERT INTO `address` VALUES ('39', '470', '12', '12');
INSERT INTO `address` VALUES ('40', '84', 'asia123', 'asia123');
INSERT INTO `address` VALUES ('41', '332', 'kakak', 'kakak');
INSERT INTO `address` VALUES ('42', '526', 'kkkkkk', 'kkkkkk');
INSERT INTO `address` VALUES ('43', '84', 'qqqqqq', 'qqqqqq');
INSERT INTO `address` VALUES ('44', '647', 'ppppp', 'ppppp');
INSERT INTO `address` VALUES ('45', '526', 'uuuuu', 'uuuuu');
INSERT INTO `address` VALUES ('46', '761', 'uuuop', 'uuuop');
INSERT INTO `address` VALUES ('47', '337', 'qqwwe', 'qqwwe');
INSERT INTO `address` VALUES ('48', '681', 'qwerty', 'qwerty');
INSERT INTO `address` VALUES ('49', '366', 'trfbgyhj', 'trfbgyhj');
INSERT INTO `address` VALUES ('50', '84', 'zxcera', 'zxcera');
INSERT INTO `address` VALUES ('51', '487', '<noscript>', '<noscript>');
INSERT INTO `address` VALUES ('52', '487', '<noscript>', '<noscript>');
INSERT INTO `address` VALUES ('53', '487', '<noscript>', '<noscript>');
INSERT INTO `address` VALUES ('54', '84', 'oidfkdsjskdl', 'oidfkdsjsk');
INSERT INTO `address` VALUES ('55', '84', 'oidfkdsjskdl', 'oidfkdsjsk');
INSERT INTO `address` VALUES ('56', '84', 'kkoewjrke', 'kkoewjrke');
INSERT INTO `address` VALUES ('57', '913', 'lfregjergj', 'lfregjergj');
INSERT INTO `address` VALUES ('58', '715', 'rtgfgd', 'rtgfgd');
INSERT INTO `address` VALUES ('59', '894', 'dfgdfgfgd', 'dfgdfgfgd');
INSERT INTO `address` VALUES ('60', '667', 'retggdfg', 'retggdfg');
INSERT INTO `address` VALUES ('61', '355', 'saa', 'as');
INSERT INTO `address` VALUES ('62', '84', 'admin', 'admin');
INSERT INTO `address` VALUES ('63', '366', 'zosia', 'zosia');
INSERT INTO `address` VALUES ('64', '667', 'kasia', 'kasia');
INSERT INTO `address` VALUES ('65', '365', 'a', 'a');
INSERT INTO `address` VALUES ('66', '671', '1', '1');
INSERT INTO `address` VALUES ('67', '671', 'qw', 'wqw');
INSERT INTO `address` VALUES ('68', '470', 's', 's');
INSERT INTO `address` VALUES ('69', '84', 'kasia', '69');
INSERT INTO `address` VALUES ('70', '84', 'kasia', 'kasia');
INSERT INTO `address` VALUES ('71', '172', 'kasia', 'kasia');
INSERT INTO `address` VALUES ('72', '366', 'aa', 'aa');
INSERT INTO `address` VALUES ('73', '366', 'a', 'a');
INSERT INTO `address` VALUES ('74', '172', 'weronika', 'weronika');
INSERT INTO `address` VALUES ('75', '310', '12', '12');
INSERT INTO `address` VALUES ('76', '470', 'wiktoria', 'wiktoria');
INSERT INTO `address` VALUES ('77', '172', 'dominika', 'dominika');
INSERT INTO `address` VALUES ('78', '172', 'weronika', 'weronika');
INSERT INTO `address` VALUES ('79', '624', '1', '1');
INSERT INTO `address` VALUES ('80', '366', 'qw', '12');
INSERT INTO `address` VALUES ('81', '172', '12', '12');
INSERT INTO `address` VALUES ('82', '172', 'katerena', 'katerena');
INSERT INTO `address` VALUES ('83', '172', 'kasia', 'kasia');
INSERT INTO `address` VALUES ('85', '460', 'as', 'as');
INSERT INTO `address` VALUES ('87', '172', 'a', 'a');
INSERT INTO `address` VALUES ('88', '172', 'a', 'a');
INSERT INTO `address` VALUES ('89', '172', 'a', 'a');
INSERT INTO `address` VALUES ('90', '172', 'a', 'a');

-- ----------------------------
-- Table structure for `ad_archive`
-- ----------------------------
DROP TABLE IF EXISTS `ad_archive`;
CREATE TABLE `ad_archive` (
  `id_ad_archive` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title_ad_archive` varchar(50) NOT NULL,
  `description_ad_archive` text NOT NULL,
  `view_counter_ad_archive` int(10) unsigned NOT NULL,
  `author_ad_archive` int(10) unsigned NOT NULL,
  `category_ad_archive` int(10) unsigned NOT NULL,
  `location_ad_archive` int(10) unsigned NOT NULL,
  `datetime_add_ad_archive` datetime NOT NULL,
  `datetime_end_ad_archive` datetime NOT NULL,
  `price_ad_archive` decimal(10,0) unsigned NOT NULL,
  `id_ad_ad_archive` int(10) unsigned NOT NULL,
  `operation_date_ad_archive` datetime NOT NULL,
  `operation_type_ad_archive` char(1) NOT NULL,
  PRIMARY KEY (`id_ad_archive`)
) ENGINE=InnoDB AUTO_INCREMENT=822 DEFAULT CHARSET=utf8
/*!50100 PARTITION BY RANGE (id_ad_archive)
(PARTITION p0 VALUES LESS THAN (10000) ENGINE = InnoDB) */;

-- ----------------------------
-- Records of ad_archive
-- ----------------------------
INSERT INTO `ad_archive` VALUES ('1', 'Galaxy S5 Nowy', 'Witam! Mam do sprzedania najnowszy telefon marki samsung galaxy S5. (Wersja bez dynamitu w środku)', '0', '1', '3', '716', '2016-10-22 23:54:10', '2016-11-06 23:54:16', '1400', '1', '2016-11-04 00:55:00', 'u');
INSERT INTO `ad_archive` VALUES ('2', 'Laptop Lenovo G71', 'Sprzedam laptop w bardzo dobrym stanie', '0', '6', '2', '201', '2016-10-31 18:18:05', '2016-11-30 18:18:22', '0', '5', '2016-11-04 00:55:04', 'u');
INSERT INTO `ad_archive` VALUES ('3', 'Niebo', 'ewew', '0', '14', '14', '284', '2016-12-13 18:06:14', '2016-12-27 18:06:14', '123', '2', '2016-12-13 21:33:55', 'd');
INSERT INTO `ad_archive` VALUES ('4', '&lt;noscript&gt;', '&lt;noscript&gt;', '0', '14', '12', '172', '2016-12-13 18:44:19', '2016-12-27 18:44:19', '12', '5', '2016-12-13 21:34:01', 'd');
INSERT INTO `ad_archive` VALUES ('5', 'a', 'sasas', '0', '14', '12', '366', '2016-12-13 21:35:26', '2016-12-27 21:35:26', '1', '6', '2016-12-13 21:35:43', 'd');
INSERT INTO `ad_archive` VALUES ('6', 'a', 'sasas', '0', '14', '12', '366', '2016-12-13 21:35:27', '2016-12-27 21:35:27', '1', '7', '2016-12-13 21:35:45', 'd');
INSERT INTO `ad_archive` VALUES ('7', 'a', 'sasas', '0', '14', '12', '366', '2016-12-13 21:35:29', '2016-12-27 21:35:29', '1', '8', '2016-12-13 21:35:47', 'd');
INSERT INTO `ad_archive` VALUES ('8', 'a', 'sasas', '0', '14', '12', '366', '2016-12-13 21:35:30', '2016-12-27 21:35:30', '1', '9', '2016-12-13 21:35:48', 'd');
INSERT INTO `ad_archive` VALUES ('9', 'a', 'sasas', '0', '14', '12', '366', '2016-12-13 21:35:31', '2016-12-27 21:35:31', '1', '10', '2016-12-13 21:35:50', 'd');
INSERT INTO `ad_archive` VALUES ('10', 'a', 'sasas', '0', '14', '12', '366', '2016-12-13 21:35:32', '2016-12-27 21:35:32', '1', '11', '2016-12-13 21:35:59', 'd');
INSERT INTO `ad_archive` VALUES ('11', 'a', 'sasas', '0', '14', '12', '366', '2016-12-13 21:35:33', '2016-12-27 21:35:33', '1', '12', '2016-12-13 21:36:13', 'd');
INSERT INTO `ad_archive` VALUES ('12', 'a', 'sasas', '0', '14', '12', '366', '2016-12-13 21:35:33', '2016-12-27 21:35:33', '1', '13', '2016-12-13 21:36:14', 'd');
INSERT INTO `ad_archive` VALUES ('13', 'a', 'sasas', '0', '14', '12', '366', '2016-12-13 21:35:34', '2016-12-27 21:35:34', '1', '14', '2016-12-13 21:36:18', 'd');
INSERT INTO `ad_archive` VALUES ('14', 'auto', 'qwer', '0', '15', '12', '84', '2016-12-13 14:03:50', '2016-12-27 14:03:50', '123', '1', '2016-12-13 21:36:31', 'd');
INSERT INTO `ad_archive` VALUES ('15', 'sprzedam rower', '123', '0', '16', '12', '532', '2016-12-13 18:41:03', '2016-12-27 18:41:03', '12', '3', '2016-12-13 21:36:31', 'd');
INSERT INTO `ad_archive` VALUES ('16', 'as', 'dsds', '0', '16', '13', '82', '2016-12-13 18:43:50', '2016-12-27 18:43:50', '12', '4', '2016-12-13 21:36:31', 'd');
INSERT INTO `ad_archive` VALUES ('17', 'dynia', 'elektroniczna dynia', '0', '14', '14', '84', '2016-12-13 21:38:29', '2016-12-27 21:38:29', '12', '15', '2016-12-13 21:39:27', 'd');
INSERT INTO `ad_archive` VALUES ('18', 'dynia', 'elektroniczna dynia', '0', '14', '14', '84', '2016-12-13 21:38:31', '2016-12-27 21:38:31', '12', '16', '2016-12-13 21:39:29', 'd');
INSERT INTO `ad_archive` VALUES ('19', 'dynia', 'elektroniczna dynia', '0', '14', '14', '84', '2016-12-13 21:38:32', '2016-12-27 21:38:32', '12', '17', '2016-12-13 21:39:30', 'd');
INSERT INTO `ad_archive` VALUES ('20', 'dynia', 'elektroniczna dynia', '0', '14', '14', '84', '2016-12-13 21:38:33', '2016-12-27 21:38:33', '12', '18', '2016-12-13 21:39:32', 'd');
INSERT INTO `ad_archive` VALUES ('21', 'dynia', 'elektroniczna dynia', '0', '14', '14', '84', '2016-12-13 21:38:34', '2016-12-27 21:38:34', '12', '19', '2016-12-13 21:39:33', 'd');
INSERT INTO `ad_archive` VALUES ('22', 'dynia', 'elektroniczna dynia', '0', '14', '14', '84', '2016-12-13 21:38:35', '2016-12-27 21:38:35', '12', '20', '2016-12-13 21:39:34', 'd');
INSERT INTO `ad_archive` VALUES ('23', 'dynia', 'elektroniczna dynia', '0', '14', '14', '84', '2016-12-13 21:38:36', '2016-12-27 21:38:36', '12', '21', '2016-12-13 21:39:36', 'd');
INSERT INTO `ad_archive` VALUES ('24', 'dynia', 'elektroniczna dynia', '0', '14', '14', '84', '2016-12-13 21:38:36', '2016-12-27 21:38:36', '12', '22', '2016-12-13 21:39:37', 'd');
INSERT INTO `ad_archive` VALUES ('25', 'dynia', 'elektroniczna dynia', '0', '14', '14', '84', '2016-12-13 21:38:37', '2016-12-27 21:38:37', '12', '23', '2016-12-13 21:39:38', 'd');
INSERT INTO `ad_archive` VALUES ('26', 'q', 'sasa', '0', '14', '12', '57', '2016-12-13 21:41:37', '2016-12-27 21:41:37', '1', '24', '2016-12-13 21:58:49', 'd');
INSERT INTO `ad_archive` VALUES ('27', 'a', 'dsds', '0', '14', '16', '98', '2016-12-13 21:59:08', '2016-12-27 21:59:08', '123', '28', '2016-12-13 21:59:31', 'd');
INSERT INTO `ad_archive` VALUES ('28', 'a', 'dsds', '0', '14', '16', '98', '2016-12-13 21:59:07', '2016-12-27 21:59:07', '123', '27', '2016-12-13 21:59:33', 'd');
INSERT INTO `ad_archive` VALUES ('29', 'a', 'dsds', '0', '14', '16', '98', '2016-12-13 21:59:06', '2016-12-27 21:59:06', '123', '26', '2016-12-13 22:00:13', 'd');
INSERT INTO `ad_archive` VALUES ('30', 'a', 'dsds', '0', '14', '16', '98', '2016-12-13 21:59:03', '2016-12-27 21:59:03', '123', '25', '2016-12-13 22:03:33', 'd');
INSERT INTO `ad_archive` VALUES ('31', 'a', 'sdsd', '0', '14', '14', '761', '2016-12-13 22:04:35', '2016-12-27 22:04:35', '1', '29', '2016-12-13 22:05:38', 'd');
INSERT INTO `ad_archive` VALUES ('32', 'a', 'asa', '0', '14', '14', '84', '2016-12-13 22:08:33', '2016-12-27 22:08:33', '1', '30', '2016-12-13 22:08:52', 'd');
INSERT INTO `ad_archive` VALUES ('33', 'a', 'asa', '0', '14', '14', '84', '2016-12-13 22:08:41', '2016-12-27 22:08:41', '1', '37', '2016-12-13 22:20:54', 'd');
INSERT INTO `ad_archive` VALUES ('34', 'a', 'asa', '0', '14', '14', '84', '2016-12-13 22:08:39', '2016-12-27 22:08:39', '1', '36', '2016-12-13 22:21:55', 'd');
INSERT INTO `ad_archive` VALUES ('35', 'a', 'asa', '0', '14', '14', '84', '2016-12-13 22:08:38', '2016-12-27 22:08:38', '1', '35', '2016-12-13 22:25:01', 'd');
INSERT INTO `ad_archive` VALUES ('36', 'a', 'asa', '0', '14', '14', '84', '2016-12-13 22:08:37', '2016-12-27 22:08:37', '1', '34', '2016-12-13 22:25:56', 'd');
INSERT INTO `ad_archive` VALUES ('37', 'a', 'asa', '0', '14', '14', '84', '2016-12-13 22:08:34', '2016-12-27 22:08:34', '1', '31', '2016-12-13 22:26:52', 'd');
INSERT INTO `ad_archive` VALUES ('38', 'a', 'asa', '0', '14', '14', '84', '2016-12-13 22:08:35', '2016-12-27 22:08:35', '1', '32', '2016-12-13 22:26:55', 'd');
INSERT INTO `ad_archive` VALUES ('39', 'a', 'asa', '0', '14', '14', '84', '2016-12-13 22:08:36', '2016-12-27 22:08:36', '1', '33', '2016-12-13 22:26:59', 'd');
INSERT INTO `ad_archive` VALUES ('40', 'a', 'sds', '0', '14', '12', '172', '2016-12-13 22:27:39', '2016-12-27 22:27:39', '1', '42', '2016-12-13 22:27:58', 'd');
INSERT INTO `ad_archive` VALUES ('41', 'a', 'sds', '0', '14', '12', '172', '2016-12-13 22:27:38', '2016-12-27 22:27:38', '1', '41', '2016-12-13 22:29:34', 'd');
INSERT INTO `ad_archive` VALUES ('42', 'a', 'sds', '0', '14', '12', '172', '2016-12-13 22:27:37', '2016-12-27 22:27:37', '1', '40', '2016-12-13 22:30:21', 'd');
INSERT INTO `ad_archive` VALUES ('43', 'a', 'sds', '0', '14', '12', '172', '2016-12-13 22:27:35', '2016-12-27 22:27:35', '1', '39', '2016-12-13 22:31:01', 'd');
INSERT INTO `ad_archive` VALUES ('44', 'a', 'sds', '0', '14', '12', '172', '2016-12-13 22:27:34', '2016-12-27 22:27:34', '1', '38', '2016-12-13 22:35:57', 'd');
INSERT INTO `ad_archive` VALUES ('45', 'kurwa', 'asa', '0', '14', '12', '667', '2016-12-13 22:38:31', '2016-12-27 22:38:31', '111', '48', '2016-12-13 22:39:42', 'd');
INSERT INTO `ad_archive` VALUES ('46', 'kurwa', 'asa', '0', '14', '12', '667', '2016-12-13 22:38:30', '2016-12-27 22:38:30', '111', '47', '2016-12-13 22:39:51', 'd');
INSERT INTO `ad_archive` VALUES ('47', 'kurwa', 'asa', '0', '14', '12', '667', '2016-12-13 22:38:19', '2016-12-27 22:38:19', '111', '43', '2016-12-13 22:42:04', 'd');
INSERT INTO `ad_archive` VALUES ('48', 'kurwa', 'asa', '0', '14', '12', '667', '2016-12-13 22:38:20', '2016-12-27 22:38:20', '111', '44', '2016-12-13 22:42:08', 'd');
INSERT INTO `ad_archive` VALUES ('49', 'kurwa', 'asa', '0', '14', '12', '667', '2016-12-13 22:38:21', '2016-12-27 22:38:21', '111', '45', '2016-12-13 22:42:14', 'd');
INSERT INTO `ad_archive` VALUES ('50', 'kurwa', 'asa', '0', '14', '12', '667', '2016-12-13 22:38:29', '2016-12-27 22:38:29', '111', '46', '2016-12-13 22:42:20', 'd');
INSERT INTO `ad_archive` VALUES ('51', 'a', 'weewe', '0', '14', '12', '332', '2016-12-13 22:50:21', '2016-12-27 22:50:21', '1', '55', '2016-12-13 22:52:22', 'd');
INSERT INTO `ad_archive` VALUES ('52', 'a', 'weewe', '0', '14', '12', '332', '2016-12-13 22:50:19', '2016-12-27 22:50:19', '1', '54', '2016-12-13 22:52:42', 'd');
INSERT INTO `ad_archive` VALUES ('53', 'a', 'weewe', '0', '14', '12', '332', '2016-12-13 22:49:52', '2016-12-27 22:49:52', '1', '53', '2016-12-13 22:53:26', 'd');
INSERT INTO `ad_archive` VALUES ('54', 'a', 'weewe', '0', '14', '12', '332', '2016-12-13 22:49:50', '2016-12-27 22:49:50', '1', '52', '2016-12-13 22:56:46', 'd');
INSERT INTO `ad_archive` VALUES ('55', 'a', 'weewe', '0', '14', '12', '332', '2016-12-13 22:49:41', '2016-12-27 22:49:41', '1', '49', '2016-12-13 22:59:17', 'd');
INSERT INTO `ad_archive` VALUES ('56', 'a', 'weewe', '0', '14', '12', '332', '2016-12-13 22:49:42', '2016-12-27 22:49:42', '1', '50', '2016-12-13 22:59:17', 'd');
INSERT INTO `ad_archive` VALUES ('57', 'a', 'weewe', '0', '14', '12', '332', '2016-12-13 22:49:43', '2016-12-27 22:49:43', '1', '51', '2016-12-13 22:59:17', 'd');
INSERT INTO `ad_archive` VALUES ('58', 'jhkjh', 'sassa', '0', '14', '12', '366', '2016-12-13 23:02:12', '2016-12-27 23:02:12', '1', '60', '2016-12-13 23:03:07', 'd');
INSERT INTO `ad_archive` VALUES ('59', 'jhkjh', 'sassa', '0', '14', '12', '366', '2016-12-13 23:02:11', '2016-12-27 23:02:11', '1', '59', '2016-12-13 23:05:21', 'd');
INSERT INTO `ad_archive` VALUES ('60', 'jhkjh', 'sassa', '0', '14', '12', '366', '2016-12-13 23:02:10', '2016-12-27 23:02:10', '1', '58', '2016-12-13 23:07:13', 'd');
INSERT INTO `ad_archive` VALUES ('61', 'jhkjh', 'sassa', '0', '14', '12', '366', '2016-12-13 23:02:09', '2016-12-27 23:02:09', '1', '57', '2016-12-13 23:07:40', 'd');
INSERT INTO `ad_archive` VALUES ('62', 'jhkjh', 'sassa', '0', '14', '12', '366', '2016-12-13 23:02:08', '2016-12-27 23:02:08', '1', '56', '2016-12-13 23:08:05', 'd');
INSERT INTO `ad_archive` VALUES ('63', 'as', 'sdsds', '0', '14', '12', '84', '2016-12-13 23:10:01', '2016-12-27 23:10:01', '12', '70', '2016-12-13 23:10:09', 'd');
INSERT INTO `ad_archive` VALUES ('64', 'as', 'sdsds', '0', '14', '12', '84', '2016-12-13 23:10:00', '2016-12-27 23:10:00', '12', '69', '2016-12-13 23:10:45', 'd');
INSERT INTO `ad_archive` VALUES ('65', 'as', 'sdsds', '0', '14', '12', '84', '2016-12-13 23:09:59', '2016-12-27 23:09:59', '12', '68', '2016-12-13 23:11:13', 'd');
INSERT INTO `ad_archive` VALUES ('66', 'as', 'sdsds', '0', '14', '12', '84', '2016-12-13 23:09:58', '2016-12-27 23:09:58', '12', '67', '2016-12-13 23:11:44', 'd');
INSERT INTO `ad_archive` VALUES ('67', 'as', 'sdsds', '0', '14', '12', '84', '2016-12-13 23:09:57', '2016-12-27 23:09:57', '12', '66', '2016-12-13 23:14:23', 'd');
INSERT INTO `ad_archive` VALUES ('68', 'as', 'sdsds', '0', '14', '12', '84', '2016-12-13 23:09:56', '2016-12-27 23:09:56', '12', '65', '2016-12-13 23:15:47', 'd');
INSERT INTO `ad_archive` VALUES ('69', 'as', 'sdsds', '0', '14', '12', '84', '2016-12-13 23:09:55', '2016-12-27 23:09:55', '12', '64', '2016-12-13 23:18:55', 'd');
INSERT INTO `ad_archive` VALUES ('70', 'as', 'sdsds', '0', '14', '12', '84', '2016-12-13 23:09:51', '2016-12-27 23:09:51', '12', '61', '2016-12-13 23:21:29', 'd');
INSERT INTO `ad_archive` VALUES ('71', 'as', 'sdsds', '0', '14', '12', '84', '2016-12-13 23:09:54', '2016-12-27 23:09:54', '12', '63', '2016-12-13 23:22:36', 'd');
INSERT INTO `ad_archive` VALUES ('72', 'as', 'sdsds', '0', '14', '12', '84', '2016-12-13 23:09:52', '2016-12-27 23:09:52', '12', '62', '2016-12-13 23:25:56', 'd');
INSERT INTO `ad_archive` VALUES ('73', 'sadasda', 'sdsdds', '0', '14', '14', '459', '2016-12-13 23:26:50', '2016-12-27 23:26:50', '123', '79', '2016-12-13 23:27:00', 'd');
INSERT INTO `ad_archive` VALUES ('74', 'sadasda', 'sdsdds', '0', '14', '14', '459', '2016-12-13 23:26:38', '2016-12-27 23:26:38', '123', '71', '2016-12-13 23:27:56', 'd');
INSERT INTO `ad_archive` VALUES ('75', 'sadasda', 'sdsdds', '0', '14', '14', '459', '2016-12-13 23:26:40', '2016-12-27 23:26:40', '123', '72', '2016-12-13 23:27:56', 'd');
INSERT INTO `ad_archive` VALUES ('76', 'sadasda', 'sdsdds', '0', '14', '14', '459', '2016-12-13 23:26:42', '2016-12-27 23:26:42', '123', '73', '2016-12-13 23:27:56', 'd');
INSERT INTO `ad_archive` VALUES ('77', 'sadasda', 'sdsdds', '0', '14', '14', '459', '2016-12-13 23:26:43', '2016-12-27 23:26:43', '123', '74', '2016-12-13 23:27:56', 'd');
INSERT INTO `ad_archive` VALUES ('78', 'sadasda', 'sdsdds', '0', '14', '14', '459', '2016-12-13 23:26:45', '2016-12-27 23:26:45', '123', '75', '2016-12-13 23:27:56', 'd');
INSERT INTO `ad_archive` VALUES ('79', 'sadasda', 'sdsdds', '0', '14', '14', '459', '2016-12-13 23:26:47', '2016-12-27 23:26:47', '123', '76', '2016-12-13 23:27:56', 'd');
INSERT INTO `ad_archive` VALUES ('80', 'sadasda', 'sdsdds', '0', '14', '14', '459', '2016-12-13 23:26:48', '2016-12-27 23:26:48', '123', '77', '2016-12-13 23:27:56', 'd');
INSERT INTO `ad_archive` VALUES ('81', 'sadasda', 'sdsdds', '0', '14', '14', '459', '2016-12-13 23:26:49', '2016-12-27 23:26:49', '123', '78', '2016-12-13 23:27:56', 'd');
INSERT INTO `ad_archive` VALUES ('82', 'aa', 'qwqw', '0', '14', '13', '284', '2016-12-13 23:29:06', '2016-12-27 23:29:06', '1', '87', '2016-12-13 23:29:44', 'd');
INSERT INTO `ad_archive` VALUES ('83', 'aa', 'qwqw', '0', '14', '13', '284', '2016-12-13 23:29:05', '2016-12-27 23:29:05', '1', '86', '2016-12-13 23:29:55', 'd');
INSERT INTO `ad_archive` VALUES ('84', 'aa', 'qwqw', '0', '14', '13', '284', '2016-12-13 23:29:04', '2016-12-27 23:29:04', '1', '85', '2016-12-13 23:30:00', 'd');
INSERT INTO `ad_archive` VALUES ('85', 'aa', 'qwqw', '0', '14', '13', '284', '2016-12-13 23:29:03', '2016-12-27 23:29:03', '1', '84', '2016-12-13 23:30:03', 'd');
INSERT INTO `ad_archive` VALUES ('86', 'aa', 'qwqw', '0', '14', '13', '284', '2016-12-13 23:29:02', '2016-12-27 23:29:02', '1', '83', '2016-12-13 23:30:07', 'd');
INSERT INTO `ad_archive` VALUES ('87', 'aa', 'qwqw', '0', '14', '13', '284', '2016-12-13 23:29:00', '2016-12-27 23:29:00', '1', '82', '2016-12-13 23:30:12', 'd');
INSERT INTO `ad_archive` VALUES ('88', 'aa', 'qwqw', '0', '14', '13', '284', '2016-12-13 23:28:58', '2016-12-27 23:28:58', '1', '81', '2016-12-13 23:30:19', 'd');
INSERT INTO `ad_archive` VALUES ('89', 'aa', 'qwqw', '0', '14', '13', '284', '2016-12-13 23:28:57', '2016-12-27 23:28:57', '1', '80', '2016-12-13 23:30:24', 'd');
INSERT INTO `ad_archive` VALUES ('90', 'aaa', '1212212', '0', '14', '12', '890', '2016-12-13 23:31:52', '2016-12-27 23:31:52', '12', '106', '2016-12-13 23:32:21', 'd');
INSERT INTO `ad_archive` VALUES ('91', 'aaa', '1212212', '0', '14', '12', '890', '2016-12-13 23:31:48', '2016-12-27 23:31:48', '12', '105', '2016-12-13 23:33:06', 'd');
INSERT INTO `ad_archive` VALUES ('92', 'aaa', '1212212', '0', '14', '12', '890', '2016-12-13 23:31:46', '2016-12-27 23:31:46', '12', '104', '2016-12-13 23:34:45', 'd');
INSERT INTO `ad_archive` VALUES ('93', 'aaa', '1212212', '0', '14', '12', '890', '2016-12-13 23:31:45', '2016-12-27 23:31:45', '12', '103', '2016-12-13 23:34:47', 'd');
INSERT INTO `ad_archive` VALUES ('94', 'aaa', '1212212', '0', '14', '12', '890', '2016-12-13 23:31:43', '2016-12-27 23:31:43', '12', '102', '2016-12-13 23:34:49', 'd');
INSERT INTO `ad_archive` VALUES ('95', 'aaa', '1212212', '0', '14', '12', '890', '2016-12-13 23:31:42', '2016-12-27 23:31:42', '12', '101', '2016-12-13 23:34:51', 'd');
INSERT INTO `ad_archive` VALUES ('96', 'aaa', '1212212', '0', '14', '12', '890', '2016-12-13 23:31:40', '2016-12-27 23:31:40', '12', '100', '2016-12-13 23:34:52', 'd');
INSERT INTO `ad_archive` VALUES ('97', 'aaa', '1212212', '0', '14', '12', '890', '2016-12-13 23:31:39', '2016-12-27 23:31:39', '12', '99', '2016-12-13 23:34:54', 'd');
INSERT INTO `ad_archive` VALUES ('98', 'aaa', '1212212', '0', '14', '12', '890', '2016-12-13 23:31:37', '2016-12-27 23:31:37', '12', '98', '2016-12-13 23:34:56', 'd');
INSERT INTO `ad_archive` VALUES ('99', 'aaa', '1212212', '0', '14', '12', '890', '2016-12-13 23:31:35', '2016-12-27 23:31:35', '12', '97', '2016-12-13 23:34:57', 'd');
INSERT INTO `ad_archive` VALUES ('100', 'aaa', '1212212', '0', '14', '12', '890', '2016-12-13 23:31:33', '2016-12-27 23:31:33', '12', '96', '2016-12-13 23:34:59', 'd');
INSERT INTO `ad_archive` VALUES ('101', 'aaa', '1212212', '0', '14', '12', '890', '2016-12-13 23:31:32', '2016-12-27 23:31:32', '12', '95', '2016-12-13 23:35:01', 'd');
INSERT INTO `ad_archive` VALUES ('102', 'aaa', '1212212', '0', '14', '12', '890', '2016-12-13 23:31:30', '2016-12-27 23:31:30', '12', '94', '2016-12-13 23:35:03', 'd');
INSERT INTO `ad_archive` VALUES ('103', 'aaa', '1212212', '0', '14', '12', '890', '2016-12-13 23:31:28', '2016-12-27 23:31:28', '12', '93', '2016-12-13 23:35:05', 'd');
INSERT INTO `ad_archive` VALUES ('104', 'aaa', '1212212', '0', '14', '12', '890', '2016-12-13 23:31:26', '2016-12-27 23:31:26', '12', '92', '2016-12-13 23:35:07', 'd');
INSERT INTO `ad_archive` VALUES ('105', 'aaa', '1212212', '0', '14', '12', '890', '2016-12-13 23:31:23', '2016-12-27 23:31:23', '12', '91', '2016-12-13 23:35:08', 'd');
INSERT INTO `ad_archive` VALUES ('106', 'aaa', '1212212', '0', '14', '12', '890', '2016-12-13 23:31:21', '2016-12-27 23:31:21', '12', '90', '2016-12-13 23:35:10', 'd');
INSERT INTO `ad_archive` VALUES ('107', 'aaa', '1212212', '0', '14', '12', '890', '2016-12-13 23:31:17', '2016-12-27 23:31:17', '12', '89', '2016-12-13 23:35:12', 'd');
INSERT INTO `ad_archive` VALUES ('108', 'aaa', '1212212', '0', '14', '12', '890', '2016-12-13 23:31:14', '2016-12-27 23:31:14', '12', '88', '2016-12-13 23:35:14', 'd');
INSERT INTO `ad_archive` VALUES ('109', 'dyni', 'Sprzedam elektroniczną dynię.', '0', '14', '12', '815', '2016-12-13 23:36:40', '2016-12-27 23:36:40', '12', '110', '2016-12-13 23:37:11', 'd');
INSERT INTO `ad_archive` VALUES ('110', 'dyni', 'Sprzedam elektroniczną dynię.', '0', '14', '12', '815', '2016-12-13 23:36:39', '2016-12-27 23:36:39', '12', '109', '2016-12-13 23:37:13', 'd');
INSERT INTO `ad_archive` VALUES ('111', 'dyni', 'Sprzedam elektroniczną dynię.', '0', '14', '12', '815', '2016-12-13 23:36:37', '2016-12-27 23:36:37', '12', '108', '2016-12-13 23:37:17', 'd');
INSERT INTO `ad_archive` VALUES ('112', 'dyni', 'Sprzedam elektroniczną dynię.', '0', '14', '12', '815', '2016-12-13 23:36:34', '2016-12-27 23:36:34', '12', '107', '2016-12-13 23:37:20', 'd');
INSERT INTO `ad_archive` VALUES ('113', 'cześć witek', 'rererere', '0', '14', '14', '693', '2016-12-15 11:36:30', '2016-12-29 11:36:30', '123', '1', '2016-12-15 11:59:17', 'd');
INSERT INTO `ad_archive` VALUES ('114', 'jjk', 'jjkhkj', '0', '14', '13', '321', '2016-12-15 15:07:34', '2016-12-29 15:07:34', '111', '4', '2016-12-15 15:07:53', 'd');
INSERT INTO `ad_archive` VALUES ('115', 'jjk', 'jjkhkj', '0', '14', '13', '321', '2016-12-15 15:07:31', '2016-12-29 15:07:31', '111', '3', '2016-12-15 15:07:56', 'd');
INSERT INTO `ad_archive` VALUES ('116', 'cześć witek', 'rererere', '0', '14', '14', '693', '2016-12-15 11:36:39', '2016-12-29 11:36:39', '123', '2', '2016-12-15 15:07:57', 'd');
INSERT INTO `ad_archive` VALUES ('117', 'dasdsada', 'dssddsd', '0', '14', '14', '332', '2016-12-17 14:37:40', '2016-12-31 14:37:40', '123', '1', '2016-12-19 14:49:23', 'd');
INSERT INTO `ad_archive` VALUES ('118', 'dasdsada', 'dssddsd', '0', '14', '14', '332', '2016-12-17 14:37:41', '2016-12-31 14:37:41', '123', '2', '2016-12-20 08:40:03', 'd');
INSERT INTO `ad_archive` VALUES ('119', 'dasdsada', 'dssddsd', '0', '14', '14', '332', '2016-12-17 14:37:42', '2016-12-31 14:37:42', '123', '3', '2016-12-20 08:40:06', 'd');
INSERT INTO `ad_archive` VALUES ('120', 'bbb', 'sdsds', '0', '14', '12', '366', '2016-12-19 16:57:23', '2017-01-02 16:57:23', '11', '4', '2016-12-20 08:40:08', 'd');
INSERT INTO `ad_archive` VALUES ('121', 'bbb', 'sdsds', '0', '14', '12', '366', '2016-12-19 16:57:24', '2017-01-02 16:57:24', '11', '5', '2016-12-20 08:40:10', 'd');
INSERT INTO `ad_archive` VALUES ('122', 'bbb', 'sdsds', '0', '14', '12', '366', '2016-12-19 16:57:25', '2017-01-02 16:57:25', '11', '6', '2016-12-20 08:40:13', 'd');
INSERT INTO `ad_archive` VALUES ('123', 'bbb', 'sdsds', '0', '14', '12', '366', '2016-12-19 16:57:25', '2017-01-02 16:57:25', '11', '7', '2016-12-27 16:13:20', 'd');
INSERT INTO `ad_archive` VALUES ('124', 'bbb', 'sdsds', '0', '14', '12', '366', '2016-12-19 16:57:26', '2017-01-02 16:57:26', '11', '8', '2016-12-28 01:08:00', 'd');
INSERT INTO `ad_archive` VALUES ('125', 'ooo', 'ssds', '0', '14', '12', '389', '2016-12-21 19:06:30', '2017-01-04 19:06:30', '12', '9', '2016-12-28 01:08:03', 'd');
INSERT INTO `ad_archive` VALUES ('126', 'Sprzedam AUDI', 'Sprzedam audi', '0', '14', '16', '355', '2016-12-28 12:26:00', '2017-01-11 12:26:00', '15000', '13', '2016-12-28 12:36:57', 'u');
INSERT INTO `ad_archive` VALUES ('127', 'Sprzedam MERCA', 'Sprzedam audi', '0', '14', '16', '355', '2016-12-28 12:26:00', '2017-01-11 12:26:00', '15000', '13', '2016-12-28 12:37:18', 'u');
INSERT INTO `ad_archive` VALUES ('128', 'Sprzedam MERCA', 'Sprzedam audi', '0', '14', '16', '355', '2016-12-28 12:26:00', '2017-01-11 12:26:00', '200000', '13', '2016-12-28 12:39:23', 'u');
INSERT INTO `ad_archive` VALUES ('129', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 'asa', '0', '14', '12', '332', '2016-12-27 13:07:06', '2017-01-10 13:07:06', '12', '10', '2016-12-28 12:41:28', 'u');
INSERT INTO `ad_archive` VALUES ('130', 'Sprzedam rower', 'we', '0', '14', '14', '913', '2016-12-28 12:22:48', '2017-01-11 12:22:48', '1200', '12', '2016-12-28 12:44:33', 'u');
INSERT INTO `ad_archive` VALUES ('131', 'Sprzedam mazdę', 'sdsd', '0', '14', '12', '409', '2016-12-28 13:32:39', '2017-01-11 13:32:39', '5000', '14', '2016-12-28 13:59:30', 'u');
INSERT INTO `ad_archive` VALUES ('132', 'Sprzedam mazdę', 'sdsd', '0', '14', '12', '409', '2016-12-28 13:32:39', '2017-01-11 13:32:39', '5000', '14', '2016-12-28 14:00:22', 'u');
INSERT INTO `ad_archive` VALUES ('133', 'Sprzedam mazdę!@$%$#@!E#@!?&quot;&gt;::', 'sdsd', '0', '14', '12', '409', '2016-12-28 13:32:39', '2017-01-11 13:32:39', '5000', '14', '2016-12-28 14:00:45', 'u');
INSERT INTO `ad_archive` VALUES ('134', 'sprzedam bazę danych', 'dsd', '0', '14', '12', '172', '2016-12-28 14:36:52', '2017-01-11 14:36:52', '150', '15', '2016-12-28 14:41:09', 'u');
INSERT INTO `ad_archive` VALUES ('135', 'sprzedam bazę danych', 'dsdasas', '0', '14', '12', '172', '2016-12-28 14:36:52', '2017-01-11 14:36:52', '150', '15', '2016-12-28 14:42:47', 'u');
INSERT INTO `ad_archive` VALUES ('136', 'sprzedam bazę danychv', 'dsdasas', '0', '14', '12', '172', '2016-12-28 14:36:52', '2017-01-11 14:36:52', '150', '15', '2016-12-28 14:44:12', 'u');
INSERT INTO `ad_archive` VALUES ('137', 'sas', 'dsd', '0', '14', '12', '366', '2016-12-28 14:45:17', '2017-01-11 14:45:17', '12', '16', '2016-12-28 14:46:58', 'u');
INSERT INTO `ad_archive` VALUES ('138', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 'asa', '0', '14', '15', '332', '2016-12-27 13:07:06', '2017-01-10 13:07:06', '12', '10', '2016-12-28 14:59:29', 'd');
INSERT INTO `ad_archive` VALUES ('139', 'aa', 'sd', '0', '14', '13', '423', '2016-12-28 00:56:18', '2017-01-11 00:56:18', '12', '11', '2016-12-28 14:59:32', 'd');
INSERT INTO `ad_archive` VALUES ('140', 'Sprzedam MERCA', 'Sprzedam merca', '0', '14', '16', '815', '2016-12-28 12:26:00', '2017-01-11 12:26:00', '20', '13', '2016-12-28 15:00:03', 'u');
INSERT INTO `ad_archive` VALUES ('141', 'Sprzedam rower i krowę', 'we', '0', '14', '14', '913', '2016-12-28 12:22:48', '2017-01-11 12:22:48', '1200', '12', '2016-12-28 15:03:21', 'u');
INSERT INTO `ad_archive` VALUES ('142', 'sprzedam bazę danychv', 'dsdasas', '0', '14', '12', '172', '2016-12-28 14:36:52', '2017-01-11 14:36:52', '150', '15', '2016-12-28 15:07:43', 'u');
INSERT INTO `ad_archive` VALUES ('143', 'Sprzedam rower i krowę', 'we', '0', '14', '14', '913', '2016-12-28 12:22:48', '2017-01-11 12:22:48', '1200', '12', '2016-12-28 15:12:24', 'd');
INSERT INTO `ad_archive` VALUES ('144', 'Sprzedam MERCAeee', 'Sprzedam merca', '0', '14', '16', '815', '2016-12-28 12:26:00', '2017-01-11 12:26:00', '20', '13', '2016-12-28 15:12:26', 'd');
INSERT INTO `ad_archive` VALUES ('145', 'Nie sprzedam mazdy', 'sdsd', '0', '14', '12', '409', '2016-12-28 13:32:39', '2017-01-11 13:32:39', '5000', '14', '2016-12-28 15:12:29', 'd');
INSERT INTO `ad_archive` VALUES ('146', 'sprzedam bazę danych', 'dsdasas', '0', '14', '12', '172', '2016-12-28 14:36:52', '2017-01-11 14:36:52', '150', '15', '2016-12-28 15:12:31', 'd');
INSERT INTO `ad_archive` VALUES ('147', 'sas', 'dsd', '0', '14', '12', '366', '2016-12-28 14:45:17', '2017-01-11 14:45:17', '12', '16', '2016-12-28 15:12:33', 'd');
INSERT INTO `ad_archive` VALUES ('148', 'Sprzedam wzór taylora', 'bla bla bla\r\n', '0', '14', '12', '762', '2016-12-28 15:13:01', '2017-01-11 15:13:01', '0', '17', '2016-12-28 15:29:43', 'd');
INSERT INTO `ad_archive` VALUES ('149', 'aaaa', 'da', '0', '14', '12', '84', '2016-12-28 15:29:54', '2017-01-11 15:29:54', '1212', '18', '2016-12-28 15:31:03', 'u');
INSERT INTO `ad_archive` VALUES ('150', 'aaaa', 'da', '0', '14', '12', '84', '2016-12-28 15:29:54', '2017-01-11 15:29:54', '1212', '18', '2016-12-28 15:31:37', 'u');
INSERT INTO `ad_archive` VALUES ('151', 'aaaa', 'da', '0', '14', '12', '84', '2016-12-28 15:29:54', '2017-01-11 15:29:54', '1212', '18', '2016-12-28 15:34:03', 'd');
INSERT INTO `ad_archive` VALUES ('152', 'a', 'sas', '0', '14', '12', '84', '2016-12-28 15:37:14', '2017-01-11 15:37:14', '12', '19', '2016-12-28 15:40:21', 'u');
INSERT INTO `ad_archive` VALUES ('153', 'a', 'sas', '0', '14', '12', '84', '2016-12-28 15:37:14', '2017-01-11 15:37:14', '12', '19', '2016-12-28 15:42:55', 'u');
INSERT INTO `ad_archive` VALUES ('154', 'a', 'sas', '0', '14', '12', '84', '2016-12-28 15:37:14', '2017-01-11 15:37:14', '12', '19', '2016-12-28 15:48:14', 'u');
INSERT INTO `ad_archive` VALUES ('155', 'a', 'sas', '0', '14', '12', '84', '2016-12-28 15:37:14', '2017-01-11 15:37:14', '12', '19', '2016-12-28 15:52:52', 'u');
INSERT INTO `ad_archive` VALUES ('156', 'a', 'sas', '0', '14', '12', '84', '2016-12-28 15:37:14', '2017-01-11 15:37:14', '12', '19', '2016-12-28 16:00:22', 'u');
INSERT INTO `ad_archive` VALUES ('157', 'a', 'sas', '0', '14', '12', '84', '2016-12-28 15:37:14', '2017-01-11 15:37:14', '12', '19', '2016-12-28 16:01:31', 'u');
INSERT INTO `ad_archive` VALUES ('158', 'a', 'sas', '0', '14', '12', '84', '2016-12-28 15:37:14', '2017-01-11 15:37:14', '12', '19', '2016-12-28 16:07:51', 'u');
INSERT INTO `ad_archive` VALUES ('159', 'a', 'sas', '0', '14', '12', '84', '2016-12-28 15:37:14', '2017-01-11 15:37:14', '12', '19', '2016-12-28 16:08:22', 'u');
INSERT INTO `ad_archive` VALUES ('160', 'a', 'sas', '0', '14', '12', '84', '2016-12-28 15:37:14', '2017-01-11 15:37:14', '12', '19', '2016-12-28 16:09:00', 'u');
INSERT INTO `ad_archive` VALUES ('161', 'a', 'sas', '0', '14', '12', '84', '2016-12-28 15:37:14', '2017-01-11 15:37:14', '12', '19', '2016-12-28 16:09:16', 'u');
INSERT INTO `ad_archive` VALUES ('162', 'a', 'sas', '0', '14', '12', '84', '2016-12-28 15:37:14', '2017-01-11 15:37:14', '12', '19', '2016-12-28 16:10:25', 'u');
INSERT INTO `ad_archive` VALUES ('163', 'a', 'sas', '0', '14', '12', '84', '2016-12-28 15:37:14', '2017-01-11 15:37:14', '12', '19', '2016-12-28 16:10:50', 'd');
INSERT INTO `ad_archive` VALUES ('164', 'kamil', 'sasa', '0', '14', '12', '332', '2016-12-28 16:14:04', '2017-01-11 16:14:04', '123', '20', '2016-12-28 16:24:47', 'u');
INSERT INTO `ad_archive` VALUES ('165', 'kamil', 'sasa', '0', '14', '12', '332', '2016-12-28 16:14:04', '2017-01-11 16:14:04', '123', '20', '2016-12-28 16:33:38', 'u');
INSERT INTO `ad_archive` VALUES ('166', 'kamil', 'sasa', '0', '14', '12', '332', '2016-12-28 16:14:04', '2017-01-11 16:14:04', '123', '20', '2016-12-28 16:35:14', 'u');
INSERT INTO `ad_archive` VALUES ('167', 'kamil', 'sasa', '0', '14', '12', '332', '2016-12-28 16:14:04', '2017-01-11 16:14:04', '123', '20', '2016-12-28 17:24:02', 'u');
INSERT INTO `ad_archive` VALUES ('168', 'kamil', 'sasa', '0', '14', '12', '332', '2016-12-28 16:14:04', '2017-01-11 16:14:04', '123', '20', '2016-12-28 21:20:20', 'u');
INSERT INTO `ad_archive` VALUES ('169', 'buaha', 'sdsd', '0', '16', '12', '84', '2016-12-28 21:40:39', '2017-01-11 21:40:39', '132', '21', '2016-12-28 21:49:55', 'u');
INSERT INTO `ad_archive` VALUES ('170', 'ahahaa', 'sdsd', '0', '16', '12', '84', '2016-12-28 21:40:39', '2017-01-11 21:40:39', '132', '21', '2016-12-28 21:50:04', 'd');
INSERT INTO `ad_archive` VALUES ('171', 'sas', 'sds', '0', '16', '12', '459', '2016-12-28 21:57:13', '2017-01-11 21:57:13', '12', '22', '2016-12-30 21:13:55', 'd');
INSERT INTO `ad_archive` VALUES ('172', 'alal', 'asas', '0', '17', '12', '366', '2016-12-30 21:17:25', '2017-01-13 21:17:25', '12', '23', '2016-12-30 21:21:15', 'd');
INSERT INTO `ad_archive` VALUES ('173', 'a', 'dsd', '0', '17', '12', '84', '2016-12-30 21:17:48', '2017-01-13 21:17:48', '12', '24', '2016-12-30 21:21:35', 'd');
INSERT INTO `ad_archive` VALUES ('174', 'jkjsa', 'ssdsd', '0', '19', '12', '366', '2016-12-30 21:28:25', '2017-01-13 21:28:25', '12', '25', '2016-12-30 21:28:46', 'u');
INSERT INTO `ad_archive` VALUES ('175', 'jkjsa', 'ssdsd', '0', '19', '12', '366', '2016-12-30 21:28:25', '2017-01-13 21:28:25', '12', '25', '2016-12-30 21:29:16', 'u');
INSERT INTO `ad_archive` VALUES ('176', 'jkjsa', 'ssdsd', '0', '19', '12', '366', '2016-12-30 21:28:25', '2017-01-13 21:28:25', '12', '25', '2016-12-30 21:30:49', 'u');
INSERT INTO `ad_archive` VALUES ('177', 'jkjsa', 'ssdsd', '0', '19', '12', '366', '2016-12-30 21:28:25', '2017-01-13 21:28:25', '12', '25', '2016-12-30 21:31:19', 'u');
INSERT INTO `ad_archive` VALUES ('178', 'jkjsa', 'ssdsd', '0', '19', '12', '366', '2016-12-30 21:28:25', '2017-01-13 21:28:25', '12', '25', '2016-12-30 21:32:13', 'd');
INSERT INTO `ad_archive` VALUES ('179', 'buahahaha', 'sd', '0', '20', '12', '366', '2016-12-30 21:35:29', '2017-01-13 21:35:29', '123', '26', '2016-12-30 21:36:01', 'u');
INSERT INTO `ad_archive` VALUES ('180', 'buahahaha', 'sd', '0', '20', '12', '366', '2016-12-30 21:35:29', '2017-01-13 21:35:29', '123', '26', '2016-12-30 21:37:00', 'u');
INSERT INTO `ad_archive` VALUES ('181', 'buahahaha', 'sd', '0', '20', '12', '366', '2016-12-30 21:35:29', '2017-01-13 21:35:29', '123', '26', '2016-12-30 21:37:19', 'u');
INSERT INTO `ad_archive` VALUES ('182', 'buahahaha', 'sd', '0', '20', '12', '366', '2016-12-30 21:35:29', '2017-01-13 21:35:29', '123', '26', '2016-12-30 21:37:39', 'u');
INSERT INTO `ad_archive` VALUES ('183', 'buahahaha', 'sd', '0', '20', '12', '366', '2016-12-30 21:35:29', '2017-01-13 21:35:29', '123', '26', '2016-12-30 21:42:41', 'u');
INSERT INTO `ad_archive` VALUES ('184', 'buahahaha', 'sd', '0', '20', '12', '366', '2016-12-30 21:35:29', '2017-01-13 21:35:29', '123', '26', '2016-12-30 21:43:12', 'u');
INSERT INTO `ad_archive` VALUES ('185', 'buahahaha', 'sd', '0', '20', '12', '366', '2016-12-30 21:35:29', '2017-01-13 21:35:29', '123', '26', '2016-12-30 21:44:00', 'd');
INSERT INTO `ad_archive` VALUES ('186', 'tyr', 'gdfgdfgd', '0', '15', '14', '366', '2017-01-01 21:21:22', '2017-01-15 21:21:22', '12', '21', '2017-01-01 21:22:02', 'd');
INSERT INTO `ad_archive` VALUES ('187', '541', '45', '0', '14', '13', '350', '2017-01-01 21:22:52', '2017-01-15 21:22:52', '4', '22', '2017-01-01 21:23:38', 'd');
INSERT INTO `ad_archive` VALUES ('188', '541', '45', '0', '14', '13', '350', '2017-01-01 21:22:56', '2017-01-15 21:22:56', '4', '23', '2017-01-01 21:23:41', 'd');
INSERT INTO `ad_archive` VALUES ('189', 'tretreter', 'terterter', '0', '16', '13', '474', '2017-01-01 21:24:35', '2017-01-15 21:24:35', '345', '24', '2017-01-01 21:25:02', 'u');
INSERT INTO `ad_archive` VALUES ('190', 'tretreter', 'terterter', '0', '16', '13', '474', '2017-01-01 21:24:35', '2017-01-15 21:24:35', '345', '24', '2017-01-01 21:25:20', 'u');
INSERT INTO `ad_archive` VALUES ('191', 'tretreter', 'terterter', '0', '16', '13', '474', '2017-01-01 21:24:35', '2017-01-15 21:24:35', '345', '24', '2017-01-01 21:25:51', 'd');
INSERT INTO `ad_archive` VALUES ('192', 'kamil', 'sasa', '0', '14', '12', '332', '2016-12-28 16:14:04', '2017-01-11 16:14:04', '123', '20', '2017-01-01 21:35:20', 'u');
INSERT INTO `ad_archive` VALUES ('193', 'kamil', 'sasa', '0', '14', '12', '332', '2016-12-28 16:14:04', '2017-01-11 16:14:04', '123', '20', '2017-01-01 21:35:44', 'd');
INSERT INTO `ad_archive` VALUES ('194', 'asdada', 'qwqw', '0', '14', '13', '459', '2017-01-01 21:32:46', '2017-01-15 21:32:46', '12', '25', '2017-01-01 21:35:46', 'd');
INSERT INTO `ad_archive` VALUES ('195', 'qwq', 'wqwq', '0', '14', '14', '84', '2017-01-01 21:33:34', '2017-01-15 21:33:34', '12', '26', '2017-01-01 21:35:49', 'd');
INSERT INTO `ad_archive` VALUES ('196', 'dasd', 'dsd', '0', '14', '12', '366', '2017-01-01 21:34:33', '2017-01-15 21:34:33', '23', '27', '2017-01-01 21:35:54', 'd');
INSERT INTO `ad_archive` VALUES ('197', 'jkljkl', 'dfss', '0', '14', '12', '624', '2017-01-01 21:36:50', '2017-01-15 21:36:50', '12', '28', '2017-01-01 21:38:26', 'u');
INSERT INTO `ad_archive` VALUES ('198', '645654', '645', '0', '14', '13', '696', '2017-01-01 22:08:19', '2017-01-15 22:08:19', '65464', '36', '2017-01-01 22:57:04', 'u');
INSERT INTO `ad_archive` VALUES ('199', '645654', '645', '0', '14', '13', '696', '2017-01-01 22:08:19', '2017-01-15 22:08:19', '65464', '36', '2017-01-01 23:02:30', 'u');
INSERT INTO `ad_archive` VALUES ('200', '645654', '645', '1', '14', '13', '696', '2017-01-01 22:08:19', '2017-01-15 22:08:19', '65464', '36', '2017-01-01 23:07:30', 'u');
INSERT INTO `ad_archive` VALUES ('201', '645654', '645', '2', '14', '13', '696', '2017-01-01 22:08:19', '2017-01-15 22:08:19', '65464', '36', '2017-01-01 23:07:31', 'u');
INSERT INTO `ad_archive` VALUES ('202', '645654', '645', '3', '14', '13', '696', '2017-01-01 22:08:19', '2017-01-15 22:08:19', '65464', '36', '2017-01-01 23:07:31', 'u');
INSERT INTO `ad_archive` VALUES ('203', '645654', '645', '4', '14', '13', '696', '2017-01-01 22:08:19', '2017-01-15 22:08:19', '65464', '36', '2017-01-01 23:07:32', 'u');
INSERT INTO `ad_archive` VALUES ('204', '645654', '645', '5', '14', '13', '696', '2017-01-01 22:08:19', '2017-01-15 22:08:19', '65464', '36', '2017-01-01 23:07:32', 'u');
INSERT INTO `ad_archive` VALUES ('205', '645654', '645', '6', '14', '13', '696', '2017-01-01 22:08:19', '2017-01-15 22:08:19', '65464', '36', '2017-01-01 23:07:32', 'u');
INSERT INTO `ad_archive` VALUES ('206', '645654', '645', '7', '14', '13', '696', '2017-01-01 22:08:19', '2017-01-15 22:08:19', '65464', '36', '2017-01-01 23:07:32', 'u');
INSERT INTO `ad_archive` VALUES ('207', '645654', '645', '8', '14', '13', '696', '2017-01-01 22:08:19', '2017-01-15 22:08:19', '65464', '36', '2017-01-01 23:07:32', 'u');
INSERT INTO `ad_archive` VALUES ('208', '645654', '645', '9', '14', '13', '696', '2017-01-01 22:08:19', '2017-01-15 22:08:19', '65464', '36', '2017-01-01 23:07:33', 'u');
INSERT INTO `ad_archive` VALUES ('209', '645654', '645', '10', '14', '13', '696', '2017-01-01 22:08:19', '2017-01-15 22:08:19', '65464', '36', '2017-01-01 23:07:33', 'u');
INSERT INTO `ad_archive` VALUES ('210', '645654', '645', '11', '14', '13', '696', '2017-01-01 22:08:19', '2017-01-15 22:08:19', '65464', '36', '2017-01-01 23:07:33', 'u');
INSERT INTO `ad_archive` VALUES ('211', '645654', '645', '12', '14', '13', '696', '2017-01-01 22:08:19', '2017-01-15 22:08:19', '65464', '36', '2017-01-01 23:07:33', 'u');
INSERT INTO `ad_archive` VALUES ('212', '645654', '645', '13', '14', '13', '696', '2017-01-01 22:08:19', '2017-01-15 22:08:19', '65464', '36', '2017-01-01 23:07:33', 'u');
INSERT INTO `ad_archive` VALUES ('213', '645654', '645', '14', '14', '13', '696', '2017-01-01 22:08:19', '2017-01-15 22:08:19', '65464', '36', '2017-01-01 23:07:33', 'u');
INSERT INTO `ad_archive` VALUES ('214', '645654', '645', '15', '14', '13', '696', '2017-01-01 22:08:19', '2017-01-15 22:08:19', '65464', '36', '2017-01-01 23:07:34', 'u');
INSERT INTO `ad_archive` VALUES ('215', '645654', '645', '16', '14', '13', '696', '2017-01-01 22:08:19', '2017-01-15 22:08:19', '65464', '36', '2017-01-01 23:07:34', 'u');
INSERT INTO `ad_archive` VALUES ('216', '645654', '645', '17', '14', '13', '696', '2017-01-01 22:08:19', '2017-01-15 22:08:19', '65464', '36', '2017-01-01 23:07:34', 'u');
INSERT INTO `ad_archive` VALUES ('217', '645654', '645', '18', '14', '13', '696', '2017-01-01 22:08:19', '2017-01-15 22:08:19', '65464', '36', '2017-01-01 23:07:34', 'u');
INSERT INTO `ad_archive` VALUES ('218', '645654', '645', '19', '14', '13', '696', '2017-01-01 22:08:19', '2017-01-15 22:08:19', '65464', '36', '2017-01-01 23:07:34', 'u');
INSERT INTO `ad_archive` VALUES ('219', '645654', '645', '20', '14', '13', '696', '2017-01-01 22:08:19', '2017-01-15 22:08:19', '65464', '36', '2017-01-01 23:07:34', 'u');
INSERT INTO `ad_archive` VALUES ('220', '645654', '645', '21', '14', '13', '696', '2017-01-01 22:08:19', '2017-01-15 22:08:19', '65464', '36', '2017-01-01 23:07:35', 'u');
INSERT INTO `ad_archive` VALUES ('221', '645654', '645', '22', '14', '13', '696', '2017-01-01 22:08:19', '2017-01-15 22:08:19', '65464', '36', '2017-01-01 23:07:35', 'u');
INSERT INTO `ad_archive` VALUES ('222', '645654', '645', '23', '14', '13', '696', '2017-01-01 22:08:19', '2017-01-15 22:08:19', '65464', '36', '2017-01-01 23:07:35', 'u');
INSERT INTO `ad_archive` VALUES ('223', '645654', '645', '24', '14', '13', '696', '2017-01-01 22:08:19', '2017-01-15 22:08:19', '65464', '36', '2017-01-01 23:07:35', 'u');
INSERT INTO `ad_archive` VALUES ('224', 'rete', '645645', '0', '14', '16', '140', '2017-01-01 22:07:58', '2017-01-15 22:07:58', '456', '35', '2017-01-01 23:07:38', 'u');
INSERT INTO `ad_archive` VALUES ('225', 'rete', '645645', '1', '14', '16', '140', '2017-01-01 22:07:58', '2017-01-15 22:07:58', '456', '35', '2017-01-01 23:07:41', 'u');
INSERT INTO `ad_archive` VALUES ('226', 'rete', '645645', '2', '14', '16', '140', '2017-01-01 22:07:58', '2017-01-15 22:07:58', '456', '35', '2017-01-01 23:07:42', 'u');
INSERT INTO `ad_archive` VALUES ('227', 'rete', '645645', '3', '14', '16', '140', '2017-01-01 22:07:58', '2017-01-15 22:07:58', '456', '35', '2017-01-01 23:07:42', 'u');
INSERT INTO `ad_archive` VALUES ('228', 'rete', '645645', '4', '14', '16', '140', '2017-01-01 22:07:58', '2017-01-15 22:07:58', '456', '35', '2017-01-01 23:07:42', 'u');
INSERT INTO `ad_archive` VALUES ('229', 'rete', '645645', '5', '14', '16', '140', '2017-01-01 22:07:58', '2017-01-15 22:07:58', '456', '35', '2017-01-01 23:07:43', 'u');
INSERT INTO `ad_archive` VALUES ('230', 'rete', '645645', '6', '14', '16', '140', '2017-01-01 22:07:58', '2017-01-15 22:07:58', '456', '35', '2017-01-01 23:07:44', 'u');
INSERT INTO `ad_archive` VALUES ('231', 'rete', '645645', '7', '14', '16', '140', '2017-01-01 22:07:58', '2017-01-15 22:07:58', '456', '35', '2017-01-01 23:07:44', 'u');
INSERT INTO `ad_archive` VALUES ('232', 'rete', '645645', '8', '14', '16', '140', '2017-01-01 22:07:58', '2017-01-15 22:07:58', '456', '35', '2017-01-01 23:07:45', 'u');
INSERT INTO `ad_archive` VALUES ('233', 'rete', '645645', '9', '14', '16', '140', '2017-01-01 22:07:58', '2017-01-15 22:07:58', '456', '35', '2017-01-01 23:07:45', 'u');
INSERT INTO `ad_archive` VALUES ('234', 'rete', '645645', '10', '14', '16', '140', '2017-01-01 22:07:58', '2017-01-15 22:07:58', '456', '35', '2017-01-01 23:07:45', 'u');
INSERT INTO `ad_archive` VALUES ('235', 'rete', '645645', '11', '14', '16', '140', '2017-01-01 22:07:58', '2017-01-15 22:07:58', '456', '35', '2017-01-01 23:07:45', 'u');
INSERT INTO `ad_archive` VALUES ('236', 'rete', '645645', '12', '14', '16', '140', '2017-01-01 22:07:58', '2017-01-15 22:07:58', '456', '35', '2017-01-01 23:07:46', 'u');
INSERT INTO `ad_archive` VALUES ('237', 'rete', '645645', '13', '14', '16', '140', '2017-01-01 22:07:58', '2017-01-15 22:07:58', '456', '35', '2017-01-01 23:07:46', 'u');
INSERT INTO `ad_archive` VALUES ('238', 'rete', '645645', '14', '14', '16', '140', '2017-01-01 22:07:58', '2017-01-15 22:07:58', '456', '35', '2017-01-01 23:07:47', 'u');
INSERT INTO `ad_archive` VALUES ('239', 'rete', '645645', '15', '14', '16', '140', '2017-01-01 22:07:58', '2017-01-15 22:07:58', '456', '35', '2017-01-01 23:07:47', 'u');
INSERT INTO `ad_archive` VALUES ('240', 'rete', '645645', '16', '14', '16', '140', '2017-01-01 22:07:58', '2017-01-15 22:07:58', '456', '35', '2017-01-01 23:07:47', 'u');
INSERT INTO `ad_archive` VALUES ('241', 'rete', '645645', '17', '14', '16', '140', '2017-01-01 22:07:58', '2017-01-15 22:07:58', '456', '35', '2017-01-01 23:07:47', 'u');
INSERT INTO `ad_archive` VALUES ('242', 'rete', '645645', '18', '14', '16', '140', '2017-01-01 22:07:58', '2017-01-15 22:07:58', '456', '35', '2017-01-01 23:07:48', 'u');
INSERT INTO `ad_archive` VALUES ('243', 'rete', '645645', '19', '14', '16', '140', '2017-01-01 22:07:58', '2017-01-15 22:07:58', '456', '35', '2017-01-01 23:07:48', 'u');
INSERT INTO `ad_archive` VALUES ('244', 'rete', '645645', '20', '14', '16', '140', '2017-01-01 22:07:58', '2017-01-15 22:07:58', '456', '35', '2017-01-01 23:07:48', 'u');
INSERT INTO `ad_archive` VALUES ('245', 'rete', '645645', '21', '14', '16', '140', '2017-01-01 22:07:58', '2017-01-15 22:07:58', '456', '35', '2017-01-01 23:07:48', 'u');
INSERT INTO `ad_archive` VALUES ('246', 'rete', '645645', '22', '14', '16', '140', '2017-01-01 22:07:58', '2017-01-15 22:07:58', '456', '35', '2017-01-01 23:07:48', 'u');
INSERT INTO `ad_archive` VALUES ('247', 'rete', '645645', '23', '14', '16', '140', '2017-01-01 22:07:58', '2017-01-15 22:07:58', '456', '35', '2017-01-01 23:07:49', 'u');
INSERT INTO `ad_archive` VALUES ('248', 'rete', '645645', '24', '14', '16', '140', '2017-01-01 22:07:58', '2017-01-15 22:07:58', '456', '35', '2017-01-01 23:07:49', 'u');
INSERT INTO `ad_archive` VALUES ('249', 'rete', '645645', '25', '14', '16', '140', '2017-01-01 22:07:58', '2017-01-15 22:07:58', '456', '35', '2017-01-01 23:07:49', 'u');
INSERT INTO `ad_archive` VALUES ('250', 'rete', '645645', '26', '14', '16', '140', '2017-01-01 22:07:58', '2017-01-15 22:07:58', '456', '35', '2017-01-01 23:07:49', 'u');
INSERT INTO `ad_archive` VALUES ('251', 'rete', '645645', '27', '14', '16', '140', '2017-01-01 22:07:58', '2017-01-15 22:07:58', '456', '35', '2017-01-01 23:07:50', 'u');
INSERT INTO `ad_archive` VALUES ('252', 'rete', '645645', '28', '14', '16', '140', '2017-01-01 22:07:58', '2017-01-15 22:07:58', '456', '35', '2017-01-01 23:07:50', 'u');
INSERT INTO `ad_archive` VALUES ('253', 'rete', '645645', '29', '14', '16', '140', '2017-01-01 22:07:58', '2017-01-15 22:07:58', '456', '35', '2017-01-01 23:07:50', 'u');
INSERT INTO `ad_archive` VALUES ('254', 'rete', '645645', '30', '14', '16', '140', '2017-01-01 22:07:58', '2017-01-15 22:07:58', '456', '35', '2017-01-01 23:07:51', 'u');
INSERT INTO `ad_archive` VALUES ('255', 'rete', '645645', '31', '14', '16', '140', '2017-01-01 22:07:58', '2017-01-15 22:07:58', '456', '35', '2017-01-01 23:07:51', 'u');
INSERT INTO `ad_archive` VALUES ('256', 'rete', '645645', '32', '14', '16', '140', '2017-01-01 22:07:58', '2017-01-15 22:07:58', '456', '35', '2017-01-01 23:07:52', 'u');
INSERT INTO `ad_archive` VALUES ('257', 'rete', '645645', '33', '14', '16', '140', '2017-01-01 22:07:58', '2017-01-15 22:07:58', '456', '35', '2017-01-01 23:07:53', 'u');
INSERT INTO `ad_archive` VALUES ('258', 'rete', '645645', '34', '14', '16', '140', '2017-01-01 22:07:58', '2017-01-15 22:07:58', '456', '35', '2017-01-01 23:07:53', 'u');
INSERT INTO `ad_archive` VALUES ('259', 'rete', '645645', '35', '14', '16', '140', '2017-01-01 22:07:58', '2017-01-15 22:07:58', '456', '35', '2017-01-01 23:07:53', 'u');
INSERT INTO `ad_archive` VALUES ('260', 'rete', '645645', '36', '14', '16', '140', '2017-01-01 22:07:58', '2017-01-15 22:07:58', '456', '35', '2017-01-01 23:07:53', 'u');
INSERT INTO `ad_archive` VALUES ('261', 'rete', '645645', '37', '14', '16', '140', '2017-01-01 22:07:58', '2017-01-15 22:07:58', '456', '35', '2017-01-01 23:07:53', 'u');
INSERT INTO `ad_archive` VALUES ('262', 'rete', '645645', '38', '14', '16', '140', '2017-01-01 22:07:58', '2017-01-15 22:07:58', '456', '35', '2017-01-01 23:07:54', 'u');
INSERT INTO `ad_archive` VALUES ('263', 'rete', '645645', '39', '14', '16', '140', '2017-01-01 22:07:58', '2017-01-15 22:07:58', '456', '35', '2017-01-01 23:07:54', 'u');
INSERT INTO `ad_archive` VALUES ('264', 'rete', '645645', '40', '14', '16', '140', '2017-01-01 22:07:58', '2017-01-15 22:07:58', '456', '35', '2017-01-01 23:07:54', 'u');
INSERT INTO `ad_archive` VALUES ('265', 'rete', '645645', '41', '14', '16', '140', '2017-01-01 22:07:58', '2017-01-15 22:07:58', '456', '35', '2017-01-01 23:07:54', 'u');
INSERT INTO `ad_archive` VALUES ('266', 'rete', '645645', '42', '14', '16', '140', '2017-01-01 22:07:58', '2017-01-15 22:07:58', '456', '35', '2017-01-01 23:07:54', 'u');
INSERT INTO `ad_archive` VALUES ('267', 'rete', '645645', '43', '14', '16', '140', '2017-01-01 22:07:58', '2017-01-15 22:07:58', '456', '35', '2017-01-01 23:07:54', 'u');
INSERT INTO `ad_archive` VALUES ('268', 'rete', '645645', '44', '14', '16', '140', '2017-01-01 22:07:58', '2017-01-15 22:07:58', '456', '35', '2017-01-01 23:07:54', 'u');
INSERT INTO `ad_archive` VALUES ('269', 'rete', '645645', '45', '14', '16', '140', '2017-01-01 22:07:58', '2017-01-15 22:07:58', '456', '35', '2017-01-01 23:07:55', 'u');
INSERT INTO `ad_archive` VALUES ('270', 'rete', '645645', '46', '14', '16', '140', '2017-01-01 22:07:58', '2017-01-15 22:07:58', '456', '35', '2017-01-01 23:07:55', 'u');
INSERT INTO `ad_archive` VALUES ('271', 'rete', '645645', '47', '14', '16', '140', '2017-01-01 22:07:58', '2017-01-15 22:07:58', '456', '35', '2017-01-01 23:07:55', 'u');
INSERT INTO `ad_archive` VALUES ('272', 'rete', '645645', '48', '14', '16', '140', '2017-01-01 22:07:58', '2017-01-15 22:07:58', '456', '35', '2017-01-01 23:07:55', 'u');
INSERT INTO `ad_archive` VALUES ('273', 'rete', '645645', '49', '14', '16', '140', '2017-01-01 22:07:58', '2017-01-15 22:07:58', '456', '35', '2017-01-01 23:07:55', 'u');
INSERT INTO `ad_archive` VALUES ('274', 'rete', '645645', '50', '14', '16', '140', '2017-01-01 22:07:58', '2017-01-15 22:07:58', '456', '35', '2017-01-01 23:07:55', 'u');
INSERT INTO `ad_archive` VALUES ('275', 'rete', '645645', '51', '14', '16', '140', '2017-01-01 22:07:58', '2017-01-15 22:07:58', '456', '35', '2017-01-01 23:07:55', 'u');
INSERT INTO `ad_archive` VALUES ('276', 'rete', '645645', '52', '14', '16', '140', '2017-01-01 22:07:58', '2017-01-15 22:07:58', '456', '35', '2017-01-01 23:07:56', 'u');
INSERT INTO `ad_archive` VALUES ('277', 'rete', '645645', '53', '14', '16', '140', '2017-01-01 22:07:58', '2017-01-15 22:07:58', '456', '35', '2017-01-01 23:07:56', 'u');
INSERT INTO `ad_archive` VALUES ('278', 'rete', '645645', '54', '14', '16', '140', '2017-01-01 22:07:58', '2017-01-15 22:07:58', '456', '35', '2017-01-01 23:07:56', 'u');
INSERT INTO `ad_archive` VALUES ('279', 'rete', '645645', '55', '14', '16', '140', '2017-01-01 22:07:58', '2017-01-15 22:07:58', '456', '35', '2017-01-01 23:07:56', 'u');
INSERT INTO `ad_archive` VALUES ('280', 'rete', '645645', '56', '14', '16', '140', '2017-01-01 22:07:58', '2017-01-15 22:07:58', '456', '35', '2017-01-01 23:07:56', 'u');
INSERT INTO `ad_archive` VALUES ('281', 'rete', '645645', '57', '14', '16', '140', '2017-01-01 22:07:58', '2017-01-15 22:07:58', '456', '35', '2017-01-01 23:07:56', 'u');
INSERT INTO `ad_archive` VALUES ('282', 'rete', '645645', '58', '14', '16', '140', '2017-01-01 22:07:58', '2017-01-15 22:07:58', '456', '35', '2017-01-01 23:07:56', 'u');
INSERT INTO `ad_archive` VALUES ('283', 'rete', '645645', '59', '14', '16', '140', '2017-01-01 22:07:58', '2017-01-15 22:07:58', '456', '35', '2017-01-01 23:07:57', 'u');
INSERT INTO `ad_archive` VALUES ('284', 'rete', '645645', '60', '14', '16', '140', '2017-01-01 22:07:58', '2017-01-15 22:07:58', '456', '35', '2017-01-01 23:07:57', 'u');
INSERT INTO `ad_archive` VALUES ('285', 'rete', '645645', '61', '14', '16', '140', '2017-01-01 22:07:58', '2017-01-15 22:07:58', '456', '35', '2017-01-01 23:07:57', 'u');
INSERT INTO `ad_archive` VALUES ('286', 'rete', '645645', '62', '14', '16', '140', '2017-01-01 22:07:58', '2017-01-15 22:07:58', '456', '35', '2017-01-01 23:07:57', 'u');
INSERT INTO `ad_archive` VALUES ('287', 'rete', '645645', '63', '14', '16', '140', '2017-01-01 22:07:58', '2017-01-15 22:07:58', '456', '35', '2017-01-01 23:07:57', 'u');
INSERT INTO `ad_archive` VALUES ('288', 'rete', '645645', '64', '14', '16', '140', '2017-01-01 22:07:58', '2017-01-15 22:07:58', '456', '35', '2017-01-01 23:07:57', 'u');
INSERT INTO `ad_archive` VALUES ('289', 'rete', '645645', '65', '14', '16', '140', '2017-01-01 22:07:58', '2017-01-15 22:07:58', '456', '35', '2017-01-01 23:07:57', 'u');
INSERT INTO `ad_archive` VALUES ('290', 'rete', '645645', '66', '14', '16', '140', '2017-01-01 22:07:58', '2017-01-15 22:07:58', '456', '35', '2017-01-01 23:07:58', 'u');
INSERT INTO `ad_archive` VALUES ('291', '645654', '645', '25', '14', '13', '696', '2017-01-01 22:08:19', '2017-01-15 22:08:19', '65464', '36', '2017-01-01 23:08:12', 'u');
INSERT INTO `ad_archive` VALUES ('292', 'rete', '645645', '67', '14', '16', '140', '2017-01-01 22:07:58', '2017-01-15 22:07:58', '456', '35', '2017-01-01 23:08:42', 'u');
INSERT INTO `ad_archive` VALUES ('293', 'rete', '645645', '68', '14', '16', '140', '2017-01-01 22:07:58', '2017-01-15 22:07:58', '456', '35', '2017-01-01 23:08:45', 'u');
INSERT INTO `ad_archive` VALUES ('294', 'rete', '645645', '69', '14', '16', '140', '2017-01-01 22:07:58', '2017-01-15 22:07:58', '456', '35', '2017-01-01 23:08:45', 'u');
INSERT INTO `ad_archive` VALUES ('295', 'rete', '645645', '70', '14', '16', '140', '2017-01-01 22:07:58', '2017-01-15 22:07:58', '456', '35', '2017-01-01 23:08:45', 'u');
INSERT INTO `ad_archive` VALUES ('296', 'rete', '645645', '71', '14', '16', '140', '2017-01-01 22:07:58', '2017-01-15 22:07:58', '456', '35', '2017-01-01 23:08:46', 'u');
INSERT INTO `ad_archive` VALUES ('297', '645654', '645', '26', '14', '13', '696', '2017-01-01 22:08:19', '2017-01-15 22:08:19', '65464', '36', '2017-01-01 23:09:36', 'u');
INSERT INTO `ad_archive` VALUES ('298', 'saas', 'dfdfdf', '0', '14', '14', '366', '2017-01-01 21:54:24', '2017-01-15 21:54:24', '12', '32', '2017-01-01 23:09:42', 'u');
INSERT INTO `ad_archive` VALUES ('299', 'saas', 'dfdfdf', '1', '14', '14', '366', '2017-01-01 21:54:24', '2017-01-15 21:54:24', '12', '32', '2017-01-01 23:09:45', 'u');
INSERT INTO `ad_archive` VALUES ('300', 'saas', 'dfdfdf', '2', '14', '14', '366', '2017-01-01 21:54:24', '2017-01-15 21:54:24', '12', '32', '2017-01-01 23:09:45', 'u');
INSERT INTO `ad_archive` VALUES ('301', 'saas', 'dfdfdf', '3', '14', '14', '366', '2017-01-01 21:54:24', '2017-01-15 21:54:24', '12', '32', '2017-01-01 23:09:45', 'u');
INSERT INTO `ad_archive` VALUES ('302', 'saas', 'dfdfdf', '4', '14', '14', '366', '2017-01-01 21:54:24', '2017-01-15 21:54:24', '12', '32', '2017-01-01 23:09:45', 'u');
INSERT INTO `ad_archive` VALUES ('303', 'saas', 'dfdfdf', '5', '14', '14', '366', '2017-01-01 21:54:24', '2017-01-15 21:54:24', '12', '32', '2017-01-01 23:09:46', 'u');
INSERT INTO `ad_archive` VALUES ('304', 'saas', 'dfdfdf', '6', '14', '14', '366', '2017-01-01 21:54:24', '2017-01-15 21:54:24', '12', '32', '2017-01-01 23:09:46', 'u');
INSERT INTO `ad_archive` VALUES ('305', 'gfdgd', 'wreer', '0', '14', '14', '366', '2017-01-01 21:55:03', '2017-01-15 21:55:03', '12', '33', '2017-01-01 23:22:34', 'u');
INSERT INTO `ad_archive` VALUES ('306', 'jkljkl', 'dfss', '0', '14', '12', '624', '2017-01-01 21:36:50', '2017-01-15 21:36:50', '12', '28', '2017-01-01 23:30:47', 'd');
INSERT INTO `ad_archive` VALUES ('307', 'as', 'asas', '0', '14', '14', '84', '2017-01-01 21:39:10', '2017-01-15 21:39:10', '12', '29', '2017-01-01 23:30:49', 'd');
INSERT INTO `ad_archive` VALUES ('308', 'dsadsa', 'ddff', '0', '14', '12', '366', '2017-01-01 21:40:15', '2017-01-15 21:40:15', '12', '30', '2017-01-01 23:30:52', 'd');
INSERT INTO `ad_archive` VALUES ('309', 'dsd', 'we', '0', '14', '14', '459', '2017-01-01 21:41:44', '2017-01-15 21:41:44', '12', '31', '2017-01-01 23:30:53', 'd');
INSERT INTO `ad_archive` VALUES ('310', 'saas', 'dfdfdf', '7', '14', '14', '366', '2017-01-01 21:54:24', '2017-01-15 21:54:24', '12', '32', '2017-01-01 23:30:55', 'd');
INSERT INTO `ad_archive` VALUES ('311', 'gfdgd', 'wreer', '1', '14', '14', '366', '2017-01-01 21:55:03', '2017-01-15 21:55:03', '12', '33', '2017-01-01 23:30:57', 'd');
INSERT INTO `ad_archive` VALUES ('312', '54645', '65464', '0', '14', '14', '82', '2017-01-01 22:04:28', '2017-01-15 22:04:28', '54', '34', '2017-01-01 23:30:58', 'd');
INSERT INTO `ad_archive` VALUES ('313', 'rete', '645645', '72', '14', '16', '140', '2017-01-01 22:07:58', '2017-01-15 22:07:58', '456', '35', '2017-01-01 23:31:01', 'd');
INSERT INTO `ad_archive` VALUES ('314', '645654', '645', '27', '14', '13', '696', '2017-01-01 22:08:19', '2017-01-15 22:08:19', '65464', '36', '2017-01-01 23:31:03', 'd');
INSERT INTO `ad_archive` VALUES ('315', 'a', 'sas', '0', '14', '14', '459', '2017-01-01 23:33:36', '2017-01-15 23:33:36', '12', '38', '2017-01-01 23:33:41', 'u');
INSERT INTO `ad_archive` VALUES ('316', 'a', 'sas', '1', '14', '14', '459', '2017-01-01 23:33:36', '2017-01-15 23:33:36', '12', '38', '2017-01-01 23:35:02', 'd');
INSERT INTO `ad_archive` VALUES ('317', 'a', 'sas', '0', '14', '14', '459', '2017-01-01 23:33:35', '2017-01-15 23:33:35', '12', '37', '2017-01-01 23:35:08', 'd');
INSERT INTO `ad_archive` VALUES ('318', 'asasasasa', 'weewe', '0', '14', '16', '738', '2017-01-02 19:06:34', '2017-01-16 19:06:34', '123123123', '1', '2017-01-02 19:06:38', 'u');
INSERT INTO `ad_archive` VALUES ('319', 'asasasasa', 'weewe', '1', '14', '16', '738', '2017-01-02 19:06:34', '2017-01-16 19:06:34', '123123123', '1', '2017-01-02 19:06:49', 'u');
INSERT INTO `ad_archive` VALUES ('320', 'asasasasa', 'weewe', '1', '14', '16', '738', '2017-01-02 19:06:34', '2017-01-16 19:06:34', '123123123', '1', '2017-01-02 19:06:53', 'u');
INSERT INTO `ad_archive` VALUES ('321', 'fdsfs', '65464', '0', '14', '15', '276', '2017-01-02 19:10:30', '2017-01-16 19:10:30', '546', '2', '2017-01-02 19:10:35', 'u');
INSERT INTO `ad_archive` VALUES ('322', '1', '111', '0', '14', '14', '743', '2017-01-02 19:20:47', '2017-01-16 19:20:47', '1', '27', '2017-01-02 19:20:53', 'u');
INSERT INTO `ad_archive` VALUES ('323', '1', 'wqwqw', '0', '14', '12', '247', '2017-01-02 19:35:51', '2017-01-16 19:35:51', '1', '56', '2017-01-02 19:36:04', 'u');
INSERT INTO `ad_archive` VALUES ('324', '1', '11', '0', '14', '12', '386', '2017-01-02 19:37:08', '2017-01-16 19:37:08', '1', '57', '2017-01-02 19:37:21', 'u');
INSERT INTO `ad_archive` VALUES ('325', '1', '11', '1', '14', '12', '386', '2017-01-02 19:37:08', '2017-01-16 19:37:08', '1', '57', '2017-01-02 19:38:26', 'u');
INSERT INTO `ad_archive` VALUES ('326', '1', '11', '2', '14', '12', '386', '2017-01-02 19:37:08', '2017-01-16 19:37:08', '1', '57', '2017-01-02 19:38:27', 'u');
INSERT INTO `ad_archive` VALUES ('327', '1', '11', '3', '14', '12', '386', '2017-01-02 19:37:08', '2017-01-16 19:37:08', '1', '57', '2017-01-02 19:38:28', 'u');
INSERT INTO `ad_archive` VALUES ('328', '1', '11', '4', '14', '12', '386', '2017-01-02 19:37:08', '2017-01-16 19:37:08', '1', '57', '2017-01-02 19:38:30', 'u');
INSERT INTO `ad_archive` VALUES ('329', '1', '11', '5', '14', '12', '386', '2017-01-02 19:37:08', '2017-01-16 19:37:08', '1', '57', '2017-01-02 19:38:32', 'u');
INSERT INTO `ad_archive` VALUES ('330', '1', '11', '6', '14', '12', '386', '2017-01-02 19:37:08', '2017-01-16 19:37:08', '1', '57', '2017-01-02 19:38:32', 'u');
INSERT INTO `ad_archive` VALUES ('331', '1', '..', '0', '14', '12', '591', '2017-01-02 19:39:00', '2017-01-16 19:39:00', '12', '58', '2017-01-02 19:39:04', 'u');
INSERT INTO `ad_archive` VALUES ('332', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 'ww', '0', '14', '13', '787', '2017-01-02 19:39:28', '2017-01-16 19:39:28', '1', '59', '2017-01-02 19:39:33', 'u');
INSERT INTO `ad_archive` VALUES ('333', 'q', 'qwwq', '0', '14', '12', '84', '2017-01-02 19:46:35', '2017-01-16 19:46:35', '1', '60', '2017-01-02 19:58:27', 'u');
INSERT INTO `ad_archive` VALUES ('334', 'qq', 'jhkjh', '0', '14', '14', '591', '2017-01-02 19:47:42', '2017-01-16 19:47:42', '12', '61', '2017-01-02 19:58:28', 'u');
INSERT INTO `ad_archive` VALUES ('335', '121', 'sdadsa', '0', '14', '12', '84', '2017-01-02 19:58:49', '2017-01-16 19:58:49', '12', '62', '2017-01-02 19:59:19', 'u');
INSERT INTO `ad_archive` VALUES ('336', '121', 'sdadsa', '1', '14', '12', '84', '2017-01-02 19:58:49', '2017-01-16 19:58:49', '12', '62', '2017-01-02 19:59:30', 'u');
INSERT INTO `ad_archive` VALUES ('337', 'qwqw', 'qwqw', '0', '14', '12', '366', '2017-01-02 20:00:13', '2017-01-16 20:00:13', '12', '63', '2017-01-02 20:00:29', 'u');
INSERT INTO `ad_archive` VALUES ('338', 'qwqw', 'qwqw', '1', '14', '12', '366', '2017-01-02 20:00:13', '2017-01-16 20:00:13', '12', '63', '2017-01-02 20:00:32', 'u');
INSERT INTO `ad_archive` VALUES ('339', 'aa', 'qwqww', '0', '14', '14', '537', '2017-01-02 20:01:14', '2017-01-16 20:01:14', '1212', '64', '2017-01-02 20:01:32', 'u');
INSERT INTO `ad_archive` VALUES ('340', 'sasdsa', 'wqwqwq', '0', '14', '14', '390', '2017-01-02 20:02:14', '2017-01-16 20:02:14', '123', '65', '2017-01-02 20:02:38', 'u');
INSERT INTO `ad_archive` VALUES ('341', 'asasasasa', 'weewe', '2', '14', '16', '738', '2017-01-02 19:06:34', '2017-01-16 19:06:34', '123123123', '1', '2017-01-02 20:09:11', 'd');
INSERT INTO `ad_archive` VALUES ('342', 'fdsfs', '65464', '1', '14', '15', '276', '2017-01-02 19:10:30', '2017-01-16 19:10:30', '546', '2', '2017-01-02 20:09:13', 'd');
INSERT INTO `ad_archive` VALUES ('343', 'd', 'sasd', '0', '14', '12', '366', '2017-01-02 19:16:05', '2017-01-16 19:16:05', '1', '3', '2017-01-02 20:09:14', 'd');
INSERT INTO `ad_archive` VALUES ('344', 'd', 'sasd', '0', '14', '12', '366', '2017-01-02 19:16:07', '2017-01-16 19:16:07', '1', '4', '2017-01-02 20:09:15', 'd');
INSERT INTO `ad_archive` VALUES ('345', 'd', 'sasd', '0', '14', '12', '366', '2017-01-02 19:16:07', '2017-01-16 19:16:07', '1', '5', '2017-01-02 20:09:15', 'd');
INSERT INTO `ad_archive` VALUES ('346', 'd', 'sasd', '0', '14', '12', '366', '2017-01-02 19:16:08', '2017-01-16 19:16:08', '1', '6', '2017-01-02 20:09:18', 'd');
INSERT INTO `ad_archive` VALUES ('347', '1', 're', '0', '14', '14', '537', '2017-01-02 19:18:06', '2017-01-16 19:18:06', '1', '7', '2017-01-02 20:09:19', 'd');
INSERT INTO `ad_archive` VALUES ('348', '1', 're', '0', '14', '14', '537', '2017-01-02 19:18:07', '2017-01-16 19:18:07', '1', '8', '2017-01-02 20:09:20', 'd');
INSERT INTO `ad_archive` VALUES ('349', '1', 're', '0', '14', '14', '537', '2017-01-02 19:18:08', '2017-01-16 19:18:08', '1', '9', '2017-01-02 20:09:20', 'd');
INSERT INTO `ad_archive` VALUES ('350', '1', 're', '0', '14', '14', '537', '2017-01-02 19:18:08', '2017-01-16 19:18:08', '1', '10', '2017-01-02 20:09:21', 'd');
INSERT INTO `ad_archive` VALUES ('351', '1', 're', '0', '14', '14', '537', '2017-01-02 19:18:08', '2017-01-16 19:18:08', '1', '11', '2017-01-02 20:09:21', 'd');
INSERT INTO `ad_archive` VALUES ('352', '1', 're', '0', '14', '14', '537', '2017-01-02 19:18:18', '2017-01-16 19:18:18', '1', '12', '2017-01-02 20:09:24', 'd');
INSERT INTO `ad_archive` VALUES ('353', '1', 're', '0', '14', '14', '537', '2017-01-02 19:18:19', '2017-01-16 19:18:19', '1', '13', '2017-01-02 20:09:25', 'd');
INSERT INTO `ad_archive` VALUES ('354', '1', 're', '0', '14', '14', '537', '2017-01-02 19:18:19', '2017-01-16 19:18:19', '1', '14', '2017-01-02 20:09:26', 'd');
INSERT INTO `ad_archive` VALUES ('355', '1', 're', '0', '14', '14', '537', '2017-01-02 19:18:20', '2017-01-16 19:18:20', '1', '15', '2017-01-02 20:09:27', 'd');
INSERT INTO `ad_archive` VALUES ('356', '1', 're', '0', '14', '14', '537', '2017-01-02 19:18:20', '2017-01-16 19:18:20', '1', '16', '2017-01-02 20:09:28', 'd');
INSERT INTO `ad_archive` VALUES ('357', '1', '11', '0', '14', '16', '310', '2017-01-02 19:19:05', '2017-01-16 19:19:05', '1', '17', '2017-01-02 20:09:28', 'd');
INSERT INTO `ad_archive` VALUES ('358', '1', '11', '0', '14', '16', '310', '2017-01-02 19:19:10', '2017-01-16 19:19:10', '1', '18', '2017-01-02 20:09:29', 'd');
INSERT INTO `ad_archive` VALUES ('359', '1', '546', '0', '14', '16', '396', '2017-01-02 19:19:52', '2017-01-16 19:19:52', '1', '19', '2017-01-02 20:09:30', 'd');
INSERT INTO `ad_archive` VALUES ('360', '1', '546', '0', '14', '16', '396', '2017-01-02 19:19:57', '2017-01-16 19:19:57', '1', '20', '2017-01-02 20:09:31', 'd');
INSERT INTO `ad_archive` VALUES ('361', '1', '546', '0', '14', '16', '396', '2017-01-02 19:19:57', '2017-01-16 19:19:57', '1', '21', '2017-01-02 20:09:31', 'd');
INSERT INTO `ad_archive` VALUES ('362', '1', '546', '0', '14', '16', '396', '2017-01-02 19:19:57', '2017-01-16 19:19:57', '1', '22', '2017-01-02 20:09:32', 'd');
INSERT INTO `ad_archive` VALUES ('363', '1', '546', '0', '14', '16', '396', '2017-01-02 19:19:58', '2017-01-16 19:19:58', '1', '23', '2017-01-02 20:09:33', 'd');
INSERT INTO `ad_archive` VALUES ('364', '1', '546', '0', '14', '16', '396', '2017-01-02 19:19:58', '2017-01-16 19:19:58', '1', '24', '2017-01-02 20:09:35', 'd');
INSERT INTO `ad_archive` VALUES ('365', '1', '546', '0', '14', '16', '396', '2017-01-02 19:19:58', '2017-01-16 19:19:58', '1', '25', '2017-01-02 20:09:37', 'd');
INSERT INTO `ad_archive` VALUES ('366', '1', '546', '0', '14', '16', '396', '2017-01-02 19:19:58', '2017-01-16 19:19:58', '1', '26', '2017-01-02 20:09:38', 'd');
INSERT INTO `ad_archive` VALUES ('367', '1', '111', '1', '14', '14', '743', '2017-01-02 19:20:47', '2017-01-16 19:20:47', '1', '27', '2017-01-02 20:09:39', 'd');
INSERT INTO `ad_archive` VALUES ('368', '11', '111', '0', '14', '12', '366', '2017-01-02 19:27:47', '2017-01-16 19:27:47', '1', '28', '2017-01-02 20:09:39', 'd');
INSERT INTO `ad_archive` VALUES ('369', '11', '111', '0', '14', '12', '366', '2017-01-02 19:27:49', '2017-01-16 19:27:49', '1', '29', '2017-01-02 20:09:41', 'd');
INSERT INTO `ad_archive` VALUES ('370', '11', '111', '0', '14', '12', '366', '2017-01-02 19:27:50', '2017-01-16 19:27:50', '1', '30', '2017-01-02 20:09:42', 'd');
INSERT INTO `ad_archive` VALUES ('371', '11', '111', '0', '14', '12', '366', '2017-01-02 19:27:50', '2017-01-16 19:27:50', '1', '31', '2017-01-02 20:09:42', 'd');
INSERT INTO `ad_archive` VALUES ('372', '11', '111', '0', '14', '12', '366', '2017-01-02 19:27:50', '2017-01-16 19:27:50', '1', '32', '2017-01-02 20:09:44', 'd');
INSERT INTO `ad_archive` VALUES ('373', '11', '111', '0', '14', '12', '366', '2017-01-02 19:27:51', '2017-01-16 19:27:51', '1', '33', '2017-01-02 20:09:44', 'd');
INSERT INTO `ad_archive` VALUES ('374', '11', '111', '0', '14', '12', '366', '2017-01-02 19:27:51', '2017-01-16 19:27:51', '1', '34', '2017-01-02 20:09:45', 'd');
INSERT INTO `ad_archive` VALUES ('375', '1', '11', '0', '14', '12', '366', '2017-01-02 19:28:24', '2017-01-16 19:28:24', '1', '35', '2017-01-02 20:09:49', 'd');
INSERT INTO `ad_archive` VALUES ('376', '1', '11', '0', '14', '12', '366', '2017-01-02 19:28:26', '2017-01-16 19:28:26', '1', '36', '2017-01-02 20:09:49', 'd');
INSERT INTO `ad_archive` VALUES ('377', '1', '11', '0', '14', '12', '366', '2017-01-02 19:28:26', '2017-01-16 19:28:26', '1', '37', '2017-01-02 20:09:50', 'd');
INSERT INTO `ad_archive` VALUES ('378', '1', '11', '0', '14', '12', '366', '2017-01-02 19:28:28', '2017-01-16 19:28:28', '1', '38', '2017-01-02 20:09:51', 'd');
INSERT INTO `ad_archive` VALUES ('379', '1', '11', '0', '14', '12', '366', '2017-01-02 19:28:28', '2017-01-16 19:28:28', '1', '39', '2017-01-02 20:09:52', 'd');
INSERT INTO `ad_archive` VALUES ('380', '1', '11', '0', '14', '12', '366', '2017-01-02 19:28:28', '2017-01-16 19:28:28', '1', '40', '2017-01-02 20:09:53', 'd');
INSERT INTO `ad_archive` VALUES ('381', '1', '11', '0', '14', '12', '366', '2017-01-02 19:28:28', '2017-01-16 19:28:28', '1', '41', '2017-01-02 20:09:54', 'd');
INSERT INTO `ad_archive` VALUES ('382', '1', '11', '0', '14', '12', '366', '2017-01-02 19:28:28', '2017-01-16 19:28:28', '1', '42', '2017-01-02 20:09:55', 'd');
INSERT INTO `ad_archive` VALUES ('383', '1', '11', '0', '14', '12', '366', '2017-01-02 19:28:28', '2017-01-16 19:28:28', '1', '43', '2017-01-02 20:09:56', 'd');
INSERT INTO `ad_archive` VALUES ('384', '1', '11', '0', '14', '12', '366', '2017-01-02 19:28:29', '2017-01-16 19:28:29', '1', '44', '2017-01-02 20:09:57', 'd');
INSERT INTO `ad_archive` VALUES ('385', '1', '11', '0', '14', '12', '366', '2017-01-02 19:28:29', '2017-01-16 19:28:29', '1', '45', '2017-01-02 20:09:58', 'd');
INSERT INTO `ad_archive` VALUES ('386', '1', '11', '0', '14', '12', '366', '2017-01-02 19:28:29', '2017-01-16 19:28:29', '1', '46', '2017-01-02 20:09:59', 'd');
INSERT INTO `ad_archive` VALUES ('387', '1', '11', '0', '14', '12', '366', '2017-01-02 19:28:29', '2017-01-16 19:28:29', '1', '47', '2017-01-02 20:10:00', 'd');
INSERT INTO `ad_archive` VALUES ('388', '1', '11', '0', '14', '12', '366', '2017-01-02 19:28:29', '2017-01-16 19:28:29', '1', '48', '2017-01-02 20:10:02', 'd');
INSERT INTO `ad_archive` VALUES ('389', '1', '11', '0', '14', '12', '366', '2017-01-02 19:28:29', '2017-01-16 19:28:29', '1', '49', '2017-01-02 20:10:02', 'd');
INSERT INTO `ad_archive` VALUES ('390', '1', '11', '0', '14', '12', '366', '2017-01-02 19:28:30', '2017-01-16 19:28:30', '1', '50', '2017-01-02 20:10:03', 'd');
INSERT INTO `ad_archive` VALUES ('391', '1', '11', '0', '14', '12', '366', '2017-01-02 19:28:30', '2017-01-16 19:28:30', '1', '51', '2017-01-02 20:10:04', 'd');
INSERT INTO `ad_archive` VALUES ('392', '1', '11', '0', '14', '12', '366', '2017-01-02 19:28:30', '2017-01-16 19:28:30', '1', '52', '2017-01-02 20:10:05', 'd');
INSERT INTO `ad_archive` VALUES ('393', '1', '11', '0', '14', '12', '366', '2017-01-02 19:28:30', '2017-01-16 19:28:30', '1', '53', '2017-01-02 20:10:06', 'd');
INSERT INTO `ad_archive` VALUES ('394', '1', '11', '0', '14', '12', '366', '2017-01-02 19:28:30', '2017-01-16 19:28:30', '1', '54', '2017-01-02 20:10:07', 'd');
INSERT INTO `ad_archive` VALUES ('395', '1', '11', '0', '14', '12', '366', '2017-01-02 19:28:31', '2017-01-16 19:28:31', '1', '55', '2017-01-02 20:10:09', 'd');
INSERT INTO `ad_archive` VALUES ('396', '1', 'wqwqw', '1', '14', '12', '247', '2017-01-02 19:35:51', '2017-01-16 19:35:51', '1', '56', '2017-01-02 20:10:10', 'd');
INSERT INTO `ad_archive` VALUES ('397', '1', '11', '7', '14', '12', '386', '2017-01-02 19:37:08', '2017-01-16 19:37:08', '1', '57', '2017-01-02 20:10:11', 'd');
INSERT INTO `ad_archive` VALUES ('398', '1', '..', '1', '14', '12', '591', '2017-01-02 19:39:00', '2017-01-16 19:39:00', '12', '58', '2017-01-02 20:10:11', 'd');
INSERT INTO `ad_archive` VALUES ('399', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 'ww', '1', '14', '13', '787', '2017-01-02 19:39:28', '2017-01-16 19:39:28', '1', '59', '2017-01-02 20:10:12', 'd');
INSERT INTO `ad_archive` VALUES ('400', 'sasdsa', 'wqwqwq', '1', '14', '14', '390', '2017-01-02 20:02:14', '2017-01-16 20:02:14', '123', '65', '2017-01-02 20:10:16', 'u');
INSERT INTO `ad_archive` VALUES ('401', 'sasdsa', 'wqwqwq', '2', '14', '14', '390', '2017-01-02 20:02:14', '2017-01-16 20:02:14', '123', '65', '2017-01-02 20:10:24', 'u');
INSERT INTO `ad_archive` VALUES ('402', 'sasdsa', 'wqwqwq', '3', '14', '14', '390', '2017-01-02 20:02:14', '2017-01-16 20:02:14', '123', '65', '2017-01-02 20:10:34', 'u');
INSERT INTO `ad_archive` VALUES ('403', 'sasdsa', 'wqwqwq', '3', '14', '14', '390', '2017-01-02 20:02:14', '2017-01-16 20:02:14', '123', '65', '2017-01-02 20:10:38', 'u');
INSERT INTO `ad_archive` VALUES ('404', 'q', 'qwwq', '1', '14', '12', '84', '2017-01-02 19:46:35', '2017-01-16 19:46:35', '1', '60', '2017-01-02 20:11:39', 'u');
INSERT INTO `ad_archive` VALUES ('405', 'q', 'qwwq', '1', '14', '12', '84', '2017-01-02 19:46:35', '2017-01-16 19:46:35', '1', '60', '2017-01-02 20:14:29', 'u');
INSERT INTO `ad_archive` VALUES ('406', 'qq', 'jhkjh', '1', '14', '14', '591', '2017-01-02 19:47:42', '2017-01-16 19:47:42', '12', '61', '2017-01-02 20:14:41', 'u');
INSERT INTO `ad_archive` VALUES ('407', 'sasdsa', 'wqwqwq', '4', '14', '14', '390', '2017-01-02 20:02:14', '2017-01-16 20:02:14', '123', '65', '2017-01-02 20:15:32', 'u');
INSERT INTO `ad_archive` VALUES ('408', 'sasdsa', 'wqwqwq', '4', '14', '14', '390', '2017-01-02 20:02:14', '2017-01-16 20:02:14', '123', '65', '2017-01-02 20:15:39', 'u');
INSERT INTO `ad_archive` VALUES ('409', 'q', 'qwwq', '1', '14', '12', '84', '2017-01-02 19:46:35', '2017-01-16 19:46:35', '1', '60', '2017-01-02 20:20:27', 'd');
INSERT INTO `ad_archive` VALUES ('410', 'qq', 'jhkjh', '2', '14', '14', '591', '2017-01-02 19:47:42', '2017-01-16 19:47:42', '12', '61', '2017-01-02 20:20:28', 'd');
INSERT INTO `ad_archive` VALUES ('411', '121', 'sdadsa', '2', '14', '12', '84', '2017-01-02 19:58:49', '2017-01-16 19:58:49', '12', '62', '2017-01-02 20:20:29', 'd');
INSERT INTO `ad_archive` VALUES ('412', 'qwqw', 'qwqw', '2', '14', '12', '366', '2017-01-02 20:00:13', '2017-01-16 20:00:13', '12', '63', '2017-01-02 20:20:30', 'd');
INSERT INTO `ad_archive` VALUES ('413', 'aa', 'qwqww', '1', '14', '14', '537', '2017-01-02 20:01:14', '2017-01-16 20:01:14', '1212', '64', '2017-01-02 20:20:32', 'd');
INSERT INTO `ad_archive` VALUES ('414', 'sasdsa', 'wqwqwq', '5', '14', '14', '390', '2017-01-02 20:02:14', '2017-01-16 20:02:14', '123', '65', '2017-01-02 20:20:33', 'u');
INSERT INTO `ad_archive` VALUES ('415', 'sasdsa', 'wqwqwq', '6', '14', '14', '390', '2017-01-02 20:02:14', '2017-01-16 20:02:14', '123', '65', '2017-01-02 21:05:58', 'u');
INSERT INTO `ad_archive` VALUES ('416', 'sasdsa', 'wqwqwq', '7', '14', '14', '390', '2017-01-02 20:02:14', '2017-01-16 20:02:14', '123', '65', '2017-01-02 21:10:51', 'u');
INSERT INTO `ad_archive` VALUES ('417', 'sasdsa', 'wqwqwq', '8', '14', '14', '390', '2017-01-02 20:02:14', '2017-01-16 20:02:14', '123', '65', '2017-01-03 23:12:26', 'u');
INSERT INTO `ad_archive` VALUES ('418', 'sasdsa', 'wqwqwq', '9', '14', '14', '390', '2017-01-02 20:02:14', '2017-01-16 20:02:14', '123', '65', '2017-01-05 10:56:55', 'u');
INSERT INTO `ad_archive` VALUES ('419', 'sasdsa', 'wqwqwq', '10', '14', '14', '390', '2017-01-02 20:02:14', '2017-01-16 20:02:14', '123', '65', '2017-01-05 11:13:55', 'u');
INSERT INTO `ad_archive` VALUES ('420', 'sasdsa', 'wqwqwq', '11', '14', '14', '390', '2017-01-02 20:02:14', '2017-01-16 20:02:14', '123', '65', '2017-01-05 11:13:58', 'u');
INSERT INTO `ad_archive` VALUES ('421', 'sasdsa', 'wqwqwq', '12', '14', '14', '390', '2017-01-02 20:02:14', '2017-01-16 20:02:14', '123', '65', '2017-01-05 11:13:58', 'u');
INSERT INTO `ad_archive` VALUES ('422', 'sasdsa', 'wqwqwq', '13', '14', '14', '390', '2017-01-02 20:02:14', '2017-01-16 20:02:14', '123', '65', '2017-01-05 11:13:59', 'u');
INSERT INTO `ad_archive` VALUES ('423', 'sasdsa', 'wqwqwq', '14', '14', '14', '390', '2017-01-02 20:02:14', '2017-01-16 20:02:14', '123', '65', '2017-01-05 11:13:59', 'u');
INSERT INTO `ad_archive` VALUES ('424', 'sasdsa', 'wqwqwq', '15', '14', '14', '390', '2017-01-02 20:02:14', '2017-01-16 20:02:14', '123', '65', '2017-01-05 11:13:59', 'u');
INSERT INTO `ad_archive` VALUES ('425', 'sasdsa', 'wqwqwq', '16', '14', '14', '390', '2017-01-02 20:02:14', '2017-01-16 20:02:14', '123', '65', '2017-01-05 11:13:59', 'u');
INSERT INTO `ad_archive` VALUES ('426', 'sasdsa', 'wqwqwq', '17', '14', '14', '390', '2017-01-02 20:02:14', '2017-01-16 20:02:14', '123', '65', '2017-01-05 11:13:59', 'u');
INSERT INTO `ad_archive` VALUES ('427', 'sasdsa', 'wqwqwq', '18', '14', '14', '390', '2017-01-02 20:02:14', '2017-01-16 20:02:14', '123', '65', '2017-01-05 11:13:59', 'u');
INSERT INTO `ad_archive` VALUES ('428', 'sasdsa', 'wqwqwq', '19', '14', '14', '390', '2017-01-02 20:02:14', '2017-01-16 20:02:14', '123', '65', '2017-01-05 11:14:00', 'u');
INSERT INTO `ad_archive` VALUES ('429', 'sasdsa', 'wqwqwq', '20', '14', '14', '390', '2017-01-02 20:02:14', '2017-01-16 20:02:14', '123', '65', '2017-01-05 11:14:00', 'u');
INSERT INTO `ad_archive` VALUES ('430', 'sasdsa', 'wqwqwq', '21', '14', '14', '390', '2017-01-02 20:02:14', '2017-01-16 20:02:14', '123', '65', '2017-01-05 11:14:00', 'u');
INSERT INTO `ad_archive` VALUES ('431', 'sasdsa', 'wqwqwq', '22', '14', '14', '390', '2017-01-02 20:02:14', '2017-01-16 20:02:14', '123', '65', '2017-01-05 11:14:00', 'u');
INSERT INTO `ad_archive` VALUES ('432', 'sasdsa', 'wqwqwq', '23', '14', '14', '390', '2017-01-02 20:02:14', '2017-01-16 20:02:14', '123', '65', '2017-01-05 11:19:43', 'u');
INSERT INTO `ad_archive` VALUES ('433', 'sasdsa', 'wqwqwq', '24', '14', '14', '390', '2017-01-02 20:02:14', '2017-01-16 20:02:14', '123', '65', '2017-01-05 11:23:40', 'u');
INSERT INTO `ad_archive` VALUES ('434', '1', '11', '0', '14', '12', '84', '2017-01-05 11:23:33', '2017-01-19 11:23:33', '1', '66', '2017-01-05 11:23:43', 'u');
INSERT INTO `ad_archive` VALUES ('435', '1', '11', '1', '14', '12', '84', '2017-01-05 11:23:33', '2017-01-19 11:23:33', '1', '66', '2017-01-05 12:24:10', 'u');
INSERT INTO `ad_archive` VALUES ('436', 'kamil', 'wqwq', '0', '14', '14', '84', '2017-01-05 15:27:44', '2017-01-19 15:27:44', '123', '67', '2017-01-05 15:27:54', 'u');
INSERT INTO `ad_archive` VALUES ('437', 'kamil', 'wqwq', '1', '14', '14', '84', '2017-01-05 15:27:44', '2017-01-19 15:27:44', '123', '67', '2017-01-05 15:28:12', 'u');
INSERT INTO `ad_archive` VALUES ('438', 'kamil', 'wqwq', '1', '14', '13', '84', '2017-01-05 15:27:44', '2017-01-19 15:27:44', '123', '67', '2017-01-05 15:28:23', 'u');
INSERT INTO `ad_archive` VALUES ('439', 'kamil', 'wqwq', '1', '14', '13', '84', '2017-01-05 15:27:44', '2017-01-19 15:27:44', '123', '67', '2017-01-05 15:30:54', 'u');
INSERT INTO `ad_archive` VALUES ('440', 'kamil', 'wqwq', '1', '14', '13', '84', '2017-01-05 15:27:44', '2017-01-19 15:27:44', '123', '67', '2017-01-05 15:32:06', 'u');
INSERT INTO `ad_archive` VALUES ('441', 'kamilff', 'wqwq', '1', '14', '13', '84', '2017-01-05 15:27:44', '2017-01-19 15:27:44', '123', '67', '2017-01-05 15:33:57', 'u');
INSERT INTO `ad_archive` VALUES ('442', 'kamil', 'wqwq', '1', '14', '13', '84', '2017-01-05 15:27:44', '2017-01-19 15:27:44', '123', '67', '2017-01-05 15:34:12', 'u');
INSERT INTO `ad_archive` VALUES ('443', 'kamil', 'wqwq', '1', '14', '13', '84', '2017-01-05 15:27:44', '2017-01-19 15:27:44', '123', '67', '2017-01-05 15:34:23', 'u');
INSERT INTO `ad_archive` VALUES ('444', 'kamilff', 'wqwq', '1', '14', '13', '84', '2017-01-05 15:27:44', '2017-01-19 15:27:44', '123', '67', '2017-01-05 15:34:32', 'u');
INSERT INTO `ad_archive` VALUES ('445', 'kamilff', 'wqwq', '2', '14', '13', '84', '2017-01-05 15:27:44', '2017-01-19 15:27:44', '123', '67', '2017-01-05 15:42:10', 'u');
INSERT INTO `ad_archive` VALUES ('446', 'sasdsa', 'wqwqwq', '25', '14', '14', '390', '2017-01-02 20:02:14', '2017-01-16 20:02:14', '123', '65', '2017-01-05 15:44:37', 'u');
INSERT INTO `ad_archive` VALUES ('447', 'sasdsa', 'wqwqwq', '25', '14', '14', '390', '2017-01-02 20:02:14', '2017-01-16 20:02:14', '123', '65', '2017-01-05 15:44:44', 'u');
INSERT INTO `ad_archive` VALUES ('448', 'kamilff', 'wqwqdd', '2', '14', '13', '84', '2017-01-05 15:27:44', '2017-01-19 15:27:44', '123', '67', '2017-01-05 15:45:13', 'u');
INSERT INTO `ad_archive` VALUES ('449', 'kamilff', 'wqwqddeee', '2', '14', '13', '84', '2017-01-05 15:27:44', '2017-01-19 15:27:44', '123', '67', '2017-01-05 15:46:00', 'u');
INSERT INTO `ad_archive` VALUES ('450', 'kamilffzzz', 'wqwqddeee', '2', '14', '13', '84', '2017-01-05 15:27:44', '2017-01-19 15:27:44', '123', '67', '2017-01-05 15:46:08', 'u');
INSERT INTO `ad_archive` VALUES ('451', 'kamilffzzz', 'wqwqddeee', '2', '14', '13', '84', '2017-01-05 15:27:44', '2017-01-19 15:27:44', '123', '67', '2017-01-05 15:46:15', 'u');
INSERT INTO `ad_archive` VALUES ('452', 'kamilffzzz', 'wqwqddeee', '3', '14', '13', '84', '2017-01-05 15:27:44', '2017-01-19 15:27:44', '123', '67', '2017-01-05 15:50:07', 'u');
INSERT INTO `ad_archive` VALUES ('453', 'kamilffzzz', 'wqwqddeeesdsd', '3', '14', '13', '84', '2017-01-05 15:27:44', '2017-01-19 15:27:44', '123', '67', '2017-01-05 15:50:20', 'u');
INSERT INTO `ad_archive` VALUES ('454', 'sa', 'qw', '0', '14', '12', '366', '2017-01-05 15:57:26', '2017-01-19 15:57:26', '12', '69', '2017-01-05 15:57:36', 'u');
INSERT INTO `ad_archive` VALUES ('455', 'kamilffzzz', 'wqwqddeeesdsd', '4', '14', '13', '84', '2017-01-05 15:27:44', '2017-01-19 15:27:44', '123', '67', '2017-01-05 15:58:28', 'u');
INSERT INTO `ad_archive` VALUES ('456', 'kamilffzzz', 'wqwqddeeesdsd', '5', '14', '13', '84', '2017-01-05 15:27:44', '2017-01-19 15:27:44', '123', '67', '2017-01-05 15:58:29', 'u');
INSERT INTO `ad_archive` VALUES ('457', 'kamilffzzz', 'wqwqddeeesdsd', '6', '14', '13', '84', '2017-01-05 15:27:44', '2017-01-19 15:27:44', '123', '67', '2017-01-05 15:58:29', 'u');
INSERT INTO `ad_archive` VALUES ('458', 'kamilffzzz', 'wqwqddeeesdsd', '7', '14', '13', '84', '2017-01-05 15:27:44', '2017-01-19 15:27:44', '123', '67', '2017-01-05 15:58:30', 'u');
INSERT INTO `ad_archive` VALUES ('459', 'kamilffzzz', 'wqwqddeeesdsd', '8', '14', '13', '84', '2017-01-05 15:27:44', '2017-01-19 15:27:44', '123', '67', '2017-01-05 15:58:30', 'u');
INSERT INTO `ad_archive` VALUES ('460', 'kamilffzzz', 'wqwqddeeesdsd', '9', '14', '13', '84', '2017-01-05 15:27:44', '2017-01-19 15:27:44', '123', '67', '2017-01-05 15:58:30', 'u');
INSERT INTO `ad_archive` VALUES ('461', 'kamilffzzz', 'wqwqddeeesdsd', '10', '14', '13', '84', '2017-01-05 15:27:44', '2017-01-19 15:27:44', '123', '67', '2017-01-05 15:58:30', 'u');
INSERT INTO `ad_archive` VALUES ('462', 'kamilffzzz', 'wqwqddeeesdsd', '11', '14', '13', '84', '2017-01-05 15:27:44', '2017-01-19 15:27:44', '123', '67', '2017-01-05 15:58:30', 'u');
INSERT INTO `ad_archive` VALUES ('463', 'kamilffzzz', 'wqwqddeeesdsd', '12', '14', '13', '84', '2017-01-05 15:27:44', '2017-01-19 15:27:44', '123', '67', '2017-01-05 15:58:30', 'u');
INSERT INTO `ad_archive` VALUES ('464', 'kamilffzzz', 'wqwqddeeesdsd', '13', '14', '13', '84', '2017-01-05 15:27:44', '2017-01-19 15:27:44', '123', '67', '2017-01-05 15:58:31', 'u');
INSERT INTO `ad_archive` VALUES ('465', 'kamilffzzz', 'wqwqddeeesdsd', '14', '14', '13', '84', '2017-01-05 15:27:44', '2017-01-19 15:27:44', '123', '67', '2017-01-05 15:58:31', 'u');
INSERT INTO `ad_archive` VALUES ('466', 'kamilffzzz', 'wqwqddeeesdsd', '15', '14', '13', '84', '2017-01-05 15:27:44', '2017-01-19 15:27:44', '123', '67', '2017-01-05 15:58:31', 'u');
INSERT INTO `ad_archive` VALUES ('467', 'kamilffzzz', 'wqwqddeeesdsd', '16', '14', '13', '84', '2017-01-05 15:27:44', '2017-01-19 15:27:44', '123', '67', '2017-01-05 15:58:31', 'u');
INSERT INTO `ad_archive` VALUES ('468', 'kamilffzzz', 'wqwqddeeesdsd', '17', '14', '13', '84', '2017-01-05 15:27:44', '2017-01-19 15:27:44', '123', '67', '2017-01-05 15:58:31', 'u');
INSERT INTO `ad_archive` VALUES ('469', 'kamilffzzz', 'wqwqddeeesdsd', '18', '14', '13', '84', '2017-01-05 15:27:44', '2017-01-19 15:27:44', '123', '67', '2017-01-05 15:58:31', 'u');
INSERT INTO `ad_archive` VALUES ('470', 'kamilffzzz', 'wqwqddeeesdsd', '19', '14', '13', '84', '2017-01-05 15:27:44', '2017-01-19 15:27:44', '123', '67', '2017-01-05 15:58:32', 'u');
INSERT INTO `ad_archive` VALUES ('471', 'kamilffzzz', 'wqwqddeeesdsd', '20', '14', '13', '84', '2017-01-05 15:27:44', '2017-01-19 15:27:44', '123', '67', '2017-01-05 15:58:32', 'u');
INSERT INTO `ad_archive` VALUES ('472', 'kamilffzzz', 'wqwqddeeesdsd', '21', '14', '13', '84', '2017-01-05 15:27:44', '2017-01-19 15:27:44', '123', '67', '2017-01-05 15:58:32', 'u');
INSERT INTO `ad_archive` VALUES ('473', 'kamilffzzz', 'wqwqddeeesdsd', '22', '14', '13', '84', '2017-01-05 15:27:44', '2017-01-19 15:27:44', '123', '67', '2017-01-05 15:58:32', 'u');
INSERT INTO `ad_archive` VALUES ('474', 'kamilffzzz', 'wqwqddeeesdsd', '23', '14', '13', '84', '2017-01-05 15:27:44', '2017-01-19 15:27:44', '123', '67', '2017-01-05 15:58:32', 'u');
INSERT INTO `ad_archive` VALUES ('475', 'kamilffzzz', 'wqwqddeeesdsd', '24', '14', '13', '84', '2017-01-05 15:27:44', '2017-01-19 15:27:44', '123', '67', '2017-01-05 15:58:33', 'u');
INSERT INTO `ad_archive` VALUES ('476', 'kamilffzzz', 'wqwqddeeesdsd', '25', '14', '13', '84', '2017-01-05 15:27:44', '2017-01-19 15:27:44', '123', '67', '2017-01-05 15:58:33', 'u');
INSERT INTO `ad_archive` VALUES ('477', 'kamilffzzz', 'wqwqddeeesdsd', '26', '14', '13', '84', '2017-01-05 15:27:44', '2017-01-19 15:27:44', '123', '67', '2017-01-05 15:58:33', 'u');
INSERT INTO `ad_archive` VALUES ('478', 'kamilffzzz', 'wqwqddeeesdsd', '27', '14', '13', '84', '2017-01-05 15:27:44', '2017-01-19 15:27:44', '123', '67', '2017-01-05 15:58:33', 'u');
INSERT INTO `ad_archive` VALUES ('479', 'kamilffzzz', 'wqwqddeeesdsd', '28', '14', '13', '84', '2017-01-05 15:27:44', '2017-01-19 15:27:44', '123', '67', '2017-01-05 15:58:33', 'u');
INSERT INTO `ad_archive` VALUES ('480', 'kamilffzzz', 'wqwqddeeesdsd', '29', '14', '13', '84', '2017-01-05 15:27:44', '2017-01-19 15:27:44', '123', '67', '2017-01-05 15:58:33', 'u');
INSERT INTO `ad_archive` VALUES ('481', 'kamilffzzz', 'wqwqddeeesdsd', '30', '14', '13', '84', '2017-01-05 15:27:44', '2017-01-19 15:27:44', '123', '67', '2017-01-05 15:58:34', 'u');
INSERT INTO `ad_archive` VALUES ('482', 'kamilffzzz', 'wqwqddeeesdsd', '31', '14', '13', '84', '2017-01-05 15:27:44', '2017-01-19 15:27:44', '123', '67', '2017-01-05 15:58:34', 'u');
INSERT INTO `ad_archive` VALUES ('483', 'kamilffzzz', 'wqwqddeeesdsd', '32', '14', '13', '84', '2017-01-05 15:27:44', '2017-01-19 15:27:44', '123', '67', '2017-01-05 15:58:34', 'u');
INSERT INTO `ad_archive` VALUES ('484', 'kamilffzzz', 'wqwqddeeesdsd', '33', '14', '13', '84', '2017-01-05 15:27:44', '2017-01-19 15:27:44', '123', '67', '2017-01-05 15:58:34', 'u');
INSERT INTO `ad_archive` VALUES ('485', 'kamilffzzz', 'wqwqddeeesdsd', '34', '14', '13', '84', '2017-01-05 15:27:44', '2017-01-19 15:27:44', '123', '67', '2017-01-05 15:58:34', 'u');
INSERT INTO `ad_archive` VALUES ('486', 'kamilffzzz', 'wqwqddeeesdsd', '35', '14', '13', '84', '2017-01-05 15:27:44', '2017-01-19 15:27:44', '123', '67', '2017-01-05 15:58:34', 'u');
INSERT INTO `ad_archive` VALUES ('487', 'kamilffzzz', 'wqwqddeeesdsd', '36', '14', '13', '84', '2017-01-05 15:27:44', '2017-01-19 15:27:44', '123', '67', '2017-01-05 15:58:35', 'u');
INSERT INTO `ad_archive` VALUES ('488', 'kamilffzzz', 'wqwqddeeesdsd', '37', '14', '13', '84', '2017-01-05 15:27:44', '2017-01-19 15:27:44', '123', '67', '2017-01-05 15:58:35', 'u');
INSERT INTO `ad_archive` VALUES ('489', 'kamilffzzz', 'wqwqddeeesdsd', '38', '14', '13', '84', '2017-01-05 15:27:44', '2017-01-19 15:27:44', '123', '67', '2017-01-05 15:58:35', 'u');
INSERT INTO `ad_archive` VALUES ('490', 'kamilffzzz', 'wqwqddeeesdsd', '39', '14', '13', '84', '2017-01-05 15:27:44', '2017-01-19 15:27:44', '123', '67', '2017-01-05 15:58:35', 'u');
INSERT INTO `ad_archive` VALUES ('491', 'kamilffzzz', 'wqwqddeeesdsd', '40', '14', '13', '84', '2017-01-05 15:27:44', '2017-01-19 15:27:44', '123', '67', '2017-01-05 15:58:35', 'u');
INSERT INTO `ad_archive` VALUES ('492', 'kamilffzzz', 'wqwqddeeesdsd', '41', '14', '13', '84', '2017-01-05 15:27:44', '2017-01-19 15:27:44', '123', '67', '2017-01-05 15:58:35', 'u');
INSERT INTO `ad_archive` VALUES ('493', 'kamilffzzz', 'wqwqddeeesdsd', '42', '14', '13', '84', '2017-01-05 15:27:44', '2017-01-19 15:27:44', '123', '67', '2017-01-05 15:58:36', 'u');
INSERT INTO `ad_archive` VALUES ('494', 'kamilffzzz', 'wqwqddeeesdsd', '43', '14', '13', '84', '2017-01-05 15:27:44', '2017-01-19 15:27:44', '123', '67', '2017-01-05 15:58:36', 'u');
INSERT INTO `ad_archive` VALUES ('495', 'kamilffzzz', 'wqwqddeeesdsd', '44', '14', '13', '84', '2017-01-05 15:27:44', '2017-01-19 15:27:44', '123', '67', '2017-01-05 15:58:36', 'u');
INSERT INTO `ad_archive` VALUES ('496', 'kamilffzzz', 'wqwqddeeesdsd', '45', '14', '13', '84', '2017-01-05 15:27:44', '2017-01-19 15:27:44', '123', '67', '2017-01-05 15:58:36', 'u');
INSERT INTO `ad_archive` VALUES ('497', 'kamilffzzz', 'wqwqddeeesdsd', '46', '14', '13', '84', '2017-01-05 15:27:44', '2017-01-19 15:27:44', '123', '67', '2017-01-05 15:58:36', 'u');
INSERT INTO `ad_archive` VALUES ('498', 'kamilffzzz', 'wqwqddeeesdsd', '47', '14', '13', '84', '2017-01-05 15:27:44', '2017-01-19 15:27:44', '123', '67', '2017-01-05 15:58:36', 'u');
INSERT INTO `ad_archive` VALUES ('499', 'kamilffzzz', 'wqwqddeeesdsd', '48', '14', '13', '84', '2017-01-05 15:27:44', '2017-01-19 15:27:44', '123', '67', '2017-01-05 15:58:37', 'u');
INSERT INTO `ad_archive` VALUES ('500', 'kamilffzzz', 'wqwqddeeesdsd', '49', '14', '13', '84', '2017-01-05 15:27:44', '2017-01-19 15:27:44', '123', '67', '2017-01-05 15:58:37', 'u');
INSERT INTO `ad_archive` VALUES ('501', 'kamilffzzz', 'wqwqddeeesdsd', '50', '14', '13', '84', '2017-01-05 15:27:44', '2017-01-19 15:27:44', '123', '67', '2017-01-05 15:58:37', 'u');
INSERT INTO `ad_archive` VALUES ('502', 'kamilffzzz', 'wqwqddeeesdsd', '51', '14', '13', '84', '2017-01-05 15:27:44', '2017-01-19 15:27:44', '123', '67', '2017-01-05 15:58:37', 'u');
INSERT INTO `ad_archive` VALUES ('503', 'kamilffzzz', 'wqwqddeeesdsd', '52', '14', '13', '84', '2017-01-05 15:27:44', '2017-01-19 15:27:44', '123', '67', '2017-01-05 15:58:37', 'u');
INSERT INTO `ad_archive` VALUES ('504', 'kamilffzzz', 'wqwqddeeesdsd', '53', '14', '13', '84', '2017-01-05 15:27:44', '2017-01-19 15:27:44', '123', '67', '2017-01-05 15:58:37', 'u');
INSERT INTO `ad_archive` VALUES ('505', 'kamilffzzz', 'wqwqddeeesdsd', '54', '14', '13', '84', '2017-01-05 15:27:44', '2017-01-19 15:27:44', '123', '67', '2017-01-05 15:58:38', 'u');
INSERT INTO `ad_archive` VALUES ('506', 'kamilffzzz', 'wqwqddeeesdsd', '55', '14', '13', '84', '2017-01-05 15:27:44', '2017-01-19 15:27:44', '123', '67', '2017-01-05 15:58:38', 'u');
INSERT INTO `ad_archive` VALUES ('507', 'kamilffzzz', 'wqwqddeeesdsd', '56', '14', '13', '84', '2017-01-05 15:27:44', '2017-01-19 15:27:44', '123', '67', '2017-01-05 15:58:38', 'u');
INSERT INTO `ad_archive` VALUES ('508', 'kamilffzzz', 'wqwqddeeesdsd', '57', '14', '13', '84', '2017-01-05 15:27:44', '2017-01-19 15:27:44', '123', '67', '2017-01-05 15:58:38', 'u');
INSERT INTO `ad_archive` VALUES ('509', 'kamilffzzz', 'wqwqddeeesdsd', '58', '14', '13', '84', '2017-01-05 15:27:44', '2017-01-19 15:27:44', '123', '67', '2017-01-05 15:58:38', 'u');
INSERT INTO `ad_archive` VALUES ('510', 'kamilffzzz', 'wqwqddeeesdsd', '59', '14', '13', '84', '2017-01-05 15:27:44', '2017-01-19 15:27:44', '123', '67', '2017-01-05 15:58:39', 'u');
INSERT INTO `ad_archive` VALUES ('511', 'kamilffzzz', 'wqwqddeeesdsd', '60', '14', '13', '84', '2017-01-05 15:27:44', '2017-01-19 15:27:44', '123', '67', '2017-01-05 15:58:39', 'u');
INSERT INTO `ad_archive` VALUES ('512', 'kamilffzzz', 'wqwqddeeesdsd', '61', '14', '13', '84', '2017-01-05 15:27:44', '2017-01-19 15:27:44', '123', '67', '2017-01-05 15:58:39', 'u');
INSERT INTO `ad_archive` VALUES ('513', 'kamilffzzz', 'wqwqddeeesdsd', '62', '14', '13', '84', '2017-01-05 15:27:44', '2017-01-19 15:27:44', '123', '67', '2017-01-05 15:58:42', 'u');
INSERT INTO `ad_archive` VALUES ('514', 'kamilffzzz', 'wqwqddeeesdsd', '63', '14', '13', '84', '2017-01-05 15:27:44', '2017-01-19 15:27:44', '123', '67', '2017-01-05 15:58:43', 'u');
INSERT INTO `ad_archive` VALUES ('515', 'kamilffzzz', 'wqwqddeeesdsd', '64', '14', '13', '84', '2017-01-05 15:27:44', '2017-01-19 15:27:44', '123', '67', '2017-01-05 15:58:44', 'u');
INSERT INTO `ad_archive` VALUES ('516', 'kamilffzzz', 'wqwqddeeesdsd', '65', '14', '13', '84', '2017-01-05 15:27:44', '2017-01-19 15:27:44', '123', '67', '2017-01-05 15:58:44', 'u');
INSERT INTO `ad_archive` VALUES ('517', 'kamilffzzz', 'wqwqddeeesdsd', '66', '14', '13', '84', '2017-01-05 15:27:44', '2017-01-19 15:27:44', '123', '67', '2017-01-05 15:58:44', 'u');
INSERT INTO `ad_archive` VALUES ('518', 'kamilffzzz', 'wqwqddeeesdsd', '67', '14', '13', '84', '2017-01-05 15:27:44', '2017-01-19 15:27:44', '123', '67', '2017-01-05 15:58:45', 'u');
INSERT INTO `ad_archive` VALUES ('519', 'kamilffzzz', 'wqwqddeeesdsd', '68', '14', '13', '84', '2017-01-05 15:27:44', '2017-01-19 15:27:44', '123', '67', '2017-01-05 15:58:45', 'u');
INSERT INTO `ad_archive` VALUES ('520', 'kamilffzzz', 'wqwqddeeesdsd', '69', '14', '13', '84', '2017-01-05 15:27:44', '2017-01-19 15:27:44', '123', '67', '2017-01-05 15:58:46', 'u');
INSERT INTO `ad_archive` VALUES ('521', 'kamilffzzz', 'wqwqddeeesdsd', '70', '14', '13', '84', '2017-01-05 15:27:44', '2017-01-19 15:27:44', '123', '67', '2017-01-05 15:58:46', 'u');
INSERT INTO `ad_archive` VALUES ('522', 'kamilffzzz', 'wqwqddeeesdsd', '71', '14', '13', '84', '2017-01-05 15:27:44', '2017-01-19 15:27:44', '123', '67', '2017-01-05 15:58:47', 'u');
INSERT INTO `ad_archive` VALUES ('523', 'kamilffzzz', 'wqwqddeeesdsd', '72', '14', '13', '84', '2017-01-05 15:27:44', '2017-01-19 15:27:44', '123', '67', '2017-01-05 15:58:47', 'u');
INSERT INTO `ad_archive` VALUES ('524', 'kamilffzzz', 'wqwqddeeesdsd', '73', '14', '13', '84', '2017-01-05 15:27:44', '2017-01-19 15:27:44', '123', '67', '2017-01-05 15:58:47', 'u');
INSERT INTO `ad_archive` VALUES ('525', 'kamilffzzz', 'wqwqddeeesdsd', '74', '14', '13', '84', '2017-01-05 15:27:44', '2017-01-19 15:27:44', '123', '67', '2017-01-05 15:58:47', 'u');
INSERT INTO `ad_archive` VALUES ('526', 'kamilffzzz', 'wqwqddeeesdsd', '75', '14', '13', '84', '2017-01-05 15:27:44', '2017-01-19 15:27:44', '123', '67', '2017-01-05 15:58:47', 'u');
INSERT INTO `ad_archive` VALUES ('527', 'kamilffzzz', 'wqwqddeeesdsd', '76', '14', '13', '84', '2017-01-05 15:27:44', '2017-01-19 15:27:44', '123', '67', '2017-01-05 15:58:47', 'u');
INSERT INTO `ad_archive` VALUES ('528', 'kamilffzzz', 'wqwqddeeesdsd', '77', '14', '13', '84', '2017-01-05 15:27:44', '2017-01-19 15:27:44', '123', '67', '2017-01-05 15:58:48', 'u');
INSERT INTO `ad_archive` VALUES ('529', 'kamilffzzz', 'wqwqddeeesdsd', '78', '14', '13', '84', '2017-01-05 15:27:44', '2017-01-19 15:27:44', '123', '67', '2017-01-05 15:58:48', 'u');
INSERT INTO `ad_archive` VALUES ('530', 'kamilffzzz', 'wqwqddeeesdsd', '79', '14', '13', '84', '2017-01-05 15:27:44', '2017-01-19 15:27:44', '123', '67', '2017-01-05 15:58:48', 'u');
INSERT INTO `ad_archive` VALUES ('531', 'kamilffzzz', 'wqwqddeeesdsd', '80', '14', '13', '84', '2017-01-05 15:27:44', '2017-01-19 15:27:44', '123', '67', '2017-01-05 15:58:48', 'u');
INSERT INTO `ad_archive` VALUES ('532', 'kamilffzzz', 'wqwqddeeesdsd', '81', '14', '13', '84', '2017-01-05 15:27:44', '2017-01-19 15:27:44', '123', '67', '2017-01-05 15:58:49', 'u');
INSERT INTO `ad_archive` VALUES ('533', 'kamilffzzz', 'wqwqddeeesdsd', '82', '14', '13', '84', '2017-01-05 15:27:44', '2017-01-19 15:27:44', '123', '67', '2017-01-05 15:58:49', 'u');
INSERT INTO `ad_archive` VALUES ('534', 'kamilffzzz', 'wqwqddeeesdsd', '83', '14', '13', '84', '2017-01-05 15:27:44', '2017-01-19 15:27:44', '123', '67', '2017-01-05 15:58:49', 'u');
INSERT INTO `ad_archive` VALUES ('535', 'kamilffzzz', 'wqwqddeeesdsd', '84', '14', '13', '84', '2017-01-05 15:27:44', '2017-01-19 15:27:44', '123', '67', '2017-01-05 15:58:49', 'u');
INSERT INTO `ad_archive` VALUES ('536', 'kamilffzzz', 'wqwqddeeesdsd', '85', '14', '13', '84', '2017-01-05 15:27:44', '2017-01-19 15:27:44', '123', '67', '2017-01-05 15:58:49', 'u');
INSERT INTO `ad_archive` VALUES ('537', 'kamilffzzz', 'wqwqddeeesdsd', '86', '14', '13', '84', '2017-01-05 15:27:44', '2017-01-19 15:27:44', '123', '67', '2017-01-05 15:58:50', 'u');
INSERT INTO `ad_archive` VALUES ('538', 'kamilffzzz', 'wqwqddeeesdsd', '87', '14', '13', '84', '2017-01-05 15:27:44', '2017-01-19 15:27:44', '123', '67', '2017-01-05 15:58:50', 'u');
INSERT INTO `ad_archive` VALUES ('539', 'kamilffzzz', 'wqwqddeeesdsd', '88', '14', '13', '84', '2017-01-05 15:27:44', '2017-01-19 15:27:44', '123', '67', '2017-01-05 15:58:50', 'u');
INSERT INTO `ad_archive` VALUES ('540', 'kamilffzzz', 'wqwqddeeesdsd', '89', '14', '13', '84', '2017-01-05 15:27:44', '2017-01-19 15:27:44', '123', '67', '2017-01-05 15:58:50', 'u');
INSERT INTO `ad_archive` VALUES ('541', 'kamilffzzz', 'wqwqddeeesdsd', '90', '14', '13', '84', '2017-01-05 15:27:44', '2017-01-19 15:27:44', '123', '67', '2017-01-05 15:58:50', 'u');
INSERT INTO `ad_archive` VALUES ('542', 'kamilffzzz', 'wqwqddeeesdsd', '91', '14', '13', '84', '2017-01-05 15:27:44', '2017-01-19 15:27:44', '123', '67', '2017-01-05 15:58:51', 'u');
INSERT INTO `ad_archive` VALUES ('543', 'kamilffzzz', 'wqwqddeeesdsd', '92', '14', '13', '84', '2017-01-05 15:27:44', '2017-01-19 15:27:44', '123', '67', '2017-01-05 15:58:51', 'u');
INSERT INTO `ad_archive` VALUES ('544', 'kamilffzzz', 'wqwqddeeesdsd', '93', '14', '13', '84', '2017-01-05 15:27:44', '2017-01-19 15:27:44', '123', '67', '2017-01-05 15:58:51', 'u');
INSERT INTO `ad_archive` VALUES ('545', 'kamilffzzz', 'wqwqddeeesdsd', '94', '14', '13', '84', '2017-01-05 15:27:44', '2017-01-19 15:27:44', '123', '67', '2017-01-05 15:58:51', 'u');
INSERT INTO `ad_archive` VALUES ('546', 'kamilffzzz', 'wqwqddeeesdsd', '95', '14', '13', '84', '2017-01-05 15:27:44', '2017-01-19 15:27:44', '123', '67', '2017-01-05 15:58:51', 'u');
INSERT INTO `ad_archive` VALUES ('547', 'kamilffzzz', 'wqwqddeeesdsd', '96', '14', '13', '84', '2017-01-05 15:27:44', '2017-01-19 15:27:44', '123', '67', '2017-01-05 15:58:52', 'u');
INSERT INTO `ad_archive` VALUES ('548', 'sasdsa', 'wqwqwq', '26', '14', '14', '390', '2017-01-02 20:02:14', '2017-01-16 20:02:14', '123', '65', '2017-01-05 16:04:34', 'd');
INSERT INTO `ad_archive` VALUES ('549', '1', '11', '2', '14', '12', '84', '2017-01-05 11:23:33', '2017-01-19 11:23:33', '1', '66', '2017-01-05 16:04:37', 'd');
INSERT INTO `ad_archive` VALUES ('550', 'sa', 'qw', '1', '14', '12', '366', '2017-01-05 15:57:26', '2017-01-19 15:57:26', '12', '69', '2017-01-05 16:30:22', 'u');
INSERT INTO `ad_archive` VALUES ('551', 'kamilffzzz', 'wqwqddeeesdsd', '97', '14', '13', '84', '2017-01-05 15:27:44', '2017-01-19 15:27:44', '123', '67', '2017-01-05 16:30:36', 'd');
INSERT INTO `ad_archive` VALUES ('552', 'ew', 'dssd', '0', '14', '13', '693', '2017-01-05 15:50:59', '2017-01-19 15:50:59', '33', '68', '2017-01-05 16:33:36', 'd');
INSERT INTO `ad_archive` VALUES ('553', 'sa', 'qw', '2', '14', '12', '366', '2017-01-05 15:57:26', '2017-01-19 15:57:26', '12', '69', '2017-01-05 16:34:14', 'd');
INSERT INTO `ad_archive` VALUES ('554', 'sasa', 'wwew', '0', '37', '12', '459', '2017-01-05 17:52:36', '2017-01-19 17:52:36', '12', '70', '2017-01-05 17:52:48', 'u');
INSERT INTO `ad_archive` VALUES ('555', 'sasa', 'wwew', '1', '37', '12', '459', '2017-01-05 17:52:36', '2017-01-19 17:52:36', '12', '70', '2017-01-05 17:54:08', 'u');
INSERT INTO `ad_archive` VALUES ('556', 'sasa', 'wwew', '2', '37', '12', '459', '2017-01-05 17:52:36', '2017-01-19 17:52:36', '12', '70', '2017-01-05 17:54:11', 'u');
INSERT INTO `ad_archive` VALUES ('557', 'sasa', 'wwew', '3', '37', '12', '459', '2017-01-05 17:52:36', '2017-01-19 17:52:36', '12', '70', '2017-01-05 19:07:15', 'u');
INSERT INTO `ad_archive` VALUES ('558', 'sasa', 'wwew', '4', '37', '12', '459', '2017-01-05 17:52:36', '2017-01-19 17:52:36', '12', '70', '2017-01-06 19:20:15', 'u');
INSERT INTO `ad_archive` VALUES ('559', 'sasa', 'wwew', '5', '37', '12', '459', '2017-01-05 17:52:36', '2017-01-19 17:52:36', '12', '70', '2017-01-07 10:45:37', 'u');
INSERT INTO `ad_archive` VALUES ('560', 'sasa', 'wwew', '6', '37', '12', '459', '2017-01-05 17:52:36', '2017-01-19 17:52:36', '12', '70', '2017-01-07 11:24:30', 'u');
INSERT INTO `ad_archive` VALUES ('561', 'sasa', 'wwew', '7', '37', '12', '459', '2017-01-05 17:52:36', '2017-01-19 17:52:36', '12', '70', '2017-01-07 11:37:02', 'u');
INSERT INTO `ad_archive` VALUES ('562', 'sasa', 'wwew', '8', '37', '12', '459', '2017-01-05 17:52:36', '2017-01-19 17:52:36', '12', '70', '2017-01-07 11:43:18', 'u');
INSERT INTO `ad_archive` VALUES ('563', '&lt;noscript&gt;', 'sas', '0', '39', '12', '84', '2017-01-07 11:53:35', '2017-01-21 11:53:35', '12', '71', '2017-01-07 11:53:43', 'u');
INSERT INTO `ad_archive` VALUES ('564', '&lt;noscript&gt;', 'sas', '1', '39', '12', '84', '2017-01-07 11:53:35', '2017-01-21 11:53:35', '12', '71', '2017-01-07 12:30:11', 'u');
INSERT INTO `ad_archive` VALUES ('565', 'a', 'qq', '0', '39', '12', '366', '2017-01-07 12:30:00', '2017-01-21 12:30:00', '12', '122', '2017-01-07 12:30:22', 'u');
INSERT INTO `ad_archive` VALUES ('566', '&lt;noscript&gt;', 'sas', '2', '39', '12', '84', '2017-01-07 11:53:35', '2017-01-21 11:53:35', '12', '71', '2017-01-07 12:39:25', 'u');
INSERT INTO `ad_archive` VALUES ('567', '&lt;noscript&gt;', 'sas', '3', '39', '12', '84', '2017-01-07 11:53:35', '2017-01-21 11:53:35', '12', '71', '2017-01-07 12:39:36', 'd');
INSERT INTO `ad_archive` VALUES ('568', 'a', 'qq', '0', '39', '12', '366', '2017-01-07 12:29:57', '2017-01-21 12:29:57', '12', '120', '2017-01-07 12:40:09', 'u');
INSERT INTO `ad_archive` VALUES ('569', 'kasia', 'qwqw', '0', '39', '12', '84', '2017-01-07 13:02:22', '2017-01-21 13:02:22', '12', '138', '2017-01-07 13:02:40', 'u');
INSERT INTO `ad_archive` VALUES ('570', 'kasia', 'qwqw', '1', '39', '12', '84', '2017-01-07 13:02:22', '2017-01-21 13:02:22', '12', '138', '2017-01-07 13:31:48', 'u');
INSERT INTO `ad_archive` VALUES ('571', 'srajfon', 'wq', '0', '37', '13', '84', '2017-01-07 15:04:33', '2017-01-21 15:04:33', '12', '187', '2017-01-07 15:05:59', 'u');
INSERT INTO `ad_archive` VALUES ('572', 'srajfon', 'wq', '1', '37', '13', '84', '2017-01-07 15:04:33', '2017-01-21 15:04:33', '12', '187', '2017-01-07 15:06:03', 'u');
INSERT INTO `ad_archive` VALUES ('573', 'srajfon', 'wq', '2', '37', '13', '84', '2017-01-07 15:04:33', '2017-01-21 15:04:33', '12', '187', '2017-01-07 15:25:49', 'u');
INSERT INTO `ad_archive` VALUES ('574', 'a', 'qqq', '0', '37', '14', '84', '2017-01-07 14:16:45', '2017-01-21 14:16:45', '1', '184', '2017-01-07 16:23:17', 'u');
INSERT INTO `ad_archive` VALUES ('575', 'srajfon', 'wq', '3', '37', '13', '84', '2017-01-07 15:04:33', '2017-01-21 15:04:33', '12', '187', '2017-01-07 22:15:57', 'u');
INSERT INTO `ad_archive` VALUES ('576', 'srajfon', 'wq', '4', '37', '13', '84', '2017-01-07 15:04:33', '2017-01-21 15:04:33', '12', '187', '2017-01-07 22:17:10', 'u');
INSERT INTO `ad_archive` VALUES ('577', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 'sas', '0', '37', '12', '459', '2017-01-07 22:18:33', '2017-01-21 22:18:33', '12', '188', '2017-01-07 23:17:43', 'u');
INSERT INTO `ad_archive` VALUES ('578', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 'sas', '1', '37', '12', '459', '2017-01-07 22:18:33', '2017-01-21 22:18:33', '12', '188', '2017-01-07 23:18:01', 'u');
INSERT INTO `ad_archive` VALUES ('579', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 'sas', '2', '37', '12', '459', '2017-01-07 22:18:33', '2017-01-21 22:18:33', '12', '188', '2017-01-07 23:25:05', 'u');
INSERT INTO `ad_archive` VALUES ('580', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 'sas', '3', '37', '12', '459', '2017-01-07 22:18:33', '2017-01-21 22:18:33', '12', '188', '2017-01-07 23:43:14', 'u');
INSERT INTO `ad_archive` VALUES ('581', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 'sas', '4', '37', '12', '459', '2017-01-07 22:18:33', '2017-01-21 22:18:33', '12', '188', '2017-01-07 23:43:25', 'u');
INSERT INTO `ad_archive` VALUES ('582', 'a', 'qqq', '0', '37', '14', '84', '2017-01-07 14:16:46', '2017-01-21 14:16:46', '1', '185', '2017-01-07 23:46:55', 'u');
INSERT INTO `ad_archive` VALUES ('583', 'a', 'qqq', '1', '37', '14', '84', '2017-01-07 14:16:46', '2017-01-21 14:16:46', '1', '185', '2017-01-07 23:46:55', 'u');
INSERT INTO `ad_archive` VALUES ('584', 'a', 'qqq', '0', '37', '14', '84', '2017-01-07 14:16:46', '2017-01-21 14:16:46', '1', '186', '2017-01-07 23:48:32', 'u');
INSERT INTO `ad_archive` VALUES ('585', 'a', 'sasa', '0', '37', '12', '84', '2017-01-08 00:01:20', '2017-01-22 00:01:20', '1234678978', '189', '2017-01-08 00:01:54', 'u');
INSERT INTO `ad_archive` VALUES ('586', 'a', 'sasa', '1', '37', '12', '84', '2017-01-08 00:01:20', '2017-01-22 00:01:20', '1234678978', '189', '2017-01-08 00:30:04', 'u');
INSERT INTO `ad_archive` VALUES ('587', 'a', 'qqq', '1', '37', '14', '84', '2017-01-07 14:16:46', '2017-01-21 14:16:46', '1', '186', '2017-01-08 00:31:25', 'u');
INSERT INTO `ad_archive` VALUES ('588', 'a', 'sasa', '2', '37', '12', '84', '2017-01-08 00:01:20', '2017-01-22 00:01:20', '1234678978', '189', '2017-01-08 00:36:29', 'u');
INSERT INTO `ad_archive` VALUES ('589', 'a', 'qq', '0', '39', '12', '366', '2017-01-07 12:28:27', '2017-01-21 12:28:27', '12', '79', '2017-01-08 00:45:10', 'u');
INSERT INTO `ad_archive` VALUES ('590', 'asas', 'aa', '0', '39', '12', '172', '2017-01-08 00:31:45', '2017-01-22 00:31:45', '1', '190', '2017-01-08 00:50:59', 'u');
INSERT INTO `ad_archive` VALUES ('591', 'asas', 'aa', '1', '39', '12', '172', '2017-01-08 00:31:45', '2017-01-22 00:31:45', '1', '190', '2017-01-08 00:52:50', 'u');
INSERT INTO `ad_archive` VALUES ('592', 'a', 'sasa', '3', '37', '12', '84', '2017-01-08 00:01:20', '2017-01-22 00:01:20', '1234678978', '189', '2017-01-08 09:55:15', 'u');
INSERT INTO `ad_archive` VALUES ('593', 'sasa', 'wwew', '9', '37', '12', '459', '2017-01-05 17:52:36', '2017-01-19 17:52:36', '12', '70', '2017-01-08 10:51:21', 'u');
INSERT INTO `ad_archive` VALUES ('594', 'aaa', 'Sprzedam coś i tak dalej', '0', '37', '12', '84', '2017-01-08 11:21:44', '2017-01-22 11:21:44', '12', '191', '2017-01-08 11:21:48', 'u');
INSERT INTO `ad_archive` VALUES ('595', 'ania', '&lt;noscript&gt;', '0', '37', '12', '84', '2017-01-08 11:22:05', '2017-01-22 11:22:05', '123', '192', '2017-01-08 11:22:09', 'u');
INSERT INTO `ad_archive` VALUES ('596', 'asas', 'aa', '2', '39', '12', '172', '2017-01-08 00:31:45', '2017-01-22 00:31:45', '1', '190', '2017-01-08 11:40:45', 'u');
INSERT INTO `ad_archive` VALUES ('597', 'ania', '&lt;noscript&gt;', '1', '37', '12', '84', '2017-01-08 11:22:05', '2017-01-22 11:22:05', '123', '192', '2017-01-08 12:00:04', 'u');
INSERT INTO `ad_archive` VALUES ('598', 'asas', 'asas', '0', '37', '15', '763', '2017-01-08 12:11:36', '2017-01-22 12:11:36', '123', '193', '2017-01-08 12:13:59', 'u');
INSERT INTO `ad_archive` VALUES ('599', 'asas', 'asas', '1', '37', '15', '763', '2017-01-08 12:11:36', '2017-01-22 12:11:36', '123', '193', '2017-01-08 12:18:07', 'u');
INSERT INTO `ad_archive` VALUES ('600', 'asas', 'asas', '2', '37', '15', '763', '2017-01-08 12:11:36', '2017-01-22 12:11:36', '123', '193', '2017-01-08 12:18:48', 'u');
INSERT INTO `ad_archive` VALUES ('601', 'asas', 'asas', '3', '37', '15', '763', '2017-01-08 12:11:36', '2017-01-22 12:11:36', '123', '193', '2017-01-08 12:20:55', 'u');
INSERT INTO `ad_archive` VALUES ('602', 'ania', '&lt;noscript&gt;', '2', '37', '12', '84', '2017-01-08 11:22:05', '2017-01-22 11:22:05', '123', '192', '2017-01-08 12:21:30', 'u');
INSERT INTO `ad_archive` VALUES ('603', 'a', 'sasa', '4', '37', '12', '84', '2017-01-08 00:01:20', '2017-01-22 00:01:20', '1234678978', '189', '2017-01-08 12:29:17', 'u');
INSERT INTO `ad_archive` VALUES ('604', 'ania', '&lt;noscript&gt;', '3', '37', '12', '84', '2017-01-08 11:22:05', '2017-01-22 11:22:05', '123', '192', '2017-01-08 12:36:25', 'u');
INSERT INTO `ad_archive` VALUES ('605', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 'asas', '0', '37', '12', '172', '2017-01-08 12:37:22', '2017-01-22 12:37:22', '123', '194', '2017-01-08 14:30:48', 'u');
INSERT INTO `ad_archive` VALUES ('606', 'test', '123', '0', '37', '12', '671', '2017-01-08 17:28:41', '2017-01-22 17:28:41', '123', '195', '2017-01-08 17:29:11', 'u');
INSERT INTO `ad_archive` VALUES ('607', 'qw', 'asdsasdsad', '0', '37', '12', '459', '2017-01-08 17:30:02', '2017-01-22 17:30:02', '12', '196', '2017-01-08 17:30:08', 'u');
INSERT INTO `ad_archive` VALUES ('608', 'test', 'asdsad', '0', '37', '12', '98', '2017-01-08 17:30:31', '2017-01-22 17:30:31', '12', '197', '2017-01-08 17:30:37', 'u');
INSERT INTO `ad_archive` VALUES ('609', 'wqwqw', 'sdd', '0', '37', '12', '459', '2017-01-08 17:32:39', '2017-01-22 17:32:39', '123', '198', '2017-01-08 17:32:45', 'u');
INSERT INTO `ad_archive` VALUES ('610', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 'asas', '1', '37', '12', '172', '2017-01-08 12:37:22', '2017-01-22 12:37:22', '123', '194', '2017-01-08 17:43:52', 'u');
INSERT INTO `ad_archive` VALUES ('611', 'wqwqw', 'sdd', '1', '37', '12', '459', '2017-01-08 17:32:39', '2017-01-22 17:32:39', '123', '198', '2017-01-08 17:48:08', 'u');
INSERT INTO `ad_archive` VALUES ('612', 'test', 'asdsad', '1', '37', '12', '98', '2017-01-08 17:30:31', '2017-01-22 17:30:31', '12', '197', '2017-01-08 17:48:12', 'u');
INSERT INTO `ad_archive` VALUES ('613', 'qw', 'asdsasdsad', '1', '37', '12', '459', '2017-01-08 17:30:02', '2017-01-22 17:30:02', '12', '196', '2017-01-08 17:48:15', 'u');
INSERT INTO `ad_archive` VALUES ('614', '12', 'qw', '0', '37', '12', '913', '2017-01-08 18:06:00', '2017-01-22 18:06:00', '12', '199', '2017-01-08 18:06:10', 'u');
INSERT INTO `ad_archive` VALUES ('615', 'asas', 'assa', '0', '37', '12', '172', '2017-01-08 18:19:25', '2017-01-22 18:19:25', '12', '201', '2017-01-08 18:19:31', 'u');
INSERT INTO `ad_archive` VALUES ('616', 'a', 'qq', '0', '39', '12', '366', '2017-01-07 12:28:03', '2017-01-21 12:28:03', '12', '72', '2017-01-08 19:59:32', 'd');
INSERT INTO `ad_archive` VALUES ('617', 'a', 'qq', '0', '39', '12', '366', '2017-01-07 12:28:06', '2017-01-21 12:28:06', '12', '73', '2017-01-08 20:00:22', 'd');
INSERT INTO `ad_archive` VALUES ('618', 'a', 'qq', '0', '39', '12', '366', '2017-01-07 12:28:09', '2017-01-21 12:28:09', '12', '74', '2017-01-08 20:01:22', 'd');
INSERT INTO `ad_archive` VALUES ('619', 'a', 'qq', '0', '39', '12', '366', '2017-01-07 12:28:11', '2017-01-21 12:28:11', '12', '75', '2017-01-08 20:02:17', 'd');
INSERT INTO `ad_archive` VALUES ('620', 'a', 'qq', '0', '39', '12', '366', '2017-01-07 12:28:15', '2017-01-21 12:28:15', '12', '76', '2017-01-08 20:03:19', 'd');
INSERT INTO `ad_archive` VALUES ('621', 'sasa', 'wwew', '10', '37', '12', '459', '2017-01-05 17:52:36', '2017-01-19 17:52:36', '12', '70', '2017-01-08 20:03:41', 'd');
INSERT INTO `ad_archive` VALUES ('622', 'a', 'qq', '0', '39', '12', '366', '2017-01-07 12:28:19', '2017-01-21 12:28:19', '12', '77', '2017-01-08 20:04:06', 'd');
INSERT INTO `ad_archive` VALUES ('623', 'asas', 'aa', '3', '39', '12', '172', '2017-01-08 00:31:45', '2017-01-22 00:31:45', '1', '190', '2017-01-08 20:04:51', 'd');
INSERT INTO `ad_archive` VALUES ('624', 'a', 'qq', '0', '39', '12', '366', '2017-01-07 12:29:09', '2017-01-21 12:29:09', '12', '87', '2017-01-08 20:04:55', 'd');
INSERT INTO `ad_archive` VALUES ('625', 'a', 'qq', '0', '39', '12', '366', '2017-01-07 12:29:11', '2017-01-21 12:29:11', '12', '88', '2017-01-08 20:04:58', 'd');
INSERT INTO `ad_archive` VALUES ('626', 'a', 'qq', '0', '39', '12', '366', '2017-01-07 12:29:13', '2017-01-21 12:29:13', '12', '89', '2017-01-08 20:05:01', 'd');
INSERT INTO `ad_archive` VALUES ('627', 'a', 'qq', '0', '39', '12', '366', '2017-01-07 12:29:15', '2017-01-21 12:29:15', '12', '90', '2017-01-08 20:05:04', 'd');
INSERT INTO `ad_archive` VALUES ('628', 'a', 'qq', '0', '39', '12', '366', '2017-01-07 12:29:16', '2017-01-21 12:29:16', '12', '91', '2017-01-08 20:05:05', 'd');
INSERT INTO `ad_archive` VALUES ('629', 'a', 'qq', '0', '39', '12', '366', '2017-01-07 12:29:18', '2017-01-21 12:29:18', '12', '92', '2017-01-08 20:05:07', 'd');
INSERT INTO `ad_archive` VALUES ('630', 'a', 'qq', '0', '39', '12', '366', '2017-01-07 12:29:19', '2017-01-21 12:29:19', '12', '93', '2017-01-08 20:05:09', 'd');
INSERT INTO `ad_archive` VALUES ('631', 'a', 'qq', '0', '39', '12', '366', '2017-01-07 12:29:21', '2017-01-21 12:29:21', '12', '94', '2017-01-08 20:05:10', 'd');
INSERT INTO `ad_archive` VALUES ('632', 'a', 'qq', '0', '39', '12', '366', '2017-01-07 12:29:22', '2017-01-21 12:29:22', '12', '95', '2017-01-08 20:05:12', 'd');
INSERT INTO `ad_archive` VALUES ('633', 'a', 'qq', '0', '39', '12', '366', '2017-01-07 12:29:24', '2017-01-21 12:29:24', '12', '96', '2017-01-08 20:05:13', 'd');
INSERT INTO `ad_archive` VALUES ('634', 'a', 'qq', '0', '39', '12', '366', '2017-01-07 12:29:25', '2017-01-21 12:29:25', '12', '97', '2017-01-08 20:05:15', 'd');
INSERT INTO `ad_archive` VALUES ('635', 'asas', 'sas', '0', '43', '12', '84', '2017-01-08 20:07:09', '2017-01-22 20:07:09', '1', '202', '2017-01-08 20:07:16', 'u');
INSERT INTO `ad_archive` VALUES ('636', 'a', 'qq', '0', '39', '12', '366', '2017-01-07 12:28:22', '2017-01-21 12:28:22', '12', '78', '2017-01-08 20:08:10', 'd');
INSERT INTO `ad_archive` VALUES ('637', 'asas', 'sas', '1', '43', '12', '84', '2017-01-08 20:07:09', '2017-01-22 20:07:09', '1', '202', '2017-01-08 20:08:45', 'd');
INSERT INTO `ad_archive` VALUES ('638', 'a', 'qq', '1', '39', '12', '366', '2017-01-07 12:28:27', '2017-01-21 12:28:27', '12', '79', '2017-01-08 20:08:54', 'd');
INSERT INTO `ad_archive` VALUES ('639', 'a', 'qq', '0', '39', '12', '366', '2017-01-07 12:28:29', '2017-01-21 12:28:29', '12', '80', '2017-01-08 20:09:21', 'd');
INSERT INTO `ad_archive` VALUES ('640', 'a', 'qq', '0', '39', '12', '366', '2017-01-07 12:28:34', '2017-01-21 12:28:34', '12', '81', '2017-01-08 20:09:57', 'd');
INSERT INTO `ad_archive` VALUES ('641', 'a', 'qq', '0', '39', '12', '366', '2017-01-07 12:28:38', '2017-01-21 12:28:38', '12', '82', '2017-01-08 20:10:07', 'd');
INSERT INTO `ad_archive` VALUES ('642', 'a', 'qq', '0', '39', '12', '366', '2017-01-07 12:28:42', '2017-01-21 12:28:42', '12', '83', '2017-01-08 20:11:46', 'd');
INSERT INTO `ad_archive` VALUES ('643', 'a', 'qq', '0', '39', '12', '366', '2017-01-07 12:28:45', '2017-01-21 12:28:45', '12', '84', '2017-01-08 20:11:53', 'd');
INSERT INTO `ad_archive` VALUES ('644', 'a', 'qq', '0', '39', '12', '366', '2017-01-07 12:28:47', '2017-01-21 12:28:47', '12', '85', '2017-01-08 20:13:09', 'd');
INSERT INTO `ad_archive` VALUES ('645', 'a', 'qq', '0', '39', '12', '366', '2017-01-07 12:28:49', '2017-01-21 12:28:49', '12', '86', '2017-01-08 20:15:09', 'd');
INSERT INTO `ad_archive` VALUES ('646', 'a', 'qq', '0', '39', '12', '366', '2017-01-07 12:29:27', '2017-01-21 12:29:27', '12', '98', '2017-01-08 20:15:09', 'd');
INSERT INTO `ad_archive` VALUES ('647', 'a', 'qq', '0', '39', '12', '366', '2017-01-07 12:29:28', '2017-01-21 12:29:28', '12', '99', '2017-01-08 20:15:09', 'd');
INSERT INTO `ad_archive` VALUES ('648', 'a', 'qq', '0', '39', '12', '366', '2017-01-07 12:29:30', '2017-01-21 12:29:30', '12', '100', '2017-01-08 20:15:09', 'd');
INSERT INTO `ad_archive` VALUES ('649', 'a', 'qq', '0', '39', '12', '366', '2017-01-07 12:29:31', '2017-01-21 12:29:31', '12', '101', '2017-01-08 20:15:09', 'd');
INSERT INTO `ad_archive` VALUES ('650', 'a', 'qq', '0', '39', '12', '366', '2017-01-07 12:29:33', '2017-01-21 12:29:33', '12', '102', '2017-01-08 20:15:09', 'd');
INSERT INTO `ad_archive` VALUES ('651', 'a', 'qq', '0', '39', '12', '366', '2017-01-07 12:29:34', '2017-01-21 12:29:34', '12', '103', '2017-01-08 20:15:09', 'd');
INSERT INTO `ad_archive` VALUES ('652', 'a', 'qq', '0', '39', '12', '366', '2017-01-07 12:29:36', '2017-01-21 12:29:36', '12', '104', '2017-01-08 20:15:09', 'd');
INSERT INTO `ad_archive` VALUES ('653', 'a', 'qq', '0', '39', '12', '366', '2017-01-07 12:29:37', '2017-01-21 12:29:37', '12', '105', '2017-01-08 20:15:09', 'd');
INSERT INTO `ad_archive` VALUES ('654', 'a', 'qq', '0', '39', '12', '366', '2017-01-07 12:29:38', '2017-01-21 12:29:38', '12', '106', '2017-01-08 20:15:09', 'd');
INSERT INTO `ad_archive` VALUES ('655', 'a', 'qq', '0', '39', '12', '366', '2017-01-07 12:29:40', '2017-01-21 12:29:40', '12', '107', '2017-01-08 20:15:09', 'd');
INSERT INTO `ad_archive` VALUES ('656', 'a', 'qq', '0', '39', '12', '366', '2017-01-07 12:29:41', '2017-01-21 12:29:41', '12', '108', '2017-01-08 20:15:09', 'd');
INSERT INTO `ad_archive` VALUES ('657', 'a', 'qq', '0', '39', '12', '366', '2017-01-07 12:29:42', '2017-01-21 12:29:42', '12', '109', '2017-01-08 20:15:09', 'd');
INSERT INTO `ad_archive` VALUES ('658', 'a', 'qq', '0', '39', '12', '366', '2017-01-07 12:29:43', '2017-01-21 12:29:43', '12', '110', '2017-01-08 20:15:09', 'd');
INSERT INTO `ad_archive` VALUES ('659', 'a', 'qq', '0', '39', '12', '366', '2017-01-07 12:29:45', '2017-01-21 12:29:45', '12', '111', '2017-01-08 20:15:09', 'd');
INSERT INTO `ad_archive` VALUES ('660', 'a', 'qq', '0', '39', '12', '366', '2017-01-07 12:29:46', '2017-01-21 12:29:46', '12', '112', '2017-01-08 20:15:09', 'd');
INSERT INTO `ad_archive` VALUES ('661', 'a', 'qq', '0', '39', '12', '366', '2017-01-07 12:29:47', '2017-01-21 12:29:47', '12', '113', '2017-01-08 20:15:09', 'd');
INSERT INTO `ad_archive` VALUES ('662', 'a', 'qq', '0', '39', '12', '366', '2017-01-07 12:29:48', '2017-01-21 12:29:48', '12', '114', '2017-01-08 20:15:09', 'd');
INSERT INTO `ad_archive` VALUES ('663', 'a', 'qq', '0', '39', '12', '366', '2017-01-07 12:29:49', '2017-01-21 12:29:49', '12', '115', '2017-01-08 20:15:09', 'd');
INSERT INTO `ad_archive` VALUES ('664', 'a', 'qq', '0', '39', '12', '366', '2017-01-07 12:29:51', '2017-01-21 12:29:51', '12', '116', '2017-01-08 20:15:09', 'd');
INSERT INTO `ad_archive` VALUES ('665', 'a', 'qq', '0', '39', '12', '366', '2017-01-07 12:29:52', '2017-01-21 12:29:52', '12', '117', '2017-01-08 20:15:09', 'd');
INSERT INTO `ad_archive` VALUES ('666', 'a', 'qq', '0', '39', '12', '366', '2017-01-07 12:29:53', '2017-01-21 12:29:53', '12', '118', '2017-01-08 20:15:09', 'd');
INSERT INTO `ad_archive` VALUES ('667', 'a', 'qq', '0', '39', '12', '366', '2017-01-07 12:29:55', '2017-01-21 12:29:55', '12', '119', '2017-01-08 20:15:09', 'd');
INSERT INTO `ad_archive` VALUES ('668', 'a', 'qq', '1', '39', '12', '366', '2017-01-07 12:29:57', '2017-01-21 12:29:57', '12', '120', '2017-01-08 20:15:09', 'd');
INSERT INTO `ad_archive` VALUES ('669', 'a', 'qq', '0', '39', '12', '366', '2017-01-07 12:29:59', '2017-01-21 12:29:59', '12', '121', '2017-01-08 20:15:09', 'd');
INSERT INTO `ad_archive` VALUES ('670', 'a', 'qq', '1', '39', '12', '366', '2017-01-07 12:30:00', '2017-01-21 12:30:00', '12', '122', '2017-01-08 20:15:09', 'd');
INSERT INTO `ad_archive` VALUES ('671', 'q', 'qwqw', '0', '39', '12', '470', '2017-01-07 12:49:42', '2017-01-21 12:49:42', '1', '123', '2017-01-08 20:15:09', 'd');
INSERT INTO `ad_archive` VALUES ('672', 'q', 'qwqw', '0', '39', '12', '470', '2017-01-07 12:49:44', '2017-01-21 12:49:44', '1', '124', '2017-01-08 20:15:09', 'd');
INSERT INTO `ad_archive` VALUES ('673', 'q', 'qwqw', '0', '39', '12', '470', '2017-01-07 12:49:45', '2017-01-21 12:49:45', '1', '125', '2017-01-08 20:15:09', 'd');
INSERT INTO `ad_archive` VALUES ('674', 'q', 'qwqw', '0', '39', '12', '470', '2017-01-07 12:49:47', '2017-01-21 12:49:47', '1', '126', '2017-01-08 20:15:09', 'd');
INSERT INTO `ad_archive` VALUES ('675', 'q', 'qwqw', '0', '39', '12', '470', '2017-01-07 12:49:49', '2017-01-21 12:49:49', '1', '127', '2017-01-08 20:15:09', 'd');
INSERT INTO `ad_archive` VALUES ('676', 'q', 'qwqw', '0', '39', '12', '470', '2017-01-07 12:49:51', '2017-01-21 12:49:51', '1', '128', '2017-01-08 20:15:09', 'd');
INSERT INTO `ad_archive` VALUES ('677', 'q', 'qwqw', '0', '39', '12', '470', '2017-01-07 12:49:53', '2017-01-21 12:49:53', '1', '129', '2017-01-08 20:15:09', 'd');
INSERT INTO `ad_archive` VALUES ('678', 'q', 'qwqw', '0', '39', '12', '470', '2017-01-07 12:49:54', '2017-01-21 12:49:54', '1', '130', '2017-01-08 20:15:09', 'd');
INSERT INTO `ad_archive` VALUES ('679', 'q', 'qwqw', '0', '39', '12', '470', '2017-01-07 12:50:01', '2017-01-21 12:50:01', '1', '131', '2017-01-08 20:15:09', 'd');
INSERT INTO `ad_archive` VALUES ('680', 'q', 'qwqw', '0', '39', '12', '470', '2017-01-07 12:50:08', '2017-01-21 12:50:08', '1', '132', '2017-01-08 20:15:09', 'd');
INSERT INTO `ad_archive` VALUES ('681', 'aaa', 's', '0', '39', '14', '295', '2017-01-07 12:59:41', '2017-01-21 12:59:41', '1', '133', '2017-01-08 20:15:09', 'd');
INSERT INTO `ad_archive` VALUES ('682', 'aaa', 's', '0', '39', '14', '295', '2017-01-07 12:59:43', '2017-01-21 12:59:43', '1', '134', '2017-01-08 20:15:09', 'd');
INSERT INTO `ad_archive` VALUES ('683', 'aaa', 's', '0', '39', '14', '295', '2017-01-07 12:59:44', '2017-01-21 12:59:44', '1', '135', '2017-01-08 20:15:09', 'd');
INSERT INTO `ad_archive` VALUES ('684', 'aaa', 's', '0', '39', '14', '295', '2017-01-07 12:59:45', '2017-01-21 12:59:45', '1', '136', '2017-01-08 20:15:09', 'd');
INSERT INTO `ad_archive` VALUES ('685', 'aaa', 's', '0', '39', '14', '295', '2017-01-07 12:59:46', '2017-01-21 12:59:46', '1', '137', '2017-01-08 20:15:09', 'd');
INSERT INTO `ad_archive` VALUES ('686', 'kasia', 'qwqw', '2', '39', '12', '84', '2017-01-07 13:02:22', '2017-01-21 13:02:22', '12', '138', '2017-01-08 20:15:09', 'd');
INSERT INTO `ad_archive` VALUES ('687', 'a', 'qqq', '0', '37', '14', '84', '2017-01-07 14:15:56', '2017-01-21 14:15:56', '1', '139', '2017-01-08 20:16:35', 'd');
INSERT INTO `ad_archive` VALUES ('688', 'a', 'qqq', '0', '37', '14', '84', '2017-01-07 14:15:57', '2017-01-21 14:15:57', '1', '140', '2017-01-08 20:16:35', 'd');
INSERT INTO `ad_archive` VALUES ('689', 'a', 'qqq', '0', '37', '14', '84', '2017-01-07 14:15:58', '2017-01-21 14:15:58', '1', '141', '2017-01-08 20:16:35', 'd');
INSERT INTO `ad_archive` VALUES ('690', 'a', 'qqq', '0', '37', '14', '84', '2017-01-07 14:16:00', '2017-01-21 14:16:00', '1', '142', '2017-01-08 20:16:35', 'd');
INSERT INTO `ad_archive` VALUES ('691', 'a', 'qqq', '0', '37', '14', '84', '2017-01-07 14:16:01', '2017-01-21 14:16:01', '1', '143', '2017-01-08 20:16:35', 'd');
INSERT INTO `ad_archive` VALUES ('692', 'a', 'qqq', '0', '37', '14', '84', '2017-01-07 14:16:01', '2017-01-21 14:16:01', '1', '144', '2017-01-08 20:16:35', 'd');
INSERT INTO `ad_archive` VALUES ('693', 'a', 'qqq', '0', '37', '14', '84', '2017-01-07 14:16:02', '2017-01-21 14:16:02', '1', '145', '2017-01-08 20:16:35', 'd');
INSERT INTO `ad_archive` VALUES ('694', 'a', 'qqq', '0', '37', '14', '84', '2017-01-07 14:16:03', '2017-01-21 14:16:03', '1', '146', '2017-01-08 20:16:35', 'd');
INSERT INTO `ad_archive` VALUES ('695', 'a', 'qqq', '0', '37', '14', '84', '2017-01-07 14:16:03', '2017-01-21 14:16:03', '1', '147', '2017-01-08 20:16:35', 'd');
INSERT INTO `ad_archive` VALUES ('696', 'a', 'qqq', '0', '37', '14', '84', '2017-01-07 14:16:05', '2017-01-21 14:16:05', '1', '148', '2017-01-08 20:16:35', 'd');
INSERT INTO `ad_archive` VALUES ('697', 'a', 'qqq', '0', '37', '14', '84', '2017-01-07 14:16:06', '2017-01-21 14:16:06', '1', '149', '2017-01-08 20:16:35', 'd');
INSERT INTO `ad_archive` VALUES ('698', 'a', 'qqq', '0', '37', '14', '84', '2017-01-07 14:16:07', '2017-01-21 14:16:07', '1', '150', '2017-01-08 20:16:35', 'd');
INSERT INTO `ad_archive` VALUES ('699', 'a', 'qqq', '0', '37', '14', '84', '2017-01-07 14:16:08', '2017-01-21 14:16:08', '1', '151', '2017-01-08 20:16:35', 'd');
INSERT INTO `ad_archive` VALUES ('700', 'a', 'qqq', '0', '37', '14', '84', '2017-01-07 14:16:09', '2017-01-21 14:16:09', '1', '152', '2017-01-08 20:16:35', 'd');
INSERT INTO `ad_archive` VALUES ('701', 'a', 'qqq', '0', '37', '14', '84', '2017-01-07 14:16:10', '2017-01-21 14:16:10', '1', '153', '2017-01-08 20:16:35', 'd');
INSERT INTO `ad_archive` VALUES ('702', 'a', 'qqq', '0', '37', '14', '84', '2017-01-07 14:16:11', '2017-01-21 14:16:11', '1', '154', '2017-01-08 20:16:35', 'd');
INSERT INTO `ad_archive` VALUES ('703', 'a', 'qqq', '0', '37', '14', '84', '2017-01-07 14:16:12', '2017-01-21 14:16:12', '1', '155', '2017-01-08 20:16:35', 'd');
INSERT INTO `ad_archive` VALUES ('704', 'a', 'qqq', '0', '37', '14', '84', '2017-01-07 14:16:13', '2017-01-21 14:16:13', '1', '156', '2017-01-08 20:16:35', 'd');
INSERT INTO `ad_archive` VALUES ('705', 'a', 'qqq', '0', '37', '14', '84', '2017-01-07 14:16:14', '2017-01-21 14:16:14', '1', '157', '2017-01-08 20:16:35', 'd');
INSERT INTO `ad_archive` VALUES ('706', 'a', 'qqq', '0', '37', '14', '84', '2017-01-07 14:16:15', '2017-01-21 14:16:15', '1', '158', '2017-01-08 20:16:35', 'd');
INSERT INTO `ad_archive` VALUES ('707', 'a', 'qqq', '0', '37', '14', '84', '2017-01-07 14:16:16', '2017-01-21 14:16:16', '1', '159', '2017-01-08 20:16:35', 'd');
INSERT INTO `ad_archive` VALUES ('708', 'a', 'qqq', '0', '37', '14', '84', '2017-01-07 14:16:17', '2017-01-21 14:16:17', '1', '160', '2017-01-08 20:16:35', 'd');
INSERT INTO `ad_archive` VALUES ('709', 'a', 'qqq', '0', '37', '14', '84', '2017-01-07 14:16:17', '2017-01-21 14:16:17', '1', '161', '2017-01-08 20:16:35', 'd');
INSERT INTO `ad_archive` VALUES ('710', 'a', 'qqq', '0', '37', '14', '84', '2017-01-07 14:16:18', '2017-01-21 14:16:18', '1', '162', '2017-01-08 20:16:35', 'd');
INSERT INTO `ad_archive` VALUES ('711', 'a', 'qqq', '0', '37', '14', '84', '2017-01-07 14:16:19', '2017-01-21 14:16:19', '1', '163', '2017-01-08 20:16:35', 'd');
INSERT INTO `ad_archive` VALUES ('712', 'a', 'qqq', '0', '37', '14', '84', '2017-01-07 14:16:20', '2017-01-21 14:16:20', '1', '164', '2017-01-08 20:16:35', 'd');
INSERT INTO `ad_archive` VALUES ('713', 'a', 'qqq', '0', '37', '14', '84', '2017-01-07 14:16:21', '2017-01-21 14:16:21', '1', '165', '2017-01-08 20:16:35', 'd');
INSERT INTO `ad_archive` VALUES ('714', 'a', 'qqq', '0', '37', '14', '84', '2017-01-07 14:16:22', '2017-01-21 14:16:22', '1', '166', '2017-01-08 20:16:35', 'd');
INSERT INTO `ad_archive` VALUES ('715', 'a', 'qqq', '0', '37', '14', '84', '2017-01-07 14:16:22', '2017-01-21 14:16:22', '1', '167', '2017-01-08 20:16:35', 'd');
INSERT INTO `ad_archive` VALUES ('716', 'a', 'qqq', '0', '37', '14', '84', '2017-01-07 14:16:23', '2017-01-21 14:16:23', '1', '168', '2017-01-08 20:16:35', 'd');
INSERT INTO `ad_archive` VALUES ('717', 'a', 'qqq', '0', '37', '14', '84', '2017-01-07 14:16:24', '2017-01-21 14:16:24', '1', '169', '2017-01-08 20:16:35', 'd');
INSERT INTO `ad_archive` VALUES ('718', 'a', 'qqq', '0', '37', '14', '84', '2017-01-07 14:16:25', '2017-01-21 14:16:25', '1', '170', '2017-01-08 20:16:35', 'd');
INSERT INTO `ad_archive` VALUES ('719', 'a', 'qqq', '0', '37', '14', '84', '2017-01-07 14:16:26', '2017-01-21 14:16:26', '1', '171', '2017-01-08 20:16:35', 'd');
INSERT INTO `ad_archive` VALUES ('720', 'a', 'qqq', '0', '37', '14', '84', '2017-01-07 14:16:26', '2017-01-21 14:16:26', '1', '172', '2017-01-08 20:16:35', 'd');
INSERT INTO `ad_archive` VALUES ('721', 'a', 'qqq', '0', '37', '14', '84', '2017-01-07 14:16:34', '2017-01-21 14:16:34', '1', '173', '2017-01-08 20:16:35', 'd');
INSERT INTO `ad_archive` VALUES ('722', 'a', 'qqq', '0', '37', '14', '84', '2017-01-07 14:16:35', '2017-01-21 14:16:35', '1', '174', '2017-01-08 20:16:35', 'd');
INSERT INTO `ad_archive` VALUES ('723', 'a', 'qqq', '0', '37', '14', '84', '2017-01-07 14:16:36', '2017-01-21 14:16:36', '1', '175', '2017-01-08 20:16:35', 'd');
INSERT INTO `ad_archive` VALUES ('724', 'a', 'qqq', '0', '37', '14', '84', '2017-01-07 14:16:37', '2017-01-21 14:16:37', '1', '176', '2017-01-08 20:16:35', 'd');
INSERT INTO `ad_archive` VALUES ('725', 'a', 'qqq', '0', '37', '14', '84', '2017-01-07 14:16:38', '2017-01-21 14:16:38', '1', '177', '2017-01-08 20:16:35', 'd');
INSERT INTO `ad_archive` VALUES ('726', 'a', 'qqq', '0', '37', '14', '84', '2017-01-07 14:16:39', '2017-01-21 14:16:39', '1', '178', '2017-01-08 20:16:35', 'd');
INSERT INTO `ad_archive` VALUES ('727', 'a', 'qqq', '0', '37', '14', '84', '2017-01-07 14:16:40', '2017-01-21 14:16:40', '1', '179', '2017-01-08 20:16:35', 'd');
INSERT INTO `ad_archive` VALUES ('728', 'a', 'qqq', '0', '37', '14', '84', '2017-01-07 14:16:41', '2017-01-21 14:16:41', '1', '180', '2017-01-08 20:16:35', 'd');
INSERT INTO `ad_archive` VALUES ('729', 'a', 'qqq', '0', '37', '14', '84', '2017-01-07 14:16:42', '2017-01-21 14:16:42', '1', '181', '2017-01-08 20:16:35', 'd');
INSERT INTO `ad_archive` VALUES ('730', 'a', 'qqq', '0', '37', '14', '84', '2017-01-07 14:16:43', '2017-01-21 14:16:43', '1', '182', '2017-01-08 20:16:35', 'd');
INSERT INTO `ad_archive` VALUES ('731', 'a', 'qqq', '0', '37', '14', '84', '2017-01-07 14:16:44', '2017-01-21 14:16:44', '1', '183', '2017-01-08 20:16:35', 'd');
INSERT INTO `ad_archive` VALUES ('732', 'a', 'qqq', '1', '37', '14', '84', '2017-01-07 14:16:45', '2017-01-21 14:16:45', '1', '184', '2017-01-08 20:16:35', 'd');
INSERT INTO `ad_archive` VALUES ('733', 'a', 'qqq', '2', '37', '14', '84', '2017-01-07 14:16:46', '2017-01-21 14:16:46', '1', '185', '2017-01-08 20:16:35', 'd');
INSERT INTO `ad_archive` VALUES ('734', 'a', 'qqq', '2', '37', '14', '84', '2017-01-07 14:16:46', '2017-01-21 14:16:46', '1', '186', '2017-01-08 20:16:35', 'd');
INSERT INTO `ad_archive` VALUES ('735', 'srajfon', 'wq', '5', '37', '13', '84', '2017-01-07 15:04:33', '2017-01-21 15:04:33', '12', '187', '2017-01-08 20:16:35', 'd');
INSERT INTO `ad_archive` VALUES ('736', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 'sas', '5', '37', '12', '459', '2017-01-07 22:18:33', '2017-01-21 22:18:33', '12', '188', '2017-01-08 20:16:35', 'd');
INSERT INTO `ad_archive` VALUES ('737', 'a', 'sasa', '5', '37', '12', '84', '2017-01-08 00:01:20', '2017-01-22 00:01:20', '1234678978', '189', '2017-01-08 20:16:35', 'd');
INSERT INTO `ad_archive` VALUES ('738', 'aaa', 'Sprzedam coś i tak dalej', '1', '37', '12', '84', '2017-01-08 11:21:44', '2017-01-22 11:21:44', '12', '191', '2017-01-08 20:16:35', 'd');
INSERT INTO `ad_archive` VALUES ('739', 'ania', '&lt;noscript&gt;', '4', '37', '12', '84', '2017-01-08 11:22:05', '2017-01-22 11:22:05', '123', '192', '2017-01-08 20:16:35', 'd');
INSERT INTO `ad_archive` VALUES ('740', 'asas', 'asas', '4', '37', '15', '763', '2017-01-08 12:11:36', '2017-01-22 12:11:36', '123', '193', '2017-01-08 20:16:35', 'd');
INSERT INTO `ad_archive` VALUES ('741', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 'asas', '2', '37', '12', '172', '2017-01-08 12:37:22', '2017-01-22 12:37:22', '123', '194', '2017-01-08 20:16:35', 'd');
INSERT INTO `ad_archive` VALUES ('742', 'test', '123', '1', '37', '12', '671', '2017-01-08 17:28:41', '2017-01-22 17:28:41', '123', '195', '2017-01-08 20:16:35', 'd');
INSERT INTO `ad_archive` VALUES ('743', 'qw', 'asdsasdsad', '2', '37', '12', '459', '2017-01-08 17:30:02', '2017-01-22 17:30:02', '12', '196', '2017-01-08 20:16:35', 'd');
INSERT INTO `ad_archive` VALUES ('744', 'test', 'asdsad', '2', '37', '12', '98', '2017-01-08 17:30:31', '2017-01-22 17:30:31', '12', '197', '2017-01-08 20:16:35', 'd');
INSERT INTO `ad_archive` VALUES ('745', 'wqwqw', 'sdd', '2', '37', '12', '459', '2017-01-08 17:32:39', '2017-01-22 17:32:39', '123', '198', '2017-01-08 20:16:35', 'd');
INSERT INTO `ad_archive` VALUES ('746', '12', 'qw', '1', '37', '12', '913', '2017-01-08 18:06:00', '2017-01-22 18:06:00', '12', '199', '2017-01-08 20:16:35', 'd');
INSERT INTO `ad_archive` VALUES ('747', 'asas', 'assa', '0', '37', '12', '172', '2017-01-08 18:19:10', '2017-01-22 18:19:10', '12', '200', '2017-01-08 20:16:35', 'd');
INSERT INTO `ad_archive` VALUES ('748', 'asas', 'assa', '1', '37', '12', '172', '2017-01-08 18:19:25', '2017-01-22 18:19:25', '12', '201', '2017-01-08 20:16:35', 'd');
INSERT INTO `ad_archive` VALUES ('749', 'asasas', 'qwer', '0', '44', '12', '366', '2017-01-08 20:20:22', '2017-01-22 20:20:22', '123', '204', '2017-01-08 20:20:28', 'u');
INSERT INTO `ad_archive` VALUES ('750', 'asasas', 'qwer', '0', '44', '12', '366', '2017-01-08 20:19:29', '2017-01-22 20:19:29', '123', '203', '2017-01-08 20:20:44', 'u');
INSERT INTO `ad_archive` VALUES ('751', 'asasas', 'qwer', '1', '44', '12', '366', '2017-01-08 20:19:29', '2017-01-22 20:19:29', '123', '203', '2017-01-08 20:25:49', 'd');
INSERT INTO `ad_archive` VALUES ('752', 'asasas', 'qwer', '1', '44', '12', '366', '2017-01-08 20:20:22', '2017-01-22 20:20:22', '123', '204', '2017-01-08 20:25:58', 'd');
INSERT INTO `ad_archive` VALUES ('753', 'aaa', 'qwqw', '0', '45', '12', '84', '2017-01-08 20:29:58', '2017-01-22 20:29:58', '12', '205', '2017-01-08 20:30:05', 'u');
INSERT INTO `ad_archive` VALUES ('754', 'aaa', 'qwqw', '1', '45', '12', '84', '2017-01-08 20:29:58', '2017-01-22 20:29:58', '12', '205', '2017-01-08 20:30:45', 'u');
INSERT INTO `ad_archive` VALUES ('755', 'aaa', 'qwqw', '2', '45', '12', '84', '2017-01-08 20:29:58', '2017-01-22 20:29:58', '12', '205', '2017-01-08 20:31:19', 'u');
INSERT INTO `ad_archive` VALUES ('756', 'aaa', 'qwqw', '2', '45', '12', '84', '2017-01-08 20:29:58', '2017-01-22 20:29:58', '12', '205', '2017-01-08 20:31:54', 'u');
INSERT INTO `ad_archive` VALUES ('757', 'aaa', 'qwqw', '2', '45', '12', '84', '2017-01-08 20:29:58', '2017-01-22 20:29:58', '12', '205', '2017-01-08 20:36:40', 'd');
INSERT INTO `ad_archive` VALUES ('758', 'ania', 'qwqw', '0', '46', '12', '366', '2017-01-08 20:42:00', '2017-01-22 20:42:00', '123', '207', '2017-01-08 20:42:06', 'u');
INSERT INTO `ad_archive` VALUES ('759', 'ania', 'qwqw', '0', '46', '12', '366', '2017-01-08 20:41:58', '2017-01-22 20:41:58', '123', '206', '2017-01-08 20:42:10', 'u');
INSERT INTO `ad_archive` VALUES ('760', 'aa', 'qwqw', '0', '46', '12', '366', '2017-01-08 20:42:26', '2017-01-22 20:42:26', '12', '208', '2017-01-08 20:42:32', 'u');
INSERT INTO `ad_archive` VALUES ('761', 'ania', 'qwqw', '1', '46', '12', '366', '2017-01-08 20:41:58', '2017-01-22 20:41:58', '123', '206', '2017-01-08 20:42:58', 'u');
INSERT INTO `ad_archive` VALUES ('762', 'aa', 'qwqw', '1', '46', '12', '366', '2017-01-08 20:42:26', '2017-01-22 20:42:26', '12', '208', '2017-01-08 20:43:15', 'u');
INSERT INTO `ad_archive` VALUES ('763', 'ania', 'qwqw', '1', '46', '12', '366', '2017-01-08 20:41:58', '2017-01-22 20:41:58', '123', '206', '2017-01-08 20:43:32', 'd');
INSERT INTO `ad_archive` VALUES ('764', 'ania', 'qwqw', '1', '46', '12', '366', '2017-01-08 20:42:00', '2017-01-22 20:42:00', '123', '207', '2017-01-08 20:43:35', 'd');
INSERT INTO `ad_archive` VALUES ('765', 'aa', 'qwqw', '2', '46', '12', '366', '2017-01-08 20:42:26', '2017-01-22 20:42:26', '12', '208', '2017-01-08 20:43:38', 'd');
INSERT INTO `ad_archive` VALUES ('766', 'aa', 'asasa', '0', '37', '12', '172', '2017-01-08 20:51:05', '2017-01-22 20:51:05', '11', '209', '2017-01-08 20:51:18', 'u');
INSERT INTO `ad_archive` VALUES ('767', 'aa', 'asasa', '0', '37', '12', '172', '2017-01-08 20:51:05', '2017-01-22 20:51:05', '11', '209', '2017-01-08 20:51:24', 'u');
INSERT INTO `ad_archive` VALUES ('768', 'aa', 'asasa', '1', '37', '12', '172', '2017-01-08 20:51:05', '2017-01-22 20:51:05', '11', '209', '2017-01-08 20:53:25', 'u');
INSERT INTO `ad_archive` VALUES ('769', 'aa', 'asasa', '1', '37', '12', '172', '2017-01-08 20:51:05', '2017-01-22 20:51:05', '11', '209', '2017-01-08 20:53:31', 'u');
INSERT INTO `ad_archive` VALUES ('770', 'aa', 'asasa', '2', '37', '12', '172', '2017-01-08 20:51:05', '2017-01-22 20:51:05', '11', '209', '2017-01-08 20:53:57', 'u');
INSERT INTO `ad_archive` VALUES ('771', 'asasas', 'qsqsq', '0', '47', '12', '84', '2017-01-08 20:54:55', '2017-01-22 20:54:55', '12', '210', '2017-01-08 20:55:11', 'u');
INSERT INTO `ad_archive` VALUES ('772', 'asasas', 'qsqsq', '0', '47', '12', '84', '2017-01-08 20:54:55', '2017-01-22 20:54:55', '12', '210', '2017-01-08 22:04:46', 'u');
INSERT INTO `ad_archive` VALUES ('773', 'asasas', 'qsqsq', '1', '47', '12', '84', '2017-01-08 20:54:55', '2017-01-22 20:54:55', '12', '210', '2017-01-08 22:05:12', 'u');
INSERT INTO `ad_archive` VALUES ('774', 'asasas', 'qsqsq', '1', '47', '12', '84', '2017-01-08 20:54:55', '2017-01-22 20:54:55', '12', '210', '2017-01-08 22:05:20', 'u');
INSERT INTO `ad_archive` VALUES ('775', 'asasas', 'qsqsq', '2', '47', '12', '84', '2017-01-08 20:54:55', '2017-01-22 20:54:55', '12', '210', '2017-01-08 22:15:05', 'd');
INSERT INTO `ad_archive` VALUES ('776', 'aa', 'asasa', '2', '37', '12', '172', '2017-01-08 20:51:05', '2017-01-22 20:51:05', '11', '209', '2017-01-08 22:16:34', 'u');
INSERT INTO `ad_archive` VALUES ('777', 'a', 'asasa', '0', '48', '13', '509', '2017-01-08 22:23:14', '2017-01-22 22:23:14', '1', '211', '2017-01-08 22:28:22', 'd');
INSERT INTO `ad_archive` VALUES ('778', 'a', 'asasa', '0', '48', '13', '509', '2017-01-08 22:23:23', '2017-01-22 22:23:23', '1', '212', '2017-01-08 22:31:07', 'd');
INSERT INTO `ad_archive` VALUES ('779', 'aa', 'asasa', '3', '37', '12', '172', '2017-01-08 20:51:05', '2017-01-22 20:51:05', '11', '209', '2017-01-09 18:13:00', 'd');
INSERT INTO `ad_archive` VALUES ('780', 'as', 'asas', '0', '49', '12', '172', '2017-01-08 22:23:44', '2017-01-22 22:23:44', '12', '213', '2017-01-09 18:13:04', 'd');
INSERT INTO `ad_archive` VALUES ('781', 'ala', 'asa', '0', '50', '12', '366', '2017-01-09 18:18:15', '2017-01-23 18:18:15', '12', '215', '2017-01-09 18:22:04', 'u');
INSERT INTO `ad_archive` VALUES ('782', 'ala', 'asa', '0', '50', '12', '366', '2017-01-09 18:18:15', '2017-01-23 18:18:15', '12', '215', '2017-01-09 18:35:56', 'd');
INSERT INTO `ad_archive` VALUES ('783', 'ala', 'asa', '0', '50', '12', '366', '2017-01-09 18:18:19', '2017-01-23 18:18:19', '12', '216', '2017-01-09 18:37:05', 'd');
INSERT INTO `ad_archive` VALUES ('784', 'aa', 'sas', '0', '51', '12', '853', '2017-01-09 18:41:25', '2017-01-23 18:41:25', '12', '217', '2017-01-09 19:12:58', 'd');
INSERT INTO `ad_archive` VALUES ('785', 'aa', 'sas', '0', '51', '12', '853', '2017-01-09 18:41:29', '2017-01-23 18:41:29', '12', '218', '2017-01-09 19:13:03', 'd');
INSERT INTO `ad_archive` VALUES ('786', 'as', 'asas', '0', '49', '12', '172', '2017-01-08 22:23:51', '2017-01-22 22:23:51', '12', '214', '2017-01-09 19:14:29', 'd');
INSERT INTO `ad_archive` VALUES ('787', 'aaa', 'asas', '0', '53', '12', '366', '2017-01-09 19:19:57', '2017-01-23 19:19:57', '123', '222', '2017-01-09 19:23:20', 'd');
INSERT INTO `ad_archive` VALUES ('788', 'aaa', 'asas', '0', '53', '12', '366', '2017-01-09 19:20:04', '2017-01-23 19:20:04', '123', '223', '2017-01-09 19:29:34', 'd');
INSERT INTO `ad_archive` VALUES ('789', 'aa', 'asasa', '0', '52', '12', '526', '2017-01-09 19:19:10', '2017-01-23 19:19:10', '12', '221', '2017-01-09 19:36:36', 'u');
INSERT INTO `ad_archive` VALUES ('790', 'a', 'asas', '0', '54', '12', '366', '2017-01-09 19:42:47', '2017-01-23 19:42:47', '12', '224', '2017-01-09 19:43:12', 'd');
INSERT INTO `ad_archive` VALUES ('794', 'a', 'asas', '0', '54', '12', '366', '2017-01-09 19:42:54', '2017-01-23 19:42:54', '12', '225', '2017-01-09 20:02:06', 'd');
INSERT INTO `ad_archive` VALUES ('801', '12', 'asas', '0', '55', '12', '172', '2017-01-09 19:47:46', '2017-01-23 19:47:46', '12', '226', '2017-01-09 20:17:52', 'd');
INSERT INTO `ad_archive` VALUES ('802', '12', 'asas', '0', '55', '12', '172', '2017-01-09 19:47:50', '2017-01-23 19:47:50', '12', '227', '2017-01-09 20:17:52', 'd');
INSERT INTO `ad_archive` VALUES ('803', 'karina', 'as', '0', '56', '12', '172', '2017-01-09 20:19:27', '2017-01-23 20:19:27', '12', '228', '2017-01-09 20:20:32', 'd');
INSERT INTO `ad_archive` VALUES ('804', 'karina', 'as', '0', '56', '12', '172', '2017-01-09 20:19:34', '2017-01-23 20:19:34', '12', '229', '2017-01-09 20:20:32', 'd');
INSERT INTO `ad_archive` VALUES ('805', 'katerena', 'katerena', '0', '57', '12', '526', '2017-01-09 20:23:08', '2017-01-23 20:23:08', '12', '230', '2017-01-09 20:25:35', 'd');
INSERT INTO `ad_archive` VALUES ('806', 'katerena', 'katerena', '0', '57', '12', '526', '2017-01-09 20:23:12', '2017-01-23 20:23:12', '12', '231', '2017-01-09 20:25:35', 'd');
INSERT INTO `ad_archive` VALUES ('807', 'aa', 'asasa', '0', '52', '12', '526', '2017-01-09 19:18:40', '2017-01-23 19:18:40', '12', '219', '2017-01-09 20:26:16', 'd');
INSERT INTO `ad_archive` VALUES ('808', 'aa', 'asasa', '0', '52', '12', '526', '2017-01-09 19:18:46', '2017-01-23 19:18:46', '12', '220', '2017-01-09 20:26:16', 'd');
INSERT INTO `ad_archive` VALUES ('809', 'aa', 'asasa', '1', '52', '12', '526', '2017-01-09 19:19:10', '2017-01-23 19:19:10', '12', '221', '2017-01-09 20:26:16', 'd');
INSERT INTO `ad_archive` VALUES ('810', 'qa', 'asas', '0', '58', '12', '172', '2017-01-09 20:29:23', '2017-01-23 20:29:23', '1', '232', '2017-01-09 20:30:10', 'u');
INSERT INTO `ad_archive` VALUES ('811', 'qa', 'asas', '0', '58', '12', '172', '2017-01-09 20:29:27', '2017-01-23 20:29:27', '1', '233', '2017-01-09 20:30:16', 'u');
INSERT INTO `ad_archive` VALUES ('812', 'qa', 'asas', '0', '58', '12', '172', '2017-01-09 20:29:23', '2017-01-23 20:29:23', '1', '232', '2017-01-09 20:30:20', 'u');
INSERT INTO `ad_archive` VALUES ('813', 'qa', 'asas', '1', '58', '12', '172', '2017-01-09 20:29:27', '2017-01-23 20:29:27', '1', '233', '2017-01-09 20:30:24', 'u');
INSERT INTO `ad_archive` VALUES ('814', 'qa', 'asas', '2', '58', '12', '172', '2017-01-09 20:29:27', '2017-01-23 20:29:27', '1', '233', '2017-01-09 20:30:36', 'u');
INSERT INTO `ad_archive` VALUES ('815', 'qa', 'asas', '2', '58', '12', '172', '2017-01-09 20:29:27', '2017-01-23 20:29:27', '1', '233', '2017-01-09 20:30:41', 'u');
INSERT INTO `ad_archive` VALUES ('816', 'qa', 'asas', '1', '58', '12', '172', '2017-01-09 20:29:23', '2017-01-23 20:29:23', '1', '232', '2017-01-09 20:31:02', 'd');
INSERT INTO `ad_archive` VALUES ('817', 'qa', 'asas', '3', '58', '12', '172', '2017-01-09 20:29:27', '2017-01-23 20:29:27', '1', '233', '2017-01-09 20:31:02', 'd');
INSERT INTO `ad_archive` VALUES ('818', 'asasa', 'qwqw', '0', '37', '12', '172', '2017-01-09 22:41:07', '2017-01-23 22:41:07', '12', '235', '2017-01-09 22:45:04', 'u');
INSERT INTO `ad_archive` VALUES ('819', 'asasa', 'qwqw', '0', '37', '12', '172', '2017-01-09 22:41:07', '2017-01-23 22:41:07', '1223', '235', '2017-01-09 22:46:03', 'u');
INSERT INTO `ad_archive` VALUES ('820', 'a', 'asas', '0', '44', '12', '172', '2017-01-10 00:55:43', '2017-01-24 00:55:43', '1', '236', '2017-01-10 01:00:03', 'd');
INSERT INTO `ad_archive` VALUES ('821', 'a', 'asas', '0', '44', '12', '172', '2017-01-10 00:55:46', '2017-01-24 00:55:46', '1', '237', '2017-01-10 01:00:03', 'd');

-- ----------------------------
-- Table structure for `category`
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id_category` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_category` int(10) unsigned NOT NULL DEFAULT '0',
  `name_category` varchar(100) NOT NULL,
  PRIMARY KEY (`id_category`),
  KEY `parent_category_FK` (`parent_category`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('12', '0', 'Elektronika');
INSERT INTO `category` VALUES ('13', '12', 'Telefony komórkowe');
INSERT INTO `category` VALUES ('14', '12', 'Komputery');
INSERT INTO `category` VALUES ('15', '0', 'Odzież');
INSERT INTO `category` VALUES ('16', '0', 'Samochody');
INSERT INTO `category` VALUES ('17', '16', 'Audi');

-- ----------------------------
-- Table structure for `county`
-- ----------------------------
DROP TABLE IF EXISTS `county`;
CREATE TABLE `county` (
  `id_county` int(10) unsigned NOT NULL,
  `name_county` varchar(50) NOT NULL,
  PRIMARY KEY (`id_county`),
  KEY `id_county` (`id_county`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of county
-- ----------------------------
INSERT INTO `county` VALUES ('2001', 'bolesławiecki');
INSERT INTO `county` VALUES ('2002', 'dzierżoniowski');
INSERT INTO `county` VALUES ('2003', 'głogowski');
INSERT INTO `county` VALUES ('2004', 'górowski');
INSERT INTO `county` VALUES ('2005', 'jaworski');
INSERT INTO `county` VALUES ('2006', 'jeleniogórski');
INSERT INTO `county` VALUES ('2007', 'kamiennogórski');
INSERT INTO `county` VALUES ('2008', 'kłodzki');
INSERT INTO `county` VALUES ('2009', 'legnicki');
INSERT INTO `county` VALUES ('4001', 'aleksandrowski');
INSERT INTO `county` VALUES ('4002', 'brodnicki');
INSERT INTO `county` VALUES ('4003', 'bydgoski');
INSERT INTO `county` VALUES ('4004', 'chełmiński');
INSERT INTO `county` VALUES ('4005', 'golubsko-dobrzyński');
INSERT INTO `county` VALUES ('4006', 'grudziądzki');
INSERT INTO `county` VALUES ('4007', 'inowrocławski');
INSERT INTO `county` VALUES ('4008', 'lipnowski');
INSERT INTO `county` VALUES ('4009', 'mogileński');
INSERT INTO `county` VALUES ('6001', 'bialski');
INSERT INTO `county` VALUES ('6002', 'biłgorajski');
INSERT INTO `county` VALUES ('6003', 'chełmski');
INSERT INTO `county` VALUES ('6004', 'hrubieszowski');
INSERT INTO `county` VALUES ('6005', 'janowski');
INSERT INTO `county` VALUES ('6006', 'krasnostawski');
INSERT INTO `county` VALUES ('6007', 'kraśnicki');
INSERT INTO `county` VALUES ('6008', 'lubartowski');
INSERT INTO `county` VALUES ('6009', 'lubelski');
INSERT INTO `county` VALUES ('8001', 'gorzowski');
INSERT INTO `county` VALUES ('8002', 'krośnieński');
INSERT INTO `county` VALUES ('8003', 'międzyrzecki');
INSERT INTO `county` VALUES ('8004', 'nowosolski');
INSERT INTO `county` VALUES ('8005', 'słubicki');
INSERT INTO `county` VALUES ('8006', 'strzelecko-drezdenecki');
INSERT INTO `county` VALUES ('8007', 'sulęciński');
INSERT INTO `county` VALUES ('8008', 'świebodziński');
INSERT INTO `county` VALUES ('8009', 'zielonogórski');
INSERT INTO `county` VALUES ('10001', 'bełchatowski');
INSERT INTO `county` VALUES ('10002', 'kutnowski');
INSERT INTO `county` VALUES ('10003', 'łaski');
INSERT INTO `county` VALUES ('10004', 'łęczycki');
INSERT INTO `county` VALUES ('10005', 'łowicki');
INSERT INTO `county` VALUES ('10006', 'łódzki wschodni');
INSERT INTO `county` VALUES ('10007', 'opoczyński');
INSERT INTO `county` VALUES ('10008', 'pabianicki');
INSERT INTO `county` VALUES ('10009', 'pajęczański');
INSERT INTO `county` VALUES ('12001', 'bocheński');
INSERT INTO `county` VALUES ('12002', 'brzeski');
INSERT INTO `county` VALUES ('12003', 'chrzanowski');
INSERT INTO `county` VALUES ('12004', 'dąbrowski');
INSERT INTO `county` VALUES ('12005', 'gorlicki');
INSERT INTO `county` VALUES ('12006', 'krakowski');
INSERT INTO `county` VALUES ('12007', 'limanowski');
INSERT INTO `county` VALUES ('12008', 'miechowski');
INSERT INTO `county` VALUES ('12009', 'myślenicki');
INSERT INTO `county` VALUES ('14001', 'białobrzeski');
INSERT INTO `county` VALUES ('14002', 'ciechanowski');
INSERT INTO `county` VALUES ('14003', 'garwoliński');
INSERT INTO `county` VALUES ('14004', 'gostyniński');
INSERT INTO `county` VALUES ('14005', 'grodziski');
INSERT INTO `county` VALUES ('14006', 'grójecki');
INSERT INTO `county` VALUES ('14007', 'kozienicki');
INSERT INTO `county` VALUES ('14008', 'legionowski');
INSERT INTO `county` VALUES ('14009', 'lipski');
INSERT INTO `county` VALUES ('16001', 'brzeski');
INSERT INTO `county` VALUES ('16002', 'głubczycki');
INSERT INTO `county` VALUES ('16003', 'kędzierzyńsko-kozielski');
INSERT INTO `county` VALUES ('16004', 'kluczborski');
INSERT INTO `county` VALUES ('16005', 'krapkowicki');
INSERT INTO `county` VALUES ('16006', 'namysłowski');
INSERT INTO `county` VALUES ('16007', 'nyski');
INSERT INTO `county` VALUES ('16008', 'oleski');
INSERT INTO `county` VALUES ('16009', 'opolski');
INSERT INTO `county` VALUES ('18001', 'bieszczadzki');
INSERT INTO `county` VALUES ('18002', 'brzozowski');
INSERT INTO `county` VALUES ('18003', 'dębicki');
INSERT INTO `county` VALUES ('18004', 'jarosławski');
INSERT INTO `county` VALUES ('18005', 'jasielski');
INSERT INTO `county` VALUES ('18006', 'kolbuszowski');
INSERT INTO `county` VALUES ('18007', 'krośnieński');
INSERT INTO `county` VALUES ('18008', 'leżajski');
INSERT INTO `county` VALUES ('18009', 'lubaczowski');
INSERT INTO `county` VALUES ('20001', 'augustowski');
INSERT INTO `county` VALUES ('20002', 'białostocki');
INSERT INTO `county` VALUES ('20003', 'bielski');
INSERT INTO `county` VALUES ('20004', 'grajewski');
INSERT INTO `county` VALUES ('20005', 'hajnowski');
INSERT INTO `county` VALUES ('20006', 'kolneński');
INSERT INTO `county` VALUES ('20007', 'łomżyński');
INSERT INTO `county` VALUES ('20008', 'moniecki');
INSERT INTO `county` VALUES ('20009', 'sejneński');
INSERT INTO `county` VALUES ('20010', 'lubański');
INSERT INTO `county` VALUES ('20011', 'lubiński');
INSERT INTO `county` VALUES ('20012', 'lwówecki');
INSERT INTO `county` VALUES ('20013', 'milicki');
INSERT INTO `county` VALUES ('20014', 'oleśnicki');
INSERT INTO `county` VALUES ('20015', 'oławski');
INSERT INTO `county` VALUES ('20016', 'polkowicki');
INSERT INTO `county` VALUES ('20017', 'strzeliński');
INSERT INTO `county` VALUES ('20018', 'średzki');
INSERT INTO `county` VALUES ('20019', 'świdnicki');
INSERT INTO `county` VALUES ('20020', 'trzebnicki');
INSERT INTO `county` VALUES ('20021', 'wałbrzyski');
INSERT INTO `county` VALUES ('20022', 'wołowski');
INSERT INTO `county` VALUES ('20023', 'wrocławski');
INSERT INTO `county` VALUES ('20024', 'ząbkowicki');
INSERT INTO `county` VALUES ('20025', 'zgorzelecki');
INSERT INTO `county` VALUES ('20026', 'złotoryjski');
INSERT INTO `county` VALUES ('22001', 'bytowski');
INSERT INTO `county` VALUES ('22002', 'chojnicki');
INSERT INTO `county` VALUES ('22003', 'człuchowski');
INSERT INTO `county` VALUES ('22004', 'gdański');
INSERT INTO `county` VALUES ('22005', 'kartuski');
INSERT INTO `county` VALUES ('22006', 'kościerski');
INSERT INTO `county` VALUES ('22007', 'kwidzyński');
INSERT INTO `county` VALUES ('22008', 'lęborski');
INSERT INTO `county` VALUES ('22009', 'malborski');
INSERT INTO `county` VALUES ('24001', 'będziński');
INSERT INTO `county` VALUES ('24002', 'bielski');
INSERT INTO `county` VALUES ('24003', 'cieszyński');
INSERT INTO `county` VALUES ('24004', 'częstochowski');
INSERT INTO `county` VALUES ('24005', 'gliwicki');
INSERT INTO `county` VALUES ('24006', 'kłobucki');
INSERT INTO `county` VALUES ('24007', 'lubliniecki');
INSERT INTO `county` VALUES ('24008', 'mikołowski');
INSERT INTO `county` VALUES ('24009', 'myszkowski');
INSERT INTO `county` VALUES ('26001', 'buski');
INSERT INTO `county` VALUES ('26002', 'jędrzejowski');
INSERT INTO `county` VALUES ('26003', 'kazimierski');
INSERT INTO `county` VALUES ('26004', 'kielecki');
INSERT INTO `county` VALUES ('26005', 'konecki');
INSERT INTO `county` VALUES ('26006', 'opatowski');
INSERT INTO `county` VALUES ('26007', 'ostrowiecki');
INSERT INTO `county` VALUES ('26008', 'pińczowski');
INSERT INTO `county` VALUES ('26009', 'sandomierski');
INSERT INTO `county` VALUES ('28001', 'bartoszycki');
INSERT INTO `county` VALUES ('28002', 'braniewski');
INSERT INTO `county` VALUES ('28003', 'działdowski');
INSERT INTO `county` VALUES ('28004', 'elbląski');
INSERT INTO `county` VALUES ('28005', 'ełcki');
INSERT INTO `county` VALUES ('28006', 'giżycki');
INSERT INTO `county` VALUES ('28007', 'iławski');
INSERT INTO `county` VALUES ('28008', 'kętrzyński');
INSERT INTO `county` VALUES ('28009', 'lidzbarski');
INSERT INTO `county` VALUES ('30001', 'chodzieski');
INSERT INTO `county` VALUES ('30002', 'czarnkowsko-trzcianecki');
INSERT INTO `county` VALUES ('30003', 'gnieźnieński');
INSERT INTO `county` VALUES ('30004', 'gostyński');
INSERT INTO `county` VALUES ('30005', 'grodziski');
INSERT INTO `county` VALUES ('30006', 'jarociński');
INSERT INTO `county` VALUES ('30007', 'kaliski');
INSERT INTO `county` VALUES ('30008', 'kępiński');
INSERT INTO `county` VALUES ('30009', 'kolski');
INSERT INTO `county` VALUES ('32001', 'białogardzki');
INSERT INTO `county` VALUES ('32002', 'choszczeński');
INSERT INTO `county` VALUES ('32003', 'drawski');
INSERT INTO `county` VALUES ('32004', 'goleniowski');
INSERT INTO `county` VALUES ('32005', 'gryficki');
INSERT INTO `county` VALUES ('32006', 'gryfiński');
INSERT INTO `county` VALUES ('32007', 'kamieński');
INSERT INTO `county` VALUES ('32008', 'kołobrzeski');
INSERT INTO `county` VALUES ('32009', 'koszaliński');
INSERT INTO `county` VALUES ('40010', 'nakielski');
INSERT INTO `county` VALUES ('40011', 'radziejowski');
INSERT INTO `county` VALUES ('40012', 'rypiński');
INSERT INTO `county` VALUES ('40013', 'sępoleński');
INSERT INTO `county` VALUES ('40014', 'świecki');
INSERT INTO `county` VALUES ('40015', 'toruński');
INSERT INTO `county` VALUES ('40016', 'tucholski');
INSERT INTO `county` VALUES ('40017', 'wąbrzeski');
INSERT INTO `county` VALUES ('40018', 'włocławski');
INSERT INTO `county` VALUES ('40019', 'żniński');
INSERT INTO `county` VALUES ('60010', 'łęczyński');
INSERT INTO `county` VALUES ('60011', 'łukowski');
INSERT INTO `county` VALUES ('60012', 'opolski');
INSERT INTO `county` VALUES ('60013', 'parczewski');
INSERT INTO `county` VALUES ('60014', 'puławski');
INSERT INTO `county` VALUES ('60015', 'radzyński');
INSERT INTO `county` VALUES ('60016', 'rycki');
INSERT INTO `county` VALUES ('60017', 'świdnicki');
INSERT INTO `county` VALUES ('60018', 'tomaszowski');
INSERT INTO `county` VALUES ('60019', 'włodawski');
INSERT INTO `county` VALUES ('60020', 'zamojski');
INSERT INTO `county` VALUES ('80010', 'żagański');
INSERT INTO `county` VALUES ('80011', 'żarski');
INSERT INTO `county` VALUES ('80012', 'wschowski');
INSERT INTO `county` VALUES ('100010', 'piotrkowski');
INSERT INTO `county` VALUES ('100011', 'poddębicki');
INSERT INTO `county` VALUES ('100012', 'radomszczański');
INSERT INTO `county` VALUES ('100013', 'rawski');
INSERT INTO `county` VALUES ('100014', 'sieradzki');
INSERT INTO `county` VALUES ('100015', 'skierniewicki');
INSERT INTO `county` VALUES ('100016', 'tomaszowski');
INSERT INTO `county` VALUES ('100017', 'wieluński');
INSERT INTO `county` VALUES ('100018', 'wieruszowski');
INSERT INTO `county` VALUES ('100019', 'zduńskowolski');
INSERT INTO `county` VALUES ('100020', 'zgierski');
INSERT INTO `county` VALUES ('100021', 'brzeziński');
INSERT INTO `county` VALUES ('120010', 'nowosądecki');
INSERT INTO `county` VALUES ('120011', 'nowotarski');
INSERT INTO `county` VALUES ('120012', 'olkuski');
INSERT INTO `county` VALUES ('120013', 'oświęcimski');
INSERT INTO `county` VALUES ('120014', 'proszowicki');
INSERT INTO `county` VALUES ('120015', 'suski');
INSERT INTO `county` VALUES ('120016', 'tarnowski');
INSERT INTO `county` VALUES ('120017', 'tatrzański');
INSERT INTO `county` VALUES ('120018', 'wadowicki');
INSERT INTO `county` VALUES ('120019', 'wielicki');
INSERT INTO `county` VALUES ('140010', 'łosicki');
INSERT INTO `county` VALUES ('140011', 'makowski');
INSERT INTO `county` VALUES ('140012', 'miński');
INSERT INTO `county` VALUES ('140013', 'mławski');
INSERT INTO `county` VALUES ('140014', 'nowodworski');
INSERT INTO `county` VALUES ('140015', 'ostrołęcki');
INSERT INTO `county` VALUES ('140016', 'ostrowski');
INSERT INTO `county` VALUES ('140017', 'otwocki');
INSERT INTO `county` VALUES ('140018', 'piaseczyński');
INSERT INTO `county` VALUES ('140019', 'płocki');
INSERT INTO `county` VALUES ('140020', 'płoński');
INSERT INTO `county` VALUES ('140021', 'pruszkowski');
INSERT INTO `county` VALUES ('140022', 'przasnyski');
INSERT INTO `county` VALUES ('140023', 'przysuski');
INSERT INTO `county` VALUES ('140024', 'pułtuski');
INSERT INTO `county` VALUES ('140025', 'radomski');
INSERT INTO `county` VALUES ('140026', 'siedlecki');
INSERT INTO `county` VALUES ('140027', 'sierpecki');
INSERT INTO `county` VALUES ('140028', 'sochaczewski');
INSERT INTO `county` VALUES ('140029', 'sokołowski');
INSERT INTO `county` VALUES ('140030', 'szydłowiecki');
INSERT INTO `county` VALUES ('140032', 'warszawski zachodni');
INSERT INTO `county` VALUES ('140033', 'węgrowski');
INSERT INTO `county` VALUES ('140034', 'wołomiński');
INSERT INTO `county` VALUES ('140035', 'wyszkowski');
INSERT INTO `county` VALUES ('140036', 'zwoleński');
INSERT INTO `county` VALUES ('140037', 'żuromiński');
INSERT INTO `county` VALUES ('140038', 'żyrardowski');
INSERT INTO `county` VALUES ('160010', 'prudnicki');
INSERT INTO `county` VALUES ('160011', 'strzelecki');
INSERT INTO `county` VALUES ('180010', 'łańcucki');
INSERT INTO `county` VALUES ('180011', 'mielecki');
INSERT INTO `county` VALUES ('180012', 'niżański');
INSERT INTO `county` VALUES ('180013', 'przemyski');
INSERT INTO `county` VALUES ('180014', 'przeworski');
INSERT INTO `county` VALUES ('180015', 'ropczycko-sędziszowski');
INSERT INTO `county` VALUES ('180016', 'rzeszowski');
INSERT INTO `county` VALUES ('180017', 'sanocki');
INSERT INTO `county` VALUES ('180018', 'stalowowolski');
INSERT INTO `county` VALUES ('180019', 'strzyżowski');
INSERT INTO `county` VALUES ('180020', 'tarnobrzeski');
INSERT INTO `county` VALUES ('180021', 'leski');
INSERT INTO `county` VALUES ('200010', 'siemiatycki');
INSERT INTO `county` VALUES ('200011', 'sokólski');
INSERT INTO `county` VALUES ('200012', 'suwalski');
INSERT INTO `county` VALUES ('200013', 'wysokomazowiecki');
INSERT INTO `county` VALUES ('200014', 'zambrowski');
INSERT INTO `county` VALUES ('220010', 'nowodworski');
INSERT INTO `county` VALUES ('220011', 'pucki');
INSERT INTO `county` VALUES ('220012', 'słupski');
INSERT INTO `county` VALUES ('220013', 'starogardzki');
INSERT INTO `county` VALUES ('220014', 'tczewski');
INSERT INTO `county` VALUES ('220015', 'wejherowski');
INSERT INTO `county` VALUES ('220016', 'sztumski');
INSERT INTO `county` VALUES ('240010', 'pszczyński');
INSERT INTO `county` VALUES ('240011', 'raciborski');
INSERT INTO `county` VALUES ('240012', 'rybnicki');
INSERT INTO `county` VALUES ('240013', 'tarnogórski');
INSERT INTO `county` VALUES ('240014', 'bieruńsko-lędziński');
INSERT INTO `county` VALUES ('240015', 'wodzisławski');
INSERT INTO `county` VALUES ('240016', 'zawierciański');
INSERT INTO `county` VALUES ('240017', 'żywiecki');
INSERT INTO `county` VALUES ('260010', 'skarżyski');
INSERT INTO `county` VALUES ('260011', 'starachowicki');
INSERT INTO `county` VALUES ('260012', 'staszowski');
INSERT INTO `county` VALUES ('260013', 'włoszczowski');
INSERT INTO `county` VALUES ('280010', 'mrągowski');
INSERT INTO `county` VALUES ('280011', 'nidzicki');
INSERT INTO `county` VALUES ('280012', 'nowomiejski');
INSERT INTO `county` VALUES ('280013', 'olecki');
INSERT INTO `county` VALUES ('280014', 'olsztyński');
INSERT INTO `county` VALUES ('280015', 'ostródzki');
INSERT INTO `county` VALUES ('280016', 'piski');
INSERT INTO `county` VALUES ('280017', 'szczycieński');
INSERT INTO `county` VALUES ('280018', 'gołdapski');
INSERT INTO `county` VALUES ('280019', 'węgorzewski');
INSERT INTO `county` VALUES ('300010', 'koniński');
INSERT INTO `county` VALUES ('300011', 'kościański');
INSERT INTO `county` VALUES ('300012', 'krotoszyński');
INSERT INTO `county` VALUES ('300013', 'leszczyński');
INSERT INTO `county` VALUES ('300014', 'międzychodzki');
INSERT INTO `county` VALUES ('300015', 'nowotomyski');
INSERT INTO `county` VALUES ('300016', 'obornicki');
INSERT INTO `county` VALUES ('300017', 'ostrowski');
INSERT INTO `county` VALUES ('300018', 'ostrzeszowski');
INSERT INTO `county` VALUES ('300019', 'pilski');
INSERT INTO `county` VALUES ('300020', 'pleszewski');
INSERT INTO `county` VALUES ('300021', 'poznański');
INSERT INTO `county` VALUES ('300022', 'rawicki');
INSERT INTO `county` VALUES ('300023', 'słupecki');
INSERT INTO `county` VALUES ('300024', 'szamotulski');
INSERT INTO `county` VALUES ('300025', 'średzki');
INSERT INTO `county` VALUES ('300026', 'śremski');
INSERT INTO `county` VALUES ('300027', 'turecki');
INSERT INTO `county` VALUES ('300028', 'wągrowiecki');
INSERT INTO `county` VALUES ('300029', 'wolsztyński');
INSERT INTO `county` VALUES ('300030', 'wrzesiński');
INSERT INTO `county` VALUES ('300031', 'złotowski');
INSERT INTO `county` VALUES ('320010', 'myśliborski');
INSERT INTO `county` VALUES ('320011', 'policki');
INSERT INTO `county` VALUES ('320012', 'pyrzycki');
INSERT INTO `county` VALUES ('320013', 'sławieński');
INSERT INTO `county` VALUES ('320014', 'stargardzki');
INSERT INTO `county` VALUES ('320015', 'szczecinecki');
INSERT INTO `county` VALUES ('320016', 'świdwiński');
INSERT INTO `county` VALUES ('320017', 'wałecki');
INSERT INTO `county` VALUES ('320018', 'łobeski');

-- ----------------------------
-- Table structure for `gallery`
-- ----------------------------
DROP TABLE IF EXISTS `gallery`;
CREATE TABLE `gallery` (
  `id_ad_gallery` int(10) unsigned NOT NULL,
  `id_photo_gallery` int(10) unsigned NOT NULL,
  KEY `id_ad_gallery_FK` (`id_ad_gallery`),
  KEY `id_photo_gallery_FK` (`id_photo_gallery`),
  CONSTRAINT `id_photo_gallery_FK` FOREIGN KEY (`id_photo_gallery`) REFERENCES `photo` (`id_photo`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gallery
-- ----------------------------

-- ----------------------------
-- Table structure for `gender`
-- ----------------------------
DROP TABLE IF EXISTS `gender`;
CREATE TABLE `gender` (
  `id_gender` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name_gender` varchar(50) NOT NULL,
  PRIMARY KEY (`id_gender`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gender
-- ----------------------------
INSERT INTO `gender` VALUES ('1', 'Mężczyzna');
INSERT INTO `gender` VALUES ('2', 'Kobieta');

-- ----------------------------
-- Table structure for `location`
-- ----------------------------
DROP TABLE IF EXISTS `location`;
CREATE TABLE `location` (
  `id_location` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name_location` varchar(50) NOT NULL,
  `id_voivodeship_location` int(10) unsigned NOT NULL,
  `id_county_location` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_location`),
  KEY `id_voivodeship_location` (`id_voivodeship_location`),
  KEY `id_county_location` (`id_county_location`),
  CONSTRAINT `location_ibfk_1` FOREIGN KEY (`id_voivodeship_location`) REFERENCES `voivodeship` (`id_voivodeship`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `location_ibfk_2` FOREIGN KEY (`id_county_location`) REFERENCES `county` (`id_county`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=920 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of location
-- ----------------------------
INSERT INTO `location` VALUES ('1', 'Osieczna', '30', '300013');
INSERT INTO `location` VALUES ('2', 'Sulejów', '10', '100010');
INSERT INTO `location` VALUES ('3', 'Rzepin', '8', '8005');
INSERT INTO `location` VALUES ('4', 'Ząbkowice Śląskie', '2', '20024');
INSERT INTO `location` VALUES ('5', 'Szczytna', '2', '2008');
INSERT INTO `location` VALUES ('6', 'Nałęczów', '6', '60014');
INSERT INTO `location` VALUES ('7', 'Zdzieszowice', '16', '16005');
INSERT INTO `location` VALUES ('8', 'Oława', '2', '20015');
INSERT INTO `location` VALUES ('9', 'Poniatowa', '6', '60012');
INSERT INTO `location` VALUES ('10', 'Boguchwała', '18', '180016');
INSERT INTO `location` VALUES ('11', 'Drawno', '32', '32002');
INSERT INTO `location` VALUES ('12', 'Chęciny', '26', '26004');
INSERT INTO `location` VALUES ('13', 'Wołów', '2', '20022');
INSERT INTO `location` VALUES ('14', 'Lubin', '2', '20011');
INSERT INTO `location` VALUES ('15', 'Świnoujście', '32', '320063');
INSERT INTO `location` VALUES ('16', 'Pasłęk', '28', '28004');
INSERT INTO `location` VALUES ('17', 'Dobiegniew', '8', '8006');
INSERT INTO `location` VALUES ('18', 'Sosnowiec', '24', '240075');
INSERT INTO `location` VALUES ('19', 'Marki', '14', '140034');
INSERT INTO `location` VALUES ('20', 'Czarnków', '30', '30002');
INSERT INTO `location` VALUES ('21', 'Inowrocław', '4', '4007');
INSERT INTO `location` VALUES ('22', 'Wolbórz', '10', '100010');
INSERT INTO `location` VALUES ('23', 'Czerwionka-Leszczyny', '24', '240012');
INSERT INTO `location` VALUES ('24', 'Radzyń Chełmiński', '4', '4006');
INSERT INTO `location` VALUES ('25', 'Mrozy', '14', '140012');
INSERT INTO `location` VALUES ('26', 'Pleszew', '30', '300020');
INSERT INTO `location` VALUES ('27', 'Jaworzno', '24', '240068');
INSERT INTO `location` VALUES ('28', 'Olszyna', '2', '20010');
INSERT INTO `location` VALUES ('29', 'Bieżuń', '14', '140037');
INSERT INTO `location` VALUES ('30', 'Trzemeszno', '30', '30003');
INSERT INTO `location` VALUES ('31', 'Lwówek', '30', '300015');
INSERT INTO `location` VALUES ('32', 'Dąbrowa Górnicza', '24', '240065');
INSERT INTO `location` VALUES ('33', 'Brzesko', '12', '12002');
INSERT INTO `location` VALUES ('34', 'Przedecz', '30', '30009');
INSERT INTO `location` VALUES ('35', 'Drzewica', '10', '10007');
INSERT INTO `location` VALUES ('36', 'Szprotawa', '8', '80010');
INSERT INTO `location` VALUES ('37', 'Dębica', '18', '18003');
INSERT INTO `location` VALUES ('38', 'Strzelce Krajeńskie', '8', '8006');
INSERT INTO `location` VALUES ('39', 'Krzywiń', '30', '300011');
INSERT INTO `location` VALUES ('40', 'Barczewo', '28', '280014');
INSERT INTO `location` VALUES ('41', 'Mińsk Mazowiecki', '14', '140012');
INSERT INTO `location` VALUES ('42', 'Puszczykowo', '30', '300021');
INSERT INTO `location` VALUES ('43', 'Jedlina-Zdrój', '2', '20021');
INSERT INTO `location` VALUES ('44', 'Piastów', '14', '140021');
INSERT INTO `location` VALUES ('45', 'Bielsko-Biała', '24', '240061');
INSERT INTO `location` VALUES ('46', 'Stoczek Łukowski', '6', '60011');
INSERT INTO `location` VALUES ('47', 'Śrem', '30', '300026');
INSERT INTO `location` VALUES ('48', 'Kowary', '2', '2006');
INSERT INTO `location` VALUES ('49', 'Płoty', '32', '32005');
INSERT INTO `location` VALUES ('50', 'Złotów', '30', '300031');
INSERT INTO `location` VALUES ('51', 'Golub-Dobrzyń', '4', '4005');
INSERT INTO `location` VALUES ('52', 'Kraśnik', '6', '6007');
INSERT INTO `location` VALUES ('53', 'Tychy', '24', '240077');
INSERT INTO `location` VALUES ('54', 'Kęty', '12', '120013');
INSERT INTO `location` VALUES ('55', 'Złoty Stok', '2', '20024');
INSERT INTO `location` VALUES ('56', 'Kielce', '26', '260061');
INSERT INTO `location` VALUES ('57', 'Brześć Kujawski', '4', '40018');
INSERT INTO `location` VALUES ('58', 'Szamocin', '30', '30001');
INSERT INTO `location` VALUES ('59', 'Łosice', '14', '140010');
INSERT INTO `location` VALUES ('60', 'Alwernia', '12', '12003');
INSERT INTO `location` VALUES ('61', 'Sieniawa', '18', '180014');
INSERT INTO `location` VALUES ('62', 'Oborniki', '30', '300016');
INSERT INTO `location` VALUES ('63', 'Koźmin Wielkopolski', '30', '300012');
INSERT INTO `location` VALUES ('64', 'Cieszyn', '24', '24003');
INSERT INTO `location` VALUES ('65', 'Mirsk', '2', '20012');
INSERT INTO `location` VALUES ('66', 'Książ Wielkopolski', '30', '300026');
INSERT INTO `location` VALUES ('67', 'Piwniczna-Zdrój', '12', '120010');
INSERT INTO `location` VALUES ('68', 'Ustka', '22', '220012');
INSERT INTO `location` VALUES ('69', 'Rejowiec Fabryczny', '6', '6003');
INSERT INTO `location` VALUES ('70', 'Stepnica', '32', '32004');
INSERT INTO `location` VALUES ('71', 'Dobrzyca', '30', '300020');
INSERT INTO `location` VALUES ('72', 'Piaseczno', '14', '140018');
INSERT INTO `location` VALUES ('73', 'Lipsk', '20', '20001');
INSERT INTO `location` VALUES ('74', 'Kruszwica', '4', '4007');
INSERT INTO `location` VALUES ('75', 'Kępno', '30', '30008');
INSERT INTO `location` VALUES ('76', 'Czechowice-Dziedzice', '24', '24002');
INSERT INTO `location` VALUES ('77', 'Miastko', '22', '22001');
INSERT INTO `location` VALUES ('78', 'Ostrołęka', '14', '140061');
INSERT INTO `location` VALUES ('79', 'Poznań', '30', '300064');
INSERT INTO `location` VALUES ('80', 'Elbląg', '28', '280061');
INSERT INTO `location` VALUES ('81', 'Kozienice', '14', '14007');
INSERT INTO `location` VALUES ('82', 'Chełmża', '4', '40015');
INSERT INTO `location` VALUES ('83', 'Jedwabne', '20', '20007');
INSERT INTO `location` VALUES ('84', 'Górzno', '4', '4002');
INSERT INTO `location` VALUES ('85', 'Iłża', '14', '140025');
INSERT INTO `location` VALUES ('86', 'Strzelin', '2', '20017');
INSERT INTO `location` VALUES ('87', 'Złotoryja', '2', '20026');
INSERT INTO `location` VALUES ('88', 'Dębno', '32', '320010');
INSERT INTO `location` VALUES ('89', 'Mikołów', '24', '24008');
INSERT INTO `location` VALUES ('90', 'Szczekociny', '24', '240016');
INSERT INTO `location` VALUES ('91', 'Lidzbark', '28', '28003');
INSERT INTO `location` VALUES ('92', 'Susz', '28', '28007');
INSERT INTO `location` VALUES ('93', 'Witkowo', '30', '30003');
INSERT INTO `location` VALUES ('94', 'Biała Piska', '28', '280016');
INSERT INTO `location` VALUES ('95', 'Radziejów', '4', '40011');
INSERT INTO `location` VALUES ('96', 'Myślenice', '12', '12009');
INSERT INTO `location` VALUES ('97', 'Poniec', '30', '30004');
INSERT INTO `location` VALUES ('98', 'Krosno Odrzańskie', '8', '8002');
INSERT INTO `location` VALUES ('99', 'Myślibórz', '32', '320010');
INSERT INTO `location` VALUES ('100', 'Łask', '10', '10003');
INSERT INTO `location` VALUES ('101', 'Bolków', '2', '2005');
INSERT INTO `location` VALUES ('102', 'Dobczyce', '12', '12009');
INSERT INTO `location` VALUES ('103', 'Zbąszyń', '30', '300015');
INSERT INTO `location` VALUES ('104', 'Rudnik nad Sanem', '18', '180012');
INSERT INTO `location` VALUES ('105', 'Bartoszyce', '28', '28001');
INSERT INTO `location` VALUES ('106', 'Gostynin', '14', '14004');
INSERT INTO `location` VALUES ('107', 'Głogów Małopolski', '18', '180016');
INSERT INTO `location` VALUES ('108', 'Żnin', '4', '40019');
INSERT INTO `location` VALUES ('109', 'Ożarów Mazowiecki', '14', '140032');
INSERT INTO `location` VALUES ('110', 'Barlinek', '32', '320010');
INSERT INTO `location` VALUES ('111', 'Strumień', '24', '24003');
INSERT INTO `location` VALUES ('112', 'Oświęcim', '12', '120013');
INSERT INTO `location` VALUES ('113', 'Lubań', '2', '20010');
INSERT INTO `location` VALUES ('114', 'Mieroszów', '2', '20021');
INSERT INTO `location` VALUES ('115', 'Lubień Kujawski', '4', '40018');
INSERT INTO `location` VALUES ('116', 'Skała', '12', '12006');
INSERT INTO `location` VALUES ('117', 'Dąbie', '30', '30009');
INSERT INTO `location` VALUES ('118', 'Brodnica', '4', '4002');
INSERT INTO `location` VALUES ('119', 'Trzcianka', '30', '30002');
INSERT INTO `location` VALUES ('120', 'Dobrzyń nad Wisłą', '4', '4008');
INSERT INTO `location` VALUES ('121', 'Nowa Ruda', '2', '2008');
INSERT INTO `location` VALUES ('122', 'Raszków', '30', '300017');
INSERT INTO `location` VALUES ('123', 'Grabów nad Prosną', '30', '300018');
INSERT INTO `location` VALUES ('124', 'Nowy Dwór Mazowiecki', '14', '140014');
INSERT INTO `location` VALUES ('125', 'Konstantynów Łódzki', '10', '10008');
INSERT INTO `location` VALUES ('126', 'Strzelno', '4', '4009');
INSERT INTO `location` VALUES ('127', 'Zwoleń', '14', '140036');
INSERT INTO `location` VALUES ('128', 'Janikowo', '4', '4007');
INSERT INTO `location` VALUES ('129', 'Kazimierza Wielka', '26', '26003');
INSERT INTO `location` VALUES ('130', 'Jędrzejów', '26', '26002');
INSERT INTO `location` VALUES ('131', 'Nysa', '16', '16007');
INSERT INTO `location` VALUES ('132', 'Kalisz Pomorski', '32', '32003');
INSERT INTO `location` VALUES ('133', 'Rakoniewice', '30', '30005');
INSERT INTO `location` VALUES ('134', 'Stalowa Wola', '18', '180018');
INSERT INTO `location` VALUES ('135', 'Lubawka', '2', '2007');
INSERT INTO `location` VALUES ('136', 'Pruszcz Gdański', '22', '22004');
INSERT INTO `location` VALUES ('137', 'Kalisz', '30', '300061');
INSERT INTO `location` VALUES ('138', 'Torzym', '8', '8007');
INSERT INTO `location` VALUES ('139', 'Pniewy', '30', '300024');
INSERT INTO `location` VALUES ('140', 'Wąbrzeźno', '4', '40017');
INSERT INTO `location` VALUES ('141', 'Ozimek', '16', '16009');
INSERT INTO `location` VALUES ('142', 'Władysławowo', '22', '220011');
INSERT INTO `location` VALUES ('143', 'Olesno', '16', '16008');
INSERT INTO `location` VALUES ('144', 'Wyśmierzyce', '14', '14001');
INSERT INTO `location` VALUES ('145', 'Skępe', '4', '4008');
INSERT INTO `location` VALUES ('146', 'Szczebrzeszyn', '6', '60020');
INSERT INTO `location` VALUES ('147', 'Wilamowice', '24', '24002');
INSERT INTO `location` VALUES ('148', 'Sieraków', '30', '300014');
INSERT INTO `location` VALUES ('149', 'Błonie', '14', '140032');
INSERT INTO `location` VALUES ('150', 'Nowe Miasto Lubawskie', '28', '280012');
INSERT INTO `location` VALUES ('151', 'Polanów', '32', '32009');
INSERT INTO `location` VALUES ('152', 'Stawiski', '20', '20006');
INSERT INTO `location` VALUES ('153', 'Lubraniec', '4', '40018');
INSERT INTO `location` VALUES ('154', 'Prusice', '2', '20020');
INSERT INTO `location` VALUES ('155', 'Mońki', '20', '20008');
INSERT INTO `location` VALUES ('156', 'Tuliszków', '30', '300027');
INSERT INTO `location` VALUES ('157', 'Luboń', '30', '300021');
INSERT INTO `location` VALUES ('158', 'Świdnica', '2', '20019');
INSERT INTO `location` VALUES ('159', 'Nowe Skalmierzyce', '30', '300017');
INSERT INTO `location` VALUES ('160', 'Piła', '30', '300019');
INSERT INTO `location` VALUES ('161', 'Margonin', '30', '30001');
INSERT INTO `location` VALUES ('162', 'Knurów', '24', '24005');
INSERT INTO `location` VALUES ('163', 'Osiek', '26', '260012');
INSERT INTO `location` VALUES ('164', 'Łobżenica', '30', '300019');
INSERT INTO `location` VALUES ('165', 'Pieniężno', '28', '28002');
INSERT INTO `location` VALUES ('166', 'Pakość', '4', '4007');
INSERT INTO `location` VALUES ('167', 'Pruszków', '14', '140021');
INSERT INTO `location` VALUES ('168', 'Brzozów', '18', '18002');
INSERT INTO `location` VALUES ('169', 'Lubniewice', '8', '8007');
INSERT INTO `location` VALUES ('170', 'Kluczbork', '16', '16004');
INSERT INTO `location` VALUES ('171', 'Debrzno', '22', '22003');
INSERT INTO `location` VALUES ('172', 'Nowogrodziec', '2', '2001');
INSERT INTO `location` VALUES ('173', 'Wołczyn', '16', '16004');
INSERT INTO `location` VALUES ('174', 'Korfantów', '16', '16007');
INSERT INTO `location` VALUES ('175', 'Wieliczka', '12', '120019');
INSERT INTO `location` VALUES ('176', 'Borne Sulinowo', '32', '320015');
INSERT INTO `location` VALUES ('177', 'Chojnów', '2', '2009');
INSERT INTO `location` VALUES ('178', 'Lipsko', '14', '14009');
INSERT INTO `location` VALUES ('179', 'Cedynia', '32', '32006');
INSERT INTO `location` VALUES ('180', 'Toszek', '24', '24005');
INSERT INTO `location` VALUES ('181', 'Murowana Goślina', '30', '300021');
INSERT INTO `location` VALUES ('182', 'Radymno', '18', '18004');
INSERT INTO `location` VALUES ('183', 'Dobrodzień', '16', '16008');
INSERT INTO `location` VALUES ('184', 'Jaworzyna Śląska', '2', '20019');
INSERT INTO `location` VALUES ('185', 'Kolbuszowa', '18', '18006');
INSERT INTO `location` VALUES ('186', 'Kalwaria Zebrzydowska', '12', '120018');
INSERT INTO `location` VALUES ('187', 'Borek Wielkopolski', '30', '30004');
INSERT INTO `location` VALUES ('188', 'Węgrów', '14', '140033');
INSERT INTO `location` VALUES ('189', 'Stargard', '32', '320014');
INSERT INTO `location` VALUES ('190', 'Sulejówek', '14', '140012');
INSERT INTO `location` VALUES ('191', 'Iłowa', '8', '80010');
INSERT INTO `location` VALUES ('192', 'Ińsko', '32', '320014');
INSERT INTO `location` VALUES ('193', 'Szczawno-Zdrój', '2', '20021');
INSERT INTO `location` VALUES ('194', 'Kuźnia Raciborska', '24', '240011');
INSERT INTO `location` VALUES ('195', 'Supraśl', '20', '20002');
INSERT INTO `location` VALUES ('196', 'Głowno', '10', '100020');
INSERT INTO `location` VALUES ('197', 'Jeziorany', '28', '280014');
INSERT INTO `location` VALUES ('198', 'Łaszczów', '6', '60018');
INSERT INTO `location` VALUES ('199', 'Miłomłyn', '28', '280015');
INSERT INTO `location` VALUES ('200', 'Będzin', '24', '24001');
INSERT INTO `location` VALUES ('201', 'Zielonka', '14', '140034');
INSERT INTO `location` VALUES ('202', 'Siemianowice Śląskie', '24', '240074');
INSERT INTO `location` VALUES ('203', 'Czchów', '12', '12002');
INSERT INTO `location` VALUES ('204', 'Kolonowskie', '16', '160011');
INSERT INTO `location` VALUES ('205', 'Łęczna', '6', '60010');
INSERT INTO `location` VALUES ('206', 'Pyskowice', '24', '24005');
INSERT INTO `location` VALUES ('207', 'Lądek-Zdrój', '2', '2008');
INSERT INTO `location` VALUES ('208', 'Lwówek Śląski', '2', '20012');
INSERT INTO `location` VALUES ('209', 'Mikołajki', '28', '280010');
INSERT INTO `location` VALUES ('210', 'Praszka', '16', '16008');
INSERT INTO `location` VALUES ('211', 'Nowe', '4', '40014');
INSERT INTO `location` VALUES ('212', 'Szczytno', '28', '280017');
INSERT INTO `location` VALUES ('213', 'Gniew', '22', '220014');
INSERT INTO `location` VALUES ('214', 'Starogard Gdański', '22', '220013');
INSERT INTO `location` VALUES ('215', 'Gorzów Wielkopolski', '8', '80061');
INSERT INTO `location` VALUES ('216', 'Świebodzice', '2', '20019');
INSERT INTO `location` VALUES ('217', 'Pobiedziska', '30', '300021');
INSERT INTO `location` VALUES ('218', 'Toruń', '4', '40063');
INSERT INTO `location` VALUES ('219', 'Brok', '14', '140016');
INSERT INTO `location` VALUES ('220', 'Strzegom', '2', '20019');
INSERT INTO `location` VALUES ('221', 'Ostrowiec Świętokrzyski', '26', '26007');
INSERT INTO `location` VALUES ('222', 'Bytom', '24', '240062');
INSERT INTO `location` VALUES ('223', 'Lipno', '4', '4008');
INSERT INTO `location` VALUES ('224', 'Kobylin', '30', '300012');
INSERT INTO `location` VALUES ('225', 'Siedlce', '14', '140064');
INSERT INTO `location` VALUES ('226', 'Gostyń', '30', '30004');
INSERT INTO `location` VALUES ('227', 'Zelów', '10', '10001');
INSERT INTO `location` VALUES ('228', 'Słupca', '30', '300023');
INSERT INTO `location` VALUES ('229', 'Kórnik', '30', '300021');
INSERT INTO `location` VALUES ('230', 'Opole Lubelskie', '6', '60012');
INSERT INTO `location` VALUES ('231', 'Pilawa', '14', '14003');
INSERT INTO `location` VALUES ('232', 'Zambrów', '20', '200014');
INSERT INTO `location` VALUES ('233', 'Wieleń', '30', '30002');
INSERT INTO `location` VALUES ('234', 'Milicz', '2', '20013');
INSERT INTO `location` VALUES ('235', 'Szamotuły', '30', '300024');
INSERT INTO `location` VALUES ('236', 'Wągrowiec', '30', '300028');
INSERT INTO `location` VALUES ('237', 'Sokółka', '20', '200011');
INSERT INTO `location` VALUES ('238', 'Kamień Pomorski', '32', '32007');
INSERT INTO `location` VALUES ('239', 'Kamieńsk', '10', '100012');
INSERT INTO `location` VALUES ('240', 'Mordy', '14', '140026');
INSERT INTO `location` VALUES ('241', 'Sulmierzyce', '30', '300012');
INSERT INTO `location` VALUES ('242', 'Szklarska Poręba', '2', '2006');
INSERT INTO `location` VALUES ('243', 'Moryń', '32', '32006');
INSERT INTO `location` VALUES ('244', 'Krapkowice', '16', '16005');
INSERT INTO `location` VALUES ('245', 'Uniejów', '10', '100011');
INSERT INTO `location` VALUES ('246', 'Zgorzelec', '2', '20025');
INSERT INTO `location` VALUES ('247', 'Krynica Morska', '22', '220010');
INSERT INTO `location` VALUES ('248', 'Tczew', '22', '220014');
INSERT INTO `location` VALUES ('249', 'Pilica', '24', '240016');
INSERT INTO `location` VALUES ('250', 'Mława', '14', '140013');
INSERT INTO `location` VALUES ('251', 'Żarów', '2', '20019');
INSERT INTO `location` VALUES ('252', 'Nowy Dwór Gdański', '22', '220010');
INSERT INTO `location` VALUES ('253', 'Łeba', '22', '22008');
INSERT INTO `location` VALUES ('254', 'Prochowice', '2', '2009');
INSERT INTO `location` VALUES ('255', 'Jutrosin', '30', '300022');
INSERT INTO `location` VALUES ('256', 'Michałowo', '20', '20002');
INSERT INTO `location` VALUES ('257', 'Szubin', '4', '40010');
INSERT INTO `location` VALUES ('258', 'Augustów', '20', '20001');
INSERT INTO `location` VALUES ('259', 'Wisła', '24', '24003');
INSERT INTO `location` VALUES ('260', 'Koszalin', '32', '320061');
INSERT INTO `location` VALUES ('261', 'Kudowa-Zdrój', '2', '2008');
INSERT INTO `location` VALUES ('262', 'Chodecz', '4', '40018');
INSERT INTO `location` VALUES ('263', 'Leśnica', '16', '160011');
INSERT INTO `location` VALUES ('264', 'Międzylesie', '2', '2008');
INSERT INTO `location` VALUES ('265', 'Nowy Tomyśl', '30', '300015');
INSERT INTO `location` VALUES ('266', 'Krzanowice', '24', '240011');
INSERT INTO `location` VALUES ('267', 'Pionki', '14', '140025');
INSERT INTO `location` VALUES ('268', 'Radzymin', '14', '140034');
INSERT INTO `location` VALUES ('269', 'Skórcz', '22', '220013');
INSERT INTO `location` VALUES ('270', 'Jelenia Góra', '2', '20061');
INSERT INTO `location` VALUES ('271', 'Chełmek', '12', '120013');
INSERT INTO `location` VALUES ('272', 'Piława Górna', '2', '2002');
INSERT INTO `location` VALUES ('273', 'Mosina', '30', '300021');
INSERT INTO `location` VALUES ('274', 'Bieruń', '24', '240014');
INSERT INTO `location` VALUES ('275', 'Wałbrzych', '2', '20065');
INSERT INTO `location` VALUES ('276', 'Sejny', '20', '20009');
INSERT INTO `location` VALUES ('277', 'Daleszyce', '26', '26004');
INSERT INTO `location` VALUES ('278', 'Choszczno', '32', '32002');
INSERT INTO `location` VALUES ('279', 'Tarnowskie Góry', '24', '240013');
INSERT INTO `location` VALUES ('280', 'Koło', '30', '30009');
INSERT INTO `location` VALUES ('281', 'Baranów Sandomierski', '18', '180020');
INSERT INTO `location` VALUES ('282', 'Wolsztyn', '30', '300029');
INSERT INTO `location` VALUES ('283', 'Błaszki', '10', '100014');
INSERT INTO `location` VALUES ('284', 'Piaski', '6', '60017');
INSERT INTO `location` VALUES ('285', 'Ostroróg', '30', '300024');
INSERT INTO `location` VALUES ('286', 'Wyszków', '14', '140035');
INSERT INTO `location` VALUES ('287', 'Biały Bór', '32', '320015');
INSERT INTO `location` VALUES ('288', 'Tykocin', '20', '20002');
INSERT INTO `location` VALUES ('289', 'Pińczów', '26', '26008');
INSERT INTO `location` VALUES ('290', 'Sandomierz', '26', '26009');
INSERT INTO `location` VALUES ('291', 'Czersk', '22', '22002');
INSERT INTO `location` VALUES ('292', 'Polanica-Zdrój', '2', '2008');
INSERT INTO `location` VALUES ('293', 'Skawina', '12', '12006');
INSERT INTO `location` VALUES ('294', 'Zakliczyn', '12', '120016');
INSERT INTO `location` VALUES ('295', 'Wąsosz', '2', '2004');
INSERT INTO `location` VALUES ('296', 'Lędziny', '24', '240014');
INSERT INTO `location` VALUES ('297', 'Ostrzeszów', '30', '300018');
INSERT INTO `location` VALUES ('298', 'Kolno', '20', '20006');
INSERT INTO `location` VALUES ('299', 'Wielichowo', '30', '30005');
INSERT INTO `location` VALUES ('300', 'Biskupiec', '28', '280014');
INSERT INTO `location` VALUES ('301', 'Baborów', '16', '16002');
INSERT INTO `location` VALUES ('302', 'Łęknica', '8', '80011');
INSERT INTO `location` VALUES ('303', 'Legionowo', '14', '14008');
INSERT INTO `location` VALUES ('304', 'Korsze', '28', '28008');
INSERT INTO `location` VALUES ('305', 'Szczyrk', '24', '24002');
INSERT INTO `location` VALUES ('306', 'Gdańsk', '22', '220061');
INSERT INTO `location` VALUES ('307', 'Ostrów Wielkopolski', '30', '300017');
INSERT INTO `location` VALUES ('308', 'Końskie', '26', '26005');
INSERT INTO `location` VALUES ('309', 'Ośno Lubuskie', '8', '8005');
INSERT INTO `location` VALUES ('310', 'Gryfów Śląski', '2', '20012');
INSERT INTO `location` VALUES ('311', 'Gorzów Śląski', '16', '16008');
INSERT INTO `location` VALUES ('312', 'Węgorzewo', '28', '280019');
INSERT INTO `location` VALUES ('313', 'Stawiszyn', '30', '30007');
INSERT INTO `location` VALUES ('314', 'Grajewo', '20', '20004');
INSERT INTO `location` VALUES ('315', 'Węgorzyno', '32', '320018');
INSERT INTO `location` VALUES ('316', 'Okonek', '30', '300031');
INSERT INTO `location` VALUES ('317', 'Włocławek', '4', '40064');
INSERT INTO `location` VALUES ('318', 'Brwinów', '14', '140021');
INSERT INTO `location` VALUES ('319', 'Niemodlin', '16', '16009');
INSERT INTO `location` VALUES ('320', 'Sędziszów', '26', '26002');
INSERT INTO `location` VALUES ('321', 'Kamienna Góra', '2', '2007');
INSERT INTO `location` VALUES ('322', 'Koluszki', '10', '10006');
INSERT INTO `location` VALUES ('323', 'Bolesławiec', '2', '2001');
INSERT INTO `location` VALUES ('324', 'Ełk', '28', '28005');
INSERT INTO `location` VALUES ('325', 'Opalenica', '30', '300015');
INSERT INTO `location` VALUES ('326', 'Rychwał', '30', '300010');
INSERT INTO `location` VALUES ('327', 'Krynica-Zdrój', '12', '120010');
INSERT INTO `location` VALUES ('328', 'Piechowice', '2', '2006');
INSERT INTO `location` VALUES ('329', 'Rzgów', '10', '10006');
INSERT INTO `location` VALUES ('330', 'Woźniki', '24', '24007');
INSERT INTO `location` VALUES ('331', 'Trzebnica', '2', '20020');
INSERT INTO `location` VALUES ('332', 'Jabłonowo Pomorskie', '4', '4002');
INSERT INTO `location` VALUES ('333', 'Strzelce Opolskie', '16', '160011');
INSERT INTO `location` VALUES ('334', 'Koziegłowy', '24', '24009');
INSERT INTO `location` VALUES ('335', 'Chojna', '32', '32006');
INSERT INTO `location` VALUES ('336', 'Siemiatycze', '20', '200010');
INSERT INTO `location` VALUES ('337', 'Szadek', '10', '100019');
INSERT INTO `location` VALUES ('338', 'Łomża', '20', '200062');
INSERT INTO `location` VALUES ('339', 'Goleniów', '32', '32004');
INSERT INTO `location` VALUES ('340', 'Wolbrom', '12', '120012');
INSERT INTO `location` VALUES ('341', 'Sompolno', '30', '300010');
INSERT INTO `location` VALUES ('342', 'Orzysz', '28', '280016');
INSERT INTO `location` VALUES ('343', 'Nowe Warpno', '32', '320011');
INSERT INTO `location` VALUES ('344', 'Przemyśl', '18', '180062');
INSERT INTO `location` VALUES ('345', 'Knyszyn', '20', '20008');
INSERT INTO `location` VALUES ('346', 'Trzebiatów', '32', '32005');
INSERT INTO `location` VALUES ('347', 'Lidzbark Warmiński', '28', '28009');
INSERT INTO `location` VALUES ('348', 'Braniewo', '28', '28002');
INSERT INTO `location` VALUES ('349', 'Myszków', '24', '24009');
INSERT INTO `location` VALUES ('350', 'Czarna Woda', '22', '220013');
INSERT INTO `location` VALUES ('351', 'Radzionków', '24', '240013');
INSERT INTO `location` VALUES ('352', 'Mogielnica', '14', '14006');
INSERT INTO `location` VALUES ('353', 'Leżajsk', '18', '18008');
INSERT INTO `location` VALUES ('354', 'Września', '30', '300030');
INSERT INTO `location` VALUES ('355', 'Niemcza', '2', '2002');
INSERT INTO `location` VALUES ('356', 'Ciężkowice', '12', '120016');
INSERT INTO `location` VALUES ('357', 'Kleszczele', '20', '20005');
INSERT INTO `location` VALUES ('358', 'Obrzycko', '30', '300024');
INSERT INTO `location` VALUES ('359', 'Żywiec', '24', '240017');
INSERT INTO `location` VALUES ('360', 'Grodzisk Wielkopolski', '30', '30005');
INSERT INTO `location` VALUES ('361', 'Barcin', '4', '40019');
INSERT INTO `location` VALUES ('362', 'Kutno', '10', '10002');
INSERT INTO `location` VALUES ('363', 'Hajnówka', '20', '20005');
INSERT INTO `location` VALUES ('364', 'Chorzele', '14', '140022');
INSERT INTO `location` VALUES ('365', 'Solec Kujawski', '4', '4003');
INSERT INTO `location` VALUES ('366', 'Ciechocinek', '4', '4001');
INSERT INTO `location` VALUES ('367', 'Wronki', '30', '300024');
INSERT INTO `location` VALUES ('368', 'Pyrzyce', '32', '320012');
INSERT INTO `location` VALUES ('369', 'Aleksandrów Łódzki', '10', '100020');
INSERT INTO `location` VALUES ('370', 'Pyzdry', '30', '300030');
INSERT INTO `location` VALUES ('371', 'Zabrze', '24', '240078');
INSERT INTO `location` VALUES ('372', 'Pieńsk', '2', '20025');
INSERT INTO `location` VALUES ('373', 'Głuchołazy', '16', '16007');
INSERT INTO `location` VALUES ('374', 'Piotrków Trybunalski', '10', '100062');
INSERT INTO `location` VALUES ('375', 'Zalewo', '28', '28007');
INSERT INTO `location` VALUES ('376', 'Olecko', '28', '280013');
INSERT INTO `location` VALUES ('377', 'Katowice', '24', '240069');
INSERT INTO `location` VALUES ('378', 'Złoczew', '10', '100014');
INSERT INTO `location` VALUES ('379', 'Wolin', '32', '32007');
INSERT INTO `location` VALUES ('380', 'Bobolice', '32', '32009');
INSERT INTO `location` VALUES ('381', 'Gliwice', '24', '240066');
INSERT INTO `location` VALUES ('382', 'Pruchnik', '18', '18004');
INSERT INTO `location` VALUES ('383', 'Zduńska Wola', '10', '100019');
INSERT INTO `location` VALUES ('384', 'Skarżysko-Kamienna', '26', '260010');
INSERT INTO `location` VALUES ('385', 'Łęczyca', '10', '10004');
INSERT INTO `location` VALUES ('386', 'Działoszyce', '26', '26008');
INSERT INTO `location` VALUES ('387', 'Tyczyn', '18', '180016');
INSERT INTO `location` VALUES ('388', 'Siewierz', '24', '24001');
INSERT INTO `location` VALUES ('389', 'Tuchów', '12', '120016');
INSERT INTO `location` VALUES ('390', 'Pszów', '24', '240015');
INSERT INTO `location` VALUES ('391', 'Maków Mazowiecki', '14', '140011');
INSERT INTO `location` VALUES ('392', 'Ćmielów', '26', '26007');
INSERT INTO `location` VALUES ('393', 'Stary Sącz', '12', '120010');
INSERT INTO `location` VALUES ('394', 'Łódź', '10', '100061');
INSERT INTO `location` VALUES ('395', 'Poręba', '24', '240016');
INSERT INTO `location` VALUES ('396', 'Nidzica', '28', '280011');
INSERT INTO `location` VALUES ('397', 'Jastrowie', '30', '300031');
INSERT INTO `location` VALUES ('398', 'Szczecin', '32', '320062');
INSERT INTO `location` VALUES ('399', 'Kożuchów', '8', '8004');
INSERT INTO `location` VALUES ('400', 'Mrągowo', '28', '280010');
INSERT INTO `location` VALUES ('401', 'Pieszyce', '2', '2002');
INSERT INTO `location` VALUES ('402', 'Glinojeck', '14', '14002');
INSERT INTO `location` VALUES ('403', 'Słubice', '8', '8005');
INSERT INTO `location` VALUES ('404', 'Wysokie Mazowieckie', '20', '200013');
INSERT INTO `location` VALUES ('405', 'Ciechanów', '14', '14002');
INSERT INTO `location` VALUES ('406', 'Przeworsk', '18', '180014');
INSERT INTO `location` VALUES ('407', 'Nowe Miasteczko', '8', '8004');
INSERT INTO `location` VALUES ('408', 'Łasin', '4', '4006');
INSERT INTO `location` VALUES ('409', 'Radłów', '12', '120016');
INSERT INTO `location` VALUES ('410', 'Bukowno', '12', '120012');
INSERT INTO `location` VALUES ('411', 'Malbork', '22', '22009');
INSERT INTO `location` VALUES ('412', 'Bochnia', '12', '12001');
INSERT INTO `location` VALUES ('413', 'Opatów', '26', '26006');
INSERT INTO `location` VALUES ('414', 'Więcbork', '4', '40013');
INSERT INTO `location` VALUES ('415', 'Ryki', '6', '60016');
INSERT INTO `location` VALUES ('416', 'Łochów', '14', '140033');
INSERT INTO `location` VALUES ('417', 'Boguszów-Gorce', '2', '20021');
INSERT INTO `location` VALUES ('418', 'Ostrów Mazowiecka', '14', '140016');
INSERT INTO `location` VALUES ('419', 'Gorlice', '12', '12005');
INSERT INTO `location` VALUES ('420', 'Rabka-Zdrój', '12', '120011');
INSERT INTO `location` VALUES ('421', 'Chełmno', '4', '4004');
INSERT INTO `location` VALUES ('422', 'Ruciane-Nida', '28', '280016');
INSERT INTO `location` VALUES ('423', 'Namysłów', '16', '16006');
INSERT INTO `location` VALUES ('424', 'Jelcz-Laskowice', '2', '20015');
INSERT INTO `location` VALUES ('425', 'Węgliniec', '2', '20025');
INSERT INTO `location` VALUES ('426', 'Serock', '14', '14008');
INSERT INTO `location` VALUES ('427', 'Żagań', '8', '80010');
INSERT INTO `location` VALUES ('428', 'Międzyrzec Podlaski', '6', '6001');
INSERT INTO `location` VALUES ('429', 'Olsztyn', '28', '280062');
INSERT INTO `location` VALUES ('430', 'Kościan', '30', '300011');
INSERT INTO `location` VALUES ('431', 'Kartuzy', '22', '22005');
INSERT INTO `location` VALUES ('432', 'Czerwieńsk', '8', '8009');
INSERT INTO `location` VALUES ('433', 'Wadowice', '12', '120018');
INSERT INTO `location` VALUES ('434', 'Wrocław', '2', '20064');
INSERT INTO `location` VALUES ('435', 'Wieluń', '10', '100017');
INSERT INTO `location` VALUES ('436', 'Zgierz', '10', '100020');
INSERT INTO `location` VALUES ('437', 'Chrzanów', '12', '12003');
INSERT INTO `location` VALUES ('438', 'Staszów', '26', '260012');
INSERT INTO `location` VALUES ('439', 'Swarzędz', '30', '300021');
INSERT INTO `location` VALUES ('440', 'Szlichtyngowa', '8', '80012');
INSERT INTO `location` VALUES ('441', 'Zawiercie', '24', '240016');
INSERT INTO `location` VALUES ('442', 'Sułkowice', '12', '12009');
INSERT INTO `location` VALUES ('443', 'Żuromin', '14', '140037');
INSERT INTO `location` VALUES ('444', 'Człopa', '32', '320017');
INSERT INTO `location` VALUES ('445', 'Warta', '10', '100014');
INSERT INTO `location` VALUES ('446', 'Ostrów Lubelski', '6', '6008');
INSERT INTO `location` VALUES ('447', 'Świecie', '4', '40014');
INSERT INTO `location` VALUES ('448', 'Wschowa', '8', '80012');
INSERT INTO `location` VALUES ('449', 'Dobre Miasto', '28', '280014');
INSERT INTO `location` VALUES ('450', 'Blachownia', '24', '24004');
INSERT INTO `location` VALUES ('451', 'Kańczuga', '18', '180014');
INSERT INTO `location` VALUES ('452', 'Krasnystaw', '6', '6006');
INSERT INTO `location` VALUES ('453', 'Działoszyn', '10', '10009');
INSERT INTO `location` VALUES ('454', 'Ustroń', '24', '24003');
INSERT INTO `location` VALUES ('455', 'Raciąż', '14', '140020');
INSERT INTO `location` VALUES ('456', 'Darłowo', '32', '320013');
INSERT INTO `location` VALUES ('457', 'Tyszowce', '6', '60018');
INSERT INTO `location` VALUES ('458', 'Rawa Mazowiecka', '10', '100013');
INSERT INTO `location` VALUES ('459', 'Frampol', '6', '6002');
INSERT INTO `location` VALUES ('460', 'Czeladź', '24', '24001');
INSERT INTO `location` VALUES ('461', 'Lubaczów', '18', '18009');
INSERT INTO `location` VALUES ('462', 'Sokołów Podlaski', '14', '140029');
INSERT INTO `location` VALUES ('463', 'Sulechów', '8', '8009');
INSERT INTO `location` VALUES ('464', 'Legnica', '2', '20062');
INSERT INTO `location` VALUES ('465', 'Małomice', '8', '80010');
INSERT INTO `location` VALUES ('466', 'Pszczyna', '24', '240010');
INSERT INTO `location` VALUES ('467', 'Ziębice', '2', '20024');
INSERT INTO `location` VALUES ('468', 'Radków', '2', '2008');
INSERT INTO `location` VALUES ('469', 'Annopol', '6', '6007');
INSERT INTO `location` VALUES ('470', 'Terespol', '6', '6001');
INSERT INTO `location` VALUES ('471', 'Krosno', '18', '180061');
INSERT INTO `location` VALUES ('472', 'Połczyn-Zdrój', '32', '320016');
INSERT INTO `location` VALUES ('473', 'Złocieniec', '32', '32003');
INSERT INTO `location` VALUES ('474', 'Hel', '22', '220011');
INSERT INTO `location` VALUES ('475', 'Wałcz', '32', '320017');
INSERT INTO `location` VALUES ('476', 'Choroszcz', '20', '20002');
INSERT INTO `location` VALUES ('477', 'Tarnogród', '6', '6002');
INSERT INTO `location` VALUES ('478', 'Grybów', '12', '120010');
INSERT INTO `location` VALUES ('479', 'Słupsk', '22', '220063');
INSERT INTO `location` VALUES ('480', 'Szczuczyn', '20', '20004');
INSERT INTO `location` VALUES ('481', 'Miechów', '12', '12008');
INSERT INTO `location` VALUES ('482', 'Biała', '16', '160010');
INSERT INTO `location` VALUES ('483', 'Lublin', '6', '60063');
INSERT INTO `location` VALUES ('484', 'Opoczno', '10', '10007');
INSERT INTO `location` VALUES ('485', 'Bielsk Podlaski', '20', '20003');
INSERT INTO `location` VALUES ('486', 'Sędziszów Małopolski', '18', '180015');
INSERT INTO `location` VALUES ('487', 'Wieruszów', '10', '100018');
INSERT INTO `location` VALUES ('488', 'Białogard', '32', '32001');
INSERT INTO `location` VALUES ('489', 'Biłgoraj', '6', '6002');
INSERT INTO `location` VALUES ('490', 'Słomniki', '12', '12006');
INSERT INTO `location` VALUES ('491', 'Kleczew', '30', '300010');
INSERT INTO `location` VALUES ('492', 'Pabianice', '10', '10008');
INSERT INTO `location` VALUES ('493', 'Łańcut', '18', '180010');
INSERT INTO `location` VALUES ('494', 'Kostrzyn', '30', '300021');
INSERT INTO `location` VALUES ('495', 'Krzyż Wielkopolski', '30', '30002');
INSERT INTO `location` VALUES ('496', 'Brańsk', '20', '20003');
INSERT INTO `location` VALUES ('497', 'Działdowo', '28', '28003');
INSERT INTO `location` VALUES ('498', 'Piekary Śląskie', '24', '240071');
INSERT INTO `location` VALUES ('499', 'Sierpc', '14', '140027');
INSERT INTO `location` VALUES ('500', 'Drobin', '14', '140019');
INSERT INTO `location` VALUES ('501', 'Mszana Dolna', '12', '12007');
INSERT INTO `location` VALUES ('502', 'Puck', '22', '220011');
INSERT INTO `location` VALUES ('503', 'Garwolin', '14', '14003');
INSERT INTO `location` VALUES ('504', 'Skoki', '30', '300028');
INSERT INTO `location` VALUES ('505', 'Babimost', '8', '8009');
INSERT INTO `location` VALUES ('506', 'Ścinawa', '2', '20011');
INSERT INTO `location` VALUES ('507', 'Puławy', '6', '60014');
INSERT INTO `location` VALUES ('508', 'Pelplin', '22', '220014');
INSERT INTO `location` VALUES ('509', 'Gogolin', '16', '16005');
INSERT INTO `location` VALUES ('510', 'Paczków', '16', '16007');
INSERT INTO `location` VALUES ('511', 'Ropczyce', '18', '180015');
INSERT INTO `location` VALUES ('512', 'Niepołomice', '12', '120019');
INSERT INTO `location` VALUES ('513', 'Pełczyce', '32', '32002');
INSERT INTO `location` VALUES ('514', 'Radomsko', '10', '100012');
INSERT INTO `location` VALUES ('515', 'Lubomierz', '2', '20012');
INSERT INTO `location` VALUES ('516', 'Łomianki', '14', '140032');
INSERT INTO `location` VALUES ('517', 'Mszczonów', '14', '140038');
INSERT INTO `location` VALUES ('518', 'Nowy Targ', '12', '120011');
INSERT INTO `location` VALUES ('519', 'Młynary', '28', '28004');
INSERT INTO `location` VALUES ('520', 'Głuszyca', '2', '20021');
INSERT INTO `location` VALUES ('521', 'Różan', '14', '140011');
INSERT INTO `location` VALUES ('522', 'Skierniewice', '10', '100063');
INSERT INTO `location` VALUES ('523', 'Ujście', '30', '300019');
INSERT INTO `location` VALUES ('524', 'Stęszew', '30', '300021');
INSERT INTO `location` VALUES ('525', 'Ostróda', '28', '280015');
INSERT INTO `location` VALUES ('526', 'Dzierżoniów', '2', '2002');
INSERT INTO `location` VALUES ('527', 'Koniecpol', '24', '24004');
INSERT INTO `location` VALUES ('528', 'Wyrzysk', '30', '300019');
INSERT INTO `location` VALUES ('529', 'Krajenka', '30', '300031');
INSERT INTO `location` VALUES ('530', 'Strzyżów', '18', '180019');
INSERT INTO `location` VALUES ('531', 'Radom', '14', '140063');
INSERT INTO `location` VALUES ('532', 'Środa Śląska', '2', '20018');
INSERT INTO `location` VALUES ('533', 'Suchowola', '20', '200011');
INSERT INTO `location` VALUES ('534', 'Dobrzany', '32', '320014');
INSERT INTO `location` VALUES ('535', 'Sława', '8', '80012');
INSERT INTO `location` VALUES ('536', 'Bielawa', '2', '2002');
INSERT INTO `location` VALUES ('537', 'Kalety', '24', '240013');
INSERT INTO `location` VALUES ('538', 'Grodków', '16', '16001');
INSERT INTO `location` VALUES ('539', 'Płońsk', '14', '140020');
INSERT INTO `location` VALUES ('540', 'Przasnysz', '14', '140022');
INSERT INTO `location` VALUES ('541', 'Lesko', '18', '180021');
INSERT INTO `location` VALUES ('542', 'Brzeszcze', '12', '120013');
INSERT INTO `location` VALUES ('543', 'Warszawa', '14', '140065');
INSERT INTO `location` VALUES ('544', 'Golina', '30', '300010');
INSERT INTO `location` VALUES ('545', 'Czaplinek', '32', '32003');
INSERT INTO `location` VALUES ('546', 'Sośnicowice', '24', '24005');
INSERT INTO `location` VALUES ('547', 'Jawor', '2', '2005');
INSERT INTO `location` VALUES ('548', 'Bobowa', '12', '12005');
INSERT INTO `location` VALUES ('549', 'Jasło', '18', '18005');
INSERT INTO `location` VALUES ('550', 'Gniezno', '30', '30003');
INSERT INTO `location` VALUES ('551', 'Recz', '32', '32002');
INSERT INTO `location` VALUES ('552', 'Iława', '28', '28007');
INSERT INTO `location` VALUES ('553', 'Warka', '14', '14006');
INSERT INTO `location` VALUES ('554', 'Siechnice', '2', '20023');
INSERT INTO `location` VALUES ('555', 'Gozdnica', '8', '80010');
INSERT INTO `location` VALUES ('556', 'Sucha Beskidzka', '12', '120015');
INSERT INTO `location` VALUES ('557', 'Skalbmierz', '26', '26003');
INSERT INTO `location` VALUES ('558', 'Nowa Dęba', '18', '180020');
INSERT INTO `location` VALUES ('559', 'Frombork', '28', '28002');
INSERT INTO `location` VALUES ('560', 'Brzeziny', '10', '100021');
INSERT INTO `location` VALUES ('561', 'Iwonicz-Zdrój', '18', '18007');
INSERT INTO `location` VALUES ('562', 'Ruda Śląska', '24', '240072');
INSERT INTO `location` VALUES ('563', 'Mysłowice', '24', '240070');
INSERT INTO `location` VALUES ('564', 'Mogilno', '4', '4009');
INSERT INTO `location` VALUES ('565', 'Krasnobród', '6', '60020');
INSERT INTO `location` VALUES ('566', 'Gąbin', '14', '140019');
INSERT INTO `location` VALUES ('567', 'Pisz', '28', '280016');
INSERT INTO `location` VALUES ('568', 'Gołdap', '28', '280018');
INSERT INTO `location` VALUES ('569', 'Góra', '2', '2004');
INSERT INTO `location` VALUES ('570', 'Tłuszcz', '14', '140034');
INSERT INTO `location` VALUES ('571', 'Błażowa', '18', '180016');
INSERT INTO `location` VALUES ('572', 'Miasteczko Śląskie', '24', '240013');
INSERT INTO `location` VALUES ('573', 'Suchań', '32', '320014');
INSERT INTO `location` VALUES ('574', 'Bardo', '2', '20024');
INSERT INTO `location` VALUES ('575', 'Sianów', '32', '32009');
INSERT INTO `location` VALUES ('576', 'Tarczyn', '14', '140018');
INSERT INTO `location` VALUES ('577', 'Resko', '32', '320018');
INSERT INTO `location` VALUES ('578', 'Czyżew', '20', '200013');
INSERT INTO `location` VALUES ('579', 'Mieszkowice', '32', '32006');
INSERT INTO `location` VALUES ('580', 'Karlino', '32', '32001');
INSERT INTO `location` VALUES ('581', 'Andrychów', '12', '120018');
INSERT INTO `location` VALUES ('582', 'Gościno', '32', '32008');
INSERT INTO `location` VALUES ('583', 'Nekla', '30', '300030');
INSERT INTO `location` VALUES ('584', 'Wołomin', '14', '140034');
INSERT INTO `location` VALUES ('585', 'Narol', '18', '18009');
INSERT INTO `location` VALUES ('586', 'Starachowice', '26', '260011');
INSERT INTO `location` VALUES ('587', 'Muszyna', '12', '120010');
INSERT INTO `location` VALUES ('588', 'Tarnobrzeg', '18', '180064');
INSERT INTO `location` VALUES ('589', 'Pogorzela', '30', '30004');
INSERT INTO `location` VALUES ('590', 'Sulęcin', '8', '8007');
INSERT INTO `location` VALUES ('591', 'Ciechanowiec', '20', '200013');
INSERT INTO `location` VALUES ('592', 'Kunów', '26', '26007');
INSERT INTO `location` VALUES ('593', 'Koronowo', '4', '4003');
INSERT INTO `location` VALUES ('594', 'Nowogard', '32', '32004');
INSERT INTO `location` VALUES ('595', 'Police', '32', '320011');
INSERT INTO `location` VALUES ('596', 'Imielin', '24', '240014');
INSERT INTO `location` VALUES ('597', 'Kędzierzyn-Koźle', '16', '16003');
INSERT INTO `location` VALUES ('598', 'Koprzywnica', '26', '26009');
INSERT INTO `location` VALUES ('599', 'Nowogród', '20', '20007');
INSERT INTO `location` VALUES ('600', 'Ujazd', '16', '160011');
INSERT INTO `location` VALUES ('601', 'Mikstat', '30', '300018');
INSERT INTO `location` VALUES ('602', 'Świętochłowice', '24', '240076');
INSERT INTO `location` VALUES ('603', 'Miłakowo', '28', '280015');
INSERT INTO `location` VALUES ('604', 'Karpacz', '2', '2006');
INSERT INTO `location` VALUES ('605', 'Zawadzkie', '16', '160011');
INSERT INTO `location` VALUES ('606', 'Kałuszyn', '14', '140012');
INSERT INTO `location` VALUES ('607', 'Łabiszyn', '4', '40019');
INSERT INTO `location` VALUES ('608', 'Limanowa', '12', '12007');
INSERT INTO `location` VALUES ('609', 'Zielona Góra', '8', '80062');
INSERT INTO `location` VALUES ('610', 'Wysoka', '30', '300019');
INSERT INTO `location` VALUES ('611', 'Świeradów-Zdrój', '2', '20010');
INSERT INTO `location` VALUES ('612', 'Przedbórz', '10', '100012');
INSERT INTO `location` VALUES ('613', 'Krośniewice', '10', '10002');
INSERT INTO `location` VALUES ('614', 'Tarnów', '12', '120063');
INSERT INTO `location` VALUES ('615', 'Ulanów', '18', '180012');
INSERT INTO `location` VALUES ('616', 'Tychowo', '32', '32001');
INSERT INTO `location` VALUES ('617', 'Szczecinek', '32', '320015');
INSERT INTO `location` VALUES ('618', 'Nowa Sól', '8', '8004');
INSERT INTO `location` VALUES ('619', 'Biała Rawska', '10', '100013');
INSERT INTO `location` VALUES ('620', 'Poddębice', '10', '100011');
INSERT INTO `location` VALUES ('621', 'Świebodzin', '8', '8008');
INSERT INTO `location` VALUES ('622', 'Tomaszów Lubelski', '6', '60018');
INSERT INTO `location` VALUES ('623', 'Czempiń', '30', '300011');
INSERT INTO `location` VALUES ('624', 'Leśna', '2', '20010');
INSERT INTO `location` VALUES ('625', 'Radlin', '24', '240015');
INSERT INTO `location` VALUES ('626', 'Sokołów Małopolski', '18', '180016');
INSERT INTO `location` VALUES ('627', 'Połaniec', '26', '260012');
INSERT INTO `location` VALUES ('628', 'Bojanowo', '30', '300022');
INSERT INTO `location` VALUES ('629', 'Kowalewo Pomorskie', '4', '4005');
INSERT INTO `location` VALUES ('630', 'Prabuty', '22', '22007');
INSERT INTO `location` VALUES ('631', 'Stronie Śląskie', '2', '2008');
INSERT INTO `location` VALUES ('632', 'Jordanów', '12', '120015');
INSERT INTO `location` VALUES ('633', 'Ogrodzieniec', '24', '240016');
INSERT INTO `location` VALUES ('634', 'Kisielice', '28', '28007');
INSERT INTO `location` VALUES ('635', 'Proszowice', '12', '120014');
INSERT INTO `location` VALUES ('636', 'Stąporków', '26', '26005');
INSERT INTO `location` VALUES ('637', 'Halinów', '14', '140012');
INSERT INTO `location` VALUES ('638', 'Lubartów', '6', '6008');
INSERT INTO `location` VALUES ('639', 'Duszniki-Zdrój', '2', '2008');
INSERT INTO `location` VALUES ('640', 'Orzesze', '24', '24008');
INSERT INTO `location` VALUES ('641', 'Rajgród', '20', '20004');
INSERT INTO `location` VALUES ('642', 'Gryfino', '32', '32006');
INSERT INTO `location` VALUES ('643', 'Włodawa', '6', '60019');
INSERT INTO `location` VALUES ('644', 'Wojkowice', '24', '24001');
INSERT INTO `location` VALUES ('645', 'Grodzisk Mazowiecki', '14', '14005');
INSERT INTO `location` VALUES ('646', 'Chojnice', '22', '22002');
INSERT INTO `location` VALUES ('647', 'Dzierzgoń', '22', '220016');
INSERT INTO `location` VALUES ('648', 'Zwierzyniec', '6', '60020');
INSERT INTO `location` VALUES ('649', 'Sławno', '32', '320013');
INSERT INTO `location` VALUES ('650', 'Sochaczew', '14', '140028');
INSERT INTO `location` VALUES ('651', 'Jarocin', '30', '30006');
INSERT INTO `location` VALUES ('652', 'Głogówek', '16', '160010');
INSERT INTO `location` VALUES ('653', 'Trzebinia', '12', '12003');
INSERT INTO `location` VALUES ('654', 'Pajęczno', '10', '10009');
INSERT INTO `location` VALUES ('655', 'Szydłowiec', '14', '140030');
INSERT INTO `location` VALUES ('656', 'Giżycko', '28', '28006');
INSERT INTO `location` VALUES ('657', 'Konstancin-Jeziorna', '14', '140018');
INSERT INTO `location` VALUES ('658', 'Ślesin', '30', '300010');
INSERT INTO `location` VALUES ('659', 'Wojcieszów', '2', '20026');
INSERT INTO `location` VALUES ('660', 'Mielec', '18', '180011');
INSERT INTO `location` VALUES ('661', 'Kołobrzeg', '32', '32008');
INSERT INTO `location` VALUES ('662', 'Kowal', '4', '40018');
INSERT INTO `location` VALUES ('663', 'Wodzisław Śląski', '24', '240015');
INSERT INTO `location` VALUES ('664', 'Zakroczym', '14', '140014');
INSERT INTO `location` VALUES ('665', 'Rypin', '4', '40012');
INSERT INTO `location` VALUES ('666', 'Zabłudów', '20', '20002');
INSERT INTO `location` VALUES ('667', 'Nieszawa', '4', '4001');
INSERT INTO `location` VALUES ('668', 'Wleń', '2', '20012');
INSERT INTO `location` VALUES ('669', 'Trzcińsko-Zdrój', '32', '32006');
INSERT INTO `location` VALUES ('670', 'Cieszanów', '18', '18009');
INSERT INTO `location` VALUES ('671', 'Józefów', '6', '6002');
INSERT INTO `location` VALUES ('672', 'Brzeg Dolny', '2', '20022');
INSERT INTO `location` VALUES ('673', 'Grudziądz', '4', '40062');
INSERT INTO `location` VALUES ('674', 'Goniądz', '20', '20008');
INSERT INTO `location` VALUES ('675', 'Środa Wielkopolska', '30', '300025');
INSERT INTO `location` VALUES ('676', 'Wejherowo', '22', '220015');
INSERT INTO `location` VALUES ('677', 'Kętrzyn', '28', '28008');
INSERT INTO `location` VALUES ('678', 'Głogów', '2', '2003');
INSERT INTO `location` VALUES ('679', 'Tuczno', '32', '320017');
INSERT INTO `location` VALUES ('680', 'Tuszyn', '10', '10006');
INSERT INTO `location` VALUES ('681', 'Twardogóra', '2', '20014');
INSERT INTO `location` VALUES ('682', 'Bydgoszcz', '4', '40061');
INSERT INTO `location` VALUES ('683', 'Jastarnia', '22', '220011');
INSERT INTO `location` VALUES ('684', 'Chociwel', '32', '320014');
INSERT INTO `location` VALUES ('685', 'Międzybórz', '2', '20014');
INSERT INTO `location` VALUES ('686', 'Czarne', '22', '22003');
INSERT INTO `location` VALUES ('687', 'Sępólno Krajeńskie', '4', '40013');
INSERT INTO `location` VALUES ('688', 'Chocianów', '2', '20016');
INSERT INTO `location` VALUES ('689', 'Zawichost', '26', '26009');
INSERT INTO `location` VALUES ('690', 'Nisko', '18', '180012');
INSERT INTO `location` VALUES ('691', 'Bystrzyca Kłodzka', '2', '2008');
INSERT INTO `location` VALUES ('692', 'Busko-Zdrój', '26', '26001');
INSERT INTO `location` VALUES ('693', 'Hrubieszów', '6', '6004');
INSERT INTO `location` VALUES ('694', 'Głubczyce', '16', '16002');
INSERT INTO `location` VALUES ('695', 'Wąchock', '26', '260011');
INSERT INTO `location` VALUES ('696', 'Maków Podhalański', '12', '120015');
INSERT INTO `location` VALUES ('697', 'Białobrzegi', '14', '14001');
INSERT INTO `location` VALUES ('698', 'Konin', '30', '300062');
INSERT INTO `location` VALUES ('699', 'Zagórz', '18', '180017');
INSERT INTO `location` VALUES ('700', 'Myszyniec', '14', '140015');
INSERT INTO `location` VALUES ('701', 'Karczew', '14', '140017');
INSERT INTO `location` VALUES ('702', 'Rybnik', '24', '240073');
INSERT INTO `location` VALUES ('703', 'Bełżyce', '6', '6009');
INSERT INTO `location` VALUES ('704', 'Ozorków', '10', '100020');
INSERT INTO `location` VALUES ('705', 'Lubsko', '8', '80011');
INSERT INTO `location` VALUES ('706', 'Prószków', '16', '16009');
INSERT INTO `location` VALUES ('707', 'Chełm', '6', '60062');
INSERT INTO `location` VALUES ('708', 'Libiąż', '12', '12003');
INSERT INTO `location` VALUES ('709', 'Żory', '24', '240079');
INSERT INTO `location` VALUES ('710', 'Żelechów', '14', '14003');
INSERT INTO `location` VALUES ('711', 'Dobra', '30', '300027');
INSERT INTO `location` VALUES ('712', 'Łobez', '32', '320018');
INSERT INTO `location` VALUES ('713', 'Turek', '30', '300027');
INSERT INTO `location` VALUES ('714', 'Sztum', '22', '220016');
INSERT INTO `location` VALUES ('715', 'Trzciel', '8', '8003');
INSERT INTO `location` VALUES ('716', 'Kraków', '12', '120061');
INSERT INTO `location` VALUES ('717', 'Kazimierz Dolny', '6', '60014');
INSERT INTO `location` VALUES ('718', 'Kietrz', '16', '16002');
INSERT INTO `location` VALUES ('719', 'Krzepice', '24', '24006');
INSERT INTO `location` VALUES ('720', 'Czarna Białostocka', '20', '20002');
INSERT INTO `location` VALUES ('721', 'Jaraczewo', '30', '30006');
INSERT INTO `location` VALUES ('722', 'Kościerzyna', '22', '22006');
INSERT INTO `location` VALUES ('723', 'Mirosławiec', '32', '320017');
INSERT INTO `location` VALUES ('724', 'Kosów Lacki', '14', '140029');
INSERT INTO `location` VALUES ('725', 'Drohiczyn', '20', '200010');
INSERT INTO `location` VALUES ('726', 'Łapy', '20', '20002');
INSERT INTO `location` VALUES ('727', 'Józefów', '14', '140017');
INSERT INTO `location` VALUES ('728', 'Kock', '6', '6008');
INSERT INTO `location` VALUES ('729', 'Drezdenko', '8', '8006');
INSERT INTO `location` VALUES ('730', 'Szczawnica', '12', '120011');
INSERT INTO `location` VALUES ('731', 'Krynki', '20', '200011');
INSERT INTO `location` VALUES ('732', 'Odolanów', '30', '300017');
INSERT INTO `location` VALUES ('733', 'Bełchatów', '10', '10001');
INSERT INTO `location` VALUES ('734', 'Żmigród', '2', '20020');
INSERT INTO `location` VALUES ('735', 'Bytów', '22', '22001');
INSERT INTO `location` VALUES ('736', 'Tolkmicko', '28', '28004');
INSERT INTO `location` VALUES ('737', 'Dziwnów', '32', '32007');
INSERT INTO `location` VALUES ('738', 'Dąbrowa Białostocka', '20', '200011');
INSERT INTO `location` VALUES ('739', 'Nakło nad Notecią', '4', '40010');
INSERT INTO `location` VALUES ('740', 'Opole', '16', '160061');
INSERT INTO `location` VALUES ('741', 'Wojnicz', '12', '120016');
INSERT INTO `location` VALUES ('742', 'Kcynia', '4', '40010');
INSERT INTO `location` VALUES ('743', 'Radzyń Podlaski', '6', '60015');
INSERT INTO `location` VALUES ('744', 'Urzędów', '6', '6007');
INSERT INTO `location` VALUES ('745', 'Bytom Odrzański', '8', '8004');
INSERT INTO `location` VALUES ('746', 'Dobra', '32', '320018');
INSERT INTO `location` VALUES ('747', 'Sępopol', '28', '28001');
INSERT INTO `location` VALUES ('748', 'Chodzież', '30', '30001');
INSERT INTO `location` VALUES ('749', 'Krobia', '30', '30004');
INSERT INTO `location` VALUES ('750', 'Międzychód', '30', '300014');
INSERT INTO `location` VALUES ('751', 'Pułtusk', '14', '140024');
INSERT INTO `location` VALUES ('752', 'Olsztynek', '28', '280014');
INSERT INTO `location` VALUES ('753', 'Prudnik', '16', '160010');
INSERT INTO `location` VALUES ('754', 'Mrocza', '4', '40010');
INSERT INTO `location` VALUES ('755', 'Żukowo', '22', '22005');
INSERT INTO `location` VALUES ('756', 'Bisztynek', '28', '28001');
INSERT INTO `location` VALUES ('757', 'Międzyzdroje', '32', '32007');
INSERT INTO `location` VALUES ('758', 'Jasień', '8', '80011');
INSERT INTO `location` VALUES ('759', 'Świdnik', '6', '60017');
INSERT INTO `location` VALUES ('760', 'Rymanów', '18', '18007');
INSERT INTO `location` VALUES ('761', 'Dęblin', '6', '60016');
INSERT INTO `location` VALUES ('762', 'Krzeszowice', '12', '12006');
INSERT INTO `location` VALUES ('763', 'Górowo Iławeckie', '28', '28001');
INSERT INTO `location` VALUES ('764', 'Płock', '14', '140062');
INSERT INTO `location` VALUES ('765', 'Czerniejewo', '30', '30003');
INSERT INTO `location` VALUES ('766', 'Suwałki', '20', '200063');
INSERT INTO `location` VALUES ('767', 'Nowy Wiśnicz', '12', '12001');
INSERT INTO `location` VALUES ('768', 'Oborniki Śląskie', '2', '20020');
INSERT INTO `location` VALUES ('769', 'Skwierzyna', '8', '8003');
INSERT INTO `location` VALUES ('770', 'Żarki', '24', '24009');
INSERT INTO `location` VALUES ('771', 'Stopnica', '26', '26001');
INSERT INTO `location` VALUES ('772', 'Olkusz', '12', '120012');
INSERT INTO `location` VALUES ('773', 'Gołańcz', '30', '300028');
INSERT INTO `location` VALUES ('774', 'Ustrzyki Dolne', '18', '18001');
INSERT INTO `location` VALUES ('775', 'Lubawa', '28', '28007');
INSERT INTO `location` VALUES ('776', 'Kołaczyce', '18', '18005');
INSERT INTO `location` VALUES ('777', 'Kargowa', '8', '8009');
INSERT INTO `location` VALUES ('778', 'Zaklików', '18', '180018');
INSERT INTO `location` VALUES ('779', 'Jastrzębie-Zdrój', '24', '240067');
INSERT INTO `location` VALUES ('780', 'Kłodawa', '30', '30009');
INSERT INTO `location` VALUES ('781', 'Lipiany', '32', '320012');
INSERT INTO `location` VALUES ('782', 'Reda', '22', '220015');
INSERT INTO `location` VALUES ('783', 'Przemków', '2', '20016');
INSERT INTO `location` VALUES ('784', 'Nasielsk', '14', '140014');
INSERT INTO `location` VALUES ('785', 'Otmuchów', '16', '16007');
INSERT INTO `location` VALUES ('786', 'Biała Podlaska', '6', '60061');
INSERT INTO `location` VALUES ('787', 'Kępice', '22', '220012');
INSERT INTO `location` VALUES ('788', 'Radomyśl Wielki', '18', '180011');
INSERT INTO `location` VALUES ('789', 'Gdynia', '22', '220062');
INSERT INTO `location` VALUES ('790', 'Parczew', '6', '60013');
INSERT INTO `location` VALUES ('791', 'Golczewo', '32', '32007');
INSERT INTO `location` VALUES ('792', 'Człuchów', '22', '22003');
INSERT INTO `location` VALUES ('793', 'Nowy Staw', '22', '22009');
INSERT INTO `location` VALUES ('794', 'Gubin', '8', '8002');
INSERT INTO `location` VALUES ('795', 'Wyszogród', '14', '140019');
INSERT INTO `location` VALUES ('796', 'Bogatynia', '2', '20025');
INSERT INTO `location` VALUES ('797', 'Janów Lubelski', '6', '6005');
INSERT INTO `location` VALUES ('798', 'Podkowa Leśna', '14', '14005');
INSERT INTO `location` VALUES ('799', 'Jedlicze', '18', '18007');
INSERT INTO `location` VALUES ('800', 'Suraż', '20', '20002');
INSERT INTO `location` VALUES ('801', 'Kostrzyn nad Odrą', '8', '8001');
INSERT INTO `location` VALUES ('802', 'Żychlin', '10', '10002');
INSERT INTO `location` VALUES ('803', 'Zduny', '30', '300012');
INSERT INTO `location` VALUES ('804', 'Zamość', '6', '60064');
INSERT INTO `location` VALUES ('805', 'Szczucin', '12', '12004');
INSERT INTO `location` VALUES ('806', 'Janowiec Wielkopolski', '4', '40019');
INSERT INTO `location` VALUES ('807', 'Lubycza Królewska', '6', '60018');
INSERT INTO `location` VALUES ('808', 'Zawidów', '2', '20025');
INSERT INTO `location` VALUES ('809', 'Kłecko', '30', '30003');
INSERT INTO `location` VALUES ('810', 'Buk', '30', '300021');
INSERT INTO `location` VALUES ('811', 'Świątniki Górne', '12', '12006');
INSERT INTO `location` VALUES ('812', 'Białystok', '20', '200061');
INSERT INTO `location` VALUES ('813', 'Śmigiel', '30', '300011');
INSERT INTO `location` VALUES ('814', 'Żyrardów', '14', '140038');
INSERT INTO `location` VALUES ('815', 'Ryglice', '12', '120016');
INSERT INTO `location` VALUES ('816', 'Lubliniec', '24', '24007');
INSERT INTO `location` VALUES ('817', 'Miejska Górka', '30', '300022');
INSERT INTO `location` VALUES ('818', 'Kłodzko', '2', '2008');
INSERT INTO `location` VALUES ('819', 'Nowogród Bobrzański', '8', '8009');
INSERT INTO `location` VALUES ('820', 'Piotrków Kujawski', '4', '40011');
INSERT INTO `location` VALUES ('821', 'Gryfice', '32', '32005');
INSERT INTO `location` VALUES ('822', 'Brzeg', '16', '16001');
INSERT INTO `location` VALUES ('823', 'Morąg', '28', '280015');
INSERT INTO `location` VALUES ('824', 'Skoczów', '24', '24003');
INSERT INTO `location` VALUES ('825', 'Tomaszów Mazowiecki', '10', '100016');
INSERT INTO `location` VALUES ('826', 'Przysucha', '14', '140023');
INSERT INTO `location` VALUES ('827', 'Miłosław', '30', '300030');
INSERT INTO `location` VALUES ('828', 'Skaryszew', '14', '140025');
INSERT INTO `location` VALUES ('829', 'Dąbrowa Tarnowska', '12', '12004');
INSERT INTO `location` VALUES ('830', 'Lębork', '22', '22008');
INSERT INTO `location` VALUES ('831', 'Rogoźno', '30', '300016');
INSERT INTO `location` VALUES ('832', 'Łazy', '24', '240016');
INSERT INTO `location` VALUES ('833', 'Sobótka', '2', '20023');
INSERT INTO `location` VALUES ('834', 'Dukla', '18', '18007');
INSERT INTO `location` VALUES ('835', 'Barwice', '32', '320015');
INSERT INTO `location` VALUES ('836', 'Stryków', '10', '100020');
INSERT INTO `location` VALUES ('837', 'Racibórz', '24', '240011');
INSERT INTO `location` VALUES ('838', 'Brzostek', '18', '18003');
INSERT INTO `location` VALUES ('839', 'Chorzów', '24', '240063');
INSERT INTO `location` VALUES ('840', 'Żerków', '30', '30006');
INSERT INTO `location` VALUES ('841', 'Syców', '2', '20014');
INSERT INTO `location` VALUES ('842', 'Kobyłka', '14', '140034');
INSERT INTO `location` VALUES ('843', 'Nowy Sącz', '12', '120062');
INSERT INTO `location` VALUES ('844', 'Jarosław', '18', '18004');
INSERT INTO `location` VALUES ('845', 'Łaziska Górne', '24', '24008');
INSERT INTO `location` VALUES ('846', 'Rydzyna', '30', '300013');
INSERT INTO `location` VALUES ('847', 'Chocz', '30', '300020');
INSERT INTO `location` VALUES ('848', 'Kamień Krajeński', '4', '40013');
INSERT INTO `location` VALUES ('849', 'Rydułtowy', '24', '240015');
INSERT INTO `location` VALUES ('850', 'Nowe Miasto nad Pilicą', '14', '14006');
INSERT INTO `location` VALUES ('851', 'Zagórów', '30', '300023');
INSERT INTO `location` VALUES ('852', 'Gniewkowo', '4', '4007');
INSERT INTO `location` VALUES ('853', 'Aleksandrów Kujawski', '4', '4001');
INSERT INTO `location` VALUES ('854', 'Witnica', '8', '8001');
INSERT INTO `location` VALUES ('855', 'Sopot', '22', '220064');
INSERT INTO `location` VALUES ('856', 'Polkowice', '2', '20016');
INSERT INTO `location` VALUES ('857', 'Kwidzyn', '22', '22007');
INSERT INTO `location` VALUES ('858', 'Suchedniów', '26', '260010');
INSERT INTO `location` VALUES ('859', 'Milanówek', '14', '14005');
INSERT INTO `location` VALUES ('860', 'Częstochowa', '24', '240064');
INSERT INTO `location` VALUES ('861', 'Bierutów', '2', '20014');
INSERT INTO `location` VALUES ('862', 'Kąty Wrocławskie', '2', '20023');
INSERT INTO `location` VALUES ('863', 'Rzeszów', '18', '180063');
INSERT INTO `location` VALUES ('864', 'Żabno', '12', '120016');
INSERT INTO `location` VALUES ('865', 'Nowe Brzesko', '12', '120014');
INSERT INTO `location` VALUES ('866', 'Międzyrzecz', '8', '8003');
INSERT INTO `location` VALUES ('867', 'Przecław', '18', '180011');
INSERT INTO `location` VALUES ('868', 'Nowa Sarzyna', '18', '18008');
INSERT INTO `location` VALUES ('869', 'Orneta', '28', '28009');
INSERT INTO `location` VALUES ('870', 'Świdwin', '32', '320016');
INSERT INTO `location` VALUES ('871', 'Brusy', '22', '22002');
INSERT INTO `location` VALUES ('872', 'Zakopane', '12', '120017');
INSERT INTO `location` VALUES ('873', 'Wiązów', '2', '20017');
INSERT INTO `location` VALUES ('874', 'Szepietowo', '20', '200013');
INSERT INTO `location` VALUES ('875', 'Oleszyce', '18', '18009');
INSERT INTO `location` VALUES ('876', 'Świerzawa', '2', '20026');
INSERT INTO `location` VALUES ('877', 'Łaskarzew', '14', '14003');
INSERT INTO `location` VALUES ('878', 'Reszel', '28', '28008');
INSERT INTO `location` VALUES ('879', 'Grójec', '14', '14006');
INSERT INTO `location` VALUES ('880', 'Sanok', '18', '180017');
INSERT INTO `location` VALUES ('881', 'Dolsk', '30', '300026');
INSERT INTO `location` VALUES ('882', 'Wasilków', '20', '20002');
INSERT INTO `location` VALUES ('883', 'Małogoszcz', '26', '26002');
INSERT INTO `location` VALUES ('884', 'Drawsko Pomorskie', '32', '32003');
INSERT INTO `location` VALUES ('885', 'Maszewo', '32', '32004');
INSERT INTO `location` VALUES ('886', 'Chmielnik', '26', '26004');
INSERT INTO `location` VALUES ('887', 'Cybinka', '8', '8005');
INSERT INTO `location` VALUES ('888', 'Modliborzyce', '6', '6005');
INSERT INTO `location` VALUES ('889', 'Oleśnica', '2', '20014');
INSERT INTO `location` VALUES ('890', 'Włoszczowa', '26', '260013');
INSERT INTO `location` VALUES ('891', 'Skarszewy', '22', '220013');
INSERT INTO `location` VALUES ('892', 'Otwock', '14', '140017');
INSERT INTO `location` VALUES ('893', 'Bychawa', '6', '6009');
INSERT INTO `location` VALUES ('894', 'Tuchola', '4', '40016');
INSERT INTO `location` VALUES ('895', 'Łowicz', '10', '10005');
INSERT INTO `location` VALUES ('896', 'Ożarów', '26', '26006');
INSERT INTO `location` VALUES ('897', 'Sławków', '24', '24001');
INSERT INTO `location` VALUES ('898', 'Lewin Brzeski', '16', '16001');
INSERT INTO `location` VALUES ('899', 'Izbica Kujawska', '4', '40018');
INSERT INTO `location` VALUES ('900', 'Biecz', '12', '12005');
INSERT INTO `location` VALUES ('901', 'Rawicz', '30', '300022');
INSERT INTO `location` VALUES ('902', 'Zbąszynek', '8', '8008');
INSERT INTO `location` VALUES ('903', 'Sieradz', '10', '100014');
INSERT INTO `location` VALUES ('904', 'Ząbki', '14', '140034');
INSERT INTO `location` VALUES ('905', 'Rumia', '22', '220015');
INSERT INTO `location` VALUES ('906', 'Pasym', '28', '280017');
INSERT INTO `location` VALUES ('907', 'Kłobuck', '24', '24006');
INSERT INTO `location` VALUES ('908', 'Ryn', '28', '28006');
INSERT INTO `location` VALUES ('909', 'Pilzno', '18', '18003');
INSERT INTO `location` VALUES ('910', 'Dynów', '18', '180016');
INSERT INTO `location` VALUES ('911', 'Góra Kalwaria', '14', '140018');
INSERT INTO `location` VALUES ('912', 'Zator', '12', '120013');
INSERT INTO `location` VALUES ('913', 'Siedliszcze', '6', '6003');
INSERT INTO `location` VALUES ('914', 'Żary', '8', '80011');
INSERT INTO `location` VALUES ('915', 'Łuków', '6', '60011');
INSERT INTO `location` VALUES ('916', 'Krotoszyn', '30', '300012');
INSERT INTO `location` VALUES ('917', 'Bodzentyn', '26', '26004');
INSERT INTO `location` VALUES ('918', 'Byczyna', '16', '16004');
INSERT INTO `location` VALUES ('919', 'Leszno', '30', '300063');

-- ----------------------------
-- Table structure for `photo`
-- ----------------------------
DROP TABLE IF EXISTS `photo`;
CREATE TABLE `photo` (
  `id_photo` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `location_photo` varchar(2083) NOT NULL,
  PRIMARY KEY (`id_photo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of photo
-- ----------------------------

-- ----------------------------
-- Table structure for `session`
-- ----------------------------
DROP TABLE IF EXISTS `session`;
CREATE TABLE `session` (
  `id_session` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_user_session` int(10) unsigned NOT NULL,
  `token_session` varchar(255) NOT NULL,
  `ip_user_session` varchar(39) DEFAULT NULL,
  `user_web_browser_session` varchar(255) DEFAULT NULL,
  `login_time_session` datetime DEFAULT NULL,
  PRIMARY KEY (`id_session`),
  KEY `id_user_session_FK` (`id_user_session`),
  CONSTRAINT `id_user_session_FK` FOREIGN KEY (`id_user_session`) REFERENCES `user` (`id_user`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=180 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of session
-- ----------------------------

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id_user` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `login_user` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `password_user` varchar(255) NOT NULL,
  `mail_user` varchar(255) NOT NULL,
  `type_user` int(10) unsigned NOT NULL,
  `name_user` varchar(100) NOT NULL,
  `surname_user` varchar(100) NOT NULL,
  `gender_user` int(10) unsigned NOT NULL,
  `telephone_number_user` int(10) unsigned NOT NULL,
  `address_user` int(10) unsigned NOT NULL,
  `register_datetime_user` datetime NOT NULL,
  `lock_user` enum('no','yes') NOT NULL DEFAULT 'no',
  `salt_user` varchar(255) NOT NULL,
  `first_failed_login_user` datetime DEFAULT NULL,
  `failed_login_count_user` int(10) DEFAULT NULL,
  PRIMARY KEY (`id_user`),
  UNIQUE KEY `login_user_UK` (`login_user`) USING BTREE,
  UNIQUE KEY `mail_user_UK` (`mail_user`) USING BTREE,
  KEY `gender_user_FK` (`gender_user`),
  KEY `type_user_FK` (`type_user`),
  KEY `address_user_FK` (`address_user`),
  CONSTRAINT `address_user_FK` FOREIGN KEY (`address_user`) REFERENCES `address` (`id_address`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `gender_user_FK` FOREIGN KEY (`gender_user`) REFERENCES `gender` (`id_gender`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `type_user_FK` FOREIGN KEY (`type_user`) REFERENCES `user_type` (`id_user_type`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('37', 'admin', '67d7cac4bad0e5331f688c334a59e6413e67dce2', 'admin@admin.pl', '1', 'Administrator', 'Kamil', '2', '123', '62', '2017-01-05 16:29:17', 'no', 'eHIgMWTqz6', '2017-01-08 22:05:56', '1');

-- ----------------------------
-- Table structure for `user_archive`
-- ----------------------------
DROP TABLE IF EXISTS `user_archive`;
CREATE TABLE `user_archive` (
  `id_user_archive` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `login_user_archive` varchar(255) NOT NULL,
  `password_user_archive` varchar(255) NOT NULL,
  `mail_user_archive` varchar(255) NOT NULL,
  `type_user_archive` int(10) unsigned NOT NULL,
  `name_user_archive` varchar(100) NOT NULL,
  `surname_user_archive` varchar(100) NOT NULL,
  `gender_user_archive` int(10) unsigned NOT NULL,
  `telephone_number_user_archive` int(10) unsigned DEFAULT NULL,
  `address_user_archive` int(10) unsigned NOT NULL,
  `register_datetime_user_archive` datetime NOT NULL,
  `lock_user_archive` enum('no','yes') NOT NULL DEFAULT 'no',
  `id_user_user_archive` int(10) unsigned NOT NULL,
  `type_operation_user_archive` char(1) NOT NULL,
  `operation_date_user_archive` datetime NOT NULL,
  PRIMARY KEY (`id_user_archive`)
) ENGINE=InnoDB AUTO_INCREMENT=171 DEFAULT CHARSET=utf8
/*!50100 PARTITION BY RANGE (id_user_archive)
(PARTITION p0 VALUES LESS THAN (10000) ENGINE = InnoDB,
 PARTITION p1 VALUES LESS THAN (20000) ENGINE = InnoDB) */;

-- ----------------------------
-- Records of user_archive
-- ----------------------------
INSERT INTO `user_archive` VALUES ('1', 'asasasasa', 'aaa', 'a', '1', 'a', 'a', '1', '1212', '1', '2016-10-25 11:28:31', 'no', '4', 'd', '2016-10-25 19:31:20');
INSERT INTO `user_archive` VALUES ('9', 'admin', 'admin1', 'kamil.kapka@hotmail.com', '1', 'Kamil', 'Kapka', '1', '798687923', '1', '2016-10-22 23:18:58', 'no', '1', 'd', '2016-12-13 13:44:37');
INSERT INTO `user_archive` VALUES ('10', 'KAMIL', 'aaa', 'aa', '1', 'A', 'A', '1', '12121', '1', '2016-10-25 11:23:15', 'no', '2', 'd', '2016-12-13 13:44:40');
INSERT INTO `user_archive` VALUES ('11', 'a', 'a', 'a@a.pl', '3', 'a', 'a', '2', '12', '15', '2016-10-31 16:21:04', 'no', '3', 'd', '2016-12-13 13:44:43');
INSERT INTO `user_archive` VALUES ('12', 'admin2', 'admin1', 'admin2@wp.pl', '3', 'Admin', 'Dwa', '1', '777', '16', '2016-10-31 16:22:01', 'no', '4', 'd', '2016-12-13 13:44:45');
INSERT INTO `user_archive` VALUES ('13', 'ola', 'ola1', 'ola@szalona.pl', '3', 'Ola', 'Szalona', '2', '0', '18', '2016-10-31 16:26:30', 'no', '6', 'd', '2016-12-13 13:44:48');
INSERT INTO `user_archive` VALUES ('14', 'admin3', 'a', 'aaaaa@p.pl', '3', 'a', 'a', '2', '22', '19', '2016-10-31 16:30:45', 'no', '7', 'd', '2016-12-13 13:44:50');
INSERT INTO `user_archive` VALUES ('15', 'ania', 'ania1', 'ania@wp.pl', '1', 'Anna', 'Zdiwiona', '1', '777777777', '2', '2016-11-15 20:02:19', 'no', '8', 'd', '2016-12-13 13:44:51');
INSERT INTO `user_archive` VALUES ('16', 'interia', '9448bd54fe1b934b1bd1fad22f9f359c60a48857', 'interia@interia.pl', '3', 'interia', 'interia', '2', '123456', '28', '2016-12-13 13:42:32', 'no', '11', 'd', '2016-12-13 13:46:44');
INSERT INTO `user_archive` VALUES ('17', 'kamil', '25f5e45d2e8879b865b9d539fb3dbe55fdd09110', 'kamil@kamil.pl', '3', 'kamil', 'kamil', '1', '123456', '27', '2016-12-13 13:38:25', 'no', '10', 'd', '2016-12-13 13:46:47');
INSERT INTO `user_archive` VALUES ('18', 'mariusz', 'marondel', 'mariusz@marondel.com', '3', 'Mariusz', 'Marondel', '2', '54545', '23', '2016-11-17 12:24:32', 'no', '9', 'd', '2016-12-13 13:46:50');
INSERT INTO `user_archive` VALUES ('19', 'kamil', 'f8029115524750cdc26c1e90fc033c019d48ee5e', 'kamil@p.pl', '3', 'kamil', 'kamil', '2', '123', '29', '2016-12-13 13:47:20', 'no', '14', 'u', '2016-12-28 21:40:07');
INSERT INTO `user_archive` VALUES ('20', 'kamil', 'f8029115524750cdc26c1e90fc033c019d48ee5e', 'kamil@p.pl', '1', 'kamil', 'kamil', '2', '123', '29', '2016-12-13 13:47:20', 'no', '14', 'u', '2016-12-29 02:51:09');
INSERT INTO `user_archive` VALUES ('21', 'kamil', 'f8029115524750cdc26c1e90fc033c019d48ee5e', 'kamil@p.pl', '3', 'kamil', 'kamil', '2', '123', '29', '2016-12-13 13:47:20', 'no', '14', 'u', '2016-12-29 02:53:13');
INSERT INTO `user_archive` VALUES ('22', 'kamil', 'f8029115524750cdc26c1e90fc033c019d48ee5e', 'kamilkf1@wp.pl', '3', 'kamil', 'kapka', '1', '798687923', '29', '2016-12-13 13:47:20', 'no', '14', 'u', '2016-12-29 03:06:46');
INSERT INTO `user_archive` VALUES ('23', 'kamil', 'f8029115524750cdc26c1e90fc033c019d48ee5e', 'kamilkf1@wp.pl', '3', 'kamil', 'kapka', '1', '798687923', '29', '2016-12-13 13:47:20', 'no', '14', 'u', '2016-12-29 03:07:37');
INSERT INTO `user_archive` VALUES ('24', 'kamil', 'f8029115524750cdc26c1e90fc033c019d48ee5e', 'kamilkf1@wp.pl', '3', 'Kamil', 'Kapka', '1', '798687923', '29', '2016-12-13 13:47:20', 'no', '14', 'u', '2016-12-29 03:09:05');
INSERT INTO `user_archive` VALUES ('25', 'kamil', 'f8029115524750cdc26c1e90fc033c019d48ee5e', 'kamilkf1@wp.pl', '3', 'Kamil', 'Kapka', '1', '798687923', '29', '2016-12-13 13:47:20', 'no', '14', 'u', '2016-12-29 03:12:24');
INSERT INTO `user_archive` VALUES ('26', 'kamil', 'f8029115524750cdc26c1e90fc033c019d48ee5e', 'kamilkf1@wp.pl', '2', 'Kamil', 'Kapka', '1', '798687923', '29', '2016-12-13 13:47:20', 'no', '14', 'u', '2016-12-30 11:14:43');
INSERT INTO `user_archive` VALUES ('27', 'interia', 'bcc6558640cf09ca4c0c572d0300fb2f7b2138cd', 'interia@interia.pl', '3', 'interia', 'kamil', '2', '123', '30', '2016-12-13 13:57:32', 'no', '15', 'd', '2016-12-30 16:29:05');
INSERT INTO `user_archive` VALUES ('28', 'kasia', '8711e52ac6935d54e8974ae5f530e5c6a400f43d', 'kasia@p.pl', '3', 'Kasia', 'Kapka', '2', '123', '31', '2016-12-13 18:40:27', 'no', '16', 'd', '2016-12-30 21:14:44');
INSERT INTO `user_archive` VALUES ('29', 'kasia', '548c1aa414f6836228f0de74394f72315ac6af50', 'kasia@a.pl', '3', 'kasia', 'kasia', '2', '2', '32', '2016-12-30 21:17:02', 'no', '17', 'd', '2016-12-30 21:22:57');
INSERT INTO `user_archive` VALUES ('30', 'kasia', 'a06e0b0746e4afc4c2975c0300c60086832918fc', 'kasia@a.pl', '3', 'kasia', 'kasia', '2', '3', '33', '2016-12-30 21:23:46', 'no', '18', 'u', '2016-12-30 21:24:57');
INSERT INTO `user_archive` VALUES ('31', 'kasia', 'fd7fdcc76f5f7560ca4fdcc5a6e640f7e7cc02db', 'kasia@a.pl', '3', 'kasia', 'kapka', '2', '3', '33', '2016-12-30 21:23:46', 'no', '18', 'd', '2016-12-30 21:25:44');
INSERT INTO `user_archive` VALUES ('32', 'kasia', '56fb201c2aff26d1a736998ba4ef194474cd4926', 'kasia@a.pl', '3', 'aa', 'aa', '2', '2', '34', '2016-12-30 21:27:59', 'no', '19', 'd', '2016-12-30 21:33:14');
INSERT INTO `user_archive` VALUES ('33', 'julia', 'f8b271e78ad50bcc82f28225fbd3e27e9e637120', 'julia@p.pl', '3', 'julia', 'julia', '2', '4', '35', '2016-12-30 21:35:02', 'no', '20', 'd', '2016-12-30 21:44:29');
INSERT INTO `user_archive` VALUES ('34', 'kasia', 'd35356bd459cf4db9684b1032132ad082f9f2379', 'k@p.pl', '3', 'Kasia', 'Kasia', '1', '56464', '36', '2017-01-01 21:20:51', 'no', '15', 'd', '2017-01-01 21:22:24');
INSERT INTO `user_archive` VALUES ('35', 'kasia', '8313bbfe097b769bd490219fb7ecba57d5fd5d65', 'k@p.pl', '3', 'kasia', 'kasia', '2', '54', '37', '2017-01-01 21:24:18', 'no', '16', 'd', '2017-01-01 21:25:55');
INSERT INTO `user_archive` VALUES ('36', 'ilona', '39a7554a1fd23510b72f682495c91a4907e36acf', 'i@w.pl', '3', 'a', 'a', '2', '232', '38', '2017-01-01 23:16:49', 'no', '17', 'd', '2017-01-01 23:30:38');
INSERT INTO `user_archive` VALUES ('37', 'kasia', '101f9681e8fca88fce78af5fea739848fc88e63c', 'k@p.pl', '3', 'k', 'k', '2', '12', '39', '2017-01-02 20:34:18', 'no', '15', 'd', '2017-01-02 20:34:33');
INSERT INTO `user_archive` VALUES ('38', 'oidfkdsjskdla', '795d6be7e71e8e265f9999ef8b376bc255566329', 'oidfkdsjskdl@oidfkdsjskdl.pla', '3', 'oidfkdsjskdl', 'oidfkdsjskdl', '1', '123', '55', '2017-01-05 12:19:16', 'no', '30', 'd', '2017-01-05 16:04:57');
INSERT INTO `user_archive` VALUES ('39', 'uuuuu', 'f067d47d6587a36ed6a9641d914dba3a57d09271', 'uuuuu@uuuuu.pl', '3', 'uuuuu', 'uuuuu', '2', '123', '45', '2017-01-05 11:50:38', 'no', '20', 'd', '2017-01-05 16:05:04');
INSERT INTO `user_archive` VALUES ('40', 'uuuop', 'de27f95bb06d48970643a603ebfcacda63ca8d8c', 'uuuop@p.ppl', '3', 'uuuop', 'uuuop', '2', '233', '46', '2017-01-05 11:51:48', 'no', '21', 'd', '2017-01-05 16:05:13');
INSERT INTO `user_archive` VALUES ('41', 'kamil', 'f8029115524750cdc26c1e90fc033c019d48ee5e', 'kamilkf1@wp.pl', '1', 'Kamil', 'Kapka', '1', '798687923', '29', '2016-12-13 13:47:20', 'no', '14', 'u', '2017-01-05 16:10:04');
INSERT INTO `user_archive` VALUES ('42', 'kasia321', 'b3c8f89c7b93a99a52a6428edd6b5e317a63e932', 'ada@p.pl', '3', 'asas', 'sas', '2', '2', '61', '2017-01-05 16:26:47', 'no', '36', 'u', '2017-01-05 16:28:22');
INSERT INTO `user_archive` VALUES ('43', 'admin', '67d7cac4bad0e5331f688c334a59e6413e67dce2', 'admin@admin.pl', '3', 'admin', 'admin', '2', '123', '62', '2017-01-05 16:29:17', 'no', '37', 'u', '2017-01-05 16:29:35');
INSERT INTO `user_archive` VALUES ('44', 'admin', '67d7cac4bad0e5331f688c334a59e6413e67dce2', 'admin@admin.pl', '1', 'admin', 'admin', '2', '123', '62', '2017-01-05 16:29:17', 'no', '37', 'u', '2017-01-05 16:30:17');
INSERT INTO `user_archive` VALUES ('45', 'qwerty', '0a6902dd67c98e8978d588b445c370ade4f318d2', 'qwerty@qwerty.qwerty', '3', 'qwerty', 'qwerty', '2', '123', '48', '2017-01-05 11:56:12', 'no', '23', 'd', '2017-01-05 16:34:19');
INSERT INTO `user_archive` VALUES ('46', 'rtgfgd', '00c0a1b3c4ad949318ebe5c26f83aecb807596c9', 'rtgfgd@rtgfgd.pl', '3', 'rtgfgd', 'rtgfgd', '2', '12', '58', '2017-01-05 12:24:32', 'no', '33', 'd', '2017-01-05 16:34:23');
INSERT INTO `user_archive` VALUES ('47', 'retggdfg', 'cf6a401f9bf7704edf7e9b7bdf5c366d6a13e5fe', 'retggdfg@retggdfg.pl', '3', 'retggdfg', 'retggdfg', '2', '123', '60', '2017-01-05 12:37:31', 'no', '35', 'd', '2017-01-05 16:48:58');
INSERT INTO `user_archive` VALUES ('48', 'asia123', 'ecabab29b5a7fdcbfc0b95bad5c5cdf1cbd406a6', 'asia123@asia123.pl', '3', 'asia', 'asia', '2', '12', '40', '2017-01-05 11:27:30', 'no', '15', 'd', '2017-01-05 16:49:48');
INSERT INTO `user_archive` VALUES ('49', 'noscript', 'f1d372d5c4c35644397929e2ef8b39e7a8e33c0d', 'aa@a.pl', '3', 'noscript', 'noscript', '2', '122', '51', '2017-01-05 12:13:25', 'no', '26', 'd', '2017-01-05 16:49:54');
INSERT INTO `user_archive` VALUES ('50', 'zxcera', '13f46a493d2efa5dfeb44895ea09725d0cfb7e80', 'zxcera@zxcera.zxcera', '3', 'zxcera', 'zxcera', '1', '12', '50', '2017-01-05 12:09:28', 'no', '25', 'd', '2017-01-05 17:44:23');
INSERT INTO `user_archive` VALUES ('51', 'kkoewjrke', '06293eb2deb87d7868c19e2a6c313e95440fa9d8', 'kkoewjrke@p.pl', '3', 'kkoewjrke', 'kkoewjrke', '2', '12', '56', '2017-01-05 12:20:47', 'no', '31', 'd', '2017-01-05 17:46:41');
INSERT INTO `user_archive` VALUES ('52', 'ppppp', '21b9fb4a3c4554e74e079ef45a2872df8f0d25fc', 'ppppp@ppppp.ty', '3', 'ppppp', 'ppppp', '2', '123', '44', '2017-01-05 11:47:57', 'no', '19', 'd', '2017-01-05 17:47:07');
INSERT INTO `user_archive` VALUES ('53', 'kasia321', 'd095cefe14c34ca3f401cd867503264729cdb6d1', 'ada@p.pl', '3', 'asas', 'sas', '2', '2', '61', '2017-01-05 16:26:47', 'no', '36', 'd', '2017-01-05 17:47:12');
INSERT INTO `user_archive` VALUES ('54', 'kamil', '22306c4fb0f778de1ee3914ed5443ae1b087a17d', 'kamilkf1@wp.pl', '1', 'Kamil', 'Kapka', '1', '798687923', '29', '2016-12-13 13:47:20', 'no', '14', 'd', '2017-01-05 17:47:17');
INSERT INTO `user_archive` VALUES ('55', 'kasia123', 'a49bd5f830c786dae90aa97286504b420f634015', 'kasia123@wp.pl', '3', 'kakaka', 'kakak', '2', '12', '41', '2017-01-05 11:33:30', 'no', '16', 'd', '2017-01-06 19:19:41');
INSERT INTO `user_archive` VALUES ('56', 'kkkkkk', 'a47abd895e666621e189f7434886b2d334fa0ec8', 'kkkkkk@wp.pl', '3', 'kkkkkk', 'kkkkkk', '2', '1', '42', '2017-01-05 11:36:42', 'no', '17', 'd', '2017-01-06 19:19:44');
INSERT INTO `user_archive` VALUES ('57', 'qqqqqq', '5a561316a4f439482b7457cfaf5c3ec30eb33d95', 'qqqqqq@wp.pl', '3', 'qqqqqq', 'qqqqqq', '2', '123', '43', '2017-01-05 11:37:28', 'no', '18', 'd', '2017-01-06 19:19:46');
INSERT INTO `user_archive` VALUES ('58', 'qqwwe', '3329fbd268896e780ca4656f9de09ec09830c68c', 'qqwwe@qqwwe.pl', '3', 'qqwwe', 'qqwwe', '1', '23', '47', '2017-01-05 11:53:56', 'no', '22', 'd', '2017-01-06 19:19:50');
INSERT INTO `user_archive` VALUES ('59', 'trfbgyhj', '8e4df5d3878663555e1b615cd6b12900050f2e33', 'trfbgyhj@wew.pl', '3', 'trfbgyhj', 'trfbgyhj', '2', '34', '49', '2017-01-05 12:04:40', 'no', '24', 'd', '2017-01-06 19:19:52');
INSERT INTO `user_archive` VALUES ('60', 'noscripta', '2955e580cd0271a35912494ab827c0b753305061', 'aaa@a.pl', '3', 'noscript', 'noscript', '2', '122', '52', '2017-01-05 12:15:34', 'no', '27', 'd', '2017-01-06 19:19:54');
INSERT INTO `user_archive` VALUES ('61', 'noscriptaa', 'af1e52d15e008c86c8bd6cc8f5519de93297a5a4', 'aaa@a.pla', '3', 'noscript', 'noscript', '2', '122', '53', '2017-01-05 12:16:28', 'no', '28', 'd', '2017-01-06 19:19:56');
INSERT INTO `user_archive` VALUES ('62', 'oidfkdsjskdl', '7fff4d8ca6589a53b3ca906b9d18de354451e0ba', 'oidfkdsjskdl@oidfkdsjskdl.pl', '3', 'oidfkdsjskdl', 'oidfkdsjskdl', '1', '123', '54', '2017-01-05 12:18:49', 'no', '29', 'd', '2017-01-06 19:19:58');
INSERT INTO `user_archive` VALUES ('63', 'lfregjergj', 'dae93fedd014c5ad3162359568bb1a67f7b4f2a5', 'lfregjergj@lfregjergj.pl', '3', 'lfregjergj', 'lfregjergj', '1', '123', '57', '2017-01-05 12:23:44', 'no', '32', 'd', '2017-01-06 19:20:00');
INSERT INTO `user_archive` VALUES ('64', 'dfgdfgfgd', '3264db1a05da543ae36a68cc6b7fdbe5b1c98bc2', 'dfgdfgfgd@dfgdfgfgd.pl', '3', 'dfgdfgfgd', 'dfgdfgfgd', '1', '12', '59', '2017-01-05 12:36:39', 'no', '34', 'd', '2017-01-06 19:20:05');
INSERT INTO `user_archive` VALUES ('65', 'admin', '67d7cac4bad0e5331f688c334a59e6413e67dce2', 'admin@admin.pl', '1', 'Administrator', 'Kamil', '2', '123', '62', '2017-01-05 16:29:17', 'no', '37', 'u', '2017-01-06 19:20:58');
INSERT INTO `user_archive` VALUES ('66', 'admin', '67d7cac4bad0e5331f688c334a59e6413e67dce2', 'admin@admin.pl', '1', 'Administrator', 'Kamil', '2', '123', '62', '2017-01-05 16:29:17', 'no', '37', 'u', '2017-01-06 20:20:24');
INSERT INTO `user_archive` VALUES ('67', 'admin', '67d7cac4bad0e5331f688c334a59e6413e67dce2', 'admin@admin.pl', '1', 'Administrator', 'Kamil', '2', '123', '62', '2017-01-05 16:29:17', 'no', '37', 'u', '2017-01-06 20:20:42');
INSERT INTO `user_archive` VALUES ('68', 'admin', '67d7cac4bad0e5331f688c334a59e6413e67dce2', 'admin@admin.pl', '1', 'Administrator', 'Kamil', '2', '123', '62', '2017-01-05 16:29:17', 'no', '37', 'u', '2017-01-06 20:20:47');
INSERT INTO `user_archive` VALUES ('69', 'kasia', '0dece0389c92b15dfd6f11361aeb2e2f50aaaf55', 'kasia@p.pl', '3', 'kasia', 'kasia', '2', '12', '64', '2017-01-06 20:22:32', 'no', '39', 'u', '2017-01-06 20:24:18');
INSERT INTO `user_archive` VALUES ('70', 'kasia', '0dece0389c92b15dfd6f11361aeb2e2f50aaaf55', 'kasia@p.pl', '3', 'kasia', 'kasia', '2', '12', '64', '2017-01-06 20:22:32', 'no', '39', 'u', '2017-01-06 20:24:22');
INSERT INTO `user_archive` VALUES ('71', 'kasia', '0dece0389c92b15dfd6f11361aeb2e2f50aaaf55', 'kasia@p.pl', '3', 'kasia', 'kasia', '2', '12', '64', '2017-01-06 20:22:32', 'no', '39', 'u', '2017-01-06 20:24:25');
INSERT INTO `user_archive` VALUES ('72', 'admin', '67d7cac4bad0e5331f688c334a59e6413e67dce2', 'admin@admin.pl', '1', 'Administrator', 'Kamil', '2', '123', '62', '2017-01-05 16:29:17', 'no', '37', 'u', '2017-01-06 20:26:21');
INSERT INTO `user_archive` VALUES ('73', 'admin', '67d7cac4bad0e5331f688c334a59e6413e67dce2', 'admin@admin.pl', '1', 'Administrator', 'Kamil', '2', '123', '62', '2017-01-05 16:29:17', 'no', '37', 'u', '2017-01-06 20:26:48');
INSERT INTO `user_archive` VALUES ('74', 'admin', '67d7cac4bad0e5331f688c334a59e6413e67dce2', 'admin@admin.pl', '1', 'Administrator', 'Kamil', '2', '123', '62', '2017-01-05 16:29:17', 'no', '37', 'u', '2017-01-06 20:26:52');
INSERT INTO `user_archive` VALUES ('75', 'admin', '67d7cac4bad0e5331f688c334a59e6413e67dce2', 'admin@admin.pl', '1', 'Administrator', 'Kamil', '2', '123', '62', '2017-01-05 16:29:17', 'no', '37', 'u', '2017-01-06 20:26:57');
INSERT INTO `user_archive` VALUES ('76', 'admin', '67d7cac4bad0e5331f688c334a59e6413e67dce2', 'admin@admin.pl', '1', 'Administrator', 'Kamil', '2', '123', '62', '2017-01-05 16:29:17', 'no', '37', 'u', '2017-01-07 10:58:44');
INSERT INTO `user_archive` VALUES ('77', 'admin', '67d7cac4bad0e5331f688c334a59e6413e67dce2', 'admin@admin.pl', '1', 'Administrator', 'Kamil', '2', '123', '62', '2017-01-05 16:29:17', 'no', '37', 'u', '2017-01-07 10:58:49');
INSERT INTO `user_archive` VALUES ('78', 'admin', '67d7cac4bad0e5331f688c334a59e6413e67dce2', 'admin@admin.pl', '1', 'Administrator', 'Kamil', '2', '123', '62', '2017-01-05 16:29:17', 'no', '37', 'u', '2017-01-07 10:58:53');
INSERT INTO `user_archive` VALUES ('79', 'kasia', '0dece0389c92b15dfd6f11361aeb2e2f50aaaf55', 'kasia@p.pl', '3', 'kasia', 'kasia', '2', '12', '64', '2017-01-06 20:22:32', 'no', '39', 'u', '2017-01-07 11:05:13');
INSERT INTO `user_archive` VALUES ('80', 'kasia', '0dece0389c92b15dfd6f11361aeb2e2f50aaaf55', 'kasia@p.pl', '3', 'kasia', 'kasia', '2', '12', '64', '2017-01-06 20:22:32', 'no', '39', 'u', '2017-01-07 11:05:18');
INSERT INTO `user_archive` VALUES ('81', 'kasia', '0dece0389c92b15dfd6f11361aeb2e2f50aaaf55', 'kasia@p.pl', '3', 'kasia', 'kasia', '2', '12', '64', '2017-01-06 20:22:32', 'no', '39', 'u', '2017-01-07 11:05:24');
INSERT INTO `user_archive` VALUES ('82', 'admin', '67d7cac4bad0e5331f688c334a59e6413e67dce2', 'admin@admin.pl', '1', 'Administrator', 'Kamil', '2', '123', '62', '2017-01-05 16:29:17', 'no', '37', 'u', '2017-01-07 11:06:51');
INSERT INTO `user_archive` VALUES ('83', 'admin', '67d7cac4bad0e5331f688c334a59e6413e67dce2', 'admin@admin.pl', '1', 'Administrator', 'Kamil', '2', '123', '62', '2017-01-05 16:29:17', 'no', '37', 'u', '2017-01-07 11:06:55');
INSERT INTO `user_archive` VALUES ('84', 'admin', '67d7cac4bad0e5331f688c334a59e6413e67dce2', 'admin@admin.pl', '1', 'Administrator', 'Kamil', '2', '123', '62', '2017-01-05 16:29:17', 'no', '37', 'u', '2017-01-07 11:06:59');
INSERT INTO `user_archive` VALUES ('85', 'admin', '67d7cac4bad0e5331f688c334a59e6413e67dce2', 'admin@admin.pl', '1', 'Administrator', 'Kamil', '2', '123', '62', '2017-01-05 16:29:17', 'no', '37', 'u', '2017-01-07 11:13:03');
INSERT INTO `user_archive` VALUES ('86', 'admin', '67d7cac4bad0e5331f688c334a59e6413e67dce2', 'admin@admin.pl', '1', 'Administrator', 'Kamil', '2', '123', '62', '2017-01-05 16:29:17', 'no', '37', 'u', '2017-01-07 11:13:07');
INSERT INTO `user_archive` VALUES ('87', 'admin', '67d7cac4bad0e5331f688c334a59e6413e67dce2', 'admin@admin.pl', '1', 'Administrator', 'Kamil', '2', '123', '62', '2017-01-05 16:29:17', 'no', '37', 'u', '2017-01-07 11:13:11');
INSERT INTO `user_archive` VALUES ('88', 'admin', '67d7cac4bad0e5331f688c334a59e6413e67dce2', 'admin@admin.pl', '1', 'Administrator', 'Kamil', '2', '123', '62', '2017-01-05 16:29:17', 'no', '37', 'u', '2017-01-07 11:16:14');
INSERT INTO `user_archive` VALUES ('89', 'admin', '67d7cac4bad0e5331f688c334a59e6413e67dce2', 'admin@admin.pl', '1', 'Administrator', 'Kamil', '2', '123', '62', '2017-01-05 16:29:17', 'no', '37', 'u', '2017-01-07 11:16:18');
INSERT INTO `user_archive` VALUES ('90', 'admin', '67d7cac4bad0e5331f688c334a59e6413e67dce2', 'admin@admin.pl', '1', 'Administrator', 'Kamil', '2', '123', '62', '2017-01-05 16:29:17', 'no', '37', 'u', '2017-01-07 11:16:22');
INSERT INTO `user_archive` VALUES ('91', 'kasia', '0dece0389c92b15dfd6f11361aeb2e2f50aaaf55', 'kasia@p.pl', '3', 'kasia', 'kasia', '2', '12', '64', '2017-01-06 20:22:32', 'no', '39', 'u', '2017-01-07 11:25:19');
INSERT INTO `user_archive` VALUES ('92', 'kasia', '0dece0389c92b15dfd6f11361aeb2e2f50aaaf55', 'kasia@p.pl', '3', 'kasia', 'kasia', '2', '12', '64', '2017-01-06 20:22:32', 'no', '39', 'u', '2017-01-07 11:25:23');
INSERT INTO `user_archive` VALUES ('93', 'kasia', '0dece0389c92b15dfd6f11361aeb2e2f50aaaf55', 'kasia@p.pl', '3', 'kasia', 'kasia', '2', '12', '64', '2017-01-06 20:22:32', 'no', '39', 'u', '2017-01-07 11:25:26');
INSERT INTO `user_archive` VALUES ('94', 'admin', '67d7cac4bad0e5331f688c334a59e6413e67dce2', 'admin@admin.pl', '1', 'Administrator', 'Kamil', '2', '123', '62', '2017-01-05 16:29:17', 'no', '37', 'u', '2017-01-07 11:26:54');
INSERT INTO `user_archive` VALUES ('95', 'admin', '67d7cac4bad0e5331f688c334a59e6413e67dce2', 'admin@admin.pl', '1', 'Administrator', 'Kamil', '2', '123', '62', '2017-01-05 16:29:17', 'no', '37', 'u', '2017-01-07 11:27:08');
INSERT INTO `user_archive` VALUES ('96', 'admin', '67d7cac4bad0e5331f688c334a59e6413e67dce2', 'admin@admin.pl', '1', 'Administrator', 'Kamil', '2', '123', '62', '2017-01-05 16:29:17', 'no', '37', 'u', '2017-01-07 11:27:21');
INSERT INTO `user_archive` VALUES ('97', 'admin', '67d7cac4bad0e5331f688c334a59e6413e67dce2', 'admin@admin.pl', '1', 'Administrator', 'Kamil', '2', '123', '62', '2017-01-05 16:29:17', 'no', '37', 'u', '2017-01-07 11:37:07');
INSERT INTO `user_archive` VALUES ('98', 'admin', '67d7cac4bad0e5331f688c334a59e6413e67dce2', 'admin@admin.pl', '1', 'Administrator', 'Kamil', '2', '123', '62', '2017-01-05 16:29:17', 'no', '37', 'u', '2017-01-07 11:37:21');
INSERT INTO `user_archive` VALUES ('99', 'admin', '67d7cac4bad0e5331f688c334a59e6413e67dce2', 'admin@admin.pl', '1', 'Administrator', 'Kamil', '2', '123', '62', '2017-01-05 16:29:17', 'no', '37', 'u', '2017-01-07 11:37:28');
INSERT INTO `user_archive` VALUES ('100', 'admin', '67d7cac4bad0e5331f688c334a59e6413e67dce2', 'admin@admin.pl', '1', 'Administrator', 'Kamil', '2', '123', '62', '2017-01-05 16:29:17', 'no', '37', 'u', '2017-01-07 11:38:45');
INSERT INTO `user_archive` VALUES ('101', 'admin', '67d7cac4bad0e5331f688c334a59e6413e67dce2', 'admin@admin.pl', '1', 'Administrator', 'Kamil', '2', '123', '62', '2017-01-05 16:29:17', 'no', '37', 'u', '2017-01-07 11:38:49');
INSERT INTO `user_archive` VALUES ('102', 'admin', '67d7cac4bad0e5331f688c334a59e6413e67dce2', 'admin@admin.pl', '1', 'Administrator', 'Kamil', '2', '123', '62', '2017-01-05 16:29:17', 'no', '37', 'u', '2017-01-07 11:38:53');
INSERT INTO `user_archive` VALUES ('103', 'admin', '67d7cac4bad0e5331f688c334a59e6413e67dce2', 'admin@admin.pl', '1', 'Administrator', 'Kamil', '2', '123', '62', '2017-01-05 16:29:17', 'no', '37', 'u', '2017-01-07 11:39:43');
INSERT INTO `user_archive` VALUES ('104', 'admin', '67d7cac4bad0e5331f688c334a59e6413e67dce2', 'admin@admin.pl', '1', 'Administrator', 'Kamil', '2', '123', '62', '2017-01-05 16:29:17', 'no', '37', 'u', '2017-01-07 11:39:46');
INSERT INTO `user_archive` VALUES ('105', 'admin', '67d7cac4bad0e5331f688c334a59e6413e67dce2', 'admin@admin.pl', '1', 'Administrator', 'Kamil', '2', '123', '62', '2017-01-05 16:29:17', 'no', '37', 'u', '2017-01-07 11:39:50');
INSERT INTO `user_archive` VALUES ('106', 'admin', '67d7cac4bad0e5331f688c334a59e6413e67dce2', 'admin@admin.pl', '1', 'Administrator', 'Kamil', '2', '123', '62', '2017-01-05 16:29:17', 'no', '37', 'u', '2017-01-07 11:40:30');
INSERT INTO `user_archive` VALUES ('107', 'admin', '67d7cac4bad0e5331f688c334a59e6413e67dce2', 'admin@admin.pl', '1', 'Administrator', 'Kamil', '2', '123', '62', '2017-01-05 16:29:17', 'no', '37', 'u', '2017-01-07 11:40:33');
INSERT INTO `user_archive` VALUES ('108', 'admin', '67d7cac4bad0e5331f688c334a59e6413e67dce2', 'admin@admin.pl', '1', 'Administrator', 'Kamil', '2', '123', '62', '2017-01-05 16:29:17', 'no', '37', 'u', '2017-01-07 11:40:36');
INSERT INTO `user_archive` VALUES ('109', 'admin', '67d7cac4bad0e5331f688c334a59e6413e67dce2', 'admin@admin.pl', '1', 'Administrator', 'Kamil', '2', '123', '62', '2017-01-05 16:29:17', 'no', '37', 'u', '2017-01-07 11:41:36');
INSERT INTO `user_archive` VALUES ('110', 'admin', '67d7cac4bad0e5331f688c334a59e6413e67dce2', 'admin@admin.pl', '1', 'Administrator', 'Kamil', '2', '123', '62', '2017-01-05 16:29:17', 'no', '37', 'u', '2017-01-07 11:41:48');
INSERT INTO `user_archive` VALUES ('111', 'admin', '67d7cac4bad0e5331f688c334a59e6413e67dce2', 'admin@admin.pl', '1', 'Administrator', 'Kamil', '2', '123', '62', '2017-01-05 16:29:17', 'no', '37', 'u', '2017-01-07 11:41:53');
INSERT INTO `user_archive` VALUES ('112', 'admin', '67d7cac4bad0e5331f688c334a59e6413e67dce2', 'admin@admin.pl', '1', 'Administrator', 'Kamil', '2', '123', '62', '2017-01-05 16:29:17', 'no', '37', 'u', '2017-01-07 11:43:22');
INSERT INTO `user_archive` VALUES ('113', 'admin', '67d7cac4bad0e5331f688c334a59e6413e67dce2', 'admin@admin.pl', '1', 'Administrator', 'Kamil', '2', '123', '62', '2017-01-05 16:29:17', 'no', '37', 'u', '2017-01-07 11:43:26');
INSERT INTO `user_archive` VALUES ('114', 'admin', '67d7cac4bad0e5331f688c334a59e6413e67dce2', 'admin@admin.pl', '1', 'Administrator', 'Kamil', '2', '123', '62', '2017-01-05 16:29:17', 'no', '37', 'u', '2017-01-07 11:43:30');
INSERT INTO `user_archive` VALUES ('115', 'admin', '67d7cac4bad0e5331f688c334a59e6413e67dce2', 'admin@admin.pl', '1', 'Administrator', 'Kamil', '2', '123', '62', '2017-01-05 16:29:17', 'no', '37', 'u', '2017-01-07 11:44:49');
INSERT INTO `user_archive` VALUES ('116', 'admin', '67d7cac4bad0e5331f688c334a59e6413e67dce2', 'admin@admin.pl', '1', 'Administrator', 'Kamil', '2', '123', '62', '2017-01-05 16:29:17', 'no', '37', 'u', '2017-01-07 11:44:52');
INSERT INTO `user_archive` VALUES ('117', 'admin', '67d7cac4bad0e5331f688c334a59e6413e67dce2', 'admin@admin.pl', '1', 'Administrator', 'Kamil', '2', '123', '62', '2017-01-05 16:29:17', 'no', '37', 'u', '2017-01-07 11:44:57');
INSERT INTO `user_archive` VALUES ('118', 'admin', '67d7cac4bad0e5331f688c334a59e6413e67dce2', 'admin@admin.pl', '1', 'Administrator', 'Kamil', '2', '123', '62', '2017-01-05 16:29:17', 'no', '37', 'u', '2017-01-07 11:48:04');
INSERT INTO `user_archive` VALUES ('119', 'admin', '67d7cac4bad0e5331f688c334a59e6413e67dce2', 'admin@admin.pl', '1', 'Administrator', 'Kamil', '2', '123', '62', '2017-01-05 16:29:17', 'no', '37', 'u', '2017-01-07 11:48:08');
INSERT INTO `user_archive` VALUES ('120', 'admin', '67d7cac4bad0e5331f688c334a59e6413e67dce2', 'admin@admin.pl', '1', 'Administrator', 'Kamil', '2', '123', '62', '2017-01-05 16:29:17', 'no', '37', 'u', '2017-01-07 11:48:11');
INSERT INTO `user_archive` VALUES ('121', 'admin', '67d7cac4bad0e5331f688c334a59e6413e67dce2', 'admin@admin.pl', '1', 'Administrator', 'Kamil', '2', '123', '62', '2017-01-05 16:29:17', 'no', '37', 'u', '2017-01-07 11:49:17');
INSERT INTO `user_archive` VALUES ('122', 'admin', '67d7cac4bad0e5331f688c334a59e6413e67dce2', 'admin@admin.pl', '1', 'Administrator', 'Kamil', '2', '123', '62', '2017-01-05 16:29:17', 'no', '37', 'u', '2017-01-07 11:49:24');
INSERT INTO `user_archive` VALUES ('123', 'admin', '67d7cac4bad0e5331f688c334a59e6413e67dce2', 'admin@admin.pl', '1', 'Administrator', 'Kamil', '2', '123', '62', '2017-01-05 16:29:17', 'no', '37', 'u', '2017-01-07 11:49:28');
INSERT INTO `user_archive` VALUES ('124', 'admin', '67d7cac4bad0e5331f688c334a59e6413e67dce2', 'admin@admin.pl', '1', 'Administrator', 'Kamil', '2', '123', '62', '2017-01-05 16:29:17', 'no', '37', 'u', '2017-01-07 11:49:32');
INSERT INTO `user_archive` VALUES ('125', 'admin', '67d7cac4bad0e5331f688c334a59e6413e67dce2', 'admin@admin.pl', '1', 'Administrator', 'Kamil', '2', '123', '62', '2017-01-05 16:29:17', 'no', '37', 'u', '2017-01-07 11:49:35');
INSERT INTO `user_archive` VALUES ('126', 'admin', '67d7cac4bad0e5331f688c334a59e6413e67dce2', 'admin@admin.pl', '1', 'Administrator', 'Kamil', '2', '123', '62', '2017-01-05 16:29:17', 'no', '37', 'u', '2017-01-07 11:49:39');
INSERT INTO `user_archive` VALUES ('127', 'admin', '67d7cac4bad0e5331f688c334a59e6413e67dce2', 'admin@admin.pl', '1', 'Administrator', 'Kamil', '2', '123', '62', '2017-01-05 16:29:17', 'no', '37', 'u', '2017-01-07 11:49:42');
INSERT INTO `user_archive` VALUES ('128', 'admin', '67d7cac4bad0e5331f688c334a59e6413e67dce2', 'admin@admin.pl', '1', 'Administrator', 'Kamil', '2', '123', '62', '2017-01-05 16:29:17', 'no', '37', 'u', '2017-01-07 11:50:48');
INSERT INTO `user_archive` VALUES ('129', 'admin', '67d7cac4bad0e5331f688c334a59e6413e67dce2', 'admin@admin.pl', '1', 'Administrator', 'Kamil', '2', '123', '62', '2017-01-05 16:29:17', 'no', '37', 'u', '2017-01-07 11:50:56');
INSERT INTO `user_archive` VALUES ('130', 'admin', '67d7cac4bad0e5331f688c334a59e6413e67dce2', 'admin@admin.pl', '1', 'Administrator', 'Kamil', '2', '123', '62', '2017-01-05 16:29:17', 'no', '37', 'u', '2017-01-07 11:51:00');
INSERT INTO `user_archive` VALUES ('131', 'admin', '67d7cac4bad0e5331f688c334a59e6413e67dce2', 'admin@admin.pl', '1', 'Administrator', 'Kamil', '2', '123', '62', '2017-01-05 16:29:17', 'no', '37', 'u', '2017-01-07 12:19:22');
INSERT INTO `user_archive` VALUES ('132', 'admin', '67d7cac4bad0e5331f688c334a59e6413e67dce2', 'admin@admin.pl', '1', 'Administrator', 'Kamil', '2', '123', '62', '2017-01-05 16:29:17', 'no', '37', 'u', '2017-01-07 12:19:26');
INSERT INTO `user_archive` VALUES ('133', 'admin', '67d7cac4bad0e5331f688c334a59e6413e67dce2', 'admin@admin.pl', '1', 'Administrator', 'Kamil', '2', '123', '62', '2017-01-05 16:29:17', 'no', '37', 'u', '2017-01-07 12:19:31');
INSERT INTO `user_archive` VALUES ('134', 'admin', '67d7cac4bad0e5331f688c334a59e6413e67dce2', 'admin@admin.pl', '1', 'Administrator', 'Kamil', '2', '123', '62', '2017-01-05 16:29:17', 'no', '37', 'u', '2017-01-07 12:39:07');
INSERT INTO `user_archive` VALUES ('135', 'admin', '67d7cac4bad0e5331f688c334a59e6413e67dce2', 'admin@admin.pl', '1', 'Administrator', 'Kamil', '2', '123', '62', '2017-01-05 16:29:17', 'no', '37', 'u', '2017-01-07 12:39:10');
INSERT INTO `user_archive` VALUES ('136', 'admin', '67d7cac4bad0e5331f688c334a59e6413e67dce2', 'admin@admin.pl', '1', 'Administrator', 'Kamil', '2', '123', '62', '2017-01-05 16:29:17', 'no', '37', 'u', '2017-01-07 12:39:14');
INSERT INTO `user_archive` VALUES ('137', 'admin', '67d7cac4bad0e5331f688c334a59e6413e67dce2', 'admin@admin.pl', '1', 'Administrator', 'Kamil', '2', '123', '62', '2017-01-05 16:29:17', 'no', '37', 'u', '2017-01-07 22:46:55');
INSERT INTO `user_archive` VALUES ('138', 'admin', '67d7cac4bad0e5331f688c334a59e6413e67dce2', 'admin@admin.pl', '1', 'Administrator', 'Kamil', '2', '123', '62', '2017-01-05 16:29:17', 'no', '37', 'u', '2017-01-07 22:47:00');
INSERT INTO `user_archive` VALUES ('139', 'admin', '67d7cac4bad0e5331f688c334a59e6413e67dce2', 'admin@admin.pl', '1', 'Administrator', 'Kamil', '2', '123', '62', '2017-01-05 16:29:17', 'no', '37', 'u', '2017-01-07 22:47:05');
INSERT INTO `user_archive` VALUES ('140', 'zosia', '4a208dc85c210f90e1d60cf05ad3f72f59ca7494', 'zosia@zosia.pl', '3', 'zosia', 'zosia', '2', '12', '63', '2017-01-06 19:25:11', 'no', '38', 'd', '2017-01-08 11:35:14');
INSERT INTO `user_archive` VALUES ('141', 'dominika', '09766d453f9ac1fefae9ab4bb450e5b2a8d31cee', 'asa@p.pl', '3', 'a', 'a', '1', '12', '65', '2017-01-08 14:55:53', 'no', '40', 'u', '2017-01-08 14:56:01');
INSERT INTO `user_archive` VALUES ('142', 'admin', '67d7cac4bad0e5331f688c334a59e6413e67dce2', 'admin@admin.pl', '1', 'Administrator', 'Kamil', '2', '123', '62', '2017-01-05 16:29:17', 'no', '37', 'u', '2017-01-08 14:57:02');
INSERT INTO `user_archive` VALUES ('143', 'dominika', '09766d453f9ac1fefae9ab4bb450e5b2a8d31cee', 'asa@p.pl', '3', 'a', 'a', '1', '12', '65', '2017-01-08 14:55:53', 'no', '40', 'd', '2017-01-08 14:57:13');
INSERT INTO `user_archive` VALUES ('144', 'iwona', '672bcaa866c26be9c46422b921f32388136438b0', 'qwqwqw@p.pl', '3', 'qwqw', 'qwq', '2', '23', '67', '2017-01-08 17:18:38', 'no', '42', 'd', '2017-01-08 20:00:13');
INSERT INTO `user_archive` VALUES ('145', 'dominika', 'a64f8a3cb8201ca19ba20660ececd7da1c0edfbe', 'asas@p.pl', '3', 'asas', 'asas', '2', '0', '66', '2017-01-08 14:59:15', 'no', '41', 'u', '2017-01-08 20:01:06');
INSERT INTO `user_archive` VALUES ('146', 'dominika', 'a64f8a3cb8201ca19ba20660ececd7da1c0edfbe', 'asas@p.pl', '3', 'asas', 'asas', '2', '0', '66', '2017-01-08 14:59:15', 'no', '41', 'u', '2017-01-08 20:06:23');
INSERT INTO `user_archive` VALUES ('147', 'iwona', '2d1d0e65a0c2c8f872bb686afcd133c8d555e82c', 'asa@p.pl', '3', 'iwona', 'iwona', '2', '12', '68', '2017-01-08 20:06:46', 'no', '43', 'd', '2017-01-08 20:09:17');
INSERT INTO `user_archive` VALUES ('148', 'dominika', 'a64f8a3cb8201ca19ba20660ececd7da1c0edfbe', 'asas@p.pl', '3', 'asas', 'asas', '2', '0', '66', '2017-01-08 14:59:15', 'no', '41', 'd', '2017-01-08 20:13:02');
INSERT INTO `user_archive` VALUES ('149', 'kasia', '0dece0389c92b15dfd6f11361aeb2e2f50aaaf55', 'kasia@p.pl', '3', 'kasia', 'kasia', '2', '12', '64', '2017-01-06 20:22:32', 'no', '39', 'd', '2017-01-08 20:15:35');
INSERT INTO `user_archive` VALUES ('150', 'kasia', '689a235b3234764f9361b7e3dccfec931887c57f', 'kasia@kasia.pl', '3', 'kasia', 'kasia', '2', '123', '69', '2017-01-08 20:18:45', 'no', '44', 'd', '2017-01-08 20:27:06');
INSERT INTO `user_archive` VALUES ('151', 'kasia', '83740918d1137d80806cc09a6f77abded491b9ef', 'kasia@kasia.pl', '3', 'kasia', 'kasia', '2', '123', '70', '2017-01-08 20:28:14', 'no', '45', 'd', '2017-01-08 20:36:40');
INSERT INTO `user_archive` VALUES ('152', 'kasia', '4a54f304d3846ace5e1d8cddb3854f5c5a65bdeb', 'kasia@kasia.pl', '3', 'kasia', 'kasia', '2', '123', '71', '2017-01-08 20:41:38', 'no', '46', 'd', '2017-01-08 20:50:17');
INSERT INTO `user_archive` VALUES ('153', 'admin', '67d7cac4bad0e5331f688c334a59e6413e67dce2', 'admin@admin.pl', '1', 'Administrator', 'Kamil', '2', '123', '62', '2017-01-05 16:29:17', 'no', '37', 'u', '2017-01-08 22:05:56');
INSERT INTO `user_archive` VALUES ('154', 'kasia', 'b21d05edb9329a0f9db539b050470aebc9280df1', 'kasia@kasia.pl', '3', 'ksaia', 'asa', '2', '4', '72', '2017-01-08 20:54:40', 'no', '47', 'd', '2017-01-08 22:15:05');
INSERT INTO `user_archive` VALUES ('155', 'kasia', 'b5fede899a232d47e42ba76185f7e7c62f610277', 'kasia@kasia.pl', '3', 'a', 'a', '2', '2', '73', '2017-01-08 22:22:17', 'no', '48', 'd', '2017-01-08 22:31:35');
INSERT INTO `user_archive` VALUES ('156', 'wiktoria', '74c664ea37cde03d3b98abb291f40a9833e2c73d', 'wiki@wp.pl', '3', 'wiki', 'waka', '2', '23', '75', '2017-01-09 18:17:48', 'no', '50', 'd', '2017-01-09 18:37:06');
INSERT INTO `user_archive` VALUES ('157', 'wiktoria', '9bfd732652e7c13a86e1ad9056ba233b0b063bd8', 'wiktoria@wiktoria.pl', '3', 'wiktoria', 'wiktoria', '1', '123', '76', '2017-01-09 18:39:42', 'no', '51', 'd', '2017-01-09 19:14:13');
INSERT INTO `user_archive` VALUES ('158', 'weronika', 'ab8d9e0438b59b15a8243f040d9e9cfebc13b159', 'weronika@weronika.pl', '3', 'weronika', 'weronika', '2', '123', '74', '2017-01-08 22:22:49', 'no', '49', 'd', '2017-01-09 19:14:30');
INSERT INTO `user_archive` VALUES ('159', 'weronika', '578845f7419dcd5cb30d224db63b4b0d0ae2d906', 'weronika@p.pl', '3', 'weronika', 'weronika', '2', '123', '78', '2017-01-09 19:18:14', 'no', '53', 'd', '2017-01-09 19:29:34');
INSERT INTO `user_archive` VALUES ('160', 'kasia', 'c05ff55ac8951398e7caf5506efe3ac42299ab4b', 'a@p.pl', '3', 'a', 'a', '2', '12', '79', '2017-01-09 19:32:08', 'no', '54', 'd', '2017-01-09 20:02:06');
INSERT INTO `user_archive` VALUES ('161', 'wiktoria', '21c6a225662cef5f0bd605e5a44f5129f6943d58', 'wiki@wiki.pl', '3', 'wiktoria', 'wiktoria', '2', '123', '80', '2017-01-09 19:32:37', 'no', '55', 'd', '2017-01-09 20:17:52');
INSERT INTO `user_archive` VALUES ('162', 'karina', '1ba0f1304ed7999fc65b6612c7f73e4b2e291b90', 'karina@wp.pl', '3', 'karina', 'karina', '2', '123', '81', '2017-01-09 20:19:05', 'no', '56', 'd', '2017-01-09 20:20:32');
INSERT INTO `user_archive` VALUES ('163', 'katerena', 'b38d5edd8e5ee8bcf9d666655b61c8ea1151af4e', 'katerena@p.pl', '3', 'katerena', 'katerena', '1', '123', '82', '2017-01-09 20:22:45', 'no', '57', 'd', '2017-01-09 20:25:35');
INSERT INTO `user_archive` VALUES ('164', 'dominika', '5f1560e339d94f1399606398bb8b058e744632db', 'dominika@p.pl', '3', 'dominika', 'dominika', '2', '12', '77', '2017-01-09 19:17:52', 'no', '52', 'd', '2017-01-09 20:26:16');
INSERT INTO `user_archive` VALUES ('165', 'kasia', '9365b5d51b8bbfc4a8c584c48136f1d4d18cb968', 'kasia@kasia.pl', '3', 'kasia', 'kasia', '2', '123', '83', '2017-01-09 20:29:06', 'no', '58', 'd', '2017-01-09 20:31:02');
INSERT INTO `user_archive` VALUES ('166', 'izabela', '4a40353a22683e01052ff0b4f56985e1a1be7526', 'sasa@wp.plsa', '3', 'aa', 'aa', '2', '123', '89', '2017-01-09 23:37:43', 'no', '43', 'd', '2017-01-09 23:40:23');
INSERT INTO `user_archive` VALUES ('167', 'zbyszek', 'a99ca31ee0611df1e549653c8cbc836c66e4b35f', 'sasa@wp.pl', '3', 'aa', 'aa', '2', '123', '87', '2017-01-09 23:34:33', 'no', '41', 'd', '2017-01-09 23:40:58');
INSERT INTO `user_archive` VALUES ('168', 'weronika', 'd3f7b32bce98dfadff9b2efec4097f4b9856b44b', 'sasa@wp.pls', '3', 'aa', 'aa', '2', '123', '88', '2017-01-09 23:36:15', 'no', '42', 'd', '2017-01-10 00:54:52');
INSERT INTO `user_archive` VALUES ('169', 'kasia', '20ec4b0f02c7baa0ece30a6e0a9788f72399f310', 'kasia@w.pl', '3', 'kasia', 'ksia', '2', '123', '85', '2017-01-09 23:20:30', 'no', '39', 'd', '2017-01-10 00:54:57');
INSERT INTO `user_archive` VALUES ('170', 'kasia', 'fc7e2a4e39bf463b0cf53cd26a665725bdc9411a', 'kasia@kasia.pl', '3', 'k', 'a', '2', '12', '90', '2017-01-10 00:55:29', 'no', '44', 'd', '2017-01-10 01:00:03');

-- ----------------------------
-- Table structure for `user_type`
-- ----------------------------
DROP TABLE IF EXISTS `user_type`;
CREATE TABLE `user_type` (
  `id_user_type` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name_user_type` varchar(50) NOT NULL,
  `permission_user_type` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_user_type`),
  KEY `permission_FK` (`permission_user_type`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_type
-- ----------------------------
INSERT INTO `user_type` VALUES ('1', 'Administrator', '111');
INSERT INTO `user_type` VALUES ('2', 'Moderator', '110');
INSERT INTO `user_type` VALUES ('3', 'Normal user', '100');

-- ----------------------------
-- Table structure for `voivodeship`
-- ----------------------------
DROP TABLE IF EXISTS `voivodeship`;
CREATE TABLE `voivodeship` (
  `id_voivodeship` int(10) unsigned NOT NULL,
  `name_voivodeship` varchar(50) NOT NULL,
  PRIMARY KEY (`id_voivodeship`),
  KEY `id_voivodeship` (`id_voivodeship`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of voivodeship
-- ----------------------------
INSERT INTO `voivodeship` VALUES ('2', 'DOLNOŚLĄSKIE');
INSERT INTO `voivodeship` VALUES ('4', 'KUJAWSKO-POMORSKIE');
INSERT INTO `voivodeship` VALUES ('6', 'LUBELSKIE');
INSERT INTO `voivodeship` VALUES ('8', 'LUBUSKIE');
INSERT INTO `voivodeship` VALUES ('10', 'ŁÓDZKIE');
INSERT INTO `voivodeship` VALUES ('12', 'MAŁOPOLSKIE');
INSERT INTO `voivodeship` VALUES ('14', 'MAZOWIECKIE');
INSERT INTO `voivodeship` VALUES ('16', 'OPOLSKIE');
INSERT INTO `voivodeship` VALUES ('18', 'PODKARPACKIE');
INSERT INTO `voivodeship` VALUES ('20', 'PODLASKIE');
INSERT INTO `voivodeship` VALUES ('22', 'POMORSKIE');
INSERT INTO `voivodeship` VALUES ('24', 'ŚLĄSKIE');
INSERT INTO `voivodeship` VALUES ('26', 'ŚWIĘTOKRZYSKIE');
INSERT INTO `voivodeship` VALUES ('28', 'WARMIŃSKO-MAZURSKIE');
INSERT INTO `voivodeship` VALUES ('30', 'WIELKOPOLSKIE');
INSERT INTO `voivodeship` VALUES ('32', 'ZACHODNIOPOMORSKIE');

-- ----------------------------
-- View structure for `all_locations`
-- ----------------------------
DROP VIEW IF EXISTS `all_locations`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `all_locations` AS select `location`.`name_location` AS `name_location`,`county`.`name_county` AS `name_county`,`voivodeship`.`name_voivodeship` AS `name_voivodeship` from ((`location` join `county`) join `voivodeship`) where ((`location`.`id_county_location` = `county`.`id_county`) and (`voivodeship`.`id_voivodeship` = `location`.`id_voivodeship_location`)) ;

-- ----------------------------
-- View structure for `detailed_ad`
-- ----------------------------
DROP VIEW IF EXISTS `detailed_ad`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `detailed_ad` AS select `ad`.`id_ad` AS `id_ad`,`ad`.`title_ad` AS `title_ad`,`ad`.`description_ad` AS `description_ad`,`ad`.`view_counter_ad` AS `view_counter_ad`,`ad`.`datetime_add_ad` AS `datetime_add_ad`,`ad`.`datetime_end_ad` AS `datetime_end_ad`,`ad`.`price_ad` AS `price_ad`,`user`.`name_user` AS `name_user`,`user`.`surname_user` AS `surname_user`,`user`.`telephone_number_user` AS `telephone_number_user`,`location`.`name_location` AS `name_location`,`county`.`name_county` AS `name_county`,`voivodeship`.`name_voivodeship` AS `name_voivodeship`,`category`.`name_category` AS `name_category` from (((((`ad` join `location`) join `county`) join `voivodeship`) join `category`) join `user`) where ((`ad`.`author_ad` = `user`.`id_user`) and (`ad`.`category_ad` = `category`.`id_category`) and (`ad`.`location_ad` = `location`.`id_location`) and (`location`.`id_voivodeship_location` = `voivodeship`.`id_voivodeship`) and (`location`.`id_county_location` = `county`.`id_county`)) ;

-- ----------------------------
-- View structure for `five_newest_ads`
-- ----------------------------
DROP VIEW IF EXISTS `five_newest_ads`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `five_newest_ads` AS select `ad`.`id_ad` AS `id_ad`,`ad`.`title_ad` AS `title_ad`,`location`.`name_location` AS `name_location`,`voivodeship`.`name_voivodeship` AS `name_voivodeship`,`category`.`name_category` AS `name_category`,`ad`.`datetime_add_ad` AS `datetime_add_ad`,`ad`.`price_ad` AS `price_ad` from (((`ad` join `location`) join `category`) join `voivodeship`) where ((`ad`.`location_ad` = `location`.`id_location`) and (`location`.`id_voivodeship_location` = `voivodeship`.`id_voivodeship`) and (`ad`.`category_ad` = `category`.`id_category`)) order by `ad`.`datetime_add_ad` desc limit 5 ;

-- ----------------------------
-- View structure for `listvoivodeships`
-- ----------------------------
DROP VIEW IF EXISTS `listvoivodeships`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `listvoivodeships` AS select `voivodeship`.`id_voivodeship` AS `id_voivodeship`,`voivodeship`.`name_voivodeship` AS `name_voivodeship` from `voivodeship` ;

-- ----------------------------
-- Procedure structure for `add_user`
-- ----------------------------
DROP PROCEDURE IF EXISTS `add_user`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_user`(IN login varchar(255), IN password varchar(255), IN mail varchar(255), IN type int(10), IN name varchar(100), IN surname varchar(100), IN gender int(10), IN telephone int(10), IN address int(10), IN salt varchar(255))
BEGIN
	INSERT INTO user (id_user,login_user,password_user, mail_user,type_user,name_user,surname_user,gender_user,telephone_number_user,address_user,register_datetime_user,lock_user,salt_user,first_failed_login_user,failed_login_count_user)
	VALUES (NULL,login,password, mail,type,name,surname,gender,telephone,address,SYSDATE(),'no',salt,SYSDATE()-INTERVAL 1 DAY,0);
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `deleteuser`
-- ----------------------------
DROP PROCEDURE IF EXISTS `deleteuser`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteuser`(IN `user_id` int(10))
BEGIN
	DELETE FROM user WHERE id_user=user_id;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for `check_location`
-- ----------------------------
DROP FUNCTION IF EXISTS `check_location`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `check_location`(ad_location int(10)) RETURNS int(11)
begin
declare zm int;
select id_location into zm FROM location WHERE id_location=ad_location;
return zm;
end
;;
DELIMITER ;

-- ----------------------------
-- Function structure for `check_name`
-- ----------------------------
DROP FUNCTION IF EXISTS `check_name`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `check_name`(`login` varchar(255)) RETURNS int(10)
BEGIN
	DECLARE A INT(10);
	SELECT COUNT(*) INTO A FROM user WHERE login_user=login;
	RETURN A;
END
;;
DELIMITER ;

-- ----------------------------
-- Event structure for `delete_archived_ads_event`
-- ----------------------------
DROP EVENT IF EXISTS `delete_archived_ads_event`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` EVENT `delete_archived_ads_event` ON SCHEDULE EVERY 1 DAY STARTS '2016-10-25 18:56:45' ON COMPLETION PRESERVE ENABLE DO DELETE FROM ad_archive WHERE datediff(NOW(),operation_date_ad_archive)<730
;;
DELIMITER ;

-- ----------------------------
-- Event structure for `delete_archived_users_event`
-- ----------------------------
DROP EVENT IF EXISTS `delete_archived_users_event`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` EVENT `delete_archived_users_event` ON SCHEDULE EVERY 1 DAY STARTS '2016-10-25 18:54:14' ON COMPLETION PRESERVE ENABLE DO DELETE FROM user_archive WHERE datediff(NOW(),operation_date_user_archive)<730
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `ON_UPDATE`;
DELIMITER ;;
CREATE TRIGGER `ON_UPDATE` AFTER UPDATE ON `ad` FOR EACH ROW INSERT INTO ad_archive (title_ad_archive,description_ad_archive,view_counter_ad_archive,author_ad_archive,category_ad_archive,location_ad_archive,datetime_add_ad_archive,datetime_end_ad_archive,price_ad_archive,id_ad_ad_archive,operation_date_ad_archive,operation_type_ad_archive)
VALUES (old.title_ad,old.description_ad,old.view_counter_ad,old.author_ad,old.category_ad,old.location_ad,old.datetime_add_ad,old.datetime_end_ad,old.price_ad,old.id_ad,SYSDATE(),'u')
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `ON_DELETE`;
DELIMITER ;;
CREATE TRIGGER `ON_DELETE` AFTER DELETE ON `ad` FOR EACH ROW INSERT INTO ad_archive (title_ad_archive,description_ad_archive,view_counter_ad_archive,author_ad_archive,category_ad_archive,location_ad_archive,datetime_add_ad_archive,datetime_end_ad_archive,price_ad_archive,id_ad_ad_archive,operation_date_ad_archive,operation_type_ad_archive)
VALUES (old.title_ad,old.description_ad,old.view_counter_ad,old.author_ad,old.category_ad,old.location_ad,old.datetime_add_ad,old.datetime_end_ad,old.price_ad,old.id_ad,SYSDATE(),'d')
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `ON_GALLERY_DELETE`;
DELIMITER ;;
CREATE TRIGGER `ON_GALLERY_DELETE` AFTER DELETE ON `gallery` FOR EACH ROW DELETE FROM photo
WHERE id_photo=old.id_photo_gallery
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `insert_user_trigger`;
DELIMITER ;;
CREATE TRIGGER `insert_user_trigger` BEFORE INSERT ON `user` FOR EACH ROW if lower(NEW.login_user) <> NEW.login_user then
set NEW.login_user=lower(NEW.login_user);
end if
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `update_user_trigger`;
DELIMITER ;;
CREATE TRIGGER `update_user_trigger` AFTER UPDATE ON `user` FOR EACH ROW INSERT INTO user_archive (id_user_user_archive,login_user_archive,password_user_archive,mail_user_archive,type_user_archive,name_user_archive,surname_user_archive,
gender_user_archive,telephone_number_user_archive,address_user_archive,register_datetime_user_archive,lock_user_archive,type_operation_user_archive,operation_date_user_archive)
VALUES 
(old.id_user,old.login_user,old.password_user,old.mail_user,old.type_user,old.name_user,old.surname_user,old.gender_user,old.telephone_number_user,old.address_user,old.register_datetime_user,old.lock_user,'u',SYSDATE())
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `delete_user_trigger`;
DELIMITER ;;
CREATE TRIGGER `delete_user_trigger` AFTER DELETE ON `user` FOR EACH ROW INSERT INTO user_archive (id_user_user_archive,login_user_archive,password_user_archive,mail_user_archive,type_user_archive,name_user_archive,surname_user_archive,
gender_user_archive,telephone_number_user_archive,address_user_archive,register_datetime_user_archive,lock_user_archive,type_operation_user_archive,operation_date_user_archive)
VALUES 
(old.id_user,old.login_user,old.password_user,old.mail_user,old.type_user,old.name_user,old.surname_user,old.gender_user,old.telephone_number_user,old.address_user,old.register_datetime_user,old.lock_user,'d',SYSDATE())
;;
DELIMITER ;
