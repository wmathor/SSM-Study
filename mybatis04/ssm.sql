/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : ssm

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2019-03-15 15:35:28
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `content` longtext NOT NULL,
  `time` datetime NOT NULL,
  `author` int(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_NEWS_AUTHOR` (`author`),
  CONSTRAINT `FK_NEWS_AUTHOR` FOREIGN KEY (`author`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=329 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('5', 'News Title', 'News Content', '2019-03-14 11:21:18', '1');
INSERT INTO `news` VALUES ('6', 'News Title', 'News Content', '2019-03-14 11:47:28', '2');
INSERT INTO `news` VALUES ('7', 'News Title', 'News Content', '2019-03-14 11:47:32', '1');
INSERT INTO `news` VALUES ('8', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('9', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('10', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('11', 'News Titlex', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('12', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('13', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('14', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('15', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('16', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('17', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('18', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('19', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('20', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('21', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('22', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('23', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('24', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('25', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('26', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('27', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('28', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('29', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('30', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('31', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('32', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('33', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('34', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('35', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('36', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('37', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('38', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('39', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('40', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('41', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('42', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('43', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('44', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('45', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('46', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('47', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('48', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('49', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('50', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('51', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('52', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('53', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('54', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('55', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('56', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('57', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('58', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('59', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('60', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('61', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('62', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('63', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('64', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('65', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('66', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('67', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('68', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('69', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('70', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('71', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('72', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('73', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('74', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('75', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('76', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('77', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('78', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('79', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('80', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('81', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('82', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('83', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('84', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('85', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('86', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('87', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('88', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('89', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('90', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('91', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('92', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('93', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('94', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('95', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('96', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('97', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('98', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('99', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('100', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('101', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('102', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('103', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('104', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('105', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('106', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('107', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('108', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('109', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('110', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('111', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('112', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('113', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('114', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('115', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('116', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('117', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('118', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('119', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('120', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('121', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('122', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('123', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('124', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('125', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('126', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('127', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('128', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('129', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('130', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('131', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('132', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('133', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('134', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('135', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('136', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('137', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('138', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('139', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('140', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('141', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('142', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('143', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('144', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('145', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('146', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('147', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('148', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('149', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('150', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('151', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('152', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('153', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('154', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('155', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('156', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('157', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('158', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('159', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('160', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('161', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('162', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('163', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('164', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('165', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('166', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('167', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('168', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('169', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('170', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('171', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('172', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('173', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('174', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('175', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('176', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('177', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('178', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('179', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('180', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('181', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('182', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('183', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('184', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('185', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('186', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('187', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('188', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('189', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('190', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('191', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('192', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('193', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('194', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('195', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('196', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('197', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('198', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('199', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('200', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('201', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('202', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('203', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('204', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('205', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('206', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('207', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('208', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('209', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('210', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('211', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('212', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('213', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('214', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('215', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('216', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('217', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('218', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('219', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('220', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('221', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('222', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('223', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('224', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('225', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('226', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('227', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('228', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('229', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('230', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('231', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('232', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('233', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('234', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('235', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('236', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('237', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('238', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('239', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('240', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('241', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('242', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('243', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('244', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('245', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('246', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('247', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('248', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('249', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('250', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('251', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('252', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('253', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('254', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('255', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('256', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('257', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('258', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('259', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('260', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('261', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('262', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('263', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('264', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('265', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('266', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('267', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('268', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('269', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('270', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('271', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('272', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('273', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('274', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('275', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('276', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('277', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('278', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('279', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('280', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('281', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('282', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('283', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('284', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('285', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('286', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('287', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('288', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('289', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('290', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('291', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('292', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('293', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('294', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('295', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('296', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('297', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('298', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('299', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('300', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('301', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('302', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('303', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('304', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('305', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('306', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('307', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('308', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('309', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('310', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('311', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('312', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('313', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('314', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('315', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('316', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('317', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('318', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('319', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('320', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('321', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('322', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('323', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('324', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('325', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('326', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('327', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');
INSERT INTO `news` VALUES ('328', 'News Title', 'News Content', '2019-03-15 15:31:02', '1');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL,
  `password` varchar(64) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `sex` varchar(8) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'root', 'root', '普通用户', '女', '21');
INSERT INTO `user` VALUES ('2', 'admin', 'admin', '系统管理员', '男', '20');
