/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 80019
Source Host           : localhost:3306
Source Database       : shenfen_manage

Target Server Type    : MYSQL
Target Server Version : 80019
File Encoding         : 65001

Date: 2020-05-26 13:45:58
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
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8;

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
INSERT INTO `dict` VALUES ('19', 'promotion_industry', '推广行业', '14', '机械设备', '1578987133708', '1578987133708');
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
INSERT INTO `dict` VALUES ('97', 'status', '创意状态', '0', '上传成功', null, null);
INSERT INTO `dict` VALUES ('98', 'status', '创意状态', '1', '草稿', null, null);
INSERT INTO `dict` VALUES ('99', 'promotion_industry', '推广行业', '28', '教育行业', '1578987133708', '1578987133708');

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
  `pv` int unsigned DEFAULT '0',
  `createAt` bigint NOT NULL,
  `updateAt` bigint DEFAULT NULL,
  PRIMARY KEY (`id`,`createAt`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of idea_image
-- ----------------------------
INSERT INTO `idea_image` VALUES ('53', '#{年龄}必看：学会这个去眼袋妙招，让你比同龄人年轻10岁', '[\"20200320/15846725196739988.jpg\"]', '20200320/15846726268223562.png', '1', '1', '1', '2', '1', '1.50', '300.00', '[\"刘敏伦\",\"朱丽名\",\"韦信\"]', '[]', '0', '30', '1584672822283', '1584672874855');
INSERT INTO `idea_image` VALUES ('54', '专款专用教育金', '[\"20200320/15846729412748046.png\"]', '20200320/15846729437106845.png', '10', '1', '1', '2', '1', '3.90', '60.00', '[\"小智\"]', '[\"手绘\"]', '0', '6', '1584673098955', '1584673396059');
INSERT INTO `idea_image` VALUES ('55', '越早规划教育金 压力越小', '[\"20200320/15846731598264484.png\"]', '20200320/15846731613602396.png', '10', '1', '1', '2', '1', '3.50', '78.00', '[\"小智\"]', '[\"手绘\"]', '0', '5', '1584673222526', '1584673222526');
INSERT INTO `idea_image` VALUES ('56', '工资8000不如跑网约车，有车就能注册，下班跑俩小时轻松日赚800', '[\"20200320/15846731649812972.jpg\",\"20200320/15846731745297978.jpg\",\"20200320/15846731787105049.jpg\"]', '20200320/15846733017061442.png', '15', '1', '1', '3', '1', '2.07', '0.00', '[\"陈宜雪\"]', '[]', '0', '7', '1584673246148', '1584673833571');
INSERT INTO `idea_image` VALUES ('57', '你觉得养一个孩子 需要在教育上花多少钱', '[\"20200320/15846732698169027.png\"]', '20200320/15846732713377665.png', '10', '1', '1', '2', '1', '3.60', '70.00', '[\"小智\"]', '[]', '0', '1', '1584673336322', '1584673336322');
INSERT INTO `idea_image` VALUES ('58', '0.5%费率，正规一清POS，每日1w免手续费，刷卡快速到账', '[\"20200320/15846733042637976.jpg\"]', '20200320/15846733927979779.png', '14', '1', '1', '2', '1', '1.28', '65.00', '[\"詹洁妃\"]', '[]', '0', '3', '1584673597362', '1584673597362');
INSERT INTO `idea_image` VALUES ('59', '专业团队免费协助快速理赔', '[\"20200320/15846736018242206.png\"]', '20200320/15846736033174219.png', '10', '1', '1', '2', '1', '3.10', '80.00', '[]', '[]', '0', '8', '1584673668863', '1584673716251');
INSERT INTO `idea_image` VALUES ('60', '在深圳拥有一套资产要多少钱？总价仅126万起！毕业2年也够首付！', '[\"20200320/15846736494046277.jpg\",\"20200320/1584673652909880.jpg\",\"20200320/15846736588616386.jpg\"]', '20200320/15846736851004783.png', '11', '1', '1', '3', '1', '0.76', '268.00', '[\"陈宜雪\",\"曲奥运\"]', '[]', '0', '5', '1584673759097', '1584674589261');
INSERT INTO `idea_image` VALUES ('61', '郑州没买房的恭喜了！万科这些盘，低总价地铁旁，均价8500／m²起', '[\"20200320/15846736149728881.jpg\",\"20200320/15846736197416775.jpg\",\"20200320/15846736226263185.jpg\"]', '20200320/15846737888661995.png', '11', '1', '1', '3', '1', '3.86', '68.00', '[]', '[]', '0', '5', '1584673949415', '1584674412672');
INSERT INTO `idea_image` VALUES ('62', '眼袋难看别忍了！过来人推荐这家，不动刀不伤眼周，年轻好几岁', '[\"20200320/15846729527108549.jpg\",\"20200320/15846729564826753.jpg\",\"20200320/15846729586491867.jpg\"]', '20200320/15846742937005904.png', '1', '1', '1', '3', '1', '1.09', '0.00', '[\"刘敏伦\",\"朱丽名\",\"韦信\"]', '[]', '0', '8', '1584674332064', '1584674332064');
INSERT INTO `idea_image` VALUES ('63', '深圳户籍窗口开放：这几类人秒申请，45岁以下有社保即可申请入户', '[\"20200320/15846742315928527.jpg\",\"20200320/15846742363203545.jpg\",\"20200320/1584674239159539.jpg\"]', '20200320/15846742688561083.png', '7', '1', '1', '3', '1', '3.57', '48.00', '[\"赵园媛\"]', '[]', '0', '2', '1584674373885', '1584674394263');
INSERT INTO `idea_image` VALUES ('64', '三甲医院微整培训，名师手把手教学，立即免费咨询', '[\"20200320/15846744816597913.jpg\"]', '20200320/15846744640122020.png', '1', '1', '1', '2', '1', '1.48', '300.00', '[\"潘晨\",\"刘蝶韵\",\"韦信\"]', '[]', '0', '8', '1584674490123', '1584674657266');
INSERT INTO `idea_image` VALUES ('65', '2020新款便携POS，0.36%费率，笔笔有积分，安全可靠操作简单', '[\"20200320/15846744223364011.jpg\"]', '20200320/15846744289633609.png', '100', '1', '1', '2', '1', '3.22', '55.81', '[\"何婷\"]', '[\"pos机\"]', '0', '4', '1584674494994', '1584675600040');
INSERT INTO `idea_image` VALUES ('66', '非诚勿扰 找对象的进群', '[\"20200320/15846744773259396.png\",\"20200320/15846744785771802.png\",\"20200320/15846744797803966.png\",\"20200320/15846744810644254.png\"]', '20200320/15846745106566915.png', '7', '1', '1', '2', '1', '2.70', '60.00', '[]', '[]', '0', '3', '1584674731148', '1584674769910');
INSERT INTO `idea_image` VALUES ('67', '郑州买房好时机！万科这些盘，低总价，地铁沿线，均价8500元/m²起', '[\"20200320/1584674792286566.jpg\"]', '20200320/15846745835346294.png', '11', '1', '1', '1', '1', '4.65', '60.00', '[\"詹洁妃\",\"刘畅\",\"张艺平\"]', '[\"硬广\"]', '0', '3', '1584674848842', '1584674848842');
INSERT INTO `idea_image` VALUES ('68', '2020年不可错过的重疾险，每年570元起，160种疾病保一辈子', '[\"20200320/15846750290533605.jpg\"]', '20200320/15846750333522357.png', '100', '1', '1', '2', '1', '1.20', '88.96', '[\"何婷\"]', '[\"金融\",\"保险\",\"重疾险\"]', '0', '2', '1584675059905', '1584675595608');
INSERT INTO `idea_image` VALUES ('69', '四处借不到？信用分300，可借100000，最高36期，不面审！', '[\"20200320/15846751399925252.jpg\"]', '20200320/15846754545573688.png', '10', '1', '1', '2', '1', '1.25', '36.20', '[\"王鑫\"]', '[\"金融\",\"贷款\",\"信用分\",\"人物\"]', '0', '16', '1584675572797', '1584675572797');
INSERT INTO `idea_image` VALUES ('70', '在地域装修一套三室两厅的房子需要多少钱？我来帮你算一算！', '[\"20200320/15846757309406774.png\"]', '20200320/15846734842242221.jpg', '11', '1', '1', '2', '1', '1.27', '358.48', '[\"陈滕\"]', '[\"硬广\"]', '0', '0', '1584675737596', '1584675737596');
INSERT INTO `idea_image` VALUES ('71', '别再玩假捕鱼了！真正的捕鱼，真的0充值，金币靠手打1分钟到账！', '[\"20200320/15846758957485546.jpg\"]', '20200320/15846759549588746.png', '16', '1', '1', '2', '1', '1.13', '113.15', '[\"王鑫\"]', '[\"捕鱼\",\"手游\",\"金币\"]', '0', '8', '1584676012519', '1584676012519');
INSERT INTO `idea_image` VALUES ('72', '有了这个签证，自由出入美国，两年自动获居留许可，合法住美国', '[\"20200320/15846761916033872.jpg\",\"20200320/15846761994404288.jpg\",\"20200320/15846762041052195.jpg\"]', '20200320/15846763014181655.png', '4', '1', '1', '3', '1', '1.76', '117.84', '[\"林张文\"]', '[\"移民\"]', '0', '5', '1584676492710', '1584679708550');
INSERT INTO `idea_image` VALUES ('73', '通知：营业执照免费代办了，0元快速办理营业执照。', '[\"20200320/15846765065193417.png\",\"20200320/15846765134303841.png\",\"20200320/15846765220036559.png\"]', '20200320/15846765578575377.jpg', '4', '1', '1', '1', '1', '0.97', '153.48', '[\"陈滕\"]', '[\"原生图\"]', '0', '5', '1584676654782', '1584676654782');
INSERT INTO `idea_image` VALUES ('74', '西宁万科活力，二期新品92-128m²装修华宅，配套完善，开盘有优惠', '[\"20200320/15846796446814125.jpg\"]', '20200320/15846794018231334.png', '11', '1', '1', '2', '1', '3.07', '112.00', '[\"林张文\"]', '[\"房产\"]', '0', '11', '1584679697999', '1584679697999');

-- ----------------------------
-- Table structure for idea_openscreen
-- ----------------------------
DROP TABLE IF EXISTS `idea_openscreen`;
CREATE TABLE `idea_openscreen` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `type` int DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `video_url` varchar(255) DEFAULT NULL,
  `video_cover` varchar(255) DEFAULT NULL,
  `promotion_industry` int DEFAULT NULL,
  `promotion_content` varchar(255) DEFAULT NULL,
  `promotion_cycle` varchar(255) DEFAULT NULL,
  `openscreen_putin_type` int DEFAULT NULL,
  `openscreen_show_type` int DEFAULT NULL,
  `openscreen_promotion_product` int DEFAULT NULL,
  `click_rate` double(11,2) DEFAULT NULL,
  `conversion_cost` double(11,2) DEFAULT NULL,
  `authors` varchar(255) DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `status` int NOT NULL,
  `createAt` bigint NOT NULL,
  `updateAt` bigint DEFAULT NULL,
  `pv` int unsigned DEFAULT '0',
  PRIMARY KEY (`id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of idea_openscreen
-- ----------------------------
INSERT INTO `idea_openscreen` VALUES ('10', '华晨宝马', '1', '20200320/15846735022239713.png', '', '', '13', '新车上市', '2019.12', '2', '2', '1', '7.00', '0.00', '[]', '[\"新车上市\",\"汽车\",\"车辆\"]', '0', '1584673771242', '1584673771242', '8');
INSERT INTO `idea_openscreen` VALUES ('11', '技校招生', '1', '20200320/15846748309679895.png', '', '', '100', '招生宣传', '2019.12', '1', '1', '1', '6.10', '0.00', '[\"百度\"]', '[\"招生\",\"招生宣传\"]', '0', '1584674959280', '1584674969263', '23');
INSERT INTO `idea_openscreen` VALUES ('12', '123', '2', '', '20200320/15846904460557253.mp4', '20200320/15846904539211234.JPG', '100', '推广内容，，，，事实上大幅度发', '12', '1', '1', '1', '13.00', '0.00', '[]', '[]', '0', '1584678155042', '1584690480451', '11');
INSERT INTO `idea_openscreen` VALUES ('13', '开屏图片', '1', '20200320/15846903998581477.JPG', '', '', '100', '', '', '1', '1', '1', '12.00', '0.00', '[\"资质\"]', '[]', '0', '1584690413150', '1584690413150', '11');

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
  `pv` int unsigned DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of idea_video
-- ----------------------------
INSERT INTO `idea_video` VALUES ('20', '光泽盛辉·小剧·', '20200320/15846694322464979.mp4', '20200320/1584669538954241.png', '100', '1', '1', '1', '2', '1', '1.90', '100.00', '[\"赵帅起\"]', '[\"情景剧\"]', '0', '1584669633081', '1584669633081', '4');
INSERT INTO `idea_video` VALUES ('21', '港丹·口播', '20200320/15846699111656383.mp4', '20200320/15846699469655573.png', '1', '2', '1', '1', '1', '1', '1.50', '0.00', '[\"韩启蒙\"]', '[]', '0', '1584669981501', '1584669981501', '0');
INSERT INTO `idea_video` VALUES ('22', '编程猫·动画', '20200320/15846700953364753.mp4', '20200320/15846701515449998.png', '5', '2', '2', '1', '1', '1', '3.00', '100.00', '[\"赵帅起\"]', '[\"图文\"]', '0', '1584670220723', '1584670220723', '1');
INSERT INTO `idea_video` VALUES ('23', '宏旺·口播', '20200320/15846700969526832.mp4', '20200320/15846702490656471.png', '6', '1', '2', '1', '1', '1', '1.30', '57.00', '[\"韩启蒙\"]', '[]', '0', '1584670287495', '1584670287495', '1');
INSERT INTO `idea_video` VALUES ('24', '手心游戏·海王捕鱼·情景剧', '20200320/15846702930188042.mp4', '20200320/15846703287564868.png', '16', '1', '2', '1', '1', '1', '2.00', '150.00', '[\"赵帅起\"]', '[]', '0', '1584670351242', '1584670351242', '1');
INSERT INTO `idea_video` VALUES ('25', '陌声·小剧1', '20200320/15846703485521321.mp4', '20200320/15846703688479825.png', '15', '1', '2', '1', '1', '1', '1.36', '6.00', '[\"许怀\"]', '[]', '0', '1584670402223', '1584670402223', '3');
INSERT INTO `idea_video` VALUES ('26', '减肥训练营·文字特效', '20200320/15846704289619158.mp4', '20200320/15846704375726609.png', '100', '1', '2', '1', '1', '1', '3.00', '0.00', '[\"赵帅起\"]', '[\"文字特效\"]', '0', '1584670456836', '1584670456836', '0');
INSERT INTO `idea_video` VALUES ('27', '星塔河·小剧4', '', '20200320/1584670523690595.png', '15', '1', '1', '1', '1', '1', '2.60', '11.00', '[\"许怀\"]', '[\"情景剧\"]', '0', '1584670525701', '1584670525701', '10');
INSERT INTO `idea_video` VALUES ('28', '大材小才·股票投资·单人口播', '20200320/15846705302638045.mp4', '20200320/15846705363446406.png', '10', '1', '2', '1', '1', '1', '2.00', '100.00', '[\"赵帅起\"]', '[]', '0', '1584670560353', '1584670560353', '0');
INSERT INTO `idea_video` VALUES ('29', '大连华讯·股票投资·情景剧', '20200320/1584670633347569.mp4', '20200320/15846706240032767.png', '10', '1', '2', '1', '1', '1', '2.00', '120.00', '[\"赵帅起\"]', '[]', '0', '1584670680397', '1584670680397', '1');
INSERT INTO `idea_video` VALUES ('30', '炏焱·小剧', '20200320/1584670619377920.mp4', '20200320/15846706543984984.png', '100', '1', '1', '1', '1', '1', '2.40', '88.00', '[\"韩启蒙\"]', '[]', '0', '1584670688327', '1584670688327', '0');
INSERT INTO `idea_video` VALUES ('31', '柚安米·口播', '', '', '100', '1', '1', '1', '1', '1', '1.87', '0.00', '[]', '[]', '0', '1584670818890', '1584670818890', '3');
INSERT INTO `idea_video` VALUES ('32', '元典·电商加盟', '20200320/15846706797374148.mp4', '20200320/1584670806306491.JPG', '3', '2', '2', '1', '1', '1', '0.00', '50.00', '[\"陈少雄\"]', '[]', '0', '1584670845297', '1584675438011', '7');
INSERT INTO `idea_video` VALUES ('33', '元典·情景剧', '20200320/15846709986419853.mp4', '20200320/15846710818477937.JPG', '100', '1', '2', '1', '1', '1', '0.00', '50.00', '[\"陈少雄\"]', '[]', '0', '1584671107503', '1584671107503', '0');
INSERT INTO `idea_video` VALUES ('34', '升学·口播', '20200320/15846710462165008.mp4', '20200320/15846710904897535.png', '5', '1', '1', '1', '1', '1', '1.34', '120.00', '[\"许怀\"]', '[]', '0', '1584671123227', '1584671123227', '3');
INSERT INTO `idea_video` VALUES ('35', '华逸·口播', '20200320/1584671240601318.mp4', '20200320/15846712861597734.png', '5', '1', '1', '1', '1', '1', '1.87', '178.00', '[\"许怀\"]', '[\"单人口播\"]', '0', '1584671314874', '1584671314874', '3');
INSERT INTO `idea_video` VALUES ('36', '晟景', '20200320/15846750627267801.mp4', '20200320/15846715514282199.png', '100', '1', '2', '1', '1', '1', '1.87', '0.00', '[\"许怀\"]', '[\"图文快闪\"]', '0', '1584671557155', '1584675433163', '5');
INSERT INTO `idea_video` VALUES ('37', '遇见·口播1', '', '20200320/15846716655531965.png', '100', '1', '2', '1', '1', '1', '2.30', '58.00', '[]', '[]', '0', '1584671701085', '1584671701085', '1');
INSERT INTO `idea_video` VALUES ('38', '石代·实拍2', '20200320/15846717427701568.mp4', '20200320/15846718195518851.png', '9', '1', '2', '1', '1', '1', '0.00', '89.00', '[\"韩启蒙\"]', '[\"采访探店\"]', '0', '1584671825996', '1584675029366', '6');
INSERT INTO `idea_video` VALUES ('39', '乔丹·宣传片', '20200320/15846718739871617.mp4', '20200320/15846718912157664.png', '9', '1', '2', '1', '1', '1', '1.20', '0.00', '[\"陈少雄 赵帅起\"]', '[\"品牌实拍\"]', '0', '1584671929750', '1584671929750', '3');
INSERT INTO `idea_video` VALUES ('40', '乔丹·宣传片1', '20200320/15846720126232137.mp4', '20200320/15846720349216709.png', '9', '1', '2', '1', '1', '1', '0.90', '0.00', '[\"赵帅起\",\"陈少雄\"]', '[]', '0', '1584672058593', '1584672058593', '3');

-- ----------------------------
-- Table structure for idea_webpage
-- ----------------------------
DROP TABLE IF EXISTS `idea_webpage`;
CREATE TABLE `idea_webpage` (
  `id` int NOT NULL AUTO_INCREMENT,
  `image_cover` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `promotion_industry` int DEFAULT NULL,
  `advert_type` int DEFAULT NULL,
  `webpage_type` int DEFAULT NULL,
  `conversion_type` int DEFAULT NULL,
  `promotion_cycle` varchar(255) DEFAULT NULL,
  `page_num` double DEFAULT NULL,
  `conversion_cost` double DEFAULT NULL,
  `uv` int DEFAULT NULL,
  `average_time` double DEFAULT NULL,
  `click_rate` double DEFAULT NULL,
  `conversion_rate` double DEFAULT NULL,
  `nice_reason` varchar(255) DEFAULT NULL,
  `bright_analysis` varchar(1200) DEFAULT NULL,
  `top_copywritings` varchar(255) DEFAULT NULL,
  `authors` varchar(255) DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `status` int DEFAULT NULL,
  `createAt` bigint NOT NULL,
  `updateAt` bigint DEFAULT NULL,
  `pv` int unsigned DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of idea_webpage
-- ----------------------------
INSERT INTO `idea_webpage` VALUES ('4', '20200315/15842811261148472.PNG', '落地页-title-上下丘成桐', 'https://aisite.wejianzhan.com/site/hoxue.com/6555607c-bc32-4747-9660-5aff09c55a59', '100', '1', '1', '1', '12', '1', '0', '0', '0', '0', '0', '动态图片，轮播动画', '图片接亮点', '[\"top1,随心所欲\"]', '[]', '[]', '0', '1584281221451', '1584675418805', '25');
INSERT INTO `idea_webpage` VALUES ('6', '20200319/15846243782327434.JPG', '全屋定制标题', 'https://sjh.baidu.com/site/pianor.com/8f2fe70e-fef9-4945-954a-ac94153d75d2', '7', '1', '2', '1', '15', '3', '15.5', '152000', '15', '17', '5', '优秀理由，就是很优秀巴拉', '我的亮点，就是全身都是亮点，闪瞎我的眼，哈哈哈哈', '[\"转化文案1\",\"转化文案2\"]', '[\"zy\",\"大大\"]', '[\"标签1\",\"标签2\"]', '0', '1584624512964', '1584675402409', '54');
INSERT INTO `idea_webpage` VALUES ('7', '20200320/15846620836574050.JPG', '51家装节', 'https://sjh.baidu.com/site/sz.51anju.com/e7c25d97-c5a8-4191-b115-d12e14ba0459', '7', '1', '1', '1', '2019.12.02-2020.01.17', '2', '47.5', '782222', '18', '15', '7', '我就是这么优秀', '因为我优秀，所以更厉害啊，这都是瞎编的，测试数据，不不不不不不不不不不不不扩扩扩扩扩扩扩扩扩扩啧啧啧啧啧啧重中之重', '[\"转化文案1\"]', '[\"大大\"]', '[\"标签1\",\"标签2\"]', '0', '1584662251037', '1584675386959', '16');
INSERT INTO `idea_webpage` VALUES ('8', '20200320/15846676046482434.JPG', '贵族母婴-家政服务平台', 'https://sjh.baidu.com/site/szxgzchina.com/d6edad73-34d7-459e-9c34-d1ad253b89be?showpageinpc=1', '7', '1', '2', '1', '2019.08.15-2019.09.24', '5', '23', '352022', '32', '25', '18', '优秀', '亮点优秀，', '[\"文案tip\"]', '[\"zy\"]', '[\"创意标签\"]', '0', '1584667752775', '1584675407372', '23');
INSERT INTO `idea_webpage` VALUES ('9', '20200320/15846678598578406.JPG', '尚城家居', 'https://sjh.baidu.com/site/behome.hk/3de621ee-ef0a-495d-9862-78a256339597?showpageinpc=1', '7', '1', '2', '1', '78', '3', '34', '784201', '17', '35', '21', '设计新颖，题材出新，动画感人', '从设计角度，巴拉巴拉，从题材看这是一个完美的，效果感人，让人沉浸其中无法自拔', '[\"你需要家家装节\",\"懂你的需求\"]', '[\"zy\"]', '[\"标签\"]', '0', '1584667991499', '1584676482290', '39');
INSERT INTO `idea_webpage` VALUES ('10', '20200320/15846758091079611.png', '林氏木业', '', '11', '1', '2', '1', '', '1', '0', '0', '0', '0', '0', '', '', '[]', '[]', '[]', '1', '1584675926492', '1584675926492', '0');
INSERT INTO `idea_webpage` VALUES ('11', '20200320/15846755079893115.png', '儿童综合保障险', 'https://sjh.baidu.com/site/anlan360.com/78cba3f9-79d4-407f-9466-4c0d5bfb024e', '10', '1', '2', '1', '2019.4.22-4.30', '4.5', '27', '4644', '29.6', '67.1', '2.37', '页面独特创新，选取卖点角度与以往页 面不同，美联为高潜客户，页面卖点、 设计、投放效果均得客户高度认可。', '1、首屏tips：突出少儿险卖点及优势，展示少儿险保障额度，牢牢抓住用户注意力首屏展示测算保费，引导用户查看\n2、表单tips：30秒测算，吸引用户快速留单，同时设计保费gif图，突出保费低的优点。设置专业保险问题，体现专业，有利于客服跟进\n3、卖点tips：上初中就能领，展现回报快等优势区别仅从多个层面打动用户展示孩子优势，增加对父母的帮助。', '[\"2019全新少儿综合保障险,一次购买4重保障,单 教育金最高可领360万\",\"在地域，给孩子买份保险需要多少钱？买教育 还是重疾更好？\"]', '[\"郑芳芳\",\"欧智慧\",\"郑燕\"]', '[\"金融\",\"保险\"]', '0', '1584676527595', '1584676527595', '9');

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
