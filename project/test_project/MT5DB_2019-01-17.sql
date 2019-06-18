# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 
# Database: MT5DB
# Generation Time: 2019-01-17 01:50:46 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table mt5_accounts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `mt5_accounts`;

CREATE TABLE `mt5_accounts` (
  `Login` bigint(20) unsigned NOT NULL DEFAULT '0',
  `CurrencyDigits` int(10) unsigned NOT NULL DEFAULT '0',
  `Balance` double NOT NULL DEFAULT '0',
  `Credit` double NOT NULL DEFAULT '0',
  `Margin` double NOT NULL DEFAULT '0',
  `MarginFree` double NOT NULL DEFAULT '0',
  `MarginLevel` double NOT NULL DEFAULT '0',
  `MarginLeverage` int(10) unsigned NOT NULL DEFAULT '0',
  `MarginInitial` double NOT NULL DEFAULT '0',
  `MarginMaintenance` double NOT NULL DEFAULT '0',
  `Profit` double NOT NULL DEFAULT '0',
  `Storage` double NOT NULL DEFAULT '0',
  `Commission` double NOT NULL DEFAULT '0',
  `Floating` double NOT NULL DEFAULT '0',
  `Equity` double NOT NULL DEFAULT '0',
  `Assets` double NOT NULL DEFAULT '0',
  `Liabilities` double NOT NULL DEFAULT '0',
  `BlockedCommission` double NOT NULL DEFAULT '0',
  `BlockedProfit` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`Login`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `mt5_accounts` WRITE;
/*!40000 ALTER TABLE `mt5_accounts` DISABLE KEYS */;

INSERT INTO `mt5_accounts` (`Login`, `CurrencyDigits`, `Balance`, `Credit`, `Margin`, `MarginFree`, `MarginLevel`, `MarginLeverage`, `MarginInitial`, `MarginMaintenance`, `Profit`, `Storage`, `Commission`, `Floating`, `Equity`, `Assets`, `Liabilities`, `BlockedCommission`, `BlockedProfit`)
VALUES
	(1,2,0,0,0,0,0,100,0,0,0,0,0,0,0,0,0,0,0),
	(2,2,0,0,0,0,0,100,0,0,0,0,0,0,0,0,0,0,0),
	(3,2,0,0,0,0,0,100,0,0,0,0,0,0,0,0,0,0,0),
	(4,2,0,0,0,0,0,100,0,0,0,0,0,0,0,0,0,0,0),
	(131,2,0,0,0,0,0,100,0,0,0,0,0,0,0,0,0,0,0),
	(133,2,0,0,0,0,0,100,0,0,0,0,0,0,0,0,0,0,0),
	(600,2,0,0,0,0,0,100,0,0,0,0,0,0,0,0,0,0,0),
	(670,2,0,0,0,0,0,100,0,0,0,0,0,0,0,0,0,0,0),
	(672,2,0,0,0,0,0,100,0,0,0,0,0,0,0,0,0,0,0),
	(1000,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0),
	(1001,2,0,0,0,0,0,100,0,0,0,0,0,0,0,0,0,0,0),
	(1002,2,0,0,0,0,0,100,0,0,0,0,0,0,0,0,0,0,0),
	(1003,2,0,0,0,0,0,100,0,0,0,0,0,0,0,0,0,0,0),
	(1004,2,0,0,0,0,0,100,0,0,0,0,0,0,0,0,0,0,0),
	(1005,2,30000,0,0,30000,0,100,0,0,0,0,0,0,30000,0,0,0,0),
	(1006,2,49663,0,0,49663,0,100,0,0,0,0,0,0,49663,0,0,0,0),
	(1007,2,100000,0,0,100000,0,100,0,0,0,0,0,0,100000,0,0,0,0),
	(1123,2,100000,0,0,100000,0,100,0,0,0,0,0,0,100000,0,0,0,0),
	(53009,2,0,0,0,0,0,100,0,0,0,0,0,0,0,0,0,0,0),
	(53013,2,0,0,0,0,0,100,0,0,0,0,0,0,0,0,0,0,0),
	(53025,2,0,0,0,0,0,100,0,0,0,0,0,0,0,0,0,0,0),
	(67000,2,0,0,0,0,0,100,0,0,0,0,0,0,0,0,0,0,0),
	(31001019,2,0,0,0,0,0,100,0,0,0,0,0,0,0,0,0,0,0),
	(31001020,2,0,0,0,0,0,100,0,0,0,0,0,0,0,0,0,0,0),
	(31001021,2,0,0,0,0,0,100,0,0,0,0,0,0,0,0,0,0,0),
	(61200003,2,0,0,0,0,0,100,0,0,0,0,0,0,0,0,0,0,0),
	(67200260,2,0,0,0,0,0,100,0,0,0,0,0,0,0,0,0,0,0);

/*!40000 ALTER TABLE `mt5_accounts` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table mt5_antiddos_servers
# ------------------------------------------------------------

DROP TABLE IF EXISTS `mt5_antiddos_servers`;

CREATE TABLE `mt5_antiddos_servers` (
  `Server_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `Login` bigint(20) unsigned NOT NULL DEFAULT '0',
  `Server` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`Server_ID`),
  KEY `IDX_mt5_antiddos_server_login` (`Login`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table mt5_antiddos_sources
# ------------------------------------------------------------

DROP TABLE IF EXISTS `mt5_antiddos_sources`;

CREATE TABLE `mt5_antiddos_sources` (
  `Source_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `Login` bigint(20) unsigned NOT NULL DEFAULT '0',
  `From` varchar(64) NOT NULL DEFAULT '',
  `To` varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`Source_ID`),
  KEY `IDX_mt5_antiddos_source_login` (`Login`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table mt5_commissions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `mt5_commissions`;

CREATE TABLE `mt5_commissions` (
  `Commission_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `Group_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `Name` varchar(64) NOT NULL DEFAULT '',
  `Description` varchar(64) NOT NULL DEFAULT '',
  `Path` varchar(128) NOT NULL DEFAULT '',
  `Mode` int(10) unsigned NOT NULL DEFAULT '0',
  `ModeRange` int(10) unsigned NOT NULL DEFAULT '0',
  `ModeCharge` int(10) unsigned NOT NULL DEFAULT '0',
  `TurnoverCurrency` varchar(16) NOT NULL DEFAULT '',
  `ModeEntry` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`Commission_ID`),
  KEY `IDX_mt5_commissions_group_id` (`Group_ID`),
  KEY `IDX_mt5_commissions_Name` (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table mt5_commissions_tiers
# ------------------------------------------------------------

DROP TABLE IF EXISTS `mt5_commissions_tiers`;

CREATE TABLE `mt5_commissions_tiers` (
  `Tier_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `Commission_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `Mode` int(10) unsigned NOT NULL DEFAULT '0',
  `Type` int(10) unsigned NOT NULL DEFAULT '0',
  `Value` double NOT NULL DEFAULT '0',
  `RangeFrom` double NOT NULL DEFAULT '0',
  `RangeTo` double NOT NULL DEFAULT '0',
  `Minimal` double NOT NULL DEFAULT '0',
  `Currency` varchar(16) NOT NULL DEFAULT '',
  PRIMARY KEY (`Tier_ID`),
  KEY `IDX_mt5_tiers_commission_id` (`Commission_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table mt5_daily
# ------------------------------------------------------------

DROP TABLE IF EXISTS `mt5_daily`;

CREATE TABLE `mt5_daily` (
  `Datetime` bigint(20) NOT NULL DEFAULT '0',
  `Login` bigint(20) unsigned NOT NULL DEFAULT '0',
  `Timestamp` bigint(20) NOT NULL DEFAULT '0',
  `DatetimePrev` bigint(20) NOT NULL DEFAULT '0',
  `Name` varchar(128) NOT NULL DEFAULT '',
  `Group` varchar(64) NOT NULL DEFAULT '',
  `Currency` varchar(32) NOT NULL DEFAULT '',
  `Company` varchar(64) NOT NULL DEFAULT '',
  `EMail` varchar(64) NOT NULL DEFAULT '',
  `Balance` double NOT NULL DEFAULT '0',
  `Credit` double NOT NULL DEFAULT '0',
  `InterestRate` double NOT NULL DEFAULT '0',
  `CommissionDaily` double NOT NULL DEFAULT '0',
  `CommissionMonthly` double NOT NULL DEFAULT '0',
  `AgentDaily` double NOT NULL DEFAULT '0',
  `AgentMonthly` double NOT NULL DEFAULT '0',
  `BalancePrevDay` double NOT NULL DEFAULT '0',
  `BalancePrevMonth` double NOT NULL DEFAULT '0',
  `EquityPrevDay` double NOT NULL DEFAULT '0',
  `EquityPrevMonth` double NOT NULL DEFAULT '0',
  `Margin` double NOT NULL DEFAULT '0',
  `MarginFree` double NOT NULL DEFAULT '0',
  `MarginLevel` double NOT NULL DEFAULT '0',
  `MarginLeverage` int(10) unsigned NOT NULL DEFAULT '0',
  `Profit` double NOT NULL DEFAULT '0',
  `ProfitStorage` double NOT NULL DEFAULT '0',
  `ProfitCommission` double NOT NULL DEFAULT '0',
  `ProfitEquity` double NOT NULL DEFAULT '0',
  `DailyProfit` double NOT NULL DEFAULT '0',
  `DailyBalance` double NOT NULL DEFAULT '0',
  `DailyCredit` double NOT NULL DEFAULT '0',
  `DailyCharge` double NOT NULL DEFAULT '0',
  `DailyCorrection` double NOT NULL DEFAULT '0',
  `DailyBonus` double NOT NULL DEFAULT '0',
  `DailyStorage` double NOT NULL DEFAULT '0',
  `DailyCommInstant` double NOT NULL DEFAULT '0',
  `DailyCommRound` double NOT NULL DEFAULT '0',
  `DailyAgent` double NOT NULL DEFAULT '0',
  `DailyInterest` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`Datetime`,`Login`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table mt5_daily_2018
# ------------------------------------------------------------

DROP TABLE IF EXISTS `mt5_daily_2018`;

CREATE TABLE `mt5_daily_2018` (
  `Datetime` bigint(20) NOT NULL DEFAULT '0',
  `Login` bigint(20) unsigned NOT NULL DEFAULT '0',
  `Timestamp` bigint(20) NOT NULL DEFAULT '0',
  `DatetimePrev` bigint(20) NOT NULL DEFAULT '0',
  `Name` varchar(128) NOT NULL DEFAULT '',
  `Group` varchar(64) NOT NULL DEFAULT '',
  `Currency` varchar(32) NOT NULL DEFAULT '',
  `Company` varchar(64) NOT NULL DEFAULT '',
  `EMail` varchar(64) NOT NULL DEFAULT '',
  `Balance` double NOT NULL DEFAULT '0',
  `Credit` double NOT NULL DEFAULT '0',
  `InterestRate` double NOT NULL DEFAULT '0',
  `CommissionDaily` double NOT NULL DEFAULT '0',
  `CommissionMonthly` double NOT NULL DEFAULT '0',
  `AgentDaily` double NOT NULL DEFAULT '0',
  `AgentMonthly` double NOT NULL DEFAULT '0',
  `BalancePrevDay` double NOT NULL DEFAULT '0',
  `BalancePrevMonth` double NOT NULL DEFAULT '0',
  `EquityPrevDay` double NOT NULL DEFAULT '0',
  `EquityPrevMonth` double NOT NULL DEFAULT '0',
  `Margin` double NOT NULL DEFAULT '0',
  `MarginFree` double NOT NULL DEFAULT '0',
  `MarginLevel` double NOT NULL DEFAULT '0',
  `MarginLeverage` int(10) unsigned NOT NULL DEFAULT '0',
  `Profit` double NOT NULL DEFAULT '0',
  `ProfitStorage` double NOT NULL DEFAULT '0',
  `ProfitCommission` double NOT NULL DEFAULT '0',
  `ProfitEquity` double NOT NULL DEFAULT '0',
  `DailyProfit` double NOT NULL DEFAULT '0',
  `DailyBalance` double NOT NULL DEFAULT '0',
  `DailyCredit` double NOT NULL DEFAULT '0',
  `DailyCharge` double NOT NULL DEFAULT '0',
  `DailyCorrection` double NOT NULL DEFAULT '0',
  `DailyBonus` double NOT NULL DEFAULT '0',
  `DailyStorage` double NOT NULL DEFAULT '0',
  `DailyCommInstant` double NOT NULL DEFAULT '0',
  `DailyCommRound` double NOT NULL DEFAULT '0',
  `DailyAgent` double NOT NULL DEFAULT '0',
  `DailyInterest` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`Datetime`,`Login`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table mt5_daily_2019
# ------------------------------------------------------------

DROP TABLE IF EXISTS `mt5_daily_2019`;

CREATE TABLE `mt5_daily_2019` (
  `Datetime` bigint(20) NOT NULL DEFAULT '0',
  `Login` bigint(20) unsigned NOT NULL DEFAULT '0',
  `Timestamp` bigint(20) NOT NULL DEFAULT '0',
  `DatetimePrev` bigint(20) NOT NULL DEFAULT '0',
  `Name` varchar(128) NOT NULL DEFAULT '',
  `Group` varchar(64) NOT NULL DEFAULT '',
  `Currency` varchar(32) NOT NULL DEFAULT '',
  `Company` varchar(64) NOT NULL DEFAULT '',
  `EMail` varchar(64) NOT NULL DEFAULT '',
  `Balance` double NOT NULL DEFAULT '0',
  `Credit` double NOT NULL DEFAULT '0',
  `InterestRate` double NOT NULL DEFAULT '0',
  `CommissionDaily` double NOT NULL DEFAULT '0',
  `CommissionMonthly` double NOT NULL DEFAULT '0',
  `AgentDaily` double NOT NULL DEFAULT '0',
  `AgentMonthly` double NOT NULL DEFAULT '0',
  `BalancePrevDay` double NOT NULL DEFAULT '0',
  `BalancePrevMonth` double NOT NULL DEFAULT '0',
  `EquityPrevDay` double NOT NULL DEFAULT '0',
  `EquityPrevMonth` double NOT NULL DEFAULT '0',
  `Margin` double NOT NULL DEFAULT '0',
  `MarginFree` double NOT NULL DEFAULT '0',
  `MarginLevel` double NOT NULL DEFAULT '0',
  `MarginLeverage` int(10) unsigned NOT NULL DEFAULT '0',
  `Profit` double NOT NULL DEFAULT '0',
  `ProfitStorage` double NOT NULL DEFAULT '0',
  `ProfitCommission` double NOT NULL DEFAULT '0',
  `ProfitEquity` double NOT NULL DEFAULT '0',
  `DailyProfit` double NOT NULL DEFAULT '0',
  `DailyBalance` double NOT NULL DEFAULT '0',
  `DailyCredit` double NOT NULL DEFAULT '0',
  `DailyCharge` double NOT NULL DEFAULT '0',
  `DailyCorrection` double NOT NULL DEFAULT '0',
  `DailyBonus` double NOT NULL DEFAULT '0',
  `DailyStorage` double NOT NULL DEFAULT '0',
  `DailyCommInstant` double NOT NULL DEFAULT '0',
  `DailyCommRound` double NOT NULL DEFAULT '0',
  `DailyAgent` double NOT NULL DEFAULT '0',
  `DailyInterest` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`Datetime`,`Login`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table mt5_deals
# ------------------------------------------------------------

DROP TABLE IF EXISTS `mt5_deals`;

CREATE TABLE `mt5_deals` (
  `Deal` bigint(20) unsigned NOT NULL DEFAULT '0',
  `Timestamp` bigint(20) NOT NULL DEFAULT '0',
  `ExternalID` varchar(32) NOT NULL DEFAULT '',
  `Login` bigint(20) unsigned NOT NULL DEFAULT '0',
  `Dealer` bigint(20) unsigned NOT NULL DEFAULT '0',
  `Order` bigint(20) unsigned NOT NULL DEFAULT '0',
  `Action` int(10) unsigned NOT NULL DEFAULT '0',
  `Entry` int(10) unsigned NOT NULL DEFAULT '0',
  `Reason` int(10) unsigned NOT NULL DEFAULT '0',
  `Digits` int(10) unsigned NOT NULL DEFAULT '0',
  `DigitsCurrency` int(10) unsigned NOT NULL DEFAULT '0',
  `ContractSize` double NOT NULL DEFAULT '0',
  `Time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `TimeMsc` datetime(6) NOT NULL DEFAULT '0000-00-00 00:00:00.000000',
  `Symbol` varchar(32) NOT NULL DEFAULT '',
  `Price` double NOT NULL DEFAULT '0',
  `VolumeExt` bigint(20) unsigned NOT NULL DEFAULT '0',
  `Profit` double NOT NULL DEFAULT '0',
  `Storage` double NOT NULL DEFAULT '0',
  `Commission` double NOT NULL DEFAULT '0',
  `RateProfit` double NOT NULL DEFAULT '0',
  `RateMargin` double NOT NULL DEFAULT '0',
  `ExpertID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `PositionID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `Comment` varchar(32) NOT NULL DEFAULT '',
  `ProfitRaw` double NOT NULL DEFAULT '0',
  `PricePosition` double NOT NULL DEFAULT '0',
  `VolumeClosedExt` bigint(20) unsigned NOT NULL DEFAULT '0',
  `TickValue` double NOT NULL DEFAULT '0',
  `TickSize` double NOT NULL DEFAULT '0',
  `Flags` bigint(20) unsigned NOT NULL DEFAULT '0',
  `Gateway` varchar(16) NOT NULL DEFAULT '',
  `PriceGateway` double NOT NULL DEFAULT '0',
  `ModifyFlags` int(10) unsigned NOT NULL DEFAULT '0',
  `Volume` bigint(20) unsigned NOT NULL DEFAULT '0',
  `VolumeClosed` bigint(20) unsigned NOT NULL DEFAULT '0',
  `ApiData` varchar(4000) NOT NULL DEFAULT '',
  PRIMARY KEY (`Deal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `mt5_deals` WRITE;
/*!40000 ALTER TABLE `mt5_deals` DISABLE KEYS */;

INSERT INTO `mt5_deals` (`Deal`, `Timestamp`, `ExternalID`, `Login`, `Dealer`, `Order`, `Action`, `Entry`, `Reason`, `Digits`, `DigitsCurrency`, `ContractSize`, `Time`, `TimeMsc`, `Symbol`, `Price`, `VolumeExt`, `Profit`, `Storage`, `Commission`, `RateProfit`, `RateMargin`, `ExpertID`, `PositionID`, `Comment`, `ProfitRaw`, `PricePosition`, `VolumeClosedExt`, `TickValue`, `TickSize`, `Flags`, `Gateway`, `PriceGateway`, `ModifyFlags`, `Volume`, `VolumeClosed`, `ApiData`)
VALUES
	(1,131896750505077858,'',61200000,0,0,2,0,2,2,2,0,'2018-12-19 07:37:30','2018-12-19 07:37:30.507000','',0,0,1000000,0,0,0,0,0,0,'',0,0,0,0,0,0,'',0,0,0,0,'[]'),
	(2,131901967054710755,'',61200001,0,0,2,0,2,2,2,0,'2018-12-25 08:31:45','2018-12-25 08:31:45.471000','',0,0,1000000,0,0,0,0,0,0,'',0,0,0,0,0,0,'',0,0,0,0,'[]'),
	(3,131902002307223630,'',1004,1000,0,2,0,2,2,2,0,'2018-12-25 09:30:30','2018-12-25 09:30:30.722000','',0,0,30000,0,0,0,0,0,0,'Deposit',0,0,0,0,0,0,'',0,0,0,0,'[]'),
	(4,131902002772876939,'',1003,1000,0,2,0,2,2,2,0,'2018-12-25 09:31:17','2018-12-25 09:31:17.287000','',0,0,30000,0,0,0,0,0,0,'Deposit',0,0,0,0,0,0,'',0,0,0,0,'[]'),
	(5,131902003835081752,'',1005,1000,0,2,0,2,2,2,0,'2018-12-25 09:33:03','2018-12-25 09:33:03.497000','',0,0,30000,0,0,0,0,0,0,'Deposit',0,0,0,0,0,0,'',0,0,0,0,'[]'),
	(6,131902004169485262,'',1006,1000,0,2,0,2,2,2,0,'2018-12-25 09:33:36','2018-12-25 09:33:36.948000','',0,0,30000,0,0,0,0,0,0,'Deposit',0,0,0,0,0,0,'',0,0,0,0,'[]'),
	(7,131902004455744448,'',1007,1000,0,2,0,2,2,2,0,'2018-12-25 09:34:05','2018-12-25 09:34:05.574000','',0,0,30000,0,0,0,0,0,0,'Deposit',0,0,0,0,0,0,'',0,0,0,0,'[]'),
	(8,131902305049933593,'',61200002,0,0,2,0,2,2,2,0,'2018-12-25 17:55:04','2018-12-25 17:55:04.993000','',0,0,1000000,0,0,0,0,0,0,'',0,0,0,0,0,0,'',0,0,0,0,'[]'),
	(9,131902962064946308,'',1123,1,0,2,0,2,2,2,0,'2018-12-26 12:10:06','2018-12-26 12:10:06.479000','',0,0,100000,0,0,0,0,0,0,'Deposit',0,0,0,0,0,0,'',0,0,0,0,'[]'),
	(10,131909722221305479,'',61200004,0,0,2,0,2,2,2,0,'2019-01-03 07:57:02','2019-01-03 07:57:02.130000','',0,0,5000,0,0,0,0,0,0,'',0,0,0,0,0,0,'',0,0,0,0,'[]'),
	(11,131909952729390343,'',61200005,0,0,2,0,2,2,2,0,'2019-01-03 14:21:12','2019-01-03 14:21:12.939000','',0,0,3000,0,0,0,0,0,0,'',0,0,0,0,0,0,'',0,0,0,0,'[]'),
	(12,131914391611378200,'',67200261,0,0,2,0,2,2,2,0,'2019-01-08 17:39:21','2019-01-08 17:39:21.137000','',0,0,5000,0,0,0,0,0,0,'',0,0,0,0,0,0,'',0,0,0,0,'[]'),
	(13,131914957068383756,'',67200262,0,0,2,0,2,2,2,0,'2019-01-09 09:21:46','2019-01-09 09:21:46.818000','',0,0,30000,0,0,0,0,0,0,'',0,0,0,0,0,0,'',0,0,0,0,'[]'),
	(14,131915342577435962,'',67200263,0,0,2,0,2,2,2,0,'2019-01-09 20:04:17','2019-01-09 20:04:17.743000','',0,0,100000,0,0,0,0,0,0,'',0,0,0,0,0,0,'',0,0,0,0,'[]'),
	(15,131915343125374715,'',67200263,0,1,0,0,16,5,2,100000,'2019-01-09 20:05:12','2019-01-09 20:05:12.537000','EURGBP',0.90256,100000000,0,0,0,0,1.15439,0,1,'',0,0,0,0,0,0,'',0,0,10000,0,'[]'),
	(16,131915343663352610,'',67200263,0,2,1,1,16,5,2,100000,'2019-01-09 20:06:06','2019-01-09 20:06:06.335000','EURGBP',0.90245,100000000,-14.07,0,0,1.2788599999999999,1.15426,0,1,'',-11,0.90256,100000000,0,0,0,'',0,0,10000,10000,'[]'),
	(17,131915346346893239,'',67200264,0,0,2,0,2,2,2,0,'2019-01-09 20:10:34','2019-01-09 20:10:34.689000','',0,0,100000,0,0,0,0,0,0,'',0,0,0,0,0,0,'',0,0,0,0,'[]'),
	(18,131919259380669701,'',1006,1,0,2,0,2,2,2,0,'2019-01-14 08:52:18','2019-01-14 08:52:18.066000','',0,0,20000,0,0,0,0,0,0,'Deposit',0,0,0,0,0,0,'',0,0,0,0,'[]'),
	(19,131919259873248177,'',1007,1,0,2,0,2,2,2,0,'2019-01-14 08:53:07','2019-01-14 08:53:07.324000','',0,0,70000,0,0,0,0,0,0,'Deposit',0,0,0,0,0,0,'',0,0,0,0,'[]'),
	(20,131920944105279315,'',1006,0,3,0,0,0,5,2,100000,'2019-01-16 07:40:10','2019-01-16 07:40:10.513000','EURUSD',1.1403699999999999,100000000,0,0,0,0,1,0,3,'',0,0,0,0,0,0,'',0,0,10000,0,'[]'),
	(21,131920944980492603,'',1006,0,4,1,1,0,5,2,100000,'2019-01-16 07:41:38','2019-01-16 07:41:38.049000','EURUSD',1.14029,100000000,-8,0,0,1,1,0,3,'',-8,1.1403699999999999,100000000,0,0,0,'',0,0,10000,10000,'[]'),
	(22,131920945650447735,'',1006,0,5,0,0,0,5,2,100000,'2019-01-16 07:42:45','2019-01-16 07:42:45.044000','EURUSD',1.14029,100000000,0,0,0,0,1,0,5,'',0,0,0,0,0,0,'',0,0,10000,0,'[]'),
	(23,131920945764053525,'',1006,0,6,1,1,0,5,2,100000,'2019-01-16 07:42:56','2019-01-16 07:42:56.405000','EURUSD',1.14026,100000000,-3,0,0,1,1,0,5,'',-3,1.14029,100000000,0,0,0,'',0,0,10000,10000,'[]'),
	(24,131920948300013707,'',1006,0,7,0,0,0,5,2,100000,'2019-01-16 07:47:10','2019-01-16 07:47:10.001000','EURUSD',1.14023,100000000,0,0,0,0,1,0,7,'',0,0,0,0,0,0,'',0,0,10000,0,'[]'),
	(25,131920948709026137,'',1006,0,8,1,1,0,5,2,100000,'2019-01-16 07:47:50','2019-01-16 07:47:50.902000','EURUSD',1.1402700000000001,100000000,4,0,0,1,1,0,7,'',4,1.1402300000000003,100000000,0,0,0,'',0,0,10000,10000,'[]'),
	(26,131920965694716236,'',1006,0,9,0,0,0,5,2,100000,'2019-01-16 08:16:09','2019-01-16 08:16:09.456000','EURUSD.',1.14083,100000000,0,0,0,0,1,0,9,'',0,0,0,0,0,0,'',0,0,10000,0,'[]'),
	(27,131920966117547165,'',1006,0,10,1,1,0,5,2,100000,'2019-01-16 08:16:51','2019-01-16 08:16:51.754000','EURUSD.',1.14087,100000000,4,0,0,1,1,0,9,'',4,1.14083,100000000,0,0,0,'',0,0,10000,10000,'[]'),
	(28,131920981365964477,'',1006,0,11,0,0,0,5,2,100000,'2019-01-16 08:42:16','2019-01-16 08:42:16.596000','EURUSD..',1.13975,100000000,0,0,0,0,1,0,11,'',0,0,0,0,0,0,'',0,0,10000,0,'[]'),
	(29,131920981904364249,'',1006,0,12,1,1,0,5,2,100000,'2019-01-16 08:43:10','2019-01-16 08:43:10.436000','EURUSD..',1.1391,100000000,-65,0,0,1,1,0,11,'',-65,1.13975,100000000,0,0,0,'',0,0,10000,10000,'[]'),
	(30,131920982037530985,'',1006,0,13,1,0,0,5,2,100000,'2019-01-16 08:43:23','2019-01-16 08:43:23.753000','EURUSD..',1.13909,100000000,0,0,0,0,1,0,13,'',0,0,0,0,0,0,'',0,0,10000,0,'[]'),
	(31,131920984309950550,'',1006,0,14,0,1,0,5,2,100000,'2019-01-16 08:47:10','2019-01-16 08:47:10.995000','EURUSD..',1.13995,100000000,-86,0,0,1,1,0,13,'',-86,1.1390900000000002,100000000,0,0,0,'',0,0,10000,10000,'[]'),
	(32,131920987155301929,'',1006,0,15,1,0,0,5,2,100000,'2019-01-16 08:51:55','2019-01-16 08:51:55.530000','EURUSD',1.13959,100000000,0,0,0,0,1,0,15,'',0,0,0,0,0,0,'',0,0,10000,0,'[]'),
	(33,131921022054021412,'',1006,0,16,0,1,0,5,2,100000,'2019-01-16 09:50:05','2019-01-16 09:50:05.402000','EURUSD',1.14142,100000000,-183,0,0,1,1,0,15,'',-183,1.1395900000000003,100000000,0,0,0,'',0,0,10000,10000,'[]');

/*!40000 ALTER TABLE `mt5_deals` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table mt5_deals_2018
# ------------------------------------------------------------

DROP TABLE IF EXISTS `mt5_deals_2018`;

CREATE TABLE `mt5_deals_2018` (
  `Deal` bigint(20) unsigned NOT NULL DEFAULT '0',
  `Timestamp` bigint(20) NOT NULL DEFAULT '0',
  `ExternalID` varchar(32) NOT NULL DEFAULT '',
  `Login` bigint(20) unsigned NOT NULL DEFAULT '0',
  `Dealer` bigint(20) unsigned NOT NULL DEFAULT '0',
  `Order` bigint(20) unsigned NOT NULL DEFAULT '0',
  `Action` int(10) unsigned NOT NULL DEFAULT '0',
  `Entry` int(10) unsigned NOT NULL DEFAULT '0',
  `Reason` int(10) unsigned NOT NULL DEFAULT '0',
  `Digits` int(10) unsigned NOT NULL DEFAULT '0',
  `DigitsCurrency` int(10) unsigned NOT NULL DEFAULT '0',
  `ContractSize` double NOT NULL DEFAULT '0',
  `Time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `TimeMsc` datetime(6) NOT NULL DEFAULT '0000-00-00 00:00:00.000000',
  `Symbol` varchar(32) NOT NULL DEFAULT '',
  `Price` double NOT NULL DEFAULT '0',
  `VolumeExt` bigint(20) unsigned NOT NULL DEFAULT '0',
  `Profit` double NOT NULL DEFAULT '0',
  `Storage` double NOT NULL DEFAULT '0',
  `Commission` double NOT NULL DEFAULT '0',
  `RateProfit` double NOT NULL DEFAULT '0',
  `RateMargin` double NOT NULL DEFAULT '0',
  `ExpertID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `PositionID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `Comment` varchar(32) NOT NULL DEFAULT '',
  `ProfitRaw` double NOT NULL DEFAULT '0',
  `PricePosition` double NOT NULL DEFAULT '0',
  `VolumeClosedExt` bigint(20) unsigned NOT NULL DEFAULT '0',
  `TickValue` double NOT NULL DEFAULT '0',
  `TickSize` double NOT NULL DEFAULT '0',
  `Flags` bigint(20) unsigned NOT NULL DEFAULT '0',
  `Gateway` varchar(16) NOT NULL DEFAULT '',
  `PriceGateway` double NOT NULL DEFAULT '0',
  `ModifyFlags` int(10) unsigned NOT NULL DEFAULT '0',
  `Volume` bigint(20) unsigned NOT NULL DEFAULT '0',
  `VolumeClosed` bigint(20) unsigned NOT NULL DEFAULT '0',
  `ApiData` varchar(4000) NOT NULL DEFAULT '',
  PRIMARY KEY (`Deal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `mt5_deals_2018` WRITE;
/*!40000 ALTER TABLE `mt5_deals_2018` DISABLE KEYS */;

INSERT INTO `mt5_deals_2018` (`Deal`, `Timestamp`, `ExternalID`, `Login`, `Dealer`, `Order`, `Action`, `Entry`, `Reason`, `Digits`, `DigitsCurrency`, `ContractSize`, `Time`, `TimeMsc`, `Symbol`, `Price`, `VolumeExt`, `Profit`, `Storage`, `Commission`, `RateProfit`, `RateMargin`, `ExpertID`, `PositionID`, `Comment`, `ProfitRaw`, `PricePosition`, `VolumeClosedExt`, `TickValue`, `TickSize`, `Flags`, `Gateway`, `PriceGateway`, `ModifyFlags`, `Volume`, `VolumeClosed`, `ApiData`)
VALUES
	(3,131902002307223630,'',1004,1000,0,2,0,2,2,2,0,'2018-12-25 09:30:30','2018-12-25 09:30:30.722000','',0,0,30000,0,0,0,0,0,0,'Deposit',0,0,0,0,0,0,'',0,0,0,0,'[]'),
	(4,131902002772876939,'',1003,1000,0,2,0,2,2,2,0,'2018-12-25 09:31:17','2018-12-25 09:31:17.287000','',0,0,30000,0,0,0,0,0,0,'Deposit',0,0,0,0,0,0,'',0,0,0,0,'[]'),
	(5,131902003835081752,'',1005,1000,0,2,0,2,2,2,0,'2018-12-25 09:33:03','2018-12-25 09:33:03.497000','',0,0,30000,0,0,0,0,0,0,'Deposit',0,0,0,0,0,0,'',0,0,0,0,'[]'),
	(6,131902004169485262,'',1006,1000,0,2,0,2,2,2,0,'2018-12-25 09:33:36','2018-12-25 09:33:36.948000','',0,0,30000,0,0,0,0,0,0,'Deposit',0,0,0,0,0,0,'',0,0,0,0,'[]'),
	(7,131902004455744448,'',1007,1000,0,2,0,2,2,2,0,'2018-12-25 09:34:05','2018-12-25 09:34:05.574000','',0,0,30000,0,0,0,0,0,0,'Deposit',0,0,0,0,0,0,'',0,0,0,0,'[]'),
	(9,131902962064946308,'',1123,1,0,2,0,2,2,2,0,'2018-12-26 12:10:06','2018-12-26 12:10:06.479000','',0,0,100000,0,0,0,0,0,0,'Deposit',0,0,0,0,0,0,'',0,0,0,0,'[]');

/*!40000 ALTER TABLE `mt5_deals_2018` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table mt5_deals_2019
# ------------------------------------------------------------

DROP TABLE IF EXISTS `mt5_deals_2019`;

CREATE TABLE `mt5_deals_2019` (
  `Deal` bigint(20) unsigned NOT NULL DEFAULT '0',
  `Timestamp` bigint(20) NOT NULL DEFAULT '0',
  `ExternalID` varchar(32) NOT NULL DEFAULT '',
  `Login` bigint(20) unsigned NOT NULL DEFAULT '0',
  `Dealer` bigint(20) unsigned NOT NULL DEFAULT '0',
  `Order` bigint(20) unsigned NOT NULL DEFAULT '0',
  `Action` int(10) unsigned NOT NULL DEFAULT '0',
  `Entry` int(10) unsigned NOT NULL DEFAULT '0',
  `Reason` int(10) unsigned NOT NULL DEFAULT '0',
  `Digits` int(10) unsigned NOT NULL DEFAULT '0',
  `DigitsCurrency` int(10) unsigned NOT NULL DEFAULT '0',
  `ContractSize` double NOT NULL DEFAULT '0',
  `Time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `TimeMsc` datetime(6) NOT NULL DEFAULT '0000-00-00 00:00:00.000000',
  `Symbol` varchar(32) NOT NULL DEFAULT '',
  `Price` double NOT NULL DEFAULT '0',
  `VolumeExt` bigint(20) unsigned NOT NULL DEFAULT '0',
  `Profit` double NOT NULL DEFAULT '0',
  `Storage` double NOT NULL DEFAULT '0',
  `Commission` double NOT NULL DEFAULT '0',
  `RateProfit` double NOT NULL DEFAULT '0',
  `RateMargin` double NOT NULL DEFAULT '0',
  `ExpertID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `PositionID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `Comment` varchar(32) NOT NULL DEFAULT '',
  `ProfitRaw` double NOT NULL DEFAULT '0',
  `PricePosition` double NOT NULL DEFAULT '0',
  `VolumeClosedExt` bigint(20) unsigned NOT NULL DEFAULT '0',
  `TickValue` double NOT NULL DEFAULT '0',
  `TickSize` double NOT NULL DEFAULT '0',
  `Flags` bigint(20) unsigned NOT NULL DEFAULT '0',
  `Gateway` varchar(16) NOT NULL DEFAULT '',
  `PriceGateway` double NOT NULL DEFAULT '0',
  `ModifyFlags` int(10) unsigned NOT NULL DEFAULT '0',
  `Volume` bigint(20) unsigned NOT NULL DEFAULT '0',
  `VolumeClosed` bigint(20) unsigned NOT NULL DEFAULT '0',
  `ApiData` varchar(4000) NOT NULL DEFAULT '',
  PRIMARY KEY (`Deal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `mt5_deals_2019` WRITE;
/*!40000 ALTER TABLE `mt5_deals_2019` DISABLE KEYS */;

INSERT INTO `mt5_deals_2019` (`Deal`, `Timestamp`, `ExternalID`, `Login`, `Dealer`, `Order`, `Action`, `Entry`, `Reason`, `Digits`, `DigitsCurrency`, `ContractSize`, `Time`, `TimeMsc`, `Symbol`, `Price`, `VolumeExt`, `Profit`, `Storage`, `Commission`, `RateProfit`, `RateMargin`, `ExpertID`, `PositionID`, `Comment`, `ProfitRaw`, `PricePosition`, `VolumeClosedExt`, `TickValue`, `TickSize`, `Flags`, `Gateway`, `PriceGateway`, `ModifyFlags`, `Volume`, `VolumeClosed`, `ApiData`)
VALUES
	(18,131919259380669701,'',1006,1,0,2,0,2,2,2,0,'2019-01-14 08:52:18','2019-01-14 08:52:18.066000','',0,0,20000,0,0,0,0,0,0,'Deposit',0,0,0,0,0,0,'',0,0,0,0,'[]'),
	(19,131919259873248177,'',1007,1,0,2,0,2,2,2,0,'2019-01-14 08:53:07','2019-01-14 08:53:07.324000','',0,0,70000,0,0,0,0,0,0,'Deposit',0,0,0,0,0,0,'',0,0,0,0,'[]'),
	(20,131920944105279315,'',1006,0,3,0,0,0,5,2,100000,'2019-01-16 07:40:10','2019-01-16 07:40:10.513000','EURUSD',1.1403699999999999,100000000,0,0,0,0,1,0,3,'',0,0,0,0,0,0,'',0,0,10000,0,'[]'),
	(21,131920944980492603,'',1006,0,4,1,1,0,5,2,100000,'2019-01-16 07:41:38','2019-01-16 07:41:38.049000','EURUSD',1.14029,100000000,-8,0,0,1,1,0,3,'',-8,1.1403699999999999,100000000,0,0,0,'',0,0,10000,10000,'[]'),
	(22,131920945650447735,'',1006,0,5,0,0,0,5,2,100000,'2019-01-16 07:42:45','2019-01-16 07:42:45.044000','EURUSD',1.14029,100000000,0,0,0,0,1,0,5,'',0,0,0,0,0,0,'',0,0,10000,0,'[]'),
	(23,131920945764053525,'',1006,0,6,1,1,0,5,2,100000,'2019-01-16 07:42:56','2019-01-16 07:42:56.405000','EURUSD',1.14026,100000000,-3,0,0,1,1,0,5,'',-3,1.14029,100000000,0,0,0,'',0,0,10000,10000,'[]'),
	(24,131920948300013707,'',1006,0,7,0,0,0,5,2,100000,'2019-01-16 07:47:10','2019-01-16 07:47:10.001000','EURUSD',1.14023,100000000,0,0,0,0,1,0,7,'',0,0,0,0,0,0,'',0,0,10000,0,'[]'),
	(25,131920948709026137,'',1006,0,8,1,1,0,5,2,100000,'2019-01-16 07:47:50','2019-01-16 07:47:50.902000','EURUSD',1.1402700000000001,100000000,4,0,0,1,1,0,7,'',4,1.1402300000000003,100000000,0,0,0,'',0,0,10000,10000,'[]'),
	(26,131920965694716236,'',1006,0,9,0,0,0,5,2,100000,'2019-01-16 08:16:09','2019-01-16 08:16:09.456000','EURUSD.',1.14083,100000000,0,0,0,0,1,0,9,'',0,0,0,0,0,0,'',0,0,10000,0,'[]'),
	(27,131920966117547165,'',1006,0,10,1,1,0,5,2,100000,'2019-01-16 08:16:51','2019-01-16 08:16:51.754000','EURUSD.',1.14087,100000000,4,0,0,1,1,0,9,'',4,1.14083,100000000,0,0,0,'',0,0,10000,10000,'[]'),
	(28,131920981365964477,'',1006,0,11,0,0,0,5,2,100000,'2019-01-16 08:42:16','2019-01-16 08:42:16.596000','EURUSD..',1.13975,100000000,0,0,0,0,1,0,11,'',0,0,0,0,0,0,'',0,0,10000,0,'[]'),
	(29,131920981904364249,'',1006,0,12,1,1,0,5,2,100000,'2019-01-16 08:43:10','2019-01-16 08:43:10.436000','EURUSD..',1.1391,100000000,-65,0,0,1,1,0,11,'',-65,1.13975,100000000,0,0,0,'',0,0,10000,10000,'[]'),
	(30,131920982037530985,'',1006,0,13,1,0,0,5,2,100000,'2019-01-16 08:43:23','2019-01-16 08:43:23.753000','EURUSD..',1.13909,100000000,0,0,0,0,1,0,13,'',0,0,0,0,0,0,'',0,0,10000,0,'[]'),
	(31,131920984309950550,'',1006,0,14,0,1,0,5,2,100000,'2019-01-16 08:47:10','2019-01-16 08:47:10.995000','EURUSD..',1.13995,100000000,-86,0,0,1,1,0,13,'',-86,1.1390900000000002,100000000,0,0,0,'',0,0,10000,10000,'[]'),
	(32,131920987155301929,'',1006,0,15,1,0,0,5,2,100000,'2019-01-16 08:51:55','2019-01-16 08:51:55.530000','EURUSD',1.13959,100000000,0,0,0,0,1,0,15,'',0,0,0,0,0,0,'',0,0,10000,0,'[]'),
	(33,131921022054021412,'',1006,0,16,0,1,0,5,2,100000,'2019-01-16 09:50:05','2019-01-16 09:50:05.402000','EURUSD',1.14142,100000000,-183,0,0,1,1,0,15,'',-183,1.1395900000000003,100000000,0,0,0,'',0,0,10000,10000,'[]');

/*!40000 ALTER TABLE `mt5_deals_2019` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table mt5_feeder_params
# ------------------------------------------------------------

DROP TABLE IF EXISTS `mt5_feeder_params`;

CREATE TABLE `mt5_feeder_params` (
  `Param_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `Feeder` varchar(64) NOT NULL DEFAULT '',
  `Type` int(10) unsigned NOT NULL DEFAULT '0',
  `Name` varchar(64) NOT NULL DEFAULT '',
  `Value` varchar(256) NOT NULL DEFAULT '',
  PRIMARY KEY (`Param_ID`),
  KEY `IDX_mt5_feeder_params_name` (`Feeder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table mt5_feeder_translates
# ------------------------------------------------------------

DROP TABLE IF EXISTS `mt5_feeder_translates`;

CREATE TABLE `mt5_feeder_translates` (
  `Symbol` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `Feeder` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `Source` varchar(128) NOT NULL DEFAULT '',
  `BidMarkup` int(11) NOT NULL DEFAULT '0',
  `AskMarkup` int(11) NOT NULL DEFAULT '0',
  `Digits` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`Symbol`,`Feeder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table mt5_feeders
# ------------------------------------------------------------

DROP TABLE IF EXISTS `mt5_feeders`;

CREATE TABLE `mt5_feeders` (
  `Feeder` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `Timestamp` bigint(20) NOT NULL DEFAULT '0',
  `Module` varchar(256) NOT NULL DEFAULT '',
  `GatewayServer` varchar(128) NOT NULL DEFAULT '',
  `FeedServer` varchar(128) NOT NULL DEFAULT '',
  `Enable` int(11) NOT NULL DEFAULT '0',
  `Mode` int(11) NOT NULL DEFAULT '0',
  `Timeout` int(10) unsigned NOT NULL DEFAULT '0',
  `TimeoutReconnect` int(10) unsigned NOT NULL DEFAULT '0',
  `TimeoutSleep` int(10) unsigned NOT NULL DEFAULT '0',
  `AttempsSleep` int(10) unsigned NOT NULL DEFAULT '0',
  `Symbols` varchar(512) NOT NULL DEFAULT '',
  `SysConnection` int(10) unsigned NOT NULL DEFAULT '0',
  `SysLastTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Company` varchar(256) NOT NULL DEFAULT '',
  `Issuer` varchar(256) NOT NULL DEFAULT '',
  `TickStatsCount` int(10) unsigned NOT NULL DEFAULT '0',
  `TicksCount` int(10) unsigned NOT NULL DEFAULT '0',
  `BooksCount` int(10) unsigned NOT NULL DEFAULT '0',
  `NewsCount` int(10) unsigned NOT NULL DEFAULT '0',
  `BytesReceived` int(10) unsigned NOT NULL DEFAULT '0',
  `BytesSent` int(10) unsigned NOT NULL DEFAULT '0',
  `StateFlags` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`Feeder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `mt5_feeders` WRITE;
/*!40000 ALTER TABLE `mt5_feeders` DISABLE KEYS */;

INSERT INTO `mt5_feeders` (`Feeder`, `Timestamp`, `Module`, `GatewayServer`, `FeedServer`, `Enable`, `Mode`, `Timeout`, `TimeoutReconnect`, `TimeoutSleep`, `AttempsSleep`, `Symbols`, `SysConnection`, `SysLastTime`, `Company`, `Issuer`, `TickStatsCount`, `TicksCount`, `BooksCount`, `NewsCount`, `BytesReceived`, `BytesSent`, `StateFlags`)
VALUES
	(X'45636F6E6F6D69632043616C656E64617220466565646572',131893354484324330,'EconomicCalendarFeeder64.exe','127.0.0.1:16385','',1,2,120,5,60,5,'',1,'2019-01-17 02:50:10','MetaQuotes Software Corp.','COMODO RSA Code Signing CA',0,0,0,787,271428855,0,0);

/*!40000 ALTER TABLE `mt5_feeders` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table mt5_firewall
# ------------------------------------------------------------

DROP TABLE IF EXISTS `mt5_firewall`;

CREATE TABLE `mt5_firewall` (
  `IPFrom` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `IPTo` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `Timestamp` bigint(20) NOT NULL DEFAULT '0',
  `Action` int(10) unsigned NOT NULL DEFAULT '0',
  `Comment` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`IPFrom`,`IPTo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table mt5_groups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `mt5_groups`;

CREATE TABLE `mt5_groups` (
  `Group_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `Group` varchar(64) NOT NULL DEFAULT '',
  `Timestamp` bigint(20) NOT NULL DEFAULT '0',
  `Server` bigint(20) unsigned NOT NULL DEFAULT '0',
  `PermissionsFlags` bigint(20) unsigned NOT NULL DEFAULT '0',
  `AuthMode` int(10) unsigned NOT NULL DEFAULT '0',
  `AuthPasswordMin` int(10) unsigned NOT NULL DEFAULT '0',
  `AuthOTPMode` int(10) unsigned NOT NULL DEFAULT '0',
  `Company` varchar(128) NOT NULL DEFAULT '',
  `CompanyPage` varchar(256) NOT NULL DEFAULT '',
  `CompanyEmail` varchar(64) NOT NULL DEFAULT '',
  `CompanySupportPage` varchar(256) NOT NULL DEFAULT '',
  `CompanySupportEmail` varchar(64) NOT NULL DEFAULT '',
  `CompanyCatalog` varchar(64) NOT NULL DEFAULT '',
  `Currency` varchar(32) NOT NULL DEFAULT '',
  `CurrencyDigits` int(10) unsigned NOT NULL DEFAULT '0',
  `ReportsMode` int(10) unsigned NOT NULL DEFAULT '0',
  `ReportsFlags` bigint(20) unsigned NOT NULL DEFAULT '0',
  `NewsMode` int(10) unsigned NOT NULL DEFAULT '0',
  `NewsCategory` varchar(64) NOT NULL DEFAULT '',
  `MailMode` int(10) unsigned NOT NULL DEFAULT '0',
  `TradeFlags` bigint(20) unsigned NOT NULL DEFAULT '0',
  `TransferMode` int(10) unsigned NOT NULL DEFAULT '0',
  `TradeInterestrate` double NOT NULL DEFAULT '0',
  `TradeVirtualCredit` double NOT NULL DEFAULT '0',
  `MarginMode` int(10) unsigned NOT NULL DEFAULT '0',
  `MarginSOMode` int(10) unsigned NOT NULL DEFAULT '0',
  `MarginFreeMode` int(10) unsigned NOT NULL DEFAULT '0',
  `MarginCall` double NOT NULL DEFAULT '0',
  `MarginStopOut` double NOT NULL DEFAULT '0',
  `MarginFreeProfitMode` int(10) unsigned NOT NULL DEFAULT '0',
  `DemoLeverage` int(10) unsigned NOT NULL DEFAULT '0',
  `DemoDeposit` double NOT NULL DEFAULT '0',
  `LimitHistory` int(10) unsigned NOT NULL DEFAULT '0',
  `LimitOrders` int(10) unsigned NOT NULL DEFAULT '0',
  `LimitSymbols` int(10) unsigned NOT NULL DEFAULT '0',
  `LimitPositions` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`Group_ID`),
  KEY `IDX_mt5_groups_Group` (`Group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `mt5_groups` WRITE;
/*!40000 ALTER TABLE `mt5_groups` DISABLE KEYS */;

INSERT INTO `mt5_groups` (`Group_ID`, `Group`, `Timestamp`, `Server`, `PermissionsFlags`, `AuthMode`, `AuthPasswordMin`, `AuthOTPMode`, `Company`, `CompanyPage`, `CompanyEmail`, `CompanySupportPage`, `CompanySupportEmail`, `CompanyCatalog`, `Currency`, `CurrencyDigits`, `ReportsMode`, `ReportsFlags`, `NewsMode`, `NewsCategory`, `MailMode`, `TradeFlags`, `TransferMode`, `TradeInterestrate`, `TradeVirtualCredit`, `MarginMode`, `MarginSOMode`, `MarginFreeMode`, `MarginCall`, `MarginStopOut`, `MarginFreeProfitMode`, `DemoLeverage`, `DemoDeposit`, `LimitHistory`, `LimitOrders`, `LimitSymbols`, `LimitPositions`)
VALUES
	(1,'managers\\administrators',131893354473478086,1,2,0,5,0,'GanaTrader IntelliSystem Ltd.','MT5-GANAT-01-ENTRY','','https://www.mql5.com/[lang:en|ru|es|pt|zh]','','','USD',2,0,0,2,'',1,31,0,0,0,0,0,1,50,30,0,0,0,0,0,0,0),
	(2,'managers\\dealers',131893354473575762,1,2,0,5,0,'GanaTrader IntelliSystem Ltd.','MT5-GANAT-01-ENTRY','','https://www.mql5.com/[lang:en|ru|es|pt|zh]','','','USD',2,0,0,2,'',1,31,0,0,0,0,0,1,50,30,0,0,0,0,0,0,0),
	(3,'demo\\demoforex',131893354473575763,1,2,0,5,0,'GanaTrader IntelliSystem Ltd.','MT5-GANAT-01-ENTRY','','https://www.mql5.com/[lang:en|ru|es|pt|zh]','','','USD',2,0,0,2,'',1,31,0,0,0,0,0,1,50,30,0,0,0,0,0,0,0),
	(4,'real\\real',131893354473585535,1,2,0,5,0,'GanaTrader IntelliSystem Ltd.','MT5-GANAT-01-ENTRY','','https://www.mql5.com/[lang:en|ru|es|pt|zh]','','','USD',2,0,0,2,'',1,31,0,0,0,0,0,1,50,30,0,0,0,0,0,0,0),
	(5,'preliminary',131893354473585536,1,2,0,5,0,'GanaTrader IntelliSystem Ltd.','MT5-GANAT-01-ENTRY','','https://www.mql5.com/[lang:en|ru|es|pt|zh]','','preliminary','USD',2,0,0,2,'',1,31,0,0,0,0,0,1,50,30,0,0,0,0,0,0,0),
	(32,'Inst\\GANA\\GANA',131921027903477224,1,2,0,8,0,'GanaTrader IntelliSystem Ltd.','','','https://www.mql5.com/[lang:en|ru|es|pt|zh]','','','USD',2,0,0,2,'',1,23,0,0,0,0,0,1,50,30,0,0,0,0,0,0,0),
	(33,'Inst\\CTI\\CTI',131901960130340717,1,2,0,8,0,'CTI','','','https://www.mql5.com/[lang:en|ru|es|pt|zh]','','','USD',2,0,0,2,'',1,23,0,0,0,0,0,1,50,30,0,0,0,0,0,0,0),
	(34,'Inst\\CTI\\CTIA01',131908975583786655,1,2,0,8,0,'CTI','','','https://www.mql5.com/[lang:en|ru|es|pt|zh]','','','USD',2,0,0,2,'',1,23,0,0,0,0,0,1,50,30,0,0,0,0,0,0,0),
	(35,'Inst\\CTI\\CTI02-test',131908975667575567,1,2,0,8,0,'CTI','','','https://www.mql5.com/[lang:en|ru|es|pt|zh]','','','USD',2,0,0,2,'',1,23,0,0,0,0,0,1,50,30,0,0,0,0,0,0,0),
	(36,'Inst\\CTI\\CTIA55',131908975752214147,1,2,0,8,0,'CTI','','','https://www.mql5.com/[lang:en|ru|es|pt|zh]','','','USD',2,0,0,2,'',1,23,0,0,0,0,0,1,50,30,0,0,0,0,0,0,0),
	(37,'Inst\\CTI\\CTIB16',131908975838219873,1,2,0,8,0,'CTI','','','https://www.mql5.com/[lang:en|ru|es|pt|zh]','','','USD',2,0,0,2,'',1,23,0,0,0,0,0,1,50,30,0,0,0,0,0,0,0),
	(38,'Inst\\CTI\\sub_CTIA01',131908975912536185,1,2,0,8,0,'CTI','','','https://www.mql5.com/[lang:en|ru|es|pt|zh]','','','USD',2,0,0,2,'',1,23,0,0,0,0,0,1,50,30,0,0,0,0,0,0,0),
	(39,'Inst\\CTI\\sub_CS01',131908975987174838,1,2,0,8,0,'CTI','','','https://www.mql5.com/[lang:en|ru|es|pt|zh]','','','USD',2,0,0,2,'',1,23,0,0,0,0,0,1,50,30,0,0,0,0,0,0,0),
	(40,'Inst\\CTI\\CTIB77',131908976044694136,1,2,0,8,0,'CTI','','','https://www.mql5.com/[lang:en|ru|es|pt|zh]','','','USD',2,0,0,2,'',1,23,0,0,0,0,0,1,50,30,0,0,0,0,0,0,0),
	(41,'Inst\\CTI\\CTIB08',131908976119899072,1,2,0,8,0,'CTI','','','https://www.mql5.com/[lang:en|ru|es|pt|zh]','','','USD',2,0,0,2,'',1,23,0,0,0,0,0,1,50,30,0,0,0,0,0,0,0),
	(42,'Inst\\CTI\\CTIA66',131908976183980998,1,2,0,8,0,'CTI','','','https://www.mql5.com/[lang:en|ru|es|pt|zh]','','','USD',2,0,0,2,'',1,23,0,0,0,0,0,1,50,30,0,0,0,0,0,0,0),
	(43,'Inst\\CTI\\CTIB06',131908976257662524,1,2,0,8,0,'CTI','','','https://www.mql5.com/[lang:en|ru|es|pt|zh]','','','USD',2,0,0,2,'',1,23,0,0,0,0,0,1,50,30,0,0,0,0,0,0,0),
	(44,'Inst\\CTI\\CTIA730',131908976309898818,1,2,0,8,0,'CTI','','','https://www.mql5.com/[lang:en|ru|es|pt|zh]','','','USD',2,0,0,2,'',1,23,0,0,0,0,0,1,50,30,0,0,0,0,0,0,0),
	(45,'Inst\\CTI\\B1',131908976993413377,1,2,0,8,0,'GanaTrader IntelliSystem Ltd.','','','https://www.mql5.com/[lang:en|ru|es|pt|zh]','','','USD',2,0,0,2,'',1,23,0,0,0,0,0,1,50,30,0,0,0,0,0,0,0),
	(49,'Inst\\GANA\\CD',131914222321789191,1,2,0,8,0,'GanaTrader IntelliSystem Ltd.','','','https://www.mql5.com/[lang:en|ru|es|pt|zh]','','','USD',2,0,0,2,'',1,23,0,0,0,0,0,1,50,30,0,0,0,0,0,0,0),
	(50,'Inst\\IB\\IB530',131914238626199747,1,2,0,8,0,'GanaTrader IntelliSystem Ltd.','','','https://www.mql5.com/[lang:en|ru|es|pt|zh]','','','USD',2,0,0,2,'',1,23,0,0,0,0,0,1,50,30,0,0,0,0,0,0,0),
	(51,'Inst\\IB\\IB670',131914238815056889,1,2,0,8,0,'GanaTrader IntelliSystem Ltd.','','','https://www.mql5.com/[lang:en|ru|es|pt|zh]','','','USD',2,0,0,2,'',1,23,0,0,0,0,0,1,50,30,0,0,0,0,0,0,0),
	(53,'managers\\Inst\\CTI',131914241793913622,1,2,0,8,0,'CTI','','','https://www.mql5.com/[lang:en|ru|es|pt|zh]','','','USD',2,0,0,2,'',1,23,0,0,0,0,0,1,50,30,0,0,0,0,0,0,0),
	(57,'managers\\manager',131914982257006755,1,2,0,5,0,'GanaTrader IntelliSystem Ltd.','MT5-GANAT-01-ENTRY','','https://www.mql5.com/[lang:en|ru|es|pt|zh]','','','USD',2,0,0,2,'',1,23,0,0,0,0,0,1,50,30,0,0,0,0,0,0,0),
	(58,'Inst\\CTI\\IB672',131919296145668044,1,2,0,8,0,'GanaTrader IntelliSystem Ltd.','','','https://www.mql5.com/[lang:en|ru|es|pt|zh]','','','USD',2,0,0,2,'',1,23,0,0,0,0,0,1,50,30,0,0,0,0,0,0,0);

/*!40000 ALTER TABLE `mt5_groups` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table mt5_groups_symbols
# ------------------------------------------------------------

DROP TABLE IF EXISTS `mt5_groups_symbols`;

CREATE TABLE `mt5_groups_symbols` (
  `Symbol_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `Group_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `Path` varchar(128) NOT NULL DEFAULT '',
  `Timestamp` bigint(20) NOT NULL DEFAULT '0',
  `TradeMode` int(10) unsigned DEFAULT NULL,
  `ExecMode` int(10) unsigned DEFAULT NULL,
  `FillFlags` int(10) unsigned DEFAULT NULL,
  `ExpirFlags` int(10) unsigned DEFAULT NULL,
  `OrderFlags` int(10) unsigned DEFAULT NULL,
  `SpreadDiff` int(11) DEFAULT NULL,
  `SpreadDiffBalance` int(11) DEFAULT NULL,
  `StopsLevel` int(11) DEFAULT NULL,
  `FreezeLevel` int(11) DEFAULT NULL,
  `VolumeMinExt` bigint(20) unsigned DEFAULT NULL,
  `VolumeMaxExt` bigint(20) unsigned DEFAULT NULL,
  `VolumeStepExt` bigint(20) unsigned DEFAULT NULL,
  `VolumeLimitExt` bigint(20) unsigned DEFAULT NULL,
  `MarginFlags` int(10) unsigned DEFAULT NULL,
  `MarginInitial` double DEFAULT NULL,
  `MarginMaintenance` double DEFAULT NULL,
  `MarginInitialBuy` double DEFAULT NULL,
  `MarginInitialSell` double DEFAULT NULL,
  `MarginInitialBuyLimit` double DEFAULT NULL,
  `MarginInitialSellLimit` double DEFAULT NULL,
  `MarginInitialBuyStop` double DEFAULT NULL,
  `MarginInitialSellStop` double DEFAULT NULL,
  `MarginInitialBuyStopLimit` double DEFAULT NULL,
  `MarginInitialSellStopLimit` double DEFAULT NULL,
  `MarginMaintenanceBuy` double DEFAULT NULL,
  `MarginMaintenanceSell` double DEFAULT NULL,
  `MarginMaintenanceBuyLimit` double DEFAULT NULL,
  `MarginMaintenanceSellLimit` double DEFAULT NULL,
  `MarginMaintenanceBuyStop` double DEFAULT NULL,
  `MarginMaintenanceSellStop` double DEFAULT NULL,
  `MarginMaintenanceBuyStopLimit` double DEFAULT NULL,
  `MarginMaintenanceSellStopLimit` double DEFAULT NULL,
  `MarginLiquidity` double DEFAULT NULL,
  `MarginHedged` double DEFAULT NULL,
  `MarginCurrency` double DEFAULT NULL,
  `SwapMode` int(10) unsigned DEFAULT NULL,
  `SwapLong` double DEFAULT NULL,
  `SwapShort` double DEFAULT NULL,
  `Swap3Day` int(11) DEFAULT NULL,
  `REFlags` int(10) unsigned DEFAULT NULL,
  `RETimeout` int(10) unsigned DEFAULT NULL,
  `IEFlags` int(10) unsigned DEFAULT NULL,
  `IECheckMode` int(10) unsigned DEFAULT NULL,
  `IETimeout` int(10) unsigned DEFAULT NULL,
  `IESlipProfit` int(10) unsigned DEFAULT NULL,
  `IESlipLosing` int(10) unsigned DEFAULT NULL,
  `IEVolumeMaxExt` bigint(20) unsigned DEFAULT NULL,
  `PermissionsFlags` int(10) unsigned DEFAULT NULL,
  `PermissionsBookdepth` int(10) unsigned DEFAULT NULL,
  `VolumeMin` bigint(20) unsigned DEFAULT NULL,
  `VolumeMax` bigint(20) unsigned DEFAULT NULL,
  `VolumeStep` bigint(20) unsigned DEFAULT NULL,
  `VolumeLimit` bigint(20) unsigned DEFAULT NULL,
  `IEVolumeMax` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`Symbol_ID`),
  KEY `IDX_mt5_symbols_group_id` (`Group_ID`),
  KEY `IDX_mt5_groups_symbols_Path` (`Path`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `mt5_groups_symbols` WRITE;
/*!40000 ALTER TABLE `mt5_groups_symbols` DISABLE KEYS */;

INSERT INTO `mt5_groups_symbols` (`Symbol_ID`, `Group_ID`, `Path`, `Timestamp`, `TradeMode`, `ExecMode`, `FillFlags`, `ExpirFlags`, `OrderFlags`, `SpreadDiff`, `SpreadDiffBalance`, `StopsLevel`, `FreezeLevel`, `VolumeMinExt`, `VolumeMaxExt`, `VolumeStepExt`, `VolumeLimitExt`, `MarginFlags`, `MarginInitial`, `MarginMaintenance`, `MarginInitialBuy`, `MarginInitialSell`, `MarginInitialBuyLimit`, `MarginInitialSellLimit`, `MarginInitialBuyStop`, `MarginInitialSellStop`, `MarginInitialBuyStopLimit`, `MarginInitialSellStopLimit`, `MarginMaintenanceBuy`, `MarginMaintenanceSell`, `MarginMaintenanceBuyLimit`, `MarginMaintenanceSellLimit`, `MarginMaintenanceBuyStop`, `MarginMaintenanceSellStop`, `MarginMaintenanceBuyStopLimit`, `MarginMaintenanceSellStopLimit`, `MarginLiquidity`, `MarginHedged`, `MarginCurrency`, `SwapMode`, `SwapLong`, `SwapShort`, `Swap3Day`, `REFlags`, `RETimeout`, `IEFlags`, `IECheckMode`, `IETimeout`, `IESlipProfit`, `IESlipLosing`, `IEVolumeMaxExt`, `PermissionsFlags`, `PermissionsBookdepth`, `VolumeMin`, `VolumeMax`, `VolumeStep`, `VolumeLimit`, `IEVolumeMax`)
VALUES
	(1,1,'*',131893354473478086,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),
	(2,2,'*',131893354473575762,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),
	(3,3,'*',131893354473575763,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),
	(4,4,'*',131893354473585535,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),
	(5,5,'*',131893354473585536,0,NULL,1,15,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),
	(35,33,'*',131901960130340717,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,NULL,NULL,NULL,NULL),
	(36,34,'*',131901960286072818,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,NULL,NULL,NULL,NULL),
	(37,35,'*',131901960474148671,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,NULL,NULL,NULL,NULL),
	(38,36,'*',131901960637644446,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,NULL,NULL,NULL,NULL),
	(39,37,'*',131901960785144026,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,NULL,NULL,NULL,NULL),
	(40,38,'*',131901960960817511,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,NULL,NULL,NULL,NULL),
	(41,39,'*',131901961104410958,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,NULL,NULL,NULL,NULL),
	(42,40,'*',131901961235104099,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,NULL,NULL,NULL,NULL),
	(43,41,'*',131901961409019784,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,NULL,NULL,NULL,NULL),
	(44,42,'*',131901961525542920,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,NULL,NULL,NULL,NULL),
	(45,43,'*',131901961677534773,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,NULL,NULL,NULL,NULL),
	(46,44,'*',131901961819780668,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,NULL,NULL,NULL,NULL),
	(47,45,'*',131908976821978078,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,NULL,NULL,NULL,NULL),
	(51,49,'*',131914222321789191,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,NULL,NULL,NULL,NULL),
	(52,50,'*',131914238626199747,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,NULL,NULL,NULL,NULL),
	(53,51,'*',131914238815056889,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,NULL,NULL,NULL,NULL),
	(55,53,'*',131914241793913622,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,NULL,NULL,NULL,NULL),
	(60,57,'*',131914982257006755,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL),
	(61,58,'*',131919296145668044,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,NULL,NULL,NULL,NULL),
	(62,32,'Forex\\18\\*',131921027903477224,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,NULL,NULL,NULL,NULL,NULL);

/*!40000 ALTER TABLE `mt5_groups_symbols` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table mt5_holidays
# ------------------------------------------------------------

DROP TABLE IF EXISTS `mt5_holidays`;

CREATE TABLE `mt5_holidays` (
  `Year` int(10) unsigned NOT NULL DEFAULT '0',
  `Month` int(10) unsigned NOT NULL DEFAULT '0',
  `Day` int(10) unsigned NOT NULL DEFAULT '0',
  `From` int(10) unsigned NOT NULL DEFAULT '0',
  `To` int(10) unsigned NOT NULL DEFAULT '0',
  `Description` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `Timestamp` bigint(20) NOT NULL DEFAULT '0',
  `Mode` int(10) unsigned NOT NULL DEFAULT '0',
  `Symbols` varchar(2000) NOT NULL DEFAULT '',
  PRIMARY KEY (`Year`,`Month`,`Day`,`From`,`To`,`Description`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table mt5_managers
# ------------------------------------------------------------

DROP TABLE IF EXISTS `mt5_managers`;

CREATE TABLE `mt5_managers` (
  `Login` bigint(20) unsigned NOT NULL DEFAULT '0',
  `Timestamp` bigint(20) NOT NULL DEFAULT '0',
  `Name` varchar(128) NOT NULL DEFAULT '',
  `Mailbox` varchar(64) NOT NULL DEFAULT '',
  `Server` bigint(20) unsigned NOT NULL DEFAULT '0',
  `RequestLimitLogs` int(10) unsigned NOT NULL DEFAULT '0',
  `RequestLimitReports` int(10) unsigned NOT NULL DEFAULT '0',
  `Groups` varchar(2000) NOT NULL DEFAULT '',
  `Access` varchar(2000) NOT NULL DEFAULT '',
  `Right_Admin` int(10) unsigned NOT NULL DEFAULT '0',
  `Right_Manager` int(10) unsigned NOT NULL DEFAULT '0',
  `Right_Cfg_Servers` int(10) unsigned NOT NULL DEFAULT '0',
  `Right_Cfg_Access` int(10) unsigned NOT NULL DEFAULT '0',
  `Right_Cfg_Time` int(10) unsigned NOT NULL DEFAULT '0',
  `Right_Cfg_Holidays` int(10) unsigned NOT NULL DEFAULT '0',
  `Right_Cfg_Groups` int(10) unsigned NOT NULL DEFAULT '0',
  `Right_Cfg_Managers` int(10) unsigned NOT NULL DEFAULT '0',
  `Right_Cfg_Requests` int(10) unsigned NOT NULL DEFAULT '0',
  `Right_Cfg_Gateways` int(10) unsigned NOT NULL DEFAULT '0',
  `Right_Cfg_Plugins` int(10) unsigned NOT NULL DEFAULT '0',
  `Right_Cfg_Datafeeds` int(10) unsigned NOT NULL DEFAULT '0',
  `Right_Cfg_Reports` int(10) unsigned NOT NULL DEFAULT '0',
  `Right_Cfg_Symbols` int(10) unsigned NOT NULL DEFAULT '0',
  `Right_Cfg_Hst_Sync` int(10) unsigned NOT NULL DEFAULT '0',
  `Right_Srv_Journals` int(10) unsigned NOT NULL DEFAULT '0',
  `Right_Srv_Reports` int(10) unsigned NOT NULL DEFAULT '0',
  `Right_Charts` int(10) unsigned NOT NULL DEFAULT '0',
  `Right_Email` int(10) unsigned NOT NULL DEFAULT '0',
  `Right_News` int(10) unsigned NOT NULL DEFAULT '0',
  `Right_Export` int(10) unsigned NOT NULL DEFAULT '0',
  `Right_Techsupport` int(10) unsigned NOT NULL DEFAULT '0',
  `Right_Market` int(10) unsigned NOT NULL DEFAULT '0',
  `Right_Accountant` int(10) unsigned NOT NULL DEFAULT '0',
  `Right_Acc_Read` int(10) unsigned NOT NULL DEFAULT '0',
  `Right_Acc_Details` int(10) unsigned NOT NULL DEFAULT '0',
  `Right_Acc_Manager` int(10) unsigned NOT NULL DEFAULT '0',
  `Right_Acc_Delete` int(10) unsigned NOT NULL DEFAULT '0',
  `Right_Acc_Online` int(10) unsigned NOT NULL DEFAULT '0',
  `Right_Confirm_Actions` int(10) unsigned NOT NULL DEFAULT '0',
  `Right_Notifications` int(10) unsigned NOT NULL DEFAULT '0',
  `Right_Trades_Read` int(10) unsigned NOT NULL DEFAULT '0',
  `Right_Trades_Manager` int(10) unsigned NOT NULL DEFAULT '0',
  `Right_Trades_Delete` int(10) unsigned NOT NULL DEFAULT '0',
  `Right_Trades_Dealer` int(10) unsigned NOT NULL DEFAULT '0',
  `Right_Trades_Supervisor` int(10) unsigned NOT NULL DEFAULT '0',
  `Right_Quotes_Raw` int(10) unsigned NOT NULL DEFAULT '0',
  `Right_Quotes` int(10) unsigned NOT NULL DEFAULT '0',
  `Right_Symbol_Details` int(10) unsigned NOT NULL DEFAULT '0',
  `Right_Risk_Manager` int(10) unsigned NOT NULL DEFAULT '0',
  `Right_Group_Details` int(10) unsigned NOT NULL DEFAULT '0',
  `Right_Reports` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`Login`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `mt5_managers` WRITE;
/*!40000 ALTER TABLE `mt5_managers` DISABLE KEYS */;

INSERT INTO `mt5_managers` (`Login`, `Timestamp`, `Name`, `Mailbox`, `Server`, `RequestLimitLogs`, `RequestLimitReports`, `Groups`, `Access`, `Right_Admin`, `Right_Manager`, `Right_Cfg_Servers`, `Right_Cfg_Access`, `Right_Cfg_Time`, `Right_Cfg_Holidays`, `Right_Cfg_Groups`, `Right_Cfg_Managers`, `Right_Cfg_Requests`, `Right_Cfg_Gateways`, `Right_Cfg_Plugins`, `Right_Cfg_Datafeeds`, `Right_Cfg_Reports`, `Right_Cfg_Symbols`, `Right_Cfg_Hst_Sync`, `Right_Srv_Journals`, `Right_Srv_Reports`, `Right_Charts`, `Right_Email`, `Right_News`, `Right_Export`, `Right_Techsupport`, `Right_Market`, `Right_Accountant`, `Right_Acc_Read`, `Right_Acc_Details`, `Right_Acc_Manager`, `Right_Acc_Delete`, `Right_Acc_Online`, `Right_Confirm_Actions`, `Right_Notifications`, `Right_Trades_Read`, `Right_Trades_Manager`, `Right_Trades_Delete`, `Right_Trades_Dealer`, `Right_Trades_Supervisor`, `Right_Quotes_Raw`, `Right_Quotes`, `Right_Symbol_Details`, `Right_Risk_Manager`, `Right_Group_Details`, `Right_Reports`)
VALUES
	(1,131893534606731461,'Xuan','',1,0,0,'*','',1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1),
	(2,131902038607204294,'Mark','',1,0,0,'*','',1,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1),
	(3,131893539775041367,'Miles','',1,0,0,'*','',1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1),
	(4,131902038870436086,'Boris','',1,0,0,'*','',1,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1),
	(130,131914203582761802,'','',1,0,0,'*','',1,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1),
	(131,131914204169020738,'York','',1,0,0,'*','',1,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1),
	(133,131914203169764305,'Barry','',1,0,0,'*','',1,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1),
	(600,131915774619821455,'Sunny','',1,0,0,'Inst\\*,managers\\*','',1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0),
	(670,131914999058847104,'CTI','',1,0,0,'Inst\\CTI\\*,managers\\Inst\\CTI','',1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1),
	(672,131919298560463448,'CTI','',1,0,0,'Inst\\CTI\\B1,Inst\\CTI\\IB672','',0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,0,0,1,1,1,0,1,1,1,1,0,0,0,0,1,1,1,1,1,1),
	(1000,131893354473595267,'First Admin','Administrator',1,0,0,'*','',1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1),
	(1001,131902037694637778,'York','',1,0,0,'*','',1,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1),
	(1002,131908896074623207,'Mark','',1,0,0,'*','',1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
	(1003,131902037267724718,'Barry','',1,0,0,'*','',1,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1),
	(1004,131910917577544689,'back','',1,0,0,'*','',1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
	(1005,131916901749116197,'Sunny','',1,0,0,'*','',0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
	(1006,131916901657604852,'Miles','',1,0,0,'*','',0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
	(1007,131916901824397676,'Boris','',1,0,0,'*','',0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

/*!40000 ALTER TABLE `mt5_managers` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table mt5_network
# ------------------------------------------------------------

DROP TABLE IF EXISTS `mt5_network`;

CREATE TABLE `mt5_network` (
  `Login` bigint(20) unsigned NOT NULL DEFAULT '0',
  `Timestamp` bigint(20) NOT NULL DEFAULT '0',
  `Type` int(10) unsigned NOT NULL DEFAULT '0',
  `Name` varchar(32) NOT NULL DEFAULT '',
  `Address` varchar(64) NOT NULL DEFAULT '',
  `Port` int(10) unsigned NOT NULL DEFAULT '0',
  `Adapter` varchar(128) NOT NULL DEFAULT '',
  `ServiceTime` int(10) unsigned NOT NULL DEFAULT '0',
  `FailoverMode` int(10) unsigned NOT NULL DEFAULT '0',
  `FailoverTimeout` int(10) unsigned NOT NULL DEFAULT '0',
  `Adapters` varchar(512) NOT NULL DEFAULT '',
  `Addresses` varchar(512) NOT NULL DEFAULT '',
  `Binds` varchar(512) NOT NULL DEFAULT '',
  `Points` varchar(512) NOT NULL DEFAULT '',
  `Version` int(10) unsigned NOT NULL DEFAULT '0',
  `Build` int(10) unsigned NOT NULL DEFAULT '0',
  `BuildDate` varchar(32) NOT NULL DEFAULT '',
  `SysConnection` int(10) unsigned NOT NULL DEFAULT '0',
  `SysLastBoot` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `SysOsName` varchar(64) NOT NULL DEFAULT '',
  `SysCpuName` varchar(64) NOT NULL DEFAULT '',
  `SysCpuNumber` int(10) unsigned NOT NULL DEFAULT '0',
  `SysBits` int(10) unsigned NOT NULL DEFAULT '0',
  `SysMemoryTotal` int(10) unsigned NOT NULL DEFAULT '0',
  `SysMemoryFree` int(10) unsigned NOT NULL DEFAULT '0',
  `SysMemoryCritical` int(10) unsigned NOT NULL DEFAULT '0',
  `SysHddSize` int(10) unsigned NOT NULL DEFAULT '0',
  `SysHddFree` int(10) unsigned NOT NULL DEFAULT '0',
  `SysHddCritical` int(10) unsigned NOT NULL DEFAULT '0',
  `SysHddFragmentation` int(10) unsigned NOT NULL DEFAULT '0',
  `SysHddFragCritical` int(10) unsigned NOT NULL DEFAULT '0',
  `SysHddDefragRecommend` int(10) unsigned NOT NULL DEFAULT '0',
  `SysHddReadSpeed` int(10) unsigned NOT NULL DEFAULT '0',
  `SysHddReadCritical` int(10) unsigned NOT NULL DEFAULT '0',
  `SysHddWriteSpeed` int(10) unsigned NOT NULL DEFAULT '0',
  `SysHddWriteCritical` int(10) unsigned NOT NULL DEFAULT '0',
  `PerfConnectsMax` int(10) unsigned NOT NULL DEFAULT '0',
  `PerfConnectsCritical` int(10) unsigned NOT NULL DEFAULT '0',
  `PerfCpuMax` int(10) unsigned NOT NULL DEFAULT '0',
  `PerfCpuCritical` int(10) unsigned NOT NULL DEFAULT '0',
  `PerfMemoryMin` int(10) unsigned NOT NULL DEFAULT '0',
  `PerfMemoryCritical` int(10) unsigned NOT NULL DEFAULT '0',
  `PerfMemBlockMin` int(10) unsigned NOT NULL DEFAULT '0',
  `PerfMemBlockCritical` int(10) unsigned NOT NULL DEFAULT '0',
  `PerfNetworkMax` int(10) unsigned NOT NULL DEFAULT '0',
  `PerfNetworkCritical` int(10) unsigned NOT NULL DEFAULT '0',
  `PerfSocketsMax` int(10) unsigned NOT NULL DEFAULT '0',
  `PerfSocketsCritical` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`Login`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `mt5_network` WRITE;
/*!40000 ALTER TABLE `mt5_network` DISABLE KEYS */;

INSERT INTO `mt5_network` (`Login`, `Timestamp`, `Type`, `Name`, `Address`, `Port`, `Adapter`, `ServiceTime`, `FailoverMode`, `FailoverTimeout`, `Adapters`, `Addresses`, `Binds`, `Points`, `Version`, `Build`, `BuildDate`, `SysConnection`, `SysLastBoot`, `SysOsName`, `SysCpuName`, `SysCpuNumber`, `SysBits`, `SysMemoryTotal`, `SysMemoryFree`, `SysMemoryCritical`, `SysHddSize`, `SysHddFree`, `SysHddCritical`, `SysHddFragmentation`, `SysHddFragCritical`, `SysHddDefragRecommend`, `SysHddReadSpeed`, `SysHddReadCritical`, `SysHddWriteSpeed`, `SysHddWriteCritical`, `PerfConnectsMax`, `PerfConnectsCritical`, `PerfCpuMax`, `PerfCpuCritical`, `PerfMemoryMin`, `PerfMemoryCritical`, `PerfMemBlockMin`, `PerfMemBlockCritical`, `PerfNetworkMax`, `PerfNetworkCritical`, `PerfSocketsMax`, `PerfSocketsCritical`)
VALUES
	(1,131919334782306699,0,'MetaTrader 5 Main Server','172.31.38.246:441',441,'Amazon Elastic Network Adapter',227,0,180,'Amazon Elastic Network Adapter,Local Area Connection* 3','172.31.38.246','0.0.0.0:441','172.31.38.246:441',500,1940,'02 Nov 2018',1,'2019-01-16 10:54:46','Windows Server 2016 Datacenter, x64 on Hyper-V','Intel Xeon Platinum 8175M  @ 2.50GHz',4,64,16195,13887,200,917502,910298,8192,0,25,0,0,30,0,15,8,10000,45,30,13163,200,13163,100,248,5120,77,20000),
	(2,131921060881860874,3,'MetaTrader 5 Access Server','172.31.38.246:443',443,'Amazon Elastic Network Adapter',227,0,180,'Amazon Elastic Network Adapter,Local Area Connection* 3','172.31.38.246','172.31.38.246:443','172.31.38.246:443',500,1940,'02 Nov 2018',86,'2019-01-16 10:54:48','Windows Server 2016 Datacenter, x64 on Hyper-V','Intel Xeon Platinum 8175M  @ 2.50GHz',4,64,16195,13848,200,917502,910298,4096,0,25,0,0,30,0,15,8,10000,43,30,13163,200,13163,100,248,5120,76,20000),
	(3,131921060943483336,2,'MetaTrader 5 History Server','172.31.38.246:442',442,'Amazon Elastic Network Adapter',227,0,180,'Amazon Elastic Network Adapter,Local Area Connection* 3','172.31.38.246','0.0.0.0:442','172.31.38.246:442',500,1940,'02 Nov 2018',88,'2019-01-16 10:54:54','Windows Server 2016 Datacenter, x64 on Hyper-V','Intel Xeon Platinum 8175M  @ 2.50GHz',4,64,16195,13827,200,917502,910298,8192,8,25,0,263,30,549,15,5,10000,43,30,13163,200,13163,100,248,5120,76,20000),
	(4,131921165828113557,4,'MetaTrader 5 Main Backup Server','172.31.38.246:444',444,'Amazon Elastic Network Adapter',227,0,180,'Amazon Elastic Network Adapter,Local Area Connection* 3','172.31.38.246','0.0.0.0:444','172.31.38.246:444',500,1940,'02 Nov 2018',84,'2019-01-16 10:54:46','Windows Server 2016 Datacenter, x64 on Hyper-V','Intel Xeon Platinum 8175M  @ 2.50GHz',4,64,16195,13803,200,917502,910298,16384,0,25,0,0,30,0,15,0,10000,46,30,13163,200,13163,100,248,5120,181,20000),
	(5,131921060882983922,3,'MetaTrader 5 Access Server 2','34.218.17.240:443',443,'Amazon Elastic Network Adapter',227,0,180,'Amazon Elastic Network Adapter,Local Area Connection* 3','172.31.40.199','172.31.40.199:443,34.218.17.240:433','172.31.40.199:443,34.218.17.240:433',500,1940,'02 Nov 2018',87,'2019-01-16 10:54:48','Windows Server 2016 Datacenter, x64 on Hyper-V','Intel Xeon Platinum 8175M  @ 2.50GHz',2,64,8089,6053,200,131069,115393,4096,0,25,0,131,30,301,15,2,10000,57,30,5979,200,5979,100,215,5120,18,20000);

/*!40000 ALTER TABLE `mt5_network` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table mt5_network_access_servers
# ------------------------------------------------------------

DROP TABLE IF EXISTS `mt5_network_access_servers`;

CREATE TABLE `mt5_network_access_servers` (
  `Login` bigint(20) unsigned NOT NULL DEFAULT '0',
  `Priority` int(10) unsigned NOT NULL DEFAULT '0',
  `AntifloodEnable` int(10) unsigned NOT NULL DEFAULT '0',
  `AntifloodConnects` int(10) unsigned NOT NULL DEFAULT '0',
  `AntifloodErrors` int(10) unsigned NOT NULL DEFAULT '0',
  `NewsMaxCount` int(10) unsigned NOT NULL DEFAULT '0',
  `BalancingConnections` int(10) unsigned NOT NULL DEFAULT '0',
  `BalancingPriority` int(10) unsigned NOT NULL DEFAULT '0',
  `AccessMask` int(10) unsigned NOT NULL DEFAULT '0',
  `AccessFlags` int(10) unsigned NOT NULL DEFAULT '0',
  `Servers` varchar(256) NOT NULL DEFAULT '',
  PRIMARY KEY (`Login`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `mt5_network_access_servers` WRITE;
/*!40000 ALTER TABLE `mt5_network_access_servers` DISABLE KEYS */;

INSERT INTO `mt5_network_access_servers` (`Login`, `Priority`, `AntifloodEnable`, `AntifloodConnects`, `AntifloodErrors`, `NewsMaxCount`, `BalancingConnections`, `BalancingPriority`, `AccessMask`, `AccessFlags`, `Servers`)
VALUES
	(2,0,1,100,10,16384,6,0,31,0,''),
	(5,0,1,100,10,16384,1,0,31,0,'1');

/*!40000 ALTER TABLE `mt5_network_access_servers` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table mt5_network_antiddos
# ------------------------------------------------------------

DROP TABLE IF EXISTS `mt5_network_antiddos`;

CREATE TABLE `mt5_network_antiddos` (
  `Login` bigint(20) unsigned NOT NULL DEFAULT '0',
  `Priority` int(10) unsigned NOT NULL DEFAULT '0',
  `AccessMask` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`Login`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table mt5_network_backup_folders
# ------------------------------------------------------------

DROP TABLE IF EXISTS `mt5_network_backup_folders`;

CREATE TABLE `mt5_network_backup_folders` (
  `Folder_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `Login` bigint(20) unsigned NOT NULL DEFAULT '0',
  `Folder` varchar(260) NOT NULL DEFAULT '',
  `Masks` varchar(260) NOT NULL DEFAULT '',
  `Filter` varchar(260) NOT NULL DEFAULT '',
  PRIMARY KEY (`Folder_ID`),
  KEY `IDX_mt5_backup_server_login` (`Login`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table mt5_network_backup_servers
# ------------------------------------------------------------

DROP TABLE IF EXISTS `mt5_network_backup_servers`;

CREATE TABLE `mt5_network_backup_servers` (
  `Login` bigint(20) unsigned NOT NULL DEFAULT '0',
  `PairServer` bigint(20) unsigned NOT NULL DEFAULT '0',
  `BackupFlags` bigint(20) unsigned NOT NULL DEFAULT '0',
  `BackupPath` varchar(256) NOT NULL DEFAULT '',
  `BackupPeriod` int(10) unsigned NOT NULL DEFAULT '0',
  `BackupTtl` int(10) unsigned NOT NULL DEFAULT '0',
  `BackupTimeFull` int(10) unsigned NOT NULL DEFAULT '0',
  `BackupLastStartup` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `BackupLastFull` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `BackupLastArchive` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `BackupLastSync` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `SqlMode` int(10) unsigned NOT NULL DEFAULT '0',
  `SqlServer` varchar(128) NOT NULL DEFAULT '',
  `SqlFolder` varchar(128) NOT NULL DEFAULT '',
  `SqlFlags` bigint(20) unsigned NOT NULL DEFAULT '0',
  `SqlPeriod` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`Login`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `mt5_network_backup_servers` WRITE;
/*!40000 ALTER TABLE `mt5_network_backup_servers` DISABLE KEYS */;

INSERT INTO `mt5_network_backup_servers` (`Login`, `PairServer`, `BackupFlags`, `BackupPath`, `BackupPeriod`, `BackupTtl`, `BackupTimeFull`, `BackupLastStartup`, `BackupLastFull`, `BackupLastArchive`, `BackupLastSync`, `SqlMode`, `SqlServer`, `SqlFolder`, `SqlFlags`, `SqlPeriod`)
VALUES
	(4,1,1,'C:\\MetaTrader5Backup\\TradeMain',0,2,17,'2019-01-14 11:15:05','2019-01-17 00:17:00','1970-01-01 00:00:00','2019-01-17 01:54:27',3,'mt5backupdb.c9npvlosmsau.us-west-2.rds.amazonaws.com','MT5DB',3,1);

/*!40000 ALTER TABLE `mt5_network_backup_servers` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table mt5_network_history_servers
# ------------------------------------------------------------

DROP TABLE IF EXISTS `mt5_network_history_servers`;

CREATE TABLE `mt5_network_history_servers` (
  `Login` bigint(20) unsigned NOT NULL DEFAULT '0',
  `DatafeedTimeout` int(10) unsigned NOT NULL DEFAULT '0',
  `NewsMaxCount` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`Login`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `mt5_network_history_servers` WRITE;
/*!40000 ALTER TABLE `mt5_network_history_servers` DISABLE KEYS */;

INSERT INTO `mt5_network_history_servers` (`Login`, `DatafeedTimeout`, `NewsMaxCount`)
VALUES
	(3,10,16384);

/*!40000 ALTER TABLE `mt5_network_history_servers` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table mt5_network_trade_servers
# ------------------------------------------------------------

DROP TABLE IF EXISTS `mt5_network_trade_servers`;

CREATE TABLE `mt5_network_trade_servers` (
  `Login` bigint(20) unsigned NOT NULL DEFAULT '0',
  `DemoMode` int(10) unsigned NOT NULL DEFAULT '0',
  `DemoPeriod` int(10) unsigned NOT NULL DEFAULT '0',
  `OvernightTime` int(10) unsigned NOT NULL DEFAULT '0',
  `OvernightMode` int(10) unsigned NOT NULL DEFAULT '0',
  `OvernighPrevTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `OvernightLastTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `OvernightDays` int(10) unsigned NOT NULL DEFAULT '0',
  `OvermonthMode` int(10) unsigned NOT NULL DEFAULT '0',
  `OvermonthPrevTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `OvermonthLastTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `TotalUsers` int(10) unsigned NOT NULL DEFAULT '0',
  `TotalUsersReal` int(10) unsigned NOT NULL DEFAULT '0',
  `TotalDeals` int(10) unsigned NOT NULL DEFAULT '0',
  `TotalOrders` int(10) unsigned NOT NULL DEFAULT '0',
  `TotalOrdersHistory` int(10) unsigned NOT NULL DEFAULT '0',
  `TotalPositions` int(10) unsigned NOT NULL DEFAULT '0',
  `LoginsRange` varchar(256) NOT NULL DEFAULT '',
  `LoginsRangeUsed` varchar(256) NOT NULL DEFAULT '',
  `OrdersRange` varchar(256) NOT NULL DEFAULT '',
  `OrdersRangeUsed` varchar(256) NOT NULL DEFAULT '',
  `DealsRange` varchar(256) NOT NULL DEFAULT '',
  `DealsRangeUsed` varchar(256) NOT NULL DEFAULT '',
  PRIMARY KEY (`Login`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `mt5_network_trade_servers` WRITE;
/*!40000 ALTER TABLE `mt5_network_trade_servers` DISABLE KEYS */;

INSERT INTO `mt5_network_trade_servers` (`Login`, `DemoMode`, `DemoPeriod`, `OvernightTime`, `OvernightMode`, `OvernighPrevTime`, `OvernightLastTime`, `OvernightDays`, `OvermonthMode`, `OvermonthPrevTime`, `OvermonthLastTime`, `TotalUsers`, `TotalUsersReal`, `TotalDeals`, `TotalOrders`, `TotalOrdersHistory`, `TotalPositions`, `LoginsRange`, `LoginsRangeUsed`, `OrdersRange`, `OrdersRangeUsed`, `DealsRange`, `DealsRangeUsed`)
VALUES
	(1,1,30,1439,0,'2019-01-15 23:59:59','2019-01-16 23:59:59',7998,0,'1970-01-01 00:00:00','1970-01-01 00:00:00',35,11,33,0,16,0,'1000-1000000','1000-67000','1-100000000','1-16','1-100000000','1-33');

/*!40000 ALTER TABLE `mt5_network_trade_servers` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table mt5_orders
# ------------------------------------------------------------

DROP TABLE IF EXISTS `mt5_orders`;

CREATE TABLE `mt5_orders` (
  `Order` bigint(20) unsigned NOT NULL DEFAULT '0',
  `Timestamp` bigint(20) NOT NULL DEFAULT '0',
  `ExternalID` varchar(32) NOT NULL DEFAULT '',
  `Login` bigint(20) unsigned NOT NULL DEFAULT '0',
  `Dealer` bigint(20) unsigned NOT NULL DEFAULT '0',
  `Symbol` varchar(32) NOT NULL DEFAULT '',
  `Digits` int(10) unsigned NOT NULL DEFAULT '0',
  `DigitsCurrency` int(10) unsigned NOT NULL DEFAULT '0',
  `ContractSize` double NOT NULL DEFAULT '0',
  `State` int(10) unsigned NOT NULL DEFAULT '0',
  `Reason` int(10) unsigned NOT NULL DEFAULT '0',
  `TimeSetup` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `TimeExpiration` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `TimeDone` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `TimeSetupMsc` datetime(6) NOT NULL DEFAULT '0000-00-00 00:00:00.000000',
  `TimeDoneMsc` datetime(6) NOT NULL DEFAULT '0000-00-00 00:00:00.000000',
  `ModifyFlags` int(10) unsigned NOT NULL DEFAULT '0',
  `Type` int(10) unsigned NOT NULL DEFAULT '0',
  `TypeFill` int(10) unsigned NOT NULL DEFAULT '0',
  `TypeTime` int(10) unsigned NOT NULL DEFAULT '0',
  `PriceOrder` double NOT NULL DEFAULT '0',
  `PriceTrigger` double NOT NULL DEFAULT '0',
  `PriceCurrent` double NOT NULL DEFAULT '0',
  `PriceSL` double NOT NULL DEFAULT '0',
  `PriceTP` double NOT NULL DEFAULT '0',
  `VolumeInitialExt` bigint(20) unsigned NOT NULL DEFAULT '0',
  `VolumeCurrentExt` bigint(20) unsigned NOT NULL DEFAULT '0',
  `ExpertID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `PositionID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `PositionByID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `RateMargin` double NOT NULL DEFAULT '0',
  `Comment` varchar(32) NOT NULL DEFAULT '',
  `ActivationMode` int(10) unsigned NOT NULL DEFAULT '0',
  `ActivationTime` bigint(20) NOT NULL DEFAULT '0',
  `ActivationPrice` double NOT NULL DEFAULT '0',
  `ActivationFlags` int(10) unsigned NOT NULL DEFAULT '0',
  `VolumeInitial` bigint(20) unsigned NOT NULL DEFAULT '0',
  `VolumeCurrent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `ApiData` varchar(4000) NOT NULL DEFAULT '',
  PRIMARY KEY (`Order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table mt5_orders_2019
# ------------------------------------------------------------

DROP TABLE IF EXISTS `mt5_orders_2019`;

CREATE TABLE `mt5_orders_2019` (
  `Order` bigint(20) unsigned NOT NULL DEFAULT '0',
  `Timestamp` bigint(20) NOT NULL DEFAULT '0',
  `ExternalID` varchar(32) NOT NULL DEFAULT '',
  `Login` bigint(20) unsigned NOT NULL DEFAULT '0',
  `Dealer` bigint(20) unsigned NOT NULL DEFAULT '0',
  `Symbol` varchar(32) NOT NULL DEFAULT '',
  `Digits` int(10) unsigned NOT NULL DEFAULT '0',
  `DigitsCurrency` int(10) unsigned NOT NULL DEFAULT '0',
  `ContractSize` double NOT NULL DEFAULT '0',
  `State` int(10) unsigned NOT NULL DEFAULT '0',
  `Reason` int(10) unsigned NOT NULL DEFAULT '0',
  `TimeSetup` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `TimeExpiration` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `TimeDone` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `TimeSetupMsc` datetime(6) NOT NULL DEFAULT '0000-00-00 00:00:00.000000',
  `TimeDoneMsc` datetime(6) NOT NULL DEFAULT '0000-00-00 00:00:00.000000',
  `ModifyFlags` int(10) unsigned NOT NULL DEFAULT '0',
  `Type` int(10) unsigned NOT NULL DEFAULT '0',
  `TypeFill` int(10) unsigned NOT NULL DEFAULT '0',
  `TypeTime` int(10) unsigned NOT NULL DEFAULT '0',
  `PriceOrder` double NOT NULL DEFAULT '0',
  `PriceTrigger` double NOT NULL DEFAULT '0',
  `PriceCurrent` double NOT NULL DEFAULT '0',
  `PriceSL` double NOT NULL DEFAULT '0',
  `PriceTP` double NOT NULL DEFAULT '0',
  `VolumeInitialExt` bigint(20) unsigned NOT NULL DEFAULT '0',
  `VolumeCurrentExt` bigint(20) unsigned NOT NULL DEFAULT '0',
  `ExpertID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `PositionID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `PositionByID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `RateMargin` double NOT NULL DEFAULT '0',
  `Comment` varchar(32) NOT NULL DEFAULT '',
  `ActivationMode` int(10) unsigned NOT NULL DEFAULT '0',
  `ActivationTime` bigint(20) NOT NULL DEFAULT '0',
  `ActivationPrice` double NOT NULL DEFAULT '0',
  `ActivationFlags` int(10) unsigned NOT NULL DEFAULT '0',
  `VolumeInitial` bigint(20) unsigned NOT NULL DEFAULT '0',
  `VolumeCurrent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `ApiData` varchar(4000) NOT NULL DEFAULT '',
  PRIMARY KEY (`Order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `mt5_orders_2019` WRITE;
/*!40000 ALTER TABLE `mt5_orders_2019` DISABLE KEYS */;

INSERT INTO `mt5_orders_2019` (`Order`, `Timestamp`, `ExternalID`, `Login`, `Dealer`, `Symbol`, `Digits`, `DigitsCurrency`, `ContractSize`, `State`, `Reason`, `TimeSetup`, `TimeExpiration`, `TimeDone`, `TimeSetupMsc`, `TimeDoneMsc`, `ModifyFlags`, `Type`, `TypeFill`, `TypeTime`, `PriceOrder`, `PriceTrigger`, `PriceCurrent`, `PriceSL`, `PriceTP`, `VolumeInitialExt`, `VolumeCurrentExt`, `ExpertID`, `PositionID`, `PositionByID`, `RateMargin`, `Comment`, `ActivationMode`, `ActivationTime`, `ActivationPrice`, `ActivationFlags`, `VolumeInitial`, `VolumeCurrent`, `ApiData`)
VALUES
	(3,131920944105562591,'',1006,0,'EURUSD',5,2,100000,4,0,'2019-01-16 07:40:10','1970-01-01 00:00:00','2019-01-16 07:40:10','2019-01-16 07:40:10.502000','2019-01-16 07:40:10.513000',0,0,0,0,1.1403699999999999,0,1.1403699999999999,0,0,100000000,0,0,3,0,1,'',0,0,0,0,10000,0,'[]'),
	(4,131920944980492603,'',1006,0,'EURUSD',5,2,100000,4,0,'2019-01-16 07:41:38','1970-01-01 00:00:00','2019-01-16 07:41:38','2019-01-16 07:41:38.048000','2019-01-16 07:41:38.049000',0,1,0,0,1.14029,0,1.14029,0,0,100000000,0,0,3,0,1,'',0,0,0,0,10000,0,'[]'),
	(5,131920945650457561,'',1006,0,'EURUSD',5,2,100000,4,0,'2019-01-16 07:42:45','1970-01-01 00:00:00','2019-01-16 07:42:45','2019-01-16 07:42:45.044000','2019-01-16 07:42:45.044000',0,0,0,0,1.14029,0,1.14029,0,0,100000000,0,0,5,0,1,'',0,0,0,0,10000,0,'[]'),
	(6,131920945764053525,'',1006,0,'EURUSD',5,2,100000,4,0,'2019-01-16 07:42:56','1970-01-01 00:00:00','2019-01-16 07:42:56','2019-01-16 07:42:56.405000','2019-01-16 07:42:56.405000',0,1,0,0,1.14026,0,1.14026,0,0,100000000,0,0,5,0,1,'',0,0,0,0,10000,0,'[]'),
	(7,131920948300013707,'',1006,0,'EURUSD',5,2,100000,4,0,'2019-01-16 07:47:10','1970-01-01 00:00:00','2019-01-16 07:47:10','2019-01-16 07:47:10.001000','2019-01-16 07:47:10.001000',0,0,0,0,1.14023,0,1.14023,0,0,100000000,0,0,7,0,1,'',0,0,0,0,10000,0,'[]'),
	(8,131920948709026137,'',1006,0,'EURUSD',5,2,100000,4,0,'2019-01-16 07:47:50','1970-01-01 00:00:00','2019-01-16 07:47:50','2019-01-16 07:47:50.901000','2019-01-16 07:47:50.902000',0,1,0,0,1.1402700000000001,0,1.1402700000000001,0,0,100000000,0,0,7,0,1,'',0,0,0,0,10000,0,'[]'),
	(9,131920965694872497,'',1006,0,'EURUSD.',5,2,100000,4,0,'2019-01-16 08:16:09','1970-01-01 00:00:00','2019-01-16 08:16:09','2019-01-16 08:16:09.455000','2019-01-16 08:16:09.456000',0,0,0,0,1.14083,0,1.14083,0,0,100000000,0,0,9,0,1,'',0,0,0,0,10000,0,'[]'),
	(10,131920966117547165,'',1006,0,'EURUSD.',5,2,100000,4,0,'2019-01-16 08:16:51','1970-01-01 00:00:00','2019-01-16 08:16:51','2019-01-16 08:16:51.753000','2019-01-16 08:16:51.754000',0,1,0,0,1.14087,0,1.14087,0,0,100000000,0,0,9,0,1,'',0,0,0,0,10000,0,'[]'),
	(11,131920981365964477,'',1006,0,'EURUSD..',5,2,100000,4,0,'2019-01-16 08:42:16','1970-01-01 00:00:00','2019-01-16 08:42:16','2019-01-16 08:42:16.596000','2019-01-16 08:42:16.596000',0,0,0,0,1.13975,0,1.13975,0,0,100000000,0,0,11,0,1,'',0,0,0,0,10000,0,'[]'),
	(12,131920981904376168,'',1006,0,'EURUSD..',5,2,100000,4,0,'2019-01-16 08:43:10','1970-01-01 00:00:00','2019-01-16 08:43:10','2019-01-16 08:43:10.436000','2019-01-16 08:43:10.436000',0,1,0,0,1.1391,0,1.1391,0,0,100000000,0,0,11,0,1,'',0,0,0,0,10000,0,'[]'),
	(13,131920982037530985,'',1006,0,'EURUSD..',5,2,100000,4,0,'2019-01-16 08:43:23','1970-01-01 00:00:00','2019-01-16 08:43:23','2019-01-16 08:43:23.753000','2019-01-16 08:43:23.753000',0,1,0,0,1.13909,0,1.13909,0,0,100000000,0,0,13,0,1,'',0,0,0,0,10000,0,'[]'),
	(14,131920984309950550,'',1006,0,'EURUSD..',5,2,100000,4,0,'2019-01-16 08:47:10','1970-01-01 00:00:00','2019-01-16 08:47:10','2019-01-16 08:47:10.995000','2019-01-16 08:47:10.995000',0,0,0,0,1.13995,0,1.13995,0,0,100000000,0,0,13,0,1,'',0,0,0,0,10000,0,'[]'),
	(15,131920987155301929,'',1006,0,'EURUSD',5,2,100000,4,0,'2019-01-16 08:51:55','1970-01-01 00:00:00','2019-01-16 08:51:55','2019-01-16 08:51:55.529000','2019-01-16 08:51:55.530000',0,1,0,0,1.13959,0,1.13959,0,0,100000000,0,0,15,0,1,'',0,0,0,0,10000,0,'[]'),
	(16,131921022054021412,'',1006,0,'EURUSD',5,2,100000,4,0,'2019-01-16 09:50:05','1970-01-01 00:00:00','2019-01-16 09:50:05','2019-01-16 09:50:05.401000','2019-01-16 09:50:05.402000',0,0,0,0,1.14142,0,1.14142,0,0,100000000,0,0,15,0,1,'',0,0,0,0,10000,0,'[]');

/*!40000 ALTER TABLE `mt5_orders_2019` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table mt5_orders_history
# ------------------------------------------------------------

DROP TABLE IF EXISTS `mt5_orders_history`;

CREATE TABLE `mt5_orders_history` (
  `Order` bigint(20) unsigned NOT NULL DEFAULT '0',
  `Timestamp` bigint(20) NOT NULL DEFAULT '0',
  `ExternalID` varchar(32) NOT NULL DEFAULT '',
  `Login` bigint(20) unsigned NOT NULL DEFAULT '0',
  `Dealer` bigint(20) unsigned NOT NULL DEFAULT '0',
  `Symbol` varchar(32) NOT NULL DEFAULT '',
  `Digits` int(10) unsigned NOT NULL DEFAULT '0',
  `DigitsCurrency` int(10) unsigned NOT NULL DEFAULT '0',
  `ContractSize` double NOT NULL DEFAULT '0',
  `State` int(10) unsigned NOT NULL DEFAULT '0',
  `Reason` int(10) unsigned NOT NULL DEFAULT '0',
  `TimeSetup` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `TimeExpiration` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `TimeDone` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `TimeSetupMsc` datetime(6) NOT NULL DEFAULT '0000-00-00 00:00:00.000000',
  `TimeDoneMsc` datetime(6) NOT NULL DEFAULT '0000-00-00 00:00:00.000000',
  `ModifyFlags` int(10) unsigned NOT NULL DEFAULT '0',
  `Type` int(10) unsigned NOT NULL DEFAULT '0',
  `TypeFill` int(10) unsigned NOT NULL DEFAULT '0',
  `TypeTime` int(10) unsigned NOT NULL DEFAULT '0',
  `PriceOrder` double NOT NULL DEFAULT '0',
  `PriceTrigger` double NOT NULL DEFAULT '0',
  `PriceCurrent` double NOT NULL DEFAULT '0',
  `PriceSL` double NOT NULL DEFAULT '0',
  `PriceTP` double NOT NULL DEFAULT '0',
  `VolumeInitialExt` bigint(20) unsigned NOT NULL DEFAULT '0',
  `VolumeCurrentExt` bigint(20) unsigned NOT NULL DEFAULT '0',
  `ExpertID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `PositionID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `PositionByID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `RateMargin` double NOT NULL DEFAULT '0',
  `Comment` varchar(32) NOT NULL DEFAULT '',
  `ActivationMode` int(10) unsigned NOT NULL DEFAULT '0',
  `ActivationTime` bigint(20) NOT NULL DEFAULT '0',
  `ActivationPrice` double NOT NULL DEFAULT '0',
  `ActivationFlags` int(10) unsigned NOT NULL DEFAULT '0',
  `VolumeInitial` bigint(20) unsigned NOT NULL DEFAULT '0',
  `VolumeCurrent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `ApiData` varchar(4000) NOT NULL DEFAULT '',
  PRIMARY KEY (`Order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `mt5_orders_history` WRITE;
/*!40000 ALTER TABLE `mt5_orders_history` DISABLE KEYS */;

INSERT INTO `mt5_orders_history` (`Order`, `Timestamp`, `ExternalID`, `Login`, `Dealer`, `Symbol`, `Digits`, `DigitsCurrency`, `ContractSize`, `State`, `Reason`, `TimeSetup`, `TimeExpiration`, `TimeDone`, `TimeSetupMsc`, `TimeDoneMsc`, `ModifyFlags`, `Type`, `TypeFill`, `TypeTime`, `PriceOrder`, `PriceTrigger`, `PriceCurrent`, `PriceSL`, `PriceTP`, `VolumeInitialExt`, `VolumeCurrentExt`, `ExpertID`, `PositionID`, `PositionByID`, `RateMargin`, `Comment`, `ActivationMode`, `ActivationTime`, `ActivationPrice`, `ActivationFlags`, `VolumeInitial`, `VolumeCurrent`, `ApiData`)
VALUES
	(1,131915343125569907,'',67200263,0,'EURGBP',5,2,100000,4,16,'2019-01-09 20:05:12','1970-01-01 00:00:00','2019-01-09 20:05:12','2019-01-09 20:05:12.523000','2019-01-09 20:05:12.537000',0,0,0,0,0.90256,0,0.90256,0,0,100000000,0,0,1,0,1.15439,'',0,0,0,0,10000,0,'[]'),
	(2,131915343663352610,'',67200263,0,'EURGBP',5,2,100000,4,16,'2019-01-09 20:06:06','1970-01-01 00:00:00','2019-01-09 20:06:06','2019-01-09 20:06:06.335000','2019-01-09 20:06:06.335000',0,1,0,0,0.90245,0,0.90245,0,0,100000000,0,0,1,0,1.15426,'',0,0,0,0,10000,0,'[]'),
	(3,131920944105562591,'',1006,0,'EURUSD',5,2,100000,4,0,'2019-01-16 07:40:10','1970-01-01 00:00:00','2019-01-16 07:40:10','2019-01-16 07:40:10.502000','2019-01-16 07:40:10.513000',0,0,0,0,1.1403699999999999,0,1.1403699999999999,0,0,100000000,0,0,3,0,1,'',0,0,0,0,10000,0,'[]'),
	(4,131920944980492603,'',1006,0,'EURUSD',5,2,100000,4,0,'2019-01-16 07:41:38','1970-01-01 00:00:00','2019-01-16 07:41:38','2019-01-16 07:41:38.048000','2019-01-16 07:41:38.049000',0,1,0,0,1.14029,0,1.14029,0,0,100000000,0,0,3,0,1,'',0,0,0,0,10000,0,'[]'),
	(5,131920945650457561,'',1006,0,'EURUSD',5,2,100000,4,0,'2019-01-16 07:42:45','1970-01-01 00:00:00','2019-01-16 07:42:45','2019-01-16 07:42:45.044000','2019-01-16 07:42:45.044000',0,0,0,0,1.14029,0,1.14029,0,0,100000000,0,0,5,0,1,'',0,0,0,0,10000,0,'[]'),
	(6,131920945764053525,'',1006,0,'EURUSD',5,2,100000,4,0,'2019-01-16 07:42:56','1970-01-01 00:00:00','2019-01-16 07:42:56','2019-01-16 07:42:56.405000','2019-01-16 07:42:56.405000',0,1,0,0,1.14026,0,1.14026,0,0,100000000,0,0,5,0,1,'',0,0,0,0,10000,0,'[]'),
	(7,131920948300013707,'',1006,0,'EURUSD',5,2,100000,4,0,'2019-01-16 07:47:10','1970-01-01 00:00:00','2019-01-16 07:47:10','2019-01-16 07:47:10.001000','2019-01-16 07:47:10.001000',0,0,0,0,1.14023,0,1.14023,0,0,100000000,0,0,7,0,1,'',0,0,0,0,10000,0,'[]'),
	(8,131920948709026137,'',1006,0,'EURUSD',5,2,100000,4,0,'2019-01-16 07:47:50','1970-01-01 00:00:00','2019-01-16 07:47:50','2019-01-16 07:47:50.901000','2019-01-16 07:47:50.902000',0,1,0,0,1.1402700000000001,0,1.1402700000000001,0,0,100000000,0,0,7,0,1,'',0,0,0,0,10000,0,'[]'),
	(9,131920965694872497,'',1006,0,'EURUSD.',5,2,100000,4,0,'2019-01-16 08:16:09','1970-01-01 00:00:00','2019-01-16 08:16:09','2019-01-16 08:16:09.455000','2019-01-16 08:16:09.456000',0,0,0,0,1.14083,0,1.14083,0,0,100000000,0,0,9,0,1,'',0,0,0,0,10000,0,'[]'),
	(10,131920966117547165,'',1006,0,'EURUSD.',5,2,100000,4,0,'2019-01-16 08:16:51','1970-01-01 00:00:00','2019-01-16 08:16:51','2019-01-16 08:16:51.753000','2019-01-16 08:16:51.754000',0,1,0,0,1.14087,0,1.14087,0,0,100000000,0,0,9,0,1,'',0,0,0,0,10000,0,'[]'),
	(11,131920981365964477,'',1006,0,'EURUSD..',5,2,100000,4,0,'2019-01-16 08:42:16','1970-01-01 00:00:00','2019-01-16 08:42:16','2019-01-16 08:42:16.596000','2019-01-16 08:42:16.596000',0,0,0,0,1.13975,0,1.13975,0,0,100000000,0,0,11,0,1,'',0,0,0,0,10000,0,'[]'),
	(12,131920981904376168,'',1006,0,'EURUSD..',5,2,100000,4,0,'2019-01-16 08:43:10','1970-01-01 00:00:00','2019-01-16 08:43:10','2019-01-16 08:43:10.436000','2019-01-16 08:43:10.436000',0,1,0,0,1.1391,0,1.1391,0,0,100000000,0,0,11,0,1,'',0,0,0,0,10000,0,'[]'),
	(13,131920982037530985,'',1006,0,'EURUSD..',5,2,100000,4,0,'2019-01-16 08:43:23','1970-01-01 00:00:00','2019-01-16 08:43:23','2019-01-16 08:43:23.753000','2019-01-16 08:43:23.753000',0,1,0,0,1.13909,0,1.13909,0,0,100000000,0,0,13,0,1,'',0,0,0,0,10000,0,'[]'),
	(14,131920984309950550,'',1006,0,'EURUSD..',5,2,100000,4,0,'2019-01-16 08:47:10','1970-01-01 00:00:00','2019-01-16 08:47:10','2019-01-16 08:47:10.995000','2019-01-16 08:47:10.995000',0,0,0,0,1.13995,0,1.13995,0,0,100000000,0,0,13,0,1,'',0,0,0,0,10000,0,'[]'),
	(15,131920987155301929,'',1006,0,'EURUSD',5,2,100000,4,0,'2019-01-16 08:51:55','1970-01-01 00:00:00','2019-01-16 08:51:55','2019-01-16 08:51:55.529000','2019-01-16 08:51:55.530000',0,1,0,0,1.13959,0,1.13959,0,0,100000000,0,0,15,0,1,'',0,0,0,0,10000,0,'[]'),
	(16,131921022054021412,'',1006,0,'EURUSD',5,2,100000,4,0,'2019-01-16 09:50:05','1970-01-01 00:00:00','2019-01-16 09:50:05','2019-01-16 09:50:05.401000','2019-01-16 09:50:05.402000',0,0,0,0,1.14142,0,1.14142,0,0,100000000,0,0,15,0,1,'',0,0,0,0,10000,0,'[]');

/*!40000 ALTER TABLE `mt5_orders_history` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table mt5_plugin_params
# ------------------------------------------------------------

DROP TABLE IF EXISTS `mt5_plugin_params`;

CREATE TABLE `mt5_plugin_params` (
  `Param_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `Server` bigint(20) unsigned NOT NULL DEFAULT '0',
  `Plugin` varchar(64) NOT NULL DEFAULT '',
  `Type` int(10) unsigned NOT NULL DEFAULT '0',
  `Name` varchar(64) NOT NULL DEFAULT '',
  `Value` varchar(256) NOT NULL DEFAULT '',
  PRIMARY KEY (`Param_ID`),
  KEY `IDX_mt5_plugin_params_server` (`Server`),
  KEY `IDX_mt5_plugin_params_name` (`Plugin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table mt5_plugins
# ------------------------------------------------------------

DROP TABLE IF EXISTS `mt5_plugins`;

CREATE TABLE `mt5_plugins` (
  `Name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `Server` bigint(20) unsigned NOT NULL DEFAULT '0',
  `Timestamp` bigint(20) NOT NULL DEFAULT '0',
  `Module` varchar(64) NOT NULL DEFAULT '',
  `Enable` int(10) unsigned NOT NULL DEFAULT '0',
  `Flags` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`Name`,`Server`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table mt5_positions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `mt5_positions`;

CREATE TABLE `mt5_positions` (
  `Position_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `Position` bigint(20) unsigned NOT NULL DEFAULT '0',
  `ExternalID` varchar(32) NOT NULL DEFAULT '',
  `Login` bigint(20) unsigned NOT NULL DEFAULT '0',
  `Dealer` bigint(20) unsigned NOT NULL DEFAULT '0',
  `Timestamp` bigint(20) NOT NULL DEFAULT '0',
  `Symbol` varchar(32) NOT NULL DEFAULT '',
  `Action` int(10) unsigned NOT NULL DEFAULT '0',
  `Digits` int(10) unsigned NOT NULL DEFAULT '0',
  `DigitsCurrency` int(10) unsigned NOT NULL DEFAULT '0',
  `Reason` int(10) unsigned NOT NULL DEFAULT '0',
  `ContractSize` double NOT NULL DEFAULT '0',
  `TimeCreate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `TimeUpdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `TimeCreateMsc` datetime(6) NOT NULL DEFAULT '0000-00-00 00:00:00.000000',
  `TimeUpdateMsc` datetime(6) NOT NULL DEFAULT '0000-00-00 00:00:00.000000',
  `PriceOpen` double NOT NULL DEFAULT '0',
  `PriceCurrent` double NOT NULL DEFAULT '0',
  `PriceSL` double NOT NULL DEFAULT '0',
  `PriceTP` double NOT NULL DEFAULT '0',
  `VolumeExt` bigint(20) unsigned NOT NULL DEFAULT '0',
  `Profit` double NOT NULL DEFAULT '0',
  `Storage` double NOT NULL DEFAULT '0',
  `RateProfit` double NOT NULL DEFAULT '0',
  `RateMargin` double NOT NULL DEFAULT '0',
  `ExpertID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `ExpertPositionID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `Comment` varchar(32) NOT NULL DEFAULT '',
  `ActivationMode` int(10) unsigned NOT NULL DEFAULT '0',
  `ActivationTime` bigint(20) NOT NULL DEFAULT '0',
  `ActivationPrice` double NOT NULL DEFAULT '0',
  `ActivationFlags` int(10) unsigned NOT NULL DEFAULT '0',
  `Volume` bigint(20) unsigned NOT NULL DEFAULT '0',
  `ApiData` varchar(4000) NOT NULL DEFAULT '',
  PRIMARY KEY (`Position_ID`),
  KEY `IDX_mt5_positions_Position` (`Position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table mt5_prices
# ------------------------------------------------------------

DROP TABLE IF EXISTS `mt5_prices`;

CREATE TABLE `mt5_prices` (
  `Price_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `Symbol` varchar(32) NOT NULL DEFAULT '',
  `Digits` int(10) unsigned NOT NULL DEFAULT '0',
  `BidDir` int(10) unsigned NOT NULL DEFAULT '0',
  `AskDir` int(10) unsigned NOT NULL DEFAULT '0',
  `LastDir` int(10) unsigned NOT NULL DEFAULT '0',
  `Time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `BidLast` double NOT NULL DEFAULT '0',
  `BidHigh` double NOT NULL DEFAULT '0',
  `BidLow` double NOT NULL DEFAULT '0',
  `AskLast` double NOT NULL DEFAULT '0',
  `AskHigh` double NOT NULL DEFAULT '0',
  `AskLow` double NOT NULL DEFAULT '0',
  `LastLast` double NOT NULL DEFAULT '0',
  `LastHigh` double NOT NULL DEFAULT '0',
  `LastLow` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`Price_ID`),
  KEY `IDX_mt5_prices_Symbol` (`Symbol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `mt5_prices` WRITE;
/*!40000 ALTER TABLE `mt5_prices` DISABLE KEYS */;

INSERT INTO `mt5_prices` (`Price_ID`, `Symbol`, `Digits`, `BidDir`, `AskDir`, `LastDir`, `Time`, `BidLast`, `BidHigh`, `BidLow`, `AskLast`, `AskHigh`, `AskLow`, `LastLast`, `LastHigh`, `LastLow`)
VALUES
	(1,'EURUSD',5,0,0,0,'2019-01-17 02:50:35',1.13958,1.14006,1.13945,1.1396,1.14008,1.13948,0,0,0),
	(2,'GBPUSD',5,1,1,0,'2019-01-17 02:50:41',1.28812,1.28902,1.2877,1.28819,1.28914,1.28776,0,0,0),
	(3,'USDCHF',5,0,0,0,'2019-01-17 02:50:25',0.99043,0.99043,0.98952,0.99047,0.99047,0.98968,0,0,0),
	(4,'USDJPY',3,0,0,0,'2019-01-17 02:50:45',108.865,109.116,108.834,108.867,109.121,108.836,0,0,0),
	(5,'USDCAD',5,0,0,0,'2019-01-17 02:50:44',1.32676,1.3269199999999999,1.32528,1.32681,1.32698,1.32544,0,0,0),
	(6,'AUDUSD',5,1,1,0,'2019-01-17 02:50:40',0.71618,0.71753,0.71606,0.71621,0.71756,0.71609,0,0,0),
	(7,'AUDNZD',5,0,0,0,'2019-01-17 02:50:43',1.06004,1.06004,1.05766,1.06008,1.06008,1.05773,0,0,0),
	(8,'AUDCAD',5,0,0,0,'2019-01-17 02:50:43',0.95012,0.95119,0.94988,0.95016,0.95125,0.94992,0,0,0),
	(9,'AUDCHF',5,0,1,0,'2019-01-17 02:50:35',0.70934,0.71057,0.70902,0.70939,0.71061,0.70906,0,0,0),
	(11,'CHFJPY',3,0,0,0,'2019-01-17 02:50:46',109.911,110.228,109.899,109.92,110.279,109.91,0,0,0),
	(12,'EURGBP',5,1,1,0,'2019-01-17 02:50:34',0.8846,0.88501,0.88425,0.88468,0.88504,0.88434,0,0,0),
	(13,'EURAUD',5,0,0,0,'2019-01-17 02:50:39',1.59116,1.59159,1.58864,1.59121,1.5916299999999999,1.5886900000000002,0,0,0),
	(14,'EURCHF',5,0,0,0,'2019-01-17 02:50:34',1.1287,1.129,1.12777,1.12874,1.1290499999999999,1.12803,0,0,0),
	(15,'EURJPY',3,1,0,0,'2019-01-17 02:50:45',124.06,124.354,124.037,124.064,124.36,124.04,0,0,0),
	(16,'EURNZD',5,1,0,0,'2019-01-17 02:50:43',1.6867100000000002,1.68677,1.68071,1.68679,1.68685,1.68084,0,0,0),
	(17,'EURCAD',5,1,0,0,'2019-01-17 02:50:43',1.51181,1.51216,1.51009,1.51187,1.51223,1.5102600000000002,0,0,0),
	(18,'GBPCHF',5,1,1,0,'2019-01-17 02:50:41',1.27583,1.27606,1.27432,1.27592,1.27623,1.2748300000000001,0,0,0),
	(19,'GBPJPY',3,0,1,0,'2019-01-17 02:50:46',140.234,140.605,140.19,140.242,140.618,140.201,0,0,0),
	(20,'CADCHF',5,1,1,0,'2019-01-17 02:50:41',0.74656,0.7471,0.74631,0.7466,0.74719,0.74636,0,0,0),
	(43,'EURUSD.',5,0,0,0,'2019-01-17 02:50:35',1.1395,1.13998,1.13937,1.13968,1.14016,1.13956,0,0,0),
	(44,'EURUSD..',5,0,0,0,'2019-01-17 02:50:35',1.13944,1.13992,1.13931,1.13974,1.14022,1.13962,0,0,0),
	(54,'NZDCHF',5,0,0,0,'1970-01-01 00:00:00',0,0,0,0,0,0,0,0,0),
	(58,'NZDUSD',5,1,0,0,'2019-01-17 02:50:43',0.67561,0.6781,0.67561,0.67564,0.67814,0.67563,0,0,0),
	(59,'GBPAUD',5,0,0,0,'1970-01-01 00:00:00',0,0,0,0,0,0,0,0,0),
	(80,'EURUSD...',5,0,0,0,'2019-01-17 02:50:35',1.13934,1.13982,1.13921,1.13984,1.14032,1.13972,0,0,0),
	(81,'USDJPY.',3,0,0,0,'2019-01-17 02:50:45',108.856,109.107,108.825,108.876,109.13,108.845,0,0,0),
	(82,'USDJPY..',3,0,0,0,'2019-01-17 02:50:45',108.849,109.1,108.818,108.882,109.136,108.851,0,0,0),
	(83,'USDJPY...',3,0,0,0,'2019-01-17 02:50:45',108.838,109.089,108.807,108.893,109.147,108.862,0,0,0),
	(84,'CHFCAD',5,0,0,0,'1970-01-01 00:00:00',0,0,0,0,0,0,0,0,0);

/*!40000 ALTER TABLE `mt5_prices` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table mt5_report_params
# ------------------------------------------------------------

DROP TABLE IF EXISTS `mt5_report_params`;

CREATE TABLE `mt5_report_params` (
  `Param_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `Server` bigint(20) unsigned NOT NULL DEFAULT '0',
  `Report` varchar(64) NOT NULL DEFAULT '',
  `Type` int(10) unsigned NOT NULL DEFAULT '0',
  `Name` varchar(64) NOT NULL DEFAULT '',
  `Value` varchar(256) NOT NULL DEFAULT '',
  PRIMARY KEY (`Param_ID`),
  KEY `IDX_mt5_report_params_server` (`Server`),
  KEY `IDX_mt5_report_params_name` (`Report`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `mt5_report_params` WRITE;
/*!40000 ALTER TABLE `mt5_report_params` DISABLE KEYS */;

INSERT INTO `mt5_report_params` (`Param_ID`, `Server`, `Report`, `Type`, `Name`, `Value`)
VALUES
	(1,1,'Daily Trades',0,'Currency','USD'),
	(2,1,'Daily Dealing',0,'Currency','USD'),
	(3,1,'Daily Dealing',0,'Groups','*,!demo*,!contest*'),
	(4,1,'Daily Dealing',1,'Dangerous Tick Deviation','10'),
	(5,1,'Daily Dealing',2,'Dangerous Profit','10.0'),
	(6,1,'Daily Dealing',1,'Max Dangerous Actions Shown','50'),
	(7,1,'Daily Expert Advisors',0,'Currency','USD'),
	(8,1,'Daily Expert Advisors',0,'Groups','*,!demo*,!contest*'),
	(9,1,'Gateways Turnover',0,'Currency','USD'),
	(10,1,'Gateways Profit',0,'Currency','USD'),
	(11,1,'Gateways White Label',0,'Currency','USD'),
	(12,1,'Execution Types',0,'Currency','USD'),
	(13,1,'Trade Transactions',0,'Base Directory','Trade Transaction Report'),
	(14,1,'Trade Transactions',0,'Show group owner','Yes'),
	(15,1,'Trade Transactions',0,'Show daily transactions','Yes'),
	(16,1,'Trade Transactions',0,'Show reason','No'),
	(17,1,'Trade Transactions',0,'Show retcode','No'),
	(18,1,'Trade Transactions',0,'Show rejected','No'),
	(19,1,'Agents',0,'Groups','*');

/*!40000 ALTER TABLE `mt5_report_params` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table mt5_reports
# ------------------------------------------------------------

DROP TABLE IF EXISTS `mt5_reports`;

CREATE TABLE `mt5_reports` (
  `Name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `Server` bigint(20) unsigned NOT NULL DEFAULT '0',
  `Timestamp` bigint(20) NOT NULL DEFAULT '0',
  `Template` varchar(64) NOT NULL DEFAULT '',
  `Enable` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`Name`,`Server`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `mt5_reports` WRITE;
/*!40000 ALTER TABLE `mt5_reports` DISABLE KEYS */;

INSERT INTO `mt5_reports` (`Name`, `Server`, `Timestamp`, `Template`, `Enable`)
VALUES
	(X'4163636F756E74732047726F757073',1,131893354487156417,'Accounts Groups',1),
	(X'4163636F756E74732047726F777468',1,131893354487947373,'Accounts Growth',1),
	(X'4167656E7473',1,131914966817655443,'Agents',1),
	(X'4167656E74732044657461696C6564',1,131893354504412367,'Agents Detailed',1),
	(X'43726564697420466163696C697479',1,131893354494841899,'Credit Facility',1),
	(X'4461696C79204465616C696E67',1,131893354490261822,'Daily Dealing',1),
	(X'4461696C79204578706572742041647669736F7273',1,131893354491062649,'Daily Expert Advisors',1),
	(X'4461696C79205265706F727473',1,131893354495584130,'Daily Reports',1),
	(X'4461696C79205265706F7274732044657461696C6564',1,131893354496385027,'Daily Reports Detailed',1),
	(X'4461696C7920536572766572204C6F6773',1,131893354489500123,'Daily Server Logs',1),
	(X'4461696C7920547261646573',1,131893354488718988,'Daily Trades',1),
	(X'4465616C7320486973746F7279',1,131893354497166194,'Deals History',1),
	(X'4465706F73697420616E64205769746864726177616C',1,131893354497879090,'Deposit and Withdrawal',1),
	(X'457175697479',1,131893354498591892,'Equity',1),
	(X'457865637574696F6E205479706573',1,131893354502224700,'Execution Types',1),
	(X'47617465776179732050726F666974',1,131893354492625208,'Gateways Profit',1),
	(X'4761746577617973205475726E6F766572',1,131893354491814714,'Gateways Turnover',1),
	(X'4761746577617973205768697465204C6162656C',1,131893354493357646,'Gateways White Label',1),
	(X'4D617267696E2043616C6C73',1,131893354499334160,'Margin Calls',1),
	(X'4F726465727320486973746F7279',1,131893354500027412,'Orders History',1),
	(X'53656772656761746564',1,131893354500779391,'Segregated',1),
	(X'53746F704F757420436F6D70656E736174696F6E73',1,131893354505164228,'StopOut Compensations',1),
	(X'53756D6D617279',1,131893354501482535,'Summary',1),
	(X'5472616465204163636F756E7473',1,131893354502976680,'Trade Accounts',1),
	(X'5472616465204D6F64696669636174696F6E73',1,131893354503679840,'Trade Modifications',1),
	(X'5472616465205472616E73616374696F6E73',1,131893354505857488,'Trade Transactions',1);

/*!40000 ALTER TABLE `mt5_reports` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table mt5_routing
# ------------------------------------------------------------

DROP TABLE IF EXISTS `mt5_routing`;

CREATE TABLE `mt5_routing` (
  `Name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `Timestamp` bigint(20) NOT NULL DEFAULT '0',
  `Mode` int(10) unsigned NOT NULL DEFAULT '0',
  `Request` int(10) unsigned NOT NULL DEFAULT '0',
  `Type` int(10) unsigned NOT NULL DEFAULT '0',
  `Flags` int(10) unsigned NOT NULL DEFAULT '0',
  `Action` int(10) unsigned NOT NULL DEFAULT '0',
  `ActionValueString` varchar(128) DEFAULT NULL,
  `ActionValueInt` bigint(20) DEFAULT NULL,
  `ActionValueUInt` bigint(20) unsigned DEFAULT NULL,
  `ActionValueFloat` double DEFAULT NULL,
  `ActionType` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `mt5_routing` WRITE;
/*!40000 ALTER TABLE `mt5_routing` DISABLE KEYS */;

INSERT INTO `mt5_routing` (`Name`, `Timestamp`, `Mode`, `Request`, `Type`, `Flags`, `Action`, `ActionValueString`, `ActionValueInt`, `ActionValueUInt`, `ActionValueFloat`, `ActionType`)
VALUES
	(X'41426F6F6B',131920943286297716,1,33554431,255,0,1005,NULL,NULL,NULL,NULL,0);

/*!40000 ALTER TABLE `mt5_routing` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table mt5_routing_conds
# ------------------------------------------------------------

DROP TABLE IF EXISTS `mt5_routing_conds`;

CREATE TABLE `mt5_routing_conds` (
  `Condition_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `RoutingName` varchar(64) NOT NULL DEFAULT '',
  `Condition` int(10) unsigned NOT NULL DEFAULT '0',
  `Rule` int(10) unsigned NOT NULL DEFAULT '0',
  `ValueString` varchar(128) DEFAULT NULL,
  `ValueInt` bigint(20) DEFAULT NULL,
  `ValueUInt` bigint(20) unsigned DEFAULT NULL,
  `ValueFloat` double DEFAULT NULL,
  `Type` int(10) unsigned NOT NULL DEFAULT '0',
  `ValueUIntExt` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`Condition_ID`),
  KEY `IDX_mt5_routing_conds_name` (`RoutingName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `mt5_routing_conds` WRITE;
/*!40000 ALTER TABLE `mt5_routing_conds` DISABLE KEYS */;

INSERT INTO `mt5_routing_conds` (`Condition_ID`, `RoutingName`, `Condition`, `Rule`, `ValueString`, `ValueInt`, `ValueUInt`, `ValueFloat`, `Type`, `ValueUIntExt`)
VALUES
	(1,'ABook',1001,0,'*',NULL,NULL,NULL,1,NULL),
	(2,'ABook',1,0,'Forex\\*',NULL,NULL,NULL,1,NULL);

/*!40000 ALTER TABLE `mt5_routing_conds` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table mt5_routing_dealers
# ------------------------------------------------------------

DROP TABLE IF EXISTS `mt5_routing_dealers`;

CREATE TABLE `mt5_routing_dealers` (
  `Login` bigint(20) unsigned NOT NULL DEFAULT '0',
  `RoutingName` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `Name` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`Login`,`RoutingName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `mt5_routing_dealers` WRITE;
/*!40000 ALTER TABLE `mt5_routing_dealers` DISABLE KEYS */;

INSERT INTO `mt5_routing_dealers` (`Login`, `RoutingName`, `Name`)
VALUES
	(5,X'41426F6F6B','MT5 Bridge Gateway');

/*!40000 ALTER TABLE `mt5_routing_dealers` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table mt5_symbols
# ------------------------------------------------------------

DROP TABLE IF EXISTS `mt5_symbols`;

CREATE TABLE `mt5_symbols` (
  `Symbol_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `Symbol` varchar(32) NOT NULL DEFAULT '',
  `Timestamp` bigint(20) NOT NULL DEFAULT '0',
  `Path` varchar(128) NOT NULL DEFAULT '',
  `ISIN` varchar(16) NOT NULL DEFAULT '',
  `Description` varchar(64) NOT NULL DEFAULT '',
  `International` varchar(64) NOT NULL DEFAULT '',
  `Basis` varchar(32) NOT NULL DEFAULT '',
  `Source` varchar(32) NOT NULL DEFAULT '',
  `Page` varchar(256) NOT NULL DEFAULT '',
  `CurrencyBase` varchar(16) NOT NULL DEFAULT '',
  `CurrencyBaseDigits` int(10) unsigned NOT NULL DEFAULT '0',
  `CurrencyProfit` varchar(16) NOT NULL DEFAULT '',
  `CurrencyProfitDigits` int(10) unsigned NOT NULL DEFAULT '0',
  `CurrencyMargin` varchar(16) NOT NULL DEFAULT '',
  `CurrencyMarginDigits` int(10) unsigned NOT NULL DEFAULT '0',
  `Color` int(10) unsigned NOT NULL DEFAULT '0',
  `ColorBackground` int(10) unsigned NOT NULL DEFAULT '0',
  `Digits` int(10) unsigned NOT NULL DEFAULT '0',
  `Point` double NOT NULL DEFAULT '0',
  `Multiply` double NOT NULL DEFAULT '0',
  `TickFlags` bigint(20) unsigned NOT NULL DEFAULT '0',
  `TickBookDepth` int(10) unsigned NOT NULL DEFAULT '0',
  `TickChartMode` int(10) unsigned NOT NULL DEFAULT '0',
  `FilterSoft` int(10) unsigned NOT NULL DEFAULT '0',
  `FilterSoftTicks` int(10) unsigned NOT NULL DEFAULT '0',
  `FilterHard` int(10) unsigned NOT NULL DEFAULT '0',
  `FilterHardTicks` int(10) unsigned NOT NULL DEFAULT '0',
  `FilterDiscard` int(10) unsigned NOT NULL DEFAULT '0',
  `FilterSpreadMax` int(10) unsigned NOT NULL DEFAULT '0',
  `FilterSpreadMin` int(10) unsigned NOT NULL DEFAULT '0',
  `FilterGap` int(10) unsigned NOT NULL DEFAULT '0',
  `FilterGapTicks` int(10) unsigned NOT NULL DEFAULT '0',
  `TradeMode` int(10) unsigned NOT NULL DEFAULT '0',
  `TradeFlags` bigint(20) unsigned NOT NULL DEFAULT '0',
  `CalcMode` int(10) unsigned NOT NULL DEFAULT '0',
  `ExecMode` int(10) unsigned NOT NULL DEFAULT '0',
  `GTCMode` int(10) unsigned NOT NULL DEFAULT '0',
  `FillFlags` int(10) unsigned NOT NULL DEFAULT '0',
  `ExpirFlags` int(10) unsigned NOT NULL DEFAULT '0',
  `OrderFlags` int(10) unsigned NOT NULL DEFAULT '0',
  `Spread` int(11) NOT NULL DEFAULT '0',
  `SpreadBalance` int(11) NOT NULL DEFAULT '0',
  `SpreadDiff` int(11) NOT NULL DEFAULT '0',
  `SpreadDiffBalance` int(11) NOT NULL DEFAULT '0',
  `TickValue` double NOT NULL DEFAULT '0',
  `TickSize` double NOT NULL DEFAULT '0',
  `ContractSize` double NOT NULL DEFAULT '0',
  `StopsLevel` int(11) NOT NULL DEFAULT '0',
  `FreezeLevel` int(11) NOT NULL DEFAULT '0',
  `QuotesTimeout` int(10) unsigned NOT NULL DEFAULT '0',
  `VolumeMinExt` bigint(20) unsigned NOT NULL DEFAULT '0',
  `VolumeMaxExt` bigint(20) unsigned NOT NULL DEFAULT '0',
  `VolumeStepExt` bigint(20) unsigned NOT NULL DEFAULT '0',
  `VolumeLimitExt` bigint(20) unsigned NOT NULL DEFAULT '0',
  `MarginFlags` int(10) unsigned NOT NULL DEFAULT '0',
  `MarginInitial` double NOT NULL DEFAULT '0',
  `MarginMaintenance` double NOT NULL DEFAULT '0',
  `MarginInitialBuy` double NOT NULL DEFAULT '0',
  `MarginInitialSell` double NOT NULL DEFAULT '0',
  `MarginInitialBuyLimit` double NOT NULL DEFAULT '0',
  `MarginInitialSellLimit` double NOT NULL DEFAULT '0',
  `MarginInitialBuyStop` double NOT NULL DEFAULT '0',
  `MarginInitialSellStop` double NOT NULL DEFAULT '0',
  `MarginInitialBuyStopLimit` double NOT NULL DEFAULT '0',
  `MarginInitialSellStopLimit` double NOT NULL DEFAULT '0',
  `MarginMaintenanceBuy` double NOT NULL DEFAULT '0',
  `MarginMaintenanceSell` double NOT NULL DEFAULT '0',
  `MarginMaintenanceBuyLimit` double NOT NULL DEFAULT '0',
  `MarginMaintenanceSellLimit` double NOT NULL DEFAULT '0',
  `MarginMaintenanceBuyStop` double NOT NULL DEFAULT '0',
  `MarginMaintenanceSellStop` double NOT NULL DEFAULT '0',
  `MarginMaintenanceBuyStopLimit` double NOT NULL DEFAULT '0',
  `MarginMaintenanceSellStopLimit` double NOT NULL DEFAULT '0',
  `MarginRateLiquidity` double NOT NULL DEFAULT '0',
  `MarginHedged` double NOT NULL DEFAULT '0',
  `MarginRateCurrency` double NOT NULL DEFAULT '0',
  `SwapMode` int(10) unsigned NOT NULL DEFAULT '0',
  `SwapLong` double NOT NULL DEFAULT '0',
  `SwapShort` double NOT NULL DEFAULT '0',
  `Swap3Day` int(11) NOT NULL DEFAULT '0',
  `TimeStart` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `TimeExpiration` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `REFlags` int(10) unsigned NOT NULL DEFAULT '0',
  `RETimeout` int(10) unsigned NOT NULL DEFAULT '0',
  `IECheckMode` int(10) unsigned NOT NULL DEFAULT '0',
  `IETimeout` int(10) unsigned NOT NULL DEFAULT '0',
  `IESlipProfit` int(10) unsigned NOT NULL DEFAULT '0',
  `IESlipLosing` int(10) unsigned NOT NULL DEFAULT '0',
  `IEVolumeMaxExt` bigint(20) unsigned NOT NULL DEFAULT '0',
  `PriceSettle` double NOT NULL DEFAULT '0',
  `PriceLimitMax` double NOT NULL DEFAULT '0',
  `PriceLimitMin` double NOT NULL DEFAULT '0',
  `PriceStrike` double NOT NULL DEFAULT '0',
  `OptionMode` int(10) unsigned NOT NULL DEFAULT '0',
  `FaceValue` double NOT NULL DEFAULT '0',
  `AccruedInterest` double NOT NULL DEFAULT '0',
  `SpliceType` int(10) unsigned NOT NULL DEFAULT '0',
  `SpliceTimeType` int(10) unsigned NOT NULL DEFAULT '0',
  `SpliceTimeDays` int(10) unsigned NOT NULL DEFAULT '0',
  `VolumeMin` bigint(20) unsigned DEFAULT NULL,
  `VolumeMax` bigint(20) unsigned DEFAULT NULL,
  `VolumeStep` bigint(20) unsigned DEFAULT NULL,
  `VolumeLimit` bigint(20) unsigned DEFAULT NULL,
  `IEVolumeMax` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`Symbol_ID`),
  KEY `IDX_mt5_symbols_Symbol` (`Symbol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `mt5_symbols` WRITE;
/*!40000 ALTER TABLE `mt5_symbols` DISABLE KEYS */;

INSERT INTO `mt5_symbols` (`Symbol_ID`, `Symbol`, `Timestamp`, `Path`, `ISIN`, `Description`, `International`, `Basis`, `Source`, `Page`, `CurrencyBase`, `CurrencyBaseDigits`, `CurrencyProfit`, `CurrencyProfitDigits`, `CurrencyMargin`, `CurrencyMarginDigits`, `Color`, `ColorBackground`, `Digits`, `Point`, `Multiply`, `TickFlags`, `TickBookDepth`, `TickChartMode`, `FilterSoft`, `FilterSoftTicks`, `FilterHard`, `FilterHardTicks`, `FilterDiscard`, `FilterSpreadMax`, `FilterSpreadMin`, `FilterGap`, `FilterGapTicks`, `TradeMode`, `TradeFlags`, `CalcMode`, `ExecMode`, `GTCMode`, `FillFlags`, `ExpirFlags`, `OrderFlags`, `Spread`, `SpreadBalance`, `SpreadDiff`, `SpreadDiffBalance`, `TickValue`, `TickSize`, `ContractSize`, `StopsLevel`, `FreezeLevel`, `QuotesTimeout`, `VolumeMinExt`, `VolumeMaxExt`, `VolumeStepExt`, `VolumeLimitExt`, `MarginFlags`, `MarginInitial`, `MarginMaintenance`, `MarginInitialBuy`, `MarginInitialSell`, `MarginInitialBuyLimit`, `MarginInitialSellLimit`, `MarginInitialBuyStop`, `MarginInitialSellStop`, `MarginInitialBuyStopLimit`, `MarginInitialSellStopLimit`, `MarginMaintenanceBuy`, `MarginMaintenanceSell`, `MarginMaintenanceBuyLimit`, `MarginMaintenanceSellLimit`, `MarginMaintenanceBuyStop`, `MarginMaintenanceSellStop`, `MarginMaintenanceBuyStopLimit`, `MarginMaintenanceSellStopLimit`, `MarginRateLiquidity`, `MarginHedged`, `MarginRateCurrency`, `SwapMode`, `SwapLong`, `SwapShort`, `Swap3Day`, `TimeStart`, `TimeExpiration`, `REFlags`, `RETimeout`, `IECheckMode`, `IETimeout`, `IESlipProfit`, `IESlipLosing`, `IEVolumeMaxExt`, `PriceSettle`, `PriceLimitMax`, `PriceLimitMin`, `PriceStrike`, `OptionMode`, `FaceValue`, `AccruedInterest`, `SpliceType`, `SpliceTimeType`, `SpliceTimeDays`, `VolumeMin`, `VolumeMax`, `VolumeStep`, `VolumeLimit`, `IEVolumeMax`)
VALUES
	(2,'GBPUSD',131919978989366784,'Forex\\GBPUSD','','Great Britain Pound vs US Dollar','','','','http://www.google.com/finance?q=GBPUSD','GBP',2,'USD',2,'GBP',2,0,16777215,5,0.00001,100000,1,32,0,150,3,600,3,30000,0,0,0,0,4,0,0,1,0,0,15,127,0,1,0,0,0,0,100000,30,0,0,1000000,10000000000,1000000,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,100000,0,0,0,0,3,'1970-01-01 00:00:00','1970-01-01 00:00:00',0,7,0,7,30,30,0,0,0,0,0,0,0,0,0,0,0,100,1000000,100,0,0),
	(3,'USDCHF',131919978989366785,'Forex\\USDCHF','','US Dollar vs Swiss Franc','','','','http://www.google.com/finance?q=USDCHF','USD',2,'CHF',2,'USD',2,0,16777215,5,0.00001,100000,1,32,0,200,3,800,3,40000,0,0,0,0,4,0,0,1,0,0,15,127,40,1,0,0,0,0,100000,40,0,0,1000000,10000000000,1000000,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,100000,0,0,0,0,3,'1970-01-01 00:00:00','1970-01-01 00:00:00',0,7,0,7,40,40,0,0,0,0,0,0,0,0,0,0,0,100,1000000,100,0,0),
	(4,'USDJPY',131919978989376193,'Forex\\USDJPY','','US Dollar vs Japanese Yen','','','','http://www.google.com/finance?q=USDJPY','USD',2,'JPY',0,'USD',2,0,16777215,3,0.001,1000,1,32,0,150,3,600,3,30000,0,0,0,0,4,0,0,1,0,0,15,127,30,1,0,0,0,0,100000,30,0,0,1000000,10000000000,1000000,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,100000,0,0,0,0,3,'1970-01-01 00:00:00','1970-01-01 00:00:00',0,7,0,7,30,30,0,0,0,0,0,0,0,0,0,0,0,100,1000000,100,0,0),
	(5,'USDCAD',131919978989376194,'Forex\\USDCAD','','US Dollar vs Canadian Dollar','','','','http://www.google.com/finance?q=USDCAD','USD',2,'CAD',2,'USD',2,0,16777215,5,0.00001,100000,1,32,0,200,3,800,3,40000,0,0,0,0,4,0,0,1,0,0,15,127,40,1,0,0,0,0,100000,40,0,0,1000000,10000000000,1000000,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,100000,0,0,0,0,3,'1970-01-01 00:00:00','1970-01-01 00:00:00',0,7,0,7,40,40,0,0,0,0,0,0,0,0,0,0,0,100,1000000,100,0,0),
	(6,'AUDUSD',131919978989376195,'Forex\\AUDUSD','','Australian Dollar vs US Dollar','','','','http://www.google.com/finance?q=AUDUSD','AUD',2,'USD',2,'AUD',2,0,16777215,5,0.00001,100000,1,32,0,150,3,600,3,30000,0,0,0,0,4,0,0,1,0,0,15,127,30,1,0,0,0,0,100000,30,0,0,1000000,10000000000,1000000,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,100000,0,0,0,0,3,'1970-01-01 00:00:00','1970-01-01 00:00:00',0,7,0,7,30,30,0,0,0,0,0,0,0,0,0,0,0,100,1000000,100,0,0),
	(7,'AUDNZD',131919978989376196,'Forex\\AUDNZD','','Australian Dollar vs New Zealand Dollar','','','','http://www.google.com/finance?q=AUDNZD','AUD',2,'NZD',2,'AUD',2,0,16777215,5,0.00001,100000,1,32,0,600,3,2400,3,120000,0,0,0,0,4,0,0,1,0,0,15,127,120,1,0,0,0,0,100000,120,0,0,1000000,10000000000,1000000,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,100000,0,0,0,0,3,'1970-01-01 00:00:00','1970-01-01 00:00:00',0,7,0,7,120,120,0,0,0,0,0,0,0,0,0,0,0,100,1000000,100,0,0),
	(8,'AUDCAD',131919978989376197,'Forex\\AUDCAD','','Australian Dollar vs Canadian Dollar','','','','http://www.google.com/finance?q=AUDCAD','AUD',2,'CAD',2,'AUD',2,0,16777215,5,0.00001,100000,1,32,0,500,3,2000,3,100000,0,0,0,0,4,0,0,1,0,0,15,127,100,1,0,0,0,0,100000,100,0,0,1000000,10000000000,1000000,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,100000,0,0,0,0,3,'1970-01-01 00:00:00','1970-01-01 00:00:00',0,7,0,7,100,100,0,0,0,0,0,0,0,0,0,0,0,100,1000000,100,0,0),
	(9,'AUDCHF',131919978989376198,'Forex\\AUDCHF','','Australian Dollar vs Swiss Franc','','','','http://www.google.com/finance?q=AUDCHF','AUD',2,'CHF',2,'AUD',2,0,16777215,5,0.00001,100000,1,32,0,400,3,1600,3,80000,0,0,0,0,4,0,0,1,0,0,15,127,80,1,0,0,0,0,100000,80,0,0,1000000,10000000000,1000000,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,100000,0,0,0,0,3,'1970-01-01 00:00:00','1970-01-01 00:00:00',0,7,0,7,80,80,0,0,0,0,0,0,0,0,0,0,0,100,1000000,100,0,0),
	(11,'CHFJPY',131919978989376199,'Forex\\CHFJPY','','Swiss Frank vs Japanese Yen','','','','http://www.google.com/finance?q=CHFJPY','CHF',2,'JPY',0,'CHF',2,0,16777215,3,0.001,1000,1,32,0,300,3,1200,3,60000,0,0,0,0,4,0,0,1,0,0,15,127,60,1,0,0,0,0,100000,60,0,0,1000000,10000000000,1000000,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,100000,0,0,0,0,3,'1970-01-01 00:00:00','1970-01-01 00:00:00',0,7,0,7,60,60,0,0,0,0,0,0,0,0,0,0,0,100,1000000,100,0,0),
	(12,'EURGBP',131919978989386023,'Forex\\EURGBP','','Euro vs Great Britain Pound ','','','','http://www.google.com/finance?q=EURGBP','EUR',2,'GBP',2,'EUR',2,0,16777215,5,0.00001,100000,1,32,0,150,3,600,3,30000,0,0,0,0,4,0,0,1,0,0,15,127,30,1,0,0,0,0,100000,30,0,0,1000000,10000000000,1000000,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,100000,0,0,0,0,3,'1970-01-01 00:00:00','1970-01-01 00:00:00',0,7,0,7,30,30,0,0,0,0,0,0,0,0,0,0,0,100,1000000,100,0,0),
	(13,'EURAUD',131919978989386024,'Forex\\EURAUD','','Euro vs Australian Dollar','','','','http://www.google.com/finance?q=EURAUD','EUR',2,'AUD',2,'EUR',2,0,16777215,5,0.00001,100000,1,32,0,500,3,2000,3,100000,0,0,0,0,4,0,0,1,0,0,15,127,100,1,0,0,0,0,100000,100,0,0,1000000,10000000000,1000000,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,100000,0,0,0,0,3,'1970-01-01 00:00:00','1970-01-01 00:00:00',0,7,0,7,100,100,0,0,0,0,0,0,0,0,0,0,0,100,1000000,100,0,0),
	(14,'EURCHF',131919978989386025,'Forex\\EURCHF','','Euro vs Swiss Franc','','','','http://www.google.com/finance?q=EURCHF','EUR',2,'CHF',2,'EUR',2,0,16777215,5,0.00001,100000,1,32,0,150,3,600,3,30000,0,0,0,0,4,0,0,1,0,0,15,127,30,1,0,0,0,0,100000,30,0,0,1000000,10000000000,1000000,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,100000,0,0,0,0,3,'1970-01-01 00:00:00','1970-01-01 00:00:00',0,7,0,7,30,30,0,0,0,0,0,0,0,0,0,0,0,100,1000000,100,0,0),
	(15,'EURJPY',131919978989386026,'Forex\\EURJPY','','Euro vs Japanese Yen','','','','http://www.google.com/finance?q=EURJPY','EUR',2,'JPY',0,'EUR',2,0,16777215,3,0.001,1000,1,32,0,150,3,600,3,30000,0,0,0,0,4,0,0,1,0,0,15,127,30,1,0,0,0,0,100000,30,0,0,1000000,10000000000,1000000,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,100000,0,0,0,0,3,'1970-01-01 00:00:00','1970-01-01 00:00:00',0,7,0,7,30,30,0,0,0,0,0,0,0,0,0,0,0,100,1000000,100,0,0),
	(16,'EURNZD',131919978989386027,'Forex\\EURNZD','','Euro vs New Zealand Dollar','','','','http://www.google.com/finance?q=EURNZD','EUR',2,'NZD',2,'EUR',2,0,16777215,5,0.00001,100000,1,32,0,600,3,2400,3,120000,0,0,0,0,4,0,0,1,0,0,15,127,120,1,0,0,0,0,100000,120,0,0,1000000,10000000000,1000000,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,100000,0,0,0,0,3,'1970-01-01 00:00:00','1970-01-01 00:00:00',0,7,0,7,120,120,0,0,0,0,0,0,0,0,0,0,0,100,1000000,100,0,0),
	(17,'EURCAD',131919978989386028,'Forex\\EURCAD','','Euro vs Canadian Dollar','','','','http://www.google.com/finance?q=EURCAD','EUR',2,'CAD',2,'EUR',2,0,16777215,5,0.00001,100000,1,32,0,400,3,1600,3,80000,0,0,0,0,4,0,0,1,0,0,15,127,80,1,0,0,0,0,100000,80,0,0,1000000,10000000000,1000000,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,100000,0,0,0,0,3,'1970-01-01 00:00:00','1970-01-01 00:00:00',0,7,0,7,80,80,0,0,0,0,0,0,0,0,0,0,0,100,1000000,100,0,0),
	(18,'GBPCHF',131919978989386029,'Forex\\GBPCHF','','Great Britain Pound vs Swiss Franc','','','','http://www.google.com/finance?q=GBPCHF','GBP',2,'CHF',2,'GBP',2,0,16777215,5,0.00001,100000,1,32,0,350,3,1400,3,70000,0,0,0,0,4,0,0,1,0,0,15,127,70,1,0,0,0,0,100000,70,0,0,1000000,10000000000,1000000,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,100000,0,0,0,0,3,'1970-01-01 00:00:00','1970-01-01 00:00:00',0,7,0,7,70,70,0,0,0,0,0,0,0,0,0,0,0,100,1000000,100,0,0),
	(19,'GBPJPY',131919978989386030,'Forex\\GBPJPY','','Great Britain Pound vs Japanese Yen','','','','http://www.google.com/finance?q=GBPJPY','GBP',2,'JPY',0,'GBP',2,0,16777215,3,0.001,1000,1,32,0,400,3,1600,3,80000,0,0,0,0,4,0,0,1,0,0,15,127,80,1,0,0,0,0,100000,80,0,0,1000000,10000000000,1000000,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,100000,0,0,0,0,3,'1970-01-01 00:00:00','1970-01-01 00:00:00',0,7,0,7,80,80,0,0,0,0,0,0,0,0,0,0,0,100,1000000,100,0,0),
	(20,'CADCHF',131919978989395833,'Forex\\CADCHF','','Canadian Dollar vs Swiss Franc','','','','http://www.google.com/finance?q=CADCHF','CAD',2,'CHF',2,'CAD',2,0,16777215,5,0.00001,100000,1,32,0,300,3,1200,3,60000,0,0,0,0,4,0,0,1,0,0,15,127,60,1,0,0,0,0,100000,60,0,0,1000000,10000000000,1000000,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,100000,0,0,0,0,3,'1970-01-01 00:00:00','1970-01-01 00:00:00',0,7,0,7,60,60,0,0,0,0,0,0,0,0,0,0,0,100,1000000,100,0,0),
	(43,'EURUSD.',131921035904764222,'Forex\\18\\EURUSD.','','Euro vs US Dollar','','EURUSD','','','EUR',2,'USD',2,'USD',2,4278190080,4278190080,5,0.00001,100000,1,0,0,100,10,500,10,500,0,0,0,0,4,2,0,1,0,1,15,127,0,0,0,0,0,0,100000,5,0,600,10000000,10000000000,1000,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,100000,0,0,0,0,3,'1970-01-01 00:00:00','1970-01-01 00:00:00',0,7,0,5,2,2,0,0,0,0,0,0,0,0,0,0,0,1000,1000000,0,0,0),
	(44,'EURUSD..',131921036041925285,'Forex\\30\\EURUSD..','','Euro vs US Dollar','','','','','EUR',2,'USD',2,'USD',2,4278190080,4278190080,5,0.00001,100000,1,0,0,100,10,500,10,500,0,0,0,0,4,2,0,1,0,1,15,127,0,0,0,0,0,0,100000,5,0,600,1,10000000000000000000,1,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,100000,0,0,0,0,3,'1970-01-01 00:00:00','1970-01-01 00:00:00',0,7,0,5,2,2,0,0,0,0,0,0,0,0,0,0,0,0,1000000000000000,0,0,0),
	(54,'NZDCHF',131921063463144267,'Forex\\NZDCHF','','New Zealand Dollar vs Swiss Franc','','','','','NZD',2,'CHF',2,'USD',2,4278190080,4278190080,5,0.00001,100000,1,0,0,100,10,500,10,500,0,0,0,0,4,2,0,1,0,1,15,127,0,0,0,0,0,0,100000,5,0,600,1,10000000000000000000,1,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,100000,0,0,0,0,3,'1970-01-01 00:00:00','1970-01-01 00:00:00',0,7,0,5,2,2,0,0,0,0,0,0,0,0,0,0,0,0,1000000000000000,0,0,0),
	(58,'NZDUSD',131921059253603707,'Forex\\NZDUSD','','New Zealand Dollar vs US Dollar','','','','','NZD',2,'USD',2,'USD',2,4278190080,4278190080,5,0.00001,100000,1,0,0,100,10,500,10,500,0,0,0,0,4,2,0,1,0,1,15,127,0,0,0,0,0,0,100000,5,0,600,1,10000000000000000000,1,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,100000,0,0,0,0,3,'1970-01-01 00:00:00','1970-01-01 00:00:00',0,7,0,5,2,2,0,0,0,0,0,0,0,0,0,0,0,0,1000000000000000,0,0,0),
	(59,'GBPAUD',131921062863952225,'Forex\\GBPAUD','','Great Britain Pound vs Australian Dollar','','','','','GBP',2,'AUD',2,'USD',2,4278190080,4278190080,5,0.00001,100000,1,0,0,100,10,500,10,500,0,0,0,0,4,2,0,1,0,1,15,127,0,0,0,0,0,0,100000,5,0,600,1,10000000000000000000,1,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,100000,0,0,0,0,3,'1970-01-01 00:00:00','1970-01-01 00:00:00',0,7,0,5,2,2,0,0,0,0,0,0,0,0,0,0,0,0,1000000000000000,0,0,0),
	(80,'EURUSD',131920929934323098,'Forex\\EURUSD','','Euro vs US Dollar','','','','','EUR',2,'USD',2,'USD',2,4278190080,4278190080,5,0.00001,100000,1,0,0,100,10,500,10,500,0,0,0,0,4,2,0,1,0,1,15,127,0,0,0,0,0,0,100000,5,0,600,1,10000000000000000000,1,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,100000,0,0,0,0,3,'1970-01-01 00:00:00','1970-01-01 00:00:00',0,7,0,5,2,2,0,0,0,0,0,0,0,0,0,0,0,0,1000000000000000,0,0,0),
	(82,'EURUSD...',131921036171058782,'Forex\\50\\EURUSD...','','Euro vs US Dollar','','','','','EUR',2,'USD',2,'USD',2,4278190080,4278190080,5,0.00001,100000,1,0,0,100,10,500,10,500,0,0,0,0,4,2,0,1,0,1,15,127,0,0,0,0,0,0,100000,5,0,600,1,10000000000000000000,1,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,100000,0,0,0,0,3,'1970-01-01 00:00:00','1970-01-01 00:00:00',0,7,0,5,2,2,0,0,0,0,0,0,0,0,0,0,0,0,1000000000000000,0,0,0),
	(83,'USDJPY.',131921045379226230,'Forex\\18\\USDJPY.','','US Dollar vs Japanese Yen','','','','','USD',2,'JPY',0,'USD',2,4278190080,4278190080,3,0.001,1000,1,0,0,100,10,500,10,500,0,0,0,0,4,2,0,1,0,1,15,127,0,0,0,0,0,0,100000,5,0,600,10000000,10000000000,100000,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,100000,0,0,0,0,3,'1970-01-01 00:00:00','1970-01-01 00:00:00',0,7,0,5,2,2,0,0,0,0,0,0,0,0,0,0,0,1000,1000000,10,0,0),
	(84,'USDJPY..',131921045487802674,'Forex\\30\\USDJPY..','','US Dollar vs Japanese Yen','','','','','USD',2,'JPY',0,'USD',2,4278190080,4278190080,3,0.001,1000,1,0,0,100,10,500,10,500,0,0,0,0,4,2,0,1,0,1,15,127,0,0,0,0,0,0,100000,5,0,600,10000000,10000000000,100000,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,100000,0,0,0,0,3,'1970-01-01 00:00:00','1970-01-01 00:00:00',0,7,0,5,2,2,0,0,0,0,0,0,0,0,0,0,0,1000,1000000,10,0,0),
	(85,'USDJPY...',131921045580031193,'Forex\\50\\USDJPY...','','US Dollar vs Japanese Yen','','','','','USD',2,'JPY',0,'USD',2,4278190080,4278190080,3,0.001,1000,1,0,0,100,10,500,10,500,0,0,0,0,4,2,0,1,0,1,15,127,0,0,0,0,0,0,100000,5,0,600,10000000,10000000000,100000,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,100000,0,0,0,0,3,'1970-01-01 00:00:00','1970-01-01 00:00:00',0,7,0,5,2,2,0,0,0,0,0,0,0,0,0,0,0,1000,1000000,10,0,0),
	(86,'CHFCAD',131921064648871612,'Forex\\CHFCAD','','Swiss Franc vs Canadian Dollar','','','','','CHF',2,'CAD',2,'USD',2,4278190080,4278190080,5,0.00001,100000,1,0,0,100,10,500,10,500,0,0,0,0,4,2,0,1,0,1,15,127,0,0,0,0,0,0,100000,5,0,600,1,10000000000000000000,1,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,100000,0,0,0,0,3,'1970-01-01 00:00:00','1970-01-01 00:00:00',0,7,0,5,2,2,0,0,0,0,0,0,0,0,0,0,0,0,1000000000000000,0,0,0);

/*!40000 ALTER TABLE `mt5_symbols` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table mt5_symbols_sessions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `mt5_symbols_sessions`;

CREATE TABLE `mt5_symbols_sessions` (
  `Session_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `Symbol_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `Type` int(10) unsigned NOT NULL DEFAULT '0',
  `Day` int(10) unsigned NOT NULL DEFAULT '0',
  `Open` int(10) unsigned NOT NULL DEFAULT '0',
  `Close` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`Session_ID`),
  KEY `IDX_mt5_symbols_sessions_id` (`Symbol_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `mt5_symbols_sessions` WRITE;
/*!40000 ALTER TABLE `mt5_symbols_sessions` DISABLE KEYS */;

INSERT INTO `mt5_symbols_sessions` (`Session_ID`, `Symbol_ID`, `Type`, `Day`, `Open`, `Close`)
VALUES
	(11,2,0,1,0,1440),
	(12,2,0,2,0,1440),
	(13,2,0,3,0,1440),
	(14,2,0,4,0,1440),
	(15,2,0,5,0,1440),
	(16,2,1,1,0,1440),
	(17,2,1,2,0,1440),
	(18,2,1,3,0,1440),
	(19,2,1,4,0,1440),
	(20,2,1,5,0,1440),
	(21,3,0,1,0,1440),
	(22,3,0,2,0,1440),
	(23,3,0,3,0,1440),
	(24,3,0,4,0,1440),
	(25,3,0,5,0,1440),
	(26,3,1,1,0,1440),
	(27,3,1,2,0,1440),
	(28,3,1,3,0,1440),
	(29,3,1,4,0,1440),
	(30,3,1,5,0,1440),
	(31,4,0,1,0,1440),
	(32,4,0,2,0,1440),
	(33,4,0,3,0,1440),
	(34,4,0,4,0,1440),
	(35,4,0,5,0,1440),
	(36,4,1,1,0,1440),
	(37,4,1,2,0,1440),
	(38,4,1,3,0,1440),
	(39,4,1,4,0,1440),
	(40,4,1,5,0,1440),
	(41,5,0,1,0,1440),
	(42,5,0,2,0,1440),
	(43,5,0,3,0,1440),
	(44,5,0,4,0,1440),
	(45,5,0,5,0,1440),
	(46,5,1,1,0,1440),
	(47,5,1,2,0,1440),
	(48,5,1,3,0,1440),
	(49,5,1,4,0,1440),
	(50,5,1,5,0,1440),
	(51,6,0,1,0,1440),
	(52,6,0,2,0,1440),
	(53,6,0,3,0,1440),
	(54,6,0,4,0,1440),
	(55,6,0,5,0,1440),
	(56,6,1,1,0,1440),
	(57,6,1,2,0,1440),
	(58,6,1,3,0,1440),
	(59,6,1,4,0,1440),
	(60,6,1,5,0,1440),
	(61,7,0,1,0,1440),
	(62,7,0,2,0,1440),
	(63,7,0,3,0,1440),
	(64,7,0,4,0,1440),
	(65,7,0,5,0,1440),
	(66,7,1,1,0,1440),
	(67,7,1,2,0,1440),
	(68,7,1,3,0,1440),
	(69,7,1,4,0,1440),
	(70,7,1,5,0,1440),
	(71,8,0,1,0,1440),
	(72,8,0,2,0,1440),
	(73,8,0,3,0,1440),
	(74,8,0,4,0,1440),
	(75,8,0,5,0,1440),
	(76,8,1,1,0,1440),
	(77,8,1,2,0,1440),
	(78,8,1,3,0,1440),
	(79,8,1,4,0,1440),
	(80,8,1,5,0,1440),
	(81,9,0,1,0,1440),
	(82,9,0,2,0,1440),
	(83,9,0,3,0,1440),
	(84,9,0,4,0,1440),
	(85,9,0,5,0,1440),
	(86,9,1,1,0,1440),
	(87,9,1,2,0,1440),
	(88,9,1,3,0,1440),
	(89,9,1,4,0,1440),
	(90,9,1,5,0,1440),
	(101,11,0,1,0,1440),
	(102,11,0,2,0,1440),
	(103,11,0,3,0,1440),
	(104,11,0,4,0,1440),
	(105,11,0,5,0,1440),
	(106,11,1,1,0,1440),
	(107,11,1,2,0,1440),
	(108,11,1,3,0,1440),
	(109,11,1,4,0,1440),
	(110,11,1,5,0,1440),
	(111,12,0,1,0,1440),
	(112,12,0,2,0,1440),
	(113,12,0,3,0,1440),
	(114,12,0,4,0,1440),
	(115,12,0,5,0,1440),
	(116,12,1,1,0,1440),
	(117,12,1,2,0,1440),
	(118,12,1,3,0,1440),
	(119,12,1,4,0,1440),
	(120,12,1,5,0,1440),
	(121,13,0,1,0,1440),
	(122,13,0,2,0,1440),
	(123,13,0,3,0,1440),
	(124,13,0,4,0,1440),
	(125,13,0,5,0,1440),
	(126,13,1,1,0,1440),
	(127,13,1,2,0,1440),
	(128,13,1,3,0,1440),
	(129,13,1,4,0,1440),
	(130,13,1,5,0,1440),
	(131,14,0,1,0,1440),
	(132,14,0,2,0,1440),
	(133,14,0,3,0,1440),
	(134,14,0,4,0,1440),
	(135,14,0,5,0,1440),
	(136,14,1,1,0,1440),
	(137,14,1,2,0,1440),
	(138,14,1,3,0,1440),
	(139,14,1,4,0,1440),
	(140,14,1,5,0,1440),
	(141,15,0,1,0,1440),
	(142,15,0,2,0,1440),
	(143,15,0,3,0,1440),
	(144,15,0,4,0,1440),
	(145,15,0,5,0,1440),
	(146,15,1,1,0,1440),
	(147,15,1,2,0,1440),
	(148,15,1,3,0,1440),
	(149,15,1,4,0,1440),
	(150,15,1,5,0,1440),
	(151,16,0,1,0,1440),
	(152,16,0,2,0,1440),
	(153,16,0,3,0,1440),
	(154,16,0,4,0,1440),
	(155,16,0,5,0,1440),
	(156,16,1,1,0,1440),
	(157,16,1,2,0,1440),
	(158,16,1,3,0,1440),
	(159,16,1,4,0,1440),
	(160,16,1,5,0,1440),
	(161,17,0,1,0,1440),
	(162,17,0,2,0,1440),
	(163,17,0,3,0,1440),
	(164,17,0,4,0,1440),
	(165,17,0,5,0,1440),
	(166,17,1,1,0,1440),
	(167,17,1,2,0,1440),
	(168,17,1,3,0,1440),
	(169,17,1,4,0,1440),
	(170,17,1,5,0,1440),
	(171,18,0,1,0,1440),
	(172,18,0,2,0,1440),
	(173,18,0,3,0,1440),
	(174,18,0,4,0,1440),
	(175,18,0,5,0,1440),
	(176,18,1,1,0,1440),
	(177,18,1,2,0,1440),
	(178,18,1,3,0,1440),
	(179,18,1,4,0,1440),
	(180,18,1,5,0,1440),
	(181,19,0,1,0,1440),
	(182,19,0,2,0,1440),
	(183,19,0,3,0,1440),
	(184,19,0,4,0,1440),
	(185,19,0,5,0,1440),
	(186,19,1,1,0,1440),
	(187,19,1,2,0,1440),
	(188,19,1,3,0,1440),
	(189,19,1,4,0,1440),
	(190,19,1,5,0,1440),
	(191,20,0,1,0,1440),
	(192,20,0,2,0,1440),
	(193,20,0,3,0,1440),
	(194,20,0,4,0,1440),
	(195,20,0,5,0,1440),
	(196,20,1,1,0,1440),
	(197,20,1,2,0,1440),
	(198,20,1,3,0,1440),
	(199,20,1,4,0,1440),
	(200,20,1,5,0,1440),
	(465,43,0,1,0,1440),
	(466,43,0,2,0,1440),
	(467,43,0,3,0,1440),
	(468,43,0,4,0,1440),
	(469,43,0,5,0,1440),
	(470,43,1,1,0,1440),
	(471,43,1,2,0,1440),
	(472,43,1,3,0,1440),
	(473,43,1,4,0,1440),
	(474,43,1,5,0,1440),
	(475,44,0,1,0,1440),
	(476,44,0,2,0,1440),
	(477,44,0,3,0,1440),
	(478,44,0,4,0,1440),
	(479,44,0,5,0,1440),
	(480,44,1,1,0,1440),
	(481,44,1,2,0,1440),
	(482,44,1,3,0,1440),
	(483,44,1,4,0,1440),
	(484,44,1,5,0,1440),
	(609,54,0,1,0,1440),
	(610,54,0,2,0,1440),
	(611,54,0,3,0,1440),
	(612,54,0,4,0,1440),
	(613,54,0,5,0,1440),
	(614,54,1,1,0,1440),
	(615,54,1,2,0,1440),
	(616,54,1,3,0,1440),
	(617,54,1,4,0,1440),
	(618,54,1,5,0,1440),
	(649,58,0,1,0,1440),
	(650,58,0,2,0,1440),
	(651,58,0,3,0,1440),
	(652,58,0,4,0,1440),
	(653,58,0,5,0,1440),
	(654,58,1,1,0,1440),
	(655,58,1,2,0,1440),
	(656,58,1,3,0,1440),
	(657,58,1,4,0,1440),
	(658,58,1,5,0,1440),
	(659,59,0,1,0,1440),
	(660,59,0,2,0,1440),
	(661,59,0,3,0,1440),
	(662,59,0,4,0,1440),
	(663,59,0,5,0,1440),
	(664,59,1,1,0,1440),
	(665,59,1,2,0,1440),
	(666,59,1,3,0,1440),
	(667,59,1,4,0,1440),
	(668,59,1,5,0,1440),
	(889,80,0,1,0,1440),
	(890,80,0,2,0,1440),
	(891,80,0,3,0,1440),
	(892,80,0,4,0,1440),
	(893,80,0,5,0,1440),
	(894,80,1,1,0,1440),
	(895,80,1,2,0,1440),
	(896,80,1,3,0,1440),
	(897,80,1,4,0,1440),
	(898,80,1,5,0,1440),
	(909,82,0,1,0,1440),
	(910,82,0,2,0,1440),
	(911,82,0,3,0,1440),
	(912,82,0,4,0,1440),
	(913,82,0,5,0,1440),
	(914,82,1,1,0,1440),
	(915,82,1,2,0,1440),
	(916,82,1,3,0,1440),
	(917,82,1,4,0,1440),
	(918,82,1,5,0,1440),
	(919,83,0,1,0,1440),
	(920,83,0,2,0,1440),
	(921,83,0,3,0,1440),
	(922,83,0,4,0,1440),
	(923,83,0,5,0,1440),
	(924,83,1,1,0,1440),
	(925,83,1,2,0,1440),
	(926,83,1,3,0,1440),
	(927,83,1,4,0,1440),
	(928,83,1,5,0,1440),
	(929,84,0,1,0,1440),
	(930,84,0,2,0,1440),
	(931,84,0,3,0,1440),
	(932,84,0,4,0,1440),
	(933,84,0,5,0,1440),
	(934,84,1,1,0,1440),
	(935,84,1,2,0,1440),
	(936,84,1,3,0,1440),
	(937,84,1,4,0,1440),
	(938,84,1,5,0,1440),
	(939,85,0,1,0,1440),
	(940,85,0,2,0,1440),
	(941,85,0,3,0,1440),
	(942,85,0,4,0,1440),
	(943,85,0,5,0,1440),
	(944,85,1,1,0,1440),
	(945,85,1,2,0,1440),
	(946,85,1,3,0,1440),
	(947,85,1,4,0,1440),
	(948,85,1,5,0,1440),
	(949,86,0,1,0,1440),
	(950,86,0,2,0,1440),
	(951,86,0,3,0,1440),
	(952,86,0,4,0,1440),
	(953,86,0,5,0,1440),
	(954,86,1,1,0,1440),
	(955,86,1,2,0,1440),
	(956,86,1,3,0,1440),
	(957,86,1,4,0,1440),
	(958,86,1,5,0,1440);

/*!40000 ALTER TABLE `mt5_symbols_sessions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table mt5_time
# ------------------------------------------------------------

DROP TABLE IF EXISTS `mt5_time`;

CREATE TABLE `mt5_time` (
  `TimeZone` int(11) NOT NULL DEFAULT '0',
  `Timestamp` bigint(20) NOT NULL DEFAULT '0',
  `TimeServer` varchar(128) NOT NULL DEFAULT '',
  `Daylight` int(11) NOT NULL DEFAULT '0',
  `DaylightState` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`TimeZone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `mt5_time` WRITE;
/*!40000 ALTER TABLE `mt5_time` DISABLE KEYS */;

INSERT INTO `mt5_time` (`TimeZone`, `Timestamp`, `TimeServer`, `Daylight`, `DaylightState`)
VALUES
	(60,0,'pool.ntp.org',1,0);

/*!40000 ALTER TABLE `mt5_time` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table mt5_time_weekdays
# ------------------------------------------------------------

DROP TABLE IF EXISTS `mt5_time_weekdays`;

CREATE TABLE `mt5_time_weekdays` (
  `TimeZone` int(11) NOT NULL DEFAULT '0',
  `Day` int(10) unsigned NOT NULL DEFAULT '0',
  `00` int(10) unsigned NOT NULL DEFAULT '0',
  `01` int(10) unsigned NOT NULL DEFAULT '0',
  `02` int(10) unsigned NOT NULL DEFAULT '0',
  `03` int(10) unsigned NOT NULL DEFAULT '0',
  `04` int(10) unsigned NOT NULL DEFAULT '0',
  `05` int(10) unsigned NOT NULL DEFAULT '0',
  `06` int(10) unsigned NOT NULL DEFAULT '0',
  `07` int(10) unsigned NOT NULL DEFAULT '0',
  `08` int(10) unsigned NOT NULL DEFAULT '0',
  `09` int(10) unsigned NOT NULL DEFAULT '0',
  `10` int(10) unsigned NOT NULL DEFAULT '0',
  `11` int(10) unsigned NOT NULL DEFAULT '0',
  `12` int(10) unsigned NOT NULL DEFAULT '0',
  `13` int(10) unsigned NOT NULL DEFAULT '0',
  `14` int(10) unsigned NOT NULL DEFAULT '0',
  `15` int(10) unsigned NOT NULL DEFAULT '0',
  `16` int(10) unsigned NOT NULL DEFAULT '0',
  `17` int(10) unsigned NOT NULL DEFAULT '0',
  `18` int(10) unsigned NOT NULL DEFAULT '0',
  `19` int(10) unsigned NOT NULL DEFAULT '0',
  `20` int(10) unsigned NOT NULL DEFAULT '0',
  `21` int(10) unsigned NOT NULL DEFAULT '0',
  `22` int(10) unsigned NOT NULL DEFAULT '0',
  `23` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`TimeZone`,`Day`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `mt5_time_weekdays` WRITE;
/*!40000 ALTER TABLE `mt5_time_weekdays` DISABLE KEYS */;

INSERT INTO `mt5_time_weekdays` (`TimeZone`, `Day`, `00`, `01`, `02`, `03`, `04`, `05`, `06`, `07`, `08`, `09`, `10`, `11`, `12`, `13`, `14`, `15`, `16`, `17`, `18`, `19`, `20`, `21`, `22`, `23`)
VALUES
	(60,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
	(60,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1),
	(60,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1),
	(60,3,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1),
	(60,4,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1),
	(60,5,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1),
	(60,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

/*!40000 ALTER TABLE `mt5_time_weekdays` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table mt5_users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `mt5_users`;

CREATE TABLE `mt5_users` (
  `Login` bigint(20) unsigned NOT NULL DEFAULT '0',
  `Timestamp` bigint(20) NOT NULL DEFAULT '0',
  `Group` varchar(64) NOT NULL DEFAULT '',
  `CertSerialNumber` bigint(20) unsigned NOT NULL DEFAULT '0',
  `Rights` bigint(20) unsigned NOT NULL DEFAULT '0',
  `Registration` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `LastAccess` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `LastPassChange` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Name` varchar(128) NOT NULL DEFAULT '',
  `Company` varchar(64) NOT NULL DEFAULT '',
  `Account` varchar(32) NOT NULL DEFAULT '',
  `Country` varchar(32) NOT NULL DEFAULT '',
  `Language` int(10) unsigned NOT NULL DEFAULT '0',
  `ClientID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `City` varchar(32) NOT NULL DEFAULT '',
  `State` varchar(32) NOT NULL DEFAULT '',
  `ZipCode` varchar(16) NOT NULL DEFAULT '',
  `Address` varchar(128) NOT NULL DEFAULT '',
  `Phone` varchar(32) NOT NULL DEFAULT '',
  `Email` varchar(64) NOT NULL DEFAULT '',
  `ID` varchar(32) NOT NULL DEFAULT '',
  `Status` varchar(16) NOT NULL DEFAULT '',
  `Comment` varchar(64) NOT NULL DEFAULT '',
  `Color` int(10) unsigned NOT NULL DEFAULT '0',
  `PhonePassword` varchar(32) NOT NULL DEFAULT '',
  `Leverage` int(10) unsigned NOT NULL DEFAULT '0',
  `Agent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `TradeAccounts` varchar(128) NOT NULL DEFAULT '',
  `LeadCampaign` varchar(32) NOT NULL DEFAULT '',
  `LeadSource` varchar(32) NOT NULL DEFAULT '',
  `TimestampTrade` bigint(20) NOT NULL DEFAULT '0',
  `Balance` double NOT NULL DEFAULT '0',
  `Credit` double NOT NULL DEFAULT '0',
  `InterestRate` double NOT NULL DEFAULT '0',
  `CommissionDaily` double NOT NULL DEFAULT '0',
  `CommissionMonthly` double NOT NULL DEFAULT '0',
  `BalancePrevDay` double NOT NULL DEFAULT '0',
  `BalancePrevMonth` double NOT NULL DEFAULT '0',
  `EquityPrevDay` double NOT NULL DEFAULT '0',
  `EquityPrevMonth` double NOT NULL DEFAULT '0',
  `MQID` varchar(16) NOT NULL DEFAULT '',
  `LastIP` varchar(32) NOT NULL DEFAULT '',
  `ApiData` varchar(4000) NOT NULL DEFAULT '',
  PRIMARY KEY (`Login`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `mt5_users` WRITE;
/*!40000 ALTER TABLE `mt5_users` DISABLE KEYS */;

INSERT INTO `mt5_users` (`Login`, `Timestamp`, `Group`, `CertSerialNumber`, `Rights`, `Registration`, `LastAccess`, `LastPassChange`, `Name`, `Company`, `Account`, `Country`, `Language`, `ClientID`, `City`, `State`, `ZipCode`, `Address`, `Phone`, `Email`, `ID`, `Status`, `Comment`, `Color`, `PhonePassword`, `Leverage`, `Agent`, `TradeAccounts`, `LeadCampaign`, `LeadSource`, `TimestampTrade`, `Balance`, `Credit`, `InterestRate`, `CommissionDaily`, `CommissionMonthly`, `BalancePrevDay`, `BalancePrevMonth`, `EquityPrevDay`, `EquityPrevMonth`, `MQID`, `LastIP`, `ApiData`)
VALUES
	(1,131919255350899933,'managers\\administrators',0,2531,'2018-12-15 14:15:01','2019-01-14 08:45:35','2018-12-25 11:00:47','Xuan','','','Taiwan',4,1001,'','','','','','','','','',4278190080,'',100,0,'','','',0,0,0,0,0,0,0,0,0,0,'0','175.181.40.133','[]'),
	(2,131893535556807608,'managers\\administrators',0,2531,'2018-12-15 14:19:15','2018-12-15 14:19:15','2018-12-15 14:19:15','Mark','','','Taiwan',4,1002,'','','','','','','','','',4278190080,'',100,0,'','','',0,0,0,0,0,0,0,0,0,0,'0','Unresolved','[]'),
	(3,131920862936429551,'managers\\administrators',0,483,'2018-12-15 14:26:02','2019-01-16 05:24:53','2019-01-08 08:06:46','Miles','','','Taiwan',4,1006,'','','','','','','','','',4278190080,'',100,0,'','','',0,0,0,0,0,0,0,0,0,0,'0','118.163.32.44','[]'),
	(4,131914064180368238,'managers\\administrators',0,2531,'2018-12-15 14:27:44','2019-01-07 17:37:28','2019-01-08 08:30:49','Boris','','','Taiwan',4,1007,'','','','','','','','','',4278190080,'',100,0,'','','',0,0,0,0,0,0,0,0,0,0,'0','34.213.250.212','[]'),
	(131,131914197603141879,'managers\\administrators',0,2531,'2019-01-08 12:07:18','2019-01-08 12:07:18','2019-01-08 12:07:18','York','','','Taiwan',4,0,'','','','','','','','','',4278190080,'',100,0,'','','',0,0,0,0,0,0,0,0,0,0,'0','Unresolved','[]'),
	(133,131914198595366852,'managers\\administrators',0,2531,'2019-01-08 12:17:39','2019-01-08 12:17:39','2019-01-08 12:17:39','Barry','','','Taiwan',4,0,'','','','','','','','','',4278190080,'',100,0,'','','',0,0,0,0,0,0,0,0,0,0,'0','Unresolved','[]'),
	(600,131920863296058320,'managers\\manager',0,2531,'2019-01-04 17:10:28','2019-01-16 05:25:29','2019-01-10 08:08:12','Sunny','','','Taiwan',4,0,'','','','','','','','','',4278190080,'',100,0,'','','',0,0,0,0,0,0,0,0,0,0,'0','118.163.32.44','[]'),
	(670,131919275387119863,'managers\\Inst\\CTI',0,2531,'2019-01-04 17:20:56','2019-01-14 09:18:58','2019-01-04 17:21:40','CTI','','','China',4,0,'','','','','','','','','',4278190080,'',100,0,'','','',0,0,0,0,0,0,0,0,0,0,'0','118.163.32.44','[]'),
	(672,131921065001242151,'managers\\manager',0,2531,'2019-01-14 09:57:15','2019-01-16 11:01:40','2019-01-14 09:57:15','CTI','','','China',4,0,'','','','','','','','','',4278190080,'',100,0,'','','',0,0,0,0,0,0,0,0,0,0,'0','118.163.32.44','[]'),
	(1000,131916900988432020,'managers\\administrators',0,6627,'2018-12-15 09:17:27','2019-01-11 15:21:38','2018-12-25 10:59:36','First Admin','','','',0,1000,'','','','','','','','','automatically generated on startup',4278190080,'',1,0,'','','',0,0,0,0,0,0,0,0,0,0,'0','114.24.2.71','[]'),
	(1001,131902018256281006,'managers\\administrators',0,2531,'2018-12-15 15:17:25','2018-12-25 09:33:44','2018-12-15 15:17:25','York','','','Taiwan',4,1001,'','','','','','','','','',4278190080,'',100,0,'','redirect','vacancies',0,0,0,0,0,0,0,0,0,0,'0','175.181.40.133','[]'),
	(1002,131902018373956519,'managers\\administrators',0,2531,'2018-12-15 15:18:40','2018-12-15 15:18:40','2018-12-15 15:18:40','Mark','','','Taiwan',4,1002,'','','','','','','','','',4278190080,'',100,0,'','','',0,0,0,0,0,0,0,0,0,0,'0','Unresolved','[]'),
	(1003,131915778452930992,'managers\\administrators',0,2531,'2018-12-25 09:56:38','2019-01-10 08:10:45','2018-12-25 09:56:38','Barry','GanaTrader','','Taiwan',4,0,'','','','','','','','','',4278190080,'',100,0,'','','',0,0,0,0,0,0,0,0,0,0,'0','175.181.40.133','[]'),
	(1004,131908892938143570,'managers\\administrators',0,2531,'2018-12-25 10:32:57','2018-12-25 10:32:57','2018-12-25 10:32:57','back','','','Taiwan',4,0,'','','','','','','','','',4278190080,'',100,0,'','','',0,0,0,0,0,0,0,0,0,0,'0','Unresolved','[]'),
	(1005,131921625001121833,'Inst\\GANA\\GANA',0,2531,'2018-12-15 15:20:47','2019-01-17 02:35:00','2019-01-11 15:23:44','Sunny','','','Taiwan',4,1005,'','','','','','','','','',4278190080,'',100,0,'','','support.metaquotes.net',131907707991916560,30000,0,0,0,0,30000,30000,30000,30000,'0','114.136.120.29','[]'),
	(1006,131920863307286682,'Inst\\GANA\\GANA',0,483,'2018-12-15 15:21:22','2019-01-16 05:25:30','2018-12-15 15:32:26','Miles','','','Taiwan',4,1006,'','','','','','','','','',4278190080,'',100,1005,'','','support.metaquotes.net',131921531991523721,49663,0,0,0,0,49663,30000,49663,30000,'4FCEB711','118.163.32.44','[]'),
	(1007,131919257174120681,'Inst\\GANA\\GANA',0,2531,'2018-12-15 15:21:55','2019-01-14 08:48:37','2018-12-15 15:21:55','Boris','','','Taiwan',4,1007,'','','','','','','','','',4278190080,'',100,1005,'','','support.metaquotes.net',131919803991003537,100000,0,0,0,0,100000,30000,100000,30000,'0','175.181.40.133','[]'),
	(1123,131902962884114671,'Inst\\GANA\\GANA',0,2531,'2018-12-26 12:09:34','2018-12-26 12:11:27','2018-12-26 12:09:34','Barry','','','Taiwan',4,0,'','','','','','','','','',4278190080,'',100,0,'','redirect','vacancies',131907707991916566,100000,0,0,0,0,100000,100000,100000,100000,'0','175.181.40.133','[]'),
	(53009,131914239231218481,'Inst\\IB\\IB530',0,2531,'2019-01-07 13:06:14','2019-01-07 13:06:14','2019-01-07 13:06:14','Yang, Tsung Huan','','','Taiwan',4,0,'','','','新北市新店區','886965856219','yorkthyang@gmail.com','312295477','','',4278190080,'',100,0,'','','',0,0,0,0,0,0,0,0,0,0,'0','Unresolved','[]'),
	(53013,131914239399636164,'Inst\\IB\\IB530',0,2531,'2019-01-07 12:44:44','2019-01-07 12:44:44','2019-01-07 12:44:44','Chen, Pai Jui','','','Taiwan',4,0,'','','','新北市板橋區','','paijui666@hotmail.com','311684217','','',4278190080,'',100,0,'','','',0,0,0,0,0,0,0,0,0,0,'0','Unresolved','[]'),
	(53025,131914239551003056,'Inst\\IB\\IB530',0,2531,'2019-01-07 12:36:55','2019-01-07 12:36:55','2019-01-07 12:36:55','Chung, Min Jui','','','Taiwan',4,0,'','','','台北市內湖區成功路5段40號6樓','886921140521','chole0810@gmail.com','307921717','','',4278190080,'',100,0,'','','',0,0,0,0,0,0,0,0,0,0,'0','Unresolved','[]'),
	(67000,131921019109429657,'Inst\\CTI\\IB672',0,2535,'2019-01-15 13:49:32','2019-01-15 13:49:32','2019-01-15 13:49:32','Yang ，Yu','','','China',4,0,'','','','辽宁省法库县柏家沟镇头台子村14组726','8618309842560','2211942031@qq.com','210124199409153835','','',4278190080,'',100,0,'','','',0,0,0,0,0,0,0,0,0,0,'0','Unresolved','[]'),
	(31001019,131914757049214861,'Inst\\GANA\\CD',0,2531,'2019-01-07 12:31:21','2019-01-09 03:48:24','2019-01-07 12:31:21','Chang, Yu Hsiang','','','Taiwan',4,0,'','','','台北市中正區詔安街26巷11號4樓之1','886935477812','john520412@gmail.com','303381351','','',4278190080,'',100,53013,'','','www.ganafx.com.tw',0,0,0,0,0,0,0,0,0,0,'0','114.24.2.71','[]'),
	(31001020,131914360302810046,'Inst\\GANA\\CD',0,2531,'2019-01-07 12:33:58','2019-01-07 12:33:58','2019-01-07 12:33:58','Chung, Min Jui','','','Taiwan',4,0,'','','','台北市內湖區成功路5段40號6樓','886921140521','chole0810@gmail.com','307921717','','53025 53013 53009',4278190080,'',100,53013,'','','',0,0,0,0,0,0,0,0,0,0,'0','Unresolved','[]'),
	(31001021,131914360015593584,'Inst\\GANA\\CD',0,2531,'2019-01-08 16:46:10','2019-01-08 16:46:10','2019-01-08 16:46:10','Wang, Li Mei','','','Taiwan',4,0,'','','','新北市新莊區後港一路156巷12號2樓','886970613567','judywang9@hotmail.com','309468894','','',4278190080,'',100,53013,'','','',0,0,0,0,0,0,0,0,0,0,'0','Unresolved','[]'),
	(61200003,131905543893632891,'preliminary',0,6627,'2018-12-28 20:37:42','2018-12-29 11:53:09','2018-12-28 20:37:42','amuru mwambambe','','','Tanzania',9,1013,'','','','','+0746467015','justinekevela@gmail.com','','','Android 4.4.2, TECNO h721_a2 (Y2-H721-A2-KK-20151022) ',4278190080,'',100,0,'','','',0,0,0,0,0,0,0,0,0,0,'39514981','41.75.222.182','[]'),
	(67200260,131919301801530621,'Inst\\CTI\\B1',0,2499,'2019-01-08 16:54:13','2019-01-08 16:54:13','2019-01-08 16:54:13','Guo, Quan Ying','','','China',4,0,'','','','安徽省合肥市包河区淝河镇关镇村松东村民组2-3号','8613771186025','1519880504@qq.com','340111197907033025','','',4278190080,'',100,0,'','','',0,0,0,0,0,0,0,0,0,0,'0','Unresolved','[]');

/*!40000 ALTER TABLE `mt5_users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
