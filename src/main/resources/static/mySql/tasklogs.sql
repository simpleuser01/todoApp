CREATE TABLE `task_logs` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `task_time` int(11) NOT NULL,
  `task_description` varchar(255) NOT NULL,
  `task_id_fk` int(11) DEFAULT NULL,
  PRIMARY KEY (`log_id`),
  KEY `task_id_idx` (`task_id_fk`),
  CONSTRAINT `task_id_fk` FOREIGN KEY (`task_id_fk`) REFERENCES `tasks` (`task_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8