/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tokens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `action` varchar(30) NOT NULL DEFAULT '',
  `value` varchar(40) NOT NULL DEFAULT '',
  `created_on` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tokens_value` (`value`),
  KEY `index_tokens_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

