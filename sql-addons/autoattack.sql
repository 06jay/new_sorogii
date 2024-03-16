CREATE TABLE `aa_common_config` (
  `char_id` int UNSIGNED NOT NULL,
  `stopmelee` tinyint(1) NOT NULL DEFAULT '0',
  `pickup_item_config` int UNSIGNED NOT NULL DEFAULT '0',
  `aggressive_behavior` tinyint(1) NOT NULL DEFAULT '0',
  `autositregen_conf` tinyint(1) NOT NULL DEFAULT '0',
  `autositregen_maxhp` smallint UNSIGNED NOT NULL DEFAULT '0',
  `autositregen_minhp` smallint UNSIGNED NOT NULL DEFAULT '0',
  `autositregen_maxsp` smallint UNSIGNED NOT NULL DEFAULT '0',
  `autositregen_minsp` smallint UNSIGNED NOT NULL DEFAULT '0',
  `tp_use_teleport` tinyint(1) NOT NULL DEFAULT '0',
  `tp_use_flywing` tinyint(1) NOT NULL DEFAULT '0',
  `tp_min_hp` smallint UNSIGNED NOT NULL DEFAULT '0',
  `tp_delay_nomobmeet` int UNSIGNED NOT NULL DEFAULT '0'
);

ALTER TABLE `aa_common_config` ADD UNIQUE KEY `char_id` (`char_id`);

CREATE TABLE `aa_items` (
  `char_id` int UNSIGNED NOT NULL,
  `type` smallint UNSIGNED NOT NULL,
  `item_id` int UNSIGNED NOT NULL,
  `min_hp` smallint UNSIGNED NOT NULL DEFAULT '0',
  `min_sp` smallint UNSIGNED NOT NULL DEFAULT '0',
  `delay` int UNSIGNED NOT NULL DEFAULT '0'
);

ALTER TABLE `aa_items` ADD UNIQUE KEY `char_id` (`char_id`,`type`,`item_id`);

CREATE TABLE `aa_mobs` (
  `char_id` int UNSIGNED NOT NULL,
  `mob_id` int UNSIGNED NOT NULL
);

ALTER TABLE `aa_mobs` ADD UNIQUE KEY `char_id` (`char_id`,`mob_id`);

CREATE TABLE `aa_skills` (
  `char_id` int UNSIGNED NOT NULL,
  `type` smallint UNSIGNED NOT NULL,
  `skill_id` smallint UNSIGNED NOT NULL,
  `skill_lv` smallint UNSIGNED NOT NULL DEFAULT '0',
  `min_hp` smallint UNSIGNED NOT NULL DEFAULT '0'
);

ALTER TABLE `aa_skills` ADD UNIQUE KEY `char_id` (`char_id`,`type`,`skill_id`);