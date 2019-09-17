CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(55) NOT NULL,
  `user_surname` varchar(55) NOT NULL,
  `user_patronymic` varchar(55) NOT NULL,
  `user_login` varchar(55) NOT NULL,
  `user_password` varchar(30) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8