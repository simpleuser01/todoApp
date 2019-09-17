CREATE TABLE `tasks` (
  `task_id` int(11) NOT NULL AUTO_INCREMENT,
  `task_name` varchar(55) NOT NULL,
  `task_state` varchar(20) NOT NULL,
  `user_id_fk` int(11) DEFAULT NULL,
  PRIMARY KEY (`task_id`),
  KEY `user_id_fk_idx` (`user_id_fk`),
  CONSTRAINT `user_id_fk` FOREIGN KEY (`user_id_fk`) REFERENCES `users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8