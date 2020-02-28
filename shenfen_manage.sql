/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 80019
Source Host           : localhost:3306
Source Database       : shenfen_manage

Target Server Type    : MYSQL
Target Server Version : 80019
File Encoding         : 65001

Date: 2020-02-28 17:04:03
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for component
-- ----------------------------
DROP TABLE IF EXISTS `component`;
CREATE TABLE `component` (
  `id` int NOT NULL AUTO_INCREMENT,
  `classify_id` int NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `hallmark` varchar(255) DEFAULT NULL,
  `imgUrl` varchar(255) DEFAULT NULL,
  `create_time` bigint DEFAULT NULL,
  `update_time` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of component
-- ----------------------------

-- ----------------------------
-- Table structure for component_classify
-- ----------------------------
DROP TABLE IF EXISTS `component_classify`;
CREATE TABLE `component_classify` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `order` int NOT NULL,
  `create_time` bigint DEFAULT NULL,
  `update_time` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of component_classify
-- ----------------------------
INSERT INTO `component_classify` VALUES ('1', '菜单样式', '0', '1578987133708', '1578987133708');
INSERT INTO `component_classify` VALUES ('2', '弹窗样式', '1', '1578987133708', '1578987133708');
INSERT INTO `component_classify` VALUES ('3', '活动组件', '2', '1578987133708', '1578987133708');
INSERT INTO `component_classify` VALUES ('4', '计算报价', '3', '1578987133708', '1578987133708');
INSERT INTO `component_classify` VALUES ('5', '图文轮播', '4', '1578987133708', '1578987133708');
INSERT INTO `component_classify` VALUES ('6', '转化表单', '5', '1578987133708', '1578987133708');
INSERT INTO `component_classify` VALUES ('7', '转化按钮', '6', '1578987133708', '1578987133708');
INSERT INTO `component_classify` VALUES ('8', '数字效果', '7', '1578987133708', '1578987133708');
INSERT INTO `component_classify` VALUES ('9', '音频视频位置', '8', '1578987133708', '1578987133708');
INSERT INTO `component_classify` VALUES ('10', '图文动画', '9', '1578987133708', '1578987133708');
INSERT INTO `component_classify` VALUES ('11', 'VR', '10', '1578987133708', '1578987133708');

-- ----------------------------
-- Table structure for dict
-- ----------------------------
DROP TABLE IF EXISTS `dict`;
CREATE TABLE `dict` (
  `id` int NOT NULL AUTO_INCREMENT,
  `dict_type` varchar(255) DEFAULT NULL,
  `dict_name` varchar(255) DEFAULT NULL,
  `dict_id` int DEFAULT NULL,
  `dict_content` varchar(255) DEFAULT NULL,
  `createAt` bigint DEFAULT NULL,
  `updateAt` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dict
-- ----------------------------
INSERT INTO `dict` VALUES ('1', 'user_post', '用户职能', '1', '职能', '1578987133708', '1578987133708');
INSERT INTO `dict` VALUES ('2', 'user_post', '用户职能', '2', 'LA', '1578987133708', '1578987133708');
INSERT INTO `dict` VALUES ('3', 'user_post', '用户职能', '3', 'IMC', '1578987133708', '1578987133708');
INSERT INTO `dict` VALUES ('4', 'user_post', '用户职能', '4', '直通车', '1578987133708', '1578987133708');
INSERT INTO `dict` VALUES ('5', 'promotion_industry', '推广行业', '100', '其他', '1578987133708', '1578987133708');
INSERT INTO `dict` VALUES ('6', 'promotion_industry', '推广行业', '1', '医疗服务', '1578987133708', '1578987133708');
INSERT INTO `dict` VALUES ('7', 'promotion_industry', '推广行业', '2', '整形美容', '1578987133708', '1578987133708');
INSERT INTO `dict` VALUES ('8', 'promotion_industry', '推广行业', '3', '招商加盟', '1578987133708', '1578987133708');
INSERT INTO `dict` VALUES ('9', 'promotion_industry', '推广行业', '4', '商务服务', '1578987133708', '1578987133708');
INSERT INTO `dict` VALUES ('10', 'promotion_industry', '推广行业', '5', '办公文教', '1578987133708', '1578987133708');
INSERT INTO `dict` VALUES ('11', 'promotion_industry', '推广行业', '6', '网络服务', '1578987133708', '1578987133708');
INSERT INTO `dict` VALUES ('12', 'promotion_industry', '推广行业', '7', '生活服务', '1578987133708', '1578987133708');
INSERT INTO `dict` VALUES ('13', 'promotion_industry', '推广行业', '8', '运动娱乐器械', '1578987133708', '1578987133708');
INSERT INTO `dict` VALUES ('14', 'promotion_industry', '推广行业', '9', '零售', '1578987133708', '1578987133708');
INSERT INTO `dict` VALUES ('15', 'promotion_industry', '推广行业', '10', '金融服务', '1578987133708', '1578987133708');
INSERT INTO `dict` VALUES ('16', 'promotion_industry', '推广行业', '11', '房产家居', '1578987133708', '1578987133708');
INSERT INTO `dict` VALUES ('17', 'promotion_industry', '推广行业', '12', '车辆物流', '1578987133708', '1578987133708');
INSERT INTO `dict` VALUES ('18', 'promotion_industry', '推广行业', '13', '车辆平台', '1578987133708', '1578987133708');
INSERT INTO `dict` VALUES ('19', 'promotion_industry', '推广行业', '14', '机械平台', '1578987133708', '1578987133708');
INSERT INTO `dict` VALUES ('20', 'promotion_industry', '推广行业', '15', '软件', '1578987133708', '1578987133708');
INSERT INTO `dict` VALUES ('21', 'promotion_industry', '推广行业', '16', '游戏', '1578987133708', '1578987133708');
INSERT INTO `dict` VALUES ('22', 'promotion_industry', '推广行业', '17', '旅游服务', '1578987133708', '1578987133708');
INSERT INTO `dict` VALUES ('23', 'promotion_industry', '推广行业', '18', '在线旅游', '1578987133708', '1578987133708');
INSERT INTO `dict` VALUES ('24', 'promotion_industry', '推广行业', '19', '个人用品', '1578987133708', '1578987133708');
INSERT INTO `dict` VALUES ('25', 'promotion_industry', '推广行业', '20', '箱包服饰', '1578987133708', '1578987133708');
INSERT INTO `dict` VALUES ('26', 'promotion_industry', '推广行业', '21', '化妆品', '1578987133708', '1578987133708');
INSERT INTO `dict` VALUES ('27', 'promotion_industry', '推广行业', '22', 'IT/消费电子', '1578987133708', '1578987133708');
INSERT INTO `dict` VALUES ('28', 'promotion_industry', '推广行业', '23', '电子电工', '1578987133708', '1578987133708');
INSERT INTO `dict` VALUES ('29', 'promotion_industry', '推广行业', '24', '通信', '1578987133708', '1578987133708');
INSERT INTO `dict` VALUES ('30', 'promotion_industry', '推广行业', '25', '文娱传媒', '1578987133708', '1578987133708');
INSERT INTO `dict` VALUES ('31', 'promotion_industry', '推广行业', '26', '农林牧渔', '1578987133708', '1578987133708');
INSERT INTO `dict` VALUES ('32', 'promotion_industry', '推广行业', '27', '化工及能源', '1578987133708', '1578987133708');
INSERT INTO `dict` VALUES ('33', 'image_promotion_product', '图片投放流量', '1', '百度APP', '1578987133708', '1578987133708');
INSERT INTO `dict` VALUES ('34', 'image_promotion_product', '图片投放流量', '2', '百度贴吧', '1578987133708', '1578987133708');
INSERT INTO `dict` VALUES ('35', 'image_promotion_product', '图片投放流量', '3', '好看视频', '1578987133708', '1578987133708');
INSERT INTO `dict` VALUES ('36', 'image_promotion_product', '图片投放流量', '4', '百青藤', '1578987133708', '1578987133708');
INSERT INTO `dict` VALUES ('37', 'image_promotion_product', '图片投放流量', '5', '爱奇艺', '1578987133708', '1578987133708');
INSERT INTO `dict` VALUES ('38', 'video_promotion_product', '视频投放流量', '1', '百度APP', '1578987133708', '1578987133708');
INSERT INTO `dict` VALUES ('39', 'video_promotion_product', '视频投放流量', '2', '百度贴吧', '1578987133708', '1578987133708');
INSERT INTO `dict` VALUES ('40', 'video_promotion_product', '视频投放流量', '3', '好看视频', '1578987133708', '1578987133708');
INSERT INTO `dict` VALUES ('41', 'video_promotion_product', '视频投放流量', '4', '百青藤', '1578987133708', '1578987133708');
INSERT INTO `dict` VALUES ('42', 'video_promotion_product', '视频投放流量', '5', '爱奇艺', '1578987133708', '1578987133708');
INSERT INTO `dict` VALUES ('43', 'openscreen_promotion_product', '开屏展现频道', '1', '百度APP开屏', '1578987133708', '1578987133708');
INSERT INTO `dict` VALUES ('44', 'openscreen_promotion_product', '开屏展现频道', '2', '序章开屏', '1578987133708', '1578987133708');
INSERT INTO `dict` VALUES ('45', 'openscreen_promotion_product', '开屏展现频道', '3', '开屏联盟', '1578987133708', '1578987133708');
INSERT INTO `dict` VALUES ('46', 'image_show_type', '图片展现样式', '1', '小图', '1578987133708', '1578987133708');
INSERT INTO `dict` VALUES ('47', 'image_show_type', '图片展现样式', '2', '大图', '1578987133708', '1578987133708');
INSERT INTO `dict` VALUES ('48', 'image_show_type', '图片展现样式', '3', '三图', '1578987133708', '1578987133708');
INSERT INTO `dict` VALUES ('49', 'image_show_type', '图片展现样式', '4', '多图', '1578987133708', '1578987133708');
INSERT INTO `dict` VALUES ('50', 'image_show_type', '图片展现样式', '5', '基础创意', '1578987133708', '1578987133708');
INSERT INTO `dict` VALUES ('51', 'image_show_type', '图片展现样式', '6', '高级创意', '1578987133708', '1578987133708');
INSERT INTO `dict` VALUES ('52', 'openscreen_show_type', '开屏展现样式', '1', '非全屏静态图片', '1578987133708', '1578987133708');
INSERT INTO `dict` VALUES ('53', 'openscreen_show_type', '开屏展现样式', '2', '全屏静态图片', '1578987133708', '1578987133708');
INSERT INTO `dict` VALUES ('54', 'openscreen_show_type', '开屏展现样式', '3', '非全屏动态视频', '1578987133708', '1578987133708');
INSERT INTO `dict` VALUES ('55', 'openscreen_show_type', '开屏展现样式', '4', '全屏动态视频', '1578987133708', '1578987133708');
INSERT INTO `dict` VALUES ('56', 'video_putin_type', '视频售卖方式', '1', 'CPC', '1578987133708', '1578987133708');
INSERT INTO `dict` VALUES ('57', 'video_putin_type', '视频售卖方式', '2', 'OCPC', '1578987133708', '1578987133708');
INSERT INTO `dict` VALUES ('58', 'video_putin_type', '视频售卖方式', '3', 'OCPM', '1578987133708', '1578987133708');
INSERT INTO `dict` VALUES ('59', 'video_putin_type', '视频售卖方式', '4', 'eCPC', '1578987133708', '1578987133708');
INSERT INTO `dict` VALUES ('60', 'video_putin_type', '视频售卖方式', '5', '竞价CPM', '1578987133708', '1578987133708');
INSERT INTO `dict` VALUES ('61', 'video_putin_type', '视频售卖方式', '6', 'CPT', '1578987133708', '1578987133708');
INSERT INTO `dict` VALUES ('62', 'video_putin_type', '视频售卖方式', '7', 'CPM', '1578987133708', '1578987133708');
INSERT INTO `dict` VALUES ('63', 'video_putin_type', '视频售卖方式', '8', 'PDB', '1578987133708', '1578987133708');
INSERT INTO `dict` VALUES ('64', 'video_putin_type', '视频售卖方式', '9', 'PD', '1578987133708', '1578987133708');
INSERT INTO `dict` VALUES ('65', 'image_putin_type', '图片售卖方式', '1', 'CPC', '1578987133708', '1578987133708');
INSERT INTO `dict` VALUES ('66', 'image_putin_type', '图片售卖方式', '2', 'OCPC', '1578987133708', '1578987133708');
INSERT INTO `dict` VALUES ('67', 'image_putin_type', '图片售卖方式', '3', 'OCPM', '1578987133708', '1578987133708');
INSERT INTO `dict` VALUES ('68', 'image_putin_type', '图片售卖方式', '4', 'eCPC', '1578987133708', '1578987133708');
INSERT INTO `dict` VALUES ('69', 'image_putin_type', '图片售卖方式', '5', '竞价CPM', '1578987133708', '1578987133708');
INSERT INTO `dict` VALUES ('70', 'image_putin_type', '图片售卖方式', '6', 'CPT', '1578987133708', '1578987133708');
INSERT INTO `dict` VALUES ('71', 'image_putin_type', '图片售卖方式', '7', 'CPM', '1578987133708', '1578987133708');
INSERT INTO `dict` VALUES ('72', 'image_putin_type', '图片售卖方式', '8', 'PDB', '1578987133708', '1578987133708');
INSERT INTO `dict` VALUES ('73', 'image_putin_type', '图片售卖方式', '9', 'PD', '1578987133708', '1578987133708');
INSERT INTO `dict` VALUES ('74', 'openscreen_putin_type', '开屏售卖方式', '1', 'CPT', '1578987133708', '1578987133708');
INSERT INTO `dict` VALUES ('75', 'openscreen_putin_type', '开屏售卖方式', '2', 'CPM', '1578987133708', '1578987133708');
INSERT INTO `dict` VALUES ('76', 'openscreen_putin_type', '开屏售卖方式', '3', 'PDB', '1578987133708', '1578987133708');
INSERT INTO `dict` VALUES ('77', 'openscreen_putin_type', '开屏售卖方式', '4', 'PD', '1578987133708', '1578987133708');
INSERT INTO `dict` VALUES ('78', 'advert_type', '广告类型', '1', '信息流', '1578987133708', '1578987133708');
INSERT INTO `dict` VALUES ('79', 'advert_type', '广告类型', '2', '移动搜索', '1578987133708', '1578987133708');
INSERT INTO `dict` VALUES ('80', 'advert_type', '广告类型', '3', 'PC搜索', '1578987133708', '1578987133708');
INSERT INTO `dict` VALUES ('81', 'advert_type', '广告类型', '4', '品牌', '1578987133708', '1578987133708');
INSERT INTO `dict` VALUES ('82', 'video_type', '视频类型', '1', '实拍', '1578987133708', '1578987133708');
INSERT INTO `dict` VALUES ('83', 'video_type', '视频类型', '2', '图文', '1578987133708', '1578987133708');
INSERT INTO `dict` VALUES ('84', 'video_position', '视频版位', '1', '竖版', '1578987133708', '1578987133708');
INSERT INTO `dict` VALUES ('85', 'video_position', '视频版位', '2', '横版', '1578987133708', '1578987133708');
INSERT INTO `dict` VALUES ('86', 'webpage_type', '页面类型', '1', '普通营销单页', '1578987133708', '1578987133708');
INSERT INTO `dict` VALUES ('87', 'webpage_type', '页面类型', '2', '定制营销单页', '1578987133708', '1578987133708');
INSERT INTO `dict` VALUES ('88', 'webpage_type', '页面类型', '3', '普通营销多页', '1578987133708', '1578987133708');
INSERT INTO `dict` VALUES ('89', 'webpage_type', '页面类型', '4', '定制营销多页', '1578987133708', '1578987133708');
INSERT INTO `dict` VALUES ('90', 'webpage_type', '页面类型', '5', '应用下载', '1578987133708', '1578987133708');
INSERT INTO `dict` VALUES ('91', 'conversion_type', '转化类型', '1', '表单', '1578987133708', '1578987133708');
INSERT INTO `dict` VALUES ('92', 'conversion_type', '转化类型', '2', '电话', '1578987133708', '1578987133708');
INSERT INTO `dict` VALUES ('93', 'conversion_type', '转化类型', '3', '咨询', '1578987133708', '1578987133708');
INSERT INTO `dict` VALUES ('94', 'conversion_type', '转化类型', '4', '微信', '1578987133708', '1578987133708');
INSERT INTO `dict` VALUES ('95', 'conversion_type', '转化类型', '5', '下载', '1578987133708', '1578987133708');
INSERT INTO `dict` VALUES ('96', 'conversion_type', '转化类型', '6', '纯曝光', '1578987133708', '1578987133708');

-- ----------------------------
-- Table structure for idea_image
-- ----------------------------
DROP TABLE IF EXISTS `idea_image`;
CREATE TABLE `idea_image` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `images` varchar(255) DEFAULT NULL,
  `preview_image` varchar(255) DEFAULT NULL,
  `promotion_industry` int DEFAULT NULL,
  `image_promotion_product` int DEFAULT NULL,
  `advert_type` int DEFAULT NULL,
  `image_show_type` int DEFAULT NULL,
  `image_putin_type` int DEFAULT NULL,
  `click_rate` double(11,2) DEFAULT NULL,
  `conversion_cost` double(11,2) DEFAULT NULL,
  `authors` varchar(255) DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `status` int DEFAULT NULL,
  `createAt` bigint NOT NULL,
  `updateAt` bigint DEFAULT NULL,
  PRIMARY KEY (`id`,`createAt`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of idea_image
-- ----------------------------
INSERT INTO `idea_image` VALUES ('7', '图片创意1', '[\"20200226/15826874698066279.jpg\",\"20200226/15826874729101989.jpg\"]', '20200226/15826874763262758.jpg', '2', '2', '2', '3', '2', '0.20', '200.00', '[\"lijinyuan\",\"liting\"]', '[\"tag1\",\"tag2\"]', '0', '1582531771934', '1582531771934');
INSERT INTO `idea_image` VALUES ('8', '23333', '[\"20200226/15826874698066279.jpg\",\"20200226/15826874729101989.jpg\"]', '20200226/15826874763262758.jpg', '2', '2', '2', '3', '2', '0.20', '200.00', '[\"lijinyuan\",\"liting\"]', '[\"tag1\",\"tag2\"]', '0', '1582531771934', '1582704000360');
INSERT INTO `idea_image` VALUES ('9', '图片创意3', '[\"20200226/15826874698066279.jpg\",\"20200226/15826874729101989.jpg\"]', '20200226/15826874763262758.jpg', '2', '2', '2', '3', '2', '0.20', '200.00', '[\"lijinyuan\",\"liting\"]', '[\"tag1\",\"tag2\"]', '0', '1582531771934', '1582531771934');
INSERT INTO `idea_image` VALUES ('10', '4', '[\"20200226/15826874698066279.jpg\",\"20200226/15826874729101989.jpg\"]', '20200226/15826874763262758.jpg', '2', '2', '2', '3', '2', '0.20', '200.00', '[\"lijinyuan\",\"liting\"]', '[\"tag1\",\"tag2\"]', '0', '1582531771934', '1582531771934');
INSERT INTO `idea_image` VALUES ('11', '图片创意4', '[\"20200226/15826874698066279.jpg\",\"20200226/15826874729101989.jpg\"]', '20200226/15826874763262758.jpg', '2', '2', '2', '3', '2', '0.20', '200.00', '[\"lijinyuan\",\"liting\"]', '[\"tag1\",\"tag2\"]', '0', '1582531771934', '1582531771934');
INSERT INTO `idea_image` VALUES ('12', '图片创意4', '[\"20200226/15826874698066279.jpg\",\"20200226/15826874729101989.jpg\"]', '20200226/15826874763262758.jpg', '2', '2', '2', '3', '2', '0.20', '200.00', '[\"lijinyuan\",\"liting\"]', '[\"tag1\",\"tag2\"]', '0', '1582531771934', '1582531771934');
INSERT INTO `idea_image` VALUES ('14', '图片创意4', '[\"20200226/15826874698066279.jpg\",\"20200226/15826874729101989.jpg\"]', '20200226/15826874763262758.jpg', '2', '2', '2', '3', '2', '0.20', '200.00', '[\"lijinyuan\",\"liting\"]', '[\"tag1\",\"tag2\"]', '0', '1582531771934', '1582531771934');
INSERT INTO `idea_image` VALUES ('16', '图片创意4', '[\"20200226/15826874698066279.jpg\",\"20200226/15826874729101989.jpg\"]', '20200226/15826874763262758.jpg', '2', '2', '2', '3', '2', '0.20', '200.00', '[\"lijinyuan\",\"liting\"]', '[\"tag1\",\"tag2\"]', '0', '1582531771934', '1582531771934');
INSERT INTO `idea_image` VALUES ('17', '图片创意4', '[\"20200226/15826874698066279.jpg\",\"20200226/15826874729101989.jpg\"]', '20200226/15826874763262758.jpg', '2', '2', '2', '3', '2', '0.20', '200.00', '[\"lijinyuan\",\"liting\"]', '[\"tag1\",\"tag2\"]', '0', '1582531771934', '1582531771934');
INSERT INTO `idea_image` VALUES ('20', 'test', '[]', '20200226/15826874763262758.jpg', '100', '1', '1', '1', '1', '0.00', '0.00', '[]', '[]', '1', '1582616605618', '1582616605618');
INSERT INTO `idea_image` VALUES ('21', '测试一下文案的标题335555', '[\"20200226/15826874698066279.jpg\",\"20200226/15827024821881118.png\"]', '20200226/15826874763262758.jpg', '1', '2', '1', '2', '1', '0.22', '202.00', '[\"lijinyuan\",\"232323\"]', '[\"12323232\"]', '0', '1582653460374', '1582703951497');
INSERT INTO `idea_image` VALUES ('22', 'test', '[\"20200226/15827036925254790.png\"]', '20200226/15827036949432747.png', '1', '2', '3', '4', '2', '20.00', '200.00', '[\"123\"]', '[\"123444\"]', '0', '1582702185806', '1582702185806');
INSERT INTO `idea_image` VALUES ('23', '12333', '[]', '', '100', '1', '1', '1', '1', '0.00', '0.00', '[]', '[]', '1', '1582702185806', '1582702185806');
INSERT INTO `idea_image` VALUES ('25', '33333', '[]', '', '100', '1', '1', '1', '1', '0.00', '0.00', '[]', '[]', '1', '1582702185806', '1582702185806');
INSERT INTO `idea_image` VALUES ('27', '44455', '[\"20200226/15827044123503086.png\"]', '20200226/15827044152678168.jpg', '100', '1', '2', '1', '1', '0.00', '0.00', '[]', '[]', '0', '1582704269790', '1582871706553');
INSERT INTO `idea_image` VALUES ('28', '2222', '[]', '', '100', '1', '1', '1', '1', '0.00', '0.00', '[]', '[]', '1', '1582737571411', '1582737571411');
INSERT INTO `idea_image` VALUES ('30', '2222222', '[\"20200228/15828716918404793.jpg\"]', '20200228/15828716948229642.jpg', '100', '1', '1', '1', '1', '0.00', '0.00', '[]', '[]', '0', '1582871538062', '1582871696078');
INSERT INTO `idea_image` VALUES ('31', '3332', '[\"20200228/15828715444365533.png\",\"20200228/15828715478288999.png\"]', '20200228/15828715526179331.png', '100', '2', '2', '2', '3', '2.00', '200.00', '[\"李金元\"]', '[\"2222\"]', '0', '1582871575164', '1582871678839');

-- ----------------------------
-- Table structure for idea_openscreen
-- ----------------------------
DROP TABLE IF EXISTS `idea_openscreen`;
CREATE TABLE `idea_openscreen` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `type` int DEFAULT NULL,
  `image_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `video_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `video_cover` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `promotion_industry` int DEFAULT NULL,
  `promotion_content` varchar(255) DEFAULT NULL,
  `promotion_cycle` varchar(255) DEFAULT NULL,
  `openscreen_putin_type` int DEFAULT NULL,
  `openscreen_show_type` int DEFAULT NULL,
  `openscreen_promotion_product` int DEFAULT NULL,
  `click_rate` double(11,2) DEFAULT NULL,
  `conversion_cost` double(11,2) DEFAULT NULL,
  `authors` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `tags` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `status` int DEFAULT NULL,
  `createAt` bigint NOT NULL,
  `updateAt` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of idea_openscreen
-- ----------------------------
INSERT INTO `idea_openscreen` VALUES ('2', '222222222', '1', '20200228/15828788092356290.jpg', '', '', '1', '3333', '', '2', '2', '2', '0.20', '0.00', '[\"222\",\"打发士大夫\"]', '[\"收到\"]', '0', '1582878827261', '1582878827261');
INSERT INTO `idea_openscreen` VALUES ('3', '3', '2', '', '20200228/15828788492727592.ogv', '20200228/1582878852380620.jpg', '1', '232323', '242424', '1', '1', '1', '1.00', '0.00', '[\"23\"]', '[\"23\"]', '0', '1582878855811', '1582880383740');
INSERT INTO `idea_openscreen` VALUES ('4', '2', '1', '20200228/15828798703069148.png', '', '', '100', '22222', '3', '1', '1', '1', '0.00', '0.00', '[]', '[]', '0', '1582879770063', '1582880085325');

-- ----------------------------
-- Table structure for idea_video
-- ----------------------------
DROP TABLE IF EXISTS `idea_video`;
CREATE TABLE `idea_video` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `video_url` varchar(255) DEFAULT NULL,
  `video_cover` varchar(255) DEFAULT NULL,
  `promotion_industry` int DEFAULT NULL,
  `video_type` int DEFAULT NULL,
  `video_position` int DEFAULT NULL,
  `advert_type` int DEFAULT NULL,
  `video_putin_type` int DEFAULT NULL,
  `video_promotion_product` int DEFAULT NULL,
  `click_rate` double(11,2) DEFAULT NULL,
  `conversion_cost` double(11,2) DEFAULT NULL,
  `authors` varchar(255) DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `status` int DEFAULT NULL,
  `createAt` bigint DEFAULT NULL,
  `updateAt` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of idea_video
-- ----------------------------
INSERT INTO `idea_video` VALUES ('1', 'test', '', '', '1', '2', '2', '2', '2', '2', '0.50', '300.00', '[\"test1\",\"125555\"]', '[\"tag1\",\"tag\"]', '1', '1582793185139', '1582793185139');
INSERT INTO `idea_video` VALUES ('2', 'test2', '', '', '100', '1', '1', '1', '1', '1', '0.00', '0.00', '[]', '[]', '1', '1582793231771', '1582793231771');
INSERT INTO `idea_video` VALUES ('3', '3', '', '', '100', '1', '1', '1', '1', '1', '0.00', '0.00', '[]', '[]', '1', '1582794471933', '1582794471933');
INSERT INTO `idea_video` VALUES ('4', '3', '', '', '100', '1', '1', '1', '1', '1', '0.00', '0.00', '[]', '[]', '1', '1582794474802', '1582794474802');
INSERT INTO `idea_video` VALUES ('5', '5555', '', '', '100', '1', '1', '1', '1', '1', '0.00', '0.00', '[]', '[]', '1', '1582794478539', '1582794478539');
INSERT INTO `idea_video` VALUES ('6', '545454646', '', '', '100', '1', '1', '1', '1', '1', '0.00', '0.00', '[]', '[]', '1', '1582794482536', '1582794482536');
INSERT INTO `idea_video` VALUES ('7', '55645646', '', '', '100', '1', '1', '1', '1', '1', '0.00', '0.00', '[]', '[]', '1', '1582794485998', '1582794485998');
INSERT INTO `idea_video` VALUES ('8', '66666', '', '', '100', '1', '1', '1', '1', '1', '0.00', '0.00', '[]', '[]', '1', '1582794489632', '1582794489632');
INSERT INTO `idea_video` VALUES ('10', '46444', '20200228/15828251634304062.ogv', '20200228/15828251658928850.png', '100', '1', '1', '1', '1', '1', '0.00', '0.00', '[]', '[]', '0', '1582794499914', '1582825173434');
INSERT INTO `idea_video` VALUES ('13', '555555555', '20200228/15828251069942420.ogv', '20200228/15828251093127179.png', '100', '2', '2', '2', '1', '2', '0.00', '0.00', '[]', '[]', '0', '1582821102800', '1582825155834');

-- ----------------------------
-- Table structure for tag
-- ----------------------------
DROP TABLE IF EXISTS `tag`;
CREATE TABLE `tag` (
  `tag_id` int NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`tag_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1002 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tag
-- ----------------------------
INSERT INTO `tag` VALUES ('1001', '电影');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `pwd` varchar(50) NOT NULL,
  `create_time` bigint DEFAULT NULL,
  `update_time` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('13', 'cesshi888', '8888', '1578904724082', '1578982230941');
INSERT INTO `user` VALUES ('28', '58555', '12', '1578987133708', '1578987133708');

-- ----------------------------
-- Table structure for video
-- ----------------------------
DROP TABLE IF EXISTS `video`;
CREATE TABLE `video` (
  `video_id` int NOT NULL AUTO_INCREMENT,
  `video_title` varchar(50) DEFAULT NULL,
  `video_src` varchar(255) DEFAULT NULL,
  `video_tag` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`video_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10002 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of video
-- ----------------------------
INSERT INTO `video` VALUES ('10001', '星球大战9：天行者崛起 (2019)', 'https://zuidajiexi.net/m3u8.html?url=https://haoa.haozuida.com/20191220/aRgh5btX/index.m3u8', '1001');
