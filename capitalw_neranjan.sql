/*
Navicat MySQL Data Transfer

Source Server         : cp
Source Server Version : 50505
Source Host           : capitalwebsolution.com:3306
Source Database       : capitalw_neranjan

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2021-10-28 23:36:44
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `bankmas`
-- ----------------------------
DROP TABLE IF EXISTS `bankmas`;
CREATE TABLE `bankmas` (
  `bcode` varchar(255) DEFAULT NULL,
  `bbcode` varchar(255) DEFAULT NULL,
  `bname` varchar(255) DEFAULT NULL,
  `shname` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tmp_no` varchar(50) DEFAULT NULL,
  `act` varchar(20) DEFAULT NULL,
  `cancel` varchar(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `bankmas` (`bcode`)
) ENGINE=InnoDB AUTO_INCREMENT=1726 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of bankmas
-- ----------------------------
INSERT INTO `bankmas` VALUES ('7205', '000', 'Deutsche Bank', '          ', '2', '2', '1', '0');
INSERT INTO `bankmas` VALUES ('7162-034', '034', 'NTB Batticaloa', '          ', '3', '3', '1', '0');
INSERT INTO `bankmas` VALUES ('7214-35', '035', 'NDB Colombo02', '          ', '4', '4', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-049', '049', 'HNB Katunayake', '          ', '5', '5', '1', '0');
INSERT INTO `bankmas` VALUES ('7287-087', '087', 'SEY Nittabuwa', '          ', '6', '6', '1', '0');
INSERT INTO `bankmas` VALUES ('7162-1', '1', 'NTB Kiribathgoda   ', '          ', '7', '7', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-1', '1', 'SAM City Office        ', '          ', '9', '9', '1', '0');
INSERT INTO `bankmas` VALUES ('7287-1', '1', 'SEY City Office          ', '          ', '10', '10', '1', '0');
INSERT INTO `bankmas` VALUES ('7311-1', '1', 'PABC Colombo    ', '          ', '11', '11', '1', '0');
INSERT INTO `bankmas` VALUES ('7047-1', '1', 'CITY Bank Col - 7', '          ', '12', '12', '1', '0');
INSERT INTO `bankmas` VALUES ('7162-1', '1', 'NTB Colombo 2', '          ', '13', '13', '1', '0');
INSERT INTO `bankmas` VALUES ('7302-1', '1', 'UB Colombo', '          ', '14', '14', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-1', '1', 'PB Duke Street         ', '          ', '15', '15', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-1', '1', 'HNB Aluthkade    ', '          ', '16', '16', '1', '0');
INSERT INTO `bankmas` VALUES ('7092-1', '1', 'HSBC Colombo', '          ', '17', '17', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-1', '1', 'COM Head Office', '          ', '20', '20', '1', '0');
INSERT INTO `bankmas` VALUES ('7454-1', '1', 'DFCC Colombo 3      ', '          ', '21', '21', '1', '0');
INSERT INTO `bankmas` VALUES ('7047', '1', 'CITIBANK COL 7', '          ', '22', '22', '1', '0');
INSERT INTO `bankmas` VALUES ('7311-10', '10', 'PABC Negombo            ', '          ', '23', '23', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-10', '10', 'COM Wellawatte', '          ', '26', '26', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-10', '10', 'HNB Anuradhapura ', '          ', '27', '27', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-10', '10', 'PB Badulla             ', '          ', '28', '28', '1', '0');
INSERT INTO `bankmas` VALUES ('7287-10', '10', 'SEY Kegalle           ', '          ', '30', '30', '1', '0');
INSERT INTO `bankmas` VALUES ('7162-10', '10', 'NTB Battaramulla Br', '          ', '31', '31', '1', '0');
INSERT INTO `bankmas` VALUES ('7454-10', '10', 'DFCC Gampaha', '          ', '32', '32', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-100', '100', 'HNB Katugastota', '          ', '33', '33', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-100', '100', 'PB Marandagahamulla    ', '          ', '34', '34', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-100', '100', 'COM Ampara', '          ', '35', '35', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-100', '100', 'BOC Oruwala          ', '          ', '36', '36', '1', '0');
INSERT INTO `bankmas` VALUES ('7214-100', '100', 'NDB Head Office (Re', '          ', '37', '37', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-100', '100', 'SAM kandy Corporate', '          ', '38', '38', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-101', '101', 'BOC Galaha              ', '          ', '39', '39', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-101', '101', 'PB Rambukkana        ', '          ', '40', '40', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-101', '101', 'HNB Pelmadulla Branch  ', '          ', '41', '41', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-101', '101', 'SAM Gampola', '          ', '42', '42', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-101', '101', 'CBC Nawala', '          ', '43', '43', '1', '0');
INSERT INTO `bankmas` VALUES ('7287-101', '101', 'SY Battaramulla', '          ', '44', '44', '1', '0');
INSERT INTO `bankmas` VALUES ('7287-102', '102', 'SEY Kaduruwela', '          ', '45', '45', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-102', '102', 'HNB Ragama Branch      ', '          ', '46', '46', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-102', '102', 'PB Valaichenai        ', '          ', '47', '47', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-102', '102', 'BOC Bentota        ', '          ', '48', '48', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-102', '102', 'COM Gampola', '          ', '49', '49', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-103', '103', 'COM Elpitiya', '          ', '50', '50', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-103', '103', 'PB Piliyandala       ', '          ', '51', '51', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-103', '103', 'HNB Dematagoda ', '          ', '52', '52', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-103', '103', 'SAM Colombo', '          ', '53', '53', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-104', '104', 'HNB Narahenpita Branch', '          ', '54', '54', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-104', '104', 'PB Jaffna Main Branch    ', '          ', '55', '55', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-104', '104', 'COM Kamburupitiya', '          ', '56', '56', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-104', '104', 'BOC Welpalla            ', '          ', '57', '57', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-105', '105', 'COM Batticaloa', '          ', '58', '58', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-105', '105', 'PB Kayts            ', '          ', '59', '59', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-105', '105', 'HNB International Divis', '          ', '60', '60', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-106', '106', 'HNB Wellawaya Branch  ', '          ', '61', '61', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-106', '106', 'PB Jaffna Region-Nelliady ', '          ', '62', '62', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-106', '106', 'COM Bambalapitiya', '          ', '63', '63', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-106', '106', 'SAM Matugama', '          ', '64', '64', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-107', '107', 'COM Chunnakam', '          ', '65', '65', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-107', '107', 'PB Jaffna Region-Atchuvely', '          ', '66', '66', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-107', '107', 'HNB Elpitiya           ', '          ', '67', '67', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-107', '107', 'SAM Batticaloa', '          ', '68', '68', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-108', '108', 'HNB Maradana Branch    ', '          ', '69', '69', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-108', '108', 'PB Jaffna Region-Chankanai', '          ', '70', '70', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-108', '108', 'COM Nelliady', '          ', '71', '71', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-109', '109', 'COM Pilimatalawa', '          ', '72', '72', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-109', '109', 'PB Chunnakam           ', '          ', '73', '73', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-109', '109', 'HNB Aluthgama          ', '          ', '74', '74', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-11', '11', 'PB Bibile              ', '          ', '75', '75', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-11', '11', 'HNB Badulla    ', '          ', '76', '76', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-11', '11', 'COM Kollupitiya', '          ', '79', '79', '1', '0');
INSERT INTO `bankmas` VALUES ('7162-11', '11', 'NTB Cinnamon Garden', '          ', '80', '80', '1', '0');
INSERT INTO `bankmas` VALUES ('7287-11', '11', 'SEY Gampaha              ', '          ', '81', '81', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-11', '11', 'SAM Bambalapitiya      ', '          ', '82', '82', '1', '0');
INSERT INTO `bankmas` VALUES ('7214-11', '11', 'NDB 7214 - 011', '          ', '83', '83', '1', '0');
INSERT INTO `bankmas` VALUES ('7311-11', '11', 'PABC Gampaha            ', '          ', '84', '84', '1', '0');
INSERT INTO `bankmas` VALUES ('7287-110', '110', 'SEY Pussellawa', '          ', '85', '85', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-110', '110', 'SAM Hingurakgoda', '          ', '86', '86', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-110', '110', 'HNB Wennappuwa  ', '          ', '87', '87', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-110', '110', 'PB Chavakachcheri      ', '          ', '88', '88', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-111', '111', 'PB Paranthan             ', '          ', '89', '89', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-111', '111', 'HNB Awissawella        ', '          ', '90', '90', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-111', '111', 'SB Akkaraipattu', '          ', '91', '91', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-111', '111', 'COM Deniyaya', '          ', '92', '92', '1', '0');
INSERT INTO `bankmas` VALUES ('7287-111', '111', 'SEY Dummalasooriya', '          ', '93', '93', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-112', '112', 'HNB Boralesgamuwa Branc', '          ', '94', '94', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-112', '112', 'PB Teldeniya              ', '          ', '95', '95', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-112', '112', 'COM Weligama', '          ', '96', '96', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-113', '113', 'PB Batticaloa Town     ', '          ', '98', '98', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-113', '113', 'SAM Wellawaya', '          ', '99', '99', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-114', '114', 'SAM Embuldeniya', '          ', '100', '100', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-114', '114', 'PB Galagedera          ', '          ', '101', '101', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-114', '114', 'HNB Central Colombo Branch', '          ', '102', '102', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-115', '115', 'HNB Colombo West Branc', '          ', '103', '103', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-115', '115', 'SAM Kattankudy', '          ', '104', '104', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-115', '115', 'PB Galewela            ', '          ', '105', '105', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-115', '115', 'COM Hatton', '          ', '106', '106', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-116', '116', 'PB Passara               ', '          ', '107', '107', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-116', '116', 'SAM Tangalle', '          ', '108', '108', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-116', '116', 'HNB Colombo South Branch  ', '          ', '109', '109', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-117', '117', 'HNB Chunakam Branch       ', '          ', '110', '110', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-117', '117', 'PB Akuressa            ', '          ', '111', '111', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-117', '117', 'SB kirulapana', '          ', '112', '112', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-117', '117', 'COM Pitakotte', '          ', '113', '113', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-118', '118', 'SAM Baddegama', '          ', '114', '114', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-118', '118', 'PB Delgoda              ', '          ', '116', '116', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-118', '118', 'BOC Muthur          ', '          ', '117', '117', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-119', '119', 'PB Narahenpita         ', '          ', '118', '118', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-119', '119', 'HNB Kandana', '          ', '119', '119', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-119', '119', 'COM Kotikawatte', '          ', '120', '120', '1', '0');
INSERT INTO `bankmas` VALUES ('7162-12', '12', 'NTB Kurunegala Br  ', '          ', '121', '121', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-12', '12', 'SAM Chatham Street     ', '          ', '122', '122', '1', '0');
INSERT INTO `bankmas` VALUES ('7287-12', '12', 'SEY Nugegoda           ', '          ', '123', '123', '1', '0');
INSERT INTO `bankmas` VALUES ('7092-12', '12', 'HSBC Union Place                 ', '          ', '124', '124', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-12', '12', 'HNB Bandarawela', '          ', '125', '125', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-12', '12', 'PB Kurunegala              ', '          ', '126', '126', '1', '0');
INSERT INTO `bankmas` VALUES ('7038-12', '12', 'SCB Negombo Branch ', '          ', '127', '127', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-12', '12', 'COM Kotahena', '          ', '129', '129', '1', '0');
INSERT INTO `bankmas` VALUES ('7311-12', '12', 'PABC Kurunegala         ', '          ', '130', '130', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-120', '120', 'PB Walasmulla         ', '          ', '131', '131', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-120', '120', 'COM Moneragala', '          ', '132', '132', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-120', '120', 'HNB Dniyaya', '          ', '133', '133', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-121', '121', 'CBC Kottawa', '          ', '134', '134', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-121', '121', 'PB Bandaragama         ', '          ', '135', '135', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-121', '121', 'SAM Chenkalady', '          ', '136', '136', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-121', '121', 'HNB Nikaweratiya', '          ', '137', '137', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-122', '122', 'PB Wilgamuwa              ', '          ', '138', '138', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-122', '122', 'BOC Galenbindunuwewa    ', '          ', '139', '139', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-122', '122', 'HNB Delgoda', '          ', '140', '140', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-122', '122', 'CBC Kurunegala', '          ', '141', '141', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-123', '123', 'PB Eravur              ', '          ', '142', '142', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-123', '123', 'COM Tangalle', '          ', '143', '143', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-123', '123', 'HNB Alawwa', '          ', '144', '144', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-124', '124', 'COM Tissamaha', '          ', '145', '145', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-124', '124', 'PB Nikeweratiya          ', '          ', '146', '146', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-124', '124', 'SAM Oddamavady', '          ', '147', '147', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-124', '124', 'HNB Mahiyangane', '          ', '148', '148', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-125', '125', 'SAM kalavanchikudy', '          ', '149', '149', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-125', '125', 'PB Kalpitiya             ', '          ', '150', '150', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-125', '125', 'CBC Neluwa', '          ', '151', '151', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-125', '125', 'HNB Mathugama', '          ', '152', '152', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-126', '126', 'HNB Warakapola', '          ', '153', '153', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-126', '126', 'SAM Sainthamaruthu', '          ', '154', '154', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-126', '126', 'PB Grandpass         ', '          ', '155', '155', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-127', '127', 'PB Nildandhahinna        ', '          ', '156', '156', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-127', '127', 'BOC Padavi Parakramap', '          ', '157', '157', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-127', '127', 'SAM Grandpass', '          ', '158', '158', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-127', '127', 'HNB Middeniya', '          ', '159', '159', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-128', '128', 'COM Warakapola', '          ', '160', '160', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-128', '128', 'PB Rattota           ', '          ', '161', '161', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-128', '128', 'HNB Galgamuwa', '          ', '162', '162', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-129', '129', 'PB Rakwana           ', '          ', '163', '163', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-129', '129', 'HNB Kohuwala', '          ', '164', '164', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-129', '129', 'CBC Udugama', '          ', '165', '165', '1', '0');
INSERT INTO `bankmas` VALUES ('7162-13', '13', 'NTB Maharagama', '          ', '166', '166', '1', '0');
INSERT INTO `bankmas` VALUES ('7287-13', '13', 'SEY Negombo              ', '          ', '167', '167', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-13', '13', 'SAM Maharagama         ', '          ', '168', '168', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-13', '13', 'PB Galle Fort           ', '          ', '169', '169', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-13', '13', 'HNB Galle      ', '          ', '170', '170', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-13', '13', 'COM Negombo', '          ', '171', '171', '1', '0');
INSERT INTO `bankmas` VALUES ('7311-13', '13', 'PABC Matara           ', '          ', '172', '172', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-130', '130', 'PB Hakmana           ', '          ', '173', '173', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-130', '130', 'HNB Weliweriya', '          ', '174', '174', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-130', '130', 'SAM Pottuvil', '          ', '175', '175', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-130', '130', 'COM Athurugiriya', '          ', '176', '176', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-131', '131', 'CBC Raddolugama', '          ', '177', '177', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-131', '131', 'HNB Handala', '          ', '178', '178', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-131', '131', 'PB Udugama                ', '          ', '179', '179', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-132', '132', 'PB Deniyaya            ', '          ', '180', '180', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-132', '132', 'SAM Nattandiya', '          ', '181', '181', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-133', '133', 'PB Kamburupitiya        ', '          ', '182', '182', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-134', '134', 'PB Nuwara - Eliya        ', '          ', '183', '183', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-134', '134', 'COM Delkada', '          ', '184', '184', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-135', '135', 'COM Karapitiya', '          ', '185', '185', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-135', '135', 'SAM Gangodawila', '          ', '186', '186', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-135', '135', 'HNB Chenkaladi', '          ', '187', '187', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-135', '135', 'PB Dickwella           ', '          ', '188', '188', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-136', '136', 'PB Hikkaduwa            ', '          ', '190', '190', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-136', '136', 'COM Welimada', '          ', '191', '191', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-137', '137', 'PB Makandura           ', '          ', '192', '192', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-137', '137', 'SAM Hanwella', '          ', '193', '193', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-138', '138', 'HNB Kelaniya', '          ', '194', '194', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-138', '138', 'PB Dambulla            ', '          ', '195', '195', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-138', '138', 'SAM Nochchiyagama', '          ', '196', '196', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-139', '139', 'PB Pettah            ', '          ', '197', '197', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-139', '139', 'BOC Weeraketiya      ', '          ', '198', '198', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-139', '139', 'HNB Hanwella', '          ', '199', '199', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-139', '139', 'CBC Kirindiwela', '          ', '200', '200', '1', '0');
INSERT INTO `bankmas` VALUES ('7162-14', '14', 'NTB Moratuwa Br.   ', '          ', '201', '201', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-14', '14', 'SAM Deniyaya           ', '          ', '202', '202', '1', '0');
INSERT INTO `bankmas` VALUES ('7287-14', '14', 'SEY Dehiwela             ', '          ', '203', '203', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-14', '14', 'COM Hikkaduwa', '          ', '204', '204', '1', '0');
INSERT INTO `bankmas` VALUES ('7038-14', '14', 'SCB Wattala Branch ', '          ', '205', '205', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-14', '14', 'HNB Gampola    ', '          ', '206', '206', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-14', '14', 'PB Union Place            ', '          ', '207', '207', '1', '0');
INSERT INTO `bankmas` VALUES ('7454-14', '14', 'DFCC Kaduruwela', '          ', '208', '208', '1', '0');
INSERT INTO `bankmas` VALUES ('7311-14', '14', 'PABC Katahena              ', '          ', '209', '209', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-140', '140', 'PB Hasalaka          ', '          ', '210', '210', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-140', '140', 'HNB Padukka', '          ', '211', '211', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-140', '140', 'COM Digana', '          ', '212', '212', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-141', '141', 'CBC Polgahawela', '          ', '213', '213', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-141', '141', 'PB Velvettiturai      ', '          ', '214', '214', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-142', '142', 'PB Kochichikade         ', '          ', '215', '215', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-142', '142', 'CBC Boralesgamuwa', '          ', '216', '216', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-142', '142', 'HNB Thalawathugoda', '          ', '217', '217', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-142', '142', 'SAM Boralesgamuwa', '          ', '218', '218', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-143', '143', 'SAM Anamaduwa', '          ', '219', '219', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-143', '143', 'Hnb Madawachchiya', '          ', '220', '220', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-143', '143', 'PB Suduwella             ', '          ', '221', '221', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-143', '143', 'COM Hanwella', '          ', '222', '222', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-144', '144', 'COM Pannala', '          ', '223', '223', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-144', '144', 'BOC Yatawatte           ', '          ', '224', '224', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-144', '144', 'PB Hettipola            ', '          ', '225', '225', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-144', '144', 'SAM Maradana', '          ', '226', '226', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-145', '145', 'HNB Negombo metro', '          ', '227', '227', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-145', '145', 'COM Ward place', '          ', '228', '228', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-145', '145', 'SAM Buttala', '          ', '229', '229', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-145', '145', 'PB Wellawatte         ', '          ', '230', '230', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-146', '146', 'PB Naula               ', '          ', '231', '231', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-146', '146', 'COM Wadduwa', '          ', '232', '232', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-147', '147', 'CBC Biyagama', '          ', '233', '233', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-147', '147', 'PB Buttala             ', '          ', '234', '234', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-148', '148', 'PB Panadura              ', '          ', '235', '235', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-148', '148', 'cbc puttalama', '          ', '236', '236', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-148', '148', 'HNB Giriuulla', '          ', '237', '237', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-149', '149', 'SAM Kekirawa', '          ', '238', '238', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-149', '149', 'HNB Galewela', '          ', '239', '239', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-149', '149', 'PB Alawwa              ', '          ', '240', '240', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-149', '149', 'CBC Pelmadulla', '          ', '241', '241', '1', '0');
INSERT INTO `bankmas` VALUES ('7311-15', '15', 'PABC Dehiwala             ', '          ', '242', '242', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-15', '15', 'PB Ampara              ', '          ', '243', '243', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-15', '15', 'HNB Hatton     ', '          ', '244', '244', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-15', '15', 'COM Hingurakgoda', '          ', '246', '246', '1', '0');
INSERT INTO `bankmas` VALUES ('7162-15', '15', 'NTB Borella Branch ', '          ', '247', '247', '1', '0');
INSERT INTO `bankmas` VALUES ('7302-15', '15', 'UB Nugegoda', '          ', '248', '248', '1', '0');
INSERT INTO `bankmas` VALUES ('7287-15', '15', 'SEY Chilaw               ', '          ', '249', '249', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-15', '15', 'SAM Morawaka           ', '          ', '250', '250', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-150', '150', 'PB Kebithigollawa   ', '          ', '251', '251', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-151', '151', 'PB Diyatalawa          ', '          ', '252', '252', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-151', '151', 'HNB Akuressa', '          ', '253', '253', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-152', '152', 'SAM Pussellawa', '          ', '254', '254', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-152', '152', 'PB Matara Dharmapala Ma', '          ', '255', '255', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-152', '152', 'BOC Pemaduwa          ', '          ', '256', '256', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-153', '153', 'PB Akurana             ', '          ', '257', '257', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-153', '153', 'HNB Wariyapola', '          ', '258', '258', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-154', '154', 'CBC Mannar', '          ', '259', '259', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-154', '154', 'PB Balapitiya          ', '          ', '260', '260', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-155', '155', 'PB Kahawatte             ', '          ', '261', '261', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-156', '156', 'PB Uva Paranagama         ', '          ', '262', '262', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-156', '156', 'HNB Malabe', '          ', '263', '263', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-157', '157', 'PB Menikhinna          ', '          ', '264', '264', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-157', '157', 'BOC Tirappane         ', '          ', '265', '265', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-158', '158', 'PB Senkadagala       ', '          ', '266', '266', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-158', '158', 'COM Eheliyagoda', '          ', '267', '267', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-158', '158', 'SAM Middeniya', '          ', '268', '268', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-159', '159', 'COM Valaichchenai', '          ', '269', '269', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-159', '159', 'PB Kadugannawa           ', '          ', '270', '270', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-16', '16', 'HNB Jaffna     ', '          ', '271', '271', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-16', '16', 'PB Welimada           ', '          ', '272', '272', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-16', '16', 'COM Kurunegala', '          ', '273', '273', '1', '0');
INSERT INTO `bankmas` VALUES ('7454-16', '16', 'Dfcc Maharagama', '          ', '275', '275', '1', '0');
INSERT INTO `bankmas` VALUES ('7162-16', '16', 'NTB Kiribathgoda   ', '          ', '276', '276', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-16', '16', 'SAM Gampaha            ', '          ', '277', '277', '1', '0');
INSERT INTO `bankmas` VALUES ('7287-16', '16', 'SEY Galle                ', '          ', '278', '278', '1', '0');
INSERT INTO `bankmas` VALUES ('7311-16', '16', 'PABC Wattala', '          ', '279', '279', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-160', '160', 'SPB Mawanella', '          ', '280', '280', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-160', '160', 'HNB Beruwala', '          ', '281', '281', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-160', '160', 'PB Pelmadulla        ', '          ', '283', '283', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-161', '161', 'PB Bulathsinhala       ', '          ', '284', '284', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-161', '161', 'COM Mawathagama', '          ', '285', '285', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-162', '162', 'HNB Rikillagaskada', '          ', '286', '286', '1', '0');
INSERT INTO `bankmas` VALUES ('7056', '162', 'CBC Thabuththegama', '          ', '287', '287', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-162', '162', 'PB Jaffna Model Market   ', '          ', '288', '288', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-162', '162', 'BOC Medawachchiya    ', '          ', '289', '289', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-163', '163', 'PB Wariyapola         ', '          ', '290', '290', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-163', '163', 'COM Ruwanwella', '          ', '291', '291', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-163', '163', 'HNB Yakkala', '          ', '292', '292', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-163', '163', 'SAM Rikillagaskada', '          ', '293', '293', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-164', '164', 'COM Dankotuwa', '          ', '294', '294', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-164', '164', 'PB Potuvil           ', '          ', '295', '295', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-165', '165', 'PB Mankulam            ', '          ', '296', '296', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-165', '165', 'HNB Kalawanchikudy', '          ', '297', '297', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-166', '166', 'HNB Pugoda', '          ', '298', '298', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-166', '166', 'COM Hambantota', '          ', '299', '299', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-166', '166', 'SAM Pannala', '          ', '300', '300', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-166', '166', 'PB Murunkan            ', '          ', '301', '301', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-167', '167', 'PB Town Hall  Colombo.    ', '          ', '302', '302', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-167', '167', 'BOC Rikillagaskada    ', '          ', '303', '303', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-167', '167', 'SAM Dehiattakandiya', '          ', '304', '304', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-167', '167', 'HNB Valachchenai', '          ', '305', '305', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-168', '168', 'HNB Madampe', '          ', '306', '306', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-168', '168', 'SBL anuradapura', '          ', '307', '307', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-168', '168', 'CBC ERAVUR', '          ', '308', '308', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-168', '168', 'PB Kataragama       ', '          ', '309', '309', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-169', '169', 'PB Galle Main Street    ', '          ', '310', '310', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-169', '169', 'SAM Chavakachcheri', '          ', '311', '311', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-169', '169', 'HNB Kinniya', '          ', '312', '312', '1', '0');
INSERT INTO `bankmas` VALUES ('7162-17', '17', 'NTB Panadura       ', '          ', '313', '313', '1', '0');
INSERT INTO `bankmas` VALUES ('7287-17', '17', 'SEY Kandy             ', '          ', '314', '314', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-17', '17', 'SAM Dehiwala           ', '          ', '315', '315', '1', '0');
INSERT INTO `bankmas` VALUES ('7454-17', '17', 'DFCC Bandarawela', '          ', '316', '316', '1', '0');
INSERT INTO `bankmas` VALUES ('7311', '17', 'PABC Panadura', '          ', '317', '317', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-17', '17', 'PB Balangoda           ', '          ', '318', '318', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-17', '17', 'HNB Kahawatte  ', '          ', '319', '319', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-17', '17', 'COM Old Moor Street', '          ', '320', '320', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-170', '170', 'PB Eppawela            ', '          ', '321', '321', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-171', '171', 'PB Nochchiyagama         ', '          ', '322', '322', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-172', '172', 'PB Bingiriya           ', '          ', '323', '323', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-172', '172', 'BOC Kobeigane           ', '          ', '324', '324', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-172', '172', 'COM Akkarapattu', '          ', '325', '325', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-173', '173', 'SBL Gothatuwa new town', '          ', '326', '326', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-173', '173', 'PB Pundaluoya        ', '          ', '327', '327', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-174', '174', 'PB Nugegoda              ', '          ', '328', '328', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-174', '174', 'COM Wariyapola', '          ', '329', '329', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-175', '175', 'PB Kandana              ', '          ', '330', '330', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-176', '176', 'COM Middeniya', '          ', '332', '332', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-177', '177', 'PB Galenbindunuwewa    ', '          ', '333', '333', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-178', '178', 'HNB Dikwella', '          ', '335', '335', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-178', '178', 'SAM Thalawathugoda', '          ', '336', '336', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-178', '178', 'PB Maskeliya           ', '          ', '337', '337', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-179', '179', 'PB Galnewa              ', '          ', '338', '338', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-179', '179', 'HNB Medirigiriya', '          ', '339', '339', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-179', '179', 'SAM Akuressa', '          ', '340', '340', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-179', '179', 'BOC Wilgamuwa           ', '          ', '341', '341', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-18', '18', 'COM Maharagama', '          ', '342', '342', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-18', '18', 'HNB Kandy      ', '          ', '344', '344', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-18', '18', 'PB Gampola              ', '          ', '345', '345', '1', '0');
INSERT INTO `bankmas` VALUES ('7162-18', '18', 'NTB Gampaha        ', '          ', '346', '346', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-18', '18', 'SAM Ratmalana          ', '          ', '347', '347', '1', '0');
INSERT INTO `bankmas` VALUES ('7287-18', '18', 'SEY Kurunegala          ', '          ', '348', '348', '1', '0');
INSERT INTO `bankmas` VALUES ('7214-18', '18', 'NDB Colombo 2', '          ', '349', '349', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-180', '180', 'Beliatta', '          ', '350', '350', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-180', '180', 'PB Deraniyagala        ', '          ', '351', '351', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-181', '181', 'PB Maha-Oya            ', '          ', '352', '352', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-182', '182', 'CBC Giriulla', '          ', '353', '353', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-182', '182', 'HNB Uhana', '          ', '354', '354', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-182', '182', 'SAM Ahangama', '          ', '355', '355', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-183', '183', 'SAM Marandagahamula', '          ', '356', '356', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-183', '183', 'PB Ankumbura           ', '          ', '357', '357', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-183', '183', 'BOC Sewagama          ', '          ', '358', '358', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-184', '184', 'PB Galgamuwa            ', '          ', '359', '359', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-185', '185', 'PB Galigamuwa/Kegalle   ', '          ', '360', '360', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-185', '185', 'SAM Nithavur', '          ', '361', '361', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-185', '185', 'HNB Maruthamunai', '          ', '362', '362', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-186', '186', 'PB Hatton               ', '          ', '363', '363', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-188', '188', 'PB Ahangama            ', '          ', '364', '364', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-188', '188', 'HNB Kundasale', '          ', '365', '365', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-189', '189', 'SAM Madampe', '          ', '366', '366', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-189', '189', 'PB Uhana                  ', '          ', '367', '367', '1', '0');
INSERT INTO `bankmas` VALUES ('7287-19', '19', 'SEY Nuwara Eliya         ', '          ', '369', '369', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-19', '19', 'SAM Piliyandala        ', '          ', '370', '370', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-19', '19', 'COM Borella', '          ', '371', '371', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-19', '19', 'PB Dehiwala            ', '          ', '372', '372', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-19', '19', 'HNB Kurunagala          ', '          ', '373', '373', '1', '0');
INSERT INTO `bankmas` VALUES ('7454-19', '19', 'DFCC Kottawa', '          ', '374', '374', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-190', '190', 'SAM Galewela', '          ', '375', '375', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-190', '190', 'PB Kaluwanchikudy       ', '          ', '376', '376', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-191', '191', 'PB Malwana             ', '          ', '377', '377', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-192', '192', 'PB Nivithigala           ', '          ', '378', '378', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-192', '192', 'SAM Padukka', '          ', '379', '379', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-193', '193', 'CBC Kattankudi', '          ', '380', '380', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-193', '193', 'PB Ridigama          ', '          ', '381', '381', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-193', '193', 'HNB Aralaganwila', '          ', '382', '382', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-194', '194', 'SBL Marawila', '          ', '383', '383', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-194', '194', 'PB Kolonnawa            ', '          ', '384', '384', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-195', '195', 'PB Haldummulla       ', '          ', '385', '385', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-196', '196', 'PB Kaduwela              ', '          ', '386', '386', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-196', '196', 'HNB Dehiattakandiya', '          ', '387', '387', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-197', '197', 'PB Uragasmanhandiya       ', '          ', '388', '388', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-198', '198', 'PB Mirigama            ', '          ', '389', '389', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-198', '198', 'SBL Divulapitiya', '          ', '390', '390', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-199', '199', 'PB Mawathagama         ', '          ', '391', '391', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-199', '199', 'HNB Urubokka', '          ', '392', '392', '1', '0');
INSERT INTO `bankmas` VALUES ('7144-2', '2', 'State Bank fo India', '          ', '393', '393', '1', '0');
INSERT INTO `bankmas` VALUES ('7269-2', '2', 'MCB Bank Pettah', '          ', '394', '394', '1', '0');
INSERT INTO `bankmas` VALUES ('7162-2', '2', 'NTB Kollupitya     ', '          ', '395', '395', '1', '0');
INSERT INTO `bankmas` VALUES ('7214-2', '2', 'NDB Kandy Br    ', '          ', '396', '396', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-2', '2', 'SAM Pettah             ', '          ', '397', '397', '1', '0');
INSERT INTO `bankmas` VALUES ('7311-2', '2', 'PABC Panchikawatte      ', '          ', '398', '398', '1', '0');
INSERT INTO `bankmas` VALUES ('7287-2', '2', 'SEY Matara              ', '          ', '399', '399', '1', '0');
INSERT INTO `bankmas` VALUES ('7454', '2', 'DFCC Nugegoda', '          ', '400', '400', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-2', '2', 'PB Matale              ', '          ', '401', '401', '1', '0');
INSERT INTO `bankmas` VALUES ('7092-2', '2', 'HSBC Kandy                         ', '          ', '402', '402', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-2', '2', 'HNB City Office', '          ', '403', '403', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-2', '2', 'COM City Office', '          ', '404', '404', '1', '0');
INSERT INTO `bankmas` VALUES ('7454-2', '2', 'DFCC Gangodawila Bra', '          ', '406', '406', '1', '0');
INSERT INTO `bankmas` VALUES ('7454-20', '20', 'DFCC Dambulla', '          ', '407', '407', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-20', '20', 'COM Nugegoda', '          ', '409', '409', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-20', '20', 'HNB Mannar              ', '          ', '410', '410', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-20', '20', 'PB Mullativu           ', '          ', '411', '411', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-20', '20', 'SAM Eheliyagoda        ', '          ', '412', '412', '1', '0');
INSERT INTO `bankmas` VALUES ('7287-20', '20', 'SEY Balangoda            ', '          ', '413', '413', '1', '0');
INSERT INTO `bankmas` VALUES ('7162-20', '20', 'NTB Ward Place', '          ', '414', '414', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-200', '200', 'PB Majestic City          ', '          ', '416', '416', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-201', '201', 'PB Ukuwela                ', '          ', '417', '417', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-201', '201', 'SAM Ruwanwella', '          ', '418', '418', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-202', '202', 'HNB Hikkaduwa', '          ', '419', '419', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-202', '202', 'PB Kirindiwela          ', '          ', '421', '421', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-203', '203', 'PB Habarana          ', '          ', '422', '422', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-203', '203', 'SAM Kahatagasdigiliya', '          ', '423', '423', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-204', '204', 'PB Head Quarters Branch ', '          ', '425', '425', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-205', '205', 'PB Angunakolapalessa   ', '          ', '426', '426', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-206', '206', 'PB Davulagala          ', '          ', '428', '428', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-206', '206', 'SAM Kamburupitiya', '          ', '429', '429', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-207', '207', 'SBL Makola', '          ', '430', '430', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-207', '207', 'PB Ibbagamuwa           ', '          ', '431', '431', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-208', '208', 'PB Battaramulla        ', '          ', '432', '432', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-209', '209', 'PB Boralanda           ', '          ', '433', '433', '1', '0');
INSERT INTO `bankmas` VALUES ('7162-21', '21', 'NTB Colombo 1', '          ', '434', '434', '1', '0');
INSERT INTO `bankmas` VALUES ('7311-21', '21', 'PAB Narahenpita', '          ', '435', '435', '1', '0');
INSERT INTO `bankmas` VALUES ('7454-21', '21', 'DFCC Wattala', '          ', '436', '436', '1', '0');
INSERT INTO `bankmas` VALUES ('7287-21', '21', 'SEY Anuradhapura         ', '          ', '437', '437', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-21', '21', 'SAM Anuradhapura       ', '          ', '438', '438', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-21', '21', 'PB Minuwangoda         ', '          ', '439', '439', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-21', '21', 'HNB Maskeliya          ', '          ', '440', '440', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-21', '21', 'COM Kegalle', '          ', '442', '442', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-210', '210', 'SAM Karagampitiya', '          ', '444', '444', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-210', '210', 'PB Kollupitiya Co-op Hou', '          ', '445', '445', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-211', '211', 'PB Panwila    ', '          ', '446', '446', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-213', '213', 'HNB Weligama', '          ', '447', '447', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-214', '214', 'HNB Veyangoda', '          ', '448', '448', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-214', '214', 'PB Mutuwal             ', '          ', '449', '449', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-215', '215', 'PB Madampe             ', '          ', '450', '450', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-215', '215', 'HNB Batapola', '          ', '451', '451', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-216', '216', 'HNB Yakkalamulla', '          ', '452', '452', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-216', '216', 'PB Haputale          ', '          ', '453', '453', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-216', '216', 'CBC Ramanayake mawatha', '          ', '454', '454', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-217', '217', 'PB Mahara              ', '          ', '455', '455', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-217', '217', 'HNB Walasmulla', '          ', '456', '456', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-217', '217', 'BOC Horowpothana        ', '          ', '457', '457', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-218', '218', 'PB Horowpothana         ', '          ', '458', '458', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-219', '219', 'PB Tambuttegama           ', '          ', '459', '459', '1', '0');
INSERT INTO `bankmas` VALUES ('7311-22', '22', 'PABC Kirullapone', '          ', '460', '460', '1', '0');
INSERT INTO `bankmas` VALUES ('7463-22', '22', 'Ammana B Kaduruwela', '          ', '461', '461', '1', '0');
INSERT INTO `bankmas` VALUES ('7454-22', '22', 'DFCC Kuliyapitiya', '          ', '462', '462', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-22', '22', 'SAM Avissawella        ', '          ', '463', '463', '1', '0');
INSERT INTO `bankmas` VALUES ('7287-22', '22', 'SEY Grandpass            ', '          ', '464', '464', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-22', '22', 'COM Narahenpita', '          ', '466', '466', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-22', '22', 'HNB Moratuwa           ', '          ', '467', '467', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-22', '22', 'PB Hanguranketha     ', '          ', '468', '468', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-220', '220', 'HNB Passara', '          ', '469', '469', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-220', '220', 'PB Anuradhapura Nuwaraw', '          ', '470', '470', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-221', '221', 'PB Hemmathagama         ', '          ', '471', '471', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-222', '222', 'PB Wattala            ', '          ', '472', '472', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-223', '223', 'PB Karativu         ', '          ', '473', '473', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-223', '223', 'BOC Nildandahinna    ', '          ', '474', '474', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-224', '224', 'PB Thirukkovil            ', '          ', '475', '475', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-225', '225', 'PB Haliela           ', '          ', '476', '476', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-226', '226', 'PB Kurunegala-Maliyadev', '          ', '477', '477', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-227', '227', 'PB Chenkalady          ', '          ', '478', '478', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-228', '228', 'PB Addalachchenai      ', '          ', '479', '479', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-229', '229', 'PB Hanwella          ', '          ', '480', '480', '1', '0');
INSERT INTO `bankmas` VALUES ('7454-23', '23', 'DFCC Panadura', '          ', '481', '481', '1', '0');
INSERT INTO `bankmas` VALUES ('7311-23', '23', 'PABC Maharagama', '          ', '482', '482', '1', '0');
INSERT INTO `bankmas` VALUES ('7162-23', '23', 'NTB 7162~023', '          ', '483', '483', '1', '0');
INSERT INTO `bankmas` VALUES ('7287-23', '23', 'SEY Horana               ', '          ', '484', '484', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-23', '23', 'SAM Kuliyapitiya       ', '          ', '485', '485', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-23', '23', 'COM Mutuwal', '          ', '486', '486', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-23', '23', 'PB Kalmunai              ', '          ', '488', '488', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-23', '23', 'HNB Nawalapitiya       ', '          ', '489', '489', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-230', '230', 'PB Thanamalwila           ', '          ', '490', '490', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-231', '231', 'PB Medirigiriya        ', '          ', '491', '491', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-232', '232', 'PB Polonnaruwa Town  ', '          ', '492', '492', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-232', '232', 'BOC Wahakotte        ', '          ', '493', '493', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-233', '233', 'PB Serunuwara            ', '          ', '494', '494', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-234', '234', 'PB Batapola            ', '          ', '495', '495', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-235', '235', 'PB Kalawana              ', '          ', '496', '496', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-236', '236', 'PB Maradana            ', '          ', '497', '497', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-236', '236', 'BOC Ipalogama           ', '          ', '498', '498', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-237', '237', 'PB Kiribathgoda         ', '          ', '499', '499', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-238', '238', 'PB Gonagaladeniya    ', '          ', '500', '500', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-238', '238', 'BOC Medagama         ', '          ', '501', '501', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-239', '239', 'PB Ja-Ela                ', '          ', '502', '502', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-24', '24', 'SAM Negombo Branch     ', '          ', '503', '503', '1', '0');
INSERT INTO `bankmas` VALUES ('7287-24', '24', 'SEY Ambalangoda         ', '          ', '504', '504', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-24', '24', 'COM Pettah', '          ', '506', '506', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-24', '24', 'HNB Negombo            ', '          ', '507', '507', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-24', '24', 'PB Chilaw              ', '          ', '508', '508', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-240', '240', 'PB Keppetipola          ', '          ', '509', '509', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-241', '241', 'PB Pallepola             ', '          ', '510', '510', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-242', '242', 'PB Bakamuna            ', '          ', '511', '511', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-243', '243', 'PB Devinuwara          ', '          ', '512', '512', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-244', '244', 'PB Beliatta            ', '          ', '513', '513', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-245', '245', 'PB Godakawela           ', '          ', '514', '514', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-246', '246', 'PB Meegalewa           ', '          ', '515', '515', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-247', '247', 'PB Imaduwa              ', '          ', '516', '516', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-248', '248', 'PB Aranayake           ', '          ', '517', '517', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-249', '249', 'PB Neeboda               ', '          ', '518', '518', '1', '0');
INSERT INTO `bankmas` VALUES ('7287-25', '25', 'SEY Gampola              ', '          ', '519', '519', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-25', '25', 'SAM Matale Branch      ', '          ', '520', '520', '1', '0');
INSERT INTO `bankmas` VALUES ('7311-25', '25', 'PAB Galle', '          ', '521', '521', '1', '0');
INSERT INTO `bankmas` VALUES ('7311-25', '25', 'PB Wanduramba', '          ', '522', '522', '1', '0');
INSERT INTO `bankmas` VALUES ('7311-25', '25', 'DFCC Wanduramba', '          ', '523', '523', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-25', '25', 'PB Park Street           ', '          ', '524', '524', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-25', '25', 'HNB Nittambuwa         ', '          ', '525', '525', '1', '0');
INSERT INTO `bankmas` VALUES ('7162-25', '25', 'NTB Union place', '          ', '526', '526', '1', '0');
INSERT INTO `bankmas` VALUES ('7454-25', '25', 'DFCC Deniyaya', '          ', '529', '529', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-250', '250', 'BOC Opatha           ', '          ', '530', '530', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-250', '250', 'PB Kandeketiya      ', '          ', '531', '531', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-251', '251', 'PB Lunugala            ', '          ', '532', '532', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-252', '252', 'PB Bulathkohupitiya    ', '          ', '533', '533', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-253', '253', 'PB Aralaganwila        ', '          ', '534', '534', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-254', '254', 'PB Welikanda          ', '          ', '535', '535', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-255', '255', 'PB Trincomalee Town       ', '          ', '536', '536', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-256', '256', 'PB Pilimathalawa     ', '          ', '537', '537', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-257', '257', 'PB Deltota             ', '          ', '538', '538', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-257', '257', 'BOC Mawathagama      ', '          ', '539', '539', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-258', '258', 'PB Medagama            ', '          ', '540', '540', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-259', '259', 'PB Kehelwatte       ', '          ', '541', '541', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-26', '26', 'SAM Panadura           ', '          ', '542', '542', '1', '0');
INSERT INTO `bankmas` VALUES ('7287-26', '26', 'SEY Badulla              ', '          ', '543', '543', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-26', '26', 'HNB Nochchiyagama      ', '          ', '546', '546', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-26', '26', 'PB Gampaha              ', '          ', '547', '547', '1', '0');
INSERT INTO `bankmas` VALUES ('7454-26', '26', 'DFCC Kalutara', '          ', '548', '548', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-260', '260', 'BOC Diyatalawa          ', '          ', '549', '549', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-260', '260', 'PB Koslanda             ', '          ', '550', '550', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-261', '261', 'PB Pelawatte         ', '          ', '551', '551', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-262', '262', 'PB Wadduwa            ', '          ', '552', '552', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-263', '263', 'PB Kuruwita            ', '          ', '553', '553', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-264', '264', 'PB Suriyawewa            ', '          ', '554', '554', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-265', '265', 'PB Middeniya           ', '          ', '555', '555', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-266', '266', 'PB Kiriella             ', '          ', '556', '556', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-267', '267', 'PB Anamaduwa           ', '          ', '557', '557', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-268', '268', 'PB Girandurukotte       ', '          ', '558', '558', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-269', '269', 'PB Badulla - Muthiyanga', '          ', '559', '559', '1', '0');
INSERT INTO `bankmas` VALUES ('7311-27', '27', 'PABC Kegalle', '          ', '560', '560', '1', '0');
INSERT INTO `bankmas` VALUES ('7287-27', '27', 'SEY Ja-Ela               ', '          ', '561', '561', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-27', '27', 'SAM Old Moor Street    ', '          ', '562', '562', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-27', '27', 'COM Galle Main Street', '          ', '563', '563', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-27', '27', 'PB Kegalle          ', '          ', '565', '565', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-27', '27', 'HNB Nugegoda           ', '          ', '566', '566', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-270', '270', 'PB Thulhiriya             ', '          ', '567', '567', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-271', '271', 'PB Urubokka               ', '          ', '568', '568', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-273', '273', 'PB Kadawata              ', '          ', '570', '570', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-273', '273', 'BOC Digana              ', '          ', '571', '571', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-274', '274', 'PB Pussellawa        ', '          ', '572', '572', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-275', '275', 'PB Olcott Mawatha        ', '          ', '573', '573', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-276', '276', 'PB Katunayake       ', '          ', '574', '574', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-277', '277', 'PB Sea Street        ', '          ', '575', '575', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-278', '278', 'PB Nittambuwa            ', '          ', '576', '576', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-279', '279', 'PB Pitakotte         ', '          ', '577', '577', '1', '0');
INSERT INTO `bankmas` VALUES ('7311-28', '28', 'PABC Wennappuwa', '          ', '578', '578', '1', '0');
INSERT INTO `bankmas` VALUES ('7454-28', '28', 'DFCC Nawala', '          ', '579', '579', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-28', '28', 'SAM Tissamaharama      ', '          ', '580', '580', '1', '0');
INSERT INTO `bankmas` VALUES ('7287-28', '28', 'SEY Kadawatha            ', '          ', '581', '581', '1', '0');
INSERT INTO `bankmas` VALUES ('7162-28', '28', 'NTB Matara', '          ', '582', '582', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-28', '28', 'COM Koggala', '          ', '584', '584', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-28', '28', 'HNB Nuwara Eliya       ', '          ', '585', '585', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-28', '28', 'PB Kuliyapitiya            ', '          ', '586', '586', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-280', '280', 'PB Potuhera          ', '          ', '587', '587', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-281', '281', 'PB Kobeigane            ', '          ', '588', '588', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-281', '281', 'BOC Manipay             ', '          ', '589', '589', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-282', '282', 'PB Maggona             ', '          ', '590', '590', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-283', '283', 'PB Badureliya          ', '          ', '591', '591', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-284', '284', 'PB Jaffna Kannathiddy    ', '          ', '592', '592', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-285', '285', 'PB Point Pedro       ', '          ', '593', '593', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-285', '285', 'BOC Morontota', '          ', '594', '594', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-286', '286', 'PB Int  l Div-Lakeside Bar', '          ', '595', '595', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-288', '288', 'PB Kudawella            ', '          ', '596', '596', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-289', '289', 'PB Kaltota               ', '          ', '597', '597', '1', '0');
INSERT INTO `bankmas` VALUES ('7454-29', '29', 'DFCC Kadawatha', '          ', '598', '598', '1', '0');
INSERT INTO `bankmas` VALUES ('7162-29', '29', 'NTB Galle', '          ', '599', '599', '1', '0');
INSERT INTO `bankmas` VALUES ('7302-29', '29', 'UB Kadawatha', '          ', '600', '600', '1', '0');
INSERT INTO `bankmas` VALUES ('7287-29', '29', 'SEY Dehiattakandiya      ', '          ', '601', '601', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-29', '29', 'SAM Head Quarters       ', '          ', '602', '602', '1', '0');
INSERT INTO `bankmas` VALUES ('7214-29', '29', 'NDB 7214 - 029', '          ', '603', '603', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-29', '29', 'COM Battaramulla', '          ', '604', '604', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-29', '29', 'PB Avissawella        ', '          ', '606', '606', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-29', '29', 'HNB Pussellewa         ', '          ', '607', '607', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-290', '290', 'PB Moratumulla         ', '          ', '608', '608', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-291', '291', 'PB Dankotuwa           ', '          ', '609', '609', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-292', '292', 'PB Udapussellawa          ', '          ', '610', '610', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-293', '293', 'PB Dehiowita           ', '          ', '611', '611', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-293', '293', 'BOC Dodangoda           ', '          ', '612', '612', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-294', '294', 'PB Alawatugoda         ', '          ', '613', '613', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-295', '295', 'PB Udawalawe              ', '          ', '614', '614', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-296', '296', 'PB Nintavur              ', '          ', '615', '615', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-297', '297', 'PB Dam Street          ', '          ', '616', '616', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-298', '298', 'PB Ginthupitiya         ', '          ', '617', '617', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-299', '299', 'PB Kegalle Bazzar   ', '          ', '619', '619', '1', '0');
INSERT INTO `bankmas` VALUES ('7074-3', '3', 'HBL Kalmunai', '          ', '620', '620', '1', '0');
INSERT INTO `bankmas` VALUES ('7214-3', '3', 'NDB Jawatte Branch ', '          ', '621', '621', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-3', '3', 'SAM Nugegoda           ', '          ', '622', '622', '1', '0');
INSERT INTO `bankmas` VALUES ('7287-3', '3', 'SEY Mount Lavinia       ', '          ', '623', '623', '1', '0');
INSERT INTO `bankmas` VALUES ('7311-3', '3', 'PABC Kollupitiya        ', '          ', '624', '624', '1', '0');
INSERT INTO `bankmas` VALUES ('7162-3', '3', 'NTB Wattala', '          ', '626', '626', '1', '0');
INSERT INTO `bankmas` VALUES ('7162-3', '3', 'NTB Sri Sangaraja M', '          ', '627', '627', '1', '0');
INSERT INTO `bankmas` VALUES ('7038-3', '3', 'SCB Wellawatte                ', '          ', '629', '629', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-3', '3', 'PB Kandy            ', '          ', '631', '631', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-3', '3', 'HNB Darley Road', '          ', '632', '632', '1', '0');
INSERT INTO `bankmas` VALUES ('7092-3', '3', 'HSBC Borella                      ', '          ', '633', '633', '1', '0');
INSERT INTO `bankmas` VALUES ('7454-3', '3', 'DFCC Malabe Br      ', '          ', '634', '634', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-30', '30', 'SAM Wennappuwa', '          ', '635', '635', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-30', '30', 'HNB Ratnapura          ', '          ', '636', '636', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-30', '30', 'PB Jaffna Stanley Road   ', '          ', '637', '637', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-30', '30', 'COM Embilipitiya', '          ', '639', '639', '1', '0');
INSERT INTO `bankmas` VALUES ('7287-30', '30', 'SEY Upper Chatham Street ', '          ', '640', '640', '1', '0');
INSERT INTO `bankmas` VALUES ('7454-30', '30', 'DFCC Gampola', '          ', '641', '641', '1', '0');
INSERT INTO `bankmas` VALUES ('7311-30', '30', 'PABC Gampola', '          ', '642', '642', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-300', '300', 'PB Ingiriya              ', '          ', '643', '643', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-301', '301', 'PB Galkiriyagama        ', '          ', '644', '644', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-302', '302', 'PB Ginigathena          ', '          ', '645', '645', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-303', '303', 'PB Mahawewa            ', '          ', '646', '646', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-304', '304', 'PB Walasgala          ', '          ', '647', '647', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-306', '306', 'PB Maharagama          ', '          ', '648', '648', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-307', '307', 'PB Gandara              ', '          ', '649', '649', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-308', '308', 'PB Kotahena             ', '          ', '650', '650', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-309', '309', 'PB Liberty Plaza       ', '          ', '651', '651', '1', '0');
INSERT INTO `bankmas` VALUES ('7311-31', '31', 'PABC Borella', '          ', '652', '652', '1', '0');
INSERT INTO `bankmas` VALUES ('7162-31', '31', 'NTB Colombo 2', '          ', '653', '653', '1', '0');
INSERT INTO `bankmas` VALUES ('7287-31', '31', 'SEY FTZ Branch-Katunayak ', '          ', '654', '654', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-31', '31', 'SAM Moratuwa      ', '          ', '655', '655', '1', '0');
INSERT INTO `bankmas` VALUES ('7454-31', '31', 'DFCC Matale', '          ', '656', '656', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-31', '31', 'COM Kandana', '          ', '657', '657', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-31', '31', 'PB Kankesanthurai   ', '          ', '659', '659', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-31', '31', 'HNB Trincomalee       ', '          ', '660', '660', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-310', '310', 'PB Bambalapitiya       ', '          ', '661', '661', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-311', '311', 'PB Beruwela            ', '          ', '662', '662', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-312', '312', 'PB Malwatte Road Branch', '          ', '663', '663', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-313', '313', 'PB Katubedda        ', '          ', '664', '664', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-315', '315', 'PB Talawa                 ', '          ', '667', '667', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-316', '316', 'PB Ragama            ', '          ', '668', '668', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-317', '317', 'PB Ratnapura Town    ', '          ', '669', '669', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-318', '318', 'PB Pamunugama            ', '          ', '670', '670', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-318', '318', 'BOC Potuvil           ', '          ', '671', '671', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-319', '319', 'PB Kirulapana           ', '          ', '672', '672', '1', '0');
INSERT INTO `bankmas` VALUES ('7311-32', '32', 'PABC Anuradhapura', '          ', '673', '673', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-32', '32', 'SAM Katugastota        ', '          ', '674', '674', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-32', '32', 'COM Maradana', '          ', '677', '677', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-32', '32', 'HNB Vavuniya          ', '          ', '678', '678', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-320', '320', 'BOC Ballakatuwa    ', '          ', '680', '680', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-321', '321', 'PB Panadura Town         ', '          ', '682', '682', '1', '0');
INSERT INTO `bankmas` VALUES ('7287-', '321', 'SBL Maradana', '          ', '683', '683', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-322', '322', 'PB Marawila            ', '          ', '684', '684', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-322', '322', 'BOC Thanamalwila      ', '          ', '685', '685', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-324', '324', 'PB Seeduwa           ', '          ', '686', '686', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-325', '325', 'PB Waduramba          ', '          ', '687', '687', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-325', '325', 'BOC Kuruwita            ', '          ', '688', '688', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-327', '327', 'PB Kesbewa              ', '          ', '689', '689', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-328', '328', 'PB Kottawa              ', '          ', '690', '690', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-329', '329', 'PB Koggala              ', '          ', '691', '691', '1', '0');
INSERT INTO `bankmas` VALUES ('7454-33', '33', 'DFCC Wellawatte', '          ', '692', '692', '1', '0');
INSERT INTO `bankmas` VALUES ('7287-33', '33', 'SEY Kottawa             ', '          ', '693', '693', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-33', '33', 'SAM Ratnapura          ', '          ', '694', '694', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-33', '33', 'COM Minuwangoda', '          ', '695', '695', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-33', '33', 'PB Queen Street      ', '          ', '696', '696', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-33', '33', 'HNB Welimada          ', '          ', '697', '697', '1', '0');
INSERT INTO `bankmas` VALUES ('7162-33', '33', 'NTB Colombo 2', '          ', '698', '698', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-330', '330', 'PB Dehiattakandiya     ', '          ', '699', '699', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-331', '331', 'PB Lucky Plaza Branch. ', '          ', '700', '700', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-332', '332', 'PB Ganemulla            ', '          ', '701', '701', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-333', '333', 'PB Yakkala                ', '          ', '702', '702', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-334', '334', 'PB Kurunegala Ethugalpu', '          ', '703', '703', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-335', '335', 'PB Nugegoda City Branch  ', '          ', '704', '704', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-335', '335', 'BOC Mihintale        ', '          ', '705', '705', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-336', '336', 'PB Mount Lavinia       ', '          ', '706', '706', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-337', '337', 'PB Dehiwela(new)        ', '          ', '707', '707', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-337', '337', 'BOC Helboda           ', '          ', '708', '708', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-34', '34', 'COM Nuwaraeliya', '          ', '709', '709', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-34', '34', 'HNB Kalutara   ', '          ', '711', '711', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-34', '34', 'PB Negombo               ', '          ', '712', '712', '1', '0');
INSERT INTO `bankmas` VALUES ('7162-34', '34', 'NDB 7162-034', '          ', '713', '713', '1', '0');
INSERT INTO `bankmas` VALUES ('7162-34', '34', 'NTB Batti', '          ', '714', '714', '1', '0');
INSERT INTO `bankmas` VALUES ('7162-34', '34', 'NDB Batti', '          ', '715', '715', '1', '0');
INSERT INTO `bankmas` VALUES ('7454-34', '34', 'DFCC Horana', '          ', '716', '716', '1', '0');
INSERT INTO `bankmas` VALUES ('7311-34', '34', 'PABC Vavuniya', '          ', '717', '717', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-34', '34', 'SAM Thimbirigasyaya    ', '          ', '718', '718', '1', '0');
INSERT INTO `bankmas` VALUES ('7287-34', '34', 'SEY Boralesgamuwa        ', '          ', '719', '719', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-340', '340', 'PB Oddamavady', '          ', '720', '720', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-340', '340', 'BOC Wattegama        ', '          ', '721', '721', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-342', '342', 'BOC Pambahinna       ', '          ', '722', '722', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-343', '343', 'BOC Uva Paranagama   ', '          ', '723', '723', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-343', '343', 'PB Karapitiya', '          ', '724', '724', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-344', '344', 'PB Melsiripura', '          ', '725', '725', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-346', '346', 'PB Maruthamuni', '          ', '726', '726', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-347', '347', 'PB Badalkubura', '          ', '727', '727', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-348', '348', 'BOC Padiyatalawa     ', '          ', '728', '728', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-35', '35', 'COM Akuressa', '          ', '730', '730', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-35', '35', 'PB Ambalangoda         ', '          ', '731', '731', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-35', '35', 'HNB Wattala           ', '          ', '732', '732', '1', '0');
INSERT INTO `bankmas` VALUES ('7454-35', '35', 'DFCC Galle', '          ', '733', '733', '1', '0');
INSERT INTO `bankmas` VALUES ('7287-35', '35', 'SEY Yakkala              ', '          ', '734', '734', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-35', '35', 'SAM Galle City         ', '          ', '735', '735', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-350', '350', 'Pb weeraketiya', '          ', '736', '736', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-351', '351', 'PB Thambala', '          ', '737', '737', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-355', '355', 'PB Kotiyakumbura', '          ', '738', '738', '1', '0');
INSERT INTO `bankmas` VALUES ('754-36', '36', 'DFCC Nuwara Eliya', '          ', '739', '739', '1', '0');
INSERT INTO `bankmas` VALUES ('7454-36', '36', 'DFCC Nuwara Eliya', '          ', '740', '740', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-36', '36', 'SAM Wellawatte  ', '          ', '741', '741', '1', '0');
INSERT INTO `bankmas` VALUES ('7214-36', '36', 'NDB 7214 - 036', '          ', '742', '742', '1', '0');
INSERT INTO `bankmas` VALUES ('7287-36', '36', 'SEY Kalutara          ', '          ', '743', '743', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-36', '36', 'PB Ragala            ', '          ', '746', '746', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-36', '36', 'COM Kalutara', '          ', '747', '747', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-365', '365', 'BOC Hasalaka          ', '          ', '748', '748', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-37', '37', 'COM Trincomalee', '          ', '749', '749', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-37', '37', 'PB Bandarawela         ', '          ', '751', '751', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-37', '37', 'HNB Emirates Br', '          ', '752', '752', '1', '0');
INSERT INTO `bankmas` VALUES ('7287-37', '37', 'SEY Tissamaharama        ', '          ', '753', '753', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-37', '37', 'SAM Kotahena           ', '          ', '754', '754', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-379', '379', 'BOC Wariyapola       ', '          ', '755', '755', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-38', '38', 'COM Panchikawatta', '          ', '757', '757', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-38', '38', 'HNB Piliyandala        ', '          ', '758', '758', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-38', '38', 'PB Talawakelle            ', '          ', '759', '759', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-38', '38', 'SAM Kaduruwela Branch  ', '          ', '760', '760', '1', '0');
INSERT INTO `bankmas` VALUES ('7287-38', '38', 'SEY Matale              ', '          ', '761', '761', '1', '0');
INSERT INTO `bankmas` VALUES ('7311-38', '38', 'PABC Embilipitiya', '          ', '762', '762', '1', '0');
INSERT INTO `bankmas` VALUES ('7454-38', '38', 'DFCC Ambalangoda', '          ', '763', '763', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-384', '384', 'BOC Karametiya          ', '          ', '764', '764', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-39', '39', 'COM Pettah Keyzer Street', '          ', '765', '765', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-39', '39', 'PB Kalutara              ', '          ', '767', '767', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-39', '39', 'HNB Bambalapiti', '          ', '768', '768', '1', '0');
INSERT INTO `bankmas` VALUES ('7454-39', '39', 'DFCC Awissawella', '          ', '769', '769', '1', '0');
INSERT INTO `bankmas` VALUES ('7311-39', '39', 'PAB Matale', '          ', '770', '770', '1', '0');
INSERT INTO `bankmas` VALUES ('7214-39', '39', 'NDB 7214-039', '          ', '771', '771', '1', '0');
INSERT INTO `bankmas` VALUES ('7287-39', '39', 'SEY Hatton               ', '          ', '772', '772', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-39', '39', 'SAM Malabe Branch      ', '          ', '773', '773', '1', '0');
INSERT INTO `bankmas` VALUES ('7162-39', '39', 'NTB Anuradhapura', '          ', '774', '774', '1', '0');
INSERT INTO `bankmas` VALUES ('7162-4', '4', 'NTB Kandy Branch   ', '          ', '775', '775', '1', '0');
INSERT INTO `bankmas` VALUES ('7214-4', '4', 'NDB Nugegoda Branch', '          ', '776', '776', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-4', '4', 'SAM Borella            ', '          ', '777', '777', '1', '0');
INSERT INTO `bankmas` VALUES ('7311-4', '4', 'PABC Pettah     ', '          ', '778', '778', '1', '0');
INSERT INTO `bankmas` VALUES ('7287-4', '4', 'SEY Maharagama          ', '          ', '779', '779', '1', '0');
INSERT INTO `bankmas` VALUES ('7269-4', '4', 'MCB Bank Limited', '          ', '780', '780', '1', '0');
INSERT INTO `bankmas` VALUES ('7092-4', '4', 'HSBC Wellawatte                  ', '          ', '781', '781', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-4', '4', 'HNB Head-Office', '          ', '782', '782', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-4', '4', 'COM Kandy', '          ', '784', '784', '1', '0');
INSERT INTO `bankmas` VALUES ('7454-4', '4', 'DFCC Matara Branch  ', '          ', '786', '786', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-40', '40', 'COM Aluthgama', '          ', '788', '788', '1', '0');
INSERT INTO `bankmas` VALUES ('7454-40', '40', 'DFCC Batticalo', '          ', '789', '789', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-40', '40', 'HNB Chilaw                ', '          ', '790', '790', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-40', '40', 'PB Vavuniya           ', '          ', '791', '791', '1', '0');
INSERT INTO `bankmas` VALUES ('7311-40', '40', 'PAB Batti', '          ', '792', '792', '1', '0');
INSERT INTO `bankmas` VALUES ('7302-40', '40', 'UB Pelawattha', '          ', '793', '793', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-40', '40', 'SAM Narahenpita        ', '          ', '794', '794', '1', '0');
INSERT INTO `bankmas` VALUES ('7287-40', '40', 'SEY Sarikamulla          ', '          ', '795', '795', '1', '0');
INSERT INTO `bankmas` VALUES ('7162-400', '400', 'NTB Card Center    ', '          ', '796', '796', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-401', '401', 'BOC Ayagama        ', '          ', '797', '797', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-41', '41', 'COM Panadura', '          ', '798', '798', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-41', '41', 'PB Horana               ', '          ', '800', '800', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-41', '41', 'HNB Kegalle    ', '          ', '801', '801', '1', '0');
INSERT INTO `bankmas` VALUES ('7287-41', '41', 'SEY Aththidiya           ', '          ', '805', '805', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-41', '41', 'SAM 7278 -41', '          ', '806', '806', '1', '0');
INSERT INTO `bankmas` VALUES ('7454-41', '41', 'DFCC Ampara', '          ', '807', '807', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-416', '416', 'BOC Siyambalanduwa    ', '          ', '808', '808', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-42', '42', 'COM Kaduwela', '          ', '810', '810', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-42', '42', 'PB Kekirawa         ', '          ', '811', '811', '1', '0');
INSERT INTO `bankmas` VALUES ('7083', '42', 'HNB Matara', '          ', '812', '812', '1', '0');
INSERT INTO `bankmas` VALUES ('7083', '42', 'HNB Matara', '          ', '813', '813', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-42', '42', 'HNB Matara', '          ', '814', '814', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-42', '42', 'SAM Main St Branch     ', '          ', '815', '815', '1', '0');
INSERT INTO `bankmas` VALUES ('7287-42', '42', 'SEY Kalubowila        ', '          ', '816', '816', '1', '0');
INSERT INTO `bankmas` VALUES ('7214-42', '42', 'NDB Nawam Mawatha', '          ', '817', '817', '1', '0');
INSERT INTO `bankmas` VALUES ('7162-42', '42', 'NTB Nuwara eliya', '          ', '818', '818', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-421', '421', 'BOC Seeduwa           ', '          ', '819', '819', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-424', '424', 'BOC Mulhalkelle     ', '          ', '820', '820', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-425', '425', 'BOC Pundaluoya        ', '          ', '821', '821', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-43', '43', 'COM Chilaw', '          ', '822', '822', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-43', '43', 'PB Padaviya              ', '          ', '824', '824', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-43', '43', 'HNB Kirulapone ', '          ', '825', '825', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-43', '43', 'SAM Embilipitiya', '          ', '826', '826', '1', '0');
INSERT INTO `bankmas` VALUES ('7287-43', '43', 'SEY Homagama             ', '          ', '827', '827', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-432', '432', 'BOC Galewela            ', '          ', '828', '828', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-433', '433', 'BOC Divulapitiya        ', '          ', '829', '829', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-434', '434', 'BOC Wellawaya           ', '          ', '830', '830', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-44', '44', 'COM Gampaha', '          ', '832', '832', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-44', '44', 'HNB Polonnaruwa        ', '          ', '833', '833', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-44', '44', 'PB Mannar              ', '          ', '834', '834', '1', '0');
INSERT INTO `bankmas` VALUES ('7287-44', '44', 'SEY Kuliyapitiya.       ', '          ', '835', '835', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-44', '44', 'SAM Wariyapola Savings ', '          ', '836', '836', '1', '0');
INSERT INTO `bankmas` VALUES ('7302-44', '44', 'UB Embilipitiya', '          ', '837', '837', '1', '0');
INSERT INTO `bankmas` VALUES ('7454-44', '44', 'DFCC Trincomalee', '          ', '838', '838', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-440', '440', 'BOC Sammanthurai      ', '          ', '839', '839', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-45', '45', 'COM Katugastota', '          ', '840', '840', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-45', '45', 'PB Embilipitiya        ', '          ', '842', '842', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-45', '45', 'HNB Ambalantota  ', '          ', '843', '843', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-45', '45', 'SAM Wellampitiya', '          ', '845', '845', '1', '0');
INSERT INTO `bankmas` VALUES ('7162-45', '45', 'NTB Kduruwela', '          ', '846', '846', '1', '0');
INSERT INTO `bankmas` VALUES ('7287-45', '45', 'SEY Embilipitiya         ', '          ', '847', '847', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-453', '453', 'BOC Torrington Square ', '          ', '848', '848', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-46', '46', 'COM Ratmalana', '          ', '850', '850', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-46', '46', 'PB First City Branch', '          ', '853', '853', '1', '0');
INSERT INTO `bankmas` VALUES ('7287-46', '46', 'SEY Bandarawela          ', '          ', '854', '854', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-46', '46', 'SAM Bandarawela     ', '          ', '855', '855', '1', '0');
INSERT INTO `bankmas` VALUES ('7311-46', '46', 'PAB Kuliyapitiya', '          ', '856', '856', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-463', '463', 'BOC Haldummulla       ', '          ', '857', '857', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-47', '47', 'COM Kirulapane', '          ', '858', '858', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-47', '47', 'PB Yatiyantota            ', '          ', '860', '860', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-47', '47', 'HNB Biyagama   ', '          ', '861', '861', '1', '0');
INSERT INTO `bankmas` VALUES ('7287-47', '47', 'SEY Maradana            ', '          ', '862', '862', '1', '0');
INSERT INTO `bankmas` VALUES ('7162-47', '47', 'NTB aluthgama', '          ', '863', '863', '1', '0');
INSERT INTO `bankmas` VALUES ('7454-47', '47', 'DFCC Vavniya', '          ', '864', '864', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-476', '476', 'BOC Ettampitiya         ', '          ', '865', '865', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-477', '477', 'BOC Yatiyantota         ', '          ', '866', '866', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-48', '48', 'COM Union Place', '          ', '868', '868', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-48', '48', 'HNB Dambulla   ', '          ', '869', '869', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-48', '48', 'PB Kilinochchi          ', '          ', '870', '870', '1', '0');
INSERT INTO `bankmas` VALUES ('7287-48', '48', 'SEY Mawanella           ', '          ', '871', '871', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-48', '48', 'SAM Thambuttegama', '          ', '872', '872', '1', '0');
INSERT INTO `bankmas` VALUES ('7287-49', '49', 'SEY Puttalam             ', '          ', '873', '873', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-49', '49', 'SAM Deraniyagala Saving', '          ', '874', '874', '1', '0');
INSERT INTO `bankmas` VALUES ('7214-49', '49', 'NDB Nawam Mawatha', '          ', '875', '875', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-49', '49', 'PB Homagama             ', '          ', '876', '876', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-49', '49', 'HNB Air Cargo Village ', '          ', '877', '877', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-49', '49', 'COM Ratnapura', '          ', '878', '878', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-492', '492', 'BOC Padiyapelella    ', '          ', '880', '880', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-494', '494', 'BOC Andiambalama         ', '          ', '881', '881', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-497', '497', 'BOC Dankotuwa          ', '          ', '882', '882', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-498', '498', 'BOC Alawwa               ', '          ', '883', '883', '1', '0');
INSERT INTO `bankmas` VALUES ('7038-5', '5', 'SCB Kirullapone                   ', '          ', '885', '885', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-5', '5', 'COM Galle', '          ', '886', '886', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-5', '5', 'PB Polonnaruwa       ', '          ', '887', '887', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-5', '5', 'HNB Main Branch         ', '          ', '888', '888', '1', '0');
INSERT INTO `bankmas` VALUES ('7092-5', '5', 'HSBC Nugegoda                    ', '          ', '889', '889', '1', '0');
INSERT INTO `bankmas` VALUES ('7162-5', '5', 'NTB Wellawatte Bran', '          ', '890', '890', '1', '0');
INSERT INTO `bankmas` VALUES ('7269-5', '5', 'MCB Bank Limited Wellawatta', '          ', '891', '891', '1', '0');
INSERT INTO `bankmas` VALUES ('7214-5', '5', 'NDB Rjagiriya Branc', '          ', '892', '892', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-5', '5', 'SAM Kiribathgoda       ', '          ', '893', '893', '1', '0');
INSERT INTO `bankmas` VALUES ('7287-5', '5', 'SEY Panadura             ', '          ', '894', '894', '1', '0');
INSERT INTO `bankmas` VALUES ('7311-5', '5', 'PABC Kandy              ', '          ', '895', '895', '1', '0');
INSERT INTO `bankmas` VALUES ('7454-5', '5', 'DFCC Kurunegala Bran', '          ', '896', '896', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-50', '50', 'SAM Kaluthara Br   ', '          ', '897', '897', '1', '0');
INSERT INTO `bankmas` VALUES ('7287-50', '50', 'SEY Old Moor Street Br.  ', '          ', '898', '898', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-50', '50', 'HNB Embilipitiy', '          ', '899', '899', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-50', '50', 'PB Main Street Colombo ', '          ', '900', '900', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-50', '50', 'COM Colombo 7', '          ', '902', '902', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-501', '501', 'BOC Chavakachcheri     ', '          ', '904', '904', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-502', '502', 'BOC Kaduruwela          ', '          ', '905', '905', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-503', '503', 'BOC Passara           ', '          ', '906', '906', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-504', '504', 'BOC Devinuwara         ', '          ', '907', '907', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-505', '505', 'BOC Wattala          ', '          ', '908', '908', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-506', '506', 'BOC Maskeliya        ', '          ', '909', '909', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-507', '507', 'BOC Kahawatte           ', '          ', '910', '910', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-508', '508', 'BOC Wennappuwa          ', '          ', '911', '911', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-509', '509', 'BOC Hingurana         ', '          ', '912', '912', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-51', '51', 'COM Kuliyapitiya', '          ', '913', '913', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-51', '51', 'PB Kahatagasdigiliya     ', '          ', '915', '915', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-51', '51', 'HNB Gampaha    ', '          ', '916', '916', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-51', '51', 'HNB Gampaha    ', '          ', '917', '917', '1', '0');
INSERT INTO `bankmas` VALUES ('7287-51', '51', 'SEY Hingurakgoda.        ', '          ', '918', '918', '1', '0');
INSERT INTO `bankmas` VALUES ('7454-51', '51', 'DFCC Sainthamuruthu', '          ', '919', '919', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-51', '51', 'SB Peradeniya', '          ', '920', '920', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-510', '510', 'BOC Kalmunai            ', '          ', '921', '921', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-511', '511', 'BOC Mullaitivu      ', '          ', '922', '922', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-512', '512', 'BOC Thimbirigasaya    ', '          ', '923', '923', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-514', '514', 'BOC Galnewa           ', '          ', '925', '925', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-515', '515', 'BOC Bandarawela    ', '          ', '926', '926', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-517', '517', 'BOC Walasmulla       ', '          ', '927', '927', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-518', '518', 'BOC Middeniya        ', '          ', '928', '928', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-52', '52', 'COM Badulla', '          ', '930', '930', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-52', '52', 'HNB Horana     ', '          ', '931', '931', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-52', '52', 'PB Maho                ', '          ', '932', '932', '1', '0');
INSERT INTO `bankmas` VALUES ('7311-52', '52', 'PABC Kaduruwela', '          ', '933', '933', '1', '0');
INSERT INTO `bankmas` VALUES ('7287-52', '52', 'SEY Nawala              ', '          ', '934', '934', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-52', '52', 'SAM Kottawa            ', '          ', '935', '935', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-521', '521', 'BOC Hyde Park           ', '          ', '936', '936', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-522', '522', 'BOC Batapola       ', '          ', '937', '937', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-524', '524', 'BOC Geli Oya          ', '          ', '938', '938', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-525', '525', 'BOC Baddegama      ', '          ', '939', '939', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-526', '526', 'BOC Polgahawela       ', '          ', '940', '940', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-527', '527', 'BOC Welisara            ', '          ', '941', '941', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-528', '528', 'BOC Deniyaya           ', '          ', '942', '942', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-529', '529', 'BOC Kamburupitiya       ', '          ', '943', '943', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-53', '53', 'COM Anuradhapura', '          ', '944', '944', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-53', '53', 'PB Nawalapitiya        ', '          ', '946', '946', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-53', '53', 'HNB Monaragala         ', '          ', '947', '947', '1', '0');
INSERT INTO `bankmas` VALUES ('7287-53', '53', 'SEY Manampitiya         ', '          ', '948', '948', '1', '0');
INSERT INTO `bankmas` VALUES ('7454-53', '53', 'DFCC Elpitiya', '          ', '949', '949', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-53', '53', 'Alawwa', '          ', '950', '950', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-53', '53', 'SAM Alawwa', '          ', '951', '951', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-53', '53', 'SAM Alawwa', '          ', '952', '952', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-530', '530', 'BOC Avissawella    ', '          ', '953', '953', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-531', '531', 'BOC Talawakelle       ', '          ', '954', '954', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-532', '532', 'BOC Ridigama          ', '          ', '955', '955', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-534', '534', 'BOC Narammala       ', '          ', '956', '956', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-535', '535', 'BOC Embilipitiya        ', '          ', '957', '957', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-536', '536', 'BOC Kegalle Bazzar      ', '          ', '958', '958', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-537', '537', 'BOC Ambalantota          ', '          ', '959', '959', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-538', '538', 'BOC Tissamaharama     ', '          ', '960', '960', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-539', '539', 'BOC Beliatta       ', '          ', '961', '961', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-54', '54', 'COM Dambulla', '          ', '963', '963', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-54', '54', 'PB Warakapola         ', '          ', '964', '964', '1', '0');
INSERT INTO `bankmas` VALUES ('7311-54', '54', 'PAB Kiribathgoda', '          ', '965', '965', '1', '0');
INSERT INTO `bankmas` VALUES ('7454-54', '54', 'DFCC Akuressa', '          ', '966', '966', '1', '0');
INSERT INTO `bankmas` VALUES ('7287-54', '54', 'SEY Bandaragama          ', '          ', '967', '967', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-540', '540', 'BOC Badalkumbura   ', '          ', '968', '968', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-542', '542', 'BOC Mahiyangana         ', '          ', '969', '969', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-543', '543', 'BOC Kiribathgoda        ', '          ', '970', '970', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-544', '544', 'BOC Madampe             ', '          ', '971', '971', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-545', '545', 'BOC Minuwangoda     ', '          ', '972', '972', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-546', '546', 'BOC Pannala           ', '          ', '973', '973', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-547', '547', 'BOC Nikaweratiya    ', '          ', '974', '974', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-548', '548', 'BOC Anamaduwa            ', '          ', '975', '975', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-549', '549', 'BOC Galgamuwa         ', '          ', '976', '976', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-55', '55', 'COM Nattandiya', '          ', '977', '977', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-55', '55', 'PB Kelaniya             ', '          ', '979', '979', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-55', '55', 'HNB Borella    ', '          ', '980', '980', '1', '0');
INSERT INTO `bankmas` VALUES ('7287-55', '55', 'SEY Katuneriya        ', '          ', '981', '981', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-55', '55', 'SAM                ', '          ', '982', '982', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-55', '55', 'SAM Vavuniya', '          ', '983', '983', '1', '0');
INSERT INTO `bankmas` VALUES ('7454-55', '55', 'DFCC Kattankudy', '          ', '984', '984', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-550', '550', 'BOC Weligama         ', '          ', '985', '985', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-553', '553', 'BOC Giriulla          ', '          ', '987', '987', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-554', '554', 'BOC Bingiriya            ', '          ', '988', '988', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-555', '555', 'BOC Melsiripura      ', '          ', '989', '989', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-556', '556', 'BOC Matugama         ', '          ', '990', '990', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-558', '558', 'BOC Waikkal          ', '          ', '991', '991', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-559', '559', 'BOC Mawanella        ', '          ', '992', '992', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-56', '56', 'COM Wattala', '          ', '994', '994', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-56', '56', 'HNB Kiribathgod', '          ', '995', '995', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-56', '56', 'PB Sri Sangaraja Mawatha.', '          ', '996', '996', '1', '0');
INSERT INTO `bankmas` VALUES ('7162-56', '56', 'NTB Ambalangoda', '          ', '997', '997', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-56', '56', 'SAM Mahiyanganaya Branc', '          ', '998', '998', '1', '0');
INSERT INTO `bankmas` VALUES ('7287-56', '56', 'SEY Koggala           ', '          ', '999', '999', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-560', '560', 'BOC Buttala              ', '          ', '1000', '1000', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-561', '561', 'BOC Dematagoda         ', '          ', '1001', '1001', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-562', '562', 'BOC Warakapola       ', '          ', '1002', '1002', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-563', '563', 'BOC Dharga Town        ', '          ', '1003', '1003', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-564', '564', 'BOC Maho                ', '          ', '1004', '1004', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-565', '565', 'BOC Madurankuliya       ', '          ', '1005', '1005', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-566', '566', 'BOC Aranayake            ', '          ', '1006', '1006', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-568', '568', 'BOC Homagama          ', '          ', '1007', '1007', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-569', '569', 'BOC Hiripitiya        ', '          ', '1008', '1008', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-57', '57', 'COM Grandpass', '          ', '1009', '1009', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-57', '57', 'PB Peradeniya        ', '          ', '1011', '1011', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-57', '57', 'HNB Batticaloa ', '          ', '1012', '1012', '1', '0');
INSERT INTO `bankmas` VALUES ('7287-57', '57', 'SEY Welimada             ', '          ', '1013', '1013', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-57', '57', 'SAM Horona Branch      ', '          ', '1014', '1014', '1', '0');
INSERT INTO `bankmas` VALUES ('7454-57', '57', 'DFCC Oddamavadi', '          ', '1015', '1015', '1', '0');
INSERT INTO `bankmas` VALUES ('7311-57', '57', 'PAB Kattankudi', '          ', '1016', '1016', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-570', '570', 'BOC Hettipola         ', '          ', '1017', '1017', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-571', '571', 'BOC Kirindiwela         ', '          ', '1018', '1018', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-573', '573', 'BOC Central Bus Stand    ', '          ', '1020', '1020', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-574', '574', 'BOC Mankulam         ', '          ', '1021', '1021', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-575', '575', 'BOC Gampola           ', '          ', '1022', '1022', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-576', '576', 'BOC Dambulla           ', '          ', '1023', '1023', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-577', '577', 'BOC Lunugala            ', '          ', '1024', '1024', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-578', '578', 'BOC Yakkalamulla        ', '          ', '1025', '1025', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-579', '579', 'BOC Bibile               ', '          ', '1026', '1026', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-58', '58', 'COM Dehiwela', '          ', '1028', '1028', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-58', '58', 'HNB Ampara       ', '          ', '1029', '1029', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-58', '58', 'PB Mahiyangana         ', '          ', '1030', '1030', '1', '0');
INSERT INTO `bankmas` VALUES ('7311-58', '58', 'PAB kundasale', '          ', '1031', '1031', '1', '0');
INSERT INTO `bankmas` VALUES ('7162-58', '58', 'NTB Hambanthota', '          ', '1032', '1032', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-58', '58', 'SAM Harbour View Saving', '          ', '1033', '1033', '1', '0');
INSERT INTO `bankmas` VALUES ('7287-58', '58', 'SEY Kochchikade       ', '          ', '1034', '1034', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-580', '580', 'BOC Dummalasuriya       ', '          ', '1035', '1035', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-581', '581', 'BOC Madawala            ', '          ', '1036', '1036', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-582', '582', 'BOC Rabukkana         ', '          ', '1037', '1037', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-584', '584', 'BOC Wadduwa          ', '          ', '1038', '1038', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-585', '585', 'BOC Ruwanwella        ', '          ', '1039', '1039', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-587', '587', 'BOC Pilimatalawa      ', '          ', '1040', '1040', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-588', '588', 'BOC Peradeniya        ', '          ', '1041', '1041', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-589', '589', 'BOC Kalpitiya           ', '          ', '1042', '1042', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-59', '59', 'COM Moratuwa', '          ', '1043', '1043', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-59', '59', 'PB Polgahawela       ', '          ', '1045', '1045', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-59', '59', 'HNB Panchikawatte      ', '          ', '1046', '1046', '1', '0');
INSERT INTO `bankmas` VALUES ('7287-59', '59', 'SEY Bogawantalawa        ', '          ', '1047', '1047', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-59', '59', 'SAM Bandaragama Savings', '          ', '1048', '1048', '1', '0');
INSERT INTO `bankmas` VALUES ('7454-59', '59', 'DFCC Chunnakam', '          ', '1049', '1049', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-590', '590', 'BOC Akkaraipattu         ', '          ', '1050', '1050', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-591', '591', 'BOC Nintavur         ', '          ', '1051', '1051', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-592', '592', 'BOC Dickwella           ', '          ', '1052', '1052', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-593', '593', 'BOC Milagiriya      ', '          ', '1053', '1053', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-594', '594', 'BOC Rakwana           ', '          ', '1054', '1054', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-595', '595', 'BOC Kolonnawa           ', '          ', '1055', '1055', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-596', '596', 'BOC Talgaswela        ', '          ', '1056', '1056', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-597', '597', 'BOC Nivitigala       ', '          ', '1057', '1057', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-599', '599', 'BOC Aralaganwila         ', '          ', '1059', '1059', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-6', '6', 'COM Jaffna', '          ', '1060', '1060', '1', '0');
INSERT INTO `bankmas` VALUES ('7038-6', '6', 'SCB Moratuwa                     ', '          ', '1061', '1061', '1', '0');
INSERT INTO `bankmas` VALUES ('7092-6', '6', 'HSBC Echelon Square Branch     ', '          ', '1063', '1063', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-6', '6', 'PB Hingurakgoka         ', '          ', '1064', '1064', '1', '0');
INSERT INTO `bankmas` VALUES ('7162-6', '6', 'NTB Corporate Branc', '          ', '1066', '1066', '1', '0');
INSERT INTO `bankmas` VALUES ('7311-6', '6', 'PABC Rajagiriya        ', '          ', '1067', '1067', '1', '0');
INSERT INTO `bankmas` VALUES ('7287-6', '6', 'SEY Kiribathgoda      ', '          ', '1068', '1068', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-6', '6', 'SAM Kurunegala         ', '          ', '1069', '1069', '1', '0');
INSERT INTO `bankmas` VALUES ('7214-6', '6', 'NDB Matara Branch  ', '          ', '1070', '1070', '1', '0');
INSERT INTO `bankmas` VALUES ('7454-6', '6', 'DFCC Kandy Branch   ', '          ', '1071', '1071', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-60', '60', 'SAM Kadawatha Branch   ', '          ', '1072', '1072', '1', '0');
INSERT INTO `bankmas` VALUES ('7287-60', '60', 'SEY Ganemulla            ', '          ', '1073', '1073', '1', '0');
INSERT INTO `bankmas` VALUES ('7162-60', '60', 'NTB Ja ela', '          ', '1074', '1074', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-60', '60', 'HNB Bogawathala', '          ', '1075', '1075', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-60', '60', 'COM Narammala', '          ', '1078', '1078', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-600', '600', 'BOC Jayanthipura        ', '          ', '1079', '1079', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-601', '601', 'BOC Hingurakgoda      ', '          ', '1080', '1080', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-604', '604', 'BOC Ingiriya            ', '          ', '1081', '1081', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-605', '605', 'BOC Kankesanthural      ', '          ', '1082', '1082', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-606', '606', 'BOC Udu Dumbara       ', '          ', '1083', '1083', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-608', '608', 'BOC Kaduwela            ', '          ', '1085', '1085', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-609', '609', 'BOC Hikkaduwa         ', '          ', '1086', '1086', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-61', '61', 'COM Vavuniya', '          ', '1087', '1087', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-61', '61', 'PB Tissamaharama          ', '          ', '1089', '1089', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-61', '61', 'HNB Mount Lavinia      ', '          ', '1090', '1090', '1', '0');
INSERT INTO `bankmas` VALUES ('7162-61', '61', 'NTB Embilipitiya', '          ', '1091', '1091', '1', '0');
INSERT INTO `bankmas` VALUES ('7287-61', '61', 'SEY Kotagala          ', '          ', '1092', '1092', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-61', '61', 'SAM Battaramulla Branch', '          ', '1093', '1093', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-610', '610', 'BOC Pitigala          ', '          ', '1094', '1094', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-611', '611', 'BOC Kaluwanchikudy      ', '          ', '1095', '1095', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-613', '613', 'BOC Akuressa             ', '          ', '1097', '1097', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-615', '615', 'BOC Galagedara          ', '          ', '1099', '1099', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-616', '616', 'BOC Kataragama          ', '          ', '1100', '1100', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-619', '619', 'BOC Elpitiya            ', '          ', '1103', '1103', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-62', '62', 'COM Rajagiriya', '          ', '1104', '1104', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-62', '62', 'HNB Kollupitiya         ', '          ', '1105', '1105', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-62', '62', 'PB Wellawaya              ', '          ', '1106', '1106', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-62', '62', 'SAM Ampara Branch      ', '          ', '1107', '1107', '1', '0');
INSERT INTO `bankmas` VALUES ('7287-62', '62', 'SEY Raddolugama          ', '          ', '1108', '1108', '1', '0');
INSERT INTO `bankmas` VALUES ('7311-62', '62', 'PABC Balangoda', '          ', '1109', '1109', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-621', '621', 'BOC Kabithigollawa      ', '          ', '1110', '1110', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-622', '622', 'BOC Kahatagasdigiliya   ', '          ', '1111', '1111', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-626', '626', 'BOC Valachchenai     ', '          ', '1114', '1114', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-627', '627', 'BOC Regent Street     ', '          ', '1115', '1115', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-628', '628', 'BOC Grandpass         ', '          ', '1116', '1116', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-629', '629', 'BOC Koslanda            ', '          ', '1117', '1117', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-63', '63', 'COM Ambalantota', '          ', '1118', '1118', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-63', '63', 'HNB Hulftsdorp ', '          ', '1120', '1120', '1', '0');
INSERT INTO `bankmas` VALUES ('7287-63', '63', 'SEY Weliweriya           ', '          ', '1121', '1121', '1', '0');
INSERT INTO `bankmas` VALUES ('7162-63', '63', 'NTB Akurassa', '          ', '1122', '1122', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-63', '63', 'SAM Pelawatte', '          ', '1123', '1123', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-63', '63', 'PB Akkaraipattu', '          ', '1124', '1124', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-630', '630', 'BOC Chenkalady         ', '          ', '1125', '1125', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-633', '633', 'BOC Kandapola           ', '          ', '1126', '1126', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-634', '634', 'BOC Dehiowita          ', '          ', '1127', '1127', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-638', '638', 'BOC Nelliady        ', '          ', '1129', '1129', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-639', '639', 'BOC Rattota           ', '          ', '1130', '1130', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-64', '64', 'COM Seeduwa', '          ', '1131', '1131', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-64', '64', 'PB Sammanthurai      ', '          ', '1132', '1132', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-64', '64', 'HNB Maharagama', '          ', '1133', '1133', '1', '0');
INSERT INTO `bankmas` VALUES ('7287-64', '64', 'SEY Pettah               ', '          ', '1134', '1134', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-64', '64', 'SAM Kegalle            ', '          ', '1135', '1135', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-640', '640', 'BOC Pallepola        ', '          ', '1136', '1136', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-641', '641', 'BOC Medirigiriya     ', '          ', '1137', '1137', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-642', '642', 'BOC Deraniyagala       ', '          ', '1138', '1138', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-644', '644', 'BOC Parliamentary Comp', '          ', '1139', '1139', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-645', '645', 'BOC Kalawana            ', '          ', '1140', '1140', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-646', '646', 'BOC Ginigathhena      ', '          ', '1141', '1141', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-647', '647', 'BOC Lunuwatte           ', '          ', '1142', '1142', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-648', '648', 'BOC Kattankudy          ', '          ', '1143', '1143', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-649', '649', 'BOC Kandy 2nd City      ', '          ', '1144', '1144', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-65', '65', 'COM Nittambuwa', '          ', '1145', '1145', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-65', '65', 'PB Kattankudy       ', '          ', '1146', '1146', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-65', '65', 'HNB Matale             ', '          ', '1147', '1147', '1', '0');
INSERT INTO `bankmas` VALUES ('7287-65', '65', 'SEY Beliatta             ', '          ', '1148', '1148', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-65', '65', 'SAM Minuwangoda', '          ', '1149', '1149', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-650', '650', 'BOC Talatuoya         ', '          ', '1150', '1150', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-652', '652', 'BOC Bakamuna       ', '          ', '1151', '1151', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-653', '653', 'BOC Galkiriyagama     ', '          ', '1152', '1152', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-654', '654', 'BOC Madatugama          ', '          ', '1153', '1153', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-655', '655', 'BOC Tambuttegama      ', '          ', '1154', '1154', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-656', '656', 'BOC Nochiyagama      ', '          ', '1155', '1155', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-657', '657', 'BOC Agalawatta           ', '          ', '1156', '1156', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-66', '66', 'COM Mirigama', '          ', '1158', '1158', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-66', '66', 'HNB Pinnawala          ', '          ', '1159', '1159', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-66', '66', 'PB Trincomalee            ', '          ', '1160', '1160', '1', '0');
INSERT INTO `bankmas` VALUES ('7287-66', '66', 'SEY Matugama            ', '          ', '1162', '1162', '1', '0');
INSERT INTO `bankmas` VALUES ('7162-66', '66', 'NTB Mathugama', '          ', '1163', '1163', '1', '0');
INSERT INTO `bankmas` VALUES ('7311-66', '66', 'PABC Ja-Ela', '          ', '1164', '1164', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-660', '660', 'BOC Corporate Barnch   ', '          ', '1165', '1165', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-663', '663', 'BOC Kotahena            ', '          ', '1166', '1166', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-664', '664', 'BOC Pothuhera         ', '          ', '1167', '1167', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-665', '665', 'BOC Bandaragama    ', '          ', '1168', '1168', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-666', '666', 'BOC Katugastota         ', '          ', '1169', '1169', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-667', '667', 'BOC Neluwa          ', '          ', '1170', '1170', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-669', '669', 'BOC Girandurukotte    ', '          ', '1172', '1172', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-67', '67', 'COM Kadawatha', '          ', '1173', '1173', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-67', '67', 'PB Tangalle               ', '          ', '1174', '1174', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-67', '67', 'HNB Suriyawewa        ', '          ', '1175', '1175', '1', '0');
INSERT INTO `bankmas` VALUES ('7162-67', '67', 'NTB Karapitiya', '          ', '1176', '1176', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-67', '67', 'SAM 7278-067', '          ', '1177', '1177', '1', '0');
INSERT INTO `bankmas` VALUES ('7287-67', '67', 'SEY Malabe              ', '          ', '1178', '1178', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-670', '670', 'BOC Kollupitiya 2nd Bran', '          ', '1179', '1179', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-672', '672', 'BOC Central Supermkt Bran', '          ', '1180', '1180', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-673', '673', 'BOC Bulathsinhala        ', '          ', '1181', '1181', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-675', '675', 'BOC Nittambuwa       ', '          ', '1182', '1182', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-676', '676', 'BOC Kekirawa            ', '          ', '1183', '1183', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-678', '678', 'BOC Padukka          ', '          ', '1184', '1184', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-68', '68', 'COM Duplication Road', '          ', '1186', '1186', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-68', '68', 'HNB Hambantota ', '          ', '1188', '1188', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-68', '68', 'PB Monaragala          ', '          ', '1189', '1189', '1', '0');
INSERT INTO `bankmas` VALUES ('7287-68', '68', 'SEY Colombo South        ', '          ', '1190', '1190', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-68', '68', 'SAM Yakkala', '          ', '1191', '1191', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-680', '680', 'BOC Aluthgama            ', '          ', '1192', '1192', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-682', '682', 'BOC Veyangoda        ', '          ', '1194', '1194', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-683', '683', 'BOC Pelmadulla        ', '          ', '1195', '1195', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-684', '684', 'BOC Ratnapura Bazzar  ', '          ', '1196', '1196', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-686', '686', 'BOC Dehiattakandiya    ', '          ', '1197', '1197', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-688', '688', 'BOC Balangoda      ', '          ', '1198', '1198', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-689', '689', 'BOC Ratmalana         ', '          ', '1199', '1199', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-69', '69', 'COM Kiribathgoda', '          ', '1200', '1200', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-69', '69', 'PB Mawanella           ', '          ', '1201', '1201', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-69', '69', 'HNB Panadura           ', '          ', '1202', '1202', '1', '0');
INSERT INTO `bankmas` VALUES ('7454-69', '69', 'DFCC Mathugama', '          ', '1203', '1203', '1', '0');
INSERT INTO `bankmas` VALUES ('7162-69', '69', 'NTB Katugastota', '          ', '1204', '1204', '1', '0');
INSERT INTO `bankmas` VALUES ('7311-69', '69', 'PAB Minuwan goda', '          ', '1205', '1205', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-69', '69', 'SAM Homagama', '          ', '1206', '1206', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-690', '690', 'BOC Pelawatta         ', '          ', '1207', '1207', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-691', '691', 'BOC Hakmana           ', '          ', '1208', '1208', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-692', '692', 'BOC Eppawala            ', '          ', '1209', '1209', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-693', '693', 'BOC Ruhunu Campus Bran', '          ', '1210', '1210', '1', '0');
INSERT INTO `bankmas` VALUES ('7038-7', '7', 'SCB Rajagiriya  ', '          ', '1212', '1212', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-7', '7', 'COM Matara', '          ', '1213', '1213', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-7', '7', 'PB Hambantota        ', '          ', '1214', '1214', '1', '0');
INSERT INTO `bankmas` VALUES ('7092-7', '7', 'HSBC Colombo 4 Branch            ', '          ', '1215', '1215', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-7', '7', 'HNB Pettah             ', '          ', '1216', '1216', '1', '0');
INSERT INTO `bankmas` VALUES ('7162-7', '7', 'NTB Negombo Br     ', '          ', '1217', '1217', '1', '0');
INSERT INTO `bankmas` VALUES ('7214-7', '7', 'NDB 7214 - 007', '          ', '1218', '1218', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-7', '7', 'SAM Kandy              ', '          ', '1219', '1219', '1', '0');
INSERT INTO `bankmas` VALUES ('7287-7', '7', 'SEY Ratnapura            ', '          ', '1220', '1220', '1', '0');
INSERT INTO `bankmas` VALUES ('7311-7', '7', 'PABC Ratnapura    ', '          ', '1221', '1221', '1', '0');
INSERT INTO `bankmas` VALUES ('7454-7', '7', 'DFCC City Branch    ', '          ', '1222', '1222', '1', '0');
INSERT INTO `bankmas` VALUES ('7287-70', '70', 'SEY Warakapola           ', '          ', '1223', '1223', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-70', '70', 'HNB Dankotuwa  ', '          ', '1224', '1224', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-70', '70', 'PB Matugama            ', '          ', '1225', '1225', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-70', '70', 'COM Avissawella', '          ', '1226', '1226', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-71', '71', 'COM Ekala', '          ', '1227', '1227', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-71', '71', 'PB Dematagoda          ', '          ', '1228', '1228', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-71', '71', 'HNB Balangoda  ', '          ', '1229', '1229', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-71', '71', 'SAM Nittambuwa', '          ', '1230', '1230', '1', '0');
INSERT INTO `bankmas` VALUES ('7287-71', '71', 'SEY Wattala              ', '          ', '1231', '1231', '1', '0');
INSERT INTO `bankmas` VALUES ('7162-71', '71', 'NTB Old moor street', '          ', '1232', '1232', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-716', '716', 'BOC Delgoda', '          ', '1233', '1233', '1', '0');
INSERT INTO `bankmas` VALUES ('7287-72', '72', 'SEY Vavuniya             ', '          ', '1234', '1234', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-72', '72', 'HNB Sea Street Branch  ', '          ', '1235', '1235', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-72', '72', 'PB Ambalantota         ', '          ', '1236', '1236', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-72', '72', 'COM Pettah Main Street', '          ', '1237', '1237', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-720', '720', 'BOC Ganemulla', '          ', '1238', '1238', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-728', '728', 'BOC Meegallewa       ', '          ', '1239', '1239', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-73', '73', 'COM Peradeniya', '          ', '1240', '1240', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-73', '73', 'PB Elpitiya            ', '          ', '1241', '1241', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-73', '73', 'SAM Ragama', '          ', '1242', '1242', '1', '0');
INSERT INTO `bankmas` VALUES ('7287-73', '73', 'SEY Batticaloa           ', '          ', '1243', '1243', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-730', '730', 'BOC Welimada            ', '          ', '1244', '1244', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-732', '732', 'BOC Biyagama             ', '          ', '1245', '1245', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-735', '735', 'BOC Kinniya             ', '          ', '1246', '1246', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-736', '736', 'BOC Piliyandala       ', '          ', '1247', '1247', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-74', '74', 'COM Kochchikade', '          ', '1248', '1248', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-74', '74', 'PB Wattegama          ', '          ', '1249', '1249', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-74', '74', 'HNB Kuliyapitiya        ', '          ', '1250', '1250', '1', '0');
INSERT INTO `bankmas` VALUES ('7287-74', '74', 'SEY Kaththankudy      ', '          ', '1251', '1251', '1', '0');
INSERT INTO `bankmas` VALUES ('7311-74', '74', 'PAB Tangalle', '          ', '1253', '1253', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-741', '741', 'BOC Hanwella          ', '          ', '1255', '1255', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-743', '743', 'BOC Walapane  ', '          ', '1256', '1256', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-745', '745', 'BOC Kotiyakumbura       ', '          ', '1257', '1257', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-746', '746', 'BOC Rajagiriya       ', '          ', '1258', '1258', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-747', '747', 'BOC Taprobane         ', '          ', '1259', '1259', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-749', '749', 'BOC Karainagar       ', '          ', '1260', '1260', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-75', '75', 'HNB Buttala bra', '          ', '1262', '1262', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-75', '75', 'PB Batticaloa          ', '          ', '1263', '1263', '1', '0');
INSERT INTO `bankmas` VALUES ('7287-75', '75', 'SEY Avissawela           ', '          ', '1264', '1264', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-754', '754', 'BOC Ahungalla            ', '          ', '1266', '1266', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-757', '757', 'BOC Athurugiriya   ', '          ', '1267', '1267', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-76', '76', 'COM Horana', '          ', '1268', '1268', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-76', '76', 'PB Wennappuwa             ', '          ', '1269', '1269', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-76', '76', 'HNB Cinnamon Garden       ', '          ', '1270', '1270', '1', '0');
INSERT INTO `bankmas` VALUES ('7287-76', '76', 'SEY Nawalapitiya        ', '          ', '1271', '1271', '1', '0');
INSERT INTO `bankmas` VALUES ('7162-76', '76', 'NTB Kottawa', '          ', '1272', '1272', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-761', '761', 'BOC Jaffna Dist-Thiru', '          ', '1273', '1273', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-762', '762', 'BOC Narahenpita Branc', '          ', '1274', '1274', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-763', '763', 'BOC Malabe Branch    ', '          ', '1275', '1275', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-764', '764', 'BOC Ragama', '          ', '1276', '1276', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-765', '765', 'BOC Pugoda', '          ', '1277', '1277', '1', '0');
INSERT INTO `bankmas` VALUES ('7162-77', '77', 'NTB Gothatuwa', '          ', '1278', '1278', '1', '0');
INSERT INTO `bankmas` VALUES ('7287-77', '77', 'SEY Kekirawa          ', '          ', '1279', '1279', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-77', '77', 'COM Piliyandala', '          ', '1280', '1280', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-77', '77', 'PB Weligama           ', '          ', '1282', '1282', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-770', '770', 'BOC Ibbagamuwa', '          ', '1283', '1283', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-771', '771', 'BOC Kandana', '          ', '1284', '1284', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-773', '773', 'BOC Kottawa', '          ', '1285', '1285', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-774', '774', 'BOC Angunakolapelessa', '          ', '1286', '1286', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-776', '776', 'BOC Islamic Banking Unit', '          ', '1287', '1287', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-78', '78', 'COM Talawathugoda', '          ', '1288', '1288', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-78', '78', 'PB Borella             ', '          ', '1289', '1289', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-78', '78', 'HNB Akkaraipattu ', '          ', '1290', '1290', '1', '0');
INSERT INTO `bankmas` VALUES ('7287-78', '78', 'SEY Mirigama            ', '          ', '1291', '1291', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-78', '78', 'SAM Ganemulla', '          ', '1292', '1292', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-780', '780', 'BOC Kadawatha Second City', '          ', '1293', '1293', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-785', '785', 'BOC Hali-Ela', '          ', '1294', '1294', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-786', '786', 'BOC Godakawela', '          ', '1295', '1295', '1', '0');
INSERT INTO `bankmas` VALUES ('7010-789', '789', 'BOC Makola', '          ', '1296', '1296', '1', '0');
INSERT INTO `bankmas` VALUES ('7287-79', '79', 'SEY Soysapura            ', '          ', '1297', '1297', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-79', '79', 'HNB Maradagahamula     ', '          ', '1298', '1298', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-79', '79', 'PB Veyangoda          ', '          ', '1299', '1299', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-79', '79', 'COM Mawanella', '          ', '1300', '1300', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-8', '8', 'COM Matale', '          ', '1301', '1301', '1', '0');
INSERT INTO `bankmas` VALUES ('7038-8', '8', 'SCB Kollupitiya                  ', '          ', '1302', '1302', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-8', '8', 'PB Anuradhapura        ', '          ', '1303', '1303', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-8', '8', 'HNB Suduwella          ', '          ', '1304', '1304', '1', '0');
INSERT INTO `bankmas` VALUES ('7092-8', '8', 'HSBC Pelawatte Branch           ', '          ', '1305', '1305', '1', '0');
INSERT INTO `bankmas` VALUES ('7311-8', '8', 'PABC Nug                ', '          ', '1306', '1306', '1', '0');
INSERT INTO `bankmas` VALUES ('7287-8', '8', 'SEY Kollupitiya       ', '          ', '1307', '1307', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-8', '8', 'SAM Wattala            ', '          ', '1308', '1308', '1', '0');
INSERT INTO `bankmas` VALUES ('7162-8', '8', 'NTB Pettah Br      ', '          ', '1309', '1309', '1', '0');
INSERT INTO `bankmas` VALUES ('7454-8', '8', 'DFCC Ratnapura Branc', '          ', '1310', '1310', '1', '0');
INSERT INTO `bankmas` VALUES ('7287-80', '80', 'SEY Ruwanwella', '          ', '1311', '1311', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-80', '80', 'PB Ratmalana         ', '          ', '1312', '1312', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-80', '80', 'HNB Marawila           ', '          ', '1313', '1313', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-80', '80', 'COM Bandarawela', '          ', '1314', '1314', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-81', '81', 'COM Ja-Ela', '          ', '1315', '1315', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-81', '81', 'HNB Ambalangoda         ', '          ', '1316', '1316', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-81', '81', 'PB Ruwanwela         ', '          ', '1317', '1317', '1', '0');
INSERT INTO `bankmas` VALUES ('7287-81', '81', 'SEY Hambantota           ', '          ', '1318', '1318', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-81', '81', 'SAM Welimada', '          ', '1319', '1319', '1', '0');
INSERT INTO `bankmas` VALUES ('7287-82', '82', 'SEY Borella Branch       ', '          ', '1320', '1320', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-82', '82', 'PB Narammala           ', '          ', '1321', '1321', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-82', '82', 'HNB Kaduwela   ', '          ', '1322', '1322', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-82', '82', 'COM Balangoda', '          ', '1323', '1323', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-83', '83', 'COM Nikaweratiya', '          ', '1327', '1327', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-83', '83', 'HNB Puttalam           ', '          ', '1328', '1328', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-83', '83', 'PB Nattandiya          ', '          ', '1329', '1329', '1', '0');
INSERT INTO `bankmas` VALUES ('7287-83', '83', 'SEY Havelock Town        ', '          ', '1330', '1330', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-83', '83', 'SBL Kirindiwela', '          ', '1331', '1331', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-84', '84', 'SAM Nuwara eliya', '          ', '1332', '1332', '1', '0');
INSERT INTO `bankmas` VALUES ('7287-84', '84', 'SEY Marandagahamulla     ', '          ', '1333', '1333', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-84', '84', 'PB Aluthgama           ', '          ', '1334', '1334', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-84', '84', 'HNB Kadawatte  ', '          ', '1335', '1335', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-84', '84', 'COM Bandaragama', '          ', '1336', '1336', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-85', '85', 'COM Yakkala', '          ', '1337', '1337', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-85', '85', 'PB Eheliyagoda         ', '          ', '1340', '1340', '1', '0');
INSERT INTO `bankmas` VALUES ('7287-85', '85', 'SEY Jaffna Region-Jaffna ', '          ', '1341', '1341', '1', '0');
INSERT INTO `bankmas` VALUES ('7287-86', '86', 'SEY Millennium   ', '          ', '1342', '1342', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-86', '86', 'PB Thimbirigasyaya        ', '          ', '1343', '1343', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-86', '86', 'HNB Tangalle          ', '          ', '1344', '1344', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-86', '86', 'COM Malabe', '          ', '1345', '1345', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-87', '87', 'COM Kohuwela', '          ', '1346', '1346', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-87', '87', 'PB Baddegama           ', '          ', '1349', '1349', '1', '0');
INSERT INTO `bankmas` VALUES ('7287-87', '87', 'SEY Ranpokunugama Branch ', '          ', '1350', '1350', '1', '0');
INSERT INTO `bankmas` VALUES ('7287-88', '88', 'SEY Trincomalee Branch   ', '          ', '1351', '1351', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-88', '88', 'SAM Nigombo', '          ', '1352', '1352', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-88', '88', 'PB Ratnapura         ', '          ', '1353', '1353', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-88', '88', 'HNB Thambuthegama     ', '          ', '1354', '1354', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-88', '88', 'COM Kadurewela', '          ', '1356', '1356', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-89', '89', 'COM Nawalapitiya', '          ', '1357', '1357', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-89', '89', 'HNB Mawanella ', '          ', '1359', '1359', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-89', '89', 'PB Katugastota      ', '          ', '1360', '1360', '1', '0');
INSERT INTO `bankmas` VALUES ('7287-89', '89', 'SEY Meegoda Branch       ', '          ', '1361', '1361', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-9', '9', 'SAM Navam Mawatha      ', '          ', '1362', '1362', '1', '0');
INSERT INTO `bankmas` VALUES ('7287-9', '9', 'SEY Moratuwa            ', '          ', '1363', '1363', '1', '0');
INSERT INTO `bankmas` VALUES ('7311-9', '9', 'PABC Bambalapitiya      ', '          ', '1364', '1364', '1', '0');
INSERT INTO `bankmas` VALUES ('7162-9', '9', 'NTB Mahabage Branch', '          ', '1365', '1365', '1', '0');
INSERT INTO `bankmas` VALUES ('7463-9', '9', 'AMANA Bank COl-3', '          ', '1366', '1366', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-9', '9', 'HNB Wellawatte        ', '          ', '1367', '1367', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-9', '9', 'PB Puttalam          ', '          ', '1368', '1368', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-9', '9', 'COM Galewela', '          ', '1370', '1370', '1', '0');
INSERT INTO `bankmas` VALUES ('7454-9', '9', 'DFCC Anuradhapura   ', '          ', '1371', '1371', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-90', '90', 'COM Treasury', '          ', '1372', '1372', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-90', '90', 'PB Kantalai         ', '          ', '1373', '1373', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-90', '90', 'HNB Tissamaharama Branc', '          ', '1374', '1374', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-90', '90', 'SBL DAMBULLA', '          ', '1375', '1375', '1', '0');
INSERT INTO `bankmas` VALUES ('7287-90', '90', 'SEY Pelmadulla Branch    ', '          ', '1376', '1376', '1', '0');
INSERT INTO `bankmas` VALUES ('7214-900', '900', 'NDB Head Office (Co', '          ', '1377', '1377', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-91', '91', 'HNB Kalmunai Branch   ', '          ', '1378', '1378', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-91', '91', 'PB Moratuwa            ', '          ', '1379', '1379', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-92', '92', 'PB Giriulla             ', '          ', '1380', '1380', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-92', '92', 'HNB Thimbirigasyaya    ', '          ', '1381', '1381', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-93', '93', 'COM Mt Lavinia CSP', '          ', '1384', '1384', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-93', '93', 'HNB Dehiwela           ', '          ', '1385', '1385', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-93', '93', 'PB Pugoda            ', '          ', '1386', '1386', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-94', '94', 'PB Kinniya              ', '          ', '1387', '1387', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-94', '94', 'HNB Minuwangoda     ', '          ', '1388', '1388', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-94', '94', 'SAM Kohuwela', '          ', '1389', '1389', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-95', '95', 'HNB Kantalai Branch    ', '          ', '1390', '1390', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-95', '95', 'PB Muttur              ', '          ', '1391', '1391', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-96', '96', 'PB Medawachchiya       ', '          ', '1392', '1392', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-96', '96', 'HNB Kotahena Branch    ', '          ', '1393', '1393', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-96', '96', 'COM Matugama', '          ', '1394', '1394', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-96', '96', 'SAM Hendala', '          ', '1395', '1395', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-97', '97', 'COM Ambalangoda', '          ', '1396', '1396', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-97', '97', 'HNB Mutwal             ', '          ', '1398', '1398', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-97', '97', 'PB Gangodawila          ', '          ', '1399', '1399', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-98', '98', 'PB Kotikawatte          ', '          ', '1400', '1400', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-98', '98', 'HNB Kottawa            ', '          ', '1401', '1401', '1', '0');
INSERT INTO `bankmas` VALUES ('7056-98', '98', 'COM Baddegama CSP', '          ', '1403', '1403', '1', '0');
INSERT INTO `bankmas` VALUES ('7287-98', '98', 'SEY Chenkalady', '          ', '1404', '1404', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-99', '99', 'SAM 7278 ~ 99   ', '          ', '1405', '1405', '1', '0');
INSERT INTO `bankmas` VALUES ('7083-99', '99', 'HNB Kirindiwela Branch ', '          ', '1407', '1407', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-993', '993', 'SAM Central Clearing De', '          ', '1408', '1408', '1', '0');
INSERT INTO `bankmas` VALUES ('7278-996', '996', 'SAM Card Centre        ', '          ', '1409', '1409', '1', '0');
INSERT INTO `bankmas` VALUES ('7135-999', '999', 'PB Pay Order  s Division  ', '          ', '1410', '1410', '1', '0');
INSERT INTO `bankmas` VALUES ('7162', '67', 'NTB', 'Karapitiya', '1411', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7278', '47', 'SB', 'Panadura', '1414', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7278-47', '47', 'SAM PANADURA', '', '1415', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7302', '37', 'UB', 'Marawila', '1418', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7302-37', '37', 'UB Marawila ', '', '1419', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7302-46', '46', 'UB Warakapola ', '', '1420', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7287-91', '91 ', 'SEY Ampara', '', '1421', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7302-31', '31', 'UB Anuradhapura', '', '1423', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7287-136', '136', 'SEY Kotiyakumbura ', '', '1424', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7162-43', '43', 'NTB Chilaw', '', '1425', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7302-28', '28', 'UB Piliyandala ', '', '1426', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7302-53', '53', 'UB Mathugama', '', '1427', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7287-132', '132', 'SEY Madawachchiya', '', '1428', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7278-74', '074', 'SAM Monaragala', '', '1429', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7010-389', '389', 'BOC Diyasenpura', '', '1430', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7056-162', '162', 'COM Thambuththegama ', '', '1431', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7010-393', '393', 'BOC Habarana ', '', '1432', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7056-183', '183', 'COM Maravila', '', '1433', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7162-001', '001', 'NTB Kohuwala', '', '1434', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7162-89', '89', 'NTB Tangalle ', '', '1435', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7162-51', '51', 'NTD Wattala', '', '1436', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7287-126', '126', 'SEY Kirindiwela', '', '1438', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7278-102', '102', 'SAM Nikaweratiya', '', '1439', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7302-35', '35', 'UB Ambalangoda', '', '1440', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7463-19', '19', 'AMANA Eravur', '', '1441', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7302-59', '59', 'UB Ganemulla', '', '1442', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7302-11', '11', 'UB Matara', '', '1443', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7162-87', '87', 'NTB Hikkaduwa', '', '1444', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7214-57', '57', 'NDB NAWAM MW', '', '1445', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7056-175', '175', 'COM Kuruwita ', '', '1449', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7278-66', '66', 'SAM Trincomalee ', '', '1450', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7214-78', '78', 'NDB BANK NAWAM MW', '', '1451', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7287-127', '127', 'SEY YATIYANTHOTA', '', '1455', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7302-56', '56', 'UNION KULIYAPITIYA', '', '1456', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7010-282', '282', 'BOC Kitugala ', '', '1458', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7214-17', '17', 'NDB NAWAM MW 7214-17', '', '1460', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7162-54', '54', 'NTB kohuwala ', '', '1462', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7083-236', '236', 'HNB Akurana', '', '1464', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7302-41', '41', 'UB Agunakolapellassa', '', '1465', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7056-173', '173', 'COM Kataragama', '', '1466', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7311-41', '41', 'PAB Ambalangoda', '', '1467', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7454-49', '49', 'DFCC Kegalle', '', '1468', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7162-79', '79', 'NTB Kegalle', '', '1469', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7010-557', '557', 'BOC Moratu mulla', '', '1470', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7302-61', '61', 'UB Medawachchiya', '', '1472', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7162-59', '59', 'NTB Badulla', '', '1473', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7214-046', '046', 'NDB NAWAM MW', '', '1474', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7010-806', '806', 'BOC Mahaoya', '', '1476', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7162-37', '37', 'NTB Kalmunai', '', '1477', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7287-153', '153', 'SEY Siyambalanduwa', '', '1478', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7056-137', '137', 'COM Mahiyanganaya', '', '1479', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7311-35', '35', 'PABC Malabe', '', '1480', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7214-111', '111', 'NDB Nawam mw', '', '1481', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7010-766', '766', 'BOC Mount Lavinia', '', '1482', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7214-30', '30', 'NDB Nawam mw', '', '1483', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7162-70', '70', 'NTB Kaduwela', '', '1484', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7010-465', '465', 'BOC Bokkawala', '', '1485', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7454-67', '67', 'DFCC Galewela', '', '1486', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7287-100', '100', 'SEY Akuressa', '', '1487', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7010-261', '261', 'BOC Katuwana', '', '1488', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7010-748', '748', 'BOC Uragasmanhandiya', '', '1489', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7278-222', '222', 'SAM Thalawakele', '', '1490', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7010-324', '324', 'BOC Kumbukgate', '', '1491', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7278-227', '227', 'SAM Kelaniya', '', '1492', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7278-159', '159', 'SAM Galle Bazaar', '', '1493', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7056-181', '181', 'COM Beliatta', '', '1494', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7287-165', '165', 'SEY Matara Bazzar', '', '1495', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7214-21', '21', 'Nawam Mw Colombo 2', '', '1496', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7214-54', '54', 'NDB Colombo 2', '', '1498', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7056-186', '186', 'COM Passara', '', '1499', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7287-106', '106', 'SEY Narammala', '', '1500', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7278-215', '215', 'SAM Kurunegala Metro', '', '1501', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7287-115', '115', 'SEY Kanthale', '', '1502', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7056-288', '288', 'COM Theldeniya', '', '1503', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7302-14', '14', 'UB Je-Ela', '', '1504', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7135-349', '349', 'PB Pallebedda', '', '1505', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7278-217', '217', 'SAM Prince Street', '', '1506', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7056-157', '157', 'COM Thirunelvely', '', '1507', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7287-172', '172', 'SEY Hettipola', '', '1508', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7056-281', '281', 'COM Yatiyanthota', '', '1509', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7083-159', '159', 'HNB Ninthavur', '', '1510', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7463-10', '10', 'Amana Akurana', '', '1511', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7311-50', '50', 'PABC Rathmalana', '', '1512', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7162-38', '38', 'NTB Malabe', '', '1513', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7287-163', '163', 'SEY Athurugiriya', '', '1514', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7278-212', '212', 'SAM Gampaha Super', '', '1515', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7311-77', '77', 'PABC Horana', '', '1516', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7056-133', '133', 'COM Kahawatta', '', '1517', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7214-58', '58', 'NDB Nawam mw', '', '1518', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7454-102', '102', 'DFCC Urubokka', '', '1519', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7083-200', '200', 'HNB Hakmana', '', '1520', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7010-782', '782', 'BOC Rambewa', '', '1521', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7287-155', '155', 'SEY Hasalaka', '', '1522', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7454-11', '11', 'DFCC Badulla', '', '1523', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7454-65', '65', 'DFCC Digana', '', '1524', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7162-88', '88', 'NTB Gampola', '', '1525', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7454-97', '97', 'DFCC Tissamaharama', '', '1526', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7278-216', '216', 'SAM Dikwella', '', '1527', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7454-110', '110', 'DFCC Mahiyanganaya', '', '1528', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7010-651', '651', 'BOC Bombuwela', '', '1529', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7278-141', '141', 'SAM Karapitiya', '', '1530', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7162-57', '57', 'NTB Akkaraipattu', '', '1531', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7278-112', '112', 'SAM Kalmunai', '', '1532', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7056-279', '279', 'COM Katana', '', '1533', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7278-153', '153', 'SAM Matara Bazaar', '', '1534', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7010-784', '784', 'BOC Deiyandara', '', '1535', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7010-769', '769', 'BOC Yakkala', '', '1536', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7083-134', '134', 'HNB Tthirukkovil', '', '1537', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7454-58', '58', 'DFCC Akkaraipattu', '', '1538', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7287-151', '151', 'SEY Pothuvil', '', '1539', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7083-208', '208', 'HNB Rathmalana', '', '1540', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7010-767', '767', 'BOC Ranna', '', '1541', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7278-109', '109', 'SAM Mawathagama', '', '1542', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7278-196', '196', 'SAM Dankotuwa', '', '1543', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7287-145', '145', 'SEY Baduraliya', '', '1544', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7454-37', '37', 'DFCC Kalawana', '', '1545', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7214-109', '109', 'NDB Katana', '', '1546', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7454-71', '71', 'DFCC Nikaweratiya', '', '1547', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7454-100', '100', 'DFCC Matara', '', '1548', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7454-81', '81', 'DFCC Bandaragama', '', '1549', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7010-461', '461', 'BOC Palapathwala', '', '1550', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7010-409', '409', 'BOC Thambiluvil', '', '1551', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7278-193', '193', 'SAM Mutwal', '', '1552', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7287-158', '158', 'SEY Pilimathalawa', '', '1553', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7056-126', '126', 'COM Chavakachcheriya', '', '1554', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7010-447', '447', 'BOC Wilgamuwa', '', '1555', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7214-67', '67', 'NDB Elpitiya', '', '1556', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7311-85', '85', 'PABC Weligama', '', '1557', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7214-71', '71', 'NDB Nawam mw', '', '1558', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7214-89', '89', 'NDB Kochchikade', '', '1560', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7214-70', '70', 'NDB Monaragala', '', '1561', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7278-80', '80', 'SAM Hatton', '', '1562', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7214-48', '48', 'NDB Ambalanthota', '', '1563', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7056-180', '180', 'COM Divulapitiya', '', '1565', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7287-107', '107', 'SEY Mahiyanganaya', '', '1566', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7214-45', '45', 'NDB Mathugama', '', '1567', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7056-3', '3', 'COM Foreign Branch', '', '1568', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7162-36', '36', 'NTB Horana', '', '1569', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7278-224', '224', 'SAM Kesbewa', '', '1570', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7056-284', '284', 'COM Enderamulla', '', '1571', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7278-208', '208', 'SAM Muttur', '', '1572', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7214-53', '53', 'NDB Kalmunai', '', '1573', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7135-176', '176', 'PB Mid City Branch', '', '1574', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7162-19', '19', 'NTB Kotahena', '', '1575', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7135-4', '4', 'PB Corporative Banking Division', '', '1576', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7010-751', '751', 'BOC Suriyawewa', '', '1578', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7287-138', '138', 'SEY Eppawala', '', '1579', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7010-723', '723', 'BOC Mulleriyawa New Town', '', '1580', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7056-160', '160', 'COM Wellawaya', '', '1581', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7287-95', '95', 'SEY Chawakachcheri', '', '1582', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7083-36', '36', 'HNB Rajagiriya', '', '1583', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7010-679', '679', 'BOC Battaramulla', '', '1584', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7135-320', '320', 'PB Golden Jubilee Branch ', '', '1585', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7010-323', '323', 'BOC Kochchikade', '', '1586', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7056-184', '184', 'COM Thalawakele', '', '1587', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7083-246', '246', 'HNB Thalawakele', '', '1588', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7010-001', '001', 'BOC City Office        ', '', '1591', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7010-010', '010', 'BOC Savings Dept.     ', '', '1592', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7010-011', '011', 'BOC Badulla        ', '', '1593', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7010-012', '012', 'BOC Batticaloa     ', '', '1594', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7010-015', '015', 'BOC Central Office       ', '', '1595', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7010-016', '016', 'BOC Kalutara            ', '', '1596', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7010-018', '018', 'BOC Negombo         ', '', '1597', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7010-002', '002', 'BOC Kandy               ', '', '1598', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7010-020', '020', 'BOC Chilaw             ', '', '1599', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7010-021', '021', 'BOC Ampara               ', '', '1600', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7010-022', '022', 'BOC Anuradhapura         ', '', '1601', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7010-023', '023', 'BOC Wellawatte          ', '', '1602', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7010-024', '024', 'BOC Matara           ', '', '1603', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7010-025', '025', 'BOC Prince Street     ', '', '1604', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7010-026', '026', 'BOC Main Street         ', '', '1605', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7010-027', '027', 'BOC Kegalle             ', '', '1606', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7010-028', '028', 'BOC Point Pedro       ', '', '1607', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7010-029', '029', 'BOC Nuwara Eliya     ', '', '1608', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7463-025', '025', 'AMANA Ratnapura', '', '1609', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7083-085', '085', 'HNB Talangama Branch   ', '', '1610', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7135-032', '032', 'PEOPLES Matara Uyanwatte    ', '', '1612', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7083-087', '087', 'HNB Ja-Ela', '', '1613', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7010-003', '003', 'BOC Galle             ', '', '1614', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7010-030', '030', 'BOC Katubedda           ', '', '1615', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7010-031', '031', 'BOC Ratnapura         ', '', '1616', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7010-284', '284', 'BOC Kotiyakumbura', '', '1617', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7010-314', '314', 'BOC Galigamuwa', '', '1623', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7010-032', '032', 'BOC Aluthkade        ', '', '1625', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7010-034', '034', 'BOC Kollupitiya         ', '', '1626', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7010-037', '037', 'BOC Bambalapitiya  ', '', '1627', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7010-035', '035', 'BOC Haputale          ', '', '1628', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7010-038', '038', 'BOC Borella              ', '', '1629', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7010-039', '039', 'BOC Ja-Ela              ', '', '1630', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7278-010', '010', 'SAMPATH Matara             ', '', '1632', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7278-200', '200', 'SAMPATH Kiribathgoda', '', '1633', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7083-006', '006', 'HNB Maligahawatta', '', '1634', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7056-025', '025', 'COMMERCIAL Katunayake FTZ', '', '1635', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7056-190', '190', 'COMMERCIAL Katunayake 24/7 Cent.', '', '1638', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7056-118', '118', 'COMMERCIAL Negombo Ext. Office', '', '1639', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7010-045', '045', 'BOC Gampaha S/G          ', '', '1640', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7083-046', '046', 'HNB Grandpass  ', '', '1641', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7056-075', '075', 'COMMERCIAL Homagama', '', '1642', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7214-001', '001', 'NDB Nawam Mawatha', '', '1643', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7287-032', '032', 'SEYLAN Cinnamon Gardens     ', '', '1644', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7056-177', '177', 'COMMERCIAL Ganemulla', '', '1645', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7135-272', '272', 'PEOPLES Talgaswela             ', '', '1646', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7083-077', '077', 'HNB Homagama   ', '', '1647', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7278-204', '204', 'SAMPATH Elpitiya', '', '1648', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7135-060', '060', 'PEOPLES Morawaka            ', '', '1649', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7311-045', '045', 'PAN ASIA Badulla', '', '1650', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7056-026', '026', 'COMMERCIAL Wennappuwa', '', '1651', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7010-004', '004', 'BOC Pettah            ', '', '1652', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7010-040', '040', 'BOC Hatton            ', '', '1653', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7010-041', '041', 'BOC Maradana         ', '', '1654', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7010-042', '042', 'BOC Peliyagoda        ', '', '1655', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7010-043', '043', 'BOC Union Place        ', '', '1657', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7010-044', '044', 'BOC Vavuniya         ', '', '1658', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7010-046', '046', 'BOC Mannar           ', '', '1659', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7010-047', '047', 'BOC Ambalangoda          ', '', '1660', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7010-005', '005', 'BOC Jaffna              ', '', '1661', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7010-050', '050', 'BOC Nattandiya      ', '', '1662', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7010-048', '048', 'BOC Puttalam          ', '', '1663', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7010-049', '049', 'BOC Nugegoda         ', '', '1664', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7010-051', '051', 'BOC Dehiwela           ', '', '1665', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7010-052', '052', 'BOC Kuliyapitiya        ', '', '1666', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7010-053', '053', 'BOC Chunnakam          ', '', '1667', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7010-054', '054', 'BOC Horana            ', '', '1668', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7010-055', '055', 'BOC Maharagama          ', '', '1669', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7010-056', '056', 'BOC Tangalle          ', '', '1670', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7010-057', '057', 'BOC Eheliyagoda         ', '', '1671', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7010-006', '006', 'BOC Trincomalee       ', '', '1672', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7010-058', '058', 'BOC Beruwala             ', '', '1673', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7010-059', '059', 'BOC Kadawatha           ', '', '1674', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7010-060', '060', 'BOC Fifth City          ', '', '1675', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7010-061', '061', 'BOC Moratuwa    ', '', '1676', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7010-063', '063', 'BOC Velanai              ', '', '1677', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7010-068', '068', 'BOC Matale           ', '', '1678', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7010-082', '082', 'BOC Monaragala      ', '', '1679', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7010-007', '007', 'BOC Panadura         ', '', '1680', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7010-083', '083', 'BOC Polannaruwa New Town', '', '1681', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7010-009', '009', 'BOC Kurunegala          ', '', '1682', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7010-085', '085', 'BOC Hambantota        ', '', '1683', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7010-087', '087', 'BOC International Div.', '', '1684', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7010-088', '088', 'BOC Mirigama        ', '', '1685', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7010-089', '089', 'BOC Galle Bazaar      ', '', '1686', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7010-092', '092', 'BOC Naula           ', '', '1687', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7010-093', '093', 'BOC Kilinochchi         ', '', '1688', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7010-097', '097', 'BOC Rajangane       ', '', '1689', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7010-099', '099', 'BOC Primary Dealer Unit', '', '1690', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7010-098', '098', 'BOC Anuradhapura New Town     ', '', '1691', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7010-822', '822', 'BOC 2nd Corp. Branch', '', '1692', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7010-598', '598', 'BOC Nawalapitiya', '', '1693', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7010-513', '513', 'BOC Kurunegala Bazaar   ', '', '1694', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7010-572', '572', 'BOC Negombo Bazaar  ', '', '1695', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7010-607', '607', 'BOC Panadura Bazaar   ', '', '1696', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7010-624', '624', 'BOC Trincomalee Bazaar', '', '1697', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7010-551', '551', 'BOC Anuradhapura Bazaar  ', '', '1698', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7010-614', '614', 'BOC Matara Bazaar    ', '', '1700', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7010-617', '617', 'BOC Keselwatte', '', '1701', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7010-299', '299', 'BOC Makandura', '', '1703', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7010-135', '135', 'BOC Imaduwa', '', '1704', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7010-298', '298', 'BOC Urubokka', '', '1705', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7010-623', '623', 'BOC Kantalai Bazaar     ', '', '1706', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7010-750', '750', 'BOC Koggala EPZ   ', '', '1707', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7010-643', '643', 'BOC Gonapola', '', '1708', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7010-668', '668', 'BOC Borella 2nd Bran   ', '', '1709', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7010-500', '500', 'BOC Jaffna 2nd Bran', '', '1710', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7010-612', '612', 'BOC Lake View Bran    ', '', '1711', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7010-618', '618', 'BOC Metropolitan Bran', '', '1712', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7010-636', '636', 'BOC Lake House Bran', '', '1713', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7010-658', '658', 'BOC Katunayake IPZ      ', '', '1714', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7010-681', '681', 'BOC Personal Bran New HQ', '', '1715', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7038-001', '001', 'SCB Main Office', '', '1718', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7278-202', '202', 'SAMPATH Delgoda', '', '1720', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7038-010', '010', 'SCB Pettah                        ', '', '1721', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7038-011', '011', 'SCB Lipton Circus           ', '', '1722', null, '1', '0');
INSERT INTO `bankmas` VALUES ('7454-056', '056', 'DFCC Tangalle', '', '1723', null, '1', '0');

-- ----------------------------
-- Table structure for `bankmaster`
-- ----------------------------
DROP TABLE IF EXISTS `bankmaster`;
CREATE TABLE `bankmaster` (
  `BM_CODE` varchar(255) DEFAULT NULL,
  `BM_BANK` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of bankmaster
-- ----------------------------
INSERT INTO `bankmaster` VALUES ('120400', 'HNB', '1');
INSERT INTO `bankmaster` VALUES ('120401', 'CARGILS BANK', '32');
INSERT INTO `bankmaster` VALUES ('120402', 'SAMPATH BANK', '33');
INSERT INTO `bankmaster` VALUES ('120403', 'NATION TRUST BANK', '34');
INSERT INTO `bankmaster` VALUES ('120404', 'COMMERCIAL BANK', '35');

-- ----------------------------
-- Table structure for `brand_mas`
-- ----------------------------
DROP TABLE IF EXISTS `brand_mas`;
CREATE TABLE `brand_mas` (
  `barnd_name` varchar(255) DEFAULT NULL,
  `class` varchar(255) DEFAULT NULL,
  `b60` decimal(8,0) DEFAULT 0,
  `d60to75` decimal(8,0) DEFAULT 0,
  `d75to90` decimal(8,0) DEFAULT 0,
  `o90` decimal(8,0) DEFAULT 0,
  `act` char(10) DEFAULT NULL,
  `flg` int(10) DEFAULT NULL,
  `dis` decimal(20,2) DEFAULT 0.00,
  `delindays` decimal(20,2) DEFAULT 0.00,
  `delinrate` decimal(20,2) DEFAULT 0.00,
  `MAX_INCEN_DIS` double(18,0) DEFAULT 0,
  `tmp_no` varchar(50) DEFAULT NULL,
  `costcenter` char(20) DEFAULT NULL,
  `code` varchar(20) DEFAULT NULL,
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `cancel` varchar(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `brand_mas` (`barnd_name`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of brand_mas
-- ----------------------------
INSERT INTO `brand_mas` VALUES ('TAFE', null, '0', '0', '0', '0', '1', null, '0.00', '0.00', '0.00', '0', null, null, '01', '67', '0');
INSERT INTO `brand_mas` VALUES ('YANMAR', null, '0', '0', '0', '0', '1', null, '0.00', '0.00', '0.00', '0', null, null, '02', '68', '0');

-- ----------------------------
-- Table structure for `c_bal`
-- ----------------------------
DROP TABLE IF EXISTS `c_bal`;
CREATE TABLE `c_bal` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `REFNO` varchar(20) DEFAULT NULL,
  `SDATE` date DEFAULT NULL,
  `CUSCODE` varchar(15) DEFAULT NULL,
  `AMOUNT` decimal(15,2) DEFAULT 0.00,
  `BALANCE` decimal(15,2) DEFAULT 0.00,
  `DEP` varchar(50) DEFAULT NULL,
  `SAL_EX` varchar(50) DEFAULT NULL,
  `CANCELL` varchar(1) DEFAULT '0',
  `brand` varchar(30) DEFAULT NULL,
  `DEV` varchar(1) DEFAULT '0',
  `trn_type` char(10) DEFAULT NULL,
  `old` char(10) DEFAULT NULL,
  `vatrate` int(5) DEFAULT NULL,
  `RNO` char(20) DEFAULT NULL,
  `flag1` int(2) DEFAULT 0,
  `active` int(2) DEFAULT NULL,
  `totpay` decimal(15,2) DEFAULT 0.00,
  `tmp_no` varchar(50) DEFAULT NULL,
  `Costcenter` char(2) DEFAULT NULL,
  `company` char(1) DEFAULT NULL,
  `btt` decimal(10,2) DEFAULT NULL,
  `svatref` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `c_bal` (`REFNO`,`SDATE`,`CUSCODE`,`SAL_EX`,`brand`,`DEV`,`trn_type`)
) ENGINE=InnoDB AUTO_INCREMENT=995 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of c_bal
-- ----------------------------
INSERT INTO `c_bal` VALUES ('994', 'PO/0000001', '2021-10-28', 'V/00001', '1600.00', '1600.00', null, null, '0', null, '0', 'ARN', null, '0', null, '0', null, '0.00', '5', null, null, null, null);

-- ----------------------------
-- Table structure for `ch_sttr`
-- ----------------------------
DROP TABLE IF EXISTS `ch_sttr`;
CREATE TABLE `ch_sttr` (
  `ST_REFNO` varchar(16) DEFAULT NULL,
  `ST_DATE` date DEFAULT NULL,
  `ST_INVONO` varchar(15) DEFAULT NULL,
  `ST_PAID` decimal(15,2) DEFAULT 0.00,
  `ST_FLAG` varchar(3) DEFAULT NULL,
  `ST_INDATE` date DEFAULT NULL,
  `ST_CHBANK` varchar(50) DEFAULT NULL,
  `ST_DAYS` int(4) DEFAULT NULL,
  `ST_CHNO` varchar(20) DEFAULT NULL,
  `DUE` decimal(15,2) DEFAULT 0.00,
  `SETTLED_NO` varchar(50) DEFAULT NULL,
  `DEV` varchar(1) DEFAULT '0',
  `RET_CHVAL` int(11) DEFAULT 0,
  `RET_CHSET` int(11) DEFAULT 0,
  `ST_CHEDATE` char(20) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cus_code` char(10) DEFAULT NULL,
  `ex_flag` char(10) DEFAULT NULL,
  `ap_days` int(11) DEFAULT NULL,
  `tmp_no` varchar(50) DEFAULT NULL,
  `company` varchar(1) DEFAULT NULL,
  `type` varchar(20) DEFAULT 'redeposit' COMMENT 'no cmeent',
  PRIMARY KEY (`id`),
  KEY `ch_sttr` (`ST_REFNO`,`ST_CHNO`)
) ENGINE=InnoDB AUTO_INCREMENT=1011 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ch_sttr
-- ----------------------------

-- ----------------------------
-- Table structure for `courier`
-- ----------------------------
DROP TABLE IF EXISTS `courier`;
CREATE TABLE `courier` (
  `ID` int(20) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(20) DEFAULT NULL,
  `NAME` varchar(100) DEFAULT NULL,
  `BRANCH` varchar(100) DEFAULT NULL,
  `TEL1` varchar(20) DEFAULT NULL,
  `TEL2` varchar(20) DEFAULT NULL,
  `CANCELL` varchar(1) DEFAULT '0',
  `act` varchar(1) DEFAULT '1',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of courier
-- ----------------------------

-- ----------------------------
-- Table structure for `cred`
-- ----------------------------
DROP TABLE IF EXISTS `cred`;
CREATE TABLE `cred` (
  `C_REFNO` varchar(20) DEFAULT NULL,
  `C_DATE` date DEFAULT NULL,
  `C_CODE` varchar(10) DEFAULT NULL,
  `C_INVNO` varchar(50) DEFAULT NULL,
  `C_PAYMENT` decimal(15,2) DEFAULT 0.00,
  `C_REMARK` varchar(2000) DEFAULT NULL,
  `C_SETINV` varchar(50) DEFAULT NULL,
  `C_TOTPAY` decimal(15,2) DEFAULT 0.00,
  `SETTLED` decimal(15,2) DEFAULT 0.00,
  `C_SALEX` varchar(5) DEFAULT NULL,
  `CANCELL` varchar(1) DEFAULT NULL,
  `Brand` varchar(20) DEFAULT NULL,
  `DEV` varchar(1) DEFAULT '0',
  `dummy_val` decimal(15,2) DEFAULT 0.00,
  `tmp_no` varchar(50) DEFAULT NULL,
  `company` varchar(1) DEFAULT NULL,
  `recno` varchar(20) DEFAULT NULL,
  `id` int(20) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `cred` (`C_REFNO`,`C_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of cred
-- ----------------------------

-- ----------------------------
-- Table structure for `doc`
-- ----------------------------
DROP TABLE IF EXISTS `doc`;
CREATE TABLE `doc` (
  `docid` bigint(20) NOT NULL,
  `docname` varchar(100) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `grp` varchar(30) DEFAULT NULL,
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `icon` varchar(50) DEFAULT NULL,
  `color` varchar(50) DEFAULT NULL,
  `odr` varchar(10) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `doc` (`docid`,`grp`)
) ENGINE=InnoDB AUTO_INCREMENT=5563 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of doc
-- ----------------------------
INSERT INTO `doc` VALUES ('1', 'PURCHASE ORDER', 'po', 'OPERATION', '1', 'fa fa-book', 'small-box bg-blue', '1');
INSERT INTO `doc` VALUES ('2', 'STOCK TRANFER', 'gin', 'OPERATION', '2', 'fa fa-book', 'small-box bg-blue', '1');
INSERT INTO `doc` VALUES ('3', 'SALES INVOICE', 'invoice', 'OPERATION', '3', 'fa fa-book', 'small-box bg-blue', '1');
INSERT INTO `doc` VALUES ('4', 'RECEIPT', 'receipt', 'OPERATION', '4', 'fa fa-book', 'small-box bg-blue', '1');
INSERT INTO `doc` VALUES ('6', 'ADVANCE PAYMENT', 'advance', 'OPERATION', '6', 'fa fa-book', 'small-box bg-blue', '1');
INSERT INTO `doc` VALUES ('7', 'SUPPLIER PAYMENT', 'suppayment', 'OPERATION', '7', 'fa fa-book', 'small-box bg-blue', '1');
INSERT INTO `doc` VALUES ('9', 'CREDIT NOTE', 'creditnote', 'OPERATION', '8', 'fa fa-book', 'small-box bg-blue', '1');
INSERT INTO `doc` VALUES ('10', 'UTILIZATION', 'utilization', 'OPERATION', '9', 'fa fa-book', 'small-box bg-blue', '1');
INSERT INTO `doc` VALUES ('11', 'CHEQUE MODIFY', 'chqmodify', 'OPERATION', '10', 'fa fa-book', 'small-box bg-blue', '1');
INSERT INTO `doc` VALUES ('12', 'CHEQUE EXTEND', 'chqextend', 'OPERATION', '11', 'fa fa-book', 'small-box bg-blue', '1');
INSERT INTO `doc` VALUES ('13', 'BIN CARD', 'bincard', 'OPERATION', '12', 'fa fa-tasks', 'small-box bg-blue', '1');
INSERT INTO `doc` VALUES ('14', 'ITEM MASTER', 'item_mas', 'MASTER FILES', '13', 'fa fa-database', 'small-box bg-purple', '3');
INSERT INTO `doc` VALUES ('15', 'BRAND MASTER', 'brand', 'MASTER FILES', '14', 'fa fa-database', 'small-box bg-purple', '3');
INSERT INTO `doc` VALUES ('16', 'STORES MASTER', 'stores', 'MASTER FILES', '15', 'fa fa-database', 'small-box bg-purple', '3');
INSERT INTO `doc` VALUES ('17', 'REP MASTER', 'rep', 'MASTER FILES', '16', 'fa fa-database', 'small-box bg-purple', '3');
INSERT INTO `doc` VALUES ('18', 'BANK MASTER', 'bank', 'MASTER FILES', '17', 'fa fa-database', 'small-box bg-purple', '3');
INSERT INTO `doc` VALUES ('19', 'CREATE USER', 'new_user', 'ADMINISTRATION', '18', 'fa fa-cogs', 'small-box bg-red', '4');
INSERT INTO `doc` VALUES ('20', 'USER PERMISSION', 'user_permission', 'ADMINISTRATION', '19', 'fa fa-cogs', 'small-box bg-red', '4');
INSERT INTO `doc` VALUES ('21', 'CHANGE PASSWORD', 'change_pass', 'ADMINISTRATION', '20', 'fa fa-cogs', 'small-box bg-red', '4');
INSERT INTO `doc` VALUES ('22', 'REPORTS', 'reports', 'REPORTS', '21', 'fa fa-share', 'small-box bg-green', '2');
INSERT INTO `doc` VALUES ('23', 'VENDOR MASTER', 'vendor', 'MASTER FILES', '22', 'fa fa-database', 'small-box bg-purple', '3');
INSERT INTO `doc` VALUES ('24', 'PAYMENTS', 'payments', 'OPERATION', '23', 'fa fa-book', 'small-box bg-blue', '1');
INSERT INTO `doc` VALUES ('25', 'WORKERS', 'worker', 'MASTER FILES', '24', 'fa fa-database', 'small-box bg-purple', '3');
INSERT INTO `doc` VALUES ('26', 'COURIER UPDATE', 'courierup', 'OPERATION', '25', 'fa fa-book', 'small-box bg-blue', '1');
INSERT INTO `doc` VALUES ('27', 'AUDIT TRAIL', 'audit_trail', 'REPORTS', '26', 'fa fa-share', 'small-box bg-green', '2');
INSERT INTO `doc` VALUES ('28', 'SETTING', 'setting', 'ADMINISTRATION', '27', 'fa fa-cogs', 'small-box bg-red', '4');
INSERT INTO `doc` VALUES ('29', 'COURIER MASTER', 'couriermas', 'MASTER FILES', '28', 'fa fa-database', 'small-box bg-purple', '3');
INSERT INTO `doc` VALUES ('30', 'CUSTOMER CONFIRM', 'customerconfirm', 'OPERATION', '29', 'fa fa-book', 'small-box bg-blue', '1');
INSERT INTO `doc` VALUES ('8', 'SALES RETURN', 'salesreturn', 'OPERATION', '30', 'fa fa-book', 'small-box bg-blue', '1');
INSERT INTO `doc` VALUES ('31', 'BACKUP & RESTORE', 'backup', 'ADMINISTRATION', '31', 'fa fa-cogs', 'small-box bg-red', '4');

-- ----------------------------
-- Table structure for `entry_log`
-- ----------------------------
DROP TABLE IF EXISTS `entry_log`;
CREATE TABLE `entry_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `refno` varchar(50) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `docid` bigint(20) DEFAULT NULL,
  `docname` varchar(200) DEFAULT NULL,
  `trnType` varchar(20) DEFAULT NULL,
  `stime` datetime DEFAULT NULL,
  `sdate` date DEFAULT NULL,
  `crLmt` float DEFAULT NULL,
  `TmpCrLmt` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20984 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of entry_log
-- ----------------------------
INSERT INTO `entry_log` VALUES ('20970', '01', 'admin', null, 'STORES', 'Save', '2021-10-27 10:48:34', '2021-10-27', null, null);
INSERT INTO `entry_log` VALUES ('20971', '01', 'admin', null, 'REP', 'Save', '2021-10-27 10:48:45', '2021-10-27', null, null);
INSERT INTO `entry_log` VALUES ('20972', '01', 'admin', null, 'BRAND', 'Save', '2021-10-28 10:16:00', '2021-10-28', null, null);
INSERT INTO `entry_log` VALUES ('20973', 'I/00001', 'admin', null, 'ITEM', 'SAVE', '2021-10-28 10:20:33', '2021-10-28', null, null);
INSERT INTO `entry_log` VALUES ('20974', 'I/00001', 'admin', null, 'ITEM', 'UPDATE', '2021-10-28 10:21:08', '2021-10-28', null, null);
INSERT INTO `entry_log` VALUES ('20975', '02', 'admin', null, 'BRAND', 'Save', '2021-10-28 10:23:33', '2021-10-28', null, null);
INSERT INTO `entry_log` VALUES ('20976', 'I/00002', 'admin', null, 'ITEM', 'SAVE', '2021-10-28 10:27:59', '2021-10-28', null, null);
INSERT INTO `entry_log` VALUES ('20977', 'saumya', 'admin', null, 'USER', 'SAVE', '2021-10-28 10:37:08', '2021-10-28', null, null);
INSERT INTO `entry_log` VALUES ('20978', 'V/00001', 'admin', null, 'CUSTOMER', 'Save', '2021-10-28 10:41:55', '2021-10-28', null, null);
INSERT INTO `entry_log` VALUES ('20979', 'V/00002', 'admin', null, 'CUSTOMER', 'Save', '2021-10-28 10:42:35', '2021-10-28', null, null);
INSERT INTO `entry_log` VALUES ('20980', 'PO/0000001', 'admin', null, 'PO', 'SAVE', '2021-10-28 10:44:31', '2021-10-28', null, null);
INSERT INTO `entry_log` VALUES ('20981', 'INV/000001', 'admin', null, 'INVOICE', 'SAVE', '2021-10-28 10:48:23', '2021-10-28', null, null);
INSERT INTO `entry_log` VALUES ('20982', 'INV/000002', 'admin', null, 'INVOICE', 'SAVE', '2021-10-28 10:51:11', '2021-10-28', null, null);
INSERT INTO `entry_log` VALUES ('20983', 'GEETH', 'admin', null, 'USER', 'SAVE', '2021-10-28 10:57:47', '2021-10-28', null, null);

-- ----------------------------
-- Table structure for `errorlog`
-- ----------------------------
DROP TABLE IF EXISTS `errorlog`;
CREATE TABLE `errorlog` (
  `id` int(11) NOT NULL DEFAULT 0,
  `username` char(100) DEFAULT NULL,
  `userpass` char(20) DEFAULT NULL,
  `docid` int(11) DEFAULT 0,
  `sdate` date DEFAULT NULL,
  `docname` char(10) DEFAULT NULL,
  `tmp_no` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of errorlog
-- ----------------------------

-- ----------------------------
-- Table structure for `invpara`
-- ----------------------------
DROP TABLE IF EXISTS `invpara`;
CREATE TABLE `invpara` (
  `ID` int(20) NOT NULL AUTO_INCREMENT,
  `COMCODE` varchar(20) DEFAULT NULL,
  `COMPANY` varchar(50) DEFAULT NULL,
  `ADD1` varchar(100) DEFAULT NULL,
  `ADD2` varchar(100) DEFAULT NULL,
  `ADD3` varchar(100) DEFAULT NULL,
  `FAX` varchar(50) DEFAULT NULL,
  `TELE` varchar(20) DEFAULT NULL,
  `EMAIL` varchar(50) DEFAULT NULL,
  `last_invdata` date DEFAULT NULL,
  `BinCardDate` date DEFAULT NULL,
  `VATRATE` varchar(20) DEFAULT '',
  `STORES` bigint(20) DEFAULT NULL,
  `BRAND` bigint(20) DEFAULT NULL,
  `REP` bigint(20) DEFAULT NULL,
  `BANK` bigint(20) DEFAULT NULL,
  `ADVANCE` bigint(20) DEFAULT NULL,
  `CREDITNOTE` bigint(20) DEFAULT NULL,
  `RECEIPT` bigint(20) DEFAULT NULL,
  `UTILIZE` bigint(20) DEFAULT NULL,
  `SUPPAYMENT` bigint(20) DEFAULT NULL,
  `VENDOR` bigint(20) DEFAULT NULL,
  `PAYMENT` bigint(20) DEFAULT NULL,
  `WORKER` bigint(20) DEFAULT NULL,
  `PO` bigint(20) DEFAULT NULL,
  `INVOICE` bigint(20) DEFAULT NULL,
  `GIN` bigint(20) DEFAULT NULL,
  `CHEXTEND` bigint(20) DEFAULT NULL,
  `NBT` varchar(20) DEFAULT NULL,
  `ITEMMAS` bigint(20) DEFAULT NULL,
  `COURIER` bigint(20) DEFAULT NULL,
  `SALESRETURN` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of invpara
-- ----------------------------
INSERT INTO `invpara` VALUES ('1', 'C', 'NERANJAN MOTERS', 'WARIYAPOLA', 'WARIYAPOLA', 'WARIYAPOLA', '0701686769', '0777252404', '', '2021-10-27', '2021-10-27', '8', '2', '3', '2', '1', '1', '1', '3', '1', '1', '3', '1', '1', '2', '3', '1', '1', '0', '3', '1', '1');

-- ----------------------------
-- Table structure for `lcodes`
-- ----------------------------
DROP TABLE IF EXISTS `lcodes`;
CREATE TABLE `lcodes` (
  `c_code` varchar(15) DEFAULT NULL,
  `c_name` varchar(75) DEFAULT NULL,
  `c_sec` varchar(2) DEFAULT NULL,
  `c_accno` varchar(10) DEFAULT NULL,
  `c_type` varchar(1) DEFAULT NULL,
  `c_group` varchar(4) DEFAULT NULL,
  `c_subgro1` varchar(35) DEFAULT NULL,
  `c_subgro2` varchar(50) DEFAULT NULL,
  `c_opbal` decimal(20,2) DEFAULT NULL,
  `c_curbal` decimal(20,2) DEFAULT NULL,
  `c_remark` varchar(100) DEFAULT NULL,
  `c_add1` varchar(100) DEFAULT NULL,
  `c_add2` varchar(100) DEFAULT NULL,
  `c_date` date DEFAULT NULL,
  `c_bal_seri` varchar(5) DEFAULT NULL,
  `c_pnl_seri` varchar(5) DEFAULT NULL,
  `c_penbal` decimal(20,2) DEFAULT NULL,
  `c_mark` varchar(1) DEFAULT NULL,
  `pen_flag` varchar(1) DEFAULT NULL,
  `cat` varchar(1) DEFAULT NULL,
  `c_nod_add` varchar(50) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `paccno` varchar(10) DEFAULT NULL,
  `comcode` varchar(10) DEFAULT NULL,
  `bud1` decimal(20,2) DEFAULT NULL,
  `bud2` decimal(20,0) DEFAULT NULL,
  `bud3` decimal(20,2) DEFAULT NULL,
  `bud4` decimal(20,2) DEFAULT NULL,
  `bud5` decimal(20,2) DEFAULT NULL,
  `bud6` decimal(20,2) DEFAULT NULL,
  `bud7` decimal(20,2) DEFAULT NULL,
  `bud8` decimal(20,2) DEFAULT NULL,
  `bud9` decimal(20,2) DEFAULT NULL,
  `bud10` decimal(20,2) DEFAULT NULL,
  `bud11` decimal(20,2) DEFAULT NULL,
  `bud12` decimal(20,2) DEFAULT NULL,
  `c_opbal1` decimal(20,2) DEFAULT NULL,
  `pen` decimal(20,2) DEFAULT NULL,
  `pen1` decimal(20,2) DEFAULT NULL,
  `pen2` decimal(20,2) DEFAULT NULL,
  `code1` varchar(10) DEFAULT NULL,
  `comments` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `c_code` (`c_code`),
  KEY `c_group` (`c_group`),
  KEY `paccno` (`paccno`)
) ENGINE=InnoDB AUTO_INCREMENT=2331 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of lcodes
-- ----------------------------
INSERT INTO `lcodes` VALUES ('120900', 'SEYLAN BANK', '', '', 'B', 'D', '', '', '0.00', '0.00', '', '', '', '2020-03-31', '', '', '0.00', '', '', 'C', '1209', '168', '1209', '', '0.00', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '141400890.00', '-55917180.55', '0.00', '0.00', '', '');
INSERT INTO `lcodes` VALUES ('120901', 'COMMERCIAL BANK', '', '', 'B', 'D', '', '', '0.00', '0.00', '', '', '', '2015-04-01', '', '', '0.00', '', '', 'C', '1209', '169', '1209', '', '0.00', '0', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '', '');
INSERT INTO `lcodes` VALUES ('120902', 'NATION TRUST BANK', null, null, 'B', 'D', null, null, '0.00', '0.00', null, null, null, null, null, null, '0.00', null, null, 'C', null, '2328', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `lcodes` VALUES ('120903', 'HNB', null, null, 'B', 'D', null, null, '0.00', '0.00', null, null, null, null, null, null, '0.00', null, null, 'C', null, '2329', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `lcodes` VALUES ('220504', 'Unknown Deposit', null, null, 'B', 'D', null, null, '0.00', '0.00', null, null, null, null, null, null, '0.00', null, null, 'C', null, '2330', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `ledger`
-- ----------------------------
DROP TABLE IF EXISTS `ledger`;
CREATE TABLE `ledger` (
  `l_refno` varchar(30) DEFAULT NULL,
  `l_code` varchar(15) DEFAULT NULL,
  `l_date` date DEFAULT NULL,
  `l_lmem` varchar(5000) DEFAULT NULL,
  `l_head` varchar(1200) DEFAULT NULL,
  `l_amount` decimal(20,2) DEFAULT NULL,
  `l_flag` varchar(3) DEFAULT NULL,
  `l_flag1` varchar(3) DEFAULT NULL,
  `l_flag2` varchar(1) DEFAULT '0',
  `l_flag3` varchar(10) DEFAULT 'R',
  `l_flag4` varchar(50) DEFAULT NULL,
  `l_bcode` varchar(2) DEFAULT NULL,
  `l_trtype` varchar(3) DEFAULT NULL,
  `l_yearfl` int(11) DEFAULT 0,
  `l_post` varchar(1) DEFAULT NULL,
  `l_bank` varchar(50) DEFAULT NULL,
  `l_month` varchar(50) DEFAULT NULL,
  `rights` char(10) DEFAULT NULL,
  `comcode` char(10) DEFAULT NULL,
  `chno` char(20) DEFAULT NULL,
  `recdate` char(10) DEFAULT NULL,
  `status` char(20) DEFAULT NULL,
  `acyear` int(11) DEFAULT 2008,
  `l_year` int(11) DEFAULT NULL,
  `tmprecdate` datetime DEFAULT NULL,
  `pdtype` char(10) DEFAULT NULL,
  `l_recno` char(30) DEFAULT NULL,
  `op_bal1` decimal(20,2) DEFAULT 0.00,
  `chq_date` date DEFAULT NULL,
  `lock1` varchar(10) DEFAULT '0',
  `user` varchar(50) DEFAULT NULL,
  `ent_datetime` datetime DEFAULT NULL,
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `ledger` (`l_refno`,`l_code`,`l_date`)
) ENGINE=InnoDB AUTO_INCREMENT=1435 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ledger
-- ----------------------------

-- ----------------------------
-- Table structure for `loging`
-- ----------------------------
DROP TABLE IF EXISTS `loging`;
CREATE TABLE `loging` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  `User_Type` varchar(255) NOT NULL,
  `Date` date NOT NULL,
  `Logon_Time` time NOT NULL,
  `Logout_Time` time NOT NULL,
  `Sessioan_Id` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of loging
-- ----------------------------
INSERT INTO `loging` VALUES ('145', 'admin', '', '2021-10-27', '10:48:09', '00:00:00', '6faa49dc0c82ebc64fdd98f98166ba25', '212.104.237.33');
INSERT INTO `loging` VALUES ('146', 'admin', '', '2021-10-27', '17:11:57', '00:00:00', '0c18045089b5f4f8bbd2020d794c83e6', '212.104.236.192');
INSERT INTO `loging` VALUES ('147', 'admin', '', '2021-10-28', '10:14:25', '00:00:00', 'f33bbbeaef0d1de7a7c9f836dee58ca6', '61.245.171.37');
INSERT INTO `loging` VALUES ('148', 'admin', '', '2021-10-28', '10:14:25', '00:00:00', 'f33bbbeaef0d1de7a7c9f836dee58ca6', '61.245.171.37');
INSERT INTO `loging` VALUES ('149', 'admin', '', '2021-10-28', '10:14:25', '00:00:00', '223d0f6564b783c710c70f987fc78791', '61.245.171.37');
INSERT INTO `loging` VALUES ('150', 'Geeth', '', '2021-10-28', '10:59:09', '00:00:00', '4260affc1c3c9a45ec39f63d73575f5d', '61.245.171.199');

-- ----------------------------
-- Table structure for `payment`
-- ----------------------------
DROP TABLE IF EXISTS `payment`;
CREATE TABLE `payment` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `refno` varchar(20) DEFAULT NULL,
  `sdate` date DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `amount` float(20,2) DEFAULT NULL,
  `cancel` varchar(1) DEFAULT '0',
  `remark` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `workertype` varchar(20) DEFAULT NULL,
  `type1` varchar(50) DEFAULT NULL,
  `dep` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=525 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of payment
-- ----------------------------

-- ----------------------------
-- Table structure for `s_adva`
-- ----------------------------
DROP TABLE IF EXISTS `s_adva`;
CREATE TABLE `s_adva` (
  `C_REFNO` varchar(12) DEFAULT NULL,
  `C_DATE` date DEFAULT NULL,
  `C_CODE` varchar(20) DEFAULT '',
  `C_INVNO` varchar(20) DEFAULT '',
  `C_PAYMENT` decimal(20,2) DEFAULT 0.00,
  `C_REMARK` varchar(100) DEFAULT NULL,
  `C_TOTREPAY` decimal(20,2) DEFAULT 0.00,
  `C_GST` decimal(20,2) DEFAULT 0.00,
  `cash` varchar(50) DEFAULT NULL,
  `tmp_no` varchar(50) DEFAULT NULL,
  `paytype` varchar(50) DEFAULT NULL,
  `cancel` varchar(1) DEFAULT '0',
  `id` int(20) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of s_adva
-- ----------------------------

-- ----------------------------
-- Table structure for `s_cheq`
-- ----------------------------
DROP TABLE IF EXISTS `s_cheq`;
CREATE TABLE `s_cheq` (
  `CR_REFNO` varchar(20) DEFAULT '',
  `CR_DATE` date DEFAULT NULL,
  `CR_REGEREF` varchar(20) DEFAULT NULL,
  `CR_CRNO` varchar(20) DEFAULT NULL,
  `CR_CRVAL` decimal(15,2) DEFAULT 0.00,
  `CR_CRDATE` date DEFAULT NULL,
  `CR_C_CODE` varchar(10) DEFAULT NULL,
  `CR_C_NAME` varchar(50) DEFAULT NULL,
  `CR_C_ADD` varchar(50) DEFAULT NULL,
  `CR_CHNO` varchar(12) DEFAULT NULL,
  `CR_CHEVAL` decimal(15,2) DEFAULT 0.00,
  `CR_REPAY` decimal(15,2) DEFAULT 0.00,
  `CR_CHDATE` date DEFAULT NULL,
  `CR_BANK` varchar(30) DEFAULT NULL,
  `CR_RESON` varchar(60) DEFAULT NULL,
  `CR_RESON1` varchar(60) DEFAULT NULL,
  `CR_REPOSIT` bit(1) DEFAULT NULL,
  `REDEPOSITDATE` date DEFAULT NULL,
  `REDEPOSITREF` char(12) DEFAULT NULL,
  `CR_FLAG` varchar(1) DEFAULT NULL,
  `PAID` decimal(15,2) DEFAULT 0.00,
  `S_REF` varchar(5) DEFAULT NULL,
  `DEPARTMENT` varchar(5) DEFAULT NULL,
  `REMARK` varchar(255) DEFAULT NULL,
  `DEBACC` char(15) DEFAULT NULL,
  `CREACC` char(15) DEFAULT NULL,
  `dev` char(1) DEFAULT '0',
  `ret_chno` char(10) DEFAULT NULL,
  `ret_chdate` date DEFAULT NULL,
  `noof` int(11) DEFAULT NULL,
  `ret_refno` char(20) DEFAULT NULL,
  `rep_remark` char(100) DEFAULT NULL,
  `depobank` char(20) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tmp` char(10) DEFAULT NULL,
  `FORwhat` char(20) DEFAULT NULL,
  `FORwhatDATE` date DEFAULT NULL,
  `crenoteno` char(20) DEFAULT NULL,
  `crenoteamo` decimal(15,2) DEFAULT 0.00,
  `debnoteno` char(20) DEFAULT NULL,
  `tmp_no` varchar(50) DEFAULT NULL,
  `Costcenter` char(2) DEFAULT NULL,
  `reason` varchar(100) DEFAULT NULL,
  `company` varchar(1) DEFAULT NULL,
  `chremdate` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `s_cheq` (`CR_REFNO`,`CR_CRNO`)
) ENGINE=InnoDB AUTO_INCREMENT=702 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of s_cheq
-- ----------------------------

-- ----------------------------
-- Table structure for `s_cheq_tmp`
-- ----------------------------
DROP TABLE IF EXISTS `s_cheq_tmp`;
CREATE TABLE `s_cheq_tmp` (
  `CR_REFNO` varchar(12) DEFAULT '',
  `CR_DATE` date DEFAULT NULL,
  `CR_REGEREF` varchar(12) DEFAULT NULL,
  `CR_CRNO` varchar(12) DEFAULT NULL,
  `CR_CRVAL` float(15,2) DEFAULT 0.00,
  `CR_CRDATE` date DEFAULT NULL,
  `CR_C_CODE` varchar(5) DEFAULT NULL,
  `CR_C_NAME` varchar(50) DEFAULT NULL,
  `CR_C_ADD` varchar(50) DEFAULT NULL,
  `CR_CHNO` varchar(12) DEFAULT NULL,
  `CR_CHEVAL` float(15,2) DEFAULT 0.00,
  `CR_REPAY` float(15,2) DEFAULT 0.00,
  `CR_CHDATE` date DEFAULT NULL,
  `CR_BANK` varchar(30) DEFAULT NULL,
  `CR_RESON` varchar(60) DEFAULT NULL,
  `CR_RESON1` varchar(60) DEFAULT NULL,
  `CR_REPOSIT` bit(1) DEFAULT NULL,
  `REDEPOSITDATE` date DEFAULT NULL,
  `REDEPOSITREF` char(12) DEFAULT NULL,
  `CR_FLAG` varchar(1) DEFAULT NULL,
  `PAID` float(15,2) DEFAULT 0.00,
  `S_REF` varchar(5) DEFAULT NULL,
  `DEPARTMENT` varchar(5) DEFAULT NULL,
  `REMARK` varchar(255) DEFAULT NULL,
  `DEBACC` char(15) DEFAULT NULL,
  `CREACC` char(15) DEFAULT NULL,
  `dev` char(1) DEFAULT '0',
  `ret_chno` char(10) DEFAULT NULL,
  `ret_chdate` date DEFAULT NULL,
  `noof` int(11) DEFAULT NULL,
  `ret_refno` char(20) DEFAULT NULL,
  `rep_remark` char(100) DEFAULT NULL,
  `depobank` char(20) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tmp` char(10) DEFAULT NULL,
  `FORwhat` char(20) DEFAULT NULL,
  `FORwhatDATE` date DEFAULT NULL,
  `crenoteno` char(20) DEFAULT NULL,
  `crenoteamo` float(15,2) DEFAULT 0.00,
  `debnoteno` char(20) DEFAULT NULL,
  `tmp_no` varchar(50) DEFAULT NULL,
  `Costcenter` char(2) DEFAULT NULL,
  `reason` varchar(100) DEFAULT NULL,
  `updated` varchar(10) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `s_cheq` (`CR_REFNO`,`CR_CRNO`)
) ENGINE=InnoDB AUTO_INCREMENT=692 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of s_cheq_tmp
-- ----------------------------

-- ----------------------------
-- Table structure for `s_cheque_extend`
-- ----------------------------
DROP TABLE IF EXISTS `s_cheque_extend`;
CREATE TABLE `s_cheque_extend` (
  `refno` varchar(20) DEFAULT NULL,
  `sdate` date DEFAULT NULL,
  `sal_ex` varchar(25) DEFAULT NULL,
  `c_code` varchar(10) DEFAULT NULL,
  `c_name` varchar(50) DEFAULT NULL,
  `ch_no` varchar(15) DEFAULT NULL,
  `ch_amount` decimal(15,2) DEFAULT 0.00,
  `ch_date` date DEFAULT NULL,
  `ch_exdate` date DEFAULT NULL,
  `approved` varchar(100) DEFAULT NULL,
  `acc_approved` varchar(100) DEFAULT NULL,
  `e_time` time DEFAULT NULL,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `tmp_no` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of s_cheque_extend
-- ----------------------------

-- ----------------------------
-- Table structure for `s_crec`
-- ----------------------------
DROP TABLE IF EXISTS `s_crec`;
CREATE TABLE `s_crec` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CA_REFNO` varchar(20) DEFAULT NULL,
  `CA_CODE` varchar(10) DEFAULT NULL,
  `CA_NAME` varchar(50) DEFAULT NULL,
  `CA_CASSH` decimal(20,2) DEFAULT 0.00,
  `CA_AMOUNT` decimal(20,2) DEFAULT 0.00,
  `CA_SALESEX` varchar(2) DEFAULT NULL,
  `RET_CHNO` varchar(12) DEFAULT NULL,
  `RET_FLAG` varchar(1) DEFAULT NULL,
  `DEPARTMENT` varchar(1) DEFAULT NULL,
  `CANCELL` varchar(1) DEFAULT '0',
  `DEV` varchar(1) DEFAULT '0',
  `overpay` decimal(20,2) DEFAULT 0.00,
  `FLAG` char(5) DEFAULT NULL,
  `pay_type` char(20) DEFAULT NULL,
  `cus_ref` char(20) DEFAULT NULL,
  `CA_DATE` date DEFAULT NULL,
  `AC_REFNO` char(10) DEFAULT NULL,
  `TTDATE` date DEFAULT NULL,
  `tmp_no` varchar(50) DEFAULT NULL,
  `company` varchar(1) DEFAULT NULL,
  `CA_Manual` varchar(20) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `CA_REFNO` (`CA_REFNO`),
  KEY `s_crec` (`CA_REFNO`,`CA_CODE`,`CANCELL`,`DEV`,`FLAG`)
) ENGINE=InnoDB AUTO_INCREMENT=18563 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of s_crec
-- ----------------------------
INSERT INTO `s_crec` VALUES ('18561', 'REC/0000001', 'V/00002', null, '500.00', '500.00', '01', null, null, 'O', '0', '0', '0.00', 'REC', 'Cash', '0', '2021-10-28', '', '0000-00-00', '8', null, null, null);
INSERT INTO `s_crec` VALUES ('18562', 'REC/0000002', 'V/00002', null, '300.00', '300.00', '01', null, null, 'O', '0', '0', '0.00', 'REC', 'Cash', '0', '2021-10-28', '', '0000-00-00', '10', null, null, null);

-- ----------------------------
-- Table structure for `s_crnma`
-- ----------------------------
DROP TABLE IF EXISTS `s_crnma`;
CREATE TABLE `s_crnma` (
  `ID` int(20) NOT NULL AUTO_INCREMENT,
  `REFNO` varchar(20) DEFAULT NULL,
  `SDATE` date DEFAULT NULL,
  `INVOICENO` varchar(20) DEFAULT '',
  `DEPARTMENT` varchar(50) DEFAULT NULL,
  `SALEX` varchar(50) DEFAULT '',
  `REMARK` varchar(50) DEFAULT NULL,
  `CANCELL` varchar(1) DEFAULT '0',
  `UNIQ` varchar(50) DEFAULT NULL,
  `TOTAMOUNT` float(20,2) DEFAULT NULL,
  `CUSCODE` varchar(20) DEFAULT NULL,
  `CUSNAME` varchar(20) DEFAULT NULL,
  `VATAMOUNT` float(20,2) DEFAULT NULL,
  `DISCOUNT` float(20,2) DEFAULT NULL,
  `SUBTOTAL` float(20,2) DEFAULT NULL,
  `INVOICEDATE` date DEFAULT NULL,
  `TRN_TYPE` varchar(20) DEFAULT NULL,
  `GST` varchar(20) DEFAULT NULL,
  `INVOICEAMOUNT` float(20,2) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of s_crnma
-- ----------------------------

-- ----------------------------
-- Table structure for `s_crnma_item`
-- ----------------------------
DROP TABLE IF EXISTS `s_crnma_item`;
CREATE TABLE `s_crnma_item` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `STK_NO` varchar(20) DEFAULT '',
  `DESCRIPT` varchar(100) DEFAULT '',
  `REMARK` varchar(50) DEFAULT '',
  `UNIQ` varchar(50) DEFAULT '',
  `RATE` float(20,2) DEFAULT 0.00,
  `REFNO` varchar(20) DEFAULT '',
  `QTY` float(20,2) DEFAULT NULL,
  `SDATE` date DEFAULT NULL,
  `CANCELL` varchar(1) DEFAULT '0',
  `SUBTOT` float(20,2) DEFAULT NULL,
  `OQTY` float(20,2) DEFAULT NULL,
  `BQTY` float(20,2) DEFAULT NULL,
  `RQTY` float(20,2) DEFAULT NULL,
  `ODIS` float(20,2) DEFAULT NULL,
  `GST` varchar(20) DEFAULT NULL,
  `DEPARTMENT` varchar(20) DEFAULT NULL,
  `DIS` float(20,2) DEFAULT NULL,
  `INVOICENO` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of s_crnma_item
-- ----------------------------

-- ----------------------------
-- Table structure for `s_crnma_item_tmp`
-- ----------------------------
DROP TABLE IF EXISTS `s_crnma_item_tmp`;
CREATE TABLE `s_crnma_item_tmp` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `STK_NO` varchar(20) DEFAULT '',
  `DESCRIPT` varchar(100) DEFAULT '',
  `REMARK` varchar(50) DEFAULT '',
  `UNIQ` varchar(50) DEFAULT '',
  `RATE` float(20,2) DEFAULT 0.00,
  `REFNO` varchar(20) DEFAULT '',
  `QTY` float(20,2) DEFAULT NULL,
  `SDATE` date DEFAULT NULL,
  `SUBTOT` float(20,2) DEFAULT NULL,
  `OQTY` float(20,2) DEFAULT NULL,
  `BQTY` float(20,2) DEFAULT NULL,
  `RQTY` float(20,2) DEFAULT NULL,
  `DIS` float(20,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of s_crnma_item_tmp
-- ----------------------------

-- ----------------------------
-- Table structure for `s_cusordmas`
-- ----------------------------
DROP TABLE IF EXISTS `s_cusordmas`;
CREATE TABLE `s_cusordmas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `REF_NO` varchar(20) DEFAULT NULL,
  `TRN_TYPE` varchar(4) DEFAULT NULL,
  `SDATE` date DEFAULT NULL,
  `C_CODE` varchar(5) DEFAULT NULL,
  `CUS_NAME` varchar(100) DEFAULT NULL,
  `C_ADD1` varchar(100) DEFAULT NULL,
  `TYPE` varchar(3) DEFAULT NULL,
  `SAL_EX` varchar(5) DEFAULT NULL,
  `DISCOU` decimal(20,2) DEFAULT 0.00,
  `AMOUNT` decimal(20,2) DEFAULT 0.00,
  `GST` decimal(20,2) DEFAULT 0.00,
  `GRAND_TOT` decimal(20,2) DEFAULT 0.00,
  `DUMMY_VAL` decimal(15,2) DEFAULT 0.00,
  `DIS` decimal(15,2) DEFAULT 0.00,
  `DIS1` decimal(15,2) DEFAULT 0.00,
  `DIS2` decimal(15,2) DEFAULT 0.00,
  `DIS_RUP` decimal(20,2) DEFAULT 0.00,
  `CASH` decimal(20,2) DEFAULT 0.00,
  `TOTPAY` decimal(20,2) DEFAULT 0.00,
  `ORD_NO` varchar(30) DEFAULT NULL,
  `ORD_DA` date DEFAULT NULL,
  `SETTLED` char(1) DEFAULT NULL,
  `TOTPAY1` decimal(15,2) DEFAULT 0.00,
  `DES_CAT` varchar(5) DEFAULT NULL,
  `DEPARTMENT` varchar(5) DEFAULT NULL,
  `REMARK` varchar(100) DEFAULT NULL,
  `CANCELL` varchar(1) DEFAULT '0',
  `BTT` decimal(15,2) DEFAULT 0.00,
  `VAT` decimal(15,2) DEFAULT 0.00,
  `VAT_VAL` decimal(20,2) DEFAULT 0.00,
  `Brand` varchar(30) DEFAULT NULL,
  `DEV` varchar(1) DEFAULT '0',
  `Account` char(15) DEFAULT NULL,
  `Accname` char(60) DEFAULT NULL,
  `Costcenter` char(2) DEFAULT NULL,
  `RET_AMO` decimal(15,2) DEFAULT 0.00,
  `comm` char(1) DEFAULT NULL,
  `approveby` char(50) DEFAULT NULL,
  `appdate` date DEFAULT NULL,
  `INVNO` char(20) DEFAULT NULL,
  `REQ_DATE` date DEFAULT NULL,
  `Limit_need` decimal(15,2) DEFAULT 0.00,
  `Forward` char(10) DEFAULT NULL,
  `Result` char(5) DEFAULT NULL,
  `Rejectby` char(50) DEFAULT NULL,
  `rejectdate` date DEFAULT NULL,
  `tmp_no` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `s_cusordmas` (`REF_NO`,`TRN_TYPE`,`SDATE`,`C_CODE`,`SAL_EX`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of s_cusordmas
-- ----------------------------

-- ----------------------------
-- Table structure for `s_cusordtrn`
-- ----------------------------
DROP TABLE IF EXISTS `s_cusordtrn`;
CREATE TABLE `s_cusordtrn` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `REF_NO` varchar(20) DEFAULT NULL,
  `SDATE` date DEFAULT NULL,
  `STK_NO` varchar(5) DEFAULT NULL,
  `DESCRIPT` varchar(100) DEFAULT NULL,
  `UNIT` varchar(13) DEFAULT NULL,
  `PART_NO` varchar(30) DEFAULT NULL,
  `COST` decimal(15,2) DEFAULT 0.00,
  `PRICE` decimal(15,2) DEFAULT 0.00,
  `QTY` bigint(15) DEFAULT NULL,
  `DEPARTMENT` varchar(3) DEFAULT NULL,
  `DIS_per` decimal(15,2) DEFAULT 0.00,
  `DIS_rs` decimal(15,2) DEFAULT 0.00,
  `GROUP` varchar(5) DEFAULT NULL,
  `REP` varchar(5) DEFAULT NULL,
  `TAX_PER` decimal(15,2) DEFAULT 0.00,
  `ret_qty` bigint(11) DEFAULT 0,
  `BRAND` varchar(50) DEFAULT NULL,
  `DEV` varchar(1) DEFAULT '0',
  `CANCELL` char(1) DEFAULT '0',
  `c_code` char(10) DEFAULT NULL,
  `stk` int(11) DEFAULT NULL,
  `subtot` decimal(20,2) DEFAULT 0.00,
  `inv_qty` int(15) DEFAULT NULL,
  `tmp_no` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `s_cusordtrn` (`REF_NO`,`SDATE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of s_cusordtrn
-- ----------------------------

-- ----------------------------
-- Table structure for `s_ginmas`
-- ----------------------------
DROP TABLE IF EXISTS `s_ginmas`;
CREATE TABLE `s_ginmas` (
  `SDATE` date DEFAULT NULL,
  `REF_NO` varchar(20) DEFAULT NULL,
  `TYPE` varchar(6) DEFAULT NULL,
  `DEP_FROM` varchar(5) DEFAULT NULL,
  `DEP_F_NAME` varchar(30) DEFAULT NULL,
  `DEP_TO` varchar(5) DEFAULT NULL,
  `DEP_T_NAME` varchar(30) DEFAULT NULL,
  `DEL_TO` varchar(60) DEFAULT NULL,
  `VEHICLE_N` varchar(12) DEFAULT NULL,
  `DEL_ORDNO` varchar(12) DEFAULT NULL,
  `cancel` varchar(1) DEFAULT '0',
  `AR_NO` char(20) DEFAULT NULL,
  `AR_DATE` date DEFAULT NULL,
  `tmp_no` varchar(50) DEFAULT NULL,
  KEY `s_ginmas` (`SDATE`,`REF_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of s_ginmas
-- ----------------------------

-- ----------------------------
-- Table structure for `s_invcheq`
-- ----------------------------
DROP TABLE IF EXISTS `s_invcheq`;
CREATE TABLE `s_invcheq` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `refno` varchar(20) DEFAULT NULL,
  `Sdate` date DEFAULT NULL,
  `cus_code` varchar(8) DEFAULT NULL,
  `CUS_NAME` varchar(100) DEFAULT NULL,
  `cheque_no` varchar(35) DEFAULT NULL,
  `che_date` date DEFAULT NULL,
  `bank` varchar(50) DEFAULT NULL,
  `che_amount` decimal(20,2) DEFAULT 0.00,
  `dev` char(1) DEFAULT '0',
  `sal_ex` varchar(5) DEFAULT NULL,
  `trn_type` char(10) DEFAULT NULL,
  `ex_date1` date DEFAULT NULL,
  `ex_date2` date DEFAULT NULL,
  `ex_flag` char(10) DEFAULT NULL,
  `ret_chno` char(10) DEFAULT NULL,
  `ret_chdate` date DEFAULT NULL,
  `noof` int(1) DEFAULT NULL,
  `ret_refno` char(20) DEFAULT NULL,
  `ch_owner` char(3) DEFAULT NULL,
  `ch_count_ret` char(1) DEFAULT NULL,
  `department` char(1) DEFAULT NULL,
  `SERI_NO` char(10) DEFAULT NULL,
  `W` varchar(255) DEFAULT NULL,
  `tmp_no` varchar(50) DEFAULT NULL,
  `company` varchar(1) DEFAULT NULL,
  `DEPREFNO` varchar(20) DEFAULT NULL,
  `DEPOFLAG` varchar(1) DEFAULT '0',
  `Our_bank` char(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `s_invcheq` (`refno`,`Sdate`,`cus_code`,`che_date`)
) ENGINE=InnoDB AUTO_INCREMENT=8029 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of s_invcheq
-- ----------------------------

-- ----------------------------
-- Table structure for `s_invcheq_tmp`
-- ----------------------------
DROP TABLE IF EXISTS `s_invcheq_tmp`;
CREATE TABLE `s_invcheq_tmp` (
  `CR_REFNO` varchar(12) DEFAULT NULL,
  `ch_count_ret` varchar(10) DEFAULT NULL,
  `cheque_no` varchar(20) DEFAULT NULL,
  `cus_code` varchar(20) DEFAULT NULL,
  `bank` varchar(30) DEFAULT NULL,
  `updated` varchar(10) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of s_invcheq_tmp
-- ----------------------------

-- ----------------------------
-- Table structure for `s_invcheq1`
-- ----------------------------
DROP TABLE IF EXISTS `s_invcheq1`;
CREATE TABLE `s_invcheq1` (
  `ID` varchar(255) DEFAULT NULL,
  `refno` varchar(255) DEFAULT NULL,
  `Sdate` varchar(255) DEFAULT NULL,
  `cus_code` varchar(255) DEFAULT NULL,
  `CUS_NAME` varchar(255) DEFAULT NULL,
  `cheque_no` varchar(255) DEFAULT NULL,
  `che_date` varchar(255) DEFAULT NULL,
  `bank` varchar(255) DEFAULT NULL,
  `che_amount` varchar(255) DEFAULT NULL,
  `dev` varchar(255) DEFAULT NULL,
  `sal_ex` varchar(255) DEFAULT NULL,
  `trn_type` varchar(255) DEFAULT NULL,
  `ex_date1` varchar(255) DEFAULT NULL,
  `ex_date2` varchar(255) DEFAULT NULL,
  `ex_flag` varchar(255) DEFAULT NULL,
  `ret_chno` varchar(255) DEFAULT NULL,
  `ret_chdate` varchar(255) DEFAULT NULL,
  `noof` varchar(255) DEFAULT NULL,
  `ret_refno` varchar(255) DEFAULT NULL,
  `ch_owner` varchar(255) DEFAULT NULL,
  `ch_count_ret` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `cancell` varchar(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of s_invcheq1
-- ----------------------------

-- ----------------------------
-- Table structure for `s_invo`
-- ----------------------------
DROP TABLE IF EXISTS `s_invo`;
CREATE TABLE `s_invo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `REF_NO` varchar(20) DEFAULT NULL,
  `SDATE` date DEFAULT NULL,
  `STK_NO` varchar(20) DEFAULT NULL,
  `DESCRIPT` varchar(100) DEFAULT NULL,
  `UNIT` varchar(20) DEFAULT NULL,
  `PART_NO` varchar(50) DEFAULT NULL,
  `COST` decimal(20,2) DEFAULT 0.00,
  `PRICE` decimal(40,10) DEFAULT 0.0000000000,
  `QTY` decimal(20,2) DEFAULT 0.00,
  `DEPARTMENT` varchar(30) DEFAULT NULL,
  `DIS_per` decimal(10,2) DEFAULT 0.00,
  `DIS_rs` decimal(20,2) DEFAULT 0.00,
  `GROUP` varchar(50) DEFAULT NULL,
  `REP` varchar(20) DEFAULT NULL,
  `TAX_PER` varchar(10) DEFAULT NULL,
  `RET_QTY` float(20,2) DEFAULT NULL,
  `BRAND` varchar(20) DEFAULT NULL,
  `DEV` varchar(5) DEFAULT '0',
  `CANCELL` varchar(5) DEFAULT '0',
  `c_code` varchar(20) DEFAULT NULL,
  `seri_no` varchar(20) DEFAULT NULL,
  `Print_dis1` decimal(10,2) DEFAULT 0.00,
  `Print_dis2` decimal(10,2) DEFAULT 0.00,
  `Print_dis3` decimal(10,2) DEFAULT 0.00,
  `subtot` decimal(40,10) DEFAULT 0.0000000000,
  `vatrate` varchar(10) DEFAULT NULL,
  `ad` varchar(20) DEFAULT NULL,
  `tmp_no` varchar(50) DEFAULT NULL,
  `dis_per1` decimal(10,2) DEFAULT NULL,
  `dis_rs1` decimal(15,2) DEFAULT NULL,
  `company` char(1) DEFAULT NULL,
  `user_id` varchar(50) DEFAULT NULL,
  `sp_dr` decimal(10,2) DEFAULT 0.00,
  `sp_dval` decimal(20,2) DEFAULT 0.00,
  `c_name` varchar(100) DEFAULT NULL,
  `trackingno` varchar(20) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `s_invo` (`REF_NO`,`SDATE`,`STK_NO`),
  KEY `sp_dr` (`sp_dr`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1616 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of s_invo
-- ----------------------------
INSERT INTO `s_invo` VALUES ('1614', 'INV/000001', '2021-10-28', 'I/00001', 'OIL FILTER NEW', null, null, '120.00', '250.0000000000', '2.00', '01', '0.00', '0.00', null, '01', '8', null, 'TAFE', '0', '0', 'V/00002', null, '0.00', '0.00', '0.00', '500.0000000000', null, null, null, null, null, null, null, '0.00', '0.00', 'CASH SALE', '111');
INSERT INTO `s_invo` VALUES ('1615', 'INV/000002', '2021-10-28', 'I/00002', 'V-BELT  - LB58 -AG8', null, null, '200.00', '300.0000000000', '1.00', '01', '0.00', '0.00', null, '01', '8', null, 'YANMAR', '0', '0', 'V/00002', null, '0.00', '0.00', '0.00', '300.0000000000', null, null, null, null, null, null, null, '0.00', '0.00', 'CASH SALE', '1');

-- ----------------------------
-- Table structure for `s_led`
-- ----------------------------
DROP TABLE IF EXISTS `s_led`;
CREATE TABLE `s_led` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `REF_NO` varchar(20) DEFAULT NULL,
  `C_CODE` varchar(255) DEFAULT NULL,
  `SDATE` date DEFAULT NULL,
  `DEBIT` varchar(255) DEFAULT NULL,
  `CREDIT` varchar(255) DEFAULT NULL,
  `FLAG` varchar(255) DEFAULT NULL,
  `DEPARTMENT` varchar(255) DEFAULT NULL,
  `AMOUNT` decimal(10,2) DEFAULT NULL,
  `DEV` varchar(255) DEFAULT '0',
  `Printed` char(1) DEFAULT NULL,
  `printimes` decimal(15,2) DEFAULT 0.00,
  `ConTno` char(15) DEFAULT NULL,
  `tmp_no` varchar(50) DEFAULT NULL,
  `company` char(1) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `s_led` (`REF_NO`,`C_CODE`)
) ENGINE=InnoDB AUTO_INCREMENT=18764 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of s_led
-- ----------------------------

-- ----------------------------
-- Table structure for `s_mas`
-- ----------------------------
DROP TABLE IF EXISTS `s_mas`;
CREATE TABLE `s_mas` (
  `SDATE` date DEFAULT NULL,
  `STK_NO` varchar(20) NOT NULL,
  `GROUP1` varchar(30) DEFAULT NULL,
  `SUBSTITUTE` varchar(30) DEFAULT NULL,
  `BRAND_NAME` varchar(30) DEFAULT NULL,
  `CAT` varchar(20) DEFAULT NULL,
  `Cat1` varchar(20) DEFAULT NULL,
  `GEN_NO` varchar(20) DEFAULT NULL,
  `PART_NO` varchar(50) DEFAULT NULL,
  `DESCRIPT` varchar(100) DEFAULT NULL,
  `LOCATE_1` varchar(20) DEFAULT NULL,
  `LOCATE_2` varchar(20) DEFAULT NULL,
  `LOCATE_3` varchar(20) DEFAULT NULL,
  `LOCATE_4` varchar(20) DEFAULT NULL,
  `COST` decimal(15,2) DEFAULT 0.00,
  `MARGIN` decimal(15,2) DEFAULT 0.00,
  `SELLING` decimal(51,2) DEFAULT 0.00,
  `AR_selling` decimal(15,2) DEFAULT 0.00,
  `OPEN_STK` decimal(51,2) DEFAULT 0.00,
  `STKQTY` decimal(15,2) DEFAULT 0.00,
  `QTYINHAND` decimal(15,2) DEFAULT 0.00,
  `QTYINHAND_STORES` decimal(15,2) DEFAULT 0.00,
  `UNIT` decimal(15,2) DEFAULT 0.00,
  `SIZE` decimal(15,2) DEFAULT 0.00,
  `RE_O_LEVEL` decimal(15,2) DEFAULT 0.00,
  `RE_O_QTY` decimal(15,2) DEFAULT 0.00,
  `SALE01` decimal(15,2) DEFAULT 0.00,
  `SALE02` decimal(15,2) DEFAULT 0.00,
  `SALE03` decimal(15,2) DEFAULT NULL,
  `SALE04` decimal(15,2) DEFAULT 0.00,
  `SALE05` decimal(15,2) DEFAULT 0.00,
  `SALE06` decimal(15,2) DEFAULT 0.00,
  `SALE07` decimal(15,2) DEFAULT 0.00,
  `SALE08` decimal(15,2) DEFAULT 0.00,
  `SALE09` decimal(15,2) DEFAULT 0.00,
  `SALE10` decimal(15,2) DEFAULT 0.00,
  `SALE11` decimal(15,2) DEFAULT 0.00,
  `SALE12` decimal(15,2) DEFAULT 0.00,
  `ENT_DATE` datetime DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `GROUP2` varchar(20) DEFAULT NULL,
  `GROUP3` varchar(20) DEFAULT NULL,
  `GROUP4` varchar(20) DEFAULT NULL,
  `Account` varchar(20) DEFAULT NULL,
  `costcenter` varchar(20) DEFAULT NULL,
  `acc_cost` varchar(20) DEFAULT NULL,
  `cus_ord` varchar(20) DEFAULT NULL,
  `delivered` varchar(20) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `weight` varchar(20) DEFAULT NULL,
  `country` varchar(20) DEFAULT NULL,
  `spType` char(50) DEFAULT NULL,
  `tmp_no` varchar(50) DEFAULT NULL,
  `sold` varchar(1) DEFAULT NULL,
  `jobno` varchar(20) DEFAULT NULL,
  `comno` varchar(20) DEFAULT NULL,
  `NSD` decimal(6,2) DEFAULT NULL,
  `cancel` int(1) DEFAULT 0,
  `whprice` decimal(20,2) DEFAULT NULL,
  `whdis` decimal(20,2) DEFAULT NULL,
  `rdis` decimal(20,2) DEFAULT NULL,
  `rack` varchar(20) DEFAULT NULL,
  `row` varchar(20) DEFAULT '',
  `colum` varchar(20) DEFAULT NULL,
  `active_t` float(20,0) DEFAULT NULL,
  PRIMARY KEY (`STK_NO`),
  KEY `s_mas` (`SDATE`,`STK_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of s_mas
-- ----------------------------
INSERT INTO `s_mas` VALUES ('2021-10-28', 'I/00001', null, null, 'TAFE', null, null, null, '2654408', 'OIL FILTER NEW', null, null, null, null, '120.00', '0.00', '250.00', '120.00', '0.00', '0.00', '8.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', null, null, null, null, null, null, null, null, null, null, '', null, '', null, null, null, null, null, null, '0', '0.00', '0.00', '0.00', '3', '4', '1', null);
INSERT INTO `s_mas` VALUES ('2021-10-28', 'I/00002', null, null, 'YANMAR', null, null, null, '1E8300-35050', 'V-BELT  - LB58 -AG8', null, null, null, null, '200.00', '0.00', '300.00', '200.00', '0.00', '0.00', '1.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', null, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', null, null, null, null, null, null, null, null, null, null, '', null, '', null, null, null, null, null, null, '0', '0.00', '0.00', '0.00', '3', '3', '4', null);

-- ----------------------------
-- Table structure for `s_ordmas`
-- ----------------------------
DROP TABLE IF EXISTS `s_ordmas`;
CREATE TABLE `s_ordmas` (
  `REFNO` varchar(255) DEFAULT NULL,
  `SDATE` date DEFAULT NULL,
  `COUNTRY` varchar(255) DEFAULT NULL,
  `SUP_CODE` varchar(255) DEFAULT NULL,
  `SUP_NAME` varchar(255) DEFAULT NULL,
  `REMARK` varchar(255) DEFAULT NULL,
  `DEP_CODE` varchar(255) DEFAULT NULL,
  `DEP_NAME` varchar(255) DEFAULT NULL,
  `REP_CODE` varchar(255) DEFAULT NULL,
  `REP_NAME` varchar(255) DEFAULT NULL,
  `AMOUNT` varchar(255) DEFAULT NULL,
  `cancel` varchar(255) DEFAULT '0',
  `S_date` varchar(255) DEFAULT NULL,
  `LC_No` varchar(255) DEFAULT NULL,
  `Brand` varchar(255) DEFAULT NULL,
  `tmp_no` varchar(50) DEFAULT NULL,
  `tax1` varchar(30) DEFAULT NULL,
  `pi_no` varchar(50) DEFAULT NULL,
  KEY `s_ordmas` (`REFNO`,`SDATE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of s_ordmas
-- ----------------------------

-- ----------------------------
-- Table structure for `s_ordtrn`
-- ----------------------------
DROP TABLE IF EXISTS `s_ordtrn`;
CREATE TABLE `s_ordtrn` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `REFNO` varchar(255) DEFAULT NULL,
  `SDATE` varchar(255) DEFAULT NULL,
  `STK_NO` varchar(255) DEFAULT NULL,
  `DESCRIPT` varchar(255) DEFAULT NULL,
  `UNIT` varchar(255) DEFAULT NULL,
  `ORD_QTY` varchar(255) DEFAULT NULL,
  `REC_QTY` varchar(255) DEFAULT '0',
  `RATE` varchar(255) DEFAULT NULL,
  `partno` varchar(255) DEFAULT NULL,
  `CANCEL` varchar(255) DEFAULT '0',
  `tmp_no` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `s_ordtrn` (`REFNO`,`SDATE`,`STK_NO`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of s_ordtrn
-- ----------------------------

-- ----------------------------
-- Table structure for `s_purmas`
-- ----------------------------
DROP TABLE IF EXISTS `s_purmas`;
CREATE TABLE `s_purmas` (
  `REFNO` varchar(30) DEFAULT NULL,
  `SDATE` date DEFAULT NULL,
  `ORDNO` varchar(30) DEFAULT NULL,
  `LCNO` varchar(50) DEFAULT NULL,
  `COUNTRY` varchar(30) DEFAULT NULL,
  `SUP_CODE` varchar(30) DEFAULT NULL,
  `SUP_NAME` varchar(100) DEFAULT NULL,
  `REMARK` varchar(100) DEFAULT NULL,
  `DEPARTMENT` varchar(30) DEFAULT NULL,
  `AMOUNT` decimal(20,2) DEFAULT 0.00,
  `PAID_AMT` decimal(20,2) DEFAULT 0.00,
  `DISC` decimal(20,2) DEFAULT NULL,
  `CANCEL` varchar(5) DEFAULT '0',
  `PUR_DATE` varchar(20) DEFAULT NULL,
  `brand` varchar(20) DEFAULT NULL,
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `TYPE` varchar(10) DEFAULT NULL,
  `tmp_no` varchar(30) DEFAULT NULL,
  `pi_no` varchar(50) DEFAULT NULL,
  `book_no` varchar(50) DEFAULT NULL,
  `company` char(1) DEFAULT NULL,
  `paid` char(1) DEFAULT NULL,
  `vatrate` decimal(10,2) DEFAULT NULL,
  `vat` decimal(10,2) DEFAULT NULL,
  `p_type` varchar(20) DEFAULT NULL,
  `invno` varchar(50) DEFAULT NULL,
  `SALEX` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `s_purmas` (`REFNO`,`SDATE`,`ORDNO`)
) ENGINE=InnoDB AUTO_INCREMENT=310 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of s_purmas
-- ----------------------------
INSERT INTO `s_purmas` VALUES ('PO/0000001', '2021-10-28', null, '123', null, 'V/00001', 'BROWNS PVT LTD', null, '01', '1600.00', '0.00', null, '0', '2021-10-28', null, '309', null, '5', null, null, null, null, null, null, null, null, '01');

-- ----------------------------
-- Table structure for `s_purtrn`
-- ----------------------------
DROP TABLE IF EXISTS `s_purtrn`;
CREATE TABLE `s_purtrn` (
  `REFNO` varchar(30) DEFAULT NULL,
  `SDATE` date DEFAULT NULL,
  `STK_NO` varchar(30) DEFAULT NULL,
  `DESCRIPT` varchar(50) DEFAULT NULL,
  `COST` decimal(20,2) DEFAULT 0.00,
  `MARGIN` decimal(20,2) DEFAULT 0.00,
  `SELLING` decimal(20,2) DEFAULT 0.00,
  `REC_QTY` decimal(20,2) DEFAULT 0.00,
  `FOB` varchar(50) DEFAULT NULL,
  `DEPARTMENT` varchar(50) DEFAULT NULL,
  `QTYINHAND` decimal(10,2) DEFAULT 0.00,
  `O_QTY` decimal(10,2) DEFAULT 0.00,
  `DISCOUNT` decimal(10,2) DEFAULT 0.00,
  `DISCOUNT2` decimal(10,2) DEFAULT NULL,
  `ret_qty` decimal(10,2) DEFAULT 0.00,
  `Cost_c` decimal(10,2) DEFAULT 0.00,
  `cost_seling` decimal(10,2) DEFAULT 0.00,
  `cost_margin` decimal(10,2) DEFAULT 0.00,
  `CANCEL` varchar(5) DEFAULT '0',
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `acc_cost` varchar(10) DEFAULT NULL,
  `acc_cost_c` varchar(10) DEFAULT NULL,
  `soldqty` varchar(10) DEFAULT NULL,
  `brand` varchar(10) DEFAULT NULL,
  `days` int(11) DEFAULT NULL,
  `vatrate` decimal(10,2) DEFAULT 0.00,
  `tmp_no` varchar(30) DEFAULT NULL,
  `company` char(1) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `s_purtrn` (`REFNO`,`SDATE`,`STK_NO`)
) ENGINE=InnoDB AUTO_INCREMENT=571 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of s_purtrn
-- ----------------------------
INSERT INTO `s_purtrn` VALUES ('PO/0000001', '2021-10-28', 'I/00001', 'OIL FILTER NEW', '120.00', '0.00', '250.00', '10.00', null, '01', '0.00', '10.00', '0.00', null, '0.00', '0.00', '0.00', '0.00', '0', '569', '120.00', null, null, null, null, '0.00', null, null);
INSERT INTO `s_purtrn` VALUES ('PO/0000001', '2021-10-28', 'I/00002', 'V-BELT  - LB58 -AG8', '200.00', '0.00', '300.00', '2.00', null, '01', '0.00', '2.00', '0.00', null, '0.00', '0.00', '0.00', '0.00', '0', '570', '200.00', null, null, null, null, '0.00', null, null);

-- ----------------------------
-- Table structure for `s_salma`
-- ----------------------------
DROP TABLE IF EXISTS `s_salma`;
CREATE TABLE `s_salma` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `REF_NO` varchar(25) NOT NULL,
  `TRN_TYPE` varchar(10) DEFAULT NULL,
  `SDATE` date DEFAULT NULL,
  `C_CODE` varchar(20) DEFAULT NULL,
  `CUS_NAME` varchar(100) DEFAULT NULL,
  `C_ADD1` varchar(100) DEFAULT NULL,
  `TEL` varchar(40) DEFAULT '',
  `TYPE` varchar(10) DEFAULT '',
  `SAL_EX` varchar(20) DEFAULT NULL,
  `DISCOU` decimal(20,2) DEFAULT 0.00,
  `AMOUNT` decimal(20,2) DEFAULT 0.00,
  `GST` decimal(20,2) DEFAULT 0.00,
  `GRAND_TOT` decimal(20,2) DEFAULT 0.00,
  `DUMMY_VAL` decimal(20,2) DEFAULT 0.00,
  `DIS` decimal(20,2) DEFAULT 0.00,
  `DIS1` decimal(20,2) DEFAULT 0.00,
  `DIS2` decimal(20,2) DEFAULT 0.00,
  `DIS_RUP` decimal(20,2) DEFAULT 0.00,
  `CASH` decimal(20,2) DEFAULT 0.00,
  `TOTPAY` decimal(20,2) DEFAULT 0.00,
  `ORD_NO` varchar(25) DEFAULT NULL,
  `ORD_DA` varchar(25) DEFAULT NULL,
  `SETTLED` varchar(10) DEFAULT NULL,
  `TOTPAY1` varchar(20) DEFAULT NULL,
  `DES_CAT` varchar(20) DEFAULT NULL,
  `DEPARTMENT` varchar(20) DEFAULT NULL,
  `REMARK` varchar(50) DEFAULT NULL,
  `CANCELL` varchar(10) DEFAULT '0',
  `BTT` varchar(20) DEFAULT NULL,
  `VAT` varchar(20) DEFAULT NULL,
  `VAT_VAL` decimal(20,2) DEFAULT 0.00,
  `Brand` varchar(20) DEFAULT NULL,
  `DEV` varchar(10) DEFAULT '0',
  `Account` varchar(10) DEFAULT NULL,
  `Accname` varchar(60) DEFAULT NULL,
  `Costcenter` varchar(10) DEFAULT NULL,
  `RET_AMO` decimal(20,2) DEFAULT 0.00,
  `cre_pe` int(11) DEFAULT NULL,
  `Comm` varchar(20) DEFAULT NULL,
  `red` varchar(20) DEFAULT NULL,
  `deli_date` date DEFAULT NULL,
  `seri_no` varchar(20) DEFAULT NULL,
  `points` varchar(20) DEFAULT NULL,
  `LOCK1` varchar(10) DEFAULT NULL,
  `deliin` varchar(10) DEFAULT NULL,
  `SVAT` decimal(8,2) DEFAULT 0.00,
  `req_date` date DEFAULT NULL,
  `tmp_no` varchar(30) DEFAULT NULL,
  `vat_no` varchar(20) DEFAULT NULL,
  `s_vat_no` varchar(20) DEFAULT NULL,
  `veheno` varchar(30) DEFAULT NULL,
  `driver` varchar(30) DEFAULT NULL,
  `loaddate` date DEFAULT NULL,
  `pirnt_serial` varchar(5) DEFAULT '0',
  `userid` varchar(20) DEFAULT NULL,
  `del_cus
del_cus
de` varchar(15) DEFAULT NULL,
  `dele_no` varchar(30) DEFAULT NULL,
  `nonrtn` varchar(1) DEFAULT NULL,
  `company` varchar(1) DEFAULT NULL,
  `use_name` varchar(20) DEFAULT NULL,
  `vatrate` decimal(10,0) DEFAULT NULL,
  `del_cusname` varchar(50) DEFAULT NULL,
  `remain_date` date DEFAULT NULL,
  `vehino` varchar(20) DEFAULT NULL,
  `flg_caj` char(1) DEFAULT '0',
  `weight` float(20,2) DEFAULT NULL,
  `couriercode` varchar(100) DEFAULT NULL,
  `depdate` date DEFAULT NULL,
  `dept1` varchar(20) DEFAULT NULL,
  `dept2` varchar(20) DEFAULT NULL,
  `confirm_date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ref_no` (`REF_NO`) USING BTREE,
  KEY `s_salma` (`REF_NO`,`SDATE`,`C_CODE`,`SAL_EX`)
) ENGINE=InnoDB AUTO_INCREMENT=498 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of s_salma
-- ----------------------------
INSERT INTO `s_salma` VALUES ('496', 'INV/000001', 'INV', '2021-10-28', 'V/00002', 'CASH SALE', '111', '11', 'CA', '01', '0.00', '0.00', '8.00', '500.00', '0.00', '0.00', '0.00', '0.00', '0.00', '500.00', '500.00', null, null, null, null, null, '01', '', '0', null, '0', '0.00', null, '0', null, null, null, '0.00', '65', null, null, null, null, null, null, null, '0.00', null, '8', null, null, null, null, null, '0', null, null, '111', null, null, 'admin', null, null, null, null, '0', '0.00', '', '2021-10-28', '2', '1', null);
INSERT INTO `s_salma` VALUES ('497', 'INV/000002', 'INV', '2021-10-28', 'V/00002', 'CASH SALE', '1', '1', 'CA', '01', '0.00', '0.00', '8.00', '300.00', '0.00', '0.00', '0.00', '0.00', '0.00', '300.00', '300.00', null, null, null, null, null, '01', 'ss', '0', null, '0', '0.00', null, '0', null, null, null, '0.00', '65', null, null, null, null, null, null, null, '0.00', null, '10', null, null, null, null, null, '0', null, null, '1', null, null, 'admin', null, null, null, null, '0', '0.00', '', '2021-10-28', '3', '1', null);

-- ----------------------------
-- Table structure for `s_salrep`
-- ----------------------------
DROP TABLE IF EXISTS `s_salrep`;
CREATE TABLE `s_salrep` (
  `REPCODE` varchar(10) NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `target` varchar(50) DEFAULT NULL,
  `DEL` varchar(50) DEFAULT NULL,
  `ordNo` varchar(50) DEFAULT NULL,
  `cat` varchar(50) DEFAULT NULL,
  `cancel` varchar(5) DEFAULT '0',
  `RGROUP` varchar(50) DEFAULT NULL,
  `DONO` decimal(15,2) DEFAULT 0.00,
  `tmp_no` varchar(30) DEFAULT NULL,
  `cat1` varchar(50) DEFAULT NULL,
  `act` varchar(1) DEFAULT NULL,
  `nic` varchar(50) DEFAULT NULL,
  `bday` date DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `address` varchar(100) DEFAULT '',
  `remark` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`REPCODE`),
  KEY `s_salrep` (`REPCODE`,`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of s_salrep
-- ----------------------------
INSERT INTO `s_salrep` VALUES ('01', 'OFFICE', null, null, null, null, '0', 'OFFICE', '0.00', null, null, '1', '', '0000-00-00', '', '', '');

-- ----------------------------
-- Table structure for `s_stomas`
-- ----------------------------
DROP TABLE IF EXISTS `s_stomas`;
CREATE TABLE `s_stomas` (
  `CODE` varchar(10) DEFAULT '',
  `DESCRIPTION` varchar(50) DEFAULT NULL,
  `act` char(10) DEFAULT NULL,
  `tmp_no` varchar(30) DEFAULT NULL,
  `cancel` varchar(1) DEFAULT '0',
  `id` int(20) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `CODE` (`CODE`),
  KEY `s_stomas` (`CODE`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of s_stomas
-- ----------------------------
INSERT INTO `s_stomas` VALUES ('01', 'OFFICE', '1', null, '0', '15');

-- ----------------------------
-- Table structure for `s_sttr`
-- ----------------------------
DROP TABLE IF EXISTS `s_sttr`;
CREATE TABLE `s_sttr` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ST_REFNO` varchar(20) DEFAULT NULL,
  `ST_DATE` date DEFAULT NULL,
  `ST_INVONO` varchar(20) DEFAULT NULL,
  `ST_PAID` decimal(20,2) DEFAULT 0.00,
  `ST_DISC` varchar(20) DEFAULT NULL,
  `ST_FLAG` varchar(10) DEFAULT NULL,
  `ST_INDATE` date DEFAULT NULL,
  `st_chbank` varchar(50) DEFAULT NULL,
  `st_days` bigint(20) DEFAULT 0,
  `ST_CHNO` varchar(25) DEFAULT NULL,
  `DUE` decimal(15,2) DEFAULT 0.00,
  `SETTLED_NO` bigint(20) DEFAULT 0,
  `DEV` varchar(1) DEFAULT '0',
  `ret_chval` decimal(15,2) DEFAULT 0.00,
  `ret_chset` decimal(15,2) DEFAULT 0.00,
  `st_chedate` date DEFAULT NULL,
  `st_chdate` date DEFAULT NULL,
  `cus_code` char(10) DEFAULT NULL,
  `ap_days` int(11) DEFAULT 0,
  `comm` char(3) DEFAULT NULL,
  `ap_rem` varchar(100) DEFAULT NULL,
  `del_days` int(11) DEFAULT 0,
  `deliin_days` bigint(15) DEFAULT 0,
  `deliin_amo` decimal(15,2) DEFAULT 0.00,
  `deliin_lock` char(1) DEFAULT '0',
  `department` char(1) DEFAULT NULL,
  `tmp_no` varchar(30) DEFAULT NULL,
  `userid` varchar(20) DEFAULT NULL,
  `company` char(1) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `s_sttr` (`ST_REFNO`,`ST_DATE`,`ST_INVONO`,`ST_CHNO`)
) ENGINE=InnoDB AUTO_INCREMENT=28013 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of s_sttr
-- ----------------------------
INSERT INTO `s_sttr` VALUES ('28011', 'REC/0000001', '2021-10-28', 'INV/000001', '500.00', null, 'CAS', null, '', '0', '', '0.00', '0', '0', '0.00', '0.00', null, '2021-10-28', 'V/00002', '0', null, null, '0', '0', '0.00', '0', 'O', null, null, null);
INSERT INTO `s_sttr` VALUES ('28012', 'REC/0000002', '2021-10-28', 'INV/000002', '300.00', null, 'CAS', null, '', '0', '', '0.00', '0', '0', '0.00', '0.00', null, '2021-10-28', 'V/00002', '0', null, null, '0', '0', '0.00', '0', 'O', null, null, null);

-- ----------------------------
-- Table structure for `s_sttr_all`
-- ----------------------------
DROP TABLE IF EXISTS `s_sttr_all`;
CREATE TABLE `s_sttr_all` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ST_REFNO` varchar(20) DEFAULT NULL,
  `ST_DATE` date DEFAULT NULL,
  `ST_INVONO` varchar(20) DEFAULT NULL,
  `ST_PAID` decimal(20,2) DEFAULT 0.00,
  `balance` decimal(20,2) DEFAULT NULL,
  `netamount` decimal(20,2) DEFAULT NULL,
  `ST_FLAG` varchar(10) DEFAULT NULL,
  `ST_INDATE` date DEFAULT NULL,
  `st_chbank` varchar(50) DEFAULT NULL,
  `st_days` bigint(20) DEFAULT 0,
  `ST_CHNO` varchar(15) DEFAULT NULL,
  `DUE` decimal(15,2) DEFAULT 0.00,
  `SETTLED_NO` bigint(20) DEFAULT 0,
  `DEV` varchar(1) DEFAULT '0',
  `ret_chval` decimal(15,2) DEFAULT 0.00,
  `ret_chset` decimal(15,2) DEFAULT 0.00,
  `st_chedate` date DEFAULT NULL,
  `st_chdate` date DEFAULT NULL,
  `cus_code` char(10) DEFAULT NULL,
  `cusname` varchar(100) DEFAULT NULL,
  `sal_ex` varchar(50) DEFAULT NULL,
  `ap_days` int(11) DEFAULT 0,
  `comm` char(3) DEFAULT NULL,
  `ap_rem` varchar(100) DEFAULT NULL,
  `del_days` int(11) DEFAULT 0,
  `deliin_days` bigint(15) DEFAULT 0,
  `deliin_amo` decimal(15,2) DEFAULT 0.00,
  `deliin_lock` char(1) DEFAULT '0',
  `department` char(1) DEFAULT NULL,
  `tmp_no` varchar(30) DEFAULT NULL,
  `userid` varchar(20) DEFAULT NULL,
  `form_type` varchar(20) DEFAULT NULL,
  `trn_type` varchar(20) DEFAULT NULL,
  `CANCELL` varchar(1) DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `s_sttr` (`ST_REFNO`,`ST_DATE`,`ST_INVONO`,`ST_CHNO`)
) ENGINE=InnoDB AUTO_INCREMENT=792 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of s_sttr_all
-- ----------------------------
INSERT INTO `s_sttr_all` VALUES ('790', 'REC/0000001', '2021-10-28', 'INV/000001', '500.00', null, null, 'CAS', null, '', '0', '', '0.00', '0', '0', '0.00', '0.00', null, '2021-10-28', 'V/00002', null, null, '0', null, null, '0', '0', '0.00', '0', 'O', null, null, 'REC', 'SET', '0');
INSERT INTO `s_sttr_all` VALUES ('791', 'REC/0000002', '2021-10-28', 'INV/000002', '300.00', null, null, 'CAS', null, '', '0', '', '0.00', '0', '0', '0.00', '0.00', null, '2021-10-28', 'V/00002', null, null, '0', null, null, '0', '0', '0.00', '0', 'O', null, null, 'REC', 'SET', '0');

-- ----------------------------
-- Table structure for `s_submas`
-- ----------------------------
DROP TABLE IF EXISTS `s_submas`;
CREATE TABLE `s_submas` (
  `STO_CODE` varchar(10) DEFAULT '',
  `STK_NO` varchar(10) DEFAULT '',
  `DESCRIPt` varchar(55) DEFAULT NULL,
  `OPEN_STK` decimal(20,2) DEFAULT 0.00,
  `OPENT_DATE` datetime DEFAULT NULL,
  `QTYINHAND` double(20,2) DEFAULT 0.00,
  `tmp_no` varchar(30) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `s_submas` (`STO_CODE`,`STK_NO`)
) ENGINE=InnoDB AUTO_INCREMENT=438 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of s_submas
-- ----------------------------
INSERT INTO `s_submas` VALUES ('01', 'I/00001', 'OIL FILTER NEW', '0.00', null, '8.00', null, '436');
INSERT INTO `s_submas` VALUES ('01', 'I/00002', 'V-BELT  - LB58 -AG8', '0.00', null, '1.00', null, '437');

-- ----------------------------
-- Table structure for `s_trn`
-- ----------------------------
DROP TABLE IF EXISTS `s_trn`;
CREATE TABLE `s_trn` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SDATE` date DEFAULT NULL,
  `STK_NO` varchar(50) DEFAULT NULL,
  `REFNO` varchar(50) DEFAULT NULL,
  `QTY` decimal(15,2) DEFAULT 0.00,
  `LEDINDI` varchar(50) DEFAULT NULL,
  `DEPARTMENT` varchar(50) DEFAULT NULL,
  `seri_no` varchar(50) DEFAULT NULL,
  `Dev` varchar(50) DEFAULT '0',
  `SAL_EX` varchar(50) DEFAULT NULL,
  `ACTIVE` varchar(10) DEFAULT NULL,
  `DONO` char(20) DEFAULT NULL,
  `tmp_no` varchar(30) DEFAULT NULL,
  `company` char(1) DEFAULT NULL,
  `cost` decimal(20,2) DEFAULT NULL,
  `tru_qty` float(20,2) DEFAULT NULL,
  `SELLING` float(20,2) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `LEDINDI` (`LEDINDI`),
  KEY `STK_NO` (`STK_NO`),
  KEY `SDATE` (`SDATE`),
  KEY `DEPARTMENT` (`DEPARTMENT`)
) ENGINE=InnoDB AUTO_INCREMENT=2334 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of s_trn
-- ----------------------------
INSERT INTO `s_trn` VALUES ('2330', '2021-10-28', 'I/00001', 'PO/0000001', '10.00', 'ARN', '01', null, '0', null, null, null, null, null, '120.00', null, null);
INSERT INTO `s_trn` VALUES ('2331', '2021-10-28', 'I/00002', 'PO/0000001', '2.00', 'ARN', '01', null, '0', null, null, null, null, null, '200.00', null, null);
INSERT INTO `s_trn` VALUES ('2332', '2021-10-28', 'I/00001', 'INV/000001', '2.00', 'INV', '01', null, '0', null, null, null, null, null, '120.00', '2.00', '250.00');
INSERT INTO `s_trn` VALUES ('2333', '2021-10-28', 'I/00002', 'INV/000002', '1.00', 'INV', '01', null, '0', null, null, null, null, null, '200.00', null, '300.00');

-- ----------------------------
-- Table structure for `s_trn_all`
-- ----------------------------
DROP TABLE IF EXISTS `s_trn_all`;
CREATE TABLE `s_trn_all` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SDATE` date DEFAULT NULL,
  `STK_NO` varchar(50) DEFAULT NULL,
  `REFNO` varchar(50) DEFAULT NULL,
  `QTY` decimal(15,2) DEFAULT 0.00,
  `LEDINDI` varchar(50) DEFAULT NULL,
  `DEPARTMENT` varchar(50) DEFAULT NULL,
  `seri_no` varchar(50) DEFAULT NULL,
  `Dev` varchar(50) DEFAULT '0',
  `SAL_EX` varchar(50) DEFAULT NULL,
  `cuscode` varchar(50) DEFAULT NULL,
  `cusname` varchar(100) DEFAULT NULL,
  `ACTIVE` varchar(10) DEFAULT NULL,
  `DONO` char(20) DEFAULT NULL,
  `brand` varchar(50) DEFAULT NULL,
  `tmp_no` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of s_trn_all
-- ----------------------------

-- ----------------------------
-- Table structure for `s_ut`
-- ----------------------------
DROP TABLE IF EXISTS `s_ut`;
CREATE TABLE `s_ut` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `C_REFNO` varchar(30) DEFAULT NULL,
  `C_DATE` date DEFAULT NULL,
  `C_CODE` varchar(30) DEFAULT NULL,
  `C_INVNO` varchar(30) DEFAULT NULL,
  `C_PAYMENT` varchar(30) DEFAULT NULL,
  `C_REMARK` varchar(50) DEFAULT NULL,
  `C_REMARK1` varchar(50) DEFAULT NULL,
  `C_REMARK2` varchar(50) DEFAULT NULL,
  `C_REMARK3` varchar(50) DEFAULT NULL,
  `C_TOTREPAY` varchar(30) DEFAULT NULL,
  `C_GST` varchar(30) DEFAULT NULL,
  `D` varchar(30) DEFAULT NULL,
  `CRE_NO_NO` varchar(30) DEFAULT NULL,
  `TYPE` varchar(30) DEFAULT NULL,
  `tmp_no` varchar(30) DEFAULT NULL,
  `company` char(1) DEFAULT NULL,
  `CANCEL` varchar(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `C_REFNO` (`C_REFNO`,`C_DATE`,`C_CODE`,`C_INVNO`)
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of s_ut
-- ----------------------------

-- ----------------------------
-- Table structure for `s_utmas`
-- ----------------------------
DROP TABLE IF EXISTS `s_utmas`;
CREATE TABLE `s_utmas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `C_REFNO` varchar(30) DEFAULT NULL,
  `C_DATE` date DEFAULT NULL,
  `C_CODE` varchar(30) DEFAULT NULL,
  `C_CRNNo` varchar(30) DEFAULT NULL,
  `C_Amount` varchar(30) DEFAULT NULL,
  `C_cash` varchar(30) DEFAULT NULL,
  `c_chno` varchar(30) DEFAULT NULL,
  `c_chdate` date DEFAULT NULL,
  `ch_val` varchar(30) DEFAULT NULL,
  `ch_bank` varchar(50) DEFAULT NULL,
  `CANCEL` varchar(5) DEFAULT '0',
  `tmp_no` varchar(30) DEFAULT NULL,
  `company` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `C_REFNO` (`C_REFNO`,`C_DATE`,`C_CODE`)
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of s_utmas
-- ----------------------------

-- ----------------------------
-- Table structure for `salrep`
-- ----------------------------
DROP TABLE IF EXISTS `salrep`;
CREATE TABLE `salrep` (
  `rep` varchar(30) DEFAULT NULL,
  `brand` varchar(30) DEFAULT NULL,
  `target` varchar(30) DEFAULT NULL,
  `week1` varchar(30) DEFAULT NULL,
  `week2` varchar(30) DEFAULT NULL,
  `week3` varchar(30) DEFAULT NULL,
  `week4` varchar(30) DEFAULT NULL,
  `week5` varchar(30) DEFAULT NULL,
  `no` varchar(10) DEFAULT NULL,
  `cus_code` varchar(30) DEFAULT NULL,
  `cus_name` varchar(50) DEFAULT NULL,
  `scat` varchar(50) DEFAULT NULL,
  `user_id` varchar(50) DEFAULT NULL,
  KEY `rep` (`rep`,`brand`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of salrep
-- ----------------------------

-- ----------------------------
-- Table structure for `sup_payment`
-- ----------------------------
DROP TABLE IF EXISTS `sup_payment`;
CREATE TABLE `sup_payment` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `refno` varchar(20) DEFAULT NULL,
  `scode` varchar(50) DEFAULT NULL,
  `sname` varchar(50) DEFAULT NULL,
  `sdate` date DEFAULT NULL,
  `paytype` varchar(20) DEFAULT NULL,
  `chamou` float(20,2) DEFAULT NULL,
  `chno` varchar(20) DEFAULT NULL,
  `chdate` date DEFAULT NULL,
  `chbank` varchar(50) DEFAULT NULL,
  `totamount` float(20,2) DEFAULT 0.00,
  `remark` varchar(200) DEFAULT NULL,
  `cancel` varchar(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sup_payment
-- ----------------------------

-- ----------------------------
-- Table structure for `sup_payment_item`
-- ----------------------------
DROP TABLE IF EXISTS `sup_payment_item`;
CREATE TABLE `sup_payment_item` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `refno` varchar(20) DEFAULT NULL,
  `sdate` date DEFAULT NULL,
  `arnno` varchar(20) DEFAULT NULL,
  `arndate` date DEFAULT NULL,
  `grand_tot` float(20,2) DEFAULT NULL,
  `paid` float(20,2) DEFAULT NULL,
  `cancel` varchar(1) DEFAULT '0',
  `cuscode` varchar(20) DEFAULT NULL,
  `cusname` varchar(50) DEFAULT NULL,
  `invno` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sup_payment_item
-- ----------------------------

-- ----------------------------
-- Table structure for `tmp_cash_chq`
-- ----------------------------
DROP TABLE IF EXISTS `tmp_cash_chq`;
CREATE TABLE `tmp_cash_chq` (
  `recno` varchar(20) DEFAULT NULL,
  `chqno` varchar(30) DEFAULT NULL,
  `chqdate` varchar(20) DEFAULT NULL,
  `chqbank` varchar(30) DEFAULT NULL,
  `chqamt` decimal(20,2) DEFAULT 0.00,
  `tmp_no` varchar(50) DEFAULT NULL,
  `tmp_count` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tmp_cash_chq
-- ----------------------------

-- ----------------------------
-- Table structure for `tmp_gin_data`
-- ----------------------------
DROP TABLE IF EXISTS `tmp_gin_data`;
CREATE TABLE `tmp_gin_data` (
  `str_invno` varchar(20) NOT NULL DEFAULT '',
  `str_code` varchar(20) DEFAULT NULL,
  `str_description` varchar(50) DEFAULT NULL,
  `partno` varchar(30) DEFAULT NULL,
  `cur_qty` decimal(20,2) DEFAULT 0.00,
  `tmp_no` varchar(50) DEFAULT NULL,
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(90) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tmp_gin_data
-- ----------------------------

-- ----------------------------
-- Table structure for `tmp_gin_data_multi`
-- ----------------------------
DROP TABLE IF EXISTS `tmp_gin_data_multi`;
CREATE TABLE `tmp_gin_data_multi` (
  `str_invno` varchar(20) NOT NULL DEFAULT '',
  `str_code` varchar(20) DEFAULT NULL,
  `str_description` varchar(50) DEFAULT NULL,
  `partno` varchar(30) DEFAULT NULL,
  `cur_qty` decimal(20,2) DEFAULT 0.00,
  `tmp_no` varchar(50) DEFAULT NULL,
  `user_id` varchar(50) DEFAULT NULL,
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `dep_from` varchar(25) DEFAULT NULL,
  `container` varchar(50) DEFAULT NULL,
  `shipment` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15655 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tmp_gin_data_multi
-- ----------------------------

-- ----------------------------
-- Table structure for `tmp_inv_data`
-- ----------------------------
DROP TABLE IF EXISTS `tmp_inv_data`;
CREATE TABLE `tmp_inv_data` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `str_invno` varchar(20) NOT NULL DEFAULT '',
  `str_code` varchar(20) DEFAULT NULL,
  `str_description` varchar(50) DEFAULT NULL,
  `cur_rate` decimal(20,2) DEFAULT 0.00,
  `cur_qty` decimal(20,2) DEFAULT 0.00,
  `dis_per` decimal(20,10) DEFAULT 0.0000000000,
  `cur_discount` decimal(20,2) DEFAULT 0.00,
  `cur_subtot` decimal(20,2) DEFAULT 0.00,
  `actual_selling` decimal(20,2) DEFAULT 0.00,
  `brand` varchar(20) DEFAULT NULL,
  `ad` varchar(20) DEFAULT NULL,
  `dis_per1` decimal(20,10) DEFAULT NULL,
  `dis_per2` decimal(20,10) DEFAULT NULL,
  `tmp_no` varchar(50) DEFAULT NULL,
  `user_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tmp_inv_data
-- ----------------------------

-- ----------------------------
-- Table structure for `tmp_ord_data`
-- ----------------------------
DROP TABLE IF EXISTS `tmp_ord_data`;
CREATE TABLE `tmp_ord_data` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `str_invno` varchar(20) NOT NULL DEFAULT '',
  `str_code` varchar(20) DEFAULT NULL,
  `str_description` varchar(50) DEFAULT NULL,
  `cur_rate` decimal(20,2) DEFAULT 0.00,
  `cur_qty` decimal(20,2) DEFAULT 0.00,
  `dis_per` decimal(20,10) DEFAULT 0.0000000000,
  `cur_discount` decimal(20,2) DEFAULT 0.00,
  `cur_subtot` decimal(20,2) DEFAULT 0.00,
  `actual_selling` decimal(20,2) DEFAULT 0.00,
  `brand` varchar(20) DEFAULT NULL,
  `ad` varchar(20) DEFAULT NULL,
  `tmp_no` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tmp_ord_data
-- ----------------------------

-- ----------------------------
-- Table structure for `tmp_po_data`
-- ----------------------------
DROP TABLE IF EXISTS `tmp_po_data`;
CREATE TABLE `tmp_po_data` (
  `stk_no` varchar(50) DEFAULT NULL,
  `descript` varchar(150) DEFAULT NULL,
  `qty` decimal(40,2) DEFAULT NULL,
  `rate` decimal(40,2) DEFAULT NULL,
  `tmp_no` varchar(50) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subtot` decimal(40,2) DEFAULT NULL,
  `selling` decimal(40,2) DEFAULT NULL,
  `dis` decimal(20,2) DEFAULT NULL,
  `cost` decimal(20,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2575 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tmp_po_data
-- ----------------------------
INSERT INTO `tmp_po_data` VALUES ('I/00002', 'V-BELT  - LB58 -AG8', '1.00', '300.00', '10', '2574', '300.00', null, '0.00', '200.00');

-- ----------------------------
-- Table structure for `tmp_s_sttr`
-- ----------------------------
DROP TABLE IF EXISTS `tmp_s_sttr`;
CREATE TABLE `tmp_s_sttr` (
  `ID` int(11) NOT NULL,
  `ST_REFNO` varchar(20) DEFAULT NULL,
  `ST_DATE` date DEFAULT NULL,
  `ST_INVONO` varchar(20) DEFAULT NULL,
  `ST_PAID` decimal(20,2) DEFAULT 0.00,
  `ST_FLAG` varchar(3) DEFAULT NULL,
  `ST_INDATE` date DEFAULT NULL,
  `st_chbank` varchar(50) DEFAULT NULL,
  `st_days` bigint(20) DEFAULT 0,
  `ST_CHNO` varchar(15) DEFAULT NULL,
  `DUE` decimal(15,2) DEFAULT 0.00,
  `SETTLED_NO` bigint(20) DEFAULT 0,
  `DEV` varchar(1) DEFAULT '0',
  `ret_chval` decimal(15,2) DEFAULT 0.00,
  `ret_chset` decimal(15,2) DEFAULT 0.00,
  `st_chedate` date DEFAULT NULL,
  `st_chdate` date DEFAULT NULL,
  `cus_code` char(10) DEFAULT NULL,
  `ap_days` int(11) DEFAULT NULL,
  `comm` char(3) DEFAULT NULL,
  `ap_rem` varchar(100) DEFAULT NULL,
  `del_days` int(11) DEFAULT NULL,
  `deliin_days` bigint(15) DEFAULT 0,
  `deliin_amo` decimal(15,2) DEFAULT 0.00,
  `deliin_lock` char(1) DEFAULT '0',
  `department` char(1) DEFAULT NULL,
  `tmp_no` varchar(30) DEFAULT NULL,
  `userid` varchar(20) DEFAULT NULL,
  KEY `s_sttr` (`ST_REFNO`,`ST_DATE`,`ST_INVONO`,`ST_CHNO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tmp_s_sttr
-- ----------------------------

-- ----------------------------
-- Table structure for `tmp_utilization`
-- ----------------------------
DROP TABLE IF EXISTS `tmp_utilization`;
CREATE TABLE `tmp_utilization` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `recno` varchar(30) DEFAULT NULL,
  `invno` varchar(20) DEFAULT NULL,
  `org_invdate` date DEFAULT NULL,
  `invdate` date DEFAULT NULL,
  `chqno` varchar(20) DEFAULT NULL,
  `chqdate` date DEFAULT NULL,
  `chbank` varchar(50) DEFAULT NULL,
  `settled` decimal(20,2) DEFAULT 0.00,
  `days` int(11) DEFAULT NULL,
  `invval` decimal(10,0) DEFAULT 0,
  `c1` decimal(20,2) DEFAULT 0.00,
  `c2` decimal(20,2) DEFAULT 0.00,
  `tmp_no` varchar(50) DEFAULT NULL,
  `user_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30892 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tmp_utilization
-- ----------------------------

-- ----------------------------
-- Table structure for `tmpinvpara_acc`
-- ----------------------------
DROP TABLE IF EXISTS `tmpinvpara_acc`;
CREATE TABLE `tmpinvpara_acc` (
  `COMPANY` varchar(50) DEFAULT NULL,
  `QTNNO` float DEFAULT NULL,
  `CHENO` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `CRENO` float DEFAULT NULL,
  `ARN` float DEFAULT NULL,
  `adj` float DEFAULT NULL,
  `rcs` bigint(20) NOT NULL,
  `job` bigint(20) DEFAULT NULL,
  `job1` bigint(20) DEFAULT NULL,
  `ARNLocal` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tmpinvpara_acc
-- ----------------------------
INSERT INTO `tmpinvpara_acc` VALUES ('C', '12', '1', '1', '1', '8', '1', '1', '1', '1', '1');

-- ----------------------------
-- Table structure for `tmpreceipt`
-- ----------------------------
DROP TABLE IF EXISTS `tmpreceipt`;
CREATE TABLE `tmpreceipt` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `REF_NO` varchar(30) DEFAULT NULL,
  `CUS_REF` varchar(100) DEFAULT NULL,
  `ptype` varchar(20) DEFAULT NULL,
  `SDATE` date DEFAULT NULL,
  `cash` decimal(20,2) DEFAULT 0.00,
  `DEPARTMENT` varchar(30) DEFAULT NULL,
  `ch_no` varchar(50) DEFAULT NULL,
  `branch` varchar(30) DEFAULT NULL,
  `ch_date` date DEFAULT NULL,
  `ch_amount` decimal(20,2) DEFAULT 0.00,
  `bank` varchar(50) DEFAULT NULL,
  `cust` varchar(50) DEFAULT NULL,
  `cusname` varchar(50) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `sal_ex` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tmpreceipt
-- ----------------------------

-- ----------------------------
-- Table structure for `tmpsttr`
-- ----------------------------
DROP TABLE IF EXISTS `tmpsttr`;
CREATE TABLE `tmpsttr` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `refno` varchar(20) DEFAULT NULL,
  `sdate` date DEFAULT NULL,
  `cheVal` decimal(20,2) DEFAULT NULL,
  `paid` decimal(20,2) DEFAULT NULL,
  `che_no` varchar(20) DEFAULT NULL,
  `code` varchar(20) DEFAULT NULL,
  `cusname` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tmpsttr
-- ----------------------------

-- ----------------------------
-- Table structure for `tmputi_chqdet`
-- ----------------------------
DROP TABLE IF EXISTS `tmputi_chqdet`;
CREATE TABLE `tmputi_chqdet` (
  `c_code` varchar(50) DEFAULT NULL,
  `ret_chq_no` varchar(50) DEFAULT NULL,
  `ret_date` date DEFAULT NULL,
  `chq_amt` decimal(20,2) DEFAULT 0.00,
  `paid` decimal(20,2) DEFAULT 0.00,
  `balance` decimal(20,2) DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tmputi_chqdet
-- ----------------------------

-- ----------------------------
-- Table structure for `tmputi_invdet`
-- ----------------------------
DROP TABLE IF EXISTS `tmputi_invdet`;
CREATE TABLE `tmputi_invdet` (
  `c_code` varchar(50) DEFAULT NULL,
  `inv_no` varchar(50) DEFAULT NULL,
  `inv_date` date DEFAULT NULL,
  `inv_amt` decimal(20,2) DEFAULT 0.00,
  `paid` decimal(20,2) DEFAULT 0.00,
  `balance` decimal(20,2) DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tmputi_invdet
-- ----------------------------

-- ----------------------------
-- Table structure for `user_mast`
-- ----------------------------
DROP TABLE IF EXISTS `user_mast`;
CREATE TABLE `user_mast` (
  `user_name` varchar(20) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `user_type` varchar(40) DEFAULT NULL,
  `user_depart` varchar(20) DEFAULT NULL,
  `U_email` varchar(50) DEFAULT NULL,
  `password1` varchar(100) DEFAULT '',
  `user_level` varchar(20) DEFAULT '0',
  `dev` varchar(20) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user_mast
-- ----------------------------
INSERT INTO `user_mast` VALUES ('ADMIN', '202cb962ac59075b964b07152d234b70', 'ADMIN', 'C', null, '123', '0', '0');
INSERT INTO `user_mast` VALUES ('saumya', '202cb962ac59075b964b07152d234b70', 'USER', 'C', null, '123', '0', '0');
INSERT INTO `user_mast` VALUES ('GEETH', '202cb962ac59075b964b07152d234b70', 'ADMIN', 'C', null, '123', '0', '0');

-- ----------------------------
-- Table structure for `userpermission`
-- ----------------------------
DROP TABLE IF EXISTS `userpermission`;
CREATE TABLE `userpermission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(200) DEFAULT NULL,
  `userpass` varchar(50) DEFAULT NULL,
  `grp` varchar(50) DEFAULT NULL,
  `docid` bigint(20) DEFAULT 0,
  `doc_view` smallint(11) DEFAULT 0,
  `doc_feed` smallint(1) DEFAULT 0,
  `doc_mod` smallint(1) DEFAULT 0,
  `doc_print` smallint(1) DEFAULT 0,
  `admin` smallint(1) DEFAULT 0,
  `dev` smallint(1) DEFAULT 0,
  `comcode` varchar(1) DEFAULT '0',
  `price_edit` smallint(1) DEFAULT 0,
  `comname` varchar(1) DEFAULT '0',
  `sal_ex` varchar(100) DEFAULT NULL,
  `logdate` date DEFAULT NULL,
  `doc_sp` smallint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `userpermission` (`username`,`grp`,`docid`)
) ENGINE=InnoDB AUTO_INCREMENT=1979 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of userpermission
-- ----------------------------
INSERT INTO `userpermission` VALUES ('1862', 'NUWAN', '', 'OPERATION', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1863', 'NUWAN', '', 'OPERATION', '2', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1864', 'NUWAN', '', 'OPERATION', '3', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1865', 'NUWAN', '', 'OPERATION', '4', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1866', 'NUWAN', '', 'OPERATION', '6', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1867', 'NUWAN', '', 'OPERATION', '7', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1868', 'NUWAN', '', 'OPERATION', '8', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1869', 'NUWAN', '', 'OPERATION', '9', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1870', 'NUWAN', '', 'OPERATION', '10', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1871', 'NUWAN', '', 'OPERATION', '11', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1872', 'NUWAN', '', 'OPERATION', '12', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1873', 'NUWAN', '', 'OPERATION', '13', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1874', 'NUWAN', '', 'MASTER FILES', '14', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1875', 'NUWAN', '', 'MASTER FILES', '15', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1876', 'NUWAN', '', 'MASTER FILES', '16', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1877', 'NUWAN', '', 'MASTER FILES', '17', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1878', 'NUWAN', '', 'MASTER FILES', '18', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1879', 'NUWAN', '', 'ADMINISTRATION', '19', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1880', 'NUWAN', '', 'ADMINISTRATION', '20', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1881', 'NUWAN', '', 'ADMINISTRATION', '21', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1882', 'NUWAN', '', 'REPORTS', '22', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1883', 'NUWAN', '', 'MASTER FILES', '23', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1884', 'NUWAN', '', 'OPERATION', '24', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1885', 'NUWAN', '', 'MASTER FILES', '25', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1886', 'NUWAN', '', 'OPERATION', '26', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1887', 'NUWAN', '', 'REPORTS', '27', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1888', 'NUWAN', '', 'ADMINISTRATION', '28', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1889', 'NUWAN', '', 'MASTER FILES', '29', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1890', 'NUWAN', '', 'OPERATION', '30', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1891', 'GEETH', '', 'OPERATION', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1892', 'GEETH', '', 'OPERATION', '2', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1893', 'GEETH', '', 'OPERATION', '3', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1894', 'GEETH', '', 'OPERATION', '4', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1895', 'GEETH', '', 'OPERATION', '6', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1896', 'GEETH', '', 'OPERATION', '7', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1897', 'GEETH', '', 'OPERATION', '8', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1898', 'GEETH', '', 'OPERATION', '9', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1899', 'GEETH', '', 'OPERATION', '10', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1900', 'GEETH', '', 'OPERATION', '11', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1901', 'GEETH', '', 'OPERATION', '12', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1902', 'GEETH', '', 'OPERATION', '13', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1903', 'GEETH', '', 'MASTER FILES', '14', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1904', 'GEETH', '', 'MASTER FILES', '15', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1905', 'GEETH', '', 'MASTER FILES', '16', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1906', 'GEETH', '', 'MASTER FILES', '17', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1907', 'GEETH', '', 'MASTER FILES', '18', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1908', 'GEETH', '', 'ADMINISTRATION', '19', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1909', 'GEETH', '', 'ADMINISTRATION', '20', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1910', 'GEETH', '', 'ADMINISTRATION', '21', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1911', 'GEETH', '', 'REPORTS', '22', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1912', 'GEETH', '', 'MASTER FILES', '23', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1913', 'GEETH', '', 'OPERATION', '24', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1914', 'GEETH', '', 'MASTER FILES', '25', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1915', 'GEETH', '', 'OPERATION', '26', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1916', 'GEETH', '', 'REPORTS', '27', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1917', 'GEETH', '', 'ADMINISTRATION', '28', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1918', 'GEETH', '', 'MASTER FILES', '29', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1919', 'GEETH', '', 'OPERATION', '30', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1920', 'saumya', '', 'OPERATION', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1921', 'saumya', '', 'OPERATION', '2', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1922', 'saumya', '', 'OPERATION', '3', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1923', 'saumya', '', 'OPERATION', '4', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1924', 'saumya', '', 'OPERATION', '6', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1925', 'saumya', '', 'OPERATION', '7', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1926', 'saumya', '', 'OPERATION', '8', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1927', 'saumya', '', 'OPERATION', '9', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1928', 'saumya', '', 'OPERATION', '10', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1929', 'saumya', '', 'OPERATION', '11', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1930', 'saumya', '', 'OPERATION', '12', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1931', 'saumya', '', 'OPERATION', '13', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1932', 'saumya', '', 'MASTER FILES', '14', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1933', 'saumya', '', 'MASTER FILES', '15', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1934', 'saumya', '', 'MASTER FILES', '16', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1935', 'saumya', '', 'MASTER FILES', '17', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1936', 'saumya', '', 'MASTER FILES', '18', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1937', 'saumya', '', 'ADMINISTRATION', '19', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1938', 'saumya', '', 'ADMINISTRATION', '20', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1939', 'saumya', '', 'ADMINISTRATION', '21', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1940', 'saumya', '', 'REPORTS', '22', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1941', 'saumya', '', 'MASTER FILES', '23', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1942', 'saumya', '', 'OPERATION', '24', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1943', 'saumya', '', 'MASTER FILES', '25', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1944', 'saumya', '', 'OPERATION', '26', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1945', 'saumya', '', 'REPORTS', '27', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1946', 'saumya', '', 'ADMINISTRATION', '28', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1947', 'saumya', '', 'MASTER FILES', '29', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1948', 'saumya', '', 'OPERATION', '30', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1949', 'ADMIN', '', 'OPERATION', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1950', 'ADMIN', '', 'OPERATION', '2', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1951', 'ADMIN', '', 'OPERATION', '3', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1952', 'ADMIN', '', 'OPERATION', '4', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1953', 'ADMIN', '', 'OPERATION', '6', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1954', 'ADMIN', '', 'OPERATION', '7', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1955', 'ADMIN', '', 'OPERATION', '8', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1956', 'ADMIN', '', 'OPERATION', '9', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1957', 'ADMIN', '', 'OPERATION', '10', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1958', 'ADMIN', '', 'OPERATION', '11', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1959', 'ADMIN', '', 'OPERATION', '12', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1960', 'ADMIN', '', 'OPERATION', '13', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1961', 'ADMIN', '', 'MASTER FILES', '14', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1962', 'ADMIN', '', 'MASTER FILES', '15', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1963', 'ADMIN', '', 'MASTER FILES', '16', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1964', 'ADMIN', '', 'MASTER FILES', '17', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1965', 'ADMIN', '', 'MASTER FILES', '18', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1966', 'ADMIN', '', 'ADMINISTRATION', '19', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1967', 'ADMIN', '', 'ADMINISTRATION', '20', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1968', 'ADMIN', '', 'ADMINISTRATION', '21', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1969', 'ADMIN', '', 'REPORTS', '22', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1970', 'ADMIN', '', 'MASTER FILES', '23', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1971', 'ADMIN', '', 'OPERATION', '24', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1972', 'ADMIN', '', 'MASTER FILES', '25', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1973', 'ADMIN', '', 'OPERATION', '26', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1974', 'ADMIN', '', 'REPORTS', '27', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1975', 'ADMIN', '', 'ADMINISTRATION', '28', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1976', 'ADMIN', '', 'MASTER FILES', '29', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1977', 'ADMIN', '', 'OPERATION', '30', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');
INSERT INTO `userpermission` VALUES ('1978', 'ADMIN', '', 'ADMINISTRATION', '31', '1', '1', '1', '0', '0', '0', '0', '0', '0', null, null, '1');

-- ----------------------------
-- Table structure for `vatrate`
-- ----------------------------
DROP TABLE IF EXISTS `vatrate`;
CREATE TABLE `vatrate` (
  `sdate` date DEFAULT NULL,
  `vatrate` float DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of vatrate
-- ----------------------------

-- ----------------------------
-- Table structure for `vendor`
-- ----------------------------
DROP TABLE IF EXISTS `vendor`;
CREATE TABLE `vendor` (
  `CODE` varchar(30) DEFAULT NULL,
  `NAME` varchar(100) DEFAULT NULL,
  `ADD1` varchar(100) DEFAULT NULL,
  `ADD2` varchar(100) DEFAULT NULL,
  `ADD3` varchar(100) DEFAULT NULL,
  `OPBAL` float(30,0) DEFAULT NULL,
  `TELE1` varchar(50) DEFAULT NULL,
  `TELE2` varchar(50) DEFAULT NULL,
  `CONT` varchar(50) DEFAULT NULL,
  `CUR_BAL` varchar(30) DEFAULT NULL,
  `OPDATE` date DEFAULT NULL,
  `cLIMIT` varchar(30) DEFAULT NULL,
  `PEN` varchar(30) DEFAULT NULL,
  `PENDA` varchar(30) DEFAULT NULL,
  `FAX` varchar(50) DEFAULT NULL,
  `EMAIL` varchar(50) DEFAULT NULL,
  `vatno` varchar(50) DEFAULT NULL,
  `acno` varchar(30) DEFAULT NULL,
  `CAT` varchar(30) DEFAULT NULL,
  `RET_CHEQ` varchar(30) DEFAULT NULL,
  `rep` varchar(20) DEFAULT NULL,
  `cus_type` varchar(30) DEFAULT NULL,
  `note` varchar(1000) DEFAULT NULL,
  `AltMessage` varchar(1000) DEFAULT NULL,
  `bank_gr_date` date DEFAULT NULL,
  `temp_limit` varchar(30) DEFAULT NULL,
  `blacklist` varchar(30) DEFAULT '0',
  `o90` varchar(30) DEFAULT NULL,
  `Over_DUE_IG_Date` date DEFAULT NULL,
  `area` varchar(50) DEFAULT NULL,
  `provi` varchar(50) DEFAULT NULL,
  `pen2` varchar(50) DEFAULT NULL,
  `incdays` varchar(30) DEFAULT NULL,
  `chk_bangr` varchar(30) DEFAULT NULL,
  `field1` varchar(30) DEFAULT NULL,
  `PEN0` varchar(30) DEFAULT NULL,
  `svatno` varchar(50) DEFAULT NULL,
  `commoncode` varchar(50) DEFAULT NULL,
  `tmp_no` varchar(50) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  `mob1` char(50) DEFAULT NULL,
  `mob2` char(50) DEFAULT NULL,
  `mob3` char(50) DEFAULT NULL,
  `hide_ost` char(1) DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nic` varchar(20) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `shopname` varchar(50) DEFAULT NULL,
  `cancel` varchar(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `vendor` (`CODE`)
) ENGINE=InnoDB AUTO_INCREMENT=2307 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of vendor
-- ----------------------------
INSERT INTO `vendor` VALUES ('V/00001', 'BROWNS PVT LTD', '', null, null, null, '', '', null, null, null, null, null, null, null, null, null, null, null, null, null, 'SUPPLIER', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '2305', '', null, '', '0');
INSERT INTO `vendor` VALUES ('V/00002', 'CASH SALE', '', null, null, null, '', '', null, null, null, null, null, null, null, null, null, null, null, null, null, 'CUSTOMER', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '2306', '', null, '', '0');

-- ----------------------------
-- Table structure for `workers`
-- ----------------------------
DROP TABLE IF EXISTS `workers`;
CREATE TABLE `workers` (
  `name` varchar(50) DEFAULT NULL,
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) DEFAULT NULL,
  `cancel` varchar(1) DEFAULT '0',
  `nic` varchar(20) DEFAULT NULL,
  `land` varchar(20) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of workers
-- ----------------------------

-- ----------------------------
-- View structure for `view_cusordmas_trn`
-- ----------------------------
DROP VIEW IF EXISTS `view_cusordmas_trn`;
CREATE ALGORITHM=UNDEFINED DEFINER=`capitalw_capital`@`%` SQL SECURITY DEFINER VIEW `view_cusordmas_trn` AS select `s_cusordmas`.`REF_NO` AS `REF_NO`,`s_cusordmas`.`SDATE` AS `SDATE`,`s_cusordmas`.`C_CODE` AS `C_CODE`,`s_cusordmas`.`CUS_NAME` AS `CUS_NAME`,`s_cusordmas`.`SAL_EX` AS `SAL_EX`,`s_cusordmas`.`DEPARTMENT` AS `DEPARTMENT`,`s_cusordmas`.`CANCELL` AS `CANCELL`,`s_cusordmas`.`INVNO` AS `INVNO`,`s_cusordtrn`.`STK_NO` AS `STK_NO`,`s_cusordtrn`.`QTY` AS `QTY` from (`s_cusordmas` join `s_cusordtrn` on(`s_cusordmas`.`REF_NO` = `s_cusordtrn`.`REF_NO`));

-- ----------------------------
-- View structure for `view_menu`
-- ----------------------------
DROP VIEW IF EXISTS `view_menu`;
CREATE ALGORITHM=UNDEFINED DEFINER=`capitalw_capital`@`%` SQL SECURITY DEFINER VIEW `view_menu` AS select `doc`.`docid` AS `docid`,`doc`.`docname` AS `docname`,`doc`.`name` AS `name`,`doc`.`grp` AS `grp`,`doc`.`id` AS `id`,`doc`.`icon` AS `icon`,`doc`.`color` AS `color`,`userpermission`.`doc_feed` AS `doc_feed`,`userpermission`.`doc_view` AS `doc_view`,`userpermission`.`doc_mod` AS `doc_mod`,`userpermission`.`price_edit` AS `price_edit`,`userpermission`.`username` AS `username`,`doc`.`odr` AS `odr`,`userpermission`.`doc_sp` AS `doc_sp`,`userpermission`.`doc_print` AS `doc_print` from (`doc` join `userpermission` on(`doc`.`docid` = `userpermission`.`docid`));

-- ----------------------------
-- View structure for `view_tmp_gin`
-- ----------------------------
DROP VIEW IF EXISTS `view_tmp_gin`;
CREATE ALGORITHM=UNDEFINED DEFINER=`capitalw_capital`@`%` SQL SECURITY DEFINER VIEW `view_tmp_gin` AS select `tmp_gin_data_multi`.`str_invno` AS `str_invno`,`tmp_gin_data_multi`.`str_code` AS `str_code`,`tmp_gin_data_multi`.`str_description` AS `str_description`,`tmp_gin_data_multi`.`partno` AS `partno`,`tmp_gin_data_multi`.`cur_qty` AS `cur_qty`,`tmp_gin_data_multi`.`tmp_no` AS `tmp_no`,`tmp_gin_data_multi`.`user_id` AS `user_id`,`tmp_gin_data_multi`.`id` AS `id`,`tmp_gin_data_multi`.`dep_from` AS `dep_from`,`s_stomas`.`DESCRIPTION` AS `DESCRIPTION`,`tmp_gin_data_multi`.`container` AS `container`,`tmp_gin_data_multi`.`shipment` AS `shipment` from (`tmp_gin_data_multi` join `s_stomas` on(`tmp_gin_data_multi`.`dep_from` = `s_stomas`.`CODE`));

-- ----------------------------
-- View structure for `vieword`
-- ----------------------------
DROP VIEW IF EXISTS `vieword`;
CREATE ALGORITHM=UNDEFINED DEFINER=`capitalw_capital`@`%` SQL SECURITY DEFINER VIEW `vieword` AS select `s_ordmas`.`REFNO` AS `REFNO`,`s_ordmas`.`SDATE` AS `SDATE`,`s_ordmas`.`COUNTRY` AS `COUNTRY`,`s_ordmas`.`SUP_CODE` AS `SUP_CODE`,`s_ordmas`.`SUP_NAME` AS `SUP_NAME`,`s_ordmas`.`REMARK` AS `REMARK`,`s_ordmas`.`DEP_CODE` AS `DEP_CODE`,`s_ordmas`.`DEP_NAME` AS `DEP_NAME`,`s_ordmas`.`REP_CODE` AS `REP_CODE`,`s_ordmas`.`REP_NAME` AS `REP_NAME`,`s_ordmas`.`AMOUNT` AS `AMOUNT`,`s_ordmas`.`cancel` AS `cancel`,`s_ordmas`.`S_date` AS `S_date`,`s_ordmas`.`LC_No` AS `LC_No`,`s_ordmas`.`Brand` AS `Brand`,`s_ordtrn`.`STK_NO` AS `STK_NO`,`s_ordtrn`.`DESCRIPT` AS `DESCRIPT`,`s_ordtrn`.`UNIT` AS `UNIT`,`s_ordtrn`.`ORD_QTY` AS `ORD_QTY`,`s_ordtrn`.`REC_QTY` AS `REC_QTY`,`s_ordtrn`.`RATE` AS `RATE`,`s_ordtrn`.`partno` AS `partno` from (`s_ordmas` join `s_ordtrn` on(`s_ordmas`.`REFNO` = `s_ordtrn`.`REFNO`));

-- ----------------------------
-- View structure for `viewpur`
-- ----------------------------
DROP VIEW IF EXISTS `viewpur`;
CREATE ALGORITHM=UNDEFINED DEFINER=`capitalw_capital`@`%` SQL SECURITY DEFINER VIEW `viewpur` AS select `s_purtrn`.`REFNO` AS `REFNO`,`s_purtrn`.`SDATE` AS `SDATE`,`s_purtrn`.`STK_NO` AS `STK_NO`,`s_purtrn`.`DESCRIPT` AS `DESCRIPT`,`s_purtrn`.`COST` AS `COST`,`s_purtrn`.`MARGIN` AS `MARGIN`,`s_purtrn`.`SELLING` AS `SELLING`,`s_purtrn`.`REC_QTY` AS `REC_QTY`,`s_purtrn`.`FOB` AS `FOB`,`s_purtrn`.`DEPARTMENT` AS `DEPARTMENT`,`s_purtrn`.`QTYINHAND` AS `QTYINHAND`,`s_purtrn`.`O_QTY` AS `O_QTY`,`s_purtrn`.`DISCOUNT` AS `DISCOUNT`,`s_purtrn`.`ret_qty` AS `ret_qty`,`s_purtrn`.`Cost_c` AS `Cost_c`,`s_purtrn`.`cost_seling` AS `cost_seling`,`s_purtrn`.`cost_margin` AS `cost_margin`,`s_purtrn`.`CANCEL` AS `CANCEL`,`s_purtrn`.`ID` AS `ID`,`s_purtrn`.`acc_cost` AS `acc_cost`,`s_purtrn`.`acc_cost_c` AS `acc_cost_c`,`s_purtrn`.`soldqty` AS `soldqty`,`s_purtrn`.`brand` AS `brand`,`s_purtrn`.`days` AS `days`,`s_purtrn`.`vatrate` AS `vatrate`,`s_purmas`.`LCNO` AS `LCNO`,`s_purmas`.`COUNTRY` AS `COUNTRY`,`s_purmas`.`SUP_CODE` AS `SUP_CODE`,`s_purmas`.`SUP_NAME` AS `SUP_NAME`,`s_purmas`.`brand` AS `brand_name`,`s_purmas`.`TYPE` AS `TYPE`,`s_mas`.`BRAND_NAME` AS `sBRAND_NAME` from ((`s_purmas` join `s_purtrn` on(`s_purmas`.`REFNO` = `s_purtrn`.`REFNO`)) join `s_mas` on(`s_mas`.`STK_NO` = `s_purtrn`.`STK_NO`));
