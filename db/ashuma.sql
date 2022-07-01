/*
 Navicat MySQL Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 80027
 Source Host           : localhost:3306
 Source Schema         : ashuma

 Target Server Type    : MySQL
 Target Server Version : 80027
 File Encoding         : 65001

 Date: 01/07/2022 15:50:37
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for customer
-- ----------------------------
drop database ashuma;
create database ashuma;
use ashuma;

DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer`  (
  `id` int(0) UNSIGNED NOT NULL,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createtime` datetime(0) NULL DEFAULT NULL,
  `updatetime` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES (1, 'xiaojie', '96e79218965eb72c92a549dd5a330112', '2022-05-05 10:54:47', NULL);
INSERT INTO `customer` VALUES (2, 'zhenhui', '96e79218965eb72c92a549dd5a330112', '2022-05-05 11:38:04', NULL);

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `typeid` int(0) UNSIGNED NOT NULL,
  `price` double(8, 2) UNSIGNED NOT NULL,
  `total` int(0) UNSIGNED NOT NULL,
  `pic` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `note` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `addtime` int(0) UNSIGNED NOT NULL,
  `updatetime` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 93 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES (16, '佳能（Canon）EOS 80D 单反相机 单反套机', 4, 8299.00, 100, '202106240216159606.jpg', 'EF-S 18-200mm f/3.5-5.6 IS 单反镜头', 1624457833, '2022-06-05 02:08:48');
INSERT INTO `goods` VALUES (17, '佳能（Canon）EOS 6D Mark II 6D2 单反相机 单反套机', 4, 14499.00, 100, '202106240216228916.jpg', '全画幅（EF 24-105mm f/4L IS II USM 单反镜头）', 1624457869, '2022-06-05 02:08:48');
INSERT INTO `goods` VALUES (18, '佳能（Canon）EOS 90D 单反相机 单反套机', 4, 9699.00, 100, '202106240216327313.jpg', 'EF-S 18-200mm f/3.5-5.6 IS 单反镜头', 1624457910, '2022-06-05 02:08:48');
INSERT INTO `goods` VALUES (19, 'Beats Studio3 Wireless 录音师无线3', 12, 1748.00, 100, '202106240216402027.jpg', '头戴式 蓝牙无线降噪耳机 游戏耳机 - 桀骜黑红（十周年版）', 1624457944, '2022-06-05 02:08:48');
INSERT INTO `goods` VALUES (20, 'Beats X 蓝牙无线 入耳式耳机', 12, 699.00, 100, '202106240216463488.jpg', '带麦可通话 -桀骜黑红（十周年版）', 1624457970, '2022-06-05 02:08:48');
INSERT INTO `goods` VALUES (21, 'Beats Powerbeats Pro', 12, 1698.00, 100, '202106240217089345.jpg', '完全无线高性能耳机 真无线蓝牙运动耳机 象牙白', 1624457998, '2022-06-05 02:08:48');
INSERT INTO `goods` VALUES (22, '联想(Lenovo)拯救者Y7000P 英特尔酷睿i5 15.6英寸游戏笔记本电脑', 2, 7299.00, 100, '202106240217143008.jpg', 'i5-9300HF 16G 1TSSD GTX1660Ti 144Hz 竞技版', 1624458023, '2022-06-05 02:08:48');
INSERT INTO `goods` VALUES (23, '联想(Lenovo)小新Air14 2020性能版 英特尔酷睿i5 全面屏独显轻薄笔记本电脑', 2, 5499.00, 100, '202106240217212289.jpg', 'i5 16G 512G MX350 100%sRGB 银', 1624460510, '2022-06-05 02:08:48');
INSERT INTO `goods` VALUES (24, '联想(Lenovo)YOGA S740 英特尔酷睿i7 14英寸超轻薄商务办公笔记本电脑', 2, 6899.00, 100, '202106240217331767.jpg', 'i7 16G 512G MX250独显 雷电3接口 灰', 1624460550, '2022-06-05 02:08:48');
INSERT INTO `goods` VALUES (25, '联想(Lenovo)小新15 2020英特尔酷睿i7 15.6英寸全面屏独显轻薄笔记本电脑', 2, 6499.00, 100, '202106240217502933.jpg', '十代i7 16G 512G MX350高色域 银', 1624460641, '2022-06-05 02:08:48');
INSERT INTO `goods` VALUES (26, '联想(Lenovo)小新Pro13 2020 英特尔酷睿i5高性能轻薄独显笔记本电脑', 2, 6299.00, 100, '202106240217564623.jpg', 'i5 16G 512G MX350 100%sRGB  沧海冰蓝', 1624460663, '2022-06-05 02:08:48');
INSERT INTO `goods` VALUES (27, '联想(Lenovo)小新Pro13锐龙版 性能网课办公轻薄笔记本电脑', 2, 4999.00, 100, '202106240218041159.jpg', '标压R5-3550H 16G 512G 人脸识别 100%sRGB 银', 1624460688, '2022-06-05 02:08:48');
INSERT INTO `goods` VALUES (28, '联想ThinkPad E14 十代英特尔酷睿i5/i7 14英寸商务办公轻薄笔记本电脑', 2, 6799.00, 100, '202106240218094303.jpg', '十代i7 8G 512GSSD 独显 2LCD', 1624460715, '2022-06-05 02:08:48');
INSERT INTO `goods` VALUES (29, '联想ThinkBook 14英特尔酷睿i5 14英寸轻薄笔记本电脑', 2, 4999.00, 100, '202106240218156255.jpg', '十代酷睿i5 8G 512G傲腾增强型SSD 2G独显', 1624460737, '2022-06-05 02:08:48');
INSERT INTO `goods` VALUES (30, 'Ins 15 35Work BtCIns 15 3580 20Q11W Microsoft 无Office', 7, 2983.00, 100, '202106240218265821.jpg', 'Celeron 4205U, 1TB HDD, 4GB', 1624460809, '2022-06-05 02:08:48');
INSERT INTO `goods` VALUES (31, 'XPS 7390XPS 13 7390 20Q31', 2, 10437.00, 100, '202106240218441723.jpg', 'Core-i5, 256GB SSD, 8GB', 1624461980, '2022-06-05 02:08:48');
INSERT INTO `goods` VALUES (32, 'Ins 14 5490Ins 14 5490 20Q31S 1', 2, 5017.00, 100, '202106240218572002.jpg', 'Core i5, 256GB SSD, 8GB', 1624462124, '2022-06-05 02:08:48');
INSERT INTO `goods` VALUES (33, 'Dell G5 15 5000 15.6 Inch FHD IPS Gaming Laptop - ( Black)', 2, 7686.00, 100, '202106240219086145.jpg', 'Intel Core i5-9300H, 8 GB RAM, 128 GB SSD + 1TB HDD', 1624462152, '2022-06-05 02:08:48');
INSERT INTO `goods` VALUES (34, 'Ins 13 5391Ins 13 5391 20Q32S', 2, 5704.00, 100, '202106240219173433.jpg', 'Core i5, 256GB SSD, 8GB', 1624462180, '2022-06-05 02:08:48');
INSERT INTO `goods` VALUES (35, 'Dell Inspiron 15 3567 FHD 笔记本电脑3585-4610', 2, 3724.00, 100, '202106240219339558.jpg', 'AMD Ryzen 5-2500U, 8 GB RAM 15.6 Inch', 1624462205, '2022-06-05 02:08:48');
INSERT INTO `goods` VALUES (36, 'Dell Inspiron 15 防眩光 LED 背光2019 笔记本电脑', 2, 2236.00, 100, '202106240219497373.jpg', 'J5MHN Intel Pentium Silver N5000, 4 GB 14.0 Inch', 1624462228, '2022-06-05 02:08:48');
INSERT INTO `goods` VALUES (37, 'Dell Inspiron 3000 3185 11.6 英寸笔记本电脑 PC', 2, 3805.00, 100, '202106240219578624.jpg', 'AMD A6-9220e，4GB 内存，32GB EMMC 存储，灰色，Windows 10', 1624462250, '2022-06-05 02:08:48');
INSERT INTO `goods` VALUES (38, 'G7 17 7790Dell G7 17 7790 20Q23 3', 2, 11601.00, 100, '202106240220046149.jpg', 'Core i7, RTX2060, 256GB+1TB, 16GB', 1624462287, '2022-06-05 02:08:48');
INSERT INTO `goods` VALUES (39, 'Dell Inspiron 15 防眩光 LED 背光 2019 笔记本电脑Dell Inspiron 14 3493', 2, 4079.00, 100, '202106240220156520.jpg', 'Intel i5, 8 GB RAM 14 Inch', 1624462329, '2022-06-05 02:08:48');
INSERT INTO `goods` VALUES (40, 'Dell Inspiron 5000 Full HD 笔记本电脑', 2, 7710.00, 100, '202106240220224652.jpg', 'Intel Core i7-10510U, 8 GB RAM 14 Inch', 1624462355, '2022-06-05 02:08:48');
INSERT INTO `goods` VALUES (41, '戴尔Dell游戏笔记本电脑G7', 2, 11055.00, 100, '202106240220358500.jpg', 'Core i7, GTX1660Ti, 256GB+1TB, 16GB', 1624462387, '2022-06-05 02:08:48');
INSERT INTO `goods` VALUES (42, 'Dell 笔记本电脑 Inspiron 15 5575Ins 15 5575 19Q33B Microsoft Office', 2, 8145.00, 100, '202106240220422164.jpg', 'AMD Ryzen 7, SSD512GB, 16GB', 1624462411, '2022-06-05 02:08:48');
INSERT INTO `goods` VALUES (43, 'Dell Inspiron 15 防眩光 LED 背光 2019 笔记本电脑', 2, 2599.00, 100, '202106240220492286.jpg', 'Dell Inspiron 14 3493 Intel i3, 4 GB RAM 14 Inch', 1624462441, '2022-06-05 02:08:48');
INSERT INTO `goods` VALUES (44, 'Ins 13 5391Ins 13 5391 20Q31S 1', 2, 4782.00, 100, '202106240220558861.jpg', 'Core i3, 128GB SSD, 4GB', 1624462466, '2022-06-05 02:08:48');
INSERT INTO `goods` VALUES (45, 'Ins 13 5391Ins 13 5391 20Q33S 4', 2, 7609.00, 100, '202106240221022546.jpg', 'Core i7, 512GB SSD, 8GB, MX250', 1624462488, '2022-06-05 02:08:48');
INSERT INTO `goods` VALUES (46, 'HP 笔记本电脑14-cm0042na A4', 2, 2006.00, 100, '202106240221234247.jpg', '4 GB RAM, 64 GB eMMC 14 Inch', 1624462514, '2022-06-05 02:08:48');
INSERT INTO `goods` VALUES (47, 'HP 惠普 17-by3235ng ( 17.3 英寸 / 高清 ) 笔记本电脑', 2, 3626.00, 100, '202106240221321800.jpg', '英特尔酷睿 i3-1005G1 双 , 8GB DDR4 内存 , 512GB 固态硬盘 , 英特尔超高清显卡 G，Windows 10 ) 银色', 1624462546, '2022-06-05 02:08:48');
INSERT INTO `goods` VALUES (48, 'HP Pavilion 15.6英寸FHD IPS触摸屏WLED背光笔记本电脑', 2, 6289.00, 100, '202106240221393435.jpg', '英特尔四核i7-1065G7高达3.9GHz，12GB DDR4，1TB硬盘，背光键盘，网络摄像头，Windows 10带配件包15 1TB HDD', 1624462570, '2022-06-05 02:08:48');
INSERT INTO `goods` VALUES (49, 'HP 惠普 Chromebook ( 12 英寸 / HD+ 触摸屏) 可转换笔记本电脑', 2, 2485.00, 100, '202106240221449396.jpg', '银色12b-ca0000ng 12 Zoll HD+', 1624462596, '2022-06-05 02:08:48');
INSERT INTO `goods` VALUES (50, 'HP 惠普 Pavilion （14 英寸 / 全高清）笔记本电脑', 2, 3905.00, 100, '202106240221522286.jpg', '银色，指纹传感器14-ce3010ng Intel UHD Grafik mit Fingerabdrucksensor 256GB SSD + 16GB Intel Optane', 1624462675, '2022-06-05 02:08:48');
INSERT INTO `goods` VALUES (51, '全新 2020 HP 15.6 英寸高清触摸屏笔记本电脑', 2, 6156.00, 100, '202106240222043515.jpg', '英特尔酷睿 i7-1065G7 8GB DDR4 RAM 512GB SSD HDMI 802.11b/g/n/ac Windows 10 银色 15-dy1771ms', 1624462715, '2022-06-05 02:08:48');
INSERT INTO `goods` VALUES (52, 'HP X360 2019 Gemcut 笔记本电脑', 2, 10781.00, 100, '202106240222123511.jpg', 'i7，16 GB RAM，512GB SSD，Windows 10，HDMI，USB C，触摸屏，B&O 扬声器，3 年 Mcafee 互联网*13TGEMCUT 1TB SSD | 16GB RAM | WINPRO', 1624462744, '2022-06-05 02:08:48');
INSERT INTO `goods` VALUES (53, 'HP 惠普 Envy 17-cg0278ng 白色笔记本电脑', 2, 10424.00, 100, '202106240222229847.jpg', '43.9厘米（17.3英寸）3840 x 2160 像素 英特尔® 酷睿TM i7 16 GB DDR4-SDRAM 1000 GB SSD NVIDIA GeForce MX330 Wi-Fi 6（802.11ax）Win 10 H', 1624462771, '2022-06-05 02:08:48');
INSERT INTO `goods` VALUES (54, 'HP 惠普 Envy 17-cg0004ng 银色笔记本电脑', 2, 8486.00, 100, '202106240222275923.jpg', '43.9厘米（17.3英寸）1920 x 1080 像素 英特尔®酷睿TM i7 16 GB DDR4-SDRAM 512 GB SSD NVIDIA GeForce MX330 Wi-Fi 6（802.11ax）Win 10 H', 1624462804, '2022-06-05 02:08:48');
INSERT INTO `goods` VALUES (55, 'HP 惠普 EliteBook x360', 2, 11222.00, 100, '202106240222331959.jpg', '1040 G5 Intel i7-8550U 35.6 厘米 14\" FHD BV UWVA AG 16GB 512GB/SSD UMA W10P', 1624462830, '2022-06-05 02:08:48');
INSERT INTO `goods` VALUES (56, 'HP 惠普 250 G7 (15.6 英寸 / HD) 商务笔记本电脑', 2, 2796.00, 100, '202106240222461649.jpg', '（英特尔奔腾 4417U，8 GB DDR4 内存，512 GB SDD，英特尔高清显卡，DVD刻录机，Windows 10 家庭版）银色', 1624462863, '2022-06-05 02:08:48');
INSERT INTO `goods` VALUES (57, 'HP 惠普 250 G7（15.6英寸 / FHD）商务笔记本电脑', 2, 3122.00, 100, '202106240222517102.jpg', '英特尔酷睿i38130U，8GB DDR4 内存，128GB SDD，1TB 硬盘，英特尔高清显卡，DVD刻录机，Windows 10家庭版）', 1624462884, '2022-06-05 02:08:48');
INSERT INTO `goods` VALUES (58, 'HP 惠普 14s-dq1014ns 14 英寸 FHD 笔记本电脑', 2, 3870.00, 100, '202106240222591404.jpg', '英特尔酷睿 i7-1065G7，8 GB 内存，512 GB 固态硬盘，集成显卡，无操作系统） 灰色 – 西班牙 QWERTY 键盘', 1624462909, '2022-06-05 02:08:48');
INSERT INTO `goods` VALUES (59, 'HP 惠普 Probook 470 G7 ( 17.3 英寸 / FHD ) 商务笔记本电脑', 2, 6552.00, 100, '202106240223077192.jpg', '英特尔酷睿 i7-10510U，16GB DDR4 内存，256GB 固态硬盘，1TB 硬盘，英特尔超高清显卡620，Windows 10 Pro）银色', 1624462933, '2022-06-05 02:08:48');
INSERT INTO `goods` VALUES (60, 'HP 惠普 Probook 470 G7 ( 17.3 英寸 / FHD ) 商务笔记本电脑', 2, 6093.00, 100, '202106240223132275.jpg', '英特尔i7-10510U , 8GB DDR4 内存 , 512GB 固态硬盘 , 1TB 硬盘 , 英特尔超高清显卡 620，Windows 10 Pro ) 银色', 1624462964, '2022-06-05 02:08:48');
INSERT INTO `goods` VALUES (61, '华为 HUAWEI nova 7 Pro', 1, 3699.00, 100, '202106240223263748.jpg', '3200万追焦双摄 50倍潜望式变焦四摄 5G SoC芯片 8GB+128GB 7号色全网通5G手机', 1624462985, '2022-06-05 02:08:48');
INSERT INTO `goods` VALUES (62, '华为 HUAWEI P40', 1, 4188.00, 100, '202106240223321566.jpg', '麒麟990 5G SoC芯片 5000万超感知徕卡三摄 30倍数字变焦 6GB+128GB亮黑色全网通5G手机', 1624463005, '2022-06-05 02:08:48');
INSERT INTO `goods` VALUES (63, '华为 HUAWEI P40 Pro', 1, 6488.00, 100, '202106240223387312.jpg', '麒麟990 5G SoC芯片 5000万超感知徕卡四摄 50倍数字变焦 8GB+256GB亮黑色全网通5G手机', 1624463035, '2022-06-05 02:08:48');
INSERT INTO `goods` VALUES (64, '华为 HUAWEI nova 7 SE 5G', 1, 2399.00, 100, '202106240223459010.jpg', '麒麟820 5G SoC芯片 6400万高清AI四摄 40W超级快充 8GB+128GB 幻夜黑全网通手机', 1624463053, '2022-06-05 02:08:48');
INSERT INTO `goods` VALUES (65, '华为 HUAWEI Mate 30 5G', 1, 4499.00, 100, '202106240223519093.jpg', '麒麟990 4000万超感光徕卡影像双超级快充8GB+128GB亮黑色5G全网通游戏手机', 1624463072, '2022-06-05 02:08:48');
INSERT INTO `goods` VALUES (66, '华为 HUAWEI Mate 30 Pro 5G', 1, 5899.00, 100, '202106240224046253.jpg', '麒麟990 OLED环幕屏双4000万徕卡电影四摄8GB+128GB亮黑色5G全网通游戏手机', 1624463091, '2022-06-05 02:08:48');
INSERT INTO `goods` VALUES (67, '小米10', 1, 4299.00, 100, '202106240224091632.jpg', '双模5G 骁龙865 1亿像素8K电影相机 对称式立体声 8GB+256GB 冰海蓝 拍照智能游戏手机', 1624463115, '2022-06-05 02:08:48');
INSERT INTO `goods` VALUES (68, 'Redmi K30 Pro 5G先锋', 1, 3399.00, 100, '202106240224156525.jpg', '骁龙865旗舰处理器 弹出式超光感全面屏 索尼6400万高清四摄 4700mAh长续航 33W闪充 8GB+128GB 天际蓝 游戏智能手机 小米 红米', 1624463139, '2022-06-05 02:08:48');
INSERT INTO `goods` VALUES (69, 'Redmi Note8', 1, 899.00, 100, '202106240224221141.jpg', '4800万全场景四摄 4000mAh长续航 高通骁龙665 18W快充 4GB+64GB 梦幻蓝 游戏手机 小米 红米', 1624463169, '2022-06-05 02:08:48');
INSERT INTO `goods` VALUES (70, '小米10青春版', 1, 2499.00, 100, '202106240224288681.jpg', '双模5G 骁龙765G 50倍潜望式变焦四摄 8GB+128GB 蓝莓薄荷游戏手机', 1624463198, '2022-06-05 02:08:48');
INSERT INTO `goods` VALUES (71, '小米10 Pro', 1, 4999.00, 100, '202106240224394400.jpg', '双模5G 骁龙865 1亿像素8K电影相机 50倍变焦 50W快充 8GB+256GB 珍珠白 拍照智能游戏手机', 1624463218, '2022-06-05 02:08:48');
INSERT INTO `goods` VALUES (72, 'Apple iPhone SE (A2298)', 1, 3899.00, 100, '202106240224452159.jpg', '128GB 黑色 移动联通电信4G手机', 1624463237, '2022-06-05 02:08:48');
INSERT INTO `goods` VALUES (73, 'Apple iPhone XR (A2108)', 1, 4299.00, 100, '202106240224529427.jpg', '64GB 黄色 移动联通电信4G手机 双卡双待', 1624463256, '2022-06-05 02:08:48');
INSERT INTO `goods` VALUES (74, 'Apple iPhone XS Max (A2104)', 1, 6599.00, 100, '202106240225067320.jpg', '64GB 银色 移动联通电信4G手机 双卡双待', 1624463275, '2022-06-05 02:08:48');
INSERT INTO `goods` VALUES (75, 'Apple iPhone 11 (A2223)', 1, 5499.00, 100, '202106240225133421.jpg', '64GB 紫色 移动联通电信4G手机 双卡双待', 1624463299, '2022-06-05 02:08:48');
INSERT INTO `goods` VALUES (76, 'Apple iPhone 11 Pro (A2217)', 1, 8699.00, 100, '202106240225319945.jpg', '64GB 金色 移动联通电信4G手机 双卡双待', 1624463319, '2022-06-05 02:08:48');
INSERT INTO `goods` VALUES (77, 'Apple iPhone 11 Pro Max (A2220)', 1, 9599.00, 100, '202106240225384157.jpg', '64GB 深空灰色 移动联通电信4G手机 双卡双待', 1624463338, '2022-06-05 02:08:48');
INSERT INTO `goods` VALUES (78, '一加 OnePlus 8', 1, 4599.00, 100, '202106240225503715.jpg', '5G旗舰 90Hz高清柔性屏 骁龙865 180g轻薄手感 12GB+256GB 黑镜 超清超广角拍照游戏手机', 1624463358, '2022-06-05 02:08:48');
INSERT INTO `goods` VALUES (79, '一加 OnePlus 8 Pro', 1, 5999.00, 100, '202106240225578612.jpg', '5G旗舰 2K+120Hz 柔性屏 30W无线闪充 骁龙865 12GB+256GB 青空 超清超广角拍照游戏手机', 1624463382, '2022-06-05 02:08:48');
INSERT INTO `goods` VALUES (80, '一加 OnePlus 7T', 1, 3199.00, 100, '202106240226034033.jpg', '90Hz流体屏 骁龙855Plus旗舰 4800万超广角三摄  8GB+256GB 冰际蓝 游戏手机', 1624463406, '2022-06-05 02:08:48');
INSERT INTO `goods` VALUES (81, 'vivo X30 Pro 5G', 1, 3698.00, 100, '202106240226192898.jpg', '秘银 8GB+128GB 双模5G 60倍变焦 50mm专业人像镜头 全网通智慧旗舰手机', 1624463423, '2022-06-05 02:08:48');
INSERT INTO `goods` VALUES (82, 'vivo S6 5G手机', 1, 2698.00, 100, '202106240226273838.jpg', '8GB+128GB 天鹅湖 前置3200万超清夜景自拍 4500mAh大电池 后置四摄 双模5G全网通手机', 1624463441, '2022-06-05 02:08:48');
INSERT INTO `goods` VALUES (83, 'vivo NEX 3S', 1, 5298.00, 100, '202106240226364490.jpg', '5G 12GB+256GB 深空流光 骁龙865 无界瀑布屏 6400万超高像素 双模5G全网通手机', 1624463465, '2022-06-05 02:08:48');
INSERT INTO `goods` VALUES (84, 'vivo iQOO Neo3 5G', 1, 2998.00, 199, '202106240226433973.jpg', '8GB+128GB 夜幕黑 高通骁龙865 144Hz竞速屏 立体双扬 44W闪充 双模5G全网通手机', 1624463482, '2022-06-05 02:08:48');
INSERT INTO `goods` VALUES (85, 'vivo iQOO 3 5G', 1, 3998.00, 100, '202106240226497422.jpg', '12GB+128GB 驭影黑 高通骁龙865 55W超快闪充 专业电竞游戏体验手机 双模5G全网通手机', 1624463499, '2022-06-05 02:08:48');
INSERT INTO `goods` VALUES (86, 'OPPO Ace2 8+128', 1, 3999.00, 100, '202106240227079285.jpg', '月岩灰双模5G 185g超薄机身 65W超级闪充 40W无线闪充 90Hz电竞屏高通骁龙865游戏智能手机', 1624463523, '2022-06-05 02:08:48');
INSERT INTO `goods` VALUES (87, 'OPPO Find X2', 1, 5499.00, 100, '202106240227139287.jpg', '超感官旗舰 3K分辨率 120Hz超感屏 多焦段影像系统 骁龙865 65w闪充 8GB+128GB碧波 双模5G手机', 1624463543, '2022-06-05 02:08:48');
INSERT INTO `goods` VALUES (88, 'OPPO Reno3 Pro', 1, 3699.00, 100, '202106240227185213.jpg', '双模5G 视频双防抖 90HZ高感曲面屏 7.7mm轻薄机身 8GB+128GB 日出印象 拍照游戏视频手机', 1624463563, '2022-06-05 02:08:48');
INSERT INTO `goods` VALUES (89, 'OPPO Reno3', 1, 2999.00, 100, '202106240227245534.jpg', '双模5G 6400万超清四摄 视频双防抖 7.96mm纤薄机身 8GB+128GB 蓝色星夜全网通拍照游戏视频手机', 1624463581, '2022-06-05 02:08:48');
INSERT INTO `goods` VALUES (90, 'OPPO A91', 1, 1799.00, 100, '202106240227295931.jpg', '8GB+128GB 暗夜星辰 4800万超清四摄 VOOC闪充3.0 光感屏幕指纹 全网通4G 全面屏拍照游戏智能手机', 1624463600, '2022-06-05 02:08:48');
INSERT INTO `goods` VALUES (91, 'OPPO Reno2 Z', 1, 2299.00, 100, '202106240227372174.jpg', '8G+128G 深海夜光 4800万夜拍四摄 VOOC闪充 炫彩升降 全网通4G 全面屏拍照游戏智能手机', 1624463622, '2022-06-05 02:08:48');
INSERT INTO `goods` VALUES (92, 'IPhone 13', 1, 67999.00, 999, '202205210612046548.jpg', '2021年最新一代IPhone，高颜值高续航！', 1653113524, '2022-06-05 02:08:48');

-- ----------------------------
-- Table structure for tb_order
-- ----------------------------
DROP TABLE IF EXISTS `tb_order`;
CREATE TABLE `tb_order`  (
  `id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(0) NULL DEFAULT NULL,
  `goods_id` int(0) NULL DEFAULT NULL,
  `order_sn` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单号',
  `order_money` float(10, 2) NULL DEFAULT NULL COMMENT '订单金额',
  `consignee` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收货人',
  `phone` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收货地址',
  `createtime` datetime(0) NULL DEFAULT NULL,
  `updatetime` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_order
-- ----------------------------
INSERT INTO `tb_order` VALUES (8, 1, 1, '2021062428096', 6099.00, '2', '23', '22', '2021-06-24 12:23:34', NULL);
INSERT INTO `tb_order` VALUES (7, 1, 2, '2021062445862', 5999.00, '2', '2', '2', '2021-06-24 11:53:04', NULL);
INSERT INTO `tb_order` VALUES (9, 1, 92, '2022060508909', 67999.00, '赖晓杰', '18320562704', '广东省', '2022-06-05 04:25:52', NULL);
INSERT INTO `tb_order` VALUES (10, 1, 16, '2022060768515', 8299.00, '123', '123', '123', '2022-06-07 08:46:16', NULL);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createtime` datetime(0) NULL DEFAULT NULL,
  `updatetime` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', '96e79218965eb72c92a549dd5a330112', '2022-06-05 10:54:47', NULL);
INSERT INTO `user` VALUES (7, 'xx', '202cb962ac59075b964b07152d234b70', '2022-06-03 09:56:08', NULL);
INSERT INTO `user` VALUES (3, 'xieweijie', '96e79218965eb72c92a549dd5a330112', '2022-06-08 08:56:00', '2022-06-04 04:22:06');
INSERT INTO `user` VALUES (4, 'xuanyuan', '96e79218965eb72c92a549dd5a330112', '2022-06-09 00:35:18', NULL);
INSERT INTO `user` VALUES (20, 's', '123', '2022-06-05 01:01:11', NULL);
INSERT INTO `user` VALUES (19, 'ss', '03c7c0ace395d80182db07ae2c30f034', '2022-06-04 16:44:17', NULL);
INSERT INTO `user` VALUES (18, 'aas', '03c7c0ace395d80182db07ae2c30f034', '2022-06-04 16:44:10', NULL);
INSERT INTO `user` VALUES (17, 'aa', '0cc175b9c0f1b6a831c399e269772661', '2022-06-04 16:43:58', NULL);
INSERT INTO `user` VALUES (16, 'd', '8277e0910d750195b448797616e091ad', '2022-06-04 16:10:58', NULL);
INSERT INTO `user` VALUES (14, 'my', '202cb962ac59075b964b07152d234b70', '2022-06-04 15:55:51', NULL);
INSERT INTO `user` VALUES (15, 'a', '0cc175b9c0f1b6a831c399e269772661', '2022-06-04 15:59:09', NULL);

SET FOREIGN_KEY_CHECKS = 1;
