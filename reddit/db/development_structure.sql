CREATE TABLE `caches` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) DEFAULT NULL,
  `wid_id` int(11) DEFAULT NULL,
  `updatetime` int(11) DEFAULT NULL,
  `graph` text COLLATE utf8_unicode_ci,
  `timeperiod` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_caches_on_updatetime` (`updatetime`),
  KEY `index_caches_on_wid_id` (`wid_id`)
) ENGINE=InnoDB AUTO_INCREMENT=127915 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fid_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `num_comments` int(11) DEFAULT NULL,
  `ups` int(11) DEFAULT NULL,
  `created` int(11) DEFAULT NULL,
  `downs` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_links_on_created` (`created`),
  KEY `index_links_on_fid_id` (`fid_id`)
) ENGINE=InnoDB AUTO_INCREMENT=448728 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `wordmatches` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `wid_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_wordmatches_on_fid` (`fid`),
  KEY `index_wordmatches_on_wid_id` (`wid_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2539510 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `words` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wid` int(11) DEFAULT NULL,
  `word` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `freq` int(11) DEFAULT NULL,
  `weekfreq` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_words_on_wid` (`wid`),
  KEY `index_words_on_freq` (`freq`),
  KEY `index_words_on_weekfreq` (`weekfreq`)
) ENGINE=InnoDB AUTO_INCREMENT=174972 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO schema_migrations (version) VALUES ('20090916160222');

INSERT INTO schema_migrations (version) VALUES ('20090917075634');

INSERT INTO schema_migrations (version) VALUES ('20090917080825');

INSERT INTO schema_migrations (version) VALUES ('20090917081020');

INSERT INTO schema_migrations (version) VALUES ('20090917081308');

INSERT INTO schema_migrations (version) VALUES ('20090917100107');

INSERT INTO schema_migrations (version) VALUES ('20090918131703');

INSERT INTO schema_migrations (version) VALUES ('20090918132313');

INSERT INTO schema_migrations (version) VALUES ('20090918145509');

INSERT INTO schema_migrations (version) VALUES ('20090918145736');

INSERT INTO schema_migrations (version) VALUES ('20090918145900');

INSERT INTO schema_migrations (version) VALUES ('20090918150221');