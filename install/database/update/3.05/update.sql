DROP TABLE if EXISTS `members_group_queues`;
DROP TABLE if EXISTS `group_queues`;
INSERT INTO `core_country` VALUES (2,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'AKROTIRI E DEKÉLIA',''),(3,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'SOUTH AFRICA',''),(4,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'ALBANIA',''),(5,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'GERMANY',''),(6,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'AMERICAN SAMOA',''),(7,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'ANDORRA',''),(8,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'ANGOLA',''),(9,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'ANGUILLA',''),(10,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'ANTIGUA AND BARBUDA',''),(11,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'NETHERLANDS ANTILLES',''),(12,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'SAUDI ARABIA',''),(13,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'ALGERIA',''),(14,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'ARGENTINA',''),(15,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'ARMENIA',''),(16,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'ARUBA',''),(17,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'AUSTRALIA',''),(18,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'AUSTRIA',''),(19,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'AZERBAIJAN',''),(20,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'BAHAMAS, THE',''),(21,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'BANGLADESH',''),(22,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'BARBADOS',''),(23,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'BAHRAIN',''),(24,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'BASSAS DA INDIA',''),(25,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'BELGIUM',''),(26,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'BELIZE',''),(27,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'BENIN',''),(28,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'BERMUDA',''),(29,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'BELARUS',''),(30,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'BOLIVIA',''),(31,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'BOSNIA AND HERZEGOVINA',''),(32,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'BOTSWANA',''),(33,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'AFGHANISTAN',''),(34,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'BRUNEI DARUSSALAM',''),(35,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'BULGARIA',''),(36,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'BURKINA FASO',''),(37,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'BURUNDI',''),(38,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'BHUTAN',''),(39,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'CAPE VERDE',''),(40,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'CAMEROON',''),(41,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'CAMBODIA',''),(42,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'CANADA',''),(43,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'QATAR',''),(44,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'KAZAKHSTAN',''),(45,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'CENTRAL AFRICAN REPUBLIC',''),(46,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'CHAD',''),(47,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'CHILE',''),(48,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'CHINA',''),(49,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'CYPRUS',''),(50,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'COLOMBIA',''),(51,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'COMOROS',''),(52,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'CONGO',''),(53,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'CONGO DEMOCRATIC REPUBLIC',''),(54,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'KOREA NORTH',''),(55,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'KOREA SOUTH',''),(56,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'IVORY COAST',''),(57,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'COSTA RICA',''),(58,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'CROATIA',''),(59,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'CUBA',''),(60,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'DENMARK',''),(61,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'DOMINICA',''),(62,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'EGYPT',''),(63,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'UNITED ARAB EMIRATES',''),(64,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'ECUADOR',''),(65,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'ERITREA',''),(66,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'SLOVAKIA',''),(67,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'SLOVENIA',''),(68,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'SPAIN',''),(69,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'UNITED STATES',''),(70,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'ESTONIA',''),(71,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'ETHIOPIA',''),(72,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'GAZA STRIP',''),(73,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'FIJI',''),(74,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'PHILIPPINES',''),(75,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'FINLAND',''),(76,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'FRANCE',''),(77,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'GABON',''),(78,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'GAMBIA',''),(79,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'GHANA',''),(80,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'GEORGIA',''),(81,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'GIBRALTAR',''),(82,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'GRENADA',''),(83,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'GREECE',''),(84,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'GREENLAND',''),(85,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'GUADELOUPE',''),(86,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'GUAM',''),(87,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'GUATEMALA',''),(88,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'GUERNSEY',''),(89,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'GUYANA',''),(90,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'FRENCH GUIANA',''),(91,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'GUINEA',''),(92,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'EQUATORIAL GUINEA',''),(93,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'GUINEA-BISSAU',''),(94,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'HAITI',''),(95,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'HONDURAS',''),(96,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'HONG KONG',''),(97,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'HUNGARY',''),(98,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'YEMEN',''),(99,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'BOUVET ISLAND',''),(100,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'CHRISTMAS ISLAND',''),(101,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'CLIPPERTON ISLAND',''),(102,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'JUAN DE NOVA ISLAND',''),(103,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'ISLE OF MAN',''),(104,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'NAVASSA ISLAND',''),(105,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'EUROPA ISLAND',''),(106,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'NORFOLK ISLAND',''),(107,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'TROMELIN ISLAND',''),(108,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'ASHMORE AND CARTIER ISLANDS',''),(109,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'CAYMAN ISLANDS',''),(110,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'COCOS (KEELING) ISLANDS',''),(111,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'COOK ISLANDS',''),(112,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'CORAL SEA ISLANDS',''),(113,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'FALKLAND ISLANDS (ISLAS MALVIN',''),(114,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'FAROE ISLANDS',''),(115,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'SOUTH GEORGIA AND THE SOUTH SA',''),(116,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'NORTHERN MARIANA ISLANDS',''),(117,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'MARSHALL ISLANDS',''),(118,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'PARACEL ISLANDS',''),(119,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'PITCAIRN ISLANDS',''),(120,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'SOLOMON ISLANDS',''),(121,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'SPRATLY ISLANDS',''),(122,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'UNITED STATES VIRGIN ISLANDS',''),(123,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'BRITISH VIRGIN ISLANDS',''),(124,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'INDIA',''),(125,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'INDONESIA',''),(126,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'IRAN',''),(127,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'IRAQ',''),(128,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'IRELAND',''),(129,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'ICELAND',''),(130,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'ISRAEL',''),(131,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'ITALY',''),(132,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'JAMAICA',''),(133,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'JAN MAYEN',''),(134,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'JAPAN',''),(135,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'JERSEY',''),(136,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'DJIBOUTI',''),(137,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'JORDAN',''),(138,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'KIRIBATI',''),(139,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'KUWAIT',''),(140,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'LAOS',''),(141,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'LESOTHO',''),(142,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'LATVIA',''),(143,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'LEBANON',''),(144,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'LIBERIA',''),(145,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'LIBYAN ARAB JAMAHIRIYA',''),(146,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'LIECHTENSTEIN',''),(147,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'LITHUANIA',''),(148,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'LUXEMBOURG',''),(149,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'MACAO',''),(150,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'MACEDONIA',''),(151,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'MADAGASCAR',''),(152,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'MALAYSIA',''),(153,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'MALAWI',''),(154,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'MALDIVES',''),(155,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'MALI',''),(156,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'MALTA',''),(157,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'MOROCCO',''),(158,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'MARTINIQUE',''),(159,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'MAURITIUS',''),(160,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'MAURITANIA',''),(161,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'MAYOTTE',''),(162,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'MEXICO',''),(163,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'MYANMAR BURMA',''),(164,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'MICRONESIA',''),(165,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'MOZAMBIQUE',''),(166,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'MOLDOVA',''),(167,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'MONACO',''),(168,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'MONGOLIA',''),(169,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'MONTENEGRO',''),(170,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'MONTSERRAT',''),(171,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'NAMIBIA',''),(172,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'NAURU',''),(173,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'NEPAL',''),(174,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'NICARAGUA',''),(175,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'NIGER',''),(176,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'NIGERIA',''),(177,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'NIUE',''),(178,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'NORWAY',''),(179,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'NEW CALEDONIA',''),(180,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'NEW ZEALAND',''),(181,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'OMAN',''),(182,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'NETHERLANDS',''),(183,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'PALAU',''),(184,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'PALESTINE',''),(185,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'PANAMA',''),(186,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'PAPUA NEW GUINEA',''),(187,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'PAKISTAN',''),(188,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'PARAGUAY',''),(189,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'PERU',''),(190,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'FRENCH POLYNESIA',''),(191,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'POLAND',''),(192,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'PUERTO RICO',''),(193,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'PORTUGAL',''),(194,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'KENYA',''),(195,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'KYRGYZSTAN',''),(196,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'UNITED KINGDOM',''),(197,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'CZECH REPUBLIC',''),(198,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'DOMINICAN REPUBLIC',''),(199,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'ROMANIA',''),(200,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'RWANDA',''),(201,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'RUSSIAN FEDERATION',''),(202,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'WESTERN SAHARA',''),(203,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'EL SALVADOR',''),(204,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'SAMOA',''),(205,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'SAINT HELENA',''),(206,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'SAINT LUCIA',''),(207,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'HOLY SEE',''),(208,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'SAINT KITTS AND NEVIS',''),(209,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'SAN MARINO',''),(210,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'SAINT PIERRE AND MIQUELON',''),(211,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'SAO TOME AND PRINCIPE',''),(212,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'SAINT VINCENT AND THE GRENADIN',''),(213,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'SEYCHELLES',''),(214,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'SENEGAL',''),(215,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'SIERRA LEONE',''),(216,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'SERBIA',''),(217,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'SINGAPORE',''),(218,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'SYRIA',''),(219,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'SOMALIA',''),(220,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'SRI LANKA',''),(221,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'SWAZILAND',''),(222,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'SUDAN',''),(223,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'SWEDEN',''),(224,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'SWITZERLAND',''),(225,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'SURINAME',''),(226,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'SVALBARD',''),(227,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'THAILAND',''),(228,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'TAIWAN',''),(229,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'TAJIKISTAN',''),(230,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'TANZANIA',''),(231,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'BRITISH INDIAN OCEAN TERRITORY',''),(232,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'HEARD ISLAND AND MCDONALD ISLA',''),(233,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'TIMOR-LESTE',''),(234,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'TOGO',''),(235,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'TOKELAU',''),(236,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'TONGA',''),(237,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'TRINIDAD AND TOBAGO',''),(238,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'TUNISIA',''),(239,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'TURKS AND CAICOS ISLANDS',''),(240,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'TURKMENISTAN',''),(241,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'TURKEY',''),(242,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'TUVALU',''),(243,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'UKRAINE',''),(244,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'UGANDA',''),(245,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'URUGUAY',''),(246,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'UZBEKISTAN',''),(247,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'VANUATU',''),(248,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'VENEZUELA',''),(249,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'VIETNAM',''),(250,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'WALLIS AND FUTUNA',''),(251,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'ZAMBIA',''),(252,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'ZIMBABWE','');

INSERT INTO `core_state` VALUES (28,'','0000-00-00 00:00:00','0000-00-00 00:00:00',0,1,'OO','Others') ;

INSERT INTO `core_city` VALUES (5565,'','2015-03-17 17:27:41','2015-03-17 17:27:41',0,28,'Others'); 