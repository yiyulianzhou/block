/*
Navicat MySQL Data Transfer

Source Server         : 本地wamp
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : block

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2018-03-29 18:52:46
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for block_company
-- ----------------------------
DROP TABLE IF EXISTS `block_company`;
CREATE TABLE `block_company` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键、自增',
  `name` varchar(90) NOT NULL COMMENT '公司名称',
  `img` varchar(255) NOT NULL COMMENT '配图',
  `basic` text NOT NULL COMMENT '基本信息',
  `status` tinyint(3) NOT NULL DEFAULT '1' COMMENT '状态：1：运行中，0:关闭',
  `data_source` varchar(255) NOT NULL COMMENT '数据来源',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of block_company
-- ----------------------------

-- ----------------------------
-- Table structure for block_fangchan
-- ----------------------------
DROP TABLE IF EXISTS `block_fangchan`;
CREATE TABLE `block_fangchan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键自增',
  `name` varchar(255) NOT NULL,
  `domain` varchar(255) NOT NULL,
  `category` varchar(90) NOT NULL,
  `url` varchar(255) NOT NULL,
  `fcity` varchar(255) NOT NULL,
  `scity` varchar(255) NOT NULL,
  `tcity` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `mianji` varchar(255) NOT NULL,
  `tingshi` varchar(255) NOT NULL,
  `road` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of block_fangchan
-- ----------------------------
INSERT INTO `block_fangchan` VALUES ('33', '58同城', '58.com', '二手房', 'http://wjq.58.com/ershoufang', '新疆', '五家渠', '', '', '', '', '');
INSERT INTO `block_fangchan` VALUES ('34', '58同城', '58.com', '二手房', 'http://tmsk.58.com/ershoufang', '新疆', '图木舒克', '', '', '', '', '');
INSERT INTO `block_fangchan` VALUES ('35', '58同城', '58.com', '二手房', 'http://xj.58.com/ershoufang', '新疆', '乌鲁木齐', '', '', '', '', '');
INSERT INTO `block_fangchan` VALUES ('36', '58同城', '58.com', '二手房', 'http://changji.58.com/ershoufang', '新疆', '昌吉', '', '', '', '', '');
INSERT INTO `block_fangchan` VALUES ('37', '58同城', '58.com', '二手房', 'http://bygl.58.com/ershoufang', '新疆', '巴音郭楞', '', '', '', '', '');
INSERT INTO `block_fangchan` VALUES ('38', '58同城', '58.com', '二手房', 'http://yili.58.com/ershoufang', '新疆', '伊犁', '', '', '', '', '');
INSERT INTO `block_fangchan` VALUES ('39', '58同城', '58.com', '二手房', 'http://aks.58.com/ershoufang', '新疆', '阿克苏', '', '', '', '', '');
INSERT INTO `block_fangchan` VALUES ('40', '58同城', '58.com', '二手房', 'http://ks.58.com/ershoufang', '新疆', '喀什', '', '', '', '', '');
INSERT INTO `block_fangchan` VALUES ('41', '58同城', '58.com', '二手房', 'http://hami.58.com/ershoufang', '新疆', '哈密', '', '', '', '', '');
INSERT INTO `block_fangchan` VALUES ('42', '58同城', '58.com', '二手房', 'http://klmy.58.com/ershoufang', '新疆', '克拉玛依', '', '', '', '', '');
INSERT INTO `block_fangchan` VALUES ('43', '58同城', '58.com', '二手房', 'http://betl.58.com/ershoufang', '新疆', '博尔塔拉', '', '', '', '', '');
INSERT INTO `block_fangchan` VALUES ('44', '58同城', '58.com', '二手房', 'http://tlf.58.com/ershoufang', '新疆', '吐鲁番', '', '', '', '', '');
INSERT INTO `block_fangchan` VALUES ('45', '58同城', '58.com', '二手房', 'http://ht.58.com/ershoufang', '新疆', '和田', '', '', '', '', '');
INSERT INTO `block_fangchan` VALUES ('46', '58同城', '58.com', '二手房', 'http://shz.58.com/ershoufang', '新疆', '石河子', '', '', '', '', '');
INSERT INTO `block_fangchan` VALUES ('47', '58同城', '58.com', '二手房', 'http://kzls.58.com/ershoufang', '新疆', '克孜勒苏', '', '', '', '', '');
INSERT INTO `block_fangchan` VALUES ('48', '58同城', '58.com', '二手房', 'http://ale.58.com/ershoufang', '新疆', '阿拉尔', '', '', '', '', '');

-- ----------------------------
-- Table structure for block_info
-- ----------------------------
DROP TABLE IF EXISTS `block_info`;
CREATE TABLE `block_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键自增',
  `title` varchar(90) NOT NULL COMMENT '快讯标题',
  `author` varchar(90) NOT NULL COMMENT '作者',
  `post_time` int(11) NOT NULL COMMENT '发布时间',
  `click_num` int(11) NOT NULL COMMENT '点击量',
  `body` text NOT NULL COMMENT '内容主体',
  `data_source` varchar(255) NOT NULL COMMENT '数据来源',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of block_info
-- ----------------------------
INSERT INTO `block_info` VALUES ('1', '2', '3', '4', '5', '6', '7');
INSERT INTO `block_info` VALUES ('2', '3', '4', '5', '6', '7', '8');

-- ----------------------------
-- Table structure for block_news
-- ----------------------------
DROP TABLE IF EXISTS `block_news`;
CREATE TABLE `block_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键自增',
  `type` tinyint(3) NOT NULL COMMENT '分类 1：区块链，2：比特币，3：其他新闻',
  `title` varchar(90) NOT NULL COMMENT '文章标题',
  `small_img` varchar(255) NOT NULL COMMENT '文章缩略图',
  `post_time` varchar(255) NOT NULL COMMENT '发表时间',
  `amount` int(11) NOT NULL COMMENT '文章点击量、阅读量',
  `contents` text NOT NULL COMMENT '内容主体',
  `data_source` varchar(255) NOT NULL COMMENT '数据来源url',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  `avatars` varchar(255) NOT NULL COMMENT '作者头像',
  `brief` text NOT NULL COMMENT '新闻简要内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of block_news
-- ----------------------------

-- ----------------------------
-- Table structure for block_quotation
-- ----------------------------
DROP TABLE IF EXISTS `block_quotation`;
CREATE TABLE `block_quotation` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键自增',
  `symbolId` varchar(90) NOT NULL COMMENT '币种名称',
  `last` decimal(10,2) NOT NULL COMMENT '币种分类',
  `hight` decimal(10,2) NOT NULL COMMENT '最新成交价格',
  `low` decimal(10,2) NOT NULL COMMENT '24H变化',
  `degree` int(11) NOT NULL COMMENT '24H最高',
  `usd` decimal(10,2) NOT NULL COMMENT '24H最低',
  `vol` int(11) NOT NULL COMMENT '成交量',
  `exchange_name` varchar(90) NOT NULL COMMENT '交易平台',
  `exchange_type` varchar(255) NOT NULL COMMENT '交易类型',
  `domain` varchar(90) NOT NULL DEFAULT '' COMMENT '创建时间',
  `ticker` varchar(255) DEFAULT NULL,
  `type` tinyint(3) NOT NULL COMMENT '币种',
  `exchange_icon` varchar(255) NOT NULL DEFAULT '' COMMENT '交易所图标',
  `coin_icon` varchar(255) NOT NULL DEFAULT '' COMMENT '币种图标',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=392 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of block_quotation
-- ----------------------------
INSERT INTO `block_quotation` VALUES ('1', 'btcbitasiaex', '47957.70', '52106.60', '46986.00', '-5', '7623.38', '0', 'BitAsiaEx', 'bitasiaex', 'http://www.bitasiaex.com/', '', '1', 'bitasiaex.png', 'btc.png');
INSERT INTO `block_quotation` VALUES ('2', 'btchuobipro', '46957.17', '50956.02', '46892.50', '-6', '7464.34', '3', 'Huobi', 'huobipro', 'https://www.huobipro.com/zh-cn/', 'HUOBIPRO:BTCUSDT', '1', 'huobi.png', 'btc.png');
INSERT INTO `block_quotation` VALUES ('3', 'btcweex', '48811.84', '53020.06', '48437.91', '-5', '7759.16', '0', 'weex', 'weex', 'https://www.weex.com/', '', '1', 'weex.png', 'btc.png');
INSERT INTO `block_quotation` VALUES ('4', 'btcbithumb', '48742.13', '52395.28', '48600.49', '-4', '7748.08', '1', 'Bithumb', 'bithumb', 'https://www.bithumb.com/', 'BITHUMB:BTCKRW', '1', 'bithumb.png', 'btc.png');
INSERT INTO `block_quotation` VALUES ('5', 'btccoinbase', '46945.72', '50880.53', '46866.96', '-5', '7462.52', '1', 'GDAX', 'Coinbase', 'https://www.coinbase.com/', 'GDAX:BTCEUR', '1', 'gdax.png', 'btc.png');
INSERT INTO `block_quotation` VALUES ('6', 'btcbitstamp', '46916.72', '50956.02', '46748.25', '-5', '7457.91', '1', 'Bitstamp', 'Bitstamp', 'https://www.bitstamp.net/', '', '1', 'bitstamp.png', 'btc.png');
INSERT INTO `block_quotation` VALUES ('7', 'btcokcoincom', '51299.13', '56610.82', '51275.60', '-5', '8154.54', '0', 'OKCoin', 'OKCoincom', 'https://www.okcoin.com/', '', '1', 'okcoin.png', 'btc.png');
INSERT INTO `block_quotation` VALUES ('8', 'btccryptopia', '46741.14', '51109.60', '46722.27', '-6', '7430.00', '0', 'Cryptopia', 'Cryptopia', 'https://www.cryptopia.co.nz', '', '1', 'cryptopia.png', 'btc.png');
INSERT INTO `block_quotation` VALUES ('9', 'btckorbit', '48863.12', '52324.46', '48618.20', '-4', '7767.31', '0', 'Korbit', 'korbit', 'https://www.korbit.co.kr/', '', '1', 'korbit.png', 'btc.png');
INSERT INTO `block_quotation` VALUES ('10', 'btcbitfinex', '46929.87', '51083.10', '46671.94', '-6', '7460.00', '4', 'Bitfinex', 'Bitfinex', 'https://www.bitfinex.com/', 'BITFINEX:BTCUSD', '1', 'bitfinex.png', 'btc.png');
INSERT INTO `block_quotation` VALUES ('11', 'btcgemini', '46966.35', '50295.48', '46867.02', '-5', '7465.80', '1', 'Gemini', 'gemini', 'https://gemini.com/', '', '1', 'gemini.png', 'btc.png');
INSERT INTO `block_quotation` VALUES ('12', 'btccoincheck', '47303.81', '50948.39', '47231.95', '-5', '7519.44', '1', 'Coincheck', 'coincheck', 'https://coincheck.com/', '', '1', 'coincheck.png', 'btc.png');
INSERT INTO `block_quotation` VALUES ('13', 'btcyobit', '50048.88', '53397.69', '50018.68', '-5', '7955.80', '0', 'YObit', 'yobit', 'https://yobit.net', '', '1', 'yobit.png', 'btc.png');
INSERT INTO `block_quotation` VALUES ('14', 'btcbtcbox', '47427.71', '50942.52', '47353.78', '-5', '7539.14', '1', 'Btcbox', 'btcbox', 'https://btcbox.com/', '', '1', 'btcbox.png', 'btc.png');
INSERT INTO `block_quotation` VALUES ('15', 'btccex', '46921.38', '50956.02', '46866.96', '-5', '7458.65', '3', 'CEX', 'cex', 'https://www.cex.com/', '', '1', 'cex.png', 'btc.png');
INSERT INTO `block_quotation` VALUES ('16', 'btcbcex', '48942.95', '55096.04', '48935.90', '-2', '7780.00', '0', 'BCEX', 'bcex', 'https://www.bcex.ca', '', '1', 'bcex.png', 'btc.png');
INSERT INTO `block_quotation` VALUES ('17', 'btcexx', '47343.43', '50897.83', '47343.37', '-5', '7525.74', '0', 'EXX', 'exx', 'https://www.exx.com', '', '1', 'exx.png', 'btc.png');
INSERT INTO `block_quotation` VALUES ('18', 'btckraken', '46934.27', '50169.66', '46867.59', '-5', '7460.70', '1', 'Kraken', 'kraken', 'https://www.kraken.com/', 'KRAKEN:BTCEUR', '1', 'kraken.png', 'btc.png');
INSERT INTO `block_quotation` VALUES ('19', 'btcbitflyer', '47422.14', '50824.84', '47349.62', '-5', '7538.25', '2', 'Bitflyer', 'bitflyer', 'https://bitflyer.jp/', '', '1', 'bitflyer.png', 'btc.png');
INSERT INTO `block_quotation` VALUES ('20', 'btccoinone', '48771.64', '52330.37', '48689.02', '-4', '7752.77', '0', 'Coinone', 'Coinone', 'https://coinone.co.kr/', '', '1', 'coinone.png', 'btc.png');
INSERT INTO `block_quotation` VALUES ('21', 'btcbittrex', '46970.13', '50943.44', '46807.11', '-5', '7466.40', '0', 'Bittrex', 'Bittrex', 'https://bittrex.com/', 'BITTREX:BTCUSDT', '1', 'bittrex.png', 'btc.png');
INSERT INTO `block_quotation` VALUES ('22', 'btcgateio', '46941.25', '50915.45', '46913.26', '-5', '7461.81', '0', 'Gateio', 'Gateio', 'https://gateio.io/', '', '1', 'gateio.png', 'btc.png');
INSERT INTO `block_quotation` VALUES ('23', 'btczb', '47530.52', '50947.03', '47106.01', '-4', '7555.48', '0', 'ZB', 'ZB', 'https://www.zb.com/', '', '1', 'zb.png', 'btc.png');
INSERT INTO `block_quotation` VALUES ('24', 'btchitbtc', '47816.82', '51638.33', '47810.65', '-6', '7600.99', '1', 'HitBTC', 'HitBTC', 'https://hitbtc.com/zh_CN', '', '1', 'hitbtc.png', 'btc.png');
INSERT INTO `block_quotation` VALUES ('25', 'btcbitbank', '47471.57', '50973.55', '47353.78', '-5', '7546.11', '0', 'bitbank', 'bitbank', 'https://bitbank.cc/', '', '1', 'bitbank.png', 'btc.png');
INSERT INTO `block_quotation` VALUES ('26', 'btcacx', '47685.24', '50921.99', '47420.12', '-4', '7580.07', '0', 'ACX', 'ACX', 'https://acx.io/', '', '1', 'acx.png', 'btc.png');
INSERT INTO `block_quotation` VALUES ('27', 'btcbit-z', '48439.68', '53755.46', '47810.59', '-1', '7700.00', '0', 'Bit-Z', 'Bit-Z', 'https://www.bit-z.com/', '', '1', 'bit-z.png', 'btc.png');
INSERT INTO `block_quotation` VALUES ('28', 'btccoinnest', '37770.87', '42716.50', '36921.03', '-10', '6004.08', '0', 'Coinnest', 'coinnest', 'https://www.coinnest.co.kr/', '', '1', 'coinnest.png', 'btc.png');
INSERT INTO `block_quotation` VALUES ('29', 'btclakebtc', '51511.88', '54746.21', '51374.11', '-3', '8188.36', '0', 'LakeBTC', 'LakeBTC', 'https://www.lakebtc.com/', '', '1', 'lakebtc.png', 'btc.png');
INSERT INTO `block_quotation` VALUES ('30', 'btcbinance', '46889.23', '51012.64', '46753.72', '-6', '7453.54', '3', 'Binance', 'Binance', 'https://www.binance.com/', 'BINANCE:BTCUSDT', '1', 'binance.png', 'btc.png');
INSERT INTO `block_quotation` VALUES ('31', 'btcliqui', '47056.88', '51020.43', '46871.88', '-5', '7480.19', '0', 'Liqui', 'liqui', 'https://liqui.io/', '', '1', 'liqui.png', 'btc.png');
INSERT INTO `block_quotation` VALUES ('32', 'btcexmo', '48258.64', '53157.80', '48258.15', '-7', '7671.22', '0', 'EXMO', 'exmo', 'https://exmo.com', '', '1', 'exmo.png', 'btc.png');
INSERT INTO `block_quotation` VALUES ('33', 'btctidex', '47087.08', '50896.45', '47226.29', '-5', '7484.99', '0', 'Tidex', 'Tidex', 'https://tidex.com/', '', '1', 'tidex.png', 'btc.png');
INSERT INTO `block_quotation` VALUES ('34', 'btcbitbay', '47816.88', '50787.87', '47816.88', '-4', '7601.00', '0', 'BitBay', 'bitbay', 'https://bitbay.net', '', '1', 'bitbay.png', 'btc.png');
INSERT INTO `block_quotation` VALUES ('35', 'btccointiger', '43314.58', '46816.95', '43260.30', '-5', '6885.31', '0', 'CoinTiger', 'cointiger', 'https://www.cointiger.com', '', '1', 'cointiger.png', 'btc.png');
INSERT INTO `block_quotation` VALUES ('36', 'btczaif', '47494.41', '50903.83', '47472.46', '-5', '7549.74', '1', 'Zaif', 'zaif', 'https://zaif.jp/', '', '1', 'zaif.png', 'btc.png');
INSERT INTO `block_quotation` VALUES ('37', 'btckex', '60000.00', '60000.00', '51100.00', '12', '9537.64', '0', 'KEX', 'kex', 'https://www.kex.com', '', '1', 'kex.png', 'btc.png');
INSERT INTO `block_quotation` VALUES ('38', 'btcpoloniex', '46979.39', '50949.73', '46868.62', '-5', '7467.87', '0', 'Poloniex', 'Poloniex', 'https://www.poloniex.com', '', '1', 'poloniex.png', 'btc.png');
INSERT INTO `block_quotation` VALUES ('39', 'btcbibox', '46936.22', '52214.19', '46936.22', '-5', '7461.01', '0', 'Bibox', 'bibox', 'https://www.bibox.com/', '', '1', 'bibox.png', 'btc.png');
INSERT INTO `block_quotation` VALUES ('40', 'ethhuobipro', '2559.70', '2705.46', '2556.13', '-4', '406.89', '4', 'Huobi', 'huobipro', 'https://www.huobipro.com/zh-cn/', 'HUOBIPRO:ETHBTC', '2', 'huobi.png', 'eth.png');
INSERT INTO `block_quotation` VALUES ('41', 'ethweex', '2676.13', '3047.99', '2669.78', '-8', '425.40', '1', 'weex', 'weex', 'https://www.weex.com/', '', '2', 'weex.png', 'eth.png');
INSERT INTO `block_quotation` VALUES ('42', 'ethbithumb', '2661.67', '3009.87', '2655.76', '-8', '423.10', '7', 'Bithumb', 'bithumb', 'https://www.bithumb.com/', 'BITHUMB:ETHKRW', '2', 'bithumb.png', 'eth.png');
INSERT INTO `block_quotation` VALUES ('43', 'ethokex', '2561.16', '2709.20', '2553.54', '-4', '407.12', '16', 'OKEX', 'OKEX', 'https://www.okex.com/', 'OKEX:ETHBTC', '2', 'okex.png', 'eth.png');
INSERT INTO `block_quotation` VALUES ('44', 'ethokcoincom', '2793.14', '3334.16', '2760.62', '-11', '444.00', '0', 'OKCoin', 'OKCoincom', 'https://www.okcoin.com/', '', '2', 'okcoin.png', 'eth.png');
INSERT INTO `block_quotation` VALUES ('45', 'ethcryptopia', '2559.63', '2719.63', '2559.63', '-4', '406.88', '0', 'Cryptopia', 'Cryptopia', 'https://www.cryptopia.co.nz', '', '2', 'cryptopia.png', 'eth.png');
INSERT INTO `block_quotation` VALUES ('46', 'ethyobit', '2575.16', '2705.84', '2559.20', '-3', '409.35', '1', 'YObit', 'yobit', 'https://yobit.net', '', '2', 'yobit.png', 'eth.png');
INSERT INTO `block_quotation` VALUES ('47', 'ethliqui', '2568.68', '2703.81', '2562.26', '-4', '408.32', '0', 'Liqui', 'liqui', 'https://liqui.io/', '', '2', 'liqui.png', 'eth.png');
INSERT INTO `block_quotation` VALUES ('48', 'ethbitstamp', '2568.75', '2930.60', '2560.57', '-8', '408.33', '3', 'Bitstamp', 'Bitstamp', 'https://www.bitstamp.net/', '', '2', 'bitstamp.png', 'eth.png');
INSERT INTO `block_quotation` VALUES ('49', 'ethgemini', '2563.78', '2666.09', '2559.55', '-4', '407.54', '0', 'Gemini', 'gemini', 'https://gemini.com/', '', '2', 'gemini.png', 'eth.png');
INSERT INTO `block_quotation` VALUES ('50', 'ethbcex', '2581.14', '3097.37', '2501.83', '-8', '410.30', '0', 'BCEX', 'bcex', 'https://www.bcex.ca', '', '2', 'bcex.png', 'eth.png');
INSERT INTO `block_quotation` VALUES ('51', 'ethkorbit', '2667.86', '3033.18', '2665.21', '-8', '424.09', '1', 'Korbit', 'korbit', 'https://www.korbit.co.kr/', '', '2', 'korbit.png', 'eth.png');
INSERT INTO `block_quotation` VALUES ('52', 'ethbitfinex', '2565.29', '2929.15', '2560.38', '-9', '407.78', '23', 'Bitfinex', 'Bitfinex', 'https://www.bitfinex.com/', 'BITFINEX:ETHBTC', '2', 'bitfinex.png', 'eth.png');
INSERT INTO `block_quotation` VALUES ('53', 'ethcoinbase', '2561.01', '2924.56', '2556.61', '-9', '407.10', '12', 'GDAX', 'Coinbase', 'https://www.coinbase.com/', 'GDAX:ETHBTC', '2', 'gdax.png', 'eth.png');
INSERT INTO `block_quotation` VALUES ('54', 'ethexx', '2573.59', '2711.98', '2571.57', '-4', '409.10', '4', 'EXX', 'exx', 'https://www.exx.com', '', '2', 'exx.png', 'eth.png');
INSERT INTO `block_quotation` VALUES ('55', 'ethbitasiaex', '2604.90', '3024.00', '2603.70', '-9', '414.08', '0', 'BitAsiaEx', 'bitasiaex', 'http://www.bitasiaex.com/', '', '2', 'bitasiaex.png', 'eth.png');
INSERT INTO `block_quotation` VALUES ('56', 'ethkraken', '2559.75', '2823.53', '2556.80', '-9', '406.90', '6', 'Kraken', 'kraken', 'https://www.kraken.com/', 'KRAKEN:ETHBTC', '2', 'kraken.png', 'eth.png');
INSERT INTO `block_quotation` VALUES ('57', 'ethbitflyer', '2571.76', '2676.41', '2571.76', '-4', '408.81', '0', 'Bitflyer', 'bitflyer', 'https://bitflyer.jp/', '', '2', 'bitflyer.png', 'eth.png');
INSERT INTO `block_quotation` VALUES ('58', 'ethcoinone', '2665.21', '3017.54', '2665.21', '-8', '423.66', '1', 'Coinone', 'Coinone', 'https://coinone.co.kr/', '', '2', 'coinone.png', 'eth.png');
INSERT INTO `block_quotation` VALUES ('59', 'ethzb', '2568.81', '2925.19', '2565.86', '-9', '408.34', '2', 'ZB', 'ZB', 'https://www.zb.com/', '', '2', 'zb.png', 'eth.png');
INSERT INTO `block_quotation` VALUES ('60', 'ethgateio', '2581.71', '2925.25', '2574.85', '-8', '410.39', '2', 'Gateio', 'Gateio', 'https://gateio.io/', '', '2', 'gateio.png', 'eth.png');
INSERT INTO `block_quotation` VALUES ('61', 'ethcex', '2560.38', '2928.46', '2556.73', '-9', '407.00', '18', 'CEX', 'cex', 'https://www.cex.com/', '', '2', 'cex.png', 'eth.png');
INSERT INTO `block_quotation` VALUES ('62', 'ethcoolcoin', '2448.85', '2909.65', '2355.88', '4', '389.27', '1', 'CoolCoin', 'coolcoin', 'https://www.coolcoin.com', '', '2', 'coolcoin.png', 'eth.png');
INSERT INTO `block_quotation` VALUES ('63', 'ethbittrex', '2560.38', '2922.11', '2557.55', '-9', '407.00', '1', 'Bittrex', 'Bittrex', 'https://bittrex.com/', 'BITTREX:ETHBTC', '2', 'bittrex.png', 'eth.png');
INSERT INTO `block_quotation` VALUES ('64', 'ethcointiger', '2561.43', '2700.49', '2559.49', '-4', '407.17', '1', 'CoinTiger', 'cointiger', 'https://www.cointiger.com', '', '2', 'cointiger.png', 'eth.png');
INSERT INTO `block_quotation` VALUES ('65', 'ethallcoin', '2587.33', '2834.89', '2549.35', '-2', '411.28', '0', 'Allcoin', 'Allcoin', 'https://allcoin.com/', '', '2', 'allcoin.png', 'eth.png');
INSERT INTO `block_quotation` VALUES ('66', 'ethbitbank', '2586.97', '2814.85', '2534.21', '-3', '411.23', '0', 'bitbank', 'bitbank', 'https://bitbank.cc/', '', '2', 'bitbank.png', 'eth.png');
INSERT INTO `block_quotation` VALUES ('67', 'ethacx', '2620.69', '2901.14', '2620.69', '-8', '416.59', '0', 'ACX', 'ACX', 'https://acx.io/', '', '2', 'acx.png', 'eth.png');
INSERT INTO `block_quotation` VALUES ('68', 'ethlbank', '2571.88', '2753.19', '2471.22', '-4', '408.83', '1', 'LBANK', 'lbank', 'http://www.lbank.info/', '', '2', 'lbank.png', 'eth.png');
INSERT INTO `block_quotation` VALUES ('69', 'ethcoinnest', '2171.83', '2732.49', '2071.50', '-9', '345.23', '0', 'Coinnest', 'coinnest', 'https://www.coinnest.co.kr/', '', '2', 'coinnest.png', 'eth.png');
INSERT INTO `block_quotation` VALUES ('70', 'ethhitbtc', '2613.67', '2971.05', '2610.96', '-9', '415.47', '1', 'HitBTC', 'HitBTC', 'https://hitbtc.com/zh_CN', '', '2', 'hitbtc.png', 'eth.png');
INSERT INTO `block_quotation` VALUES ('71', 'ethbit-z', '2642.42', '3271.19', '2642.42', '-3', '420.04', '0', 'Bit-Z', 'Bit-Z', 'https://www.bit-z.com/', '', '2', 'bit-z.png', 'eth.png');
INSERT INTO `block_quotation` VALUES ('72', 'ethbinance', '2561.96', '2931.54', '2555.41', '-9', '407.25', '11', 'Binance', 'Binance', 'https://www.binance.com/', 'BINANCE:ETHBTC', '2', 'binance.png', 'eth.png');
INSERT INTO `block_quotation` VALUES ('73', 'ethcoinegg', '2574.53', '2716.68', '2536.93', '-3', '409.25', '3', 'CoinEgg', 'CoinEgg', 'https://www.coinegg.com', '', '2', 'coinegg.png', 'eth.png');
INSERT INTO `block_quotation` VALUES ('74', 'ethtidex', '2566.79', '2704.96', '2560.07', '-4', '408.02', '1', 'Tidex', 'Tidex', 'https://tidex.com/', '', '2', 'tidex.png', 'eth.png');
INSERT INTO `block_quotation` VALUES ('75', 'ethbitbay', '2705.07', '2956.71', '2705.07', '-8', '430.00', '0', 'BitBay', 'bitbay', 'https://bitbay.net', '', '2', 'bitbay.png', 'eth.png');
INSERT INTO `block_quotation` VALUES ('76', 'ethkex', '3351.00', '3669.24', '3351.00', '-4', '532.68', '0', 'KEX', 'kex', 'https://www.kex.com', '', '2', 'kex.png', 'eth.png');
INSERT INTO `block_quotation` VALUES ('77', 'ethexmo', '2563.45', '2698.47', '2560.53', '-4', '407.49', '1', 'EXMO', 'exmo', 'https://exmo.com', '', '2', 'exmo.png', 'eth.png');
INSERT INTO `block_quotation` VALUES ('78', 'ethzaif', '2634.72', '2952.79', '2610.99', '-8', '418.82', '1', 'Zaif', 'zaif', 'https://zaif.jp/', '', '2', 'zaif.png', 'eth.png');
INSERT INTO `block_quotation` VALUES ('79', 'ethaex', '2576.45', '2703.16', '2538.91', '-3', '409.55', '0', 'AEX', 'aex', 'https://www.aex.com/', '', '2', 'aex.png', 'eth.png');
INSERT INTO `block_quotation` VALUES ('80', 'ethpoloniex', '2558.15', '2702.83', '2557.68', '-4', '406.64', '2', 'Poloniex', 'Poloniex', 'https://www.poloniex.com', '', '2', 'poloniex.png', 'eth.png');
INSERT INTO `block_quotation` VALUES ('81', 'ethbibox', '2573.82', '4028.38', '2568.46', '-3', '409.14', '4', 'Bibox', 'bibox', 'https://www.bibox.com/', '', '2', 'bibox.png', 'eth.png');
INSERT INTO `block_quotation` VALUES ('82', 'bcdhuobipro', '30.60', '31.26', '29.57', '0', '4.86', '0', 'Huobi', 'huobipro', 'https://www.huobipro.com/zh-cn/', 'HUOBIPRO:BCDBTC', '3', 'huobi.png', 'bcd.png');
INSERT INTO `block_quotation` VALUES ('83', 'bcdokex', '15.07', '15.16', '14.51', '4', '2.40', '15', 'OKEX', 'OKEX', 'https://www.okex.com/', 'OKEX:BCDBCH', '3', 'okex.png', 'bcd.png');
INSERT INTO `block_quotation` VALUES ('84', 'bcdbinance', '137.13', '140.74', '137.04', '-1', '21.80', '2', 'Binance', 'Binance', 'https://www.binance.com/', 'BINANCE:BCDBTC', '3', 'binance.png', 'bcd.png');
INSERT INTO `block_quotation` VALUES ('85', 'bcdgateio', '14.83', '15.02', '14.60', '-1', '2.36', '2', 'Gateio', 'Gateio', 'https://gateio.io/', '', '3', 'gateio.png', 'bcd.png');
INSERT INTO `block_quotation` VALUES ('86', 'bcdyobit', '51.13', '51.14', '44.82', '2', '8.13', '0', 'YObit', 'yobit', 'https://yobit.net', '', '3', 'yobit.png', 'bcd.png');
INSERT INTO `block_quotation` VALUES ('87', 'bcdcoinegg', '14.55', '16.28', '14.13', '0', '2.31', '3', 'CoinEgg', 'CoinEgg', 'https://www.coinegg.com', '', '3', 'coinegg.png', 'bcd.png');
INSERT INTO `block_quotation` VALUES ('88', 'bcdexx', '16.94', '16.94', '16.94', '-6', '2.69', '0', 'EXX', 'exx', 'https://www.exx.com', '', '3', 'exx.png', 'bcd.png');
INSERT INTO `block_quotation` VALUES ('89', 'bcdcoinnest', '17.71', '20.07', '17.71', '-10', '2.81', '0', 'Coinnest', 'coinnest', 'https://www.coinnest.co.kr/', '', '3', 'coinnest.png', 'bcd.png');
INSERT INTO `block_quotation` VALUES ('90', 'elfokex', '3.55', '3.85', '3.55', '-3', '0.56', '141', 'OKEX', 'OKEX', 'https://www.okex.com/', 'OKEX:ELFBTC', '4', 'okex.png', 'elf.png');
INSERT INTO `block_quotation` VALUES ('91', 'elfhuobipro', '3.56', '3.89', '3.55', '-3', '0.57', '1687', 'Huobi', 'huobipro', 'https://www.huobipro.com/zh-cn/', 'HUOBIPRO:ELFBTC', '4', 'huobi.png', 'elf.png');
INSERT INTO `block_quotation` VALUES ('92', 'elfcex', '3.54', '4.16', '3.52', '-9', '0.56', '630', 'CEX', 'cex', 'https://www.cex.com/', '', '4', 'cex.png', 'elf.png');
INSERT INTO `block_quotation` VALUES ('93', 'elfbibox', '3.89', '4.07', '3.42', '-4', '0.62', '6', 'Bibox', 'bibox', 'https://www.bibox.com/', '', '4', 'bibox.png', 'elf.png');
INSERT INTO `block_quotation` VALUES ('94', 'elfbigone', '1.02', '0.00', '0.00', '0', '0.16', '0', 'BigOne', 'bigone', 'https://big.one/', '', '4', 'bigone.png', 'elf.png');
INSERT INTO `block_quotation` VALUES ('95', 'elfgateio', '3.59', '4.39', '3.57', '-10', '0.57', '10', 'Gateio', 'Gateio', 'https://gateio.io/', '', '4', 'gateio.png', 'elf.png');
INSERT INTO `block_quotation` VALUES ('96', 'elfbitfinex', '3.56', '4.26', '3.55', '-13', '0.57', '21', 'Bitfinex', 'Bitfinex', 'https://www.bitfinex.com/', 'BITFINEX:ELFBTC', '4', 'bitfinex.png', 'elf.png');
INSERT INTO `block_quotation` VALUES ('97', 'elfbinance', '3.53', '3.87', '3.53', '-4', '0.56', '521', 'Binance', 'Binance', 'https://www.binance.com/', 'BINANCE:ELFBTC', '4', 'binance.png', 'elf.png');
INSERT INTO `block_quotation` VALUES ('98', 'inkexx', '0.42', '0.42', '0.33', '26', '0.07', '12', 'EXX', 'exx', 'https://www.exx.com', '', '5', 'exx.png', 'ink.png');
INSERT INTO `block_quotation` VALUES ('99', 'inkgateio', '0.40', '0.46', '0.40', '-6', '0.06', '51', 'Gateio', 'Gateio', 'https://gateio.io/', '', '5', 'gateio.png', 'ink.png');
INSERT INTO `block_quotation` VALUES ('100', 'inkallcoin', '0.36', '0.36', '0.36', '0', '0.06', '0', 'Allcoin', 'Allcoin', 'https://allcoin.com/', '', '5', 'allcoin.png', 'ink.png');
INSERT INTO `block_quotation` VALUES ('101', 'inkcoinegg', '0.36', '0.40', '0.31', '-4', '0.06', '480', 'CoinEgg', 'CoinEgg', 'https://www.coinegg.com', '', '5', 'coinegg.png', 'ink.png');
INSERT INTO `block_quotation` VALUES ('102', 'inkzb', '0.39', '0.46', '0.38', '-4', '0.06', '11', 'ZB', 'ZB', 'https://www.zb.com/', '', '5', 'zb.png', 'ink.png');
INSERT INTO `block_quotation` VALUES ('103', 'inklbank', '0.43', '0.46', '0.36', '2', '0.07', '8', 'LBANK', 'lbank', 'http://www.lbank.info/', '', '5', 'lbank.png', 'ink.png');
INSERT INTO `block_quotation` VALUES ('104', 'inkcoinnest', '0.30', '0.38', '0.30', '-12', '0.05', '6', 'Coinnest', 'coinnest', 'https://www.coinnest.co.kr/', '', '5', 'coinnest.png', 'ink.png');
INSERT INTO `block_quotation` VALUES ('105', 'trxbinance', '0.30', '0.30', '0.26', '12', '0.05', '228981', 'Binance', 'Binance', 'https://www.binance.com/', 'BINANCE:TRXBTC', '6', 'binance.png', 'trx.png');
INSERT INTO `block_quotation` VALUES ('106', 'trxokex', '0.30', '0.30', '0.26', '12', '0.05', '18542', 'OKEX', 'OKEX', 'https://www.okex.com/', 'OKEX:TRXBTC', '6', 'okex.png', 'trx.png');
INSERT INTO `block_quotation` VALUES ('107', 'trxgateio', '0.29', '0.31', '0.27', '5', '0.05', '1865', 'Gateio', 'Gateio', 'https://gateio.io/', '', '6', 'gateio.png', 'trx.png');
INSERT INTO `block_quotation` VALUES ('108', 'trxliqui', '0.30', '0.30', '0.26', '12', '0.05', '4725', 'Liqui', 'liqui', 'https://liqui.io/', '', '6', 'liqui.png', 'trx.png');
INSERT INTO `block_quotation` VALUES ('109', 'trxhuobipro', '0.30', '0.30', '0.26', '13', '0.05', '70404', 'Huobi', 'huobipro', 'https://www.huobipro.com/zh-cn/', 'HUOBIPRO:TRXBTC', '6', 'huobi.png', 'trx.png');
INSERT INTO `block_quotation` VALUES ('110', 'trxcoinegg', '0.29', '0.30', '0.26', '9', '0.05', '23963', 'CoinEgg', 'CoinEgg', 'https://www.coinegg.com', '', '6', 'coinegg.png', 'trx.png');
INSERT INTO `block_quotation` VALUES ('111', 'trxhitbtc', '0.30', '0.30', '0.26', '13', '0.05', '2071', 'HitBTC', 'HitBTC', 'https://hitbtc.com/zh_CN', '', '6', 'hitbtc.png', 'trx.png');
INSERT INTO `block_quotation` VALUES ('112', 'trxbit-z', '0.30', '0.30', '0.26', '13', '0.05', '76796', 'Bit-Z', 'Bit-Z', 'https://www.bit-z.com/', '', '6', 'bit-z.png', 'trx.png');
INSERT INTO `block_quotation` VALUES ('113', 'trxyobit', '0.30', '0.30', '0.26', '13', '0.05', '607', 'YObit', 'yobit', 'https://yobit.net', '', '6', 'yobit.png', 'trx.png');
INSERT INTO `block_quotation` VALUES ('114', 'trxcoinnest', '0.24', '0.26', '0.23', '2', '0.04', '3239', 'Coinnest', 'coinnest', 'https://www.coinnest.co.kr/', '', '6', 'coinnest.png', 'trx.png');
INSERT INTO `block_quotation` VALUES ('115', 'aidocbibox', '0.23', '0.26', '0.22', '-2', '0.04', '30', 'Bibox', 'bibox', 'https://www.bibox.com/', '', '7', 'bibox.png', 'aidoc.png');
INSERT INTO `block_quotation` VALUES ('116', 'aidochuobipro', '0.23', '0.25', '0.22', '-2', '0.04', '4967', 'Huobi', 'huobipro', 'https://www.huobipro.com/zh-cn/', 'HUOBIPRO:AIDOCBTC', '7', 'huobi.png', 'aidoc.png');
INSERT INTO `block_quotation` VALUES ('117', 'aidocokex', '0.22', '0.25', '0.22', '-4', '0.04', '3040', 'OKEX', 'OKEX', 'https://www.okex.com/', 'OKEX:AIDOCBTC', '7', 'okex.png', 'aidoc.png');
INSERT INTO `block_quotation` VALUES ('118', 'aidoccoinegg', '0.23', '0.24', '0.22', '0', '0.04', '1080', 'CoinEgg', 'CoinEgg', 'https://www.coinegg.com', '', '7', 'coinegg.png', 'aidoc.png');
INSERT INTO `block_quotation` VALUES ('119', 'aidocbit-z', '0.20', '0.26', '0.20', '-26', '0.03', '7', 'Bit-Z', 'Bit-Z', 'https://www.bit-z.com/', '', '7', 'bit-z.png', 'aidoc.png');
INSERT INTO `block_quotation` VALUES ('120', 'aidocbtctrade', '0.21', '0.28', '0.14', '-20', '0.03', '132', 'BtcTrade', 'Btctrade', 'https://www.btctrade.im', '', '7', 'btctrade.png', 'aidoc.png');
INSERT INTO `block_quotation` VALUES ('121', 'aidoccoinbene', '0.21', '0.22', '0.21', '1', '0.03', '40', 'Coinbene', 'coinbene', 'http://coinbene.com/', '', '7', 'coinbene.png', 'aidoc.png');
INSERT INTO `block_quotation` VALUES ('122', 'aidoccoolcoin', '0.23', '0.23', '0.23', '0', '0.04', '76', 'CoolCoin', 'coolcoin', 'https://www.coolcoin.com', '', '7', 'coolcoin.png', 'aidoc.png');
INSERT INTO `block_quotation` VALUES ('123', 'pstlbank', '0.76', '0.90', '0.53', '-5', '0.12', '64', 'LBANK', 'lbank', 'http://www.lbank.info/', '', '8', 'lbank.png', 'pst.png');
INSERT INTO `block_quotation` VALUES ('124', 'pstbigone', '1.01', '1.01', '0.96', '5', '0.16', '7', 'BigOne', 'bigone', 'https://big.one/', '', '8', 'bigone.png', 'pst.png');
INSERT INTO `block_quotation` VALUES ('125', 'pstgateio', '1.03', '1.15', '1.01', '-3', '0.16', '10', 'Gateio', 'Gateio', 'https://gateio.io/', '', '8', 'gateio.png', 'pst.png');
INSERT INTO `block_quotation` VALUES ('126', 'pstokex', '1.09', '1.21', '0.95', '11', '0.17', '133', 'OKEX', 'OKEX', 'https://www.okex.com/', 'OKEX:PSTBTC', '8', 'okex.png', 'pst.png');
INSERT INTO `block_quotation` VALUES ('127', 'dddcex', '0.94', '1.14', '0.75', '-2', '0.15', '159', 'CEX', 'cex', 'https://www.cex.com/', '', '9', 'cex.png', 'ddd.png');
INSERT INTO `block_quotation` VALUES ('128', 'dddgateio', '0.93', '1.07', '0.93', '-8', '0.15', '86', 'Gateio', 'Gateio', 'https://gateio.io/', '', '9', 'gateio.png', 'ddd.png');
INSERT INTO `block_quotation` VALUES ('129', 'ekohuobipro', '0.22', '0.27', '0.21', '-11', '0.03', '4144', 'Huobi', 'huobipro', 'https://www.huobipro.com/zh-cn/', 'HUOBIPRO:EKOBTC', '10', 'huobi.png', 'eko.png');
INSERT INTO `block_quotation` VALUES ('130', 'ekohitbtc', '0.22', '0.26', '0.21', '-10', '0.03', '28', 'HitBTC', 'HitBTC', 'https://hitbtc.com/zh_CN', '', '10', 'hitbtc.png', 'eko.png');
INSERT INTO `block_quotation` VALUES ('131', 'praokex', '1.28', '1.32', '1.22', '-1', '0.20', '480', 'OKEX', 'OKEX', 'https://www.okex.com/', 'OKEX:PRABTC', '11', 'okex.png', 'pra.png');
INSERT INTO `block_quotation` VALUES ('132', 'prabibox', '1.24', '1.31', '1.23', '0', '0.20', '8', 'Bibox', 'bibox', 'https://www.bibox.com/', '', '11', 'bibox.png', 'pra.png');
INSERT INTO `block_quotation` VALUES ('133', 'prakex', '1.31', '1.60', '1.31', '0', '0.21', '8', 'KEX', 'kex', 'https://www.kex.com', '', '11', 'kex.png', 'pra.png');
INSERT INTO `block_quotation` VALUES ('134', 'uchadax', '0.01', '0.01', '0.01', '-2', '0.00', '61375', 'HADAX', 'hadax', 'https://www.hadax.com', '', '12', 'hadax.png', 'uc.png');
INSERT INTO `block_quotation` VALUES ('135', 'ucbcex', '0.01', '0.01', '0.01', '-3', '0.00', '27129', 'BCEX', 'bcex', 'https://www.bcex.ca', '', '12', 'bcex.png', 'uc.png');
INSERT INTO `block_quotation` VALUES ('136', 'aifcoinegg', '0.02', '0.03', '0.02', '0', '0.00', '4205', 'CoinEgg', 'CoinEgg', 'https://www.coinegg.com', '', '13', 'coinegg.png', 'aif.png');
INSERT INTO `block_quotation` VALUES ('137', 'bchhuobipro', '4751.32', '5212.45', '4746.67', '-7', '755.27', '0', 'Huobi', 'huobipro', 'https://www.huobipro.com/zh-cn/', 'HUOBIPRO:BCHBTC', '14', 'huobi.png', 'bch.png');
INSERT INTO `block_quotation` VALUES ('138', 'bchbithumb', '4927.92', '5783.67', '4927.92', '-12', '783.34', '1', 'Bithumb', 'bithumb', 'https://www.bithumb.com/', 'BITHUMB:BCHKRW', '14', 'bithumb.png', 'bch.png');
INSERT INTO `block_quotation` VALUES ('139', 'bchbittrex', '4761.18', '5642.28', '4731.76', '-12', '756.84', '0', 'Bittrex', 'Bittrex', 'https://bittrex.com/', 'BITTREX:BCHBTC', '14', 'bittrex.png', 'bch.png');
INSERT INTO `block_quotation` VALUES ('140', 'bchokex', '5134.05', '5315.62', '5068.43', '1', '816.11', '7', 'OKEX', 'OKEX', 'https://www.okex.com/', 'OKEX:BCHBTC', '14', 'okex.png', 'bch.png');
INSERT INTO `block_quotation` VALUES ('141', 'bchyobit', '4784.02', '5218.20', '4754.93', '-6', '760.47', '0', 'YObit', 'yobit', 'https://yobit.net', '', '14', 'yobit.png', 'bch.png');
INSERT INTO `block_quotation` VALUES ('142', 'bchokcoincom', '6614.28', '7031.22', '6227.33', '-1', '1051.41', '0', 'OKCoin', 'OKCoincom', 'https://www.okcoin.com/', '', '14', 'okcoin.png', 'bch.png');
INSERT INTO `block_quotation` VALUES ('143', 'bchbitasiaex', '4901.90', '5993.20', '4789.30', '-12', '779.21', '0', 'BitAsiaEx', 'bitasiaex', 'http://www.bitasiaex.com/', '', '14', 'bitasiaex.png', 'bch.png');
INSERT INTO `block_quotation` VALUES ('144', 'bchexx', '4838.99', '5198.52', '4832.56', '-7', '769.21', '1', 'EXX', 'exx', 'https://www.exx.com', '', '14', 'exx.png', 'bch.png');
INSERT INTO `block_quotation` VALUES ('145', 'bchbitflyer', '4728.18', '5219.07', '4728.18', '-8', '751.60', '0', 'Bitflyer', 'bitflyer', 'https://bitflyer.jp/', '', '14', 'bitflyer.png', 'bch.png');
INSERT INTO `block_quotation` VALUES ('146', 'bchgateio', '4749.60', '5674.24', '4749.60', '-13', '755.00', '0', 'Gateio', 'Gateio', 'https://gateio.io/', '', '14', 'gateio.png', 'bch.png');
INSERT INTO `block_quotation` VALUES ('147', 'bchcoolcoin', '4171.55', '5350.00', '4171.55', '0', '663.11', '0', 'CoolCoin', 'coolcoin', 'https://www.coolcoin.com', '', '14', 'coolcoin.png', 'bch.png');
INSERT INTO `block_quotation` VALUES ('148', 'bchkorbit', '4957.43', '5798.42', '4942.67', '-12', '788.04', '0', 'Korbit', 'korbit', 'https://www.korbit.co.kr/', '', '14', 'korbit.png', 'bch.png');
INSERT INTO `block_quotation` VALUES ('149', 'bchcointiger', '4739.94', '5210.08', '4739.94', '-8', '753.46', '1', 'CoinTiger', 'cointiger', 'https://www.cointiger.com', '', '14', 'cointiger.png', 'bch.png');
INSERT INTO `block_quotation` VALUES ('150', 'bchkraken', '4745.83', '5450.41', '4743.94', '-12', '754.40', '0', 'Kraken', 'kraken', 'https://www.kraken.com/', 'KRAKEN:BCHBTC', '14', 'kraken.png', 'bch.png');
INSERT INTO `block_quotation` VALUES ('151', 'bchliqui', '4785.07', '5597.00', '4785.07', '-12', '760.64', '0', 'Liqui', 'liqui', 'https://liqui.io/', '', '14', 'liqui.png', 'bch.png');
INSERT INTO `block_quotation` VALUES ('152', 'bchcoinnest', '4131.19', '4868.90', '4131.19', '-15', '656.70', '0', 'Coinnest', 'coinnest', 'https://www.coinnest.co.kr/', '', '14', 'coinnest.png', 'bch.png');
INSERT INTO `block_quotation` VALUES ('153', 'bchbitbank', '4806.65', '5637.35', '4806.59', '-12', '764.07', '0', 'bitbank', 'bitbank', 'https://bitbank.cc/', '', '14', 'bitbank.png', 'bch.png');
INSERT INTO `block_quotation` VALUES ('154', 'bchacx', '5106.00', '6285.80', '5106.00', '-8', '811.65', '0', 'ACX', 'ACX', 'https://acx.io/', '', '14', 'acx.png', 'bch.png');
INSERT INTO `block_quotation` VALUES ('155', 'bchcoinone', '4960.38', '5789.57', '4933.82', '-12', '788.50', '0', 'Coinone', 'Coinone', 'https://coinone.co.kr/', '', '14', 'coinone.png', 'bch.png');
INSERT INTO `block_quotation` VALUES ('156', 'bchbitfinex', '4747.65', '5645.74', '4727.59', '-12', '754.69', '2', 'Bitfinex', 'Bitfinex', 'https://www.bitfinex.com/', 'BITFINEX:BCHBTC', '14', 'bitfinex.png', 'bch.png');
INSERT INTO `block_quotation` VALUES ('157', 'bchhitbtc', '4836.04', '5714.31', '4830.97', '-12', '768.74', '0', 'HitBTC', 'HitBTC', 'https://hitbtc.com/zh_CN', '', '14', 'hitbtc.png', 'bch.png');
INSERT INTO `block_quotation` VALUES ('158', 'bchbit-z', '4745.64', '5214.66', '4744.66', '-7', '754.37', '2', 'Bit-Z', 'Bit-Z', 'https://www.bit-z.com/', '', '14', 'bit-z.png', 'bch.png');
INSERT INTO `block_quotation` VALUES ('159', 'bchbinance', '4743.31', '5642.15', '4743.31', '-12', '754.00', '1', 'Binance', 'Binance', 'https://www.binance.com/', 'BINANCE:BCHBTC', '14', 'binance.png', 'bch.png');
INSERT INTO `block_quotation` VALUES ('160', 'bchtidex', '4748.85', '5215.88', '4748.85', '-7', '754.88', '0', 'Tidex', 'Tidex', 'https://tidex.com/', '', '14', 'tidex.png', 'bch.png');
INSERT INTO `block_quotation` VALUES ('161', 'bchexmo', '4763.38', '5228.91', '4740.39', '-7', '757.19', '0', 'EXMO', 'exmo', 'https://exmo.com', '', '14', 'exmo.png', 'bch.png');
INSERT INTO `block_quotation` VALUES ('162', 'bchcoinegg', '4797.89', '5186.22', '4716.45', '-7', '762.68', '0', 'CoinEgg', 'CoinEgg', 'https://www.coinegg.com', '', '14', 'coinegg.png', 'bch.png');
INSERT INTO `block_quotation` VALUES ('163', 'bchbitbay', '4755.90', '5586.29', '4755.90', '-16', '756.00', '0', 'BitBay', 'bitbay', 'https://bitbay.net', '', '14', 'bitbay.png', 'bch.png');
INSERT INTO `block_quotation` VALUES ('164', 'bchzaif', '4865.93', '5633.79', '4839.52', '-12', '773.49', '0', 'Zaif', 'zaif', 'https://zaif.jp/', '', '14', 'zaif.png', 'bch.png');
INSERT INTO `block_quotation` VALUES ('165', 'bchpoloniex', '4740.17', '5211.71', '4740.17', '-8', '753.50', '0', 'Poloniex', 'Poloniex', 'https://www.poloniex.com', '', '14', 'poloniex.png', 'bch.png');
INSERT INTO `block_quotation` VALUES ('166', 'bchweex', '4986.46', '5867.99', '4942.17', '-11', '792.65', '0', 'weex', 'weex', 'https://www.weex.com/', '', '14', 'weex.png', 'bch.png');
INSERT INTO `block_quotation` VALUES ('167', 'bchbibox', '3796.63', '5443.22', '3787.24', '-25', '603.51', '0', 'Bibox', 'bibox', 'https://www.bibox.com/', '', '14', 'bibox.png', 'bch.png');
INSERT INTO `block_quotation` VALUES ('168', 'bcxhuobipro', '0.05', '0.05', '0.05', '-1', '0.01', '496', 'Huobi', 'huobipro', 'https://www.huobipro.com/zh-cn/', 'HUOBIPRO:BCXBTC', '15', 'huobi.png', 'bcx.png');
INSERT INTO `block_quotation` VALUES ('169', 'bcxokex', '0.02', '0.02', '0.02', '6', '0.00', '10945', 'OKEX', 'OKEX', 'https://www.okex.com/', 'OKEX:BCXBCH', '15', 'okex.png', 'bcx.png');
INSERT INTO `block_quotation` VALUES ('170', 'bcxgateio', '0.02', '0.03', '0.02', '0', '0.00', '477', 'Gateio', 'Gateio', 'https://gateio.io/', '', '15', 'gateio.png', 'bcx.png');
INSERT INTO `block_quotation` VALUES ('171', 'bcxzb', '0.09', '0.13', '0.09', '-21', '0.01', '47', 'ZB', 'ZB', 'https://www.zb.com/', '', '15', 'zb.png', 'bcx.png');
INSERT INTO `block_quotation` VALUES ('172', 'bcxbtctrade', '0.09', '0.10', '0.07', '0', '0.02', '58', 'BtcTrade', 'Btctrade', 'https://www.btctrade.im', '', '15', 'btctrade.png', 'bcx.png');
INSERT INTO `block_quotation` VALUES ('173', 'bcxcex', '0.05', '0.05', '0.05', '-1', '0.01', '496', 'CEX', 'cex', 'https://www.cex.com/', '', '15', 'cex.png', 'bcx.png');
INSERT INTO `block_quotation` VALUES ('174', 'bcxcoolcoin', '0.08', '0.27', '0.08', '-71', '0.01', '198', 'CoolCoin', 'coolcoin', 'https://www.coolcoin.com', '', '15', 'coolcoin.png', 'bcx.png');
INSERT INTO `block_quotation` VALUES ('175', 'bcxcoinegg', '0.18', '0.19', '0.17', '1', '0.03', '2063', 'CoinEgg', 'CoinEgg', 'https://www.coinegg.com', '', '15', 'coinegg.png', 'bcx.png');
INSERT INTO `block_quotation` VALUES ('176', 'bcxkex', '0.01', '0.01', '0.01', '2', '0.00', '681', 'KEX', 'kex', 'https://www.kex.com', '', '15', 'kex.png', 'bcx.png');
INSERT INTO `block_quotation` VALUES ('177', 'etchuobipro', '95.03', '96.82', '93.91', '-1', '15.11', '9', 'Huobi', 'huobipro', 'https://www.huobipro.com/zh-cn/', 'HUOBIPRO:ETCBTC', '16', 'huobi.png', 'etc.png');
INSERT INTO `block_quotation` VALUES ('178', 'etcbithumb', '99.27', '107.41', '98.32', '-4', '15.78', '35', 'Bithumb', 'bithumb', 'https://www.bithumb.com/', 'BITHUMB:ETCKRW', '16', 'bithumb.png', 'etc.png');
INSERT INTO `block_quotation` VALUES ('179', 'etckorbit', '99.09', '107.65', '98.26', '-4', '15.75', '7', 'Korbit', 'korbit', 'https://www.korbit.co.kr/', '', '16', 'korbit.png', 'etc.png');
INSERT INTO `block_quotation` VALUES ('180', 'etcbibox', '94.57', '97.30', '94.04', '0', '15.03', '1', 'Bibox', 'bibox', 'https://www.bibox.com/', '', '16', 'bibox.png', 'etc.png');
INSERT INTO `block_quotation` VALUES ('181', 'etcokex', '95.50', '96.85', '93.91', '0', '15.18', '217', 'OKEX', 'OKEX', 'https://www.okex.com/', 'OKEX:ETCBCH', '16', 'okex.png', 'etc.png');
INSERT INTO `block_quotation` VALUES ('182', 'etcyobit', '95.42', '96.84', '93.92', '1', '15.17', '0', 'YObit', 'yobit', 'https://yobit.net', '', '16', 'yobit.png', 'etc.png');
INSERT INTO `block_quotation` VALUES ('183', 'etckex', '120.00', '120.00', '120.00', '0', '19.08', '0', 'KEX', 'kex', 'https://www.kex.com', '', '16', 'kex.png', 'etc.png');
INSERT INTO `block_quotation` VALUES ('184', 'etcexx', '95.50', '96.53', '94.75', '1', '15.18', '4', 'EXX', 'exx', 'https://www.exx.com', '', '16', 'exx.png', 'etc.png');
INSERT INTO `block_quotation` VALUES ('185', 'etcbitfinex', '95.39', '104.43', '94.78', '-6', '15.16', '48', 'Bitfinex', 'Bitfinex', 'https://www.bitfinex.com/', 'BITFINEX:ETCBTC', '16', 'bitfinex.png', 'etc.png');
INSERT INTO `block_quotation` VALUES ('186', 'etcokcoincom', '102.79', '114.24', '102.79', '-7', '16.34', '0', 'OKCoin', 'OKCoincom', 'https://www.okcoin.com/', '', '16', 'okcoin.png', 'etc.png');
INSERT INTO `block_quotation` VALUES ('187', 'etccoinone', '99.15', '107.53', '98.32', '-4', '15.76', '11', 'Coinone', 'Coinone', 'https://coinone.co.kr/', '', '16', 'coinone.png', 'etc.png');
INSERT INTO `block_quotation` VALUES ('188', 'etcgateio', '95.68', '104.74', '95.43', '-4', '15.21', '4', 'Gateio', 'Gateio', 'https://gateio.io/', '', '16', 'gateio.png', 'etc.png');
INSERT INTO `block_quotation` VALUES ('189', 'etckraken', '95.73', '101.40', '94.99', '-4', '15.22', '4', 'Kraken', 'kraken', 'https://www.kraken.com/', 'KRAKEN:ETCBTC', '16', 'kraken.png', 'etc.png');
INSERT INTO `block_quotation` VALUES ('190', 'etccoolcoin', '117.32', '117.32', '93.95', '0', '18.65', '2', 'CoolCoin', 'coolcoin', 'https://www.coolcoin.com', '', '16', 'coolcoin.png', 'etc.png');
INSERT INTO `block_quotation` VALUES ('191', 'etccex', '95.62', '104.74', '94.80', '-5', '15.20', '107', 'CEX', 'cex', 'https://www.cex.com/', '', '16', 'cex.png', 'etc.png');
INSERT INTO `block_quotation` VALUES ('192', 'etcbittrex', '96.11', '104.68', '94.99', '-3', '15.28', '3', 'Bittrex', 'Bittrex', 'https://bittrex.com/', 'BITTREX:ETCBTC', '16', 'bittrex.png', 'etc.png');
INSERT INTO `block_quotation` VALUES ('193', 'etchitbtc', '97.13', '106.00', '96.56', '-6', '15.44', '2', 'HitBTC', 'HitBTC', 'https://hitbtc.com/zh_CN', '', '16', 'hitbtc.png', 'etc.png');
INSERT INTO `block_quotation` VALUES ('194', 'etccointiger', '95.65', '96.54', '94.08', '1', '15.20', '8', 'CoinTiger', 'cointiger', 'https://www.cointiger.com', '', '16', 'cointiger.png', 'etc.png');
INSERT INTO `block_quotation` VALUES ('195', 'etcbit-z', '95.45', '96.71', '94.04', '0', '15.17', '40', 'Bit-Z', 'Bit-Z', 'https://www.bit-z.com/', '', '16', 'bit-z.png', 'etc.png');
INSERT INTO `block_quotation` VALUES ('196', 'etccoinnest', '74.77', '89.29', '74.24', '-11', '11.89', '0', 'Coinnest', 'coinnest', 'https://www.coinnest.co.kr/', '', '16', 'coinnest.png', 'etc.png');
INSERT INTO `block_quotation` VALUES ('197', 'etcbinance', '95.22', '97.05', '93.81', '0', '15.14', '34', 'Binance', 'Binance', 'https://www.binance.com/', 'BINANCE:ETCBTC', '16', 'binance.png', 'etc.png');
INSERT INTO `block_quotation` VALUES ('198', 'etccoinegg', '94.05', '97.94', '93.85', '0', '14.95', '0', 'CoinEgg', 'CoinEgg', 'https://www.coinegg.com', '', '16', 'coinegg.png', 'etc.png');
INSERT INTO `block_quotation` VALUES ('199', 'etcexmo', '95.46', '97.14', '93.86', '0', '15.18', '0', 'EXMO', 'exmo', 'https://exmo.com', '', '16', 'exmo.png', 'etc.png');
INSERT INTO `block_quotation` VALUES ('200', 'etcaex', '95.74', '98.55', '94.80', '1', '15.22', '0', 'AEX', 'aex', 'https://www.aex.com/', '', '16', 'aex.png', 'etc.png');
INSERT INTO `block_quotation` VALUES ('201', 'etcpoloniex', '95.45', '96.71', '93.08', '1', '15.17', '8', 'Poloniex', 'Poloniex', 'https://www.poloniex.com', '', '16', 'poloniex.png', 'etc.png');
INSERT INTO `block_quotation` VALUES ('202', 'ltchuobipro', '751.72', '812.68', '746.18', '-5', '119.49', '2', 'Huobi', 'huobipro', 'https://www.huobipro.com/zh-cn/', 'HUOBIPRO:LTCBTC', '17', 'huobi.png', 'ltc.png');
INSERT INTO `block_quotation` VALUES ('203', 'ltcbithumb', '772.53', '902.96', '772.53', '-10', '122.80', '2', 'Bithumb', 'bithumb', 'https://www.bithumb.com/', 'BITHUMB:LTCKRW', '17', 'bithumb.png', 'ltc.png');
INSERT INTO `block_quotation` VALUES ('204', 'ltccoinbase', '746.16', '880.66', '744.71', '-11', '118.61', '36', 'GDAX', 'Coinbase', 'https://www.coinbase.com/', 'GDAX:LTCBTC', '17', 'gdax.png', 'ltc.png');
INSERT INTO `block_quotation` VALUES ('205', 'ltcbibox', '746.18', '811.22', '741.86', '-5', '118.61', '0', 'Bibox', 'bibox', 'https://www.bibox.com/', '', '17', 'bibox.png', 'ltc.png');
INSERT INTO `block_quotation` VALUES ('206', 'ltcokex', '745.40', '811.33', '745.01', '-5', '118.49', '40', 'OKEX', 'OKEX', 'https://www.okex.com/', 'OKEX:LTCBCH', '17', 'okex.png', 'ltc.png');
INSERT INTO `block_quotation` VALUES ('207', 'ltcokcoincom', '817.88', '959.11', '817.81', '-11', '130.01', '0', 'OKCoin', 'OKCoincom', 'https://www.okcoin.com/', '', '17', 'okcoin.png', 'ltc.png');
INSERT INTO `block_quotation` VALUES ('208', 'ltccryptopia', '749.23', '901.05', '747.66', '-6', '119.10', '0', 'Cryptopia', 'Cryptopia', 'https://www.cryptopia.co.nz', '', '17', 'cryptopia.png', 'ltc.png');
INSERT INTO `block_quotation` VALUES ('209', 'ltcyobit', '747.87', '810.43', '746.18', '-4', '118.88', '1', 'YObit', 'yobit', 'https://yobit.net', '', '17', 'yobit.png', 'ltc.png');
INSERT INTO `block_quotation` VALUES ('210', 'ltcbitstamp', '748.30', '878.27', '744.34', '-10', '118.95', '5', 'Bitstamp', 'Bitstamp', 'https://www.bitstamp.net/', '', '17', 'bitstamp.png', 'ltc.png');
INSERT INTO `block_quotation` VALUES ('211', 'ltcbitfinex', '745.97', '881.48', '744.52', '-10', '118.58', '23', 'Bitfinex', 'Bitfinex', 'https://www.bitfinex.com/', 'BITFINEX:LTCBTC', '17', 'bitfinex.png', 'ltc.png');
INSERT INTO `block_quotation` VALUES ('212', 'ltcliqui', '747.12', '807.98', '740.78', '-6', '118.76', '0', 'Liqui', 'liqui', 'https://liqui.io/', '', '17', 'liqui.png', 'ltc.png');
INSERT INTO `block_quotation` VALUES ('213', 'ltcexx', '752.05', '805.79', '752.05', '-5', '119.55', '3', 'EXX', 'exx', 'https://www.exx.com', '', '17', 'exx.png', 'ltc.png');
INSERT INTO `block_quotation` VALUES ('214', 'ltckraken', '747.92', '832.60', '745.66', '-10', '118.89', '2', 'Kraken', 'kraken', 'https://www.kraken.com/', 'KRAKEN:LTCBTC', '17', 'kraken.png', 'ltc.png');
INSERT INTO `block_quotation` VALUES ('215', 'ltccoinone', '768.11', '902.96', '768.11', '-12', '122.10', '1', 'Coinone', 'Coinone', 'https://coinone.co.kr/', '', '17', 'coinone.png', 'ltc.png');
INSERT INTO `block_quotation` VALUES ('216', 'ltcgateio', '754.59', '882.11', '748.61', '-10', '119.95', '1', 'Gateio', 'Gateio', 'https://gateio.io/', '', '17', 'gateio.png', 'ltc.png');
INSERT INTO `block_quotation` VALUES ('217', 'ltczb', '750.94', '879.90', '750.06', '-11', '119.37', '2', 'ZB', 'ZB', 'https://www.zb.com/', '', '17', 'zb.png', 'ltc.png');
INSERT INTO `block_quotation` VALUES ('218', 'ltcbittrex', '745.81', '878.47', '745.81', '-11', '118.56', '2', 'Bittrex', 'Bittrex', 'https://bittrex.com/', 'BITTREX:LTCBTC', '17', 'bittrex.png', 'ltc.png');
INSERT INTO `block_quotation` VALUES ('219', 'ltchitbtc', '762.04', '891.35', '760.12', '-10', '121.13', '2', 'HitBTC', 'HitBTC', 'https://hitbtc.com/zh_CN', '', '17', 'hitbtc.png', 'ltc.png');
INSERT INTO `block_quotation` VALUES ('220', 'ltcallcoin', '891.55', '891.55', '734.00', '10', '141.72', '0', 'Allcoin', 'Allcoin', 'https://allcoin.com/', '', '17', 'allcoin.png', 'ltc.png');
INSERT INTO `block_quotation` VALUES ('221', 'ltccoolcoin', '1057.24', '1057.61', '521.25', '0', '168.06', '2', 'CoolCoin', 'coolcoin', 'https://www.coolcoin.com', '', '17', 'coolcoin.png', 'ltc.png');
INSERT INTO `block_quotation` VALUES ('222', 'ltcbitbank', '750.88', '807.19', '633.55', '-5', '119.36', '0', 'bitbank', 'bitbank', 'https://bitbank.cc/', '', '17', 'bitbank.png', 'ltc.png');
INSERT INTO `block_quotation` VALUES ('223', 'ltccointiger', '745.34', '811.80', '744.71', '-6', '118.48', '3', 'CoinTiger', 'cointiger', 'https://www.cointiger.com', '', '17', 'cointiger.png', 'ltc.png');
INSERT INTO `block_quotation` VALUES ('224', 'ltcbinance', '744.73', '811.84', '744.73', '-5', '118.38', '12', 'Binance', 'Binance', 'https://www.binance.com/', 'BINANCE:LTCBTC', '17', 'binance.png', 'ltc.png');
INSERT INTO `block_quotation` VALUES ('225', 'ltccoinegg', '754.89', '819.35', '746.19', '-5', '120.00', '1', 'CoinEgg', 'CoinEgg', 'https://www.coinegg.com', '', '17', 'coinegg.png', 'ltc.png');
INSERT INTO `block_quotation` VALUES ('226', 'ltctidex', '749.80', '812.27', '746.81', '-5', '119.19', '0', 'Tidex', 'Tidex', 'https://tidex.com/', '', '17', 'tidex.png', 'ltc.png');
INSERT INTO `block_quotation` VALUES ('227', 'ltcbitbay', '597.63', '905.88', '597.63', '-30', '95.00', '0', 'BitBay', 'bitbay', 'https://bitbay.net', '', '17', 'bitbay.png', 'ltc.png');
INSERT INTO `block_quotation` VALUES ('228', 'ltckex', '1250.00', '1250.00', '1050.77', '15', '198.70', '0', 'KEX', 'kex', 'https://www.kex.com', '', '17', 'kex.png', 'ltc.png');
INSERT INTO `block_quotation` VALUES ('229', 'ltcexmo', '750.14', '811.89', '749.64', '-4', '119.24', '0', 'EXMO', 'exmo', 'https://exmo.com', '', '17', 'exmo.png', 'ltc.png');
INSERT INTO `block_quotation` VALUES ('230', 'ltcaex', '750.88', '844.74', '750.88', '-6', '119.36', '0', 'AEX', 'aex', 'https://www.aex.com/', '', '17', 'aex.png', 'ltc.png');
INSERT INTO `block_quotation` VALUES ('231', 'ltcpoloniex', '744.50', '812.72', '739.66', '-6', '118.35', '3', 'Poloniex', 'Poloniex', 'https://www.poloniex.com', '', '17', 'poloniex.png', 'ltc.png');
INSERT INTO `block_quotation` VALUES ('232', 'ltcweex', '777.99', '915.70', '777.43', '-11', '123.67', '1', 'weex', 'weex', 'https://www.weex.com/', '', '17', 'weex.png', 'ltc.png');
INSERT INTO `block_quotation` VALUES ('233', 'sbtchuobipro', '112.63', '127.60', '105.22', '-1', '17.90', '0', 'Huobi', 'huobipro', 'https://www.huobipro.com/zh-cn/', 'HUOBIPRO:SBTCBTC', '18', 'huobi.png', 'sbtc.png');
INSERT INTO `block_quotation` VALUES ('234', 'sbtcaex', '47.87', '54.49', '47.87', '-1', '7.61', '0', 'AEX', 'aex', 'https://www.aex.com/', '', '18', 'aex.png', 'sbtc.png');
INSERT INTO `block_quotation` VALUES ('235', 'sbtcokex', '48.65', '50.68', '46.93', '0', '7.73', '5', 'OKEX', 'OKEX', 'https://www.okex.com/', 'OKEX:SBTCBCH', '18', 'okex.png', 'sbtc.png');
INSERT INTO `block_quotation` VALUES ('236', 'sbtcgateio', '47.87', '51.62', '46.46', '-1', '7.61', '1', 'Gateio', 'Gateio', 'https://gateio.io/', '', '18', 'gateio.png', 'sbtc.png');
INSERT INTO `block_quotation` VALUES ('237', 'sbtcyobit', '58.66', '63.97', '58.66', '-8', '9.33', '0', 'YObit', 'yobit', 'https://yobit.net', '', '18', 'yobit.png', 'sbtc.png');
INSERT INTO `block_quotation` VALUES ('238', 'qtumhuobipro', '90.34', '92.97', '89.92', '-1', '14.36', '15', 'Huobi', 'huobipro', 'https://www.huobipro.com/zh-cn/', 'HUOBIPRO:QTUMBTC', '19', 'huobi.png', 'qtum.png');
INSERT INTO `block_quotation` VALUES ('239', 'qtumbithumb', '94.13', '103.40', '93.96', '-5', '14.96', '86', 'Bithumb', 'bithumb', 'https://www.bithumb.com/', 'BITHUMB:QTUMKRW', '19', 'bithumb.png', 'qtum.png');
INSERT INTO `block_quotation` VALUES ('240', 'qtumbittrex', '90.11', '92.71', '89.64', '-1', '14.32', '6', 'Bittrex', 'Bittrex', 'https://bittrex.com/', 'BITTREX:QTUMBTC', '19', 'bittrex.png', 'qtum.png');
INSERT INTO `block_quotation` VALUES ('241', 'qtumexx', '90.25', '93.20', '88.23', '-1', '14.35', '3', 'EXX', 'exx', 'https://www.exx.com', '', '19', 'exx.png', 'qtum.png');
INSERT INTO `block_quotation` VALUES ('242', 'qtumbitfinex', '89.97', '100.53', '89.52', '-7', '14.30', '2', 'Bitfinex', 'Bitfinex', 'https://www.bitfinex.com/', '', '19', 'bitfinex.png', 'qtum.png');
INSERT INTO `block_quotation` VALUES ('243', 'qtumcoinone', '94.07', '103.52', '93.84', '-6', '14.95', '22', 'Coinone', 'Coinone', 'https://coinone.co.kr/', '', '19', 'coinone.png', 'qtum.png');
INSERT INTO `block_quotation` VALUES ('244', 'qtumzb', '90.59', '100.28', '89.33', '-7', '14.40', '8', 'ZB', 'ZB', 'https://www.zb.com/', '', '19', 'zb.png', 'qtum.png');
INSERT INTO `block_quotation` VALUES ('245', 'qtumgateio', '90.78', '100.72', '90.71', '-6', '14.43', '2', 'Gateio', 'Gateio', 'https://gateio.io/', '', '19', 'gateio.png', 'qtum.png');
INSERT INTO `block_quotation` VALUES ('246', 'qtumcoolcoin', '141.73', '149.71', '76.03', '86', '22.53', '1', 'CoolCoin', 'coolcoin', 'https://www.coolcoin.com', '', '19', 'coolcoin.png', 'qtum.png');
INSERT INTO `block_quotation` VALUES ('247', 'qtumallcoin', '88.70', '98.55', '86.24', '-4', '14.10', '0', 'Allcoin', 'Allcoin', 'https://allcoin.com/', '', '19', 'allcoin.png', 'qtum.png');
INSERT INTO `block_quotation` VALUES ('248', 'qtumhitbtc', '94.04', '94.04', '85.10', '11', '14.95', '0', 'HitBTC', 'HitBTC', 'https://hitbtc.com/zh_CN', '', '19', 'hitbtc.png', 'qtum.png');
INSERT INTO `block_quotation` VALUES ('249', 'qtumbit-z', '90.29', '92.83', '89.82', '-1', '14.35', '45', 'Bit-Z', 'Bit-Z', 'https://www.bit-z.com/', '', '19', 'bit-z.png', 'qtum.png');
INSERT INTO `block_quotation` VALUES ('250', 'qtumcoinnest', '73.83', '86.16', '73.77', '-10', '11.74', '0', 'Coinnest', 'coinnest', 'https://www.coinnest.co.kr/', '', '19', 'coinnest.png', 'qtum.png');
INSERT INTO `block_quotation` VALUES ('251', 'qtumbinance', '90.25', '92.87', '89.78', '-1', '14.35', '54', 'Binance', 'Binance', 'https://www.binance.com/', 'BINANCE:QTUMBTC', '19', 'binance.png', 'qtum.png');
INSERT INTO `block_quotation` VALUES ('252', 'qtumcoinegg', '90.39', '94.66', '88.93', '-2', '14.37', '19', 'CoinEgg', 'CoinEgg', 'https://www.coinegg.com', '', '19', 'coinegg.png', 'qtum.png');
INSERT INTO `block_quotation` VALUES ('253', 'qtumokex', '90.30', '92.84', '89.86', '-1', '14.35', '17', 'OKEX', 'OKEX', 'https://www.okex.com/', 'OKEX:QTUMBTC', '19', 'okex.png', 'qtum.png');
INSERT INTO `block_quotation` VALUES ('254', 'neohuobipro', '334.09', '348.31', '331.84', '-1', '53.11', '6', 'Huobi', 'huobipro', 'https://www.huobipro.com/zh-cn/', 'HUOBIPRO:NEOBTC', '20', 'huobi.png', 'neo.png');
INSERT INTO `block_quotation` VALUES ('255', 'neocoolcoin', '454.28', '459.91', '333.21', '-1', '72.21', '1', 'CoolCoin', 'coolcoin', 'https://www.coolcoin.com', '', '20', 'coolcoin.png', 'neo.png');
INSERT INTO `block_quotation` VALUES ('256', 'neoallcoin', '337.90', '337.90', '337.90', '0', '53.71', '0', 'Allcoin', 'Allcoin', 'https://allcoin.com/', '', '20', 'allcoin.png', 'neo.png');
INSERT INTO `block_quotation` VALUES ('257', 'neobittrex', '331.09', '377.14', '331.09', '-7', '52.63', '2', 'Bittrex', 'Bittrex', 'https://bittrex.com/', 'BITTREX:NEOBTC', '20', 'bittrex.png', 'neo.png');
INSERT INTO `block_quotation` VALUES ('258', 'neohitbtc', '337.13', '384.88', '336.88', '-7', '53.59', '2', 'HitBTC', 'HitBTC', 'https://hitbtc.com/zh_CN', '', '20', 'hitbtc.png', 'neo.png');
INSERT INTO `block_quotation` VALUES ('259', 'neobitfinex', '330.87', '379.77', '330.54', '-8', '52.60', '15', 'Bitfinex', 'Bitfinex', 'https://www.bitfinex.com/', 'BITFINEX:NEOBTC', '20', 'bitfinex.png', 'neo.png');
INSERT INTO `block_quotation` VALUES ('260', 'neobinance', '330.34', '348.13', '330.34', '-2', '52.51', '35', 'Binance', 'Binance', 'https://www.binance.com/', 'BINANCE:NEOBTC', '20', 'binance.png', 'neo.png');
INSERT INTO `block_quotation` VALUES ('261', 'neocoinnest', '266.23', '320.99', '266.23', '-17', '42.32', '0', 'Coinnest', 'coinnest', 'https://www.coinnest.co.kr/', '', '20', 'coinnest.png', 'neo.png');
INSERT INTO `block_quotation` VALUES ('262', 'neocoinegg', '336.21', '352.44', '335.27', '-2', '53.44', '21', 'CoinEgg', 'CoinEgg', 'https://www.coinegg.com', '', '20', 'coinegg.png', 'neo.png');
INSERT INTO `block_quotation` VALUES ('263', 'neookex', '331.88', '349.80', '330.55', '-2', '52.76', '8', 'OKEX', 'OKEX', 'https://www.okex.com/', 'OKEX:NEOBTC', '20', 'okex.png', 'neo.png');
INSERT INTO `block_quotation` VALUES ('264', 'nemcointiger', '1.33', '1.52', '1.31', '-8', '0.21', '526', 'CoinTiger', 'cointiger', 'https://www.cointiger.com', '', '21', 'cointiger.png', 'nem.png');
INSERT INTO `block_quotation` VALUES ('265', 'nemaex', '1.45', '1.51', '1.45', '-2', '0.23', '6', 'AEX', 'aex', 'https://www.aex.com/', '', '21', 'aex.png', 'nem.png');
INSERT INTO `block_quotation` VALUES ('266', 'nemokex', '1.45', '1.52', '1.42', '-3', '0.23', '120', 'OKEX', 'OKEX', 'https://www.okex.com/', '', '21', 'okex.png', 'nem.png');
INSERT INTO `block_quotation` VALUES ('267', 'nemzaif', '1.46', '1.62', '1.45', '-8', '0.23', '3304', 'Zaif', 'zaif', 'https://zaif.jp/', '', '21', 'zaif.png', 'nem.png');
INSERT INTO `block_quotation` VALUES ('268', 'nemhuobipro', '1.44', '1.54', '1.43', '-3', '0.23', '673', 'Huobi', 'huobipro', 'https://www.huobipro.com/zh-cn/', '', '21', 'huobi.png', 'nem.png');
INSERT INTO `block_quotation` VALUES ('269', 'nempoloniex', '1.44', '1.52', '1.43', '-3', '0.23', '376', 'Poloniex', 'Poloniex', 'https://www.poloniex.com', '', '21', 'poloniex.png', 'nem.png');
INSERT INTO `block_quotation` VALUES ('270', 'nemhitbtc', '1.44', '1.51', '1.44', '-3', '0.23', '309', 'HitBTC', 'HitBTC', 'https://hitbtc.com/zh_CN', '', '21', 'hitbtc.png', 'nem.png');
INSERT INTO `block_quotation` VALUES ('271', 'nembittrex', '1.44', '1.52', '1.44', '-3', '0.23', '586', 'Bittrex', 'Bittrex', 'https://bittrex.com/', '', '21', 'bittrex.png', 'nem.png');
INSERT INTO `block_quotation` VALUES ('272', 'hsrexx', '36.61', '37.40', '36.56', '-2', '5.82', '1', 'EXX', 'exx', 'https://www.exx.com', '', '22', 'exx.png', 'hsr.png');
INSERT INTO `block_quotation` VALUES ('273', 'hsrzb', '36.51', '40.76', '36.49', '-7', '5.80', '8', 'ZB', 'ZB', 'https://www.zb.com/', '', '22', 'zb.png', 'hsr.png');
INSERT INTO `block_quotation` VALUES ('274', 'hsrcryptopia', '36.10', '38.05', '35.95', '0', '5.74', '0', 'Cryptopia', 'Cryptopia', 'https://www.cryptopia.co.nz', '', '22', 'cryptopia.png', 'hsr.png');
INSERT INTO `block_quotation` VALUES ('275', 'hsrcoolcoin', '41.72', '60.54', '33.79', '23', '6.63', '7', 'CoolCoin', 'coolcoin', 'https://www.coolcoin.com', '', '22', 'coolcoin.png', 'hsr.png');
INSERT INTO `block_quotation` VALUES ('276', 'hsrallcoin', '36.92', '37.54', '36.44', '-1', '5.87', '0', 'Allcoin', 'Allcoin', 'https://allcoin.com/', '', '22', 'allcoin.png', 'hsr.png');
INSERT INTO `block_quotation` VALUES ('277', 'hsracx', '38.20', '38.20', '37.81', '0', '6.07', '0', 'ACX', 'ACX', 'https://acx.io/', '', '22', 'acx.png', 'hsr.png');
INSERT INTO `block_quotation` VALUES ('278', 'hsrbit-z', '36.45', '37.68', '36.29', '-2', '5.79', '16', 'Bit-Z', 'Bit-Z', 'https://www.bit-z.com/', '', '22', 'bit-z.png', 'hsr.png');
INSERT INTO `block_quotation` VALUES ('279', 'hsrbinance', '36.46', '37.68', '36.18', '-2', '5.80', '9', 'Binance', 'Binance', 'https://www.binance.com/', 'BINANCE:HSRBTC', '22', 'binance.png', 'hsr.png');
INSERT INTO `block_quotation` VALUES ('280', 'hsrcoinnest', '30.87', '33.70', '30.69', '-7', '4.91', '25', 'Coinnest', 'coinnest', 'https://www.coinnest.co.kr/', '', '22', 'coinnest.png', 'hsr.png');
INSERT INTO `block_quotation` VALUES ('281', 'hsrkex', '44.00', '50.00', '43.00', '1', '6.99', '0', 'KEX', 'kex', 'https://www.kex.com', '', '22', 'kex.png', 'hsr.png');
INSERT INTO `block_quotation` VALUES ('282', 'hsrokex', '36.46', '37.86', '36.46', '-2', '5.80', '77', 'OKEX', 'OKEX', 'https://www.okex.com/', 'OKEX:HSRBTC', '22', 'okex.png', 'hsr.png');
INSERT INTO `block_quotation` VALUES ('283', 'hsrhuobipro', '36.38', '37.78', '36.32', '-2', '5.78', '40', 'Huobi', 'huobipro', 'https://www.huobipro.com/zh-cn/', 'HUOBIPRO:HSRBTC', '22', 'huobi.png', 'hsr.png');
INSERT INTO `block_quotation` VALUES ('284', 'xrphuobipro', '3.36', '3.42', '3.36', '-1', '0.53', '810', 'Huobi', 'huobipro', 'https://www.huobipro.com/zh-cn/', 'HUOBIPRO:XRPBTC', '23', 'huobi.png', 'xrp.png');
INSERT INTO `block_quotation` VALUES ('285', 'xrpbithumb', '3.49', '3.79', '3.48', '-5', '0.55', '7778', 'Bithumb', 'bithumb', 'https://www.bithumb.com/', 'BITHUMB:XRPKRW', '23', 'bithumb.png', 'xrp.png');
INSERT INTO `block_quotation` VALUES ('286', 'xrpbitstamp', '3.36', '3.68', '3.36', '-6', '0.53', '1678', 'Bitstamp', 'Bitstamp', 'https://www.bitstamp.net/', '', '23', 'bitstamp.png', 'xrp.png');
INSERT INTO `block_quotation` VALUES ('287', 'xrpkorbit', '3.49', '3.79', '3.49', '-5', '0.56', '916', 'Korbit', 'korbit', 'https://www.korbit.co.kr/', '', '23', 'korbit.png', 'xrp.png');
INSERT INTO `block_quotation` VALUES ('288', 'xrpkraken', '3.37', '3.61', '3.36', '-6', '0.54', '459', 'Kraken', 'kraken', 'https://www.kraken.com/', 'KRAKEN:XRPBTC', '23', 'kraken.png', 'xrp.png');
INSERT INTO `block_quotation` VALUES ('289', 'xrpbitfinex', '3.36', '3.69', '3.35', '-7', '0.53', '3267', 'Bitfinex', 'Bitfinex', 'https://www.bitfinex.com/', 'BITFINEX:XRPBTC', '23', 'bitfinex.png', 'xrp.png');
INSERT INTO `block_quotation` VALUES ('290', 'xrpcoinone', '3.49', '3.79', '3.49', '-5', '0.56', '1722', 'Coinone', 'Coinone', 'https://coinone.co.kr/', '', '23', 'coinone.png', 'xrp.png');
INSERT INTO `block_quotation` VALUES ('291', 'xrpgateio', '3.39', '3.71', '3.37', '-5', '0.54', '91', 'Gateio', 'Gateio', 'https://gateio.io/', '', '23', 'gateio.png', 'xrp.png');
INSERT INTO `block_quotation` VALUES ('292', 'xrpbittrex', '3.37', '3.69', '3.37', '-6', '0.54', '218', 'Bittrex', 'Bittrex', 'https://bittrex.com/', 'BITTREX:XRPBTC', '23', 'bittrex.png', 'xrp.png');
INSERT INTO `block_quotation` VALUES ('293', 'xrpbitbank', '3.39', '3.68', '3.38', '-7', '0.54', '4491', 'bitbank', 'bitbank', 'https://bitbank.cc/', '', '23', 'bitbank.png', 'xrp.png');
INSERT INTO `block_quotation` VALUES ('294', 'xrphitbtc', '3.36', '3.41', '3.36', '-1', '0.53', '1854', 'HitBTC', 'HitBTC', 'https://hitbtc.com/zh_CN', '', '23', 'hitbtc.png', 'xrp.png');
INSERT INTO `block_quotation` VALUES ('295', 'xrpbinance', '3.36', '3.41', '3.35', '-1', '0.53', '4278', 'Binance', 'Binance', 'https://www.binance.com/', 'BINANCE:XRPBTC', '23', 'binance.png', 'xrp.png');
INSERT INTO `block_quotation` VALUES ('296', 'xrpcoinegg', '3.36', '3.47', '3.32', '-3', '0.53', '493', 'CoinEgg', 'CoinEgg', 'https://www.coinegg.com', '', '23', 'coinegg.png', 'xrp.png');
INSERT INTO `block_quotation` VALUES ('297', 'xrpexmo', '3.38', '3.42', '3.36', '-1', '0.54', '42', 'EXMO', 'exmo', 'https://exmo.com', '', '23', 'exmo.png', 'xrp.png');
INSERT INTO `block_quotation` VALUES ('298', 'xrpaex', '2.91', '3.19', '2.82', '3', '0.46', '2', 'AEX', 'aex', 'https://www.aex.com/', '', '23', 'aex.png', 'xrp.png');
INSERT INTO `block_quotation` VALUES ('299', 'xrppoloniex', '3.36', '3.41', '3.34', '-1', '0.53', '1005', 'Poloniex', 'Poloniex', 'https://www.poloniex.com', '', '23', 'poloniex.png', 'xrp.png');
INSERT INTO `block_quotation` VALUES ('300', 'dashhuobipro', '2021.50', '2142.72', '2013.20', '-4', '321.34', '1', 'Huobi', 'huobipro', 'https://www.huobipro.com/zh-cn/', 'HUOBIPRO:DASHBTC', '24', 'huobi.png', 'dash.png');
INSERT INTO `block_quotation` VALUES ('301', 'dashbithumb', '2118.71', '2372.48', '2101.00', '-7', '336.79', '0', 'Bithumb', 'bithumb', 'https://www.bithumb.com/', 'BITHUMB:DASHKRW', '24', 'bithumb.png', 'dash.png');
INSERT INTO `block_quotation` VALUES ('302', 'dashbittrex', '2017.04', '2308.75', '2015.75', '-10', '320.63', '0', 'Bittrex', 'Bittrex', 'https://bittrex.com/', 'BITTREX:DASHBTC', '24', 'bittrex.png', 'dash.png');
INSERT INTO `block_quotation` VALUES ('303', 'dashweex', '2115.62', '2405.00', '2113.04', '-8', '336.30', '0', 'weex', 'weex', 'https://www.weex.com/', '', '24', 'weex.png', 'dash.png');
INSERT INTO `block_quotation` VALUES ('304', 'dashyobit', '2031.98', '2150.37', '2018.03', '-3', '323.00', '2', 'YObit', 'yobit', 'https://yobit.net', '', '24', 'yobit.png', 'dash.png');
INSERT INTO `block_quotation` VALUES ('305', 'dashgateio', '2025.97', '2310.01', '1951.80', '-9', '322.05', '0', 'Gateio', 'Gateio', 'https://gateio.io/', '', '24', 'gateio.png', 'dash.png');
INSERT INTO `block_quotation` VALUES ('306', 'dashkraken', '2027.55', '2205.33', '2026.92', '-9', '322.30', '0', 'Kraken', 'kraken', 'https://www.kraken.com/', 'KRAKEN:DASHBTC', '24', 'kraken.png', 'dash.png');
INSERT INTO `block_quotation` VALUES ('307', 'dashliqui', '2038.85', '2137.59', '2030.64', '-4', '324.10', '0', 'Liqui', 'liqui', 'https://liqui.io/', '', '24', 'liqui.png', 'dash.png');
INSERT INTO `block_quotation` VALUES ('308', 'dashhitbtc', '2071.71', '2338.25', '2071.71', '-8', '329.32', '1', 'HitBTC', 'HitBTC', 'https://hitbtc.com/zh_CN', '', '24', 'hitbtc.png', 'dash.png');
INSERT INTO `block_quotation` VALUES ('309', 'dashbit-z', '2025.63', '2135.28', '2019.20', '-3', '322.00', '2', 'Bit-Z', 'Bit-Z', 'https://www.bit-z.com/', '', '24', 'bit-z.png', 'dash.png');
INSERT INTO `block_quotation` VALUES ('310', 'dashbinance', '2027.42', '2135.31', '2017.98', '-3', '322.28', '2', 'Binance', 'Binance', 'https://www.binance.com/', 'BINANCE:DASHBTC', '24', 'binance.png', 'dash.png');
INSERT INTO `block_quotation` VALUES ('311', 'dashtidex', '2013.66', '2135.59', '2005.64', '-4', '320.09', '0', 'Tidex', 'Tidex', 'https://tidex.com/', '', '24', 'tidex.png', 'dash.png');
INSERT INTO `block_quotation` VALUES ('312', 'dashexmo', '2021.00', '2128.03', '2018.68', '-3', '321.26', '0', 'EXMO', 'exmo', 'https://exmo.com', '', '24', 'exmo.png', 'dash.png');
INSERT INTO `block_quotation` VALUES ('313', 'dashbitbay', '2245.84', '2245.84', '2019.37', '0', '357.00', '0', 'BitBay', 'bitbay', 'https://bitbay.net', '', '24', 'bitbay.png', 'dash.png');
INSERT INTO `block_quotation` VALUES ('314', 'dashpoloniex', '2018.89', '2131.53', '2017.98', '-4', '320.92', '0', 'Poloniex', 'Poloniex', 'https://www.poloniex.com', '', '24', 'poloniex.png', 'dash.png');
INSERT INTO `block_quotation` VALUES ('315', 'dashbitfinex', '2031.45', '2314.28', '2031.45', '-8', '322.92', '1', 'Bitfinex', 'Bitfinex', 'https://www.bitfinex.com/', '', '24', 'bitfinex.png', 'dash.png');
INSERT INTO `block_quotation` VALUES ('316', 'xmrbithumb', '1196.27', '1310.77', '1196.27', '-3', '190.16', '1', 'Bithumb', 'bithumb', 'https://www.bithumb.com/', 'BITHUMB:XMRKRW', '25', 'bithumb.png', 'xmr.png');
INSERT INTO `block_quotation` VALUES ('317', 'xmrgateio', '1153.75', '1266.73', '1145.38', '-4', '183.40', '0', 'Gateio', 'Gateio', 'https://gateio.io/', '', '25', 'gateio.png', 'xmr.png');
INSERT INTO `block_quotation` VALUES ('318', 'xmrkraken', '1156.89', '1256.98', '1154.37', '-4', '183.90', '1', 'Kraken', 'kraken', 'https://www.kraken.com/', 'KRAKEN:XMRBTC', '25', 'kraken.png', 'xmr.png');
INSERT INTO `block_quotation` VALUES ('319', 'xmrbittrex', '1151.23', '1264.89', '1151.23', '-4', '183.00', '0', 'Bittrex', 'Bittrex', 'https://bittrex.com/', 'BITTREX:XMRBTC', '25', 'bittrex.png', 'xmr.png');
INSERT INTO `block_quotation` VALUES ('320', 'xmrbitfinex', '1153.30', '1290.32', '1150.66', '-5', '183.33', '3', 'Bitfinex', 'Bitfinex', 'https://www.bitfinex.com/', 'BITFINEX:XMRBTC', '25', 'bitfinex.png', 'xmr.png');
INSERT INTO `block_quotation` VALUES ('321', 'xmrhitbtc', '1175.64', '1285.16', '1175.64', '-4', '186.88', '1', 'HitBTC', 'HitBTC', 'https://hitbtc.com/zh_CN', '', '25', 'hitbtc.png', 'xmr.png');
INSERT INTO `block_quotation` VALUES ('322', 'xmrbinance', '1153.68', '1192.58', '1134.86', '0', '183.39', '4', 'Binance', 'Binance', 'https://www.binance.com/', 'BINANCE:XMRBTC', '25', 'binance.png', 'xmr.png');
INSERT INTO `block_quotation` VALUES ('323', 'xmrpoloniex', '1156.82', '1187.30', '1135.23', '1', '183.89', '1', 'Poloniex', 'Poloniex', 'https://www.poloniex.com', '', '25', 'poloniex.png', 'xmr.png');
INSERT INTO `block_quotation` VALUES ('324', 'eoshuobipro', '36.51', '37.48', '35.76', '0', '5.80', '90', 'Huobi', 'huobipro', 'https://www.huobipro.com/zh-cn/', 'HUOBIPRO:EOSBTC', '26', 'huobi.png', 'eos.png');
INSERT INTO `block_quotation` VALUES ('325', 'eoskraken', '36.63', '36.88', '35.45', '5', '5.82', '6', 'Kraken', 'kraken', 'https://www.kraken.com/', 'KRAKEN:EOSBTC', '26', 'kraken.png', 'eos.png');
INSERT INTO `block_quotation` VALUES ('326', 'eosbinance', '36.46', '38.01', '35.70', '-1', '5.80', '515', 'Binance', 'Binance', 'https://www.binance.com/', 'BINANCE:EOSBTC', '26', 'binance.png', 'eos.png');
INSERT INTO `block_quotation` VALUES ('327', 'eosbibox', '36.54', '37.46', '35.61', '-2', '5.81', '2', 'Bibox', 'bibox', 'https://www.bibox.com/', '', '26', 'bibox.png', 'eos.png');
INSERT INTO `block_quotation` VALUES ('328', 'eosexx', '37.03', '38.20', '34.54', '-2', '5.89', '1', 'EXX', 'exx', 'https://www.exx.com', '', '26', 'exx.png', 'eos.png');
INSERT INTO `block_quotation` VALUES ('329', 'eoscoolcoin', '28.73', '41.30', '28.73', '0', '4.57', '7', 'CoolCoin', 'coolcoin', 'https://www.coolcoin.com', '', '26', 'coolcoin.png', 'eos.png');
INSERT INTO `block_quotation` VALUES ('330', 'eosbithumb', '38.01', '41.67', '37.83', '-3', '6.04', '2464', 'Bithumb', 'bithumb', 'https://www.bithumb.com/', 'BITHUMB:EOSKRW', '26', 'bithumb.png', 'eos.png');
INSERT INTO `block_quotation` VALUES ('331', 'eoszb', '37.27', '40.58', '36.64', '-4', '5.93', '129', 'ZB', 'ZB', 'https://www.zb.com/', '', '26', 'zb.png', 'eos.png');
INSERT INTO `block_quotation` VALUES ('332', 'eosokex', '36.31', '37.49', '35.67', '-2', '5.77', '230', 'OKEX', 'OKEX', 'https://www.okex.com/', 'OKEX:EOSBCH', '26', 'okex.png', 'eos.png');
INSERT INTO `block_quotation` VALUES ('333', 'eosgateio', '36.59', '37.35', '35.81', '1', '5.82', '2', 'Gateio', 'Gateio', 'https://gateio.io/', '', '26', 'gateio.png', 'eos.png');
INSERT INTO `block_quotation` VALUES ('334', 'eosbitfinex', '36.49', '40.57', '36.39', '-6', '5.80', '683', 'Bitfinex', 'Bitfinex', 'https://www.bitfinex.com/', 'BITFINEX:EOSBTC', '26', 'bitfinex.png', 'eos.png');
INSERT INTO `block_quotation` VALUES ('335', 'eoshitbtc', '36.46', '37.50', '35.76', '-1', '5.80', '19', 'HitBTC', 'HitBTC', 'https://hitbtc.com/zh_CN', '', '26', 'hitbtc.png', 'eos.png');
INSERT INTO `block_quotation` VALUES ('336', 'omghuobipro', '54.91', '59.18', '54.44', '-5', '8.73', '12', 'Huobi', 'huobipro', 'https://www.huobipro.com/zh-cn/', 'HUOBIPRO:OMGBTC', '27', 'huobi.png', 'omg.png');
INSERT INTO `block_quotation` VALUES ('337', 'omgbittrex', '55.19', '64.46', '54.68', '-10', '8.77', '6', 'Bittrex', 'Bittrex', 'https://bittrex.com/', 'BITTREX:OMGBTC', '27', 'bittrex.png', 'omg.png');
INSERT INTO `block_quotation` VALUES ('338', 'omgpoloniex', '54.57', '58.97', '54.57', '-6', '8.67', '2', 'Poloniex', 'Poloniex', 'https://www.poloniex.com', '', '27', 'poloniex.png', 'omg.png');
INSERT INTO `block_quotation` VALUES ('339', 'omggateio', '55.05', '63.54', '55.05', '-11', '8.75', '0', 'Gateio', 'Gateio', 'https://gateio.io/', '', '27', 'gateio.png', 'omg.png');
INSERT INTO `block_quotation` VALUES ('340', 'omgliqui', '56.06', '63.66', '55.60', '-8', '8.91', '0', 'Liqui', 'liqui', 'https://liqui.io/', '', '27', 'liqui.png', 'omg.png');
INSERT INTO `block_quotation` VALUES ('341', 'omgbit-z', '57.67', '68.99', '56.91', '1', '9.17', '0', 'Bit-Z', 'Bit-Z', 'https://www.bit-z.com/', '', '27', 'bit-z.png', 'omg.png');
INSERT INTO `block_quotation` VALUES ('342', 'omghitbtc', '54.79', '59.61', '54.79', '-5', '8.71', '0', 'HitBTC', 'HitBTC', 'https://hitbtc.com/zh_CN', '', '27', 'hitbtc.png', 'omg.png');
INSERT INTO `block_quotation` VALUES ('343', 'omgbitfinex', '54.66', '64.52', '53.99', '-11', '8.69', '39', 'Bitfinex', 'Bitfinex', 'https://www.bitfinex.com/', 'BITFINEX:OMGBTC', '27', 'bitfinex.png', 'omg.png');
INSERT INTO `block_quotation` VALUES ('344', 'omgcoinnest', '56.07', '56.07', '47.27', '14', '8.91', '0', 'Coinnest', 'coinnest', 'https://www.coinnest.co.kr/', '', '27', 'coinnest.png', 'omg.png');
INSERT INTO `block_quotation` VALUES ('345', 'omgbinance', '54.77', '59.18', '54.53', '-4', '8.71', '46', 'Binance', 'Binance', 'https://www.binance.com/', 'BINANCE:OMGBTC', '27', 'binance.png', 'omg.png');
INSERT INTO `block_quotation` VALUES ('346', 'omgokex', '55.26', '59.41', '55.20', '-4', '8.78', '1', 'OKEX', 'OKEX', 'https://www.okex.com/', 'OKEX:OMGBTC', '27', 'okex.png', 'omg.png');
INSERT INTO `block_quotation` VALUES ('347', 'iotabinance', '6.97', '7.22', '6.82', '-2', '1.11', '950', 'Binance', 'Binance', 'https://www.binance.com/', 'BINANCE:IOTABTC', '28', 'binance.png', 'iota.png');
INSERT INTO `block_quotation` VALUES ('348', 'iotacoinone', '7.20', '8.09', '7.08', '-7', '1.14', '168', 'Coinone', 'Coinone', 'https://coinone.co.kr/', '', '28', 'coinone.png', 'iota.png');
INSERT INTO `block_quotation` VALUES ('349', 'iotaokex', '6.95', '7.13', '6.84', '-1', '1.10', '232', 'OKEX', 'OKEX', 'https://www.okex.com/', 'OKEX:IOTABTC', '28', 'okex.png', 'iota.png');
INSERT INTO `block_quotation` VALUES ('350', 'iotabitfinex', '6.95', '7.81', '6.85', '-8', '1.10', '628', 'Bitfinex', 'Bitfinex', 'https://www.bitfinex.com/', '', '28', 'bitfinex.png', 'iota.png');
INSERT INTO `block_quotation` VALUES ('351', 'zechuobipro', '1229.37', '1283.48', '1219.33', '-3', '195.42', '1', 'Huobi', 'huobipro', 'https://www.huobipro.com/zh-cn/', 'HUOBIPRO:ZECBTC', '29', 'huobi.png', 'zec.png');
INSERT INTO `block_quotation` VALUES ('352', 'zecbithumb', '1271.82', '1431.16', '1262.96', '-7', '202.17', '0', 'Bithumb', 'bithumb', 'https://www.bithumb.com/', 'BITHUMB:ZECKRW', '29', 'bithumb.png', 'zec.png');
INSERT INTO `block_quotation` VALUES ('353', 'zecbittrex', '1224.86', '1388.75', '1220.48', '-7', '194.71', '0', 'Bittrex', 'Bittrex', 'https://bittrex.com/', 'BITTREX:ZECBTC', '29', 'bittrex.png', 'zec.png');
INSERT INTO `block_quotation` VALUES ('354', 'zecbinance', '1224.12', '1284.42', '1221.26', '-2', '194.59', '0', 'Binance', 'Binance', 'https://www.binance.com/', 'BINANCE:ZECBTC', '29', 'binance.png', 'zec.png');
INSERT INTO `block_quotation` VALUES ('355', 'zecyobit', '1226.06', '1284.38', '1208.21', '-2', '194.90', '2', 'YObit', 'yobit', 'https://yobit.net', '', '29', 'yobit.png', 'zec.png');
INSERT INTO `block_quotation` VALUES ('356', 'zecgateio', '1236.66', '1392.55', '1235.40', '-6', '196.58', '0', 'Gateio', 'Gateio', 'https://gateio.io/', '', '29', 'gateio.png', 'zec.png');
INSERT INTO `block_quotation` VALUES ('357', 'zecallcoin', '1220.18', '1243.64', '1173.26', '-5', '193.96', '0', 'Allcoin', 'Allcoin', 'https://allcoin.com/', '', '29', 'allcoin.png', 'zec.png');
INSERT INTO `block_quotation` VALUES ('358', 'zeckraken', '1226.97', '1325.74', '1215.33', '-7', '195.04', '0', 'Kraken', 'kraken', 'https://www.kraken.com/', 'KRAKEN:ZECBTC', '29', 'kraken.png', 'zec.png');
INSERT INTO `block_quotation` VALUES ('359', 'zechitbtc', '1250.37', '1406.76', '1250.37', '-8', '198.76', '1', 'HitBTC', 'HitBTC', 'https://hitbtc.com/zh_CN', '', '29', 'hitbtc.png', 'zec.png');
INSERT INTO `block_quotation` VALUES ('360', 'zecbitfinex', '1226.72', '1383.93', '1226.72', '-7', '195.00', '1', 'Bitfinex', 'Bitfinex', 'https://www.bitfinex.com/', 'BITFINEX:ZECBTC', '29', 'bitfinex.png', 'zec.png');
INSERT INTO `block_quotation` VALUES ('361', 'zecbit-z', '1223.56', '1284.19', '1221.58', '-2', '194.50', '1', 'Bit-Z', 'Bit-Z', 'https://www.bit-z.com/', '', '29', 'bit-z.png', 'zec.png');
INSERT INTO `block_quotation` VALUES ('362', 'zecexmo', '1220.92', '1281.19', '1220.18', '-2', '194.08', '0', 'EXMO', 'exmo', 'https://exmo.com', '', '29', 'exmo.png', 'zec.png');
INSERT INTO `block_quotation` VALUES ('363', 'zecpoloniex', '1224.17', '1283.01', '1223.19', '-3', '194.59', '0', 'Poloniex', 'Poloniex', 'https://www.poloniex.com', '', '29', 'poloniex.png', 'zec.png');
INSERT INTO `block_quotation` VALUES ('364', 'zecokex', '1236.01', '1279.67', '1217.61', '-1', '196.48', '0', 'OKEX', 'OKEX', 'https://www.okex.com/', 'OKEX:ZECBTC', '29', 'okex.png', 'zec.png');
INSERT INTO `block_quotation` VALUES ('365', 'zecweex', '1277.11', '1442.43', '1276.54', '-8', '203.01', '0', 'weex', 'weex', 'https://www.weex.com/', '', '29', 'weex.png', 'zec.png');
INSERT INTO `block_quotation` VALUES ('366', 'wavesyobit', '24.64', '25.81', '24.64', '-2', '3.92', '110', 'YObit', 'yobit', 'https://yobit.net', '', '30', 'yobit.png', 'waves.png');
INSERT INTO `block_quotation` VALUES ('367', 'wavestidex', '24.45', '25.36', '24.16', '-2', '3.89', '194', 'Tidex', 'Tidex', 'https://tidex.com/', '', '30', 'tidex.png', 'waves.png');
INSERT INTO `block_quotation` VALUES ('368', 'waveshitbtc', '24.58', '25.48', '24.58', '-2', '3.91', '0', 'HitBTC', 'HitBTC', 'https://hitbtc.com/zh_CN', '', '30', 'hitbtc.png', 'waves.png');
INSERT INTO `block_quotation` VALUES ('369', 'wavesbittrex', '24.46', '25.58', '24.46', '-2', '3.89', '9', 'Bittrex', 'Bittrex', 'https://bittrex.com/', 'BITTREX:WAVESBTC', '30', 'bittrex.png', 'waves.png');
INSERT INTO `block_quotation` VALUES ('370', 'btghuobipro', '291.01', '325.41', '291.01', '-6', '46.26', '0', 'Huobi', 'huobipro', 'https://www.huobipro.com/zh-cn/', 'HUOBIPRO:BTGBTC', '31', 'huobi.png', 'btg.png');
INSERT INTO `block_quotation` VALUES ('371', 'btgbittrex', '300.87', '323.68', '300.35', '-4', '47.83', '2', 'Bittrex', 'Bittrex', 'https://bittrex.com/', 'BITTREX:BTGBTC', '31', 'bittrex.png', 'btg.png');
INSERT INTO `block_quotation` VALUES ('372', 'btgbinance', '300.96', '323.72', '298.43', '-4', '47.84', '7', 'Binance', 'Binance', 'https://www.binance.com/', 'BINANCE:BTGBTC', '31', 'binance.png', 'btg.png');
INSERT INTO `block_quotation` VALUES ('373', 'btggateio', '305.04', '323.82', '305.04', '-3', '48.49', '1', 'Gateio', 'Gateio', 'https://gateio.io/', '', '31', 'gateio.png', 'btg.png');
INSERT INTO `block_quotation` VALUES ('374', 'btgyobit', '300.35', '323.25', '300.35', '-5', '47.74', '0', 'YObit', 'yobit', 'https://yobit.net', '', '31', 'yobit.png', 'btg.png');
INSERT INTO `block_quotation` VALUES ('375', 'btghitbtc', '300.68', '322.55', '300.63', '-4', '47.80', '1', 'HitBTC', 'HitBTC', 'https://hitbtc.com/zh_CN', '', '31', 'hitbtc.png', 'btg.png');
INSERT INTO `block_quotation` VALUES ('376', 'btgcoinnest', '236.07', '290.95', '236.07', '-11', '37.53', '0', 'Coinnest', 'coinnest', 'https://www.coinnest.co.kr/', '', '31', 'coinnest.png', 'btg.png');
INSERT INTO `block_quotation` VALUES ('377', 'btgkorbit', '483.94', '631.48', '472.14', '-15', '76.93', '0', 'Korbit', 'korbit', 'https://www.korbit.co.kr/', '', '31', 'korbit.png', 'btg.png');
INSERT INTO `block_quotation` VALUES ('378', 'btgcoinone', '1135.78', '1273.88', '1091.81', '-8', '180.54', '0', 'Coinone', 'Coinone', 'https://coinone.co.kr/', '', '31', 'coinone.png', 'btg.png');
INSERT INTO `block_quotation` VALUES ('379', 'btgbithumb', '312.79', '361.77', '309.84', '-7', '49.72', '7', 'Bithumb', 'bithumb', 'https://www.bithumb.com/', 'BITHUMB:BTGKRW', '31', 'bithumb.png', 'btg.png');
INSERT INTO `block_quotation` VALUES ('380', 'btgbitfinex', '301.60', '350.74', '298.82', '-8', '47.94', '6', 'Bitfinex', 'Bitfinex', 'https://www.bitfinex.com/', 'BITFINEX:BTGBTC', '31', 'bitfinex.png', 'btg.png');
INSERT INTO `block_quotation` VALUES ('381', 'btsbinance', '0.86', '0.88', '0.83', '1', '0.14', '403', 'Binance', 'Binance', 'https://www.binance.com/', 'BINANCE:BTSBTC', '32', 'binance.png', 'bts.png');
INSERT INTO `block_quotation` VALUES ('382', 'btsexx', '0.83', '0.83', '0.82', '1', '0.13', '1', 'EXX', 'exx', 'https://www.exx.com', '', '32', 'exx.png', 'bts.png');
INSERT INTO `block_quotation` VALUES ('383', 'btszb', '0.87', '0.94', '0.87', '-4', '0.14', '413', 'ZB', 'ZB', 'https://www.zb.com/', '', '32', 'zb.png', 'bts.png');
INSERT INTO `block_quotation` VALUES ('384', 'xlmkraken', '1.22', '1.31', '1.22', '-5', '0.19', '613', 'Kraken', 'kraken', 'https://www.kraken.com/', 'KRAKEN:XLMBTC', '33', 'kraken.png', 'xlm.png');
INSERT INTO `block_quotation` VALUES ('385', 'xlmbittrex', '1.23', '1.31', '1.22', '-5', '0.19', '946', 'Bittrex', 'Bittrex', 'https://bittrex.com/', 'BITTREX:XLMBTC', '33', 'bittrex.png', 'xlm.png');
INSERT INTO `block_quotation` VALUES ('386', 'lskbinance', '50.96', '59.50', '50.17', '-12', '8.10', '33', 'Binance', 'Binance', 'https://www.binance.com/', 'BINANCE:LSKBTC', '34', 'binance.png', 'lsk.png');
INSERT INTO `block_quotation` VALUES ('387', 'lskyobit', '51.10', '59.13', '50.98', '-12', '8.12', '40', 'YObit', 'yobit', 'https://yobit.net', '', '34', 'yobit.png', 'lsk.png');
INSERT INTO `block_quotation` VALUES ('388', 'lskpoloniex', '51.19', '59.59', '46.93', '-12', '8.14', '25', 'Poloniex', 'Poloniex', 'https://www.poloniex.com', '', '34', 'poloniex.png', 'lsk.png');
INSERT INTO `block_quotation` VALUES ('389', 'lskhitbtc', '51.24', '59.47', '51.08', '-11', '8.14', '9', 'HitBTC', 'HitBTC', 'https://hitbtc.com/zh_CN', '', '34', 'hitbtc.png', 'lsk.png');
INSERT INTO `block_quotation` VALUES ('390', 'lskcoinegg', '52.84', '58.52', '51.01', '-7', '8.40', '43', 'CoinEgg', 'CoinEgg', 'https://www.coinegg.com', '', '34', 'coinegg.png', 'lsk.png');
INSERT INTO `block_quotation` VALUES ('391', 'lskbittrex', '51.45', '59.53', '50.93', '-11', '8.18', '19', 'Bittrex', 'Bittrex', 'https://bittrex.com/', 'BITTREX:LSKBTC', '34', 'bittrex.png', 'lsk.png');
