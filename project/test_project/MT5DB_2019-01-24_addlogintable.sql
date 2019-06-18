DROP TABLE IF EXISTS `mt5_login`;

CREATE TABLE `mt5_login` (
  `Login` bigint(20) unsigned NOT NULL DEFAULT '0',
  `Password` varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`Login`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `mt5_login` WRITE;
/*!40000 ALTER TABLE `mt5_login` DISABLE KEYS */;

INSERT INTO `mt5_login` (`Login`, `Password`)
VALUES
	(1,'48jgnjkr4'),
    (2,'575gh'),
    (3,'638356hgfn'),
    (4,'57gjgfj'),
    (131,'57jfsd'),
    (133,'576ufh'),
    (600,'537fdshfdh'),
    (670,'5475fgrghsdf'),
    (1006,'abcd'),
    (53009,'5475hrahfhsdf'),
    (53013,'5475fgrehhsdf'),
    (53025,'4y46'),
    (67000,'fhhr'),
    (31001019,'gadh'),
    (31001020,'56utjg'),
    (31001021,'fdhtrj'),
    (61200003,'sfdhj'),
    (67200260,'sfd465hj');

/*!40000 ALTER TABLE `mt5_login` ENABLE KEYS */;
UNLOCK TABLES;
