/*
Navicat MySQL Data Transfer

Source Server         : ssm
Source Server Version : 50549
Source Host           : localhost:3306
Source Database       : ssmpro

Target Server Type    : MYSQL
Target Server Version : 50549
File Encoding         : 65001

Date: 2018-08-15 08:58:39
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `device`
-- ----------------------------
DROP TABLE IF EXISTS `device`;
CREATE TABLE `device` (
  `dev_id` int(11) NOT NULL AUTO_INCREMENT,
  `dev_sn` varchar(255) DEFAULT NULL,
  `dev_name` varchar(255) NOT NULL,
  `dev_addr` varchar(255) DEFAULT NULL,
  `dev_price` double(20,0) DEFAULT NULL,
  `dev_detail` text,
  PRIMARY KEY (`dev_id`)
) ENGINE=InnoDB AUTO_INCREMENT=311 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of device
-- ----------------------------
INSERT INTO `device` VALUES ('1', 'a53a129c0', '海康球机', '杭州总部', '1235', '质量好！！！');
INSERT INTO `device` VALUES ('2', 'd51ed6e11', '海康球机', '杭州总部', '2001', '质量好！！！');
INSERT INTO `device` VALUES ('3', 'df4ac81c2', '海康球机', '杭州总部', '2002', '质量好！！！');
INSERT INTO `device` VALUES ('4', 'f5c123303', '海康球机', '杭州总部', '2003', '质量好！！！');
INSERT INTO `device` VALUES ('5', 'dab32ffd4', '海康球机', '杭州总部', '2004', '质量好！！！');
INSERT INTO `device` VALUES ('6', 'b4e9f7ca5', '海康球机', '杭州总部', '2005', '质量好！！！');
INSERT INTO `device` VALUES ('7', 'c8e94e2d6', '海康球机', '杭州总部', '2006', '质量好！！！');
INSERT INTO `device` VALUES ('8', '7f7ae5da7', '海康球机', '杭州总部', '2007', '质量好！！！');
INSERT INTO `device` VALUES ('9', 'ac4323868', '海康球机', '杭州总部', '2008', '质量好！！！');
INSERT INTO `device` VALUES ('10', 'fe4fe6959', '海康球机', '杭州总部', '2009', '质量好！！！');
INSERT INTO `device` VALUES ('11', '68e9bd4110', '海康球机', '杭州总部', '2010', '质量好！！！');
INSERT INTO `device` VALUES ('12', '3c4cfe7211', '海康球机', '杭州总部', '2011', '质量好！！！');
INSERT INTO `device` VALUES ('13', '693359b012', '海康球机', '杭州总部', '2012', '质量好！！！');
INSERT INTO `device` VALUES ('14', 'e8b392f213', '海康球机', '杭州总部', '2013', '质量好！！！');
INSERT INTO `device` VALUES ('15', '47a6616714', '海康球机', '杭州总部', '2014', '质量好！！！');
INSERT INTO `device` VALUES ('16', 'a3eeb5b015', '海康球机', '杭州总部', '2015', '质量好！！！');
INSERT INTO `device` VALUES ('17', '2129637516', '海康球机', '杭州总部', '2016', '质量好！！！');
INSERT INTO `device` VALUES ('18', '7df17cb217', '海康球机', '杭州总部', '2017', '质量好！！！');
INSERT INTO `device` VALUES ('19', 'a7ef019318', '海康球机', '杭州总部', '2018', '质量好！！！');
INSERT INTO `device` VALUES ('20', 'ba15872419', '海康球机', '杭州总部', '2019', '质量好！！！');
INSERT INTO `device` VALUES ('21', 'eb75458e20', '海康球机', '杭州总部', '2020', '质量好！！！');
INSERT INTO `device` VALUES ('22', '4ae2c8ec21', '海康球机', '杭州总部', '2021', '质量好！！！');
INSERT INTO `device` VALUES ('23', 'ee14aecf22', '海康球机', '杭州总部', '2022', '质量好！！！');
INSERT INTO `device` VALUES ('24', '2bf61d5723', '海康球机', '杭州总部', '2023', '质量好！！！');
INSERT INTO `device` VALUES ('25', 'ec7cba3324', '海康球机', '杭州总部', '2024', '质量好！！！');
INSERT INTO `device` VALUES ('26', 'dd7eaaef25', '海康球机', '杭州总部', '2025', '质量好！！！');
INSERT INTO `device` VALUES ('27', '9c1abe8a26', '海康球机', '杭州总部', '2026', '质量好！！！');
INSERT INTO `device` VALUES ('28', '22b0af1227', '海康球机', '杭州总部', '2027', '质量好！！！');
INSERT INTO `device` VALUES ('29', '174c294228', '海康球机', '杭州总部', '2028', '质量好！！！');
INSERT INTO `device` VALUES ('30', '22cd1fe529', '海康球机', '杭州总部', '2029', '质量好！！！');
INSERT INTO `device` VALUES ('31', 'a8257be20', '海康显示器', '杭州总部', '3000', '开拓视界！！！');
INSERT INTO `device` VALUES ('32', '1c4d0d3e1', '海康显示器', '杭州总部', '3001', '开拓视界！！！');
INSERT INTO `device` VALUES ('33', '7f9e171b2', '海康显示器', '杭州总部', '3002', '开拓视界！！！');
INSERT INTO `device` VALUES ('34', '85d3c66c3', '海康显示器', '杭州总部', '3003', '开拓视界！！！');
INSERT INTO `device` VALUES ('35', 'b05779804', '海康显示器', '杭州总部', '3004', '开拓视界！！！');
INSERT INTO `device` VALUES ('36', 'd4d11c165', '海康显示器', '杭州总部', '3005', '开拓视界！！！');
INSERT INTO `device` VALUES ('37', '87906ce26', '海康显示器', '杭州总部', '3006', '开拓视界！！！');
INSERT INTO `device` VALUES ('38', '526734e97', '海康显示器', '杭州总部', '3007', '开拓视界！！！');
INSERT INTO `device` VALUES ('39', '3ec4267e8', '海康显示器', '杭州总部', '3008', '开拓视界！！！');
INSERT INTO `device` VALUES ('40', '3d474eb59', '海康显示器', '杭州总部', '3009', '开拓视界！！！');
INSERT INTO `device` VALUES ('41', 'b091fc4210', '海康显示器', '杭州总部', '3010', '开拓视界！！！');
INSERT INTO `device` VALUES ('42', '011ff0e111', '海康显示器', '杭州总部', '3011', '开拓视界！！！');
INSERT INTO `device` VALUES ('43', '10be591212', '海康显示器', '杭州总部', '3012', '开拓视界！！！');
INSERT INTO `device` VALUES ('44', '98fff91c13', '海康显示器', '杭州总部', '3013', '开拓视界！！！');
INSERT INTO `device` VALUES ('45', 'a6f7d84114', '海康显示器', '杭州总部', '3014', '开拓视界！！！');
INSERT INTO `device` VALUES ('46', '981f0cbe15', '海康显示器', '杭州总部', '3015', '开拓视界！！！');
INSERT INTO `device` VALUES ('47', '2488ddd516', '海康显示器', '杭州总部', '3016', '开拓视界！！！');
INSERT INTO `device` VALUES ('48', '1c0dfd6917', '海康显示器', '杭州总部', '3017', '开拓视界！！！');
INSERT INTO `device` VALUES ('49', '551ed22e18', '海康显示器', '杭州总部', '3018', '开拓视界！！！');
INSERT INTO `device` VALUES ('50', '050251d519', '海康显示器', '杭州总部', '3019', '开拓视界！！！');
INSERT INTO `device` VALUES ('51', 'b74aca4420', '海康显示器', '杭州总部', '3020', '开拓视界！！！');
INSERT INTO `device` VALUES ('52', '574b6a1d21', '海康显示器', '杭州总部', '3021', '开拓视界！！！');
INSERT INTO `device` VALUES ('53', '8433c43222', '海康显示器', '杭州总部', '3022', '开拓视界！！！');
INSERT INTO `device` VALUES ('54', '1b10096023', '海康显示器', '杭州总部', '3023', '开拓视界！！！');
INSERT INTO `device` VALUES ('55', '869b481724', '海康显示器', '杭州总部', '3024', '开拓视界！！！');
INSERT INTO `device` VALUES ('56', 'abfd1d4525', '海康显示器', '杭州总部', '3025', '开拓视界！！！');
INSERT INTO `device` VALUES ('57', '808267b726', '海康显示器', '杭州总部', '3026', '开拓视界！！！');
INSERT INTO `device` VALUES ('58', 'da2dcc1e27', '海康显示器', '杭州总部', '3027', '开拓视界！！！');
INSERT INTO `device` VALUES ('59', '95b211eb28', '海康显示器', '杭州总部', '3028', '开拓视界！！！');
INSERT INTO `device` VALUES ('60', '7575c2ff29', '海康显示器', '杭州总部', '3029', '开拓视界！！！');
INSERT INTO `device` VALUES ('61', '1b3ca1470', '萤石摄像头', '杭州总部', '4000', '追求卓越！！！');
INSERT INTO `device` VALUES ('62', 'd4d78eb61', '萤石摄像头', '杭州总部', '4001', '追求卓越！！！');
INSERT INTO `device` VALUES ('63', 'f7ddcf862', '萤石摄像头', '杭州总部', '4002', '追求卓越！！！');
INSERT INTO `device` VALUES ('64', '9047aea93', '萤石摄像头', '杭州总部', '4003', '追求卓越！！！');
INSERT INTO `device` VALUES ('65', '84896a254', '萤石摄像头', '杭州总部', '4004', '追求卓越！！！');
INSERT INTO `device` VALUES ('66', '0d66e5af5', '萤石摄像头', '杭州总部', '4005', '追求卓越！！！');
INSERT INTO `device` VALUES ('67', '2f09a91a6', '萤石摄像头', '杭州总部', '4006', '追求卓越！！！');
INSERT INTO `device` VALUES ('68', 'cba7ee1d7', '萤石摄像头', '杭州总部', '4007', '追求卓越！！！');
INSERT INTO `device` VALUES ('69', 'ffbd98318', '萤石摄像头', '杭州总部', '4008', '追求卓越！！！');
INSERT INTO `device` VALUES ('70', '2c5547d29', '萤石摄像头', '杭州总部', '4009', '追求卓越！！！');
INSERT INTO `device` VALUES ('71', '35f91d2410', '萤石摄像头', '杭州总部', '4010', '追求卓越！！！');
INSERT INTO `device` VALUES ('72', '1474dae111', '萤石摄像头', '杭州总部', '4011', '追求卓越！！！');
INSERT INTO `device` VALUES ('73', '8d9e2ecc12', '萤石摄像头', '杭州总部', '4012', '追求卓越！！！');
INSERT INTO `device` VALUES ('74', '8ff7cfd113', '萤石摄像头', '杭州总部', '4013', '追求卓越！！！');
INSERT INTO `device` VALUES ('75', 'e63aa67314', '萤石摄像头', '杭州总部', '4014', '追求卓越！！！');
INSERT INTO `device` VALUES ('76', '219d1e8215', '萤石摄像头', '杭州总部', '4015', '追求卓越！！！');
INSERT INTO `device` VALUES ('77', '364fab9316', '萤石摄像头', '杭州总部', '4016', '追求卓越！！！');
INSERT INTO `device` VALUES ('78', '6927646617', '萤石摄像头', '杭州总部', '4017', '追求卓越！！！');
INSERT INTO `device` VALUES ('79', '4900a52018', '萤石摄像头', '杭州总部', '4018', '追求卓越！！！');
INSERT INTO `device` VALUES ('80', '9072233019', '萤石摄像头', '杭州总部', '4019', '追求卓越！！！');
INSERT INTO `device` VALUES ('81', '7850e5c320', '萤石摄像头', '杭州总部', '4020', '追求卓越！！！');
INSERT INTO `device` VALUES ('82', 'dcf73fbd21', '萤石摄像头', '杭州总部', '4021', '追求卓越！！！');
INSERT INTO `device` VALUES ('83', 'fa8e37ef22', '萤石摄像头', '杭州总部', '4022', '追求卓越！！！');
INSERT INTO `device` VALUES ('84', '7cee0af023', '萤石摄像头', '杭州总部', '4023', '追求卓越！！！');
INSERT INTO `device` VALUES ('85', '9cfee1d824', '萤石摄像头', '杭州总部', '4024', '追求卓越！！！');
INSERT INTO `device` VALUES ('86', 'd1a7895f25', '萤石摄像头', '杭州总部', '4025', '追求卓越！！！');
INSERT INTO `device` VALUES ('87', '57f2302326', '萤石摄像头', '杭州总部', '4026', '追求卓越！！！');
INSERT INTO `device` VALUES ('88', '9b9534e027', '萤石摄像头', '杭州总部', '4027', '追求卓越！！！');
INSERT INTO `device` VALUES ('89', '575db0e628', '萤石摄像头', '杭州总部', '4028', '追求卓越！！！');
INSERT INTO `device` VALUES ('90', '9002d0e029', '萤石摄像头', '杭州总部', '4029', '追求卓越！！！');
INSERT INTO `device` VALUES ('91', 'fae241100', '萤石运动相机', '杭州总部', '5000', '诚信务实！！！');
INSERT INTO `device` VALUES ('92', 'e60f0e2d1', '萤石运动相机', '杭州总部', '5001', '诚信务实！！！');
INSERT INTO `device` VALUES ('93', '7b359bba2', '萤石运动相机', '杭州总部', '5002', '诚信务实！！！');
INSERT INTO `device` VALUES ('94', '3c96af423', '萤石运动相机', '杭州总部', '5003', '诚信务实！！！');
INSERT INTO `device` VALUES ('95', '38ded5d84', '萤石运动相机', '杭州总部', '5004', '诚信务实！！！');
INSERT INTO `device` VALUES ('96', '3a31f0465', '萤石运动相机', '杭州总部', '5005', '诚信务实！！！');
INSERT INTO `device` VALUES ('97', 'a3a7a7f46', '萤石运动相机', '杭州总部', '5006', '诚信务实！！！');
INSERT INTO `device` VALUES ('98', '2b6e83867', '萤石运动相机', '杭州总部', '5007', '诚信务实！！！');
INSERT INTO `device` VALUES ('99', '794c92c28', '萤石运动相机', '杭州总部', '5008', '诚信务实！！！');
INSERT INTO `device` VALUES ('100', '6780c7bb9', '萤石运动相机', '杭州总部', '5009', '诚信务实！！！');
INSERT INTO `device` VALUES ('101', 'b0694bd210', '萤石运动相机', '杭州总部', '5010', '诚信务实！！！');
INSERT INTO `device` VALUES ('102', '26f8c31d11', '萤石运动相机', '杭州总部', '5011', '诚信务实！！！');
INSERT INTO `device` VALUES ('103', '6b79b13512', '萤石运动相机', '杭州总部', '5012', '诚信务实！！！');
INSERT INTO `device` VALUES ('104', 'a22eabdd13', '萤石运动相机', '杭州总部', '5013', '诚信务实！！！');
INSERT INTO `device` VALUES ('105', '45f507da14', '萤石运动相机', '杭州总部', '5014', '诚信务实！！！');
INSERT INTO `device` VALUES ('106', '8cb0f08f15', '萤石运动相机', '杭州总部', '5015', '诚信务实！！！');
INSERT INTO `device` VALUES ('107', 'ef61966a16', '萤石运动相机', '杭州总部', '5016', '诚信务实！！！');
INSERT INTO `device` VALUES ('108', 'dc3e7bae17', '萤石运动相机', '杭州总部', '5017', '诚信务实！！！');
INSERT INTO `device` VALUES ('109', '5ef2481018', '萤石运动相机', '杭州总部', '5018', '诚信务实！！！');
INSERT INTO `device` VALUES ('110', 'fed59e5e19', '萤石运动相机', '杭州总部', '5019', '诚信务实！！！');
INSERT INTO `device` VALUES ('111', '28869a2720', '萤石运动相机', '杭州总部', '5020', '诚信务实！！！');
INSERT INTO `device` VALUES ('112', '939f422921', '萤石运动相机', '杭州总部', '5021', '诚信务实！！！');
INSERT INTO `device` VALUES ('113', '8e20ccba22', '萤石运动相机', '杭州总部', '5022', '诚信务实！！！');
INSERT INTO `device` VALUES ('114', '1470d9d823', '萤石运动相机', '杭州总部', '5023', '诚信务实！！！');
INSERT INTO `device` VALUES ('115', '78af421a24', '萤石运动相机', '杭州总部', '5024', '诚信务实！！！');
INSERT INTO `device` VALUES ('116', '6ab1175625', '萤石运动相机', '杭州总部', '5025', '诚信务实！！！');
INSERT INTO `device` VALUES ('117', '75e749cd26', '萤石运动相机', '杭州总部', '5026', '诚信务实！！！');
INSERT INTO `device` VALUES ('118', 'c6b8da5327', '萤石运动相机', '杭州总部', '5027', '诚信务实！！！');
INSERT INTO `device` VALUES ('119', 'cdf34cfc28', '萤石运动相机', '杭州总部', '5028', '诚信务实！！！');
INSERT INTO `device` VALUES ('120', '448f53cb29', '萤石运动相机', '杭州总部', '5029', '诚信务实！！！');
INSERT INTO `device` VALUES ('121', '3f24308f0', '网络红外高速智能球机', '杭州总部', '6000', '好好好！！！');
INSERT INTO `device` VALUES ('122', '8bf636241', '网络红外高速智能球机', '杭州总部', '6001', '好好好！！！');
INSERT INTO `device` VALUES ('123', '5bf918a12', '网络红外高速智能球机', '杭州总部', '6002', '好好好！！！');
INSERT INTO `device` VALUES ('124', '0cd9e62a3', '网络红外高速智能球机', '杭州总部', '6003', '好好好！！！');
INSERT INTO `device` VALUES ('125', 'b67ec0494', '网络红外高速智能球机', '杭州总部', '6004', '好好好！！！');
INSERT INTO `device` VALUES ('126', 'f6da0d5c5', '网络红外高速智能球机', '杭州总部', '6005', '好好好！！！');
INSERT INTO `device` VALUES ('127', '80a347fc6', '网络红外高速智能球机', '杭州总部', '6006', '好好好！！！');
INSERT INTO `device` VALUES ('128', '033d719d7', '网络红外高速智能球机', '杭州总部', '6007', '好好好！！！');
INSERT INTO `device` VALUES ('129', 'f28be8e08', '网络红外高速智能球机', '杭州总部', '6008', '好好好！！！');
INSERT INTO `device` VALUES ('130', '46aaeb529', '网络红外高速智能球机', '杭州总部', '6009', '好好好！！！');
INSERT INTO `device` VALUES ('131', '3a70bba110', '网络红外高速智能球机', '杭州总部', '6010', '好好好！！！');
INSERT INTO `device` VALUES ('132', 'a605b9f711', '网络红外高速智能球机', '杭州总部', '6011', '好好好！！！');
INSERT INTO `device` VALUES ('133', '18dfc0b512', '网络红外高速智能球机', '杭州总部', '6012', '好好好！！！');
INSERT INTO `device` VALUES ('134', 'bf4e311c13', '网络红外高速智能球机', '杭州总部', '6013', '好好好！！！');
INSERT INTO `device` VALUES ('135', 'ac8fd20b14', '网络红外高速智能球机', '杭州总部', '6014', '好好好！！！');
INSERT INTO `device` VALUES ('136', 'a508415d15', '网络红外高速智能球机', '杭州总部', '6015', '好好好！！！');
INSERT INTO `device` VALUES ('137', '703fff7816', '网络红外高速智能球机', '杭州总部', '6016', '好好好！！！');
INSERT INTO `device` VALUES ('138', 'f4ce335817', '网络红外高速智能球机', '杭州总部', '6017', '好好好！！！');
INSERT INTO `device` VALUES ('139', '4d8e33f318', '网络红外高速智能球机', '杭州总部', '6018', '好好好！！！');
INSERT INTO `device` VALUES ('140', '691a45a919', '网络红外高速智能球机', '杭州总部', '6019', '好好好！！！');
INSERT INTO `device` VALUES ('141', 'fb5532b120', '网络红外高速智能球机', '杭州总部', '6020', '好好好！！！');
INSERT INTO `device` VALUES ('142', 'daba247a21', '网络红外高速智能球机', '杭州总部', '6021', '好好好！！！');
INSERT INTO `device` VALUES ('143', 'ac479c7d22', '网络红外高速智能球机', '杭州总部', '6022', '好好好！！！');
INSERT INTO `device` VALUES ('144', '6cd5e7ba23', '网络红外高速智能球机', '杭州总部', '6023', '好好好！！！');
INSERT INTO `device` VALUES ('145', 'bfcb373d24', '网络红外高速智能球机', '杭州总部', '6024', '好好好！！！');
INSERT INTO `device` VALUES ('146', '5a9bfeb125', '网络红外高速智能球机', '杭州总部', '6025', '好好好！！！');
INSERT INTO `device` VALUES ('147', 'a9e208cb26', '网络红外高速智能球机', '杭州总部', '6026', '好好好！！！');
INSERT INTO `device` VALUES ('148', '9b6fe9ed27', '网络红外高速智能球机', '杭州总部', '6027', '好好好！！！');
INSERT INTO `device` VALUES ('149', 'bf89a20828', '网络红外高速智能球机', '杭州总部', '6028', '好好好！！！');
INSERT INTO `device` VALUES ('150', 'eace9d0729', '网络红外高速智能球机', '杭州总部', '6029', '好好好！！！');
INSERT INTO `device` VALUES ('151', '0f98289f0', '红外防水半球型摄像机', '杭州总部', '3640', '啥都好！！！');
INSERT INTO `device` VALUES ('152', '50d8eb211', '红外防水半球型摄像机', '杭州总部', '3641', '啥都好！！！');
INSERT INTO `device` VALUES ('153', 'bb3b15df2', '红外防水半球型摄像机', '杭州总部', '3642', '啥都好！！！');
INSERT INTO `device` VALUES ('154', '7b00b4383', '红外防水半球型摄像机', '杭州总部', '3643', '啥都好！！！');
INSERT INTO `device` VALUES ('155', 'a41637b74', '红外防水半球型摄像机', '杭州总部', '3644', '啥都好！！！');
INSERT INTO `device` VALUES ('156', '576512ef5', '红外防水半球型摄像机', '杭州总部', '3645', '啥都好！！！');
INSERT INTO `device` VALUES ('157', 'f687c4556', '红外防水半球型摄像机', '杭州总部', '3646', '啥都好！！！');
INSERT INTO `device` VALUES ('158', '7a99e32e7', '红外防水半球型摄像机', '杭州总部', '3647', '啥都好！！！');
INSERT INTO `device` VALUES ('159', '9a17a8fa8', '红外防水半球型摄像机', '杭州总部', '3648', '啥都好！！！');
INSERT INTO `device` VALUES ('160', '0470485b9', '红外防水半球型摄像机', '杭州总部', '3649', '啥都好！！！');
INSERT INTO `device` VALUES ('161', '89481b7710', '红外防水半球型摄像机', '杭州总部', '3650', '啥都好！！！');
INSERT INTO `device` VALUES ('162', '6440a00711', '红外防水半球型摄像机', '杭州总部', '3651', '啥都好！！！');
INSERT INTO `device` VALUES ('163', '0be0f54b12', '红外防水半球型摄像机', '杭州总部', '3652', '啥都好！！！');
INSERT INTO `device` VALUES ('164', 'de3c792c13', '红外防水半球型摄像机', '杭州总部', '3653', '啥都好！！！');
INSERT INTO `device` VALUES ('165', '5e46a4a914', '红外防水半球型摄像机', '杭州总部', '3654', '啥都好！！！');
INSERT INTO `device` VALUES ('166', '70fd9a7115', '红外防水半球型摄像机', '杭州总部', '3655', '啥都好！！！');
INSERT INTO `device` VALUES ('167', 'e68c1e7016', '红外防水半球型摄像机', '杭州总部', '3656', '啥都好！！！');
INSERT INTO `device` VALUES ('168', '337286f617', '红外防水半球型摄像机', '杭州总部', '3657', '啥都好！！！');
INSERT INTO `device` VALUES ('169', '4fc8ebf918', '红外防水半球型摄像机', '杭州总部', '3658', '啥都好！！！');
INSERT INTO `device` VALUES ('170', '47add9b719', '红外防水半球型摄像机', '杭州总部', '3659', '啥都好！！！');
INSERT INTO `device` VALUES ('171', '7dc08d4d20', '红外防水半球型摄像机', '杭州总部', '3660', '啥都好！！！');
INSERT INTO `device` VALUES ('172', 'd9e8c38821', '红外防水半球型摄像机', '杭州总部', '3661', '啥都好！！！');
INSERT INTO `device` VALUES ('173', '0aac4c0e22', '红外防水半球型摄像机', '杭州总部', '3662', '啥都好！！！');
INSERT INTO `device` VALUES ('174', '1c1ead8023', '红外防水半球型摄像机', '杭州总部', '3663', '啥都好！！！');
INSERT INTO `device` VALUES ('175', 'dc524df324', '红外防水半球型摄像机', '杭州总部', '3664', '啥都好！！！');
INSERT INTO `device` VALUES ('176', '2099099d25', '红外防水半球型摄像机', '杭州总部', '3665', '啥都好！！！');
INSERT INTO `device` VALUES ('177', '57cb448526', '红外防水半球型摄像机', '杭州总部', '3666', '啥都好！！！');
INSERT INTO `device` VALUES ('178', '66738f6727', '红外防水半球型摄像机', '杭州总部', '3667', '啥都好！！！');
INSERT INTO `device` VALUES ('179', '86163edc28', '红外防水半球型摄像机', '杭州总部', '3668', '啥都好！！！');
INSERT INTO `device` VALUES ('180', 'd027836d29', '红外防水半球型摄像机', '杭州总部', '3669', '啥都好！！！');
INSERT INTO `device` VALUES ('181', '5d4d84ee0', 'CCD日夜型高清数字摄像机', '杭州总部', '9900', '很好啊好！！！');
INSERT INTO `device` VALUES ('182', 'd9b238fb1', 'CCD日夜型高清数字摄像机', '杭州总部', '9901', '很好啊好！！！');
INSERT INTO `device` VALUES ('183', '2439ecdc2', 'CCD日夜型高清数字摄像机', '杭州总部', '9902', '很好啊好！！！');
INSERT INTO `device` VALUES ('184', '8b35c0813', 'CCD日夜型高清数字摄像机', '杭州总部', '9903', '很好啊好！！！');
INSERT INTO `device` VALUES ('185', '6a2f19c64', 'CCD日夜型高清数字摄像机', '杭州总部', '9904', '很好啊好！！！');
INSERT INTO `device` VALUES ('186', 'af1480965', 'CCD日夜型高清数字摄像机', '杭州总部', '9905', '很好啊好！！！');
INSERT INTO `device` VALUES ('187', '99c0985f6', 'CCD日夜型高清数字摄像机', '杭州总部', '9906', '很好啊好！！！');
INSERT INTO `device` VALUES ('188', '4a8872f37', 'CCD日夜型高清数字摄像机', '杭州总部', '9907', '很好啊好！！！');
INSERT INTO `device` VALUES ('189', '82a422ee8', 'CCD日夜型高清数字摄像机', '杭州总部', '9908', '很好啊好！！！');
INSERT INTO `device` VALUES ('190', '3780a43a9', 'CCD日夜型高清数字摄像机', '杭州总部', '9909', '很好啊好！！！');
INSERT INTO `device` VALUES ('191', '92e95d4310', 'CCD日夜型高清数字摄像机', '杭州总部', '9910', '很好啊好！！！');
INSERT INTO `device` VALUES ('192', '73d7174d11', 'CCD日夜型高清数字摄像机', '杭州总部', '9911', '很好啊好！！！');
INSERT INTO `device` VALUES ('193', 'a28039a212', 'CCD日夜型高清数字摄像机', '杭州总部', '9912', '很好啊好！！！');
INSERT INTO `device` VALUES ('194', 'ffeec7fb13', 'CCD日夜型高清数字摄像机', '杭州总部', '9913', '很好啊好！！！');
INSERT INTO `device` VALUES ('195', '0f6c584c14', 'CCD日夜型高清数字摄像机', '杭州总部', '9914', '很好啊好！！！');
INSERT INTO `device` VALUES ('196', '2164ec0115', 'CCD日夜型高清数字摄像机', '杭州总部', '9915', '很好啊好！！！');
INSERT INTO `device` VALUES ('197', 'df44f38716', 'CCD日夜型高清数字摄像机', '杭州总部', '9916', '很好啊好！！！');
INSERT INTO `device` VALUES ('198', 'ab7cd97017', 'CCD日夜型高清数字摄像机', '杭州总部', '9917', '很好啊好！！！');
INSERT INTO `device` VALUES ('199', '844e42de18', 'CCD日夜型高清数字摄像机', '杭州总部', '9918', '很好啊好！！！');
INSERT INTO `device` VALUES ('200', 'c938589119', 'CCD日夜型高清数字摄像机', '杭州总部', '9919', '很好啊好！！！');
INSERT INTO `device` VALUES ('201', 'bc5d644620', 'CCD日夜型高清数字摄像机', '杭州总部', '9920', '很好啊好！！！');
INSERT INTO `device` VALUES ('202', 'bb6ccfaa21', 'CCD日夜型高清数字摄像机', '杭州总部', '9921', '很好啊好！！！');
INSERT INTO `device` VALUES ('203', '8b26def122', 'CCD日夜型高清数字摄像机', '杭州总部', '9922', '很好啊好！！！');
INSERT INTO `device` VALUES ('204', 'd9f89cb623', 'CCD日夜型高清数字摄像机', '杭州总部', '9923', '很好啊好！！！');
INSERT INTO `device` VALUES ('205', '5baad7ed24', 'CCD日夜型高清数字摄像机', '杭州总部', '9924', '很好啊好！！！');
INSERT INTO `device` VALUES ('206', 'b7df7c7125', 'CCD日夜型高清数字摄像机', '杭州总部', '9925', '很好啊好！！！');
INSERT INTO `device` VALUES ('207', '11f10b7126', 'CCD日夜型高清数字摄像机', '杭州总部', '9926', '很好啊好！！！');
INSERT INTO `device` VALUES ('208', '5956b86b27', 'CCD日夜型高清数字摄像机', '杭州总部', '9927', '很好啊好！！！');
INSERT INTO `device` VALUES ('209', '2a44699b28', 'CCD日夜型高清数字摄像机', '杭州总部', '9928', '很好啊好！！！');
INSERT INTO `device` VALUES ('210', '957b1c0329', 'CCD日夜型高清数字摄像机', '杭州总部', '9929', '很好啊好！！！');
INSERT INTO `device` VALUES ('211', '2d1cdf0c0', 'CCD高清数字摄像机', '杭州总部', '38800', '外观好！！！');
INSERT INTO `device` VALUES ('212', '972e99251', 'CCD高清数字摄像机', '杭州总部', '38801', '外观好！！！');
INSERT INTO `device` VALUES ('213', 'c79713ac2', 'CCD高清数字摄像机', '杭州总部', '38802', '外观好！！！');
INSERT INTO `device` VALUES ('214', '366625c63', 'CCD高清数字摄像机', '杭州总部', '38803', '外观好！！！');
INSERT INTO `device` VALUES ('215', '6738c2274', 'CCD高清数字摄像机', '杭州总部', '38804', '外观好！！！');
INSERT INTO `device` VALUES ('216', '68e68b925', 'CCD高清数字摄像机', '杭州总部', '38805', '外观好！！！');
INSERT INTO `device` VALUES ('217', 'e4fb89396', 'CCD高清数字摄像机', '杭州总部', '38806', '外观好！！！');
INSERT INTO `device` VALUES ('218', 'abb386c07', 'CCD高清数字摄像机', '杭州总部', '38807', '外观好！！！');
INSERT INTO `device` VALUES ('219', 'ee5571f58', 'CCD高清数字摄像机', '杭州总部', '38808', '外观好！！！');
INSERT INTO `device` VALUES ('220', 'eb80e0969', 'CCD高清数字摄像机', '杭州总部', '38809', '外观好！！！');
INSERT INTO `device` VALUES ('221', 'c3edf36110', 'CCD高清数字摄像机', '杭州总部', '38810', '外观好！！！');
INSERT INTO `device` VALUES ('222', '739b2e8b11', 'CCD高清数字摄像机', '杭州总部', '38811', '外观好！！！');
INSERT INTO `device` VALUES ('223', '708bf23612', 'CCD高清数字摄像机', '杭州总部', '38812', '外观好！！！');
INSERT INTO `device` VALUES ('224', '2ed6d64b13', 'CCD高清数字摄像机', '杭州总部', '38813', '外观好！！！');
INSERT INTO `device` VALUES ('225', '1bfcce0a14', 'CCD高清数字摄像机', '杭州总部', '38814', '外观好！！！');
INSERT INTO `device` VALUES ('226', '83a42f5d15', 'CCD高清数字摄像机', '杭州总部', '38815', '外观好！！！');
INSERT INTO `device` VALUES ('227', '81cac96d16', 'CCD高清数字摄像机', '杭州总部', '38816', '外观好！！！');
INSERT INTO `device` VALUES ('228', '2249495417', 'CCD高清数字摄像机', '杭州总部', '38817', '外观好！！！');
INSERT INTO `device` VALUES ('229', 'cb3d2ae918', 'CCD高清数字摄像机', '杭州总部', '38818', '外观好！！！');
INSERT INTO `device` VALUES ('230', 'f579de1e19', 'CCD高清数字摄像机', '杭州总部', '38819', '外观好！！！');
INSERT INTO `device` VALUES ('231', '27d5f3c120', 'CCD高清数字摄像机', '杭州总部', '38820', '外观好！！！');
INSERT INTO `device` VALUES ('232', '86fb940e21', 'CCD高清数字摄像机', '杭州总部', '38821', '外观好！！！');
INSERT INTO `device` VALUES ('233', '518a779222', 'CCD高清数字摄像机', '杭州总部', '38822', '外观好！！！');
INSERT INTO `device` VALUES ('234', 'c84799de23', 'CCD高清数字摄像机', '杭州总部', '38823', '外观好！！！');
INSERT INTO `device` VALUES ('235', '9249d01b24', 'CCD高清数字摄像机', '杭州总部', '38824', '外观好！！！');
INSERT INTO `device` VALUES ('236', 'aa437b3c25', 'CCD高清数字摄像机', '杭州总部', '38825', '外观好！！！');
INSERT INTO `device` VALUES ('237', '3d01e2ca26', 'CCD高清数字摄像机', '杭州总部', '38826', '外观好！！！');
INSERT INTO `device` VALUES ('238', '8396bcc427', 'CCD高清数字摄像机', '杭州总部', '38827', '外观好！！！');
INSERT INTO `device` VALUES ('239', 'e13239e028', 'CCD高清数字摄像机', '杭州总部', '38828', '外观好！！！');
INSERT INTO `device` VALUES ('240', 'fb61133c29', 'CCD高清数字摄像机', '杭州总部', '38829', '外观好！！！');
INSERT INTO `device` VALUES ('241', 'a6aeaa230', 'ICR日夜型高清数字摄像机', '杭州总部', '72100', '品质好！！！');
INSERT INTO `device` VALUES ('242', '4b1cf5e91', 'ICR日夜型高清数字摄像机', '杭州总部', '72101', '品质好！！！');
INSERT INTO `device` VALUES ('243', '77d331222', 'ICR日夜型高清数字摄像机', '杭州总部', '72102', '品质好！！！');
INSERT INTO `device` VALUES ('244', '360a1c673', 'ICR日夜型高清数字摄像机', '杭州总部', '72103', '品质好！！！');
INSERT INTO `device` VALUES ('245', 'fee1f4e24', 'ICR日夜型高清数字摄像机', '杭州总部', '72104', '品质好！！！');
INSERT INTO `device` VALUES ('246', '181726665', 'ICR日夜型高清数字摄像机', '杭州总部', '72105', '品质好！！！');
INSERT INTO `device` VALUES ('247', 'a23fe6806', 'ICR日夜型高清数字摄像机', '杭州总部', '72106', '品质好！！！');
INSERT INTO `device` VALUES ('248', '291fb4bd7', 'ICR日夜型高清数字摄像机', '杭州总部', '72107', '品质好！！！');
INSERT INTO `device` VALUES ('249', '1d0152498', 'ICR日夜型高清数字摄像机', '杭州总部', '72108', '品质好！！！');
INSERT INTO `device` VALUES ('250', '637f34d09', 'ICR日夜型高清数字摄像机', '杭州总部', '72109', '品质好！！！');
INSERT INTO `device` VALUES ('251', 'b103f84b10', 'ICR日夜型高清数字摄像机', '杭州总部', '72110', '品质好！！！');
INSERT INTO `device` VALUES ('252', '7b3dfb0b11', 'ICR日夜型高清数字摄像机', '杭州总部', '72111', '品质好！！！');
INSERT INTO `device` VALUES ('253', '87a8865e12', 'ICR日夜型高清数字摄像机', '杭州总部', '72112', '品质好！！！');
INSERT INTO `device` VALUES ('254', '636f3b7213', 'ICR日夜型高清数字摄像机', '杭州总部', '72113', '品质好！！！');
INSERT INTO `device` VALUES ('255', 'e8fcc55414', 'ICR日夜型高清数字摄像机', '杭州总部', '72114', '品质好！！！');
INSERT INTO `device` VALUES ('256', '79ad02b315', 'ICR日夜型高清数字摄像机', '杭州总部', '72115', '品质好！！！');
INSERT INTO `device` VALUES ('257', '9995055416', 'ICR日夜型高清数字摄像机', '杭州总部', '72116', '品质好！！！');
INSERT INTO `device` VALUES ('258', 'cc08c2f417', 'ICR日夜型高清数字摄像机', '杭州总部', '72117', '品质好！！！');
INSERT INTO `device` VALUES ('259', '0abeced918', 'ICR日夜型高清数字摄像机', '杭州总部', '72118', '品质好！！！');
INSERT INTO `device` VALUES ('260', '169fad3519', 'ICR日夜型高清数字摄像机', '杭州总部', '72119', '品质好！！！');
INSERT INTO `device` VALUES ('261', 'b7ac98be20', 'ICR日夜型高清数字摄像机', '杭州总部', '72120', '品质好！！！');
INSERT INTO `device` VALUES ('262', '5ecfc10a21', 'ICR日夜型高清数字摄像机', '杭州总部', '72121', '品质好！！！');
INSERT INTO `device` VALUES ('263', 'cbc8280222', 'ICR日夜型高清数字摄像机', '杭州总部', '72122', '品质好！！！');
INSERT INTO `device` VALUES ('264', 'f1fb3d1623', 'ICR日夜型高清数字摄像机', '杭州总部', '72123', '品质好！！！');
INSERT INTO `device` VALUES ('265', 'c6f605c724', 'ICR日夜型高清数字摄像机', '杭州总部', '72124', '品质好！！！');
INSERT INTO `device` VALUES ('266', 'df4ab08725', 'ICR日夜型高清数字摄像机', '杭州总部', '72125', '品质好！！！');
INSERT INTO `device` VALUES ('267', '617a452026', 'ICR日夜型高清数字摄像机', '杭州总部', '72126', '品质好！！！');
INSERT INTO `device` VALUES ('268', '053ced5d27', 'ICR日夜型高清数字摄像机', '杭州总部', '72127', '品质好！！！');
INSERT INTO `device` VALUES ('269', 'db38527e28', 'ICR日夜型高清数字摄像机', '杭州总部', '72128', '品质好！！！');
INSERT INTO `device` VALUES ('270', 'a8cef51129', 'ICR日夜型高清数字摄像机', '杭州总部', '72129', '品质好！！！');
INSERT INTO `device` VALUES ('271', 'qwe', '服务器', '杭州总部', '222', 'qwe');
INSERT INTO `device` VALUES ('282', '测试标识', '萤石', '北京', '222', '测试标识');
INSERT INTO `device` VALUES ('296', 'cdfsdfsd', '路由器', '北京', null, 'wqeqwe');
INSERT INTO `device` VALUES ('301', 'ww', 'ICR日夜型高清数字摄像机', '北京', null, 'ww');
INSERT INTO `device` VALUES ('302', '123321', 'ICR日夜型高清数字摄像机', '北京', '123321', '123321');
INSERT INTO `device` VALUES ('303', '777', 'ICR日夜型高清数字摄像机', '北京', '777', '777');
INSERT INTO `device` VALUES ('304', 'dwqd', '显示器', '北京', '962', '海康显示器！');
INSERT INTO `device` VALUES ('305', '111', 'ICR日夜型高清数字摄像机', '北京', '2', '2');
INSERT INTO `device` VALUES ('306', 'q', 'ICR日夜型高清数字摄像机', '北京', '12', '2');
INSERT INTO `device` VALUES ('307', '123', 'ICR日夜型高清数字摄像机', '北京', '321', '321');
INSERT INTO `device` VALUES ('308', '取', 'ICR日夜型高清数字摄像机', '北京', '1', '12');
INSERT INTO `device` VALUES ('309', '', '海康威视', '', null, '');
INSERT INTO `device` VALUES ('310', '', '', '', null, '');

-- ----------------------------
-- Table structure for `person`
-- ----------------------------
DROP TABLE IF EXISTS `person`;
CREATE TABLE `person` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `age` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `dept_name` varchar(255) DEFAULT NULL,
  `device_id` int(11) DEFAULT NULL,
  `power` varchar(255) DEFAULT 'normal',
  PRIMARY KEY (`id`),
  KEY `fk_person_dept` (`dept_name`),
  KEY `fk_person_dev` (`device_id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of person
-- ----------------------------
INSERT INTO `person` VALUES ('1', '钢铁侠', '666666', '66', '66@hikvision.com', '公安事业部', '11', 'normal');
INSERT INTO `person` VALUES ('3', '万磁王', 'hik', '20', '7f110@hikvision.com', '公安事业部', '1', 'normal');
INSERT INTO `person` VALUES ('4', '美国队长', 'hik', '21', 'bff21@hikvision.com', '公安事业部', '2', 'normal');
INSERT INTO `person` VALUES ('5', '黑寡妇', 'hik', '22', 'f42f2@hikvision.com', '公安事业部', '3', 'normal');
INSERT INTO `person` VALUES ('6', '卫栖梧', 'hik', '23', '9a743@hikvision.com', '公安事业部', '4', 'normal');
INSERT INTO `person` VALUES ('7', '绿巨人', 'hik', '24', '90b44@hikvision.com', '公安事业部', '5', 'normal');
INSERT INTO `person` VALUES ('8', '闪电侠', 'hik', '25', '56235@hikvision.com', '公安事业部', '6', 'normal');
INSERT INTO `person` VALUES ('9', '超人', 'hik', '26', '26bf6@hikvision.com', '公安事业部', '7', 'normal');
INSERT INTO `person` VALUES ('10', '牛魔王11', 'hik', '27', 'd3a67@hikvision.com', '公安事业部', '8', 'normal');
INSERT INTO `person` VALUES ('11', '孙悟空', 'hik', '28', '99df8@hikvision.com', '公安事业部', '32', 'normal');
INSERT INTO `person` VALUES ('12', '唐三藏', 'hik', '29', 'c10b9@hikvision.com', '公安事业部', '10', 'normal');
INSERT INTO `person` VALUES ('13', '沙僧', '55555', '5', '5@hikvision', '司法事业部', '13', 'normal');
INSERT INTO `person` VALUES ('14', 'admin', 'admin', '22', 'admin@hikvision.com', '公安事业部', '22', 'admin');
INSERT INTO `person` VALUES ('15', '123', '1', null, '', '', null, '');
INSERT INTO `person` VALUES ('16', '123', '1', null, '', '', null, '');
INSERT INTO `person` VALUES ('17', '12', '1', null, '', '', null, '');
INSERT INTO `person` VALUES ('18', '12', '1', null, '', '', null, '');
INSERT INTO `person` VALUES ('19', '', '', null, '', '', null, '');
INSERT INTO `person` VALUES ('20', '', '', null, '', '', null, '');
INSERT INTO `person` VALUES ('21', '55', '5', null, null, '公安', null, null);
INSERT INTO `person` VALUES ('22', '', '', null, '', '', null, '');
INSERT INTO `person` VALUES ('23', '', '', null, '', '', null, '');
INSERT INTO `person` VALUES ('24', '55', '5', null, null, '公安', null, null);
INSERT INTO `person` VALUES ('25', '55', '5', null, null, '公安', null, null);
INSERT INTO `person` VALUES ('26', '', '', null, '', '', null, '');
INSERT INTO `person` VALUES ('27', '', '1', null, '', '', null, '');
INSERT INTO `person` VALUES ('28', '55', '5', null, null, '公安', null, 'normal');
INSERT INTO `person` VALUES ('29', '55', '5', null, null, null, null, 'normal');
INSERT INTO `person` VALUES ('30', '8523', '2323', null, null, null, null, 'normal');
INSERT INTO `person` VALUES ('31', '55', '5', null, null, null, null, 'normal');
INSERT INTO `person` VALUES ('32', '55', '5', null, null, '公安', null, 'normal');
INSERT INTO `person` VALUES ('33', '请问', 'qwe', null, '', '', null, '');
INSERT INTO `person` VALUES ('34', '请问', 'qwe', null, '', 'qw', null, '');
INSERT INTO `person` VALUES ('35', '请问', 'qwe', null, '', 'qw', null, '');
INSERT INTO `person` VALUES ('36', 'qw', 'qw', null, '', 'qw', null, '');
INSERT INTO `person` VALUES ('37', '55', '5', null, null, '公安', null, 'normal');
INSERT INTO `person` VALUES ('38', '55', '5', null, null, '公安', null, 'normal');
INSERT INTO `person` VALUES ('39', '55', '5', null, null, '公安', null, 'normal');
INSERT INTO `person` VALUES ('40', '55', '5', null, null, '公安', null, 'normal');
INSERT INTO `person` VALUES ('41', 'qw', 'qw', null, '', 'qw', null, '');
INSERT INTO `person` VALUES ('42', '123', '345', '456', '456', '456', null, 'normal');

-- ----------------------------
-- Table structure for `psn_dev`
-- ----------------------------
DROP TABLE IF EXISTS `psn_dev`;
CREATE TABLE `psn_dev` (
  `person_id` int(11) DEFAULT NULL,
  `did` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of psn_dev
-- ----------------------------
INSERT INTO `psn_dev` VALUES ('13', '20');
INSERT INTO `psn_dev` VALUES ('1', '52');
INSERT INTO `psn_dev` VALUES ('1', '63');
INSERT INTO `psn_dev` VALUES ('1', '29');
INSERT INTO `psn_dev` VALUES ('1', '35');
INSERT INTO `psn_dev` VALUES ('1', '22');
INSERT INTO `psn_dev` VALUES ('1', '66');
INSERT INTO `psn_dev` VALUES ('1', '36');
INSERT INTO `psn_dev` VALUES ('2', '6');
INSERT INTO `psn_dev` VALUES ('2', '9');
INSERT INTO `psn_dev` VALUES ('9', '46');
INSERT INTO `psn_dev` VALUES ('9', '89');
