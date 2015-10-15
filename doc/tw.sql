
CREATE TABLE `tw_user` (
 		`id` varchar(80),
	`name` varchar(255) default NULL,
	`screen_name` varchar(255) default NULL,
	`location` varchar(255),
	`description` text,
	 `lang` varchar(100),
	 `profile_image_url` text,
	`statuses_count` int(11),
	`friends_count` int(11),
	`follower_count` int(11),
	`favourites_count` int(11),
	`listed_count` int(11),
	`tw_created_at` DATETIME,
	`time_zone` varchar(255),
	`created_at` DATETIME,
	`updated_at` DATETIme,
	primary key (`id`)
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8;


 CREATE TABLE `tw_status` (
  `id` varchar(80) NOT NULL DEFAULT '',
  `parent_id` varchar(80) DEFAULT NULL,
  `user_id` varchar(80) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `retweeted` tinyint(1) DEFAULT NULL,
  `retweet_count` int(11) DEFAULT NULL,
  `favorite_count` int(11) DEFAULT NULL,
  `lang` varchar(50) DEFAULT NULL,
  `media_count` int(11) DEFAULT NULL,
  `tw_created_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `tw_media` (
  `id` int(11) NOT NULL DEFAULT '0',
  `type` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `expanded_url` varchar(255) DEFAULT NULL,
  `source_status_id` varchar(80) DEFAULT NULL,
  `source_user_id` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ukey1` (`url`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;