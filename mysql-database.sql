CREATE TABLE `domains` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(128) NOT NULL DEFAULT '',
  `ttl` int(11) NOT NULL DEFAULT '3600',
  `class` varchar(8) NOT NULL DEFAULT 'IN',
  `zonemaster` varchar(128) NOT NULL DEFAULT '',
  `adminmailbox` varchar(128) NOT NULL DEFAULT '',
  `serial` int(11) NOT NULL DEFAULT '0',
  `refresh` int(11) NOT NULL DEFAULT '10800',
  `retry` int(11) NOT NULL DEFAULT '3600',
  `expire` int(11) NOT NULL DEFAULT '1209600',
  `negative` int(11) NOT NULL DEFAULT '7200',
  PRIMARY KEY (`id`),
  UNIQUE KEY `domain` (`domain`)
);

CREATE TABLE `records` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` int(11) NOT NULL DEFAULT '0',
  `zone` varchar(128) NOT NULL DEFAULT '',
  `ttl` int(11) NOT NULL DEFAULT '3600',
  `class` varchar(8) NOT NULL DEFAULT 'IN',
  `type` varchar(8) NOT NULL DEFAULT '',
  `address` varchar(128) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `domain` (`domain`)
);
