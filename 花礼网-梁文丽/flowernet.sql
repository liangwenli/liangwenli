/*
Navicat MySQL Data Transfer

Source Server         : mycon
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : flowernet

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2019-11-23 17:47:40
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for detailsurl
-- ----------------------------
DROP TABLE IF EXISTS `detailsurl`;
CREATE TABLE `detailsurl` (
  `﻿imgid` int(255) NOT NULL AUTO_INCREMENT,
  `img` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`﻿imgid`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of detailsurl
-- ----------------------------
INSERT INTO `detailsurl` VALUES ('1', 'https://img01.hua.com/uploadpic/images/by_20190903105307621.jpg');
INSERT INTO `detailsurl` VALUES ('2', 'https://img01.hua.com/uploadpic/images/201707281203475226485954.jpg');
INSERT INTO `detailsurl` VALUES ('3', 'https://img01.hua.com/uploadpic/images/201707281203476274218261.jpg');
INSERT INTO `detailsurl` VALUES ('4', 'https://img01.hua.com/uploadpic/images/201707281203476604435660.jpg');
INSERT INTO `detailsurl` VALUES ('5', 'https://img01.hua.com/uploadpic/images/201707281203477748240947.jpg');
INSERT INTO `detailsurl` VALUES ('6', 'https://img01.hua.com/uploadpic/images/201708281549406.jpg');
INSERT INTO `detailsurl` VALUES ('7', 'https://img01.hua.com/uploadpic/images/201707281203478602454312.jpg');

-- ----------------------------
-- Table structure for detailsurl1
-- ----------------------------
DROP TABLE IF EXISTS `detailsurl1`;
CREATE TABLE `detailsurl1` (
  `﻿listid` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `titleurl` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `price1` float DEFAULT NULL,
  `price2` float DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`﻿listid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of detailsurl1
-- ----------------------------
INSERT INTO `detailsurl1` VALUES ('1', '真爱+ 生日蛋糕B款 · 红玫瑰9枝，石竹梅4枝，栀子叶0.5扎', 'https://www.hua.com/product/9092114.html?huaPid=birthday-f201', 'https://img01.hua.com/uploadpic/newpic/9092114.jpg', '268', '298', null, 'https://www.hua.com/product/9010966.html?huaPid=birthday-f101,https://www.hua.com/product/9092112.html?huaPid=birthday-f102');
INSERT INTO `detailsurl1` VALUES ('2', '恋恋情深＋心相印蛋糕 · 11枝香槟玫瑰，白百合2枝', 'https://www.hua.com/product/9092116.html?huaPid=birthday-f202', 'https://img01.hua.com/uploadpic/newpic/9092116.jpg', '329', '369', null, 'https://www.hua.com/product/9010966.html?huaPid=birthday-f101,https://www.hua.com/product/9092112.html?huaPid=birthday-f102');
INSERT INTO `detailsurl1` VALUES ('3', '11枝红玫瑰+德芙心语巧克力98克特价组合套装 · 红玫瑰11枝，满天星围绕', 'https://www.hua.com/product/9092111.html?huaPid=birthday-f203', 'https://img01.hua.com/uploadpic/newpic/9092111.jpg', '209', '239', null, 'https://www.hua.com/product/9010966.html?huaPid=birthday-f101,https://www.hua.com/product/9092112.html?huaPid=birthday-f102');
INSERT INTO `detailsurl1` VALUES ('4', '爱在心头+德芙心语巧克力98克特价组合套装 · 玫瑰50枝：戴安娜粉玫瑰19枝，红玫瑰31枝', 'https://www.hua.com/product/9092122.html?huaPid=birthday-f204', 'https://img01.hua.com/uploadpic/newpic/9092122.jpg', '436', '459', null, 'https://www.hua.com/product/9010966.html?huaPid=birthday-f101,https://www.hua.com/product/9092112.html?huaPid=birthday-f102');
INSERT INTO `detailsurl1` VALUES ('5', '「生日定制」爱意满怀 · 粉雪山玫瑰9枝、粉色桔梗4枝', 'https://www.hua.com/product/9012360.html?huaPid=birthday-f301', 'https://img01.hua.com/uploadpic/newpic/9012360.jpg', '180', '230', '送恋人', 'https://www.hua.com/product/9010966.html?huaPid=birthday-f101,https://www.hua.com/product/9092112.html?huaPid=birthday-f102');
INSERT INTO `detailsurl1` VALUES ('6', '忘情巴黎 · 33枝红玫瑰', 'https://www.hua.com/product/9012009.html?huaPid=birthday-f302', 'https://img01.hua.com/uploadpic/newpic/9012009.jpg', '298', '382', '送恋人', 'https://www.hua.com/product/9010966.html?huaPid=birthday-f101,https://www.hua.com/product/9092112.html?huaPid=birthday-f102');
INSERT INTO `detailsurl1` VALUES ('7', '真爱如初 · 雪山玫瑰11枝、深紫色勿忘我0.3扎', 'https://www.hua.com/product/9010947.html?huaPid=birthday-f303', 'https://img01.hua.com/uploadpic/newpic/9010947.jpg', '198', '265', '送恋人', 'https://www.hua.com/product/9010966.html?huaPid=birthday-f101,https://www.hua.com/product/9092112.html?huaPid=birthday-f102');
INSERT INTO `detailsurl1` VALUES ('8', '香妃 · 香槟玫瑰9枝', 'https://www.hua.com/product/9012056.html?huaPid=birthday-f304', 'https://img01.hua.com/uploadpic/newpic/9012056.jpg', '132', '188', '送恋人', 'https://www.hua.com/product/9010966.html?huaPid=birthday-f101,https://www.hua.com/product/9092112.html?huaPid=birthday-f102');
INSERT INTO `detailsurl1` VALUES ('9', '阳光海岸 · 19枝香槟玫瑰', 'https://www.hua.com/product/9012011.html?huaPid=birthday-f305', 'https://img01.hua.com/uploadpic/newpic/9012011.jpg', '228', '292', '送恋人', 'https://www.hua.com/product/9010966.html?huaPid=birthday-f101,https://www.hua.com/product/9092112.html?huaPid=birthday-f102');
INSERT INTO `detailsurl1` VALUES ('10', '不变的承诺 · 99枝红玫瑰', 'https://www.hua.com/product/9012177.html?huaPid=birthday-f306', 'https://img01.hua.com/uploadpic/newpic/9012177.jpg', '539', '766', '送恋人', 'https://www.hua.com/product/9010966.html?huaPid=birthday-f101,https://www.hua.com/product/9092112.html?huaPid=birthday-f102');
INSERT INTO `detailsurl1` VALUES ('11', '留住好时光 · 粉绣球1枝，粉雪山玫瑰6枝', 'https://www.hua.com/product/9012332.html?huaPid=birthday-f307', 'https://img01.hua.com/uploadpic/newpic/9012332.jpg', '239', '306', '送长辈', 'https://www.hua.com/product/9010966.html?huaPid=birthday-f101,https://www.hua.com/product/9092112.html?huaPid=birthday-f102');
INSERT INTO `detailsurl1` VALUES ('12', '母爱 · 紫红色康乃馨9枝，粉色多头康乃馨10枝', 'https://www.hua.com/product/9012092.html?huaPid=birthday-f308', 'https://img01.hua.com/uploadpic/newpic/9012092.jpg', '172', '228', '送长辈', 'https://www.hua.com/product/9010966.html?huaPid=birthday-f101,https://www.hua.com/product/9092112.html?huaPid=birthday-f102');
INSERT INTO `detailsurl1` VALUES ('13', '馨情无限 · 戴安娜玫瑰11枝，红色康乃馨11支，红色石竹梅4枝', 'https://www.hua.com/product/9012201.html?huaPid=birthday-f309', 'https://img01.hua.com/uploadpic/newpic/9012201.jpg', '238', '312', '送长辈', 'https://www.hua.com/product/9010966.html?huaPid=birthday-f101,https://www.hua.com/product/9092112.html?huaPid=birthday-f102');
INSERT INTO `detailsurl1` VALUES ('14', '妈妈我爱你 · 粉色康乃馨、粉绣球、香槟玫瑰、洋牡丹、黄色香雪兰', 'https://www.hua.com/product/9012315.html?huaPid=birthday-f310', 'https://img01.hua.com/uploadpic/newpic/9012315.jpg', '429', '549', '送长辈', 'https://www.hua.com/product/9010966.html?huaPid=birthday-f101,https://www.hua.com/product/9092112.html?huaPid=birthday-f102');
INSERT INTO `detailsurl1` VALUES ('15', '「生日定制」暖心陪伴 · 粉雪山9枝，浅紫色紫罗兰6枝', 'https://www.hua.com/product/9012361.html?huaPid=birthday-f311', 'https://img01.hua.com/uploadpic/newpic/9012361.jpg', '239', '309', '送朋友', 'https://www.hua.com/product/9010966.html?huaPid=birthday-f101,https://www.hua.com/product/9092112.html?huaPid=birthday-f102');
INSERT INTO `detailsurl1` VALUES ('16', '灿烂的笑容 · 向日葵2枝，金枝玉叶玫瑰13枝', 'https://www.hua.com/product/9012338.html?huaPid=birthday-f312', 'https://img01.hua.com/uploadpic/newpic/9012338.jpg', '259', '369', '送朋友', 'https://www.hua.com/product/9010966.html?huaPid=birthday-f101,https://www.hua.com/product/9092112.html?huaPid=birthday-f102');
INSERT INTO `detailsurl1` VALUES ('17', '甜美公主 · 白玫瑰22枝，粉佳人粉玫瑰14枝，粉色桔梗5枝', 'https://www.hua.com/product/9012154.html?huaPid=birthday-f313', 'https://img01.hua.com/uploadpic/newpic/9012154.jpg', '368', '485', '送朋友', 'https://www.hua.com/product/9010966.html?huaPid=birthday-f101,https://www.hua.com/product/9092112.html?huaPid=birthday-f102');
INSERT INTO `detailsurl1` VALUES ('18', '抱抱我/自然风抱桶花 · 向日葵1枝，红玫瑰2枝，红色多头玫瑰2枝', 'https://www.hua.com/product/9012339.html?huaPid=birthday-f314', 'https://img01.hua.com/uploadpic/newpic/9012339.jpg', '158', '198', '送朋友', 'https://www.hua.com/product/9010966.html?huaPid=birthday-f101,https://www.hua.com/product/9092112.html?huaPid=birthday-f102');
INSERT INTO `detailsurl1` VALUES ('19', '水果之恋(8寸) · 元祖鲜奶蛋糕，布丁水果夹层', 'https://www.hua.com/product/5302015.html?huaPid=birthday-f401', 'https://img01.hua.com/uploadpic/newpic/5302015.jpg', '258', '358', null, 'https://www.hua.com/product/9010966.html?huaPid=birthday-f101,https://www.hua.com/product/9092112.html?huaPid=birthday-f102');
INSERT INTO `detailsurl1` VALUES ('20', '陪伴左右 · 2磅(8寸)水果蛋糕', 'https://www.hua.com/product/5010041.html?huaPid=birthday-f402', 'https://img01.hua.com/uploadpic/newpic/5010041.jpg', '168', '198', null, 'https://www.hua.com/product/9010966.html?huaPid=birthday-f101,https://www.hua.com/product/9092112.html?huaPid=birthday-f102');
INSERT INTO `detailsurl1` VALUES ('21', '全心全意(约2磅) · 鲜果蛋糕', 'https://www.hua.com/product/5602022.html?huaPid=birthday-f403', 'https://img01.hua.com/uploadpic/newpic/5602022.jpg', '218', '216', null, 'https://www.hua.com/product/9010966.html?huaPid=birthday-f101,https://www.hua.com/product/9092112.html?huaPid=birthday-f102');
INSERT INTO `detailsurl1` VALUES ('22', 'Nice兔meet you！(8寸) · 元祖鲜奶蛋糕，布丁加水果夹层', 'https://www.hua.com/product/5302019.html?huaPid=birthday-f404', 'https://img01.hua.com/uploadpic/newpic/5302019.jpg', '258', '358', null, 'https://www.hua.com/product/9010966.html?huaPid=birthday-f101,https://www.hua.com/product/9092112.html?huaPid=birthday-f102');
INSERT INTO `detailsurl1` VALUES ('23', '热带风情 · 3磅(10寸)巧克力+水果蛋糕', 'https://www.hua.com/product/5013047.html?huaPid=birthday-f405', 'https://img01.hua.com/uploadpic/newpic/5013047.jpg', '228', '258', null, 'https://www.hua.com/product/9010966.html?huaPid=birthday-f101,https://www.hua.com/product/9092112.html?huaPid=birthday-f102');
INSERT INTO `detailsurl1` VALUES ('24', '情有独钟(8寸) · 元祖鲜奶蛋糕', 'https://www.hua.com/product/5302066.html?huaPid=birthday-f406', 'https://img01.hua.com/uploadpic/newpic/5302066.jpg', '258', '358', null, 'https://www.hua.com/product/9010966.html?huaPid=birthday-f101,https://www.hua.com/product/9092112.html?huaPid=birthday-f102');
INSERT INTO `detailsurl1` VALUES ('25', '四重奏蛋糕(约2磅) · 方形/巧克力/榴莲/慕斯蛋糕', 'https://www.hua.com/product/5602016.html?huaPid=birthday-f407', 'https://img01.hua.com/uploadpic/newpic/5602016.jpg', '228', '296', null, 'https://www.hua.com/product/9010966.html?huaPid=birthday-f101,https://www.hua.com/product/9092112.html?huaPid=birthday-f102');
INSERT INTO `detailsurl1` VALUES ('26', '蟠桃献颂(8寸) · 元祖鲜奶蛋糕', 'https://www.hua.com/product/5302078.html?huaPid=birthday-f408', 'https://img01.hua.com/uploadpic/newpic/5302078.jpg', '258', '358', null, 'https://www.hua.com/product/9010966.html?huaPid=birthday-f101,https://www.hua.com/product/9092112.html?huaPid=birthday-f102');
INSERT INTO `detailsurl1` VALUES ('27', '甜蜜如心(6寸) · 元祖鲜奶蛋糕，布丁水果夹层', 'https://www.hua.com/product/5301017.html?huaPid=birthday-f409', 'https://img01.hua.com/uploadpic/newpic/5301017.jpg', '198', '298', null, 'https://www.hua.com/product/9010966.html?huaPid=birthday-f101,https://www.hua.com/product/9092112.html?huaPid=birthday-f102');
INSERT INTO `detailsurl1` VALUES ('28', '我的歌声里(6寸) · 元祖鲜奶蛋糕，布丁+水果夹层', 'https://www.hua.com/product/5301014.html?huaPid=birthday-f410', 'https://img01.hua.com/uploadpic/newpic/5301014.jpg', '198', '298', null, 'https://www.hua.com/product/9010966.html?huaPid=birthday-f101,https://www.hua.com/product/9092112.html?huaPid=birthday-f102');
INSERT INTO `detailsurl1` VALUES ('29', '春晖洒暖(6寸) · 元祖鲜奶蛋糕', 'https://www.hua.com/product/5301003.html?huaPid=birthday-f411', 'https://img01.hua.com/uploadpic/newpic/5301003.jpg', '198', '298', null, 'https://www.hua.com/product/9010966.html?huaPid=birthday-f101,https://www.hua.com/product/9092112.html?huaPid=birthday-f102');
INSERT INTO `detailsurl1` VALUES ('30', '清风有信(6寸) · 元祖慕斯蛋糕', 'https://www.hua.com/product/5301071.html?huaPid=birthday-f412', 'https://img01.hua.com/uploadpic/newpic/5301071.jpg', '198', '298', null, 'https://www.hua.com/product/9010966.html?huaPid=birthday-f101,https://www.hua.com/product/9092112.html?huaPid=birthday-f102');
INSERT INTO `detailsurl1` VALUES ('31', '田园晓美(10寸) · 元祖鲜奶蛋糕，布丁水果夹层', 'https://www.hua.com/product/5303016.html?huaPid=birthday-f413', 'https://img01.hua.com/uploadpic/newpic/5303016.jpg', '298', '398', null, 'https://www.hua.com/product/9010966.html?huaPid=birthday-f101,https://www.hua.com/product/9092112.html?huaPid=birthday-f102');
INSERT INTO `detailsurl1` VALUES ('32', '生日蛋糕B · 10寸(3磅)圆形鲜奶水果蛋糕', 'https://www.hua.com/product/5010063.html?huaPid=birthday-f414', 'https://img01.hua.com/uploadpic/newpic/5010063.jpg', '197', '208', null, 'https://www.hua.com/product/9010966.html?huaPid=birthday-f101,https://www.hua.com/product/9092112.html?huaPid=birthday-f102');
INSERT INTO `detailsurl1` VALUES ('33', '999纯金箔玫瑰+陶瓷花瓶 · 千足金箔玫瑰 最佳送女友送爱人礼物 结婚纪念礼物', 'https://www.hua.com/product/1061006.html?huaPid=birthday-f501', 'https://img01.hua.com/uploadpic/newpic/1061006.jpg', '138', '256', null, 'https://www.hua.com/product/9010966.html?huaPid=birthday-f101,https://www.hua.com/product/9092112.html?huaPid=birthday-f102');
INSERT INTO `detailsurl1` VALUES ('34', '一生所爱 · 进口保鲜花，三色玫瑰系列，5年不凋谢', 'https://www.hua.com/product/1060037.html?huaPid=birthday-f502', 'https://img01.hua.com/uploadpic/newpic/1060037.jpg', '228', '368', null, 'https://www.hua.com/product/9010966.html?huaPid=birthday-f101,https://www.hua.com/product/9092112.html?huaPid=birthday-f102');
INSERT INTO `detailsurl1` VALUES ('35', '我如此爱你-口红款520 · 专柜正品Dior#520口红＋进口永生玫瑰礼盒', 'https://www.hua.com/product/1073186.html?huaPid=birthday-f503', 'https://img01.hua.com/uploadpic/newpic/1073186.jpg', '588', '788', null, 'https://www.hua.com/product/9010966.html?huaPid=birthday-f101,https://www.hua.com/product/9092112.html?huaPid=birthday-f102');
INSERT INTO `detailsurl1` VALUES ('36', '斜口瓶花 · 真空保鲜花，彩玫系列，5年不凋谢', 'https://www.hua.com/product/1060022.html?huaPid=birthday-f504', 'https://img01.hua.com/uploadpic/newpic/1060022.jpg', '489', '688', null, 'https://www.hua.com/product/9010966.html?huaPid=birthday-f101,https://www.hua.com/product/9092112.html?huaPid=birthday-f102');
INSERT INTO `detailsurl1` VALUES ('37', '一生一世 · 厄瓜多尔进口永生红玫1朵，双色永生绣球', 'https://www.hua.com/product/1073033.html?huaPid=birthday-f505', 'https://img01.hua.com/uploadpic/newpic/1073033.jpg', '198', '259', null, 'https://www.hua.com/product/9010966.html?huaPid=birthday-f101,https://www.hua.com/product/9092112.html?huaPid=birthday-f102');
INSERT INTO `detailsurl1` VALUES ('38', 'To温暖你心 · 苔藓小兔+粉色永生玫瑰＋粉边紫心奥斯丁', 'https://www.hua.com/product/1073094.html?huaPid=birthday-f506', 'https://img01.hua.com/uploadpic/newpic/1073094.jpg', '288', '448', null, 'https://www.hua.com/product/9010966.html?huaPid=birthday-f101,https://www.hua.com/product/9092112.html?huaPid=birthday-f102');
INSERT INTO `detailsurl1` VALUES ('39', '猫王小王子蓝牙便携式音箱 · 便携式蓝牙音箱（胡桃木）', 'https://www.hua.com/product/1077020.html?huaPid=birthday-f507', 'https://img01.hua.com/uploadpic/newpic/1077020.jpg', '349', '449', null, 'https://www.hua.com/product/9010966.html?huaPid=birthday-f101,https://www.hua.com/product/9092112.html?huaPid=birthday-f102');
INSERT INTO `detailsurl1` VALUES ('40', '爱如繁星 · 白色满天星1把、进口粉色满天星适量、进口紫色满天星适量', 'https://www.hua.com/product/1073202.html?huaPid=birthday-f508', 'https://img01.hua.com/uploadpic/newpic/1073202.jpg', '139', '209', null, 'https://www.hua.com/product/9010966.html?huaPid=birthday-f101,https://www.hua.com/product/9092112.html?huaPid=birthday-f102');
INSERT INTO `detailsurl1` VALUES ('41', '宝石旋转木马/蓝 · 音乐盒畅销款 送女友表白最佳礼物', 'https://www.hua.com/product/1065004.html?huaPid=birthday-f509', 'https://img01.hua.com/uploadpic/newpic/1065004.jpg', '158', '262', null, 'https://www.hua.com/product/9010966.html?huaPid=birthday-f101,https://www.hua.com/product/9092112.html?huaPid=birthday-f102');
INSERT INTO `detailsurl1` VALUES ('42', 'woody书灯木质led折叠usb书本灯 · 创意书灯', 'https://www.hua.com/product/1077011.html?huaPid=birthday-f510', 'https://img01.hua.com/uploadpic/newpic/1077011.jpg', '198', '298', null, 'https://www.hua.com/product/9010966.html?huaPid=birthday-f101,https://www.hua.com/product/9092112.html?huaPid=birthday-f102');
INSERT INTO `detailsurl1` VALUES ('43', '光阴的故事 · 进口橘色永生玫瑰2枝，绿色奥斯丁玫瑰1枝', 'https://www.hua.com/product/1073135.html?huaPid=birthday-f511', 'https://img01.hua.com/uploadpic/newpic/1073135.jpg', '298', '398', null, 'https://www.hua.com/product/9010966.html?huaPid=birthday-f101,https://www.hua.com/product/9092112.html?huaPid=birthday-f102');
INSERT INTO `detailsurl1` VALUES ('44', '天使的爱 · 荷兰工艺保鲜玫瑰，白/彩玫瑰共3朵，泰国进口', 'https://www.hua.com/product/1060045.html?huaPid=birthday-f512', 'https://img01.hua.com/uploadpic/newpic/1060045.jpg', '218', '318', null, 'https://www.hua.com/product/9010966.html?huaPid=birthday-f101,https://www.hua.com/product/9092112.html?huaPid=birthday-f102');
INSERT INTO `detailsurl1` VALUES ('45', '天使之恋化妆镜永生花礼盒 · 化妆镜+永生玫瑰，送恋人妻子专属奢华系列礼盒', 'https://www.hua.com/product/1070064.html?huaPid=birthday-f513', 'https://img01.hua.com/uploadpic/newpic/1070064.jpg', '368', '528', null, 'https://www.hua.com/product/9010966.html?huaPid=birthday-f101,https://www.hua.com/product/9092112.html?huaPid=birthday-f102');
INSERT INTO `detailsurl1` VALUES ('46', '施华洛世奇悦动的心项链 · 心跳锁骨链 专柜正品', 'https://www.hua.com/product/1076067.html?huaPid=birthday-f514', 'https://img01.hua.com/uploadpic/newpic/1076067.jpg', '1269', '1290', null, 'https://www.hua.com/product/9010966.html?huaPid=birthday-f101,https://www.hua.com/product/9092112.html?huaPid=birthday-f102');
INSERT INTO `detailsurl1` VALUES ('47', '德芙心语98克铁盒或109克礼盒 · 德芙品牌巧克力', 'https://www.hua.com/product/3010003.html?huaPid=birthday-f601', 'https://img01.hua.com/uploadpic/newpic/3010003.jpg', '68', '78', null, 'https://www.hua.com/product/9010966.html?huaPid=birthday-f101,https://www.hua.com/product/9092112.html?huaPid=birthday-f102');
INSERT INTO `detailsurl1` VALUES ('48', '费列罗榛果威化糖果巧克力礼盒8粒心形装 · 榛果巧克力', 'https://www.hua.com/product/3010005.html?huaPid=birthday-f602', 'https://img01.hua.com/uploadpic/newpic/3010005.jpg', '68', '88', null, 'https://www.hua.com/product/9010966.html?huaPid=birthday-f101,https://www.hua.com/product/9092112.html?huaPid=birthday-f102');
INSERT INTO `detailsurl1` VALUES ('49', '巧克巧蔻定制9粒装手工夹心巧克力 · 手工夹心巧克力', 'https://www.hua.com/product/1207009.html?huaPid=birthday-f603', 'https://img01.hua.com/uploadpic/newpic/1207009.jpg', '162', '262', null, 'https://www.hua.com/product/9010966.html?huaPid=birthday-f101,https://www.hua.com/product/9092112.html?huaPid=birthday-f102');
INSERT INTO `detailsurl1` VALUES ('50', '费列罗巧克力300克 · 意大利品牌巧克力', 'https://www.hua.com/product/3010004.html?huaPid=birthday-f604', 'https://img01.hua.com/uploadpic/newpic/3010004.jpg', '138', '168', null, 'https://www.hua.com/product/9010966.html?huaPid=birthday-f101,https://www.hua.com/product/9092112.html?huaPid=birthday-f102');
INSERT INTO `detailsurl1` VALUES ('51', '费列罗榛果威化糖果巧克力礼盒16粒 · 榛果巧克力', 'https://www.hua.com/product/3010006.html?huaPid=birthday-f605', 'https://img01.hua.com/uploadpic/newpic/3010006.jpg', '98', '118', null, 'https://www.hua.com/product/9010966.html?huaPid=birthday-f101,https://www.hua.com/product/9092112.html?huaPid=birthday-f102');
INSERT INTO `detailsurl1` VALUES ('52', 'Felchlin妃亭18粒装巧克力礼盒 · 德国进口松露夹心巧克力', 'https://www.hua.com/product/1204042.html?huaPid=birthday-f606', 'https://img01.hua.com/uploadpic/newpic/1204042.jpg', '348', '348', null, 'https://www.hua.com/product/9010966.html?huaPid=birthday-f101,https://www.hua.com/product/9092112.html?huaPid=birthday-f102');

-- ----------------------------
-- Table structure for goodinf
-- ----------------------------
DROP TABLE IF EXISTS `goodinf`;
CREATE TABLE `goodinf` (
  `gid` int(30) NOT NULL AUTO_INCREMENT,
  `gtitle` varchar(255) DEFAULT NULL,
  `price` float(10,2) DEFAULT NULL,
  `src` varchar(255) DEFAULT NULL,
  `yuanjia` float(255,0) DEFAULT NULL,
  `uid` int(200) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `zongjia` varchar(255) DEFAULT NULL,
  `user` varchar(255) DEFAULT NULL,
  `kucun` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`gid`)
) ENGINE=MyISAM AUTO_INCREMENT=92 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goodinf
-- ----------------------------
INSERT INTO `goodinf` VALUES ('31', '鲜花/柔情蜜意-11枝戴安娜粉玫瑰，多头白百合2枝', '206.00', 'https://img01.hua.com/uploadpic/newpic/9012242.jpg_220x240.jpg', '300', '1', '3', '206', '13557988210', '8');
INSERT INTO `goodinf` VALUES ('3', '鲜花/你最珍贵-精品玫瑰礼盒:香槟玫瑰19枝，勿忘我适量', '248.00', 'https://img01.hua.com/uploadpic/newpic/9010969.jpg_220x240.jpg', '300', '1', '5', '248', '17878192790', '8');
INSERT INTO `goodinf` VALUES ('7', '鲜花/满天星-浅粉-满天星1扎', '198.00', 'https://img01.hua.com/uploadpic/newpic/9012446.jpg_220x240.jpg', '200', '1', '8', '198', '13557988217', '8');
INSERT INTO `goodinf` VALUES ('2', '鲜花/恋恋情深-11枝香槟玫瑰，白色多头百合2枝', '198.00', 'https://img01.hua.com/uploadpic/newpic/9012243.jpg_220x240.jpg', '200', '1', '1', '198', '13557988217', '7');
INSERT INTO `goodinf` VALUES ('6', '鲜花/99的爱-香槟玫瑰99枝，尤加利15枝', '639.00', 'https://img01.hua.com/uploadpic/newpic/9012149.jpg_220x240.jpg', '700', '1', '6', '639', '16789054667', '6');
INSERT INTO `goodinf` VALUES ('23', '鲜花/恋恋不忘-香槟玫瑰99枝，叶上花20枝', '639.00', 'https://img01.hua.com/uploadpic/newpic/9012061.jpg_220x240.jpg', '700', '1', '7', '639', '16789054667', '23');
INSERT INTO `goodinf` VALUES ('37', '鲜花/水果花篮-欣喜-百合,向日葵、玫瑰、扶郎、康乃馨等花材，橙子、苹果、进口红提', '298.00', 'https://img01.hua.com/uploadpic/newpic/9020011.jpg_220x240.jpg', '300', '1', '23', '298', '13557988211', '23');
INSERT INTO `goodinf` VALUES ('5', '鲜花/阳光海岸-19枝香槟玫瑰', '228.00', 'https://img01.hua.com/uploadpic/newpic/9012011.jpg_220x240.jpg', '230', '1', '4', '228', '13557988211', '4');
INSERT INTO `goodinf` VALUES ('13', '鲜花/向日葵之歌-向日葵6枝', '189.00', 'https://img01.hua.com/uploadpic/newpic/9012072.jpg_220x240.jpg', '200', '1', '5', '189', '13557988211', '8');

-- ----------------------------
-- Table structure for igood
-- ----------------------------
DROP TABLE IF EXISTS `igood`;
CREATE TABLE `igood` (
  `﻿gid` int(11) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `shou` varchar(255) DEFAULT NULL,
  `yuanjia` float DEFAULT NULL,
  PRIMARY KEY (`﻿gid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of igood
-- ----------------------------
INSERT INTO `igood` VALUES ('1', 'https://img01.hua.com/uploadpic/newpic/9010966.jpg_220x240.jpg', '爱情 · 一往情深', '239', '已售2345件', '300');
INSERT INTO `igood` VALUES ('2', 'https://img01.hua.com/uploadpic/newpic/9012154.jpg_220x240.jpg', '爱情 · 甜美公主', '368', '已售234件', '400');
INSERT INTO `igood` VALUES ('3', 'https://img01.hua.com/uploadpic/newpic/9010011.jpg_220x240.jpg', '爱情 · 一心一意', '139', '已售2366件', '200');
INSERT INTO `igood` VALUES ('4', 'https://img01.hua.com/uploadpic/newpic/9012177.jpg_220x240.jpg', '爱情 · 不变的承诺', '539', '已售645件', '600');
INSERT INTO `igood` VALUES ('5', 'https://img01.hua.com/uploadpic/newpic/9012243.jpg_220x240.jpg', '爱情 · 恋恋情深', '198', '已售2345件', '400');
INSERT INTO `igood` VALUES ('6', 'https://img01.hua.com/uploadpic/newpic/9012228.jpg_220x240.jpg', '爱情 · 浪漫心情', '218', '已售234件', '260');
INSERT INTO `igood` VALUES ('7', 'https://img01.hua.com/uploadpic/newpic/9092112.jpg_220x240.jpg', '爱情 · 99枝玫瑰赠德芙心语巧克力', '629', '已售2366件', '300');
INSERT INTO `igood` VALUES ('8', 'https://img01.hua.com/uploadpic/newpic/9012223.jpg_220x240.jpg', '爱情 · 我只钟情你', '236', '已售645件', '400');
INSERT INTO `igood` VALUES ('9', 'https://img01.hua.com/uploadpic/newpic/9012201.jpg_220x240.jpg', '送长辈 · 馨情无限', '238', '已售2345件', '200');
INSERT INTO `igood` VALUES ('10', 'https://img01.hua.com/uploadpic/newpic/9012092.jpg_220x240.jpg', '送长辈 · 母爱', '172', '已售234件', '300');
INSERT INTO `igood` VALUES ('11', 'https://img01.hua.com/uploadpic/newpic/9012314.jpg_220x240.jpg', '送长辈 · 温馨问候', '285', '已售2366件', '400');
INSERT INTO `igood` VALUES ('12', 'https://img01.hua.com/uploadpic/newpic/9092149.jpg_220x240.jpg', '送长辈 · 一缕清香', '198', '已售645件', '200');
INSERT INTO `igood` VALUES ('13', 'https://img01.hua.com/uploadpic/newpic/9012189.jpg_220x240.jpg', '送长辈 · 恩情无限', '178', '已售2345件', '300');
INSERT INTO `igood` VALUES ('14', 'https://img01.hua.com/uploadpic/newpic/9012332.jpg_220x240.jpg', '送长辈 · 留住好时光', '239', '已售234件', '400');
INSERT INTO `igood` VALUES ('15', 'https://img01.hua.com/uploadpic/newpic/9012204.jpg_220x240.jpg', '送长辈 · 幸福万年长', '338', '已售2366件', '440');
INSERT INTO `igood` VALUES ('16', 'https://img01.hua.com/uploadpic/newpic/9010736.jpg_220x240.jpg', '送长辈 · 感激', '218', '已售645件', '300');
INSERT INTO `igood` VALUES ('17', 'https://img01.hua.com/uploadpic/newpic/1073247.jpg_220x240.jpg', '永生花 · 花好月圆永生花台灯', '298', '已售2345件', '400');
INSERT INTO `igood` VALUES ('18', 'https://img01.hua.com/uploadpic/newpic/1073243.jpg_220x240.jpg', '永生花 · 永生花带灯+蓝牙音箱/天空蓝', '398', '已售234件', '500');
INSERT INTO `igood` VALUES ('19', 'https://img01.hua.com/uploadpic/newpic/1073185.jpg_220x240.jpg', '永生花 · 我如此爱你-口红款999', '588', '已售2366件', '700');
INSERT INTO `igood` VALUES ('20', 'https://img01.hua.com/uploadpic/newpic/1073033.jpg_220x240.jpg', '永生花 · 一生一世', '198', '已售645件', '400');
INSERT INTO `igood` VALUES ('21', 'https://img01.hua.com/uploadpic/newpic/1073244.jpg_220x240.jpg', '永生花 · 永生花带灯+蓝牙音箱/浪漫粉', '398', '已售2345件', '200');
INSERT INTO `igood` VALUES ('22', 'https://img01.hua.com/uploadpic/newpic/1073094.jpg_220x240.jpg', '永生花 · To温暖你心', '288', '已售234件', '300');
INSERT INTO `igood` VALUES ('23', 'https://img01.hua.com/uploadpic/newpic/1073039.jpg_220x240.jpg', '永生花 · 爱与祝福', '198', '已售2366件', '400');
INSERT INTO `igood` VALUES ('24', 'https://img01.hua.com/uploadpic/newpic/1073125.jpg_220x240.jpg', '永生花 · 公主的水晶鞋·粉', '198', '已售645件', '200');
INSERT INTO `igood` VALUES ('25', 'https://img01.hua.com/uploadpic/newpic/5602016.jpg_220x240.jpg', '幸福西饼蛋糕 · 四重奏蛋糕(约2磅)', '228', '已售2345件', '300');
INSERT INTO `igood` VALUES ('26', 'https://img01.hua.com/uploadpic/newpic/5602045.jpg_220x240.jpg', '幸福西饼蛋糕 · 浪漫果纷蛋糕(约2磅)', '218', '已售234件', '400');
INSERT INTO `igood` VALUES ('27', 'https://img01.hua.com/uploadpic/newpic/5902028.jpg_220x240.jpg', '诺心蛋糕 · 草莓拿破仑蛋糕（5-8人食）', '336', '已售2366件', '200');
INSERT INTO `igood` VALUES ('28', 'https://img01.hua.com/uploadpic/newpic/5901021.jpg_220x240.jpg', '诺心蛋糕 · 王子蛋糕（2-4人食）', '218', '已售645件', '300');
INSERT INTO `igood` VALUES ('29', 'https://img02.hua.com/m/pro_detail/375x409.png', '元祖蛋糕 · 小圆香径鲜奶蛋糕（黄金燕麦）(8寸)', '258', '已售2345件', '400');
INSERT INTO `igood` VALUES ('30', 'https://img02.hua.com/m/pro_detail/375x409.png', '窝夫小子蛋糕 · 累成狗焦糖海盐奶油蛋糕（6寸）', '199', '已售234件', '200');
INSERT INTO `igood` VALUES ('31', 'https://img02.hua.com/m/pro_detail/375x409.png', 'Mcake蛋糕 · 小熊动物造型芝士味生日儿童生日宴会蛋糕（2磅）', '298', '已售2366件', '300');
INSERT INTO `igood` VALUES ('32', 'https://img02.hua.com/m/pro_detail/375x409.png', '21CAKE蛋糕 · 百香果酸乳酪慕斯蛋糕(2磅)', '298', '已售645件', '400');
INSERT INTO `igood` VALUES ('33', 'https://img02.hua.com/m/pro_detail/375x409.png', '礼品 · 施华洛世奇悦动的心项链/红色', '1269', '已售2345件', '200');
INSERT INTO `igood` VALUES ('34', 'https://img02.hua.com/m/pro_detail/375x409.png', '礼品 · 一路上有你', '359', '已售234件', '300');
INSERT INTO `igood` VALUES ('35', 'https://img02.hua.com/m/pro_detail/375x409.png', '礼品 · 一路上有你/三色玫瑰', '359', '已售2366件', '400');
INSERT INTO `igood` VALUES ('36', 'https://img02.hua.com/m/pro_detail/375x409.png', '礼品 · 紫轩-桃李满门', '298', '已售645件', '300');
INSERT INTO `igood` VALUES ('37', 'https://img02.hua.com/m/pro_detail/375x409.png', '礼品 · 公爵套装雕羽', '189', '已售2345件', '300');
INSERT INTO `igood` VALUES ('38', 'https://img02.hua.com/m/pro_detail/375x409.png', '礼品 · 猫王·原子唱机B612 蓝牙智能便携式音箱/篮色', '298', '已售234件', '400');
INSERT INTO `igood` VALUES ('39', 'https://img02.hua.com/m/pro_detail/375x409.png', '礼品 · 施华洛世奇DAZZLING SWAN天鹅项链 ', '988', '已售2366件', '100');
INSERT INTO `igood` VALUES ('40', 'https://img02.hua.com/m/pro_detail/375x409.png', '礼品 · 999纯金箔玫瑰+陶瓷花瓶', '138', '已售645件', '300');

-- ----------------------------
-- Table structure for index1
-- ----------------------------
DROP TABLE IF EXISTS `index1`;
CREATE TABLE `index1` (
  `﻿id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `titleurl` varchar(255) DEFAULT NULL,
  `hd` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `hd1` varchar(255) DEFAULT NULL,
  `img-box` varchar(255) DEFAULT NULL,
  `floor-products` varchar(255) DEFAULT NULL,
  `img-box1` varchar(255) DEFAULT NULL,
  `banner-link` varchar(255) DEFAULT NULL,
  `price-num` varchar(255) DEFAULT NULL,
  `img-box2` varchar(255) DEFAULT NULL,
  `floor-products1` varchar(255) DEFAULT NULL,
  `product-title1` varchar(255) DEFAULT NULL,
  `img-box3` varchar(255) DEFAULT NULL,
  `price-num1` varchar(255) DEFAULT NULL,
  `product-title2` varchar(255) DEFAULT NULL,
  `floor-products2` varchar(255) DEFAULT NULL,
  `img-box4` varchar(255) DEFAULT NULL,
  `price-num2` varchar(255) DEFAULT NULL,
  `floor-products3` varchar(255) DEFAULT NULL,
  `img-box5` varchar(255) DEFAULT NULL,
  `product-title3` varchar(255) DEFAULT NULL,
  `product-title4` varchar(255) DEFAULT NULL,
  `floor-products4` varchar(255) DEFAULT NULL,
  `price-num3` varchar(255) DEFAULT NULL,
  `price-num4` varchar(255) DEFAULT NULL,
  `img-box6` varchar(255) DEFAULT NULL,
  `product-title5` varchar(255) DEFAULT NULL,
  `floor-products5` varchar(255) DEFAULT NULL,
  `floor-products6` varchar(255) DEFAULT NULL,
  `img-box7` varchar(255) DEFAULT NULL,
  `price-num5` varchar(255) DEFAULT NULL,
  `product-title6` varchar(255) DEFAULT NULL,
  `more` varchar(255) DEFAULT NULL,
  `price-num6` varchar(255) DEFAULT NULL,
  `floor-products7` varchar(255) DEFAULT NULL,
  `product-title7` varchar(255) DEFAULT NULL,
  `price-num7` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`﻿id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of index1
-- ----------------------------
INSERT INTO `index1` VALUES ('1', '爱情 · 一往情深', 'https://www.hua.com/product/9010966.html?huaPid=homepage-f101', '爱情鲜花', 'https://img02.hua.com/m/pro_detail/375x409.png', '送·让你怦然心动的人', 'https://img02.hua.com/m/pro_detail/375x409.png', '已售 7.5万 件', 'https://img02.hua.com/m/pro_detail/375x409.png', '爱情鲜花专区 >>', '239', 'https://img02.hua.com/m/pro_detail/375x409.png', '已售 2.2万 件', '爱情 · 甜美公主', 'https://img02.hua.com/m/pro_detail/375x409.png', '368', '爱情 · 恋恋情深', '已售 7.2万 件', 'https://img02.hua.com/m/pro_detail/375x409.png', '198', '已售 11.0万 件', 'https://img02.hua.com/m/pro_detail/375x409.png', '爱情 · 浪漫心情', '爱情 · 一心一意', '已售 3835 件', '218', '139', 'https://img02.hua.com/m/pro_detail/375x409.png', '爱情 · 99枝玫瑰赠德芙心语巧克力', '已售 2512 件', '已售 6.2万 件', 'https://img02.hua.com/m/pro_detail/375x409.png', '629', '爱情 · 不变的承诺', '更多爱情鲜花 >>', '539', '已售 3.5万 件', '爱情 · 我只钟情你', '236');
INSERT INTO `index1` VALUES ('2', '送长辈 · 馨情无限', 'https://www.hua.com/product/9012201.html?huaPid=homepage-f201', '送长辈鲜花', 'https://img02.hua.com/m/pro_detail/375x409.png', '赠·父母/恩师/长辈', 'https://img02.hua.com/m/pro_detail/375x409.png', '已售 5970 件', 'https://img02.hua.com/m/pro_detail/375x409.png', '送长辈鲜花专区 >>', '238', 'https://img02.hua.com/m/pro_detail/375x409.png', '已售 1.4万 件', '送长辈 · 母爱', 'https://img02.hua.com/m/pro_detail/375x409.png', '172', '送长辈 · 恩情无限', '已售 1.3万 件', 'https://img02.hua.com/m/pro_detail/375x409.png', '178', '已售 1962 件', 'https://img02.hua.com/m/pro_detail/375x409.png', '送长辈 · 留住好时光', '送长辈 · 温馨问候', '已售 8373 件', '239', '285', 'https://img02.hua.com/m/pro_detail/375x409.png', '送长辈 · 幸福万年长', '已售 3442 件', '已售 3417 件', 'https://img02.hua.com/m/pro_detail/375x409.png', '338', '送长辈 · 一缕清香', '更多送长辈鲜花 >>', '198', '已售 1.8万 件', '送长辈 · 感激', '218');
INSERT INTO `index1` VALUES ('3', '永生花 · 花好月圆永生花台灯', 'https://www.hua.com/product/1073247.html?huaPid=homepage-f301', '永生花', 'https://img02.hua.com/m/pro_detail/375x409.png', '许·她一生承诺', 'https://img02.hua.com/m/pro_detail/375x409.png', '已售 746 件', 'https://img02.hua.com/m/pro_detail/375x409.png', '永生花专区 >>', '298', 'https://img02.hua.com/m/pro_detail/375x409.png', '已售 1158 件', '永生花 · 永生花带灯+蓝牙音箱/天空蓝', 'https://img02.hua.com/m/pro_detail/375x409.png', '398', '永生花 · 永生花带灯+蓝牙音箱/浪漫粉', '已售 1666 件', 'https://img02.hua.com/m/pro_detail/375x409.png', '398', '已售 6309 件', 'https://img02.hua.com/m/pro_detail/375x409.png', '永生花 · To温暖你心', '永生花 · 我如此爱你-口红款999', '已售 9312 件', '288', '588', 'https://img02.hua.com/m/pro_detail/375x409.png', '永生花 · 爱与祝福', '已售 7108 件', '已售 1.2万 件', 'https://img02.hua.com/m/pro_detail/375x409.png', '198', '永生花 · 一生一世', '更多永生花 >>', '198', '已售 4857 件', '永生花 · 公主的水晶鞋·粉', '198');
INSERT INTO `index1` VALUES ('4', '幸福西饼蛋糕 · 四重奏蛋糕(约2磅)', 'https://www.hua.com/product/5602016.html?huaPid=homepage-f401', '蛋糕', 'https://img02.hua.com/m/pro_detail/375x409.png', '一起品味甜蜜时光', 'https://img02.hua.com/m/pro_detail/375x409.png', '已售 2650 件', 'https://img02.hua.com/m/pro_detail/375x409.png', '蛋糕专区 >>', '228', 'https://img02.hua.com/m/pro_detail/375x409.png', '已售 1156 件', '幸福西饼蛋糕 · 浪漫果纷蛋糕(约2磅)', 'https://img02.hua.com/m/pro_detail/375x409.png', '218', '元祖蛋糕 · 小圆香径鲜奶蛋糕（黄金燕麦）(8寸)', '已售 1482 件', 'https://img02.hua.com/m/pro_detail/375x409.png', '258', '已售 930 件', 'https://img02.hua.com/m/pro_detail/375x409.png', '窝夫小子蛋糕 · 累成狗焦糖海盐奶油蛋糕（6寸）', '诺心蛋糕 · 草莓拿破仑蛋糕（5-8人食）', '已售 105 件', '199', '336', 'https://img02.hua.com/m/pro_detail/375x409.png', 'Mcake蛋糕 · 小熊动物造型芝士味生日儿童生日宴会蛋糕（2磅）', '已售 220 件', '已售 99 件', 'https://img02.hua.com/m/pro_detail/375x409.png', '298', '诺心蛋糕 · 王子蛋糕（2-4人食）', '更多蛋糕 >>', '218', '已售 123 件', '21CAKE蛋糕 · 百香果酸乳酪慕斯蛋糕(2磅)', '298');
INSERT INTO `index1` VALUES ('5', '礼品 · 施华洛世奇悦动的心项链/红色', 'https://www.hua.com/product/1076067.html?huaPid=homepage-f501', '礼品', 'https://img02.hua.com/m/pro_detail/375x409.png', '给她·最美好的礼物', 'https://img02.hua.com/m/pro_detail/375x409.png', '已售 41 件', 'https://img01.hua.com/uploadpic/newpic/1082001.jpg_220x240.jpg', '礼品专区 >>', '1269', 'https://img02.hua.com/m/pro_detail/375x409.png', '已售 1.1万 件', '礼品 · 一路上有你', 'https://img01.hua.com/uploadpic/newpic/1077029.jpg_220x240.jpg', '359', '礼品 · 公爵套装雕羽', '已售 2318 件', 'https://img02.hua.com/m/pro_detail/375x409.png', '189', '已售 1934 件', 'https://img01.hua.com/uploadpic/newpic/1076056.jpg_220x240.jpg', '礼品 · 猫王·原子唱机B612 蓝牙智能便携式音箱/篮色', '礼品 · 一路上有你/三色玫瑰', '已售 82 件', '298', '359', 'https://img02.hua.com/m/pro_detail/375x409.png', '礼品 · 施华洛世奇DAZZLING SWAN天鹅项链', '已售 39 件', '已售 1618 件', 'https://img01.hua.com/uploadpic/newpic/1061006.jpg_220x240.jpg', '988', '礼品 · 紫轩-桃李满门', '更多礼品 >>', '298', '已售 3.4万 件', '礼品 · 999纯金箔玫瑰+陶瓷花瓶', '138');

-- ----------------------------
-- Table structure for ingood
-- ----------------------------
DROP TABLE IF EXISTS `ingood`;
CREATE TABLE `ingood` (
  `﻿id` varchar(255) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `yuanjia` float DEFAULT NULL,
  `shou` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`﻿id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ingood
-- ----------------------------
INSERT INTO `ingood` VALUES ('1', 'https://img01.hua.com/uploadpic/newpic/9010849.jpg_220x240.jpg', '爱情 · 缘份', '196', '219', '已售1.4万件');
INSERT INTO `ingood` VALUES ('2', 'https://img01.hua.com/uploadpic/newpic/9012177.jpg_220x240.jpg', '爱情 · 不变的承诺', '539', '289', '已售5670件');
INSERT INTO `ingood` VALUES ('3', 'https://img01.hua.com/uploadpic/newpic/9010011.jpg_220x240.jpg', '爱情 · 一心一意', '139', '239', '已售2.4万件');
INSERT INTO `ingood` VALUES ('4', 'https://img01.hua.com/uploadpic/newpic/9010966.jpg_220x240.jpg', '爱情 · 一往情深', '239', '172', '已售8900件');
INSERT INTO `ingood` VALUES ('5', 'https://img01.hua.com/uploadpic/newpic/9012009.jpg_220x240.jpg', '爱情 · 忘情巴黎', '298', '198', '已售6000件');
INSERT INTO `ingood` VALUES ('6', 'https://img01.hua.com/uploadpic/newpic/9010999.jpg_220x240.jpg', '爱情 · 爱到永久', '5299', '198', '已售1.5万件');
INSERT INTO `ingood` VALUES ('7', 'https://img01.hua.com/uploadpic/newpic/9012243.jpg_220x240.jpg', '爱情 · 恋恋情深', '198', '238', '已售1.5万件');
INSERT INTO `ingood` VALUES ('8', 'https://img01.hua.com/uploadpic/newpic/9012437.jpg_220x240.jpg', '爱情 · 粉雪佳人', '219', '239', '已售5671件');
INSERT INTO `ingood` VALUES ('9', 'https://img01.hua.com/uploadpic/newpic/9012440.jpg_220x240.jpg', '送长辈 · 星河璀璨', '289', '280', '已售2.5万件');
INSERT INTO `ingood` VALUES ('10', 'https://img01.hua.com/uploadpic/newpic/9012332.jpg_220x240.jpg', '送长辈 · 留住好时光', '239', '298', '已售3100件');
INSERT INTO `ingood` VALUES ('11', 'https://img01.hua.com/uploadpic/newpic/9012092.jpg_220x240.jpg', '送长辈 · 母爱', '172', '999', '已售200件');
INSERT INTO `ingood` VALUES ('12', 'https://img01.hua.com/uploadpic/newpic/9092149.jpg_220x240.jpg', '送长辈 · 一缕清香', '198', '298', '已售1.6万件');
INSERT INTO `ingood` VALUES ('13', 'https://img01.hua.com/uploadpic/newpic/9012441.jpg_220x240.jpg', '送长辈 ·  语笑嫣然', '198', '398', '已售1.6万件');
INSERT INTO `ingood` VALUES ('14', 'https://img01.hua.com/uploadpic/newpic/9012201.jpg_220x240.jpg', '送长辈 · 馨情无限', '238', '288', '已售5672件');
INSERT INTO `ingood` VALUES ('15', 'https://img01.hua.com/uploadpic/newpic/9012430.jpg_220x240.jpg', '送长辈 · Better You', '239', '198', '已售2.6万件');
INSERT INTO `ingood` VALUES ('16', 'https://img01.hua.com/uploadpic/newpic/9010766.jpg_220x240.jpg', '送长辈 · 圆满', '280', '228', '已售2700件');
INSERT INTO `ingood` VALUES ('17', 'https://img01.hua.com/uploadpic/newpic/1070076.jpg_220x240.jpg', '永生花 · HelloKitty公主的花园永生花礼盒', '298', '198', '已售5600件');
INSERT INTO `ingood` VALUES ('18', 'https://img01.hua.com/uploadpic/newpic/1073257.jpg_220x240.jpg', '永生花 · 守护初心口红款礼盒/炽热红', '999', '258', '已售1.7万件');
INSERT INTO `ingood` VALUES ('19', 'https://img01.hua.com/uploadpic/newpic/1073247.jpg_220x240.jpg', '永生花 · 花好月圆永生花台灯', '298', '238', '已售1.7万件');
INSERT INTO `ingood` VALUES ('20', 'https://img01.hua.com/uploadpic/newpic/1073244.jpg_220x240.jpg', '永生花 · 永生花带灯+蓝牙音箱/浪漫粉', '398', '258', '已售5673件');
INSERT INTO `ingood` VALUES ('21', 'https://img01.hua.com/uploadpic/newpic/1073094.jpg_220x240.jpg', '永生花 · To温暖你心', '288', '198', '已售2.7万件');
INSERT INTO `ingood` VALUES ('22', 'https://img01.hua.com/uploadpic/newpic/1073185.jpg_220x240.jpg', '永生花 · 我如此爱你-口红款999', '588', '258', '已售8500件');
INSERT INTO `ingood` VALUES ('23', 'https://img01.hua.com/uploadpic/newpic/1073263.jpg_220x240.jpg', '永生花 · 永生花满月艺术台灯/朦胧粉', '398', '218', '已售11400件');
INSERT INTO `ingood` VALUES ('24', 'https://img01.hua.com/uploadpic/newpic/1073033.jpg_220x240.jpg', '永生花 · 一生一世', '198', '1580', '已售1.8万件');
INSERT INTO `ingood` VALUES ('25', 'https://img01.hua.com/uploadpic/newpic/5602016.jpg_220x240.jpg', '幸福西饼蛋糕 · 四重奏蛋糕(约2磅)', '228', '1269', '已售1.8万件');
INSERT INTO `ingood` VALUES ('26', 'https://img01.hua.com/uploadpic/newpic/5219017.jpg_220x240.jpg', '心之和蛋糕 · 草莓北海道双层（5寸)', '198', '138', '已售5674件');
INSERT INTO `ingood` VALUES ('27', 'https://img01.hua.com/uploadpic/newpic/5302008.jpg_220x240.jpg', '元祖蛋糕 · 蝶恋花景(8寸)', '258', '859', '已售2.8万件');
INSERT INTO `ingood` VALUES ('28', 'https://img01.hua.com/uploadpic/newpic/5181029.jpg_220x240.jpg', 'BONCAKE蛋糕 · 小桃红（6寸）', '238', '198', '已售14300件');
INSERT INTO `ingood` VALUES ('29', 'https://img02.hua.com/m/pro_detail/375x409.png', '元祖蛋糕 · Nice兔meet you！(8寸)', '258', '228', '已售17200件');
INSERT INTO `ingood` VALUES ('30', 'https://img02.hua.com/m/pro_detail/375x409.png', '21CAKE蛋糕 · 芒果奶油蛋糕(2磅)', '198', '198', '已售1.9万件');
INSERT INTO `ingood` VALUES ('31', 'https://img02.hua.com/m/pro_detail/375x409.png', '元祖蛋糕 · 水果之恋(8寸)', '258', '258', '已售1.9万件');
INSERT INTO `ingood` VALUES ('32', 'https://img02.hua.com/m/pro_detail/375x409.png', '幸福西饼蛋糕 · 全心全意(约2磅)', '218', '238', '已售5675件');
INSERT INTO `ingood` VALUES ('33', 'https://img02.hua.com/m/pro_detail/375x409.png', '礼品 · Dior烈艳蓝金唇膏烟花限量版套装', '1580', '258', '已售2.9万件');
INSERT INTO `ingood` VALUES ('34', 'https://img02.hua.com/m/pro_detail/375x409.png', '礼品 · 施华洛世奇悦动的心项链/红色', '1269', '1580', '已售20100件');
INSERT INTO `ingood` VALUES ('35', 'https://img02.hua.com/m/pro_detail/375x409.png', '礼品 · 999纯金箔玫瑰+陶瓷花瓶', '138', '1269', '已售23000件');
INSERT INTO `ingood` VALUES ('36', 'https://img02.hua.com/m/pro_detail/375x409.png', '礼品 · 迪奥口红#520+迪奥花漾淡香水30ml', '859', '138', '已售1.10万件');
INSERT INTO `ingood` VALUES ('37', 'https://img02.hua.com/m/pro_detail/375x409.png', '礼品 · Dior迪奥真我香氛礼盒(圣诞限量版)', '1099', '859', '已售1.10万件');
INSERT INTO `ingood` VALUES ('38', 'https://img02.hua.com/m/pro_detail/375x409.png', '礼品 · 星期耳钉礼盒', '198', '1099', '已售5676件');
INSERT INTO `ingood` VALUES ('39', 'https://img02.hua.com/m/pro_detail/375x409.png', '礼品 · kiss娃娃摆件/小号', '398', '198', '已售2.10万件');
INSERT INTO `ingood` VALUES ('40', 'https://img02.hua.com/m/pro_detail/375x409.png', '礼品 · 施华洛世奇DAZZLING SWAN手链+项链套装', '2399', '398', '已售25900件');

-- ----------------------------
-- Table structure for lgood
-- ----------------------------
DROP TABLE IF EXISTS `lgood`;
CREATE TABLE `lgood` (
  `﻿gid` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `titleurl` varchar(255) DEFAULT NULL,
  `src` varchar(255) DEFAULT NULL,
  `yuanjia` float DEFAULT NULL,
  `price` float DEFAULT NULL,
  `imgurl` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `shou` varchar(255) DEFAULT NULL,
  `num` varchar(255) DEFAULT NULL,
  `kuncun` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`﻿gid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lgood
-- ----------------------------
INSERT INTO `lgood` VALUES ('1', '鲜花/甜美公主-白玫瑰22枝，粉佳人粉玫瑰14枝，粉色桔梗5枝', 'https://www.hua.com/product/9012154.html?huaPid=%2Fyouqingxianhua%2F-9012154', 'https://img01.hua.com/uploadpic/newpic/9012154.jpg_220x240.jpg', '400', '368', 'https://www.hua.com/shopping/AddtoCart?product_code=9012154', '甜美设计 清新典雅', '已售2345件', '1', '5');
INSERT INTO `lgood` VALUES ('2', '鲜花/恋恋情深-11枝香槟玫瑰，白色多头百合2枝', 'https://www.hua.com/product/9012243.html?huaPid=%2Fyouqingxianhua%2F-9012243', 'https://img01.hua.com/uploadpic/newpic/9012243.jpg_220x240.jpg', '200', '198', 'https://www.hua.com/shopping/AddtoCart?product_code=9012243', '经典款式 简约设计', '已售234件', '2', '7');
INSERT INTO `lgood` VALUES ('3', '鲜花/你最珍贵-精品玫瑰礼盒:香槟玫瑰19枝，勿忘我适量', 'https://www.hua.com/product/9010969.html?huaPid=%2Fyouqingxianhua%2F-9010969', 'https://img01.hua.com/uploadpic/newpic/9010969.jpg_220x240.jpg', '300', '248', 'https://www.hua.com/shopping/AddtoCart?product_code=9010969', '优雅设计 精致甄选', '已售2366件', '3', '8');
INSERT INTO `lgood` VALUES ('4', '鲜花/ 语笑嫣然-粉佳人玫瑰9枝、粉色小菊、洋桔梗、尤加利叶', 'https://www.hua.com/product/9012441.html?huaPid=%2Fyouqingxianhua%2F-9012441', 'https://img01.hua.com/uploadpic/newpic/9012441.jpg_220x240.jpg', '200', '198', 'https://www.hua.com/shopping/AddtoCart?product_code=9012441', '温柔相伴，笑容常在', '已售645件', '4', '9');
INSERT INTO `lgood` VALUES ('5', '鲜花/阳光海岸-19枝香槟玫瑰', 'https://www.hua.com/product/9012011.html?huaPid=%2Fyouqingxianhua%2F-9012011', 'https://img01.hua.com/uploadpic/newpic/9012011.jpg_220x240.jpg', '230', '228', 'https://www.hua.com/shopping/AddtoCart?product_code=9012011', '98%好评率，热销推荐', '已售2345件', '5', '4');
INSERT INTO `lgood` VALUES ('6', '鲜花/99的爱-香槟玫瑰99枝，尤加利15枝', 'https://www.hua.com/product/9012149.html?huaPid=%2Fyouqingxianhua%2F-9012149', 'https://img01.hua.com/uploadpic/newpic/9012149.jpg_220x240.jpg', '700', '639', 'https://www.hua.com/shopping/AddtoCart?product_code=9012149', '98%好评率，热销推荐', '已售234件', '6', '6');
INSERT INTO `lgood` VALUES ('7', '鲜花/满天星-浅粉-满天星1扎', 'https://www.hua.com/product/9012446.html?huaPid=%2Fyouqingxianhua%2F-9012446', 'https://img01.hua.com/uploadpic/newpic/9012446.jpg_220x240.jpg', '200', '198', 'https://www.hua.com/shopping/AddtoCart?product_code=9012446', '满天星辰，只因有你', '已售2366件', '7', '8');
INSERT INTO `lgood` VALUES ('8', '鲜花/我只钟情你-香槟玫瑰11枝、白色小雏菊3枝', 'https://www.hua.com/product/9012223.html?huaPid=%2Fyouqingxianhua%2F-9012223', 'https://img01.hua.com/uploadpic/newpic/9012223.jpg_220x240.jpg', '260', '236', 'https://www.hua.com/shopping/AddtoCart?product_code=9012223', '错落有致 甜蜜纯洁', '已售645件', '8', '9');
INSERT INTO `lgood` VALUES ('9', '鲜花/满天星-浅紫-满天星1扎', 'https://www.hua.com/product/9012447.html?huaPid=%2Fyouqingxianhua%2F-9012447', 'https://img01.hua.com/uploadpic/newpic/9012447.jpg_220x240.jpg', '200', '198', 'https://www.hua.com/shopping/AddtoCart?product_code=9012447', '满天星辰，只因有你', '已售2345件', '9', '23');
INSERT INTO `lgood` VALUES ('10', '鲜花/甜蜜相伴-粉佳人玫瑰9枝，白色洋桔梗0.2扎', 'https://www.hua.com/product/9012345.html?huaPid=%2Fyouqingxianhua%2F-9012345', 'https://img01.hua.com/uploadpic/newpic/9012345.jpg_220x240.jpg', '180', '162', 'https://www.hua.com/shopping/AddtoCart?product_code=9012345', '创意包装 高端大气', '已售234件', '10', '67');
INSERT INTO `lgood` VALUES ('11', '鲜花/依靠-戴安娜粉玫瑰12枝，紫色桔梗5枝，粉色勿忘我3枝', 'https://www.hua.com/product/9012038.html?huaPid=%2Fyouqingxianhua%2F-9012038', 'https://img01.hua.com/uploadpic/newpic/9012038.jpg_220x240.jpg', '170', '159', 'https://www.hua.com/shopping/AddtoCart?product_code=9012038', '浪漫配色 美好寓意', '已售2366件', '11', '66');
INSERT INTO `lgood` VALUES ('12', '鲜花/青青子衿-白色多头香水百合6枝', 'https://www.hua.com/product/9010904.html?huaPid=%2Fyouqingxianhua%2F-9010904', 'https://img01.hua.com/uploadpic/newpic/9010904.jpg_220x240.jpg', '300', '280', 'https://www.hua.com/shopping/AddtoCart?product_code=9010904', '香味清新   风格独特', '已售645件', '12', '66');
INSERT INTO `lgood` VALUES ('13', '鲜花/向日葵之歌-向日葵6枝', 'https://www.hua.com/product/9012072.html?huaPid=%2Fyouqingxianhua%2F-9012072', 'https://img01.hua.com/uploadpic/newpic/9012072.jpg_220x240.jpg', '200', '189', 'https://www.hua.com/shopping/AddtoCart?product_code=9012072', '心向暖阳，快乐相伴', '已售2345件', '13', '8');
INSERT INTO `lgood` VALUES ('14', '鲜花/致青春/无声的爱-满天星一大扎', 'https://www.hua.com/product/9010890.html?huaPid=%2Fyouqingxianhua%2F-9010890', 'https://img01.hua.com/uploadpic/newpic/9010890.jpg_220x240.jpg', '230', '229', 'https://www.hua.com/shopping/AddtoCart?product_code=9010890', '98%好评率，热销推荐', '已售234件', '14', '33');
INSERT INTO `lgood` VALUES ('15', '鲜花/夏之物语-香槟玫瑰50枝', 'https://www.hua.com/product/9012043.html?huaPid=%2Fyouqingxianhua%2F-9012043', 'https://img01.hua.com/uploadpic/newpic/9012043.jpg_220x240.jpg', '500', '422', 'https://www.hua.com/shopping/AddtoCart?product_code=9012043', '98%好评率，热销推荐', '已售2366件', '15', '5');
INSERT INTO `lgood` VALUES ('16', '鲜花/心花怒放-粉香水百合5枝', 'https://www.hua.com/product/9012045.html?huaPid=%2Fyouqingxianhua%2F-9012045', 'https://img01.hua.com/uploadpic/newpic/9012045.jpg_220x240.jpg', '230', '198', 'https://www.hua.com/shopping/AddtoCart?product_code=9012045', '一见倾心，心向往之', '已售645件', '16', '7');
INSERT INTO `lgood` VALUES ('17', '鲜花/香妃-香槟玫瑰9枝', 'https://www.hua.com/product/9012056.html?huaPid=%2Fyouqingxianhua%2F-9012056', 'https://img01.hua.com/uploadpic/newpic/9012056.jpg_220x240.jpg', '200', '132', 'https://www.hua.com/shopping/AddtoCart?product_code=9012056', '清新脱俗', '已售2345件', '17', '8');
INSERT INTO `lgood` VALUES ('18', '鲜花/好幸运-粉佳人玫瑰13枝，苏醒玫瑰16枝，粉色扶朗5枝，灯台9枝，尤加利叶', 'https://www.hua.com/product/9012290.html?huaPid=%2Fyouqingxianhua%2F-9012290', 'https://img01.hua.com/uploadpic/newpic/9012290.jpg_220x240.jpg', '550', '490', 'https://www.hua.com/shopping/AddtoCart?product_code=9012290', '精品鲜花', '已售234件', '18', '9');
INSERT INTO `lgood` VALUES ('19', '鲜花/恋恋情深＋心相印蛋糕-11枝香槟玫瑰，白色多头百合2枝', 'https://www.hua.com/product/9092116.html?huaPid=%2Fyouqingxianhua%2F-9092116', 'https://img01.hua.com/uploadpic/newpic/9092116.jpg_220x240.jpg', '340', '329', 'https://www.hua.com/shopping/AddtoCart?product_code=9092116', '一见倾心，心向往之', '已售2366件', '19', '4');
INSERT INTO `lgood` VALUES ('20', '鲜花/天秤座守护花-香槟玫瑰11枝、多头白百合3枝、蕾丝3枝、银叶菊8枝', 'https://www.hua.com/product/9012219.html?huaPid=%2Fyouqingxianhua%2F-9012219', 'https://img01.hua.com/uploadpic/newpic/9012219.jpg_220x240.jpg', '300', '298', 'https://www.hua.com/shopping/AddtoCart?product_code=9012219', '天秤座鲜花定制款', '已售645件', '20', '6');
INSERT INTO `lgood` VALUES ('21', '鲜花/柔情似水-香槟色玫瑰11枝，紫红色勿忘我0.3扎', 'https://www.hua.com/product/9012141.html?huaPid=%2Fyouqingxianhua%2F-9012141', 'https://img01.hua.com/uploadpic/newpic/9012141.jpg_220x240.jpg', '150', '158', 'https://www.hua.com/shopping/AddtoCart?product_code=9012141', '柔情似水，佳期如梦', '已售2345件', '21', '8');
INSERT INTO `lgood` VALUES ('22', '鲜花/粉雪佳人-戴安娜粉玫瑰11枝、白色香水百合2枝、白色洋桔梗5枝', 'https://www.hua.com/product/9012437.html?huaPid=%2Fyouqingxianhua%2F-9012437', 'https://img01.hua.com/uploadpic/newpic/9012437.jpg_220x240.jpg', '300', '219', 'https://www.hua.com/shopping/AddtoCart?product_code=9012437', '清新典雅，至臻设计', '已售234件', '22', '9');
INSERT INTO `lgood` VALUES ('23', '鲜花/恋恋不忘-香槟玫瑰99枝，叶上花20枝', 'https://www.hua.com/product/9012061.html?huaPid=%2Fyouqingxianhua%2F-9012061', 'https://img01.hua.com/uploadpic/newpic/9012061.jpg_220x240.jpg', '700', '639', 'https://www.hua.com/shopping/AddtoCart?product_code=9012061', '超大捧，回头率超高', '已售2366件', '23', '23');
INSERT INTO `lgood` VALUES ('24', '鲜花/十全十美-香槟玫瑰10枝，橙康乃馨10枝，红色洋牡丹10枝', 'https://www.hua.com/product/9012411.html?huaPid=%2Fyouqingxianhua%2F-9012411', 'https://img01.hua.com/uploadpic/newpic/9012411.jpg_220x240.jpg', '400', '349', 'https://www.hua.com/shopping/AddtoCart?product_code=9012411', '春季新品', '已售645件', '24', '67');
INSERT INTO `lgood` VALUES ('25', '鲜花/如沐春风/自然风抱桶花-粉佳人玫瑰11枝', 'https://www.hua.com/product/9012369.html?huaPid=%2Fyouqingxianhua%2F-9012369', 'https://img01.hua.com/uploadpic/newpic/9012369.jpg_220x240.jpg', '200', '179', 'https://www.hua.com/shopping/AddtoCart?product_code=9012369', '清新风格 暖春最佳', '已售2345件', '25', '66');
INSERT INTO `lgood` VALUES ('26', '鲜花/花仙子-蓝绣球2枝，粉绣球1枝，紫玫瑰9枝', 'https://www.hua.com/product/9012118.html?huaPid=%2Fyouqingxianhua%2F-9012118', 'https://img01.hua.com/uploadpic/newpic/9012118.jpg_220x240.jpg', '400', '328', 'https://www.hua.com/shopping/AddtoCart?product_code=9012118', '娇俏可爱 充满惊喜', '已售234件', '26', '66');
INSERT INTO `lgood` VALUES ('27', '鲜花/爱的喜悦/创意心形金属花篮-粉佳人玫瑰9枝，粉桔梗0.7扎，香槟桔梗0.3扎', 'https://www.hua.com/product/9012365.html?huaPid=%2Fyouqingxianhua%2F-9012365', 'https://img01.hua.com/uploadpic/newpic/9012365.jpg_220x240.jpg', '300', '269', 'https://www.hua.com/shopping/AddtoCart?product_code=9012365', '独家创意心形设计', '已售2366件', '27', '8');
INSERT INTO `lgood` VALUES ('28', '鲜花/为爱相随-多头百合1枝，戴安娜粉玫瑰11枝', 'https://www.hua.com/product/9012033.html?huaPid=%2Fyouqingxianhua%2F-9012033', 'https://img01.hua.com/uploadpic/newpic/9012033.jpg_220x240.jpg', '200', '179', 'https://www.hua.com/shopping/AddtoCart?product_code=9012033', '你若不离，我必不弃', '已售645件', '28', '33');
INSERT INTO `lgood` VALUES ('29', '鲜花/水果花篮-欣情-百合、红掌、玫瑰、扶郎、康乃馨等花材；进口橙子、红富士苹果、红提、哈密瓜等新鲜水果', 'https://www.hua.com/product/9020012.html?huaPid=%2Fyouqingxianhua%2F-9020012', 'https://img01.hua.com/uploadpic/newpic/9020012.jpg_220x240.jpg', '400', '348', 'https://www.hua.com/shopping/AddtoCart?product_code=9020012', '一见倾心，心向往之', '已售2345件', '29', '5');
INSERT INTO `lgood` VALUES ('30', '鲜花/如初-19枝白玫瑰，紫色勿忘我5枝', 'https://www.hua.com/product/9012039.html?huaPid=%2Fyouqingxianhua%2F-9012039', 'https://img01.hua.com/uploadpic/newpic/9012039.jpg_220x240.jpg', '300', '205', 'https://www.hua.com/shopping/AddtoCart?product_code=9012039', '特惠款', '已售234件', '30', '7');
INSERT INTO `lgood` VALUES ('31', '鲜花/柔情蜜意-11枝戴安娜粉玫瑰，多头白百合2枝', 'https://www.hua.com/product/9012242.html?huaPid=%2Fyouqingxianhua%2F-9012242', 'https://img01.hua.com/uploadpic/newpic/9012242.jpg_220x240.jpg', '300', '206', 'https://www.hua.com/shopping/AddtoCart?product_code=9012242', '一见倾心，心向往之', '已售2366件', '31', '8');
INSERT INTO `lgood` VALUES ('32', '鲜花/好时光-多头粉色香水百合4枝，苏醒粉玫瑰9枝', 'https://www.hua.com/product/9012128.html?huaPid=%2Fyouqingxianhua%2F-9012128', 'https://img01.hua.com/uploadpic/newpic/9012128.jpg_220x240.jpg', '340', '239', 'https://www.hua.com/shopping/AddtoCart?product_code=9012128', '一见倾心，心向往之', '已售645件', '32', '9');
INSERT INTO `lgood` VALUES ('33', '鲜花/天使的心跳-粉佳人粉玫瑰19枝，粉色桔梗6枝', 'https://www.hua.com/product/9012030.html?huaPid=%2Fyouqingxianhua%2F-9012030', 'https://img01.hua.com/uploadpic/newpic/9012030.jpg_220x240.jpg', '260', '226', 'https://www.hua.com/shopping/AddtoCart?product_code=9012030', '渐变颜色，淡淡甜香气味', '已售2345件', '33', '4');
INSERT INTO `lgood` VALUES ('34', '鲜花/倾城月色-雪山白玫瑰11枝', 'https://www.hua.com/product/9012143.html?huaPid=%2Fyouqingxianhua%2F-9012143', 'https://img01.hua.com/uploadpic/newpic/9012143.jpg_220x240.jpg', '200', '156', 'https://www.hua.com/shopping/AddtoCart?product_code=9012143', '暖春新品', '已售234件', '34', '6');
INSERT INTO `lgood` VALUES ('35', '鲜花/春风十里-粉佳人玫瑰10枝，粉色洋牡丹10枝，粉色绣球1枝', 'https://www.hua.com/product/9012413.html?huaPid=%2Fyouqingxianhua%2F-9012413', 'https://img01.hua.com/uploadpic/newpic/9012413.jpg_220x240.jpg', '500', '429', 'https://www.hua.com/shopping/AddtoCart?product_code=9012413', '暖春新品', '已售2366件', '35', '8');
INSERT INTO `lgood` VALUES ('36', '鲜花/Better You-苏醒粉玫瑰19枝、粉色桔梗5枝、银叶菊5枝', 'https://www.hua.com/product/9012430.html?huaPid=%2Fyouqingxianhua%2F-9012430', 'https://img01.hua.com/uploadpic/newpic/9012430.jpg_220x240.jpg', '260', '239', 'https://www.hua.com/shopping/AddtoCart?product_code=9012430', '流光溢彩 娇媚动人', '已售645件', '36', '9');
INSERT INTO `lgood` VALUES ('37', '鲜花/水果花篮-欣喜-百合,向日葵、玫瑰、扶郎、康乃馨等花材，橙子、苹果、进口红提', 'https://www.hua.com/product/9020011.html?huaPid=%2Fyouqingxianhua%2F-9020011', 'https://img01.hua.com/uploadpic/newpic/9020011.jpg_220x240.jpg', '300', '298', 'https://www.hua.com/shopping/AddtoCart?product_code=9020011', '暖春新品', '已售2345件', '37', '23');
INSERT INTO `lgood` VALUES ('38', '鲜花/多彩的季节-三色玫瑰共50枝', 'https://www.hua.com/product/9012239.html?huaPid=%2Fyouqingxianhua%2F-9012239', 'https://img01.hua.com/uploadpic/newpic/9012239.jpg_220x240.jpg', '550', '419', 'https://www.hua.com/shopping/AddtoCart?product_code=9012239', '小清新设计', '已售234件', '38', '67');
INSERT INTO `lgood` VALUES ('39', '鲜花/双鱼座守护花-蓝色绣球1枝，紫色小雏菊4枝', 'https://www.hua.com/product/9012235.html?huaPid=%2Fyouqingxianhua%2F-9012235', 'https://img01.hua.com/uploadpic/newpic/9012235.jpg_220x240.jpg', '300', '292', 'https://www.hua.com/shopping/AddtoCart?product_code=9012235', '双鱼座鲜花定制款', '已售2366件', '39', '66');
INSERT INTO `lgood` VALUES ('40', '鲜花/阳光灿烂-向日葵3枝、金枝玉叶黄玫瑰19枝', 'https://www.hua.com/product/9012211.html?huaPid=%2Fyouqingxianhua%2F-9012211', 'https://img01.hua.com/uploadpic/newpic/9012211.jpg_220x240.jpg', '200', '308', 'https://www.hua.com/shopping/AddtoCart?product_code=9012211', '心向暖阳  容光焕发', '已售645件', '40', '66');
INSERT INTO `lgood` VALUES ('41', '鲜花/阳光心情-10枝多头黄百合', 'https://www.hua.com/product/9010811.html?huaPid=%2Fyouqingxianhua%2F-9010811', 'https://img01.hua.com/uploadpic/newpic/9010811.jpg_220x240.jpg', '230', '329', 'https://www.hua.com/shopping/AddtoCart?product_code=9010811', '暖春新品', '已售645件', '41', '8');
INSERT INTO `lgood` VALUES ('42', '鲜花/风一样的女子-向日葵3枝，戴安娜粉玫瑰3枝', 'https://www.hua.com/product/9092148.html?huaPid=%2Fyouqingxianhua%2F-9092148', 'https://img01.hua.com/uploadpic/newpic/9092148.jpg_220x240.jpg', '500', '188', 'https://www.hua.com/shopping/AddtoCart?product_code=9092148', '韩式包装 推荐', '已售2345件', '42', '33');
INSERT INTO `lgood` VALUES ('43', '鲜花/希冀微光-粉佳人玫瑰9枝', 'https://www.hua.com/product/9012343.html?huaPid=%2Fyouqingxianhua%2F-9012343', 'https://img01.hua.com/uploadpic/newpic/9012343.jpg_220x240.jpg', '230', '139', 'https://www.hua.com/shopping/AddtoCart?product_code=9012343', '暖春新品', '已售234件', '43', '67');
INSERT INTO `lgood` VALUES ('44', '鲜花/永远的幸福-白玫瑰9枝，蓝绣球1枝，黄金球5枝', 'https://www.hua.com/product/9012119.html?huaPid=%2Fyouqingxianhua%2F-9012119', 'https://img01.hua.com/uploadpic/newpic/9012119.jpg_220x240.jpg', '200', '196', 'https://www.hua.com/shopping/AddtoCart?product_code=9012119', '暖春新品', '已售2366件', '44', '66');
INSERT INTO `lgood` VALUES ('45', '鲜花/好心情-红色太阳花10枝，香槟玫瑰5枝，香槟色桔梗3枝，水仙百合5枝', 'https://www.hua.com/product/9010815.html?huaPid=%2Fyouqingxianhua%2F-9010815', 'https://img01.hua.com/uploadpic/newpic/9010815.jpg_220x240.jpg', '550', '182', 'https://www.hua.com/shopping/AddtoCart?product_code=9010815', '暖春新品', '已售645件', '45', '66');
INSERT INTO `lgood` VALUES ('46', '鲜花/阳光满溢-香槟玫瑰15枝，向日葵3枝', 'https://www.hua.com/product/9012016.html?huaPid=%2Fyouqingxianhua%2F-9012016', 'https://img01.hua.com/uploadpic/newpic/9012016.jpg_220x240.jpg', '340', '278', 'https://www.hua.com/shopping/AddtoCart?product_code=9012016', '馥郁芬芳', '已售2345件', '46', '8');
INSERT INTO `lgood` VALUES ('47', '鲜花/蜜恋-戴安娜粉玫瑰11枝、浅蓝色绣球1枝、浅紫洋桔梗5枝', 'https://www.hua.com/product/9012434.html?huaPid=%2Fyouqingxianhua%2F-9012434', 'https://img01.hua.com/uploadpic/newpic/9012434.jpg_220x240.jpg', '300', '226', 'https://www.hua.com/shopping/AddtoCart?product_code=9012434', '暖春新品', '已售234件', '47', '33');
INSERT INTO `lgood` VALUES ('48', '鲜花/向阳的温暖-精品向日葵礼盒：向日葵3枝，绿色康乃馨8枝，白百合2枝', 'https://www.hua.com/product/9012196.html?huaPid=%2Fyouqingxianhua%2F-9012196', 'https://img01.hua.com/uploadpic/newpic/9012196.jpg_220x240.jpg', '150', '368', 'https://www.hua.com/shopping/AddtoCart?product_code=9012196', '馥郁芬芳', '已售2366件', '48', '5');
INSERT INTO `lgood` VALUES ('49', '鲜花/花香四溢-粉色桔梗1扎', 'https://www.hua.com/product/9012124.html?huaPid=%2Fyouqingxianhua%2F-9012124', 'https://img01.hua.com/uploadpic/newpic/9012124.jpg_220x240.jpg', '300', '158', 'https://www.hua.com/shopping/AddtoCart?product_code=9012124', '馥郁芬芳', '已售645件', '49', '7');
INSERT INTO `lgood` VALUES ('50', '鲜花/恰似你的温柔-精品玫瑰礼盒,香槟玫瑰11枝、深紫色勿忘我0.3扎', 'https://www.hua.com/product/9010949.html?huaPid=%2Fyouqingxianhua%2F-9010949', 'https://img01.hua.com/uploadpic/newpic/9010949.jpg_220x240.jpg', '700', '206', 'https://www.hua.com/shopping/AddtoCart?product_code=9010949', '高端礼盒', '已售2345件', '50', '8');
INSERT INTO `lgood` VALUES ('51', '鲜花/最好的时光-粉佳人9枝', 'https://www.hua.com/product/9012371.html?huaPid=%2Fyouqingxianhua%2F-9012371', 'https://img01.hua.com/uploadpic/newpic/9012371.jpg_220x240.jpg', '400', '198', 'https://www.hua.com/shopping/AddtoCart?product_code=9012371', '馥郁芬芳', '已售234件', '51', '9');
INSERT INTO `lgood` VALUES ('52', '鲜花/暗香-香槟玫瑰11枝，黄玫瑰8枝，红豆3枝', 'https://www.hua.com/product/9012117.html?huaPid=%2Fyouqingxianhua%2F-9012117', 'https://img01.hua.com/uploadpic/newpic/9012117.jpg_220x240.jpg', '200', '238', 'https://www.hua.com/shopping/AddtoCart?product_code=9012117', '清香淡雅，温馨搭配', '已售2366件', '52', '4');
INSERT INTO `lgood` VALUES ('53', '鲜花/温暖的时光-香槟玫瑰29枝，多头粉色香水百合3枝，叶上花3枝', 'https://www.hua.com/product/9012157.html?huaPid=%2Fyouqingxianhua%2F-9012157', 'https://img01.hua.com/uploadpic/newpic/9012157.jpg_220x240.jpg', '400', '386', 'https://www.hua.com/shopping/AddtoCart?product_code=9012157', '清香淡雅，温馨搭配', '已售645件', '53', '6');
INSERT INTO `lgood` VALUES ('54', '鲜花/Flora Love- 粉色玫瑰（荔枝）5枝、浅紫色紫罗兰9枝、白色郁金香9枝、粉色绣球1枝、鸢尾叶1扎、银叶菊1枝', 'https://www.hua.com/product/9012293.html?huaPid=%2Fyouqingxianhua%2F-9012293', 'https://img01.hua.com/uploadpic/newpic/9012293.jpg_220x240.jpg', '300', '699', 'https://www.hua.com/shopping/AddtoCart?product_code=9012293', '高端鲜花', '已售2345件', '54', '8');
INSERT INTO `lgood` VALUES ('55', '鲜花/繁星-粉色绣球1枝、蓝色小飞燕1扎、粉色洋桔梗0.3扎、粉雪山15枝', 'https://www.hua.com/product/9012320.html?huaPid=%2Fyouqingxianhua%2F-9012320', 'https://img01.hua.com/uploadpic/newpic/9012320.jpg_220x240.jpg', '200', '569', 'https://www.hua.com/shopping/AddtoCart?product_code=9012320', '高端鲜花', '已售234件', '55', '67');
INSERT INTO `lgood` VALUES ('56', '鲜花/清风徐来-白色马蹄莲1扎、跳舞兰1扎、贝壳0.5扎、香槟8枝', 'https://www.hua.com/product/9012319.html?huaPid=%2Fyouqingxianhua%2F-9012319', 'https://img01.hua.com/uploadpic/newpic/9012319.jpg_220x240.jpg', '400', '569', 'https://www.hua.com/shopping/AddtoCart?product_code=9012319', '高端鲜花', '已售2366件', '56', '66');
INSERT INTO `lgood` VALUES ('57', '鲜花/天使之吻- 白粉色玫瑰（红袖）19枝，尤加利叶', 'https://www.hua.com/product/9012298.html?huaPid=%2Fyouqingxianhua%2F-9012298', 'https://img01.hua.com/uploadpic/newpic/9012298.jpg_220x240.jpg', '300', '599', 'https://www.hua.com/shopping/AddtoCart?product_code=9012298', '高端鲜花', '已售645件', '57', '66');
INSERT INTO `lgood` VALUES ('58', '鲜花/水果花篮-温馨祝福-粉香水百合1枝,粉玫瑰8枝', 'https://www.hua.com/product/9020015.html?huaPid=%2Fyouqingxianhua%2F-9020015', 'https://img01.hua.com/uploadpic/newpic/9020015.jpg_220x240.jpg', '300', '279', 'https://www.hua.com/shopping/AddtoCart?product_code=9020015', '清香淡雅，温馨搭配', '已售2345件', '58', '8');
INSERT INTO `lgood` VALUES ('59', '鲜花/巨蟹座守护花-戴安娜玫瑰3枝、坦尼克玫瑰6枝、粉色勿忘我5枝', 'https://www.hua.com/product/9012217.html?huaPid=%2Fyouqingxianhua%2F-9012217', 'https://img01.hua.com/uploadpic/newpic/9012217.jpg_220x240.jpg', '340', '139', 'https://www.hua.com/shopping/AddtoCart?product_code=9012217', '巨蟹座鲜花定制款', '已售234件', '59', '33');
INSERT INTO `lgood` VALUES ('60', '鲜花/岁月静好-海蓝绣球1枝，粉佳人/戴安娜玫瑰3枝，粉色紫罗兰6枝', 'https://www.hua.com/product/9012342.html?huaPid=%2Fyouqingxianhua%2F-9012342', 'https://img01.hua.com/uploadpic/newpic/9012342.jpg_220x240.jpg', '260', '198', 'https://www.hua.com/shopping/AddtoCart?product_code=9012342', '清香淡雅，温馨搭配', '已售2366件', '60', '5');
INSERT INTO `lgood` VALUES ('61', '鲜花/欢乐时光-香槟玫瑰19枝、白色桔梗5枝、白色相思梅5枝', 'https://www.hua.com/product/9012431.html?huaPid=%2Fyouqingxianhua%2F-9012431', 'https://img01.hua.com/uploadpic/newpic/9012431.jpg_220x240.jpg', '200', '259', 'https://www.hua.com/shopping/AddtoCart?product_code=9012431', '浪漫雅致 清新动人', '已售645件', '61', '7');
INSERT INTO `lgood` VALUES ('62', '鲜花/枫丹白露- 白玫瑰11枝、白绣球2枝、绿掌3片、白马花9枝、雪柳7枝', 'https://www.hua.com/product/9012295.html?huaPid=%2Fyouqingxianhua%2F-9012295', 'https://img01.hua.com/uploadpic/newpic/9012295.jpg_220x240.jpg', '500', '699', 'https://www.hua.com/shopping/AddtoCart?product_code=9012295', '高端鲜花', '已售2345件', '62', '8');
INSERT INTO `lgood` VALUES ('63', '鲜花/静若繁花-紫色绣球1枝，魅影或冷美人玫瑰11枝', 'https://www.hua.com/product/9012337.html?huaPid=%2Fyouqingxianhua%2F-9012337', 'https://img01.hua.com/uploadpic/newpic/9012337.jpg_220x240.jpg', '260', '288', 'https://www.hua.com/shopping/AddtoCart?product_code=9012337', '清香淡雅，温馨搭配', '已售234件', '63', '9');
INSERT INTO `lgood` VALUES ('64', '鲜花/心动信号-红色玫瑰11枝、粉绣球1枝、绿色洋桔梗5枝', 'https://www.hua.com/product/9012435.html?huaPid=%2Fyouqingxianhua%2F-9012435', 'https://img01.hua.com/uploadpic/newpic/9012435.jpg_220x240.jpg', '300', '229', 'https://www.hua.com/shopping/AddtoCart?product_code=9012435', '圣洁美丽 动人心弦', '已售2366件', '64', '4');
INSERT INTO `lgood` VALUES ('65', '鲜花/粉红恋人-苏醒玫瑰29枝，搭配银叶菊0.5扎', 'https://www.hua.com/product/9012245.html?huaPid=%2Fyouqingxianhua%2F-9012245', 'https://img01.hua.com/uploadpic/newpic/9012245.jpg_220x240.jpg', '550', '310', 'https://www.hua.com/shopping/AddtoCart?product_code=9012245', '清香淡雅，温馨搭配', '已售645件', '65', '6');
INSERT INTO `lgood` VALUES ('66', '鲜花/一见如故-蓝绣球1枝、香槟玫瑰11枝、白色洋桔梗5枝', 'https://www.hua.com/product/9012436.html?huaPid=%2Fyouqingxianhua%2F-9012436', 'https://img01.hua.com/uploadpic/newpic/9012436.jpg_220x240.jpg', '300', '226', 'https://www.hua.com/shopping/AddtoCart?product_code=9012436', '清香淡雅，温馨搭配', '已售2345件', '66', '8');
INSERT INTO `lgood` VALUES ('67', '鲜花/梦里花开-紫色桔梗1扎', 'https://www.hua.com/product/9012123.html?huaPid=%2Fyouqingxianhua%2F-9012123', 'https://img01.hua.com/uploadpic/newpic/9012123.jpg_220x240.jpg', '200', '158', 'https://www.hua.com/shopping/AddtoCart?product_code=9012123', '清香淡雅，温馨搭配', '已售234件', '67', '67');
INSERT INTO `lgood` VALUES ('68', '鲜花/向日葵的夏天-向日葵3枝，绿色康乃馨6枝，小绿菊3枝', 'https://www.hua.com/product/9012215.html?huaPid=%2Fyouqingxianhua%2F-9012215', 'https://img01.hua.com/uploadpic/newpic/9012215.jpg_220x240.jpg', '230', '308', 'https://www.hua.com/shopping/AddtoCart?product_code=9012215', '清香淡雅，温馨搭配', '已售2366件', '68', '66');
INSERT INTO `lgood` VALUES ('69', '鲜花/嫣然一笑-精品玫瑰礼盒:紫玫瑰19枝，勿忘我适量', 'https://www.hua.com/product/9010968.html?huaPid=%2Fyouqingxianhua%2F-9010968', 'https://img01.hua.com/uploadpic/newpic/9010968.jpg_220x240.jpg', '500', '278', 'https://www.hua.com/shopping/AddtoCart?product_code=9010968', '清香淡雅，温馨搭配', '已售645件', '69', '66');
INSERT INTO `lgood` VALUES ('70', '鲜花/射手座守护花-蓝绣球1枝、香槟玫瑰9枝、白色洋桔梗2枝', 'https://www.hua.com/product/9012250.html?huaPid=%2Fyouqingxianhua%2F-9012250', 'https://img01.hua.com/uploadpic/newpic/9012250.jpg_220x240.jpg', '230', '179', 'https://www.hua.com/shopping/AddtoCart?product_code=9012250', '射手座鲜花定制款', '已售2345件', '70', '8');
INSERT INTO `lgood` VALUES ('71', '鲜花/水瓶座守护花-戴安娜玫瑰11枝，粉色太阳花9枝', 'https://www.hua.com/product/9012234.html?huaPid=%2Fyouqingxianhua%2F-9012234', 'https://img01.hua.com/uploadpic/newpic/9012234.jpg_220x240.jpg', '200', '159', 'https://www.hua.com/shopping/AddtoCart?product_code=9012234', '水瓶座鲜花定制款', '已售234件', '71', '33');
INSERT INTO `lgood` VALUES ('72', '鲜花/瓦尔登湖畔- 奶白色玫瑰（小白兔）19枝，尤加利叶', 'https://www.hua.com/product/9012299.html?huaPid=%2Fyouqingxianhua%2F-9012299', 'https://img01.hua.com/uploadpic/newpic/9012299.jpg_220x240.jpg', '550', '599', 'https://www.hua.com/shopping/AddtoCart?product_code=9012299', '高端鲜花', '已售2366件', '72', '5');
INSERT INTO `lgood` VALUES ('73', '鲜花/魔法潘多拉- 雪山白玫瑰11枝、紫掌5片、蓝色绣球1枝、浅紫色紫罗兰9枝、鸢尾叶5枝、鸟巢蕨5片', 'https://www.hua.com/product/9012294.html?huaPid=%2Fyouqingxianhua%2F-9012294', 'https://img01.hua.com/uploadpic/newpic/9012294.jpg_220x240.jpg', '340', '599', 'https://www.hua.com/shopping/AddtoCart?product_code=9012294', '高端鲜花', '已售645件', '73', '7');
INSERT INTO `lgood` VALUES ('74', '鲜花/白羊座守护花-香槟玫瑰9枝、红太阳花11枝、栀子叶10枝', 'https://www.hua.com/product/9012236.html?huaPid=%2Fyouqingxianhua%2F-9012236', 'https://img01.hua.com/uploadpic/newpic/9012236.jpg_220x240.jpg', '300', '149', 'https://www.hua.com/shopping/AddtoCart?product_code=9012236', '白羊座鲜花定制款', '已售2345件', '74', '8');
INSERT INTO `lgood` VALUES ('75', '鲜花/勿忘我-紫色+粉色勿忘我各一扎', 'https://www.hua.com/product/9010797.html?huaPid=%2Fyouqingxianhua%2F-9010797', 'https://img01.hua.com/uploadpic/newpic/9010797.jpg_220x240.jpg', '150', '158', 'https://www.hua.com/shopping/AddtoCart?product_code=9010797', '清香淡雅，温馨搭配', '已售234件', '75', '9');
INSERT INTO `lgood` VALUES ('76', '鲜花/遇见最美的你-精品玫瑰礼盒,紫色玫瑰11枝、深紫色勿忘我0.3扎', 'https://www.hua.com/product/9010961.html?huaPid=%2Fyouqingxianhua%2F-9010961', 'https://img01.hua.com/uploadpic/newpic/9010961.jpg_220x240.jpg', '300', '208', 'https://www.hua.com/shopping/AddtoCart?product_code=9010961', '清香淡雅，温馨搭配', '已售2366件', '76', '4');
INSERT INTO `lgood` VALUES ('77', '鲜花/永不褪色的爱-红玫瑰、多头红玫瑰、尤加利叶、红掌、小天使等花材；长城解百纳', 'https://www.hua.com/product/9020014.html?huaPid=%2Fyouqingxianhua%2F-9020014', 'https://img01.hua.com/uploadpic/newpic/9020014.jpg_220x240.jpg', '700', '379', 'https://www.hua.com/shopping/AddtoCart?product_code=9020014', '清香淡雅，温馨搭配', '已售645件', '77', '6');
INSERT INTO `lgood` VALUES ('78', '鲜花/苏醒的温柔-苏醒玫瑰、白百合、银叶菊、粉色多头康乃馨；火龙果、香蕉、苹果', 'https://www.hua.com/product/9020017.html?huaPid=%2Fyouqingxianhua%2F-9020017', 'https://img01.hua.com/uploadpic/newpic/9020017.jpg_220x240.jpg', '400', '339', 'https://www.hua.com/shopping/AddtoCart?product_code=9020017', '清香淡雅，温馨搭配', '已售2345件', '78', '8');
INSERT INTO `lgood` VALUES ('79', '鲜花/爱的心情/创意心形金属花篮-香槟玫瑰11枝，白色桔梗0.3扎', 'https://www.hua.com/product/9012366.html?huaPid=%2Fyouqingxianhua%2F-9012366', 'https://img01.hua.com/uploadpic/newpic/9012366.jpg_220x240.jpg', '200', '259', 'https://www.hua.com/shopping/AddtoCart?product_code=9012366', '独家创意心形设计', '已售234件', '79', '67');
INSERT INTO `lgood` VALUES ('80', '鲜花/夏日倾情-香槟玫瑰19枝，银叶菊1扎', 'https://www.hua.com/product/9012233.html?huaPid=%2Fyouqingxianhua%2F-9012233', 'https://img01.hua.com/uploadpic/newpic/9012233.jpg_220x240.jpg', '400', '308', 'https://www.hua.com/shopping/AddtoCart?product_code=9012233', '相约仲夏  纯洁无瑕', '已售2366件', '80', '66');
INSERT INTO `lgood` VALUES ('81', '鲜花/紫色仙气-紫色白边康乃馨8枝、白绣球1枝、蓝紫色绣球1枝', 'https://www.hua.com/product/9012224.html?huaPid=%2Fyouqingxianhua%2F-9012224', 'https://img01.hua.com/uploadpic/newpic/9012224.jpg_220x240.jpg', '300', '302', 'https://www.hua.com/shopping/AddtoCart?product_code=9012224', '清香淡雅，温馨搭配', '已售645件', '81', '66');
INSERT INTO `lgood` VALUES ('82', '鲜花/双子座守护花-苏醒玫瑰20枝、雪山玫瑰13枝', 'https://www.hua.com/product/9012216.html?huaPid=%2Fyouqingxianhua%2F-9012216', 'https://img01.hua.com/uploadpic/newpic/9012216.jpg_220x240.jpg', '200', '328', 'https://www.hua.com/shopping/AddtoCart?product_code=9012216', '双子座鲜花定制款', '已售2345件', '82', '8');
INSERT INTO `lgood` VALUES ('83', '鲜花/绿野仙踪-白玫瑰16枝、绿色小雏菊4枝、绿色重瓣洋桔梗3枝', 'https://www.hua.com/product/9012225.html?huaPid=%2Fyouqingxianhua%2F-9012225', 'https://img01.hua.com/uploadpic/newpic/9012225.jpg_220x240.jpg', '400', '328', 'https://www.hua.com/shopping/AddtoCart?product_code=9012225', '清香淡雅，温馨搭配', '已售234件', '83', '33');
INSERT INTO `lgood` VALUES ('84', '鲜花/芬芳-苏醒19枝，粉色洋桔梗0.3扎，粉色扶郎5枝', 'https://www.hua.com/product/9012244.html?huaPid=%2Fyouqingxianhua%2F-9012244', 'https://img01.hua.com/uploadpic/newpic/9012244.jpg_220x240.jpg', '300', '278', 'https://www.hua.com/shopping/AddtoCart?product_code=9012244', '清香淡雅，温馨搭配', '已售2366件', '84', '5');
INSERT INTO `lgood` VALUES ('85', '鲜花/金牛座守护花-白玫瑰11枝、浅蓝绣球1枝、浅紫色洋桔梗5枝', 'https://www.hua.com/product/9012207.html?huaPid=%2Fyouqingxianhua%2F-9012207', 'https://img01.hua.com/uploadpic/newpic/9012207.jpg_220x240.jpg', '300', '298', 'https://www.hua.com/shopping/AddtoCart?product_code=9012207', '金牛座鲜花定制款', '已售645件', '85', '7');
INSERT INTO `lgood` VALUES ('86', '鲜花/爱的陪伴-紫色马蹄莲1扎、紫色紫罗兰1扎、粉色绣球1枝、粉色康乃馨11枝', 'https://www.hua.com/product/9012321.html?huaPid=%2Fyouqingxianhua%2F-9012321', 'https://img01.hua.com/uploadpic/newpic/9012321.jpg_220x240.jpg', '340', '569', 'https://www.hua.com/shopping/AddtoCart?product_code=9012321', '高端鲜花', '已售2345件', '86', '8');
INSERT INTO `lgood` VALUES ('87', '鲜花/摩羯座守护花-白玫瑰9枝、蓝绣球1枝、白色香水百合2枝', 'https://www.hua.com/product/9012249.html?huaPid=%2Fyouqingxianhua%2F-9012249', 'https://img01.hua.com/uploadpic/newpic/9012249.jpg_220x240.jpg', '260', '259', 'https://www.hua.com/shopping/AddtoCart?product_code=9012249', '摩羯座鲜花定制款', '已售234件', '87', '9');
INSERT INTO `lgood` VALUES ('88', '鲜花/From The Heart- 粉紫色郁金香10枝，粉色玫瑰（荔枝）6枝，粉色洋牡丹9枝、浅紫色马蹄莲7枝、雪柳5枝、橙色多头玫瑰3枝', 'https://www.hua.com/product/9012292.html?huaPid=%2Fyouqingxianhua%2F-9012292', 'https://img01.hua.com/uploadpic/newpic/9012292.jpg_220x240.jpg', '200', '699', 'https://www.hua.com/shopping/AddtoCart?product_code=9012292', '高端鲜花', '已售2366件', '88', '4');
INSERT INTO `lgood` VALUES ('89', '鲜花/如初之光-红玫瑰9枝、紫红色紫罗兰9枝、紫红色蕙兰1枝、红色洋牡丹9枝、红掌3片、黑马9枝、灯台7枝', 'https://www.hua.com/product/9012291.html?huaPid=%2Fyouqingxianhua%2F-9012291', 'https://img01.hua.com/uploadpic/newpic/9012291.jpg_220x240.jpg', '500', '899', 'https://www.hua.com/shopping/AddtoCart?product_code=9012291', '高端鲜花', '已售645件', '89', '6');
INSERT INTO `lgood` VALUES ('90', '鲜花/处女座守护花-戴安娜玫瑰9枝、粉色绣球1枝', 'https://www.hua.com/product/9012218.html?huaPid=%2Fyouqingxianhua%2F-9012218', 'https://img01.hua.com/uploadpic/newpic/9012218.jpg_220x240.jpg', '260', '229', 'https://www.hua.com/shopping/AddtoCart?product_code=9012218', '处女座鲜花定制款', '已售2345件', '90', '8');
INSERT INTO `lgood` VALUES ('91', '鲜花/狮子座守护花-天堂鸟3枝、香槟玫瑰5枝、红掌4枝', 'https://www.hua.com/product/9012251.html?huaPid=%2Fyouqingxianhua%2F-9012251', 'https://img01.hua.com/uploadpic/newpic/9012251.jpg_220x240.jpg', '300', '248', 'https://www.hua.com/shopping/AddtoCart?product_code=9012251', '狮子座鲜花定制款', '已售234件', '91', '66');

-- ----------------------------
-- Table structure for listl
-- ----------------------------
DROP TABLE IF EXISTS `listl`;
CREATE TABLE `listl` (
  `﻿gid` int(11) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `tiitle` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `item` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`﻿gid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of listl
-- ----------------------------
INSERT INTO `listl` VALUES ('1', 'https://img01.hua.com/uploadpic/newpic/9012332.jpg_220x240.jpg', '239', '鲜花/留住好时光-粉绣球1枝，粉雪山玫瑰6枝', '精选昆明A级花材', '爱情鲜花');
INSERT INTO `listl` VALUES ('2', 'https://img01.hua.com/uploadpic/newpic/9012339.jpg_220x240.jpg', '158', '鲜花/抱抱我/自然风抱桶花-向日葵1枝，红玫瑰2枝，红色多头玫瑰2枝', '抱抱桶新款', '友情鲜花');
INSERT INTO `listl` VALUES ('3', 'https://img01.hua.com/uploadpic/newpic/9010766.jpg_220x240.jpg', '280', '鲜花/圆满-粉百合2枝、红玫瑰9枝、红色康乃馨15枝', '花篮设计 送礼百搭', '生日鲜花');
INSERT INTO `listl` VALUES ('4', 'https://img01.hua.com/uploadpic/newpic/9012334.jpg_220x240.jpg', '239', '鲜花/幸福满溢-多头百合2枝，卡罗拉玫瑰8枝，红太阳花6枝', '畅销节日花篮', '问候长辈');
INSERT INTO `listl` VALUES ('5', 'https://img01.hua.com/uploadpic/newpic/9012315.jpg_220x240.jpg', '429', '鲜花/妈妈我爱你-粉色康乃馨、粉绣球、香槟玫瑰、洋牡丹、黄色香雪兰', '清新淡雅 笑容常伴', '回报老师');
INSERT INTO `listl` VALUES ('6', 'https://img01.hua.com/uploadpic/newpic/9020012.jpg_220x240.jpg', '348', '鲜花/水果花篮-欣情-百合、红掌、玫瑰、扶郎、康乃馨等花材；进口橙子、红富士苹果、红提、哈密瓜等新鲜水果', null, '探病慰问');
INSERT INTO `listl` VALUES ('7', 'https://img01.hua.com/uploadpic/newpic/9012410.jpg_220x240.jpg', '339', '鲜花/感恩有你-紫红康乃馨10枝，苏醒玫瑰10枝，蓝色绣球1枝', '静谧优雅 落落大方', '道歉鲜花');
INSERT INTO `listl` VALUES ('8', 'https://img01.hua.com/uploadpic/newpic/9012054.jpg_220x240.jpg', '288', '鲜花/真诚祝愿-花篮', null, '婚庆鲜花');
INSERT INTO `listl` VALUES ('9', 'https://img01.hua.com/uploadpic/newpic/9012413.jpg_220x240.jpg', '429', '鲜花/春风十里-粉佳人玫瑰10枝，粉色洋牡丹10枝，粉色绣球1枝', '暖春新品', '祝贺鲜花');
INSERT INTO `listl` VALUES ('10', 'https://img01.hua.com/uploadpic/newpic/9020011.jpg_220x240.jpg', '298', '鲜花/水果花篮-欣喜-百合,向日葵、玫瑰、扶郎、康乃馨等花材，橙子、苹果、进口红提', null, '哀思鲜花');
INSERT INTO `listl` VALUES ('11', 'https://img01.hua.com/uploadpic/newpic/9010811.jpg_220x240.jpg', '329', '鲜花/阳光心情-10枝多头黄百合', null, '商务鲜花');
INSERT INTO `listl` VALUES ('12', 'https://img01.hua.com/uploadpic/newpic/9010871.jpg_220x240.jpg', '136', '鲜花/好想你-红色康乃馨12枝，白色相思梅2枝，栀子叶0.5扎', null, '开业花篮');
INSERT INTO `listl` VALUES ('13', 'https://img01.hua.com/uploadpic/newpic/9012047.jpg_220x240.jpg', '226', '鲜花/爱的思念-手提式花篮', null, '自选鲜花');
INSERT INTO `listl` VALUES ('14', 'https://img01.hua.com/uploadpic/newpic/9010765.jpg_220x240.jpg', '279', '鲜花/欣欣向荣-红掌、多头粉香水百合、红太阳花、康乃馨等花材', null, '港澳台送花');
INSERT INTO `listl` VALUES ('15', 'https://img01.hua.com/uploadpic/newpic/9010875.jpg_220x240.jpg', '245', '鲜花/因为爱-粉色康乃馨12枝，紫色桔梗3枝，粉色香水百合2枝', null, '玫瑰');
INSERT INTO `listl` VALUES ('16', 'https://img01.hua.com/uploadpic/newpic/9012412.jpg_220x240.jpg', '369', '鲜花/盛情满满-红康乃馨10枝，红玫瑰10枝，红色洋牡丹10枝', '花成蜜就', '红玫瑰');
INSERT INTO `listl` VALUES ('17', 'https://img01.hua.com/uploadpic/newpic/9010734.jpg_220x240.jpg', '169', '鲜花/清风雅韵-香槟玫瑰12枝，迷你菊6枝', null, '粉玫瑰');
INSERT INTO `listl` VALUES ('18', 'https://img01.hua.com/uploadpic/newpic/9020015.jpg_220x240.jpg', '279', '鲜花/水果花篮-温馨祝福-粉香水百合1枝,粉玫瑰8枝', null, '白玫瑰');
INSERT INTO `listl` VALUES ('19', 'https://img01.hua.com/uploadpic/newpic/9012337.jpg_220x240.jpg', '288', '鲜花/静若繁花-紫色绣球1枝，魅影或冷美人玫瑰11枝', null, '紫玫瑰');
INSERT INTO `listl` VALUES ('20', 'https://img01.hua.com/uploadpic/newpic/9020017.jpg_220x240.jpg', '339', '鲜花/苏醒的温柔-苏醒玫瑰、白百合、银叶菊、粉色多头康乃馨；火龙果、香蕉、苹果', null, '香槟玫瑰');
INSERT INTO `listl` VALUES ('21', 'https://img01.hua.com/uploadpic/newpic/9020014.jpg_220x240.jpg', '379', '鲜花/永不褪色的爱-红玫瑰、多头红玫瑰、尤加利叶、红掌、小天使等花材；长城解百纳', null, '黄玫瑰');
INSERT INTO `listl` VALUES ('22', null, null, null, null, '康乃馨');
INSERT INTO `listl` VALUES ('23', null, null, null, null, '百合');
INSERT INTO `listl` VALUES ('24', null, null, null, null, '扶郎');
INSERT INTO `listl` VALUES ('25', null, null, null, null, '向日葵');
INSERT INTO `listl` VALUES ('26', null, null, null, null, '郁金香');
INSERT INTO `listl` VALUES ('27', null, null, null, null, '马蹄莲');
INSERT INTO `listl` VALUES ('28', null, null, null, null, '<span class=\"c-red\"></span>红色');
INSERT INTO `listl` VALUES ('29', null, null, null, null, '<span class=\"c-pink\"></span>粉色');
INSERT INTO `listl` VALUES ('30', null, null, null, null, '<span class=\"c-champagne\"></span>香槟');
INSERT INTO `listl` VALUES ('31', null, null, null, null, '<span class=\"c-yellow\"></span>黄色');
INSERT INTO `listl` VALUES ('32', null, null, null, null, '<span class=\"c-white\"></span>白色');
INSERT INTO `listl` VALUES ('33', null, null, null, null, '<span class=\"c-purple\"></span>紫色');
INSERT INTO `listl` VALUES ('34', null, null, null, null, '<span class=\"c-blue\"></span>蓝色');
INSERT INTO `listl` VALUES ('35', null, null, null, null, '花束');
INSERT INTO `listl` VALUES ('36', null, null, null, null, '花盒');
INSERT INTO `listl` VALUES ('37', null, null, null, null, '瓶花');
INSERT INTO `listl` VALUES ('38', null, null, null, null, '精品鲜花');
INSERT INTO `listl` VALUES ('39', null, null, null, null, '果篮');
INSERT INTO `listl` VALUES ('40', null, null, null, null, '桌面花篮');
INSERT INTO `listl` VALUES ('41', null, null, null, null, '开业花蓝');
INSERT INTO `listl` VALUES ('42', null, null, null, null, '组合鲜花');
INSERT INTO `listl` VALUES ('43', null, null, null, null, '特价鲜花');
INSERT INTO `listl` VALUES ('44', null, null, null, null, '150元以下');
INSERT INTO `listl` VALUES ('45', null, null, null, null, '150-250元');
INSERT INTO `listl` VALUES ('46', null, null, null, null, '250-350元');
INSERT INTO `listl` VALUES ('47', null, null, null, null, '350-550元');
INSERT INTO `listl` VALUES ('48', null, null, null, null, '550-800元');
INSERT INTO `listl` VALUES ('49', null, null, null, null, '800元以上');
INSERT INTO `listl` VALUES ('50', null, null, null, null, '9枝');
INSERT INTO `listl` VALUES ('51', null, null, null, null, '10枝');
INSERT INTO `listl` VALUES ('52', null, null, null, null, '11枝');
INSERT INTO `listl` VALUES ('53', null, null, null, null, '12枝');
INSERT INTO `listl` VALUES ('54', null, null, null, null, '16枝');
INSERT INTO `listl` VALUES ('55', null, null, null, null, '18枝');
INSERT INTO `listl` VALUES ('56', null, null, null, null, '19枝');
INSERT INTO `listl` VALUES ('57', null, null, null, null, '20枝');
INSERT INTO `listl` VALUES ('58', null, null, null, null, '22枝');
INSERT INTO `listl` VALUES ('59', null, null, null, null, '29枝');
INSERT INTO `listl` VALUES ('60', null, null, null, null, '33枝');
INSERT INTO `listl` VALUES ('61', null, null, null, null, '36枝');
INSERT INTO `listl` VALUES ('62', null, null, null, null, '50枝');
INSERT INTO `listl` VALUES ('63', null, null, null, null, '66枝');
INSERT INTO `listl` VALUES ('64', null, null, null, null, '99枝以上');

-- ----------------------------
-- Table structure for masterinf
-- ----------------------------
DROP TABLE IF EXISTS `masterinf`;
CREATE TABLE `masterinf` (
  `mid` int(11) NOT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of masterinf
-- ----------------------------
INSERT INTO `masterinf` VALUES ('1', '17878192798', '2837105120@qq.com', 'wevwev');

-- ----------------------------
-- Table structure for nav
-- ----------------------------
DROP TABLE IF EXISTS `nav`;
CREATE TABLE `nav` (
  `﻿id` int(20) NOT NULL AUTO_INCREMENT,
  `url1` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`﻿id`)
) ENGINE=MyISAM AUTO_INCREMENT=102 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of nav
-- ----------------------------
INSERT INTO `nav` VALUES ('1', 'https://img02.hua.com/pc/pimg/ysh_brand_menu_01.jpg', '花盒');
INSERT INTO `nav` VALUES ('2', 'https://img02.hua.com/pc/pimg/ysh_brand_menu_02.jpg', ' 巨型玫瑰');
INSERT INTO `nav` VALUES ('3', 'https://img02.hua.com/pc/pimg/ysh_brand_menu_03.jpg', ' 薰衣草');
INSERT INTO `nav` VALUES ('4', 'https://img02.hua.com/pc/pimg/ysh_brand_menu_04.jpg', '永生瓶花');
INSERT INTO `nav` VALUES ('5', 'https://img02.hua.com/pc/pimg/ysh_brand_menu_05.jpg', '特色永生花');
INSERT INTO `nav` VALUES ('6', 'https://img02.hua.com/pc/pimg/cake_brand_menu_01.jpg', '元祖');
INSERT INTO `nav` VALUES ('7', 'https://img02.hua.com/pc/pimg/cake_brand_21cake.png', '廿一客蛋糕');
INSERT INTO `nav` VALUES ('8', 'https://img02.hua.com/pc/pimg/cake_brand_menu_08.jpg', '诺心蛋糕');
INSERT INTO `nav` VALUES ('9', 'https://img02.hua.com/pc/pimg/cake_brand_s_16.png', ' INCAKE');
INSERT INTO `nav` VALUES ('10', 'https://img02.hua.com/pc/pimg/brandcake_beisike.png?11', ' 贝思客');
INSERT INTO `nav` VALUES ('11', 'https://img02.hua.com/pc/pimg/boncake.png', 'BONCAKE');
INSERT INTO `nav` VALUES ('12', 'https://img02.hua.com/pc/pimg/cake_brand_menu_09.jpg', ' Mcake蛋糕');
INSERT INTO `nav` VALUES ('13', 'https://img02.hua.com/pc/pimg/cake_brand_menu_05.jpg', ' 米卡米卡');
INSERT INTO `nav` VALUES ('14', 'https://img02.hua.com/pc/pimg/cake_brand_menu_04.jpg', ' 窝夫小子');
INSERT INTO `nav` VALUES ('15', 'https://img02.hua.com/pc/pimg/cake_brand_menu_07.jpg', ' 幸福西饼');
INSERT INTO `nav` VALUES ('16', 'https://img02.hua.com/pc/pimg/cake_brand_s_xinzhihe.png', '  心之和蛋糕');
INSERT INTO `nav` VALUES ('17', 'https://img02.hua.com/pc/pimg/cakebrand_cakeboss_96x62.png', 'CAKEBOSS');
INSERT INTO `nav` VALUES ('18', 'https://img02.hua.com/pc/pimg/cake_brand_menu_10.jpg', 'Vcake蛋糕                          ');
INSERT INTO `nav` VALUES ('19', 'https://img02.hua.com/pc/assets/img/gifts/gifts-musicbox.png', '全国蛋糕');
INSERT INTO `nav` VALUES ('20', 'https://img02.hua.com/pc/assets/img/gifts/gifts-goldenflower.png', '北京');
INSERT INTO `nav` VALUES ('21', 'https://img02.hua.com/pc/assets/img/gifts/gifts-crystallaser.png', '上海');
INSERT INTO `nav` VALUES ('22', 'https://img02.hua.com/pc/assets/img/gifts/gifts-shoushi.png', '广州');
INSERT INTO `nav` VALUES ('23', 'https://img02.hua.com/pc/assets/img/gifts/gifts-chocolates.png', '深圳');
INSERT INTO `nav` VALUES ('24', 'https://img02.hua.com/pc/assets/img/gifts/gifts-toys.png', '天津');
INSERT INTO `nav` VALUES ('25', 'https://img02.hua.com/pc/assets/img/gifts/gifts-dengshi.png', '成都');
INSERT INTO `nav` VALUES ('26', null, '重庆');
INSERT INTO `nav` VALUES ('27', null, '西安');
INSERT INTO `nav` VALUES ('28', null, '苏州');
INSERT INTO `nav` VALUES ('29', null, '杭州');
INSERT INTO `nav` VALUES ('30', null, '南京');
INSERT INTO `nav` VALUES ('31', null, '合肥');
INSERT INTO `nav` VALUES ('32', null, '武汉');
INSERT INTO `nav` VALUES ('33', null, '郑州');
INSERT INTO `nav` VALUES ('34', null, '长沙');
INSERT INTO `nav` VALUES ('35', null, '南昌');
INSERT INTO `nav` VALUES ('36', null, '哈尔滨');
INSERT INTO `nav` VALUES ('37', null, '沈阳');
INSERT INTO `nav` VALUES ('38', null, '长春');
INSERT INTO `nav` VALUES ('39', null, '大连');
INSERT INTO `nav` VALUES ('40', null, '青岛');
INSERT INTO `nav` VALUES ('41', null, '济南');
INSERT INTO `nav` VALUES ('42', null, '福州');
INSERT INTO `nav` VALUES ('43', null, '厦门');
INSERT INTO `nav` VALUES ('44', null, '昆明');
INSERT INTO `nav` VALUES ('45', null, '贵阳');
INSERT INTO `nav` VALUES ('46', null, '南宁');
INSERT INTO `nav` VALUES ('47', null, '石家庄');
INSERT INTO `nav` VALUES ('48', null, '海口');
INSERT INTO `nav` VALUES ('49', null, '太原');
INSERT INTO `nav` VALUES ('50', null, '兰州');
INSERT INTO `nav` VALUES ('51', null, '乌鲁木齐');
INSERT INTO `nav` VALUES ('52', null, '唐山');
INSERT INTO `nav` VALUES ('53', null, '呼和浩特');
INSERT INTO `nav` VALUES ('54', null, '东莞');
INSERT INTO `nav` VALUES ('55', null, '佛山');
INSERT INTO `nav` VALUES ('56', null, '宁波');
INSERT INTO `nav` VALUES ('57', null, '无锡');
INSERT INTO `nav` VALUES ('58', null, '温州');
INSERT INTO `nav` VALUES ('59', null, '常州');
INSERT INTO `nav` VALUES ('60', null, '更多>>');
INSERT INTO `nav` VALUES ('61', null, '音乐盒');
INSERT INTO `nav` VALUES ('62', null, ' 金箔花');
INSERT INTO `nav` VALUES ('63', null, '3D水晶内雕');
INSERT INTO `nav` VALUES ('64', null, '首饰/美妆');
INSERT INTO `nav` VALUES ('65', null, ' 巧克力');
INSERT INTO `nav` VALUES ('66', null, '公仔/睡枕');
INSERT INTO `nav` VALUES ('67', null, '摆件/其他                           ');
INSERT INTO `nav` VALUES ('68', null, '品牌公仔');
INSERT INTO `nav` VALUES ('69', null, 'Hello Kitty公仔');
INSERT INTO `nav` VALUES ('70', null, '卡通花束(公仔花束)');
INSERT INTO `nav` VALUES ('71', null, '绿植花卉');
INSERT INTO `nav` VALUES ('72', null, '绿色植物');
INSERT INTO `nav` VALUES ('73', null, '盆栽花卉');
INSERT INTO `nav` VALUES ('74', null, '多肉植物盆栽');
INSERT INTO `nav` VALUES ('75', null, '蓝牙音箱');
INSERT INTO `nav` VALUES ('76', null, '数码配件');
INSERT INTO `nav` VALUES ('77', null, '香薰机');

-- ----------------------------
-- Table structure for shopp
-- ----------------------------
DROP TABLE IF EXISTS `shopp`;
CREATE TABLE `shopp` (
  `uid` varchar(255) NOT NULL,
  `stotal` varchar(255) DEFAULT NULL,
  `zongjia` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shopp
-- ----------------------------
INSERT INTO `shopp` VALUES ('1234', '1', '3456', '1');
INSERT INTO `shopp` VALUES ('1234', '1', '3456', '2');
INSERT INTO `shopp` VALUES ('13557988210', '2', '16488', '3');
INSERT INTO `shopp` VALUES ('13557988210', '1', '3834', '4');
INSERT INTO `shopp` VALUES ('13557988210', '1', '2226', '5');
INSERT INTO `shopp` VALUES ('13557988210', '1', '496', '6');
INSERT INTO `shopp` VALUES ('13557988210', '5', '0', '7');
INSERT INTO `shopp` VALUES ('13557988210', '1', '0', '8');
INSERT INTO `shopp` VALUES ('16789054667', '1', '0', '9');
INSERT INTO `shopp` VALUES ('16789054667', '2', '0', '10');

-- ----------------------------
-- Table structure for useinf
-- ----------------------------
DROP TABLE IF EXISTS `useinf`;
CREATE TABLE `useinf` (
  `uid` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of useinf
-- ----------------------------
INSERT INTO `useinf` VALUES ('1', null, '13787990003', 'wenwen', null);
INSERT INTO `useinf` VALUES ('2', null, '17878192796', 'wenwen', null);
INSERT INTO `useinf` VALUES ('3', null, '13557988210', 'wen678', null);
INSERT INTO `useinf` VALUES ('4', null, '13557988210', 'wen678', null);
INSERT INTO `useinf` VALUES ('5', null, '13456786453', 'web456', null);
INSERT INTO `useinf` VALUES ('6', null, '15787876543', 'webweb', null);
INSERT INTO `useinf` VALUES ('7', null, '17878192822', 'webwen', null);
INSERT INTO `useinf` VALUES ('8', null, '13787878012', 'erty', null);
INSERT INTO `useinf` VALUES ('9', null, '134787894321', 'wenb', null);
INSERT INTO `useinf` VALUES ('10', null, '18978155931', 'wenwen', null);
INSERT INTO `useinf` VALUES ('11', null, '17878192766', 'wenwen', null);
INSERT INTO `useinf` VALUES ('12', null, '15656789760', 'wewebweb', '2837105120@qq.com');
INSERT INTO `useinf` VALUES ('13', null, '17878192788', 'wen123', null);
INSERT INTO `useinf` VALUES ('14', null, '17878198884', '1234', null);
INSERT INTO `useinf` VALUES ('15', null, '17878192799', 'wen1234', null);
INSERT INTO `useinf` VALUES ('16', null, '17878196688', 'wen1234', null);
INSERT INTO `useinf` VALUES ('17', null, '13557988211', 'wen123', null);
INSERT INTO `useinf` VALUES ('18', null, '17878196789', 'wenwen', null);
INSERT INTO `useinf` VALUES ('19', null, '17878192790', 'wenwen', null);
INSERT INTO `useinf` VALUES ('20', null, '13557988217', 'webweb', null);
INSERT INTO `useinf` VALUES ('21', null, '15745679805', 'wenwen', null);
INSERT INTO `useinf` VALUES ('22', null, '17878199076', 'wenwen', null);
INSERT INTO `useinf` VALUES ('23', null, '15757890879', 'wenwen', null);
INSERT INTO `useinf` VALUES ('24', null, '16789054667', 'wenwen', null);
INSERT INTO `useinf` VALUES ('25', null, '16789054667', 'wenwen', null);
SET FOREIGN_KEY_CHECKS=1;
