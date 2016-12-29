/*
Navicat MySQL Data Transfer

Source Server         : pai_project
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : online_classifieds

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2016-12-29 03:19:15
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
  `thumbnail_ad` int(10) unsigned DEFAULT NULL,
  `gallery_ad` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id_ad`),
  KEY `thumbnail_ad_FK` (`thumbnail_ad`),
  KEY `author_ad_FK` (`author_ad`),
  KEY `location_ad_FK` (`location_ad`),
  KEY `category_ad_FK` (`category_ad`),
  CONSTRAINT `author_ad_FK` FOREIGN KEY (`author_ad`) REFERENCES `user` (`id_user`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `category_ad_FK` FOREIGN KEY (`category_ad`) REFERENCES `category` (`id_category`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `location_ad_FK` FOREIGN KEY (`location_ad`) REFERENCES `location` (`id_location`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `thumbnail_ad_FK` FOREIGN KEY (`thumbnail_ad`) REFERENCES `photo` (`id_photo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ad
-- ----------------------------
INSERT INTO `ad` VALUES ('20', 'kamil', 'sasa', '0', '14', '12', '332', '2016-12-28 16:14:04', '2017-01-11 16:14:04', '123', null, null);
INSERT INTO `ad` VALUES ('22', 'sas', 'sds', '0', '16', '12', '459', '2016-12-28 21:57:13', '2017-01-11 21:57:13', '12', null, null);

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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

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
  `gallery_ad_archive` int(10) unsigned DEFAULT NULL,
  `price_ad_archive` decimal(10,0) unsigned NOT NULL,
  `id_ad_ad_archive` int(10) unsigned NOT NULL,
  `operation_date_ad_archive` datetime NOT NULL,
  `operation_type_ad_archive` char(1) NOT NULL,
  `thumbnail_ad_archive` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_ad_archive`)
) ENGINE=InnoDB AUTO_INCREMENT=171 DEFAULT CHARSET=utf8
/*!50100 PARTITION BY RANGE (id_ad_archive)
(PARTITION p0 VALUES LESS THAN (200) ENGINE = InnoDB) */;

-- ----------------------------
-- Records of ad_archive
-- ----------------------------
INSERT INTO `ad_archive` VALUES ('1', 'Galaxy S5 Nowy', 'Witam! Mam do sprzedania najnowszy telefon marki samsung galaxy S5. (Wersja bez dynamitu w środku)', '0', '1', '3', '716', '2016-10-22 23:54:10', '2016-11-06 23:54:16', null, '1400', '1', '2016-11-04 00:55:00', 'u', null);
INSERT INTO `ad_archive` VALUES ('2', 'Laptop Lenovo G71', 'Sprzedam laptop w bardzo dobrym stanie', '0', '6', '2', '201', '2016-10-31 18:18:05', '2016-11-30 18:18:22', null, '0', '5', '2016-11-04 00:55:04', 'u', null);
INSERT INTO `ad_archive` VALUES ('3', 'Niebo', 'ewew', '0', '14', '14', '284', '2016-12-13 18:06:14', '2016-12-27 18:06:14', null, '123', '2', '2016-12-13 21:33:55', 'd', null);
INSERT INTO `ad_archive` VALUES ('4', '&lt;noscript&gt;', '&lt;noscript&gt;', '0', '14', '12', '172', '2016-12-13 18:44:19', '2016-12-27 18:44:19', null, '12', '5', '2016-12-13 21:34:01', 'd', null);
INSERT INTO `ad_archive` VALUES ('5', 'a', 'sasas', '0', '14', '12', '366', '2016-12-13 21:35:26', '2016-12-27 21:35:26', null, '1', '6', '2016-12-13 21:35:43', 'd', null);
INSERT INTO `ad_archive` VALUES ('6', 'a', 'sasas', '0', '14', '12', '366', '2016-12-13 21:35:27', '2016-12-27 21:35:27', null, '1', '7', '2016-12-13 21:35:45', 'd', null);
INSERT INTO `ad_archive` VALUES ('7', 'a', 'sasas', '0', '14', '12', '366', '2016-12-13 21:35:29', '2016-12-27 21:35:29', null, '1', '8', '2016-12-13 21:35:47', 'd', null);
INSERT INTO `ad_archive` VALUES ('8', 'a', 'sasas', '0', '14', '12', '366', '2016-12-13 21:35:30', '2016-12-27 21:35:30', null, '1', '9', '2016-12-13 21:35:48', 'd', null);
INSERT INTO `ad_archive` VALUES ('9', 'a', 'sasas', '0', '14', '12', '366', '2016-12-13 21:35:31', '2016-12-27 21:35:31', null, '1', '10', '2016-12-13 21:35:50', 'd', null);
INSERT INTO `ad_archive` VALUES ('10', 'a', 'sasas', '0', '14', '12', '366', '2016-12-13 21:35:32', '2016-12-27 21:35:32', null, '1', '11', '2016-12-13 21:35:59', 'd', null);
INSERT INTO `ad_archive` VALUES ('11', 'a', 'sasas', '0', '14', '12', '366', '2016-12-13 21:35:33', '2016-12-27 21:35:33', null, '1', '12', '2016-12-13 21:36:13', 'd', null);
INSERT INTO `ad_archive` VALUES ('12', 'a', 'sasas', '0', '14', '12', '366', '2016-12-13 21:35:33', '2016-12-27 21:35:33', null, '1', '13', '2016-12-13 21:36:14', 'd', null);
INSERT INTO `ad_archive` VALUES ('13', 'a', 'sasas', '0', '14', '12', '366', '2016-12-13 21:35:34', '2016-12-27 21:35:34', null, '1', '14', '2016-12-13 21:36:18', 'd', null);
INSERT INTO `ad_archive` VALUES ('14', 'auto', 'qwer', '0', '15', '12', '84', '2016-12-13 14:03:50', '2016-12-27 14:03:50', null, '123', '1', '2016-12-13 21:36:31', 'd', null);
INSERT INTO `ad_archive` VALUES ('15', 'sprzedam rower', '123', '0', '16', '12', '532', '2016-12-13 18:41:03', '2016-12-27 18:41:03', null, '12', '3', '2016-12-13 21:36:31', 'd', null);
INSERT INTO `ad_archive` VALUES ('16', 'as', 'dsds', '0', '16', '13', '82', '2016-12-13 18:43:50', '2016-12-27 18:43:50', null, '12', '4', '2016-12-13 21:36:31', 'd', null);
INSERT INTO `ad_archive` VALUES ('17', 'dynia', 'elektroniczna dynia', '0', '14', '14', '84', '2016-12-13 21:38:29', '2016-12-27 21:38:29', null, '12', '15', '2016-12-13 21:39:27', 'd', null);
INSERT INTO `ad_archive` VALUES ('18', 'dynia', 'elektroniczna dynia', '0', '14', '14', '84', '2016-12-13 21:38:31', '2016-12-27 21:38:31', null, '12', '16', '2016-12-13 21:39:29', 'd', null);
INSERT INTO `ad_archive` VALUES ('19', 'dynia', 'elektroniczna dynia', '0', '14', '14', '84', '2016-12-13 21:38:32', '2016-12-27 21:38:32', null, '12', '17', '2016-12-13 21:39:30', 'd', null);
INSERT INTO `ad_archive` VALUES ('20', 'dynia', 'elektroniczna dynia', '0', '14', '14', '84', '2016-12-13 21:38:33', '2016-12-27 21:38:33', null, '12', '18', '2016-12-13 21:39:32', 'd', null);
INSERT INTO `ad_archive` VALUES ('21', 'dynia', 'elektroniczna dynia', '0', '14', '14', '84', '2016-12-13 21:38:34', '2016-12-27 21:38:34', null, '12', '19', '2016-12-13 21:39:33', 'd', null);
INSERT INTO `ad_archive` VALUES ('22', 'dynia', 'elektroniczna dynia', '0', '14', '14', '84', '2016-12-13 21:38:35', '2016-12-27 21:38:35', null, '12', '20', '2016-12-13 21:39:34', 'd', null);
INSERT INTO `ad_archive` VALUES ('23', 'dynia', 'elektroniczna dynia', '0', '14', '14', '84', '2016-12-13 21:38:36', '2016-12-27 21:38:36', null, '12', '21', '2016-12-13 21:39:36', 'd', null);
INSERT INTO `ad_archive` VALUES ('24', 'dynia', 'elektroniczna dynia', '0', '14', '14', '84', '2016-12-13 21:38:36', '2016-12-27 21:38:36', null, '12', '22', '2016-12-13 21:39:37', 'd', null);
INSERT INTO `ad_archive` VALUES ('25', 'dynia', 'elektroniczna dynia', '0', '14', '14', '84', '2016-12-13 21:38:37', '2016-12-27 21:38:37', null, '12', '23', '2016-12-13 21:39:38', 'd', null);
INSERT INTO `ad_archive` VALUES ('26', 'q', 'sasa', '0', '14', '12', '57', '2016-12-13 21:41:37', '2016-12-27 21:41:37', null, '1', '24', '2016-12-13 21:58:49', 'd', null);
INSERT INTO `ad_archive` VALUES ('27', 'a', 'dsds', '0', '14', '16', '98', '2016-12-13 21:59:08', '2016-12-27 21:59:08', null, '123', '28', '2016-12-13 21:59:31', 'd', null);
INSERT INTO `ad_archive` VALUES ('28', 'a', 'dsds', '0', '14', '16', '98', '2016-12-13 21:59:07', '2016-12-27 21:59:07', null, '123', '27', '2016-12-13 21:59:33', 'd', null);
INSERT INTO `ad_archive` VALUES ('29', 'a', 'dsds', '0', '14', '16', '98', '2016-12-13 21:59:06', '2016-12-27 21:59:06', null, '123', '26', '2016-12-13 22:00:13', 'd', null);
INSERT INTO `ad_archive` VALUES ('30', 'a', 'dsds', '0', '14', '16', '98', '2016-12-13 21:59:03', '2016-12-27 21:59:03', null, '123', '25', '2016-12-13 22:03:33', 'd', null);
INSERT INTO `ad_archive` VALUES ('31', 'a', 'sdsd', '0', '14', '14', '761', '2016-12-13 22:04:35', '2016-12-27 22:04:35', null, '1', '29', '2016-12-13 22:05:38', 'd', null);
INSERT INTO `ad_archive` VALUES ('32', 'a', 'asa', '0', '14', '14', '84', '2016-12-13 22:08:33', '2016-12-27 22:08:33', null, '1', '30', '2016-12-13 22:08:52', 'd', null);
INSERT INTO `ad_archive` VALUES ('33', 'a', 'asa', '0', '14', '14', '84', '2016-12-13 22:08:41', '2016-12-27 22:08:41', null, '1', '37', '2016-12-13 22:20:54', 'd', null);
INSERT INTO `ad_archive` VALUES ('34', 'a', 'asa', '0', '14', '14', '84', '2016-12-13 22:08:39', '2016-12-27 22:08:39', null, '1', '36', '2016-12-13 22:21:55', 'd', null);
INSERT INTO `ad_archive` VALUES ('35', 'a', 'asa', '0', '14', '14', '84', '2016-12-13 22:08:38', '2016-12-27 22:08:38', null, '1', '35', '2016-12-13 22:25:01', 'd', null);
INSERT INTO `ad_archive` VALUES ('36', 'a', 'asa', '0', '14', '14', '84', '2016-12-13 22:08:37', '2016-12-27 22:08:37', null, '1', '34', '2016-12-13 22:25:56', 'd', null);
INSERT INTO `ad_archive` VALUES ('37', 'a', 'asa', '0', '14', '14', '84', '2016-12-13 22:08:34', '2016-12-27 22:08:34', null, '1', '31', '2016-12-13 22:26:52', 'd', null);
INSERT INTO `ad_archive` VALUES ('38', 'a', 'asa', '0', '14', '14', '84', '2016-12-13 22:08:35', '2016-12-27 22:08:35', null, '1', '32', '2016-12-13 22:26:55', 'd', null);
INSERT INTO `ad_archive` VALUES ('39', 'a', 'asa', '0', '14', '14', '84', '2016-12-13 22:08:36', '2016-12-27 22:08:36', null, '1', '33', '2016-12-13 22:26:59', 'd', null);
INSERT INTO `ad_archive` VALUES ('40', 'a', 'sds', '0', '14', '12', '172', '2016-12-13 22:27:39', '2016-12-27 22:27:39', null, '1', '42', '2016-12-13 22:27:58', 'd', null);
INSERT INTO `ad_archive` VALUES ('41', 'a', 'sds', '0', '14', '12', '172', '2016-12-13 22:27:38', '2016-12-27 22:27:38', null, '1', '41', '2016-12-13 22:29:34', 'd', null);
INSERT INTO `ad_archive` VALUES ('42', 'a', 'sds', '0', '14', '12', '172', '2016-12-13 22:27:37', '2016-12-27 22:27:37', null, '1', '40', '2016-12-13 22:30:21', 'd', null);
INSERT INTO `ad_archive` VALUES ('43', 'a', 'sds', '0', '14', '12', '172', '2016-12-13 22:27:35', '2016-12-27 22:27:35', null, '1', '39', '2016-12-13 22:31:01', 'd', null);
INSERT INTO `ad_archive` VALUES ('44', 'a', 'sds', '0', '14', '12', '172', '2016-12-13 22:27:34', '2016-12-27 22:27:34', null, '1', '38', '2016-12-13 22:35:57', 'd', null);
INSERT INTO `ad_archive` VALUES ('45', 'kurwa', 'asa', '0', '14', '12', '667', '2016-12-13 22:38:31', '2016-12-27 22:38:31', null, '111', '48', '2016-12-13 22:39:42', 'd', null);
INSERT INTO `ad_archive` VALUES ('46', 'kurwa', 'asa', '0', '14', '12', '667', '2016-12-13 22:38:30', '2016-12-27 22:38:30', null, '111', '47', '2016-12-13 22:39:51', 'd', null);
INSERT INTO `ad_archive` VALUES ('47', 'kurwa', 'asa', '0', '14', '12', '667', '2016-12-13 22:38:19', '2016-12-27 22:38:19', null, '111', '43', '2016-12-13 22:42:04', 'd', null);
INSERT INTO `ad_archive` VALUES ('48', 'kurwa', 'asa', '0', '14', '12', '667', '2016-12-13 22:38:20', '2016-12-27 22:38:20', null, '111', '44', '2016-12-13 22:42:08', 'd', null);
INSERT INTO `ad_archive` VALUES ('49', 'kurwa', 'asa', '0', '14', '12', '667', '2016-12-13 22:38:21', '2016-12-27 22:38:21', null, '111', '45', '2016-12-13 22:42:14', 'd', null);
INSERT INTO `ad_archive` VALUES ('50', 'kurwa', 'asa', '0', '14', '12', '667', '2016-12-13 22:38:29', '2016-12-27 22:38:29', null, '111', '46', '2016-12-13 22:42:20', 'd', null);
INSERT INTO `ad_archive` VALUES ('51', 'a', 'weewe', '0', '14', '12', '332', '2016-12-13 22:50:21', '2016-12-27 22:50:21', null, '1', '55', '2016-12-13 22:52:22', 'd', null);
INSERT INTO `ad_archive` VALUES ('52', 'a', 'weewe', '0', '14', '12', '332', '2016-12-13 22:50:19', '2016-12-27 22:50:19', null, '1', '54', '2016-12-13 22:52:42', 'd', null);
INSERT INTO `ad_archive` VALUES ('53', 'a', 'weewe', '0', '14', '12', '332', '2016-12-13 22:49:52', '2016-12-27 22:49:52', null, '1', '53', '2016-12-13 22:53:26', 'd', null);
INSERT INTO `ad_archive` VALUES ('54', 'a', 'weewe', '0', '14', '12', '332', '2016-12-13 22:49:50', '2016-12-27 22:49:50', null, '1', '52', '2016-12-13 22:56:46', 'd', null);
INSERT INTO `ad_archive` VALUES ('55', 'a', 'weewe', '0', '14', '12', '332', '2016-12-13 22:49:41', '2016-12-27 22:49:41', null, '1', '49', '2016-12-13 22:59:17', 'd', null);
INSERT INTO `ad_archive` VALUES ('56', 'a', 'weewe', '0', '14', '12', '332', '2016-12-13 22:49:42', '2016-12-27 22:49:42', null, '1', '50', '2016-12-13 22:59:17', 'd', null);
INSERT INTO `ad_archive` VALUES ('57', 'a', 'weewe', '0', '14', '12', '332', '2016-12-13 22:49:43', '2016-12-27 22:49:43', null, '1', '51', '2016-12-13 22:59:17', 'd', null);
INSERT INTO `ad_archive` VALUES ('58', 'jhkjh', 'sassa', '0', '14', '12', '366', '2016-12-13 23:02:12', '2016-12-27 23:02:12', null, '1', '60', '2016-12-13 23:03:07', 'd', null);
INSERT INTO `ad_archive` VALUES ('59', 'jhkjh', 'sassa', '0', '14', '12', '366', '2016-12-13 23:02:11', '2016-12-27 23:02:11', null, '1', '59', '2016-12-13 23:05:21', 'd', null);
INSERT INTO `ad_archive` VALUES ('60', 'jhkjh', 'sassa', '0', '14', '12', '366', '2016-12-13 23:02:10', '2016-12-27 23:02:10', null, '1', '58', '2016-12-13 23:07:13', 'd', null);
INSERT INTO `ad_archive` VALUES ('61', 'jhkjh', 'sassa', '0', '14', '12', '366', '2016-12-13 23:02:09', '2016-12-27 23:02:09', null, '1', '57', '2016-12-13 23:07:40', 'd', null);
INSERT INTO `ad_archive` VALUES ('62', 'jhkjh', 'sassa', '0', '14', '12', '366', '2016-12-13 23:02:08', '2016-12-27 23:02:08', null, '1', '56', '2016-12-13 23:08:05', 'd', null);
INSERT INTO `ad_archive` VALUES ('63', 'as', 'sdsds', '0', '14', '12', '84', '2016-12-13 23:10:01', '2016-12-27 23:10:01', null, '12', '70', '2016-12-13 23:10:09', 'd', null);
INSERT INTO `ad_archive` VALUES ('64', 'as', 'sdsds', '0', '14', '12', '84', '2016-12-13 23:10:00', '2016-12-27 23:10:00', null, '12', '69', '2016-12-13 23:10:45', 'd', null);
INSERT INTO `ad_archive` VALUES ('65', 'as', 'sdsds', '0', '14', '12', '84', '2016-12-13 23:09:59', '2016-12-27 23:09:59', null, '12', '68', '2016-12-13 23:11:13', 'd', null);
INSERT INTO `ad_archive` VALUES ('66', 'as', 'sdsds', '0', '14', '12', '84', '2016-12-13 23:09:58', '2016-12-27 23:09:58', null, '12', '67', '2016-12-13 23:11:44', 'd', null);
INSERT INTO `ad_archive` VALUES ('67', 'as', 'sdsds', '0', '14', '12', '84', '2016-12-13 23:09:57', '2016-12-27 23:09:57', null, '12', '66', '2016-12-13 23:14:23', 'd', null);
INSERT INTO `ad_archive` VALUES ('68', 'as', 'sdsds', '0', '14', '12', '84', '2016-12-13 23:09:56', '2016-12-27 23:09:56', null, '12', '65', '2016-12-13 23:15:47', 'd', null);
INSERT INTO `ad_archive` VALUES ('69', 'as', 'sdsds', '0', '14', '12', '84', '2016-12-13 23:09:55', '2016-12-27 23:09:55', null, '12', '64', '2016-12-13 23:18:55', 'd', null);
INSERT INTO `ad_archive` VALUES ('70', 'as', 'sdsds', '0', '14', '12', '84', '2016-12-13 23:09:51', '2016-12-27 23:09:51', null, '12', '61', '2016-12-13 23:21:29', 'd', null);
INSERT INTO `ad_archive` VALUES ('71', 'as', 'sdsds', '0', '14', '12', '84', '2016-12-13 23:09:54', '2016-12-27 23:09:54', null, '12', '63', '2016-12-13 23:22:36', 'd', null);
INSERT INTO `ad_archive` VALUES ('72', 'as', 'sdsds', '0', '14', '12', '84', '2016-12-13 23:09:52', '2016-12-27 23:09:52', null, '12', '62', '2016-12-13 23:25:56', 'd', null);
INSERT INTO `ad_archive` VALUES ('73', 'sadasda', 'sdsdds', '0', '14', '14', '459', '2016-12-13 23:26:50', '2016-12-27 23:26:50', null, '123', '79', '2016-12-13 23:27:00', 'd', null);
INSERT INTO `ad_archive` VALUES ('74', 'sadasda', 'sdsdds', '0', '14', '14', '459', '2016-12-13 23:26:38', '2016-12-27 23:26:38', null, '123', '71', '2016-12-13 23:27:56', 'd', null);
INSERT INTO `ad_archive` VALUES ('75', 'sadasda', 'sdsdds', '0', '14', '14', '459', '2016-12-13 23:26:40', '2016-12-27 23:26:40', null, '123', '72', '2016-12-13 23:27:56', 'd', null);
INSERT INTO `ad_archive` VALUES ('76', 'sadasda', 'sdsdds', '0', '14', '14', '459', '2016-12-13 23:26:42', '2016-12-27 23:26:42', null, '123', '73', '2016-12-13 23:27:56', 'd', null);
INSERT INTO `ad_archive` VALUES ('77', 'sadasda', 'sdsdds', '0', '14', '14', '459', '2016-12-13 23:26:43', '2016-12-27 23:26:43', null, '123', '74', '2016-12-13 23:27:56', 'd', null);
INSERT INTO `ad_archive` VALUES ('78', 'sadasda', 'sdsdds', '0', '14', '14', '459', '2016-12-13 23:26:45', '2016-12-27 23:26:45', null, '123', '75', '2016-12-13 23:27:56', 'd', null);
INSERT INTO `ad_archive` VALUES ('79', 'sadasda', 'sdsdds', '0', '14', '14', '459', '2016-12-13 23:26:47', '2016-12-27 23:26:47', null, '123', '76', '2016-12-13 23:27:56', 'd', null);
INSERT INTO `ad_archive` VALUES ('80', 'sadasda', 'sdsdds', '0', '14', '14', '459', '2016-12-13 23:26:48', '2016-12-27 23:26:48', null, '123', '77', '2016-12-13 23:27:56', 'd', null);
INSERT INTO `ad_archive` VALUES ('81', 'sadasda', 'sdsdds', '0', '14', '14', '459', '2016-12-13 23:26:49', '2016-12-27 23:26:49', null, '123', '78', '2016-12-13 23:27:56', 'd', null);
INSERT INTO `ad_archive` VALUES ('82', 'aa', 'qwqw', '0', '14', '13', '284', '2016-12-13 23:29:06', '2016-12-27 23:29:06', null, '1', '87', '2016-12-13 23:29:44', 'd', null);
INSERT INTO `ad_archive` VALUES ('83', 'aa', 'qwqw', '0', '14', '13', '284', '2016-12-13 23:29:05', '2016-12-27 23:29:05', null, '1', '86', '2016-12-13 23:29:55', 'd', null);
INSERT INTO `ad_archive` VALUES ('84', 'aa', 'qwqw', '0', '14', '13', '284', '2016-12-13 23:29:04', '2016-12-27 23:29:04', null, '1', '85', '2016-12-13 23:30:00', 'd', null);
INSERT INTO `ad_archive` VALUES ('85', 'aa', 'qwqw', '0', '14', '13', '284', '2016-12-13 23:29:03', '2016-12-27 23:29:03', null, '1', '84', '2016-12-13 23:30:03', 'd', null);
INSERT INTO `ad_archive` VALUES ('86', 'aa', 'qwqw', '0', '14', '13', '284', '2016-12-13 23:29:02', '2016-12-27 23:29:02', null, '1', '83', '2016-12-13 23:30:07', 'd', null);
INSERT INTO `ad_archive` VALUES ('87', 'aa', 'qwqw', '0', '14', '13', '284', '2016-12-13 23:29:00', '2016-12-27 23:29:00', null, '1', '82', '2016-12-13 23:30:12', 'd', null);
INSERT INTO `ad_archive` VALUES ('88', 'aa', 'qwqw', '0', '14', '13', '284', '2016-12-13 23:28:58', '2016-12-27 23:28:58', null, '1', '81', '2016-12-13 23:30:19', 'd', null);
INSERT INTO `ad_archive` VALUES ('89', 'aa', 'qwqw', '0', '14', '13', '284', '2016-12-13 23:28:57', '2016-12-27 23:28:57', null, '1', '80', '2016-12-13 23:30:24', 'd', null);
INSERT INTO `ad_archive` VALUES ('90', 'aaa', '1212212', '0', '14', '12', '890', '2016-12-13 23:31:52', '2016-12-27 23:31:52', null, '12', '106', '2016-12-13 23:32:21', 'd', null);
INSERT INTO `ad_archive` VALUES ('91', 'aaa', '1212212', '0', '14', '12', '890', '2016-12-13 23:31:48', '2016-12-27 23:31:48', null, '12', '105', '2016-12-13 23:33:06', 'd', null);
INSERT INTO `ad_archive` VALUES ('92', 'aaa', '1212212', '0', '14', '12', '890', '2016-12-13 23:31:46', '2016-12-27 23:31:46', null, '12', '104', '2016-12-13 23:34:45', 'd', null);
INSERT INTO `ad_archive` VALUES ('93', 'aaa', '1212212', '0', '14', '12', '890', '2016-12-13 23:31:45', '2016-12-27 23:31:45', null, '12', '103', '2016-12-13 23:34:47', 'd', null);
INSERT INTO `ad_archive` VALUES ('94', 'aaa', '1212212', '0', '14', '12', '890', '2016-12-13 23:31:43', '2016-12-27 23:31:43', null, '12', '102', '2016-12-13 23:34:49', 'd', null);
INSERT INTO `ad_archive` VALUES ('95', 'aaa', '1212212', '0', '14', '12', '890', '2016-12-13 23:31:42', '2016-12-27 23:31:42', null, '12', '101', '2016-12-13 23:34:51', 'd', null);
INSERT INTO `ad_archive` VALUES ('96', 'aaa', '1212212', '0', '14', '12', '890', '2016-12-13 23:31:40', '2016-12-27 23:31:40', null, '12', '100', '2016-12-13 23:34:52', 'd', null);
INSERT INTO `ad_archive` VALUES ('97', 'aaa', '1212212', '0', '14', '12', '890', '2016-12-13 23:31:39', '2016-12-27 23:31:39', null, '12', '99', '2016-12-13 23:34:54', 'd', null);
INSERT INTO `ad_archive` VALUES ('98', 'aaa', '1212212', '0', '14', '12', '890', '2016-12-13 23:31:37', '2016-12-27 23:31:37', null, '12', '98', '2016-12-13 23:34:56', 'd', null);
INSERT INTO `ad_archive` VALUES ('99', 'aaa', '1212212', '0', '14', '12', '890', '2016-12-13 23:31:35', '2016-12-27 23:31:35', null, '12', '97', '2016-12-13 23:34:57', 'd', null);
INSERT INTO `ad_archive` VALUES ('100', 'aaa', '1212212', '0', '14', '12', '890', '2016-12-13 23:31:33', '2016-12-27 23:31:33', null, '12', '96', '2016-12-13 23:34:59', 'd', null);
INSERT INTO `ad_archive` VALUES ('101', 'aaa', '1212212', '0', '14', '12', '890', '2016-12-13 23:31:32', '2016-12-27 23:31:32', null, '12', '95', '2016-12-13 23:35:01', 'd', null);
INSERT INTO `ad_archive` VALUES ('102', 'aaa', '1212212', '0', '14', '12', '890', '2016-12-13 23:31:30', '2016-12-27 23:31:30', null, '12', '94', '2016-12-13 23:35:03', 'd', null);
INSERT INTO `ad_archive` VALUES ('103', 'aaa', '1212212', '0', '14', '12', '890', '2016-12-13 23:31:28', '2016-12-27 23:31:28', null, '12', '93', '2016-12-13 23:35:05', 'd', null);
INSERT INTO `ad_archive` VALUES ('104', 'aaa', '1212212', '0', '14', '12', '890', '2016-12-13 23:31:26', '2016-12-27 23:31:26', null, '12', '92', '2016-12-13 23:35:07', 'd', null);
INSERT INTO `ad_archive` VALUES ('105', 'aaa', '1212212', '0', '14', '12', '890', '2016-12-13 23:31:23', '2016-12-27 23:31:23', null, '12', '91', '2016-12-13 23:35:08', 'd', null);
INSERT INTO `ad_archive` VALUES ('106', 'aaa', '1212212', '0', '14', '12', '890', '2016-12-13 23:31:21', '2016-12-27 23:31:21', null, '12', '90', '2016-12-13 23:35:10', 'd', null);
INSERT INTO `ad_archive` VALUES ('107', 'aaa', '1212212', '0', '14', '12', '890', '2016-12-13 23:31:17', '2016-12-27 23:31:17', null, '12', '89', '2016-12-13 23:35:12', 'd', null);
INSERT INTO `ad_archive` VALUES ('108', 'aaa', '1212212', '0', '14', '12', '890', '2016-12-13 23:31:14', '2016-12-27 23:31:14', null, '12', '88', '2016-12-13 23:35:14', 'd', null);
INSERT INTO `ad_archive` VALUES ('109', 'dyni', 'Sprzedam elektroniczną dynię.', '0', '14', '12', '815', '2016-12-13 23:36:40', '2016-12-27 23:36:40', null, '12', '110', '2016-12-13 23:37:11', 'd', null);
INSERT INTO `ad_archive` VALUES ('110', 'dyni', 'Sprzedam elektroniczną dynię.', '0', '14', '12', '815', '2016-12-13 23:36:39', '2016-12-27 23:36:39', null, '12', '109', '2016-12-13 23:37:13', 'd', null);
INSERT INTO `ad_archive` VALUES ('111', 'dyni', 'Sprzedam elektroniczną dynię.', '0', '14', '12', '815', '2016-12-13 23:36:37', '2016-12-27 23:36:37', null, '12', '108', '2016-12-13 23:37:17', 'd', null);
INSERT INTO `ad_archive` VALUES ('112', 'dyni', 'Sprzedam elektroniczną dynię.', '0', '14', '12', '815', '2016-12-13 23:36:34', '2016-12-27 23:36:34', null, '12', '107', '2016-12-13 23:37:20', 'd', null);
INSERT INTO `ad_archive` VALUES ('113', 'cześć witek', 'rererere', '0', '14', '14', '693', '2016-12-15 11:36:30', '2016-12-29 11:36:30', null, '123', '1', '2016-12-15 11:59:17', 'd', null);
INSERT INTO `ad_archive` VALUES ('114', 'jjk', 'jjkhkj', '0', '14', '13', '321', '2016-12-15 15:07:34', '2016-12-29 15:07:34', null, '111', '4', '2016-12-15 15:07:53', 'd', null);
INSERT INTO `ad_archive` VALUES ('115', 'jjk', 'jjkhkj', '0', '14', '13', '321', '2016-12-15 15:07:31', '2016-12-29 15:07:31', null, '111', '3', '2016-12-15 15:07:56', 'd', null);
INSERT INTO `ad_archive` VALUES ('116', 'cześć witek', 'rererere', '0', '14', '14', '693', '2016-12-15 11:36:39', '2016-12-29 11:36:39', null, '123', '2', '2016-12-15 15:07:57', 'd', null);
INSERT INTO `ad_archive` VALUES ('117', 'dasdsada', 'dssddsd', '0', '14', '14', '332', '2016-12-17 14:37:40', '2016-12-31 14:37:40', null, '123', '1', '2016-12-19 14:49:23', 'd', null);
INSERT INTO `ad_archive` VALUES ('118', 'dasdsada', 'dssddsd', '0', '14', '14', '332', '2016-12-17 14:37:41', '2016-12-31 14:37:41', null, '123', '2', '2016-12-20 08:40:03', 'd', null);
INSERT INTO `ad_archive` VALUES ('119', 'dasdsada', 'dssddsd', '0', '14', '14', '332', '2016-12-17 14:37:42', '2016-12-31 14:37:42', null, '123', '3', '2016-12-20 08:40:06', 'd', null);
INSERT INTO `ad_archive` VALUES ('120', 'bbb', 'sdsds', '0', '14', '12', '366', '2016-12-19 16:57:23', '2017-01-02 16:57:23', null, '11', '4', '2016-12-20 08:40:08', 'd', null);
INSERT INTO `ad_archive` VALUES ('121', 'bbb', 'sdsds', '0', '14', '12', '366', '2016-12-19 16:57:24', '2017-01-02 16:57:24', null, '11', '5', '2016-12-20 08:40:10', 'd', null);
INSERT INTO `ad_archive` VALUES ('122', 'bbb', 'sdsds', '0', '14', '12', '366', '2016-12-19 16:57:25', '2017-01-02 16:57:25', null, '11', '6', '2016-12-20 08:40:13', 'd', null);
INSERT INTO `ad_archive` VALUES ('123', 'bbb', 'sdsds', '0', '14', '12', '366', '2016-12-19 16:57:25', '2017-01-02 16:57:25', null, '11', '7', '2016-12-27 16:13:20', 'd', null);
INSERT INTO `ad_archive` VALUES ('124', 'bbb', 'sdsds', '0', '14', '12', '366', '2016-12-19 16:57:26', '2017-01-02 16:57:26', null, '11', '8', '2016-12-28 01:08:00', 'd', null);
INSERT INTO `ad_archive` VALUES ('125', 'ooo', 'ssds', '0', '14', '12', '389', '2016-12-21 19:06:30', '2017-01-04 19:06:30', null, '12', '9', '2016-12-28 01:08:03', 'd', null);
INSERT INTO `ad_archive` VALUES ('126', 'Sprzedam AUDI', 'Sprzedam audi', '0', '14', '16', '355', '2016-12-28 12:26:00', '2017-01-11 12:26:00', null, '15000', '13', '2016-12-28 12:36:57', 'u', null);
INSERT INTO `ad_archive` VALUES ('127', 'Sprzedam MERCA', 'Sprzedam audi', '0', '14', '16', '355', '2016-12-28 12:26:00', '2017-01-11 12:26:00', null, '15000', '13', '2016-12-28 12:37:18', 'u', null);
INSERT INTO `ad_archive` VALUES ('128', 'Sprzedam MERCA', 'Sprzedam audi', '0', '14', '16', '355', '2016-12-28 12:26:00', '2017-01-11 12:26:00', null, '200000', '13', '2016-12-28 12:39:23', 'u', null);
INSERT INTO `ad_archive` VALUES ('129', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 'asa', '0', '14', '12', '332', '2016-12-27 13:07:06', '2017-01-10 13:07:06', null, '12', '10', '2016-12-28 12:41:28', 'u', null);
INSERT INTO `ad_archive` VALUES ('130', 'Sprzedam rower', 'we', '0', '14', '14', '913', '2016-12-28 12:22:48', '2017-01-11 12:22:48', null, '1200', '12', '2016-12-28 12:44:33', 'u', null);
INSERT INTO `ad_archive` VALUES ('131', 'Sprzedam mazdę', 'sdsd', '0', '14', '12', '409', '2016-12-28 13:32:39', '2017-01-11 13:32:39', null, '5000', '14', '2016-12-28 13:59:30', 'u', null);
INSERT INTO `ad_archive` VALUES ('132', 'Sprzedam mazdę', 'sdsd', '0', '14', '12', '409', '2016-12-28 13:32:39', '2017-01-11 13:32:39', null, '5000', '14', '2016-12-28 14:00:22', 'u', null);
INSERT INTO `ad_archive` VALUES ('133', 'Sprzedam mazdę!@$%$#@!E#@!?&quot;&gt;::', 'sdsd', '0', '14', '12', '409', '2016-12-28 13:32:39', '2017-01-11 13:32:39', null, '5000', '14', '2016-12-28 14:00:45', 'u', null);
INSERT INTO `ad_archive` VALUES ('134', 'sprzedam bazę danych', 'dsd', '0', '14', '12', '172', '2016-12-28 14:36:52', '2017-01-11 14:36:52', null, '150', '15', '2016-12-28 14:41:09', 'u', null);
INSERT INTO `ad_archive` VALUES ('135', 'sprzedam bazę danych', 'dsdasas', '0', '14', '12', '172', '2016-12-28 14:36:52', '2017-01-11 14:36:52', null, '150', '15', '2016-12-28 14:42:47', 'u', null);
INSERT INTO `ad_archive` VALUES ('136', 'sprzedam bazę danychv', 'dsdasas', '0', '14', '12', '172', '2016-12-28 14:36:52', '2017-01-11 14:36:52', null, '150', '15', '2016-12-28 14:44:12', 'u', null);
INSERT INTO `ad_archive` VALUES ('137', 'sas', 'dsd', '0', '14', '12', '366', '2016-12-28 14:45:17', '2017-01-11 14:45:17', null, '12', '16', '2016-12-28 14:46:58', 'u', null);
INSERT INTO `ad_archive` VALUES ('138', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 'asa', '0', '14', '15', '332', '2016-12-27 13:07:06', '2017-01-10 13:07:06', null, '12', '10', '2016-12-28 14:59:29', 'd', null);
INSERT INTO `ad_archive` VALUES ('139', 'aa', 'sd', '0', '14', '13', '423', '2016-12-28 00:56:18', '2017-01-11 00:56:18', null, '12', '11', '2016-12-28 14:59:32', 'd', null);
INSERT INTO `ad_archive` VALUES ('140', 'Sprzedam MERCA', 'Sprzedam merca', '0', '14', '16', '815', '2016-12-28 12:26:00', '2017-01-11 12:26:00', null, '20', '13', '2016-12-28 15:00:03', 'u', null);
INSERT INTO `ad_archive` VALUES ('141', 'Sprzedam rower i krowę', 'we', '0', '14', '14', '913', '2016-12-28 12:22:48', '2017-01-11 12:22:48', null, '1200', '12', '2016-12-28 15:03:21', 'u', null);
INSERT INTO `ad_archive` VALUES ('142', 'sprzedam bazę danychv', 'dsdasas', '0', '14', '12', '172', '2016-12-28 14:36:52', '2017-01-11 14:36:52', null, '150', '15', '2016-12-28 15:07:43', 'u', null);
INSERT INTO `ad_archive` VALUES ('143', 'Sprzedam rower i krowę', 'we', '0', '14', '14', '913', '2016-12-28 12:22:48', '2017-01-11 12:22:48', null, '1200', '12', '2016-12-28 15:12:24', 'd', null);
INSERT INTO `ad_archive` VALUES ('144', 'Sprzedam MERCAeee', 'Sprzedam merca', '0', '14', '16', '815', '2016-12-28 12:26:00', '2017-01-11 12:26:00', null, '20', '13', '2016-12-28 15:12:26', 'd', null);
INSERT INTO `ad_archive` VALUES ('145', 'Nie sprzedam mazdy', 'sdsd', '0', '14', '12', '409', '2016-12-28 13:32:39', '2017-01-11 13:32:39', null, '5000', '14', '2016-12-28 15:12:29', 'd', null);
INSERT INTO `ad_archive` VALUES ('146', 'sprzedam bazę danych', 'dsdasas', '0', '14', '12', '172', '2016-12-28 14:36:52', '2017-01-11 14:36:52', null, '150', '15', '2016-12-28 15:12:31', 'd', null);
INSERT INTO `ad_archive` VALUES ('147', 'sas', 'dsd', '0', '14', '12', '366', '2016-12-28 14:45:17', '2017-01-11 14:45:17', null, '12', '16', '2016-12-28 15:12:33', 'd', null);
INSERT INTO `ad_archive` VALUES ('148', 'Sprzedam wzór taylora', 'bla bla bla\r\n', '0', '14', '12', '762', '2016-12-28 15:13:01', '2017-01-11 15:13:01', null, '0', '17', '2016-12-28 15:29:43', 'd', null);
INSERT INTO `ad_archive` VALUES ('149', 'aaaa', 'da', '0', '14', '12', '84', '2016-12-28 15:29:54', '2017-01-11 15:29:54', null, '1212', '18', '2016-12-28 15:31:03', 'u', null);
INSERT INTO `ad_archive` VALUES ('150', 'aaaa', 'da', '0', '14', '12', '84', '2016-12-28 15:29:54', '2017-01-11 15:29:54', null, '1212', '18', '2016-12-28 15:31:37', 'u', null);
INSERT INTO `ad_archive` VALUES ('151', 'aaaa', 'da', '0', '14', '12', '84', '2016-12-28 15:29:54', '2017-01-11 15:29:54', null, '1212', '18', '2016-12-28 15:34:03', 'd', null);
INSERT INTO `ad_archive` VALUES ('152', 'a', 'sas', '0', '14', '12', '84', '2016-12-28 15:37:14', '2017-01-11 15:37:14', null, '12', '19', '2016-12-28 15:40:21', 'u', null);
INSERT INTO `ad_archive` VALUES ('153', 'a', 'sas', '0', '14', '12', '84', '2016-12-28 15:37:14', '2017-01-11 15:37:14', null, '12', '19', '2016-12-28 15:42:55', 'u', null);
INSERT INTO `ad_archive` VALUES ('154', 'a', 'sas', '0', '14', '12', '84', '2016-12-28 15:37:14', '2017-01-11 15:37:14', null, '12', '19', '2016-12-28 15:48:14', 'u', null);
INSERT INTO `ad_archive` VALUES ('155', 'a', 'sas', '0', '14', '12', '84', '2016-12-28 15:37:14', '2017-01-11 15:37:14', null, '12', '19', '2016-12-28 15:52:52', 'u', null);
INSERT INTO `ad_archive` VALUES ('156', 'a', 'sas', '0', '14', '12', '84', '2016-12-28 15:37:14', '2017-01-11 15:37:14', null, '12', '19', '2016-12-28 16:00:22', 'u', null);
INSERT INTO `ad_archive` VALUES ('157', 'a', 'sas', '0', '14', '12', '84', '2016-12-28 15:37:14', '2017-01-11 15:37:14', null, '12', '19', '2016-12-28 16:01:31', 'u', null);
INSERT INTO `ad_archive` VALUES ('158', 'a', 'sas', '0', '14', '12', '84', '2016-12-28 15:37:14', '2017-01-11 15:37:14', null, '12', '19', '2016-12-28 16:07:51', 'u', null);
INSERT INTO `ad_archive` VALUES ('159', 'a', 'sas', '0', '14', '12', '84', '2016-12-28 15:37:14', '2017-01-11 15:37:14', null, '12', '19', '2016-12-28 16:08:22', 'u', null);
INSERT INTO `ad_archive` VALUES ('160', 'a', 'sas', '0', '14', '12', '84', '2016-12-28 15:37:14', '2017-01-11 15:37:14', null, '12', '19', '2016-12-28 16:09:00', 'u', null);
INSERT INTO `ad_archive` VALUES ('161', 'a', 'sas', '0', '14', '12', '84', '2016-12-28 15:37:14', '2017-01-11 15:37:14', null, '12', '19', '2016-12-28 16:09:16', 'u', null);
INSERT INTO `ad_archive` VALUES ('162', 'a', 'sas', '0', '14', '12', '84', '2016-12-28 15:37:14', '2017-01-11 15:37:14', null, '12', '19', '2016-12-28 16:10:25', 'u', null);
INSERT INTO `ad_archive` VALUES ('163', 'a', 'sas', '0', '14', '12', '84', '2016-12-28 15:37:14', '2017-01-11 15:37:14', null, '12', '19', '2016-12-28 16:10:50', 'd', null);
INSERT INTO `ad_archive` VALUES ('164', 'kamil', 'sasa', '0', '14', '12', '332', '2016-12-28 16:14:04', '2017-01-11 16:14:04', null, '123', '20', '2016-12-28 16:24:47', 'u', null);
INSERT INTO `ad_archive` VALUES ('165', 'kamil', 'sasa', '0', '14', '12', '332', '2016-12-28 16:14:04', '2017-01-11 16:14:04', null, '123', '20', '2016-12-28 16:33:38', 'u', null);
INSERT INTO `ad_archive` VALUES ('166', 'kamil', 'sasa', '0', '14', '12', '332', '2016-12-28 16:14:04', '2017-01-11 16:14:04', null, '123', '20', '2016-12-28 16:35:14', 'u', null);
INSERT INTO `ad_archive` VALUES ('167', 'kamil', 'sasa', '0', '14', '12', '332', '2016-12-28 16:14:04', '2017-01-11 16:14:04', null, '123', '20', '2016-12-28 17:24:02', 'u', null);
INSERT INTO `ad_archive` VALUES ('168', 'kamil', 'sasa', '0', '14', '12', '332', '2016-12-28 16:14:04', '2017-01-11 16:14:04', null, '123', '20', '2016-12-28 21:20:20', 'u', null);
INSERT INTO `ad_archive` VALUES ('169', 'buaha', 'sdsd', '0', '16', '12', '84', '2016-12-28 21:40:39', '2017-01-11 21:40:39', null, '132', '21', '2016-12-28 21:49:55', 'u', null);
INSERT INTO `ad_archive` VALUES ('170', 'ahahaa', 'sdsd', '0', '16', '12', '84', '2016-12-28 21:40:39', '2017-01-11 21:40:39', null, '132', '21', '2016-12-28 21:50:04', 'd', null);

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
INSERT INTO `gallery` VALUES ('20', '27');

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
-- Table structure for `message`
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `id_message` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `from_message` int(10) unsigned NOT NULL,
  `to_message` int(10) unsigned NOT NULL,
  `ad_message` int(10) unsigned NOT NULL,
  `title_message` varchar(50) NOT NULL,
  `content_message` text NOT NULL,
  `parent_message` int(10) unsigned DEFAULT NULL,
  `send_date_message` datetime NOT NULL,
  `receive_date_message` datetime NOT NULL,
  PRIMARY KEY (`id_message`),
  KEY `parent_message_FK` (`parent_message`),
  KEY `ad_message_FK` (`ad_message`),
  KEY `from_message_FK` (`from_message`),
  KEY `to_message_FK` (`to_message`),
  CONSTRAINT `ad_message_FK` FOREIGN KEY (`ad_message`) REFERENCES `ad` (`id_ad`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `from_message_FK` FOREIGN KEY (`from_message`) REFERENCES `user` (`id_user`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `parent_message_FK` FOREIGN KEY (`parent_message`) REFERENCES `message` (`id_message`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `to_message_FK` FOREIGN KEY (`to_message`) REFERENCES `user` (`id_user`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of message
-- ----------------------------

-- ----------------------------
-- Table structure for `message_archive`
-- ----------------------------
DROP TABLE IF EXISTS `message_archive`;
CREATE TABLE `message_archive` (
  `id_message_archive` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `from_message_archive` int(10) unsigned NOT NULL,
  `to_message_archive` int(10) unsigned NOT NULL,
  `ad_message_archive` int(10) unsigned NOT NULL,
  `title_message_archive` varchar(50) NOT NULL,
  `content_message_archive` text NOT NULL,
  `parent_message_archive` int(10) unsigned DEFAULT NULL,
  `send_date_message_archive` datetime NOT NULL,
  `receive_date_message_archive` datetime NOT NULL,
  `id_message_message_archive` int(11) NOT NULL,
  `operation_date_message_archive` datetime NOT NULL,
  `operation_type_message_archive` char(1) NOT NULL,
  PRIMARY KEY (`id_message_archive`),
  KEY `from_message_archive_FK` (`from_message_archive`),
  KEY `to_message_archive_FK` (`to_message_archive`),
  KEY `ad_message_archive_FK` (`ad_message_archive`),
  KEY `parent_message_archive_FK` (`parent_message_archive`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of message_archive
-- ----------------------------

-- ----------------------------
-- Table structure for `photo`
-- ----------------------------
DROP TABLE IF EXISTS `photo`;
CREATE TABLE `photo` (
  `id_photo` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `location_photo` varchar(2083) NOT NULL,
  PRIMARY KEY (`id_photo`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of photo
-- ----------------------------
INSERT INTO `photo` VALUES ('27', '47faf3d50f0a05fec53a0bbe20fadae2/PIC_2.jpeg');

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
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of session
-- ----------------------------
INSERT INTO `session` VALUES ('87', '14', '0bd3dd089e332791257783c970c231b6f7a6d35460bf4d5eeb3185c6fe446ea134688e8989045aca', '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_1 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Version/9.0 Mobile/13B143 Safari/601.1', '2016-12-29 03:15:22');

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
  PRIMARY KEY (`id_user`),
  UNIQUE KEY `login_user_UK` (`login_user`) USING BTREE,
  UNIQUE KEY `mail_user_UK` (`mail_user`) USING BTREE,
  KEY `gender_user_FK` (`gender_user`),
  KEY `type_user_FK` (`type_user`),
  KEY `address_user_FK` (`address_user`),
  CONSTRAINT `address_user_FK` FOREIGN KEY (`address_user`) REFERENCES `address` (`id_address`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `gender_user_FK` FOREIGN KEY (`gender_user`) REFERENCES `gender` (`id_gender`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `type_user_FK` FOREIGN KEY (`type_user`) REFERENCES `user_type` (`id_user_type`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('14', 'kamil', 'f8029115524750cdc26c1e90fc033c019d48ee5e', 'kamilkf1@wp.pl', '2', 'Kamil', 'Kapka', '1', '798687923', '29', '2016-12-13 13:47:20', 'no', 'etTFI18KLs');
INSERT INTO `user` VALUES ('15', 'interia', 'bcc6558640cf09ca4c0c572d0300fb2f7b2138cd', 'interia@interia.pl', '3', 'interia', 'kamil', '2', '123', '30', '2016-12-13 13:57:32', 'no', 'nN5yBVSwCX');
INSERT INTO `user` VALUES ('16', 'kasia', '8711e52ac6935d54e8974ae5f530e5c6a400f43d', 'kasia@p.pl', '3', 'Kasia', 'Kapka', '2', '123', '31', '2016-12-13 18:40:27', 'no', 'F8cRW6OSMe');

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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

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

-- ----------------------------
-- Table structure for `user_log`
-- ----------------------------
DROP TABLE IF EXISTS `user_log`;
CREATE TABLE `user_log` (
  `id_user_log` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `user_user_log` int(6) unsigned NOT NULL,
  `login_datetime_user_log` datetime NOT NULL,
  `ip_user_log` varchar(50) NOT NULL,
  PRIMARY KEY (`id_user_log`),
  KEY `user_FK` (`user_user_log`),
  CONSTRAINT `user_FK` FOREIGN KEY (`user_user_log`) REFERENCES `user` (`id_user`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_log
-- ----------------------------

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
-- Procedure structure for `add_user`
-- ----------------------------
DROP PROCEDURE IF EXISTS `add_user`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_user`(IN login varchar(255), IN password varchar(255), IN mail varchar(255), IN type int(10), IN name varchar(100), IN surname varchar(100), IN gender int(10), IN telephone int(10), IN address int(10), IN salt varchar(255))
BEGIN
	INSERT INTO user (id_user,login_user,password_user, mail_user,type_user,name_user,surname_user,gender_user,telephone_number_user,address_user,register_datetime_user,lock_user,salt_user)
	VALUES (NULL,login,password, mail,type,name,surname,gender,telephone,address,SYSDATE(),'no',salt);
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
CREATE TRIGGER `ON_UPDATE` AFTER UPDATE ON `ad` FOR EACH ROW INSERT INTO ad_archive (title_ad_archive,description_ad_archive,view_counter_ad_archive,author_ad_archive,category_ad_archive,location_ad_archive,datetime_add_ad_archive,datetime_end_ad_archive,gallery_ad_archive,price_ad_archive,id_ad_ad_archive,operation_date_ad_archive,operation_type_ad_archive,thumbnail_ad_archive)
VALUES (old.title_ad,old.description_ad,old.view_counter_ad,old.author_ad,old.category_ad,old.location_ad,old.datetime_add_ad,old.datetime_end_ad,old.gallery_ad,old.price_ad,old.id_ad,SYSDATE(),'u',old.thumbnail_ad)
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `ON_DELETE`;
DELIMITER ;;
CREATE TRIGGER `ON_DELETE` AFTER DELETE ON `ad` FOR EACH ROW INSERT INTO ad_archive (title_ad_archive,description_ad_archive,view_counter_ad_archive,author_ad_archive,category_ad_archive,location_ad_archive,datetime_add_ad_archive,datetime_end_ad_archive,gallery_ad_archive,price_ad_archive,id_ad_ad_archive,operation_date_ad_archive,operation_type_ad_archive,thumbnail_ad_archive)
VALUES (old.title_ad,old.description_ad,old.view_counter_ad,old.author_ad,old.category_ad,old.location_ad,old.datetime_add_ad,old.datetime_end_ad,old.gallery_ad,old.price_ad,old.id_ad,SYSDATE(),'d',old.thumbnail_ad)
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
