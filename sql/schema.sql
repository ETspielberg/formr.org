/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `formr_org`
--

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE IF NOT EXISTS `oauth_access_tokens` (
  `access_token` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `client_id` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expires` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `scope` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_authorization_codes`
--

CREATE TABLE IF NOT EXISTS `oauth_authorization_codes` (
  `authorization_code` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `client_id` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `redirect_uri` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expires` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `scope` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE IF NOT EXISTS `oauth_clients` (
  `client_id` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `client_secret` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `redirect_uri` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `grant_types` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `scope` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_jwt`
--

CREATE TABLE IF NOT EXISTS `oauth_jwt` (
  `client_id` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `subject` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `public_key` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE IF NOT EXISTS `oauth_refresh_tokens` (
  `refresh_token` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `client_id` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expires` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `scope` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_scopes`
--

CREATE TABLE IF NOT EXISTS `oauth_scopes` (
  `scope` mediumtext COLLATE utf8_unicode_ci,
  `is_default` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_users`
--

CREATE TABLE IF NOT EXISTS `oauth_users` (
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `osf`
--

CREATE TABLE IF NOT EXISTS `osf` (
  `user_id` int(10) unsigned NOT NULL,
  `access_token` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `access_token_expires` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shuffle`
--

CREATE TABLE IF NOT EXISTS `shuffle` (
  `session_id` int(10) unsigned NOT NULL,
  `unit_id` int(10) unsigned NOT NULL,
  `created` datetime DEFAULT NULL,
  `group` smallint(5) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `survey_branches`
--

CREATE TABLE IF NOT EXISTS `survey_branches` (
  `id` int(10) unsigned NOT NULL,
  `condition` mediumtext COLLATE utf8_unicode_ci,
  `if_true` smallint(6) DEFAULT NULL,
  `automatically_jump` tinyint(1) DEFAULT '1',
  `automatically_go_on` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `survey_cron_log`
--

CREATE TABLE IF NOT EXISTS `survey_cron_log` (
`id` int(11) NOT NULL,
  `run_id` int(10) unsigned NOT NULL,
  `created` datetime DEFAULT NULL,
  `ended` datetime DEFAULT NULL,
  `sessions` int(10) unsigned DEFAULT NULL,
  `skipforwards` int(10) unsigned DEFAULT NULL,
  `skipbackwards` int(10) unsigned DEFAULT NULL,
  `pauses` int(10) unsigned DEFAULT NULL,
  `emails` int(10) unsigned DEFAULT NULL,
  `shuffles` int(10) unsigned DEFAULT NULL,
  `errors` int(10) unsigned DEFAULT NULL,
  `warnings` int(10) unsigned DEFAULT NULL,
  `notices` int(10) unsigned DEFAULT NULL,
  `message` mediumtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `survey_emails`
--

CREATE TABLE IF NOT EXISTS `survey_emails` (
  `id` int(10) unsigned NOT NULL,
  `account_id` int(10) unsigned DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `recipient_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` mediumtext COLLATE utf8_unicode_ci,
  `body_parsed` mediumtext COLLATE utf8_unicode_ci,
  `html` tinyint(1) DEFAULT NULL,
  `cron_only` tinyint(3) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `survey_email_accounts`
--

CREATE TABLE IF NOT EXISTS `survey_email_accounts` (
`id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `from` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `host` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `port` smallint(6) DEFAULT NULL,
  `tls` tinyint(4) DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `auth_key` text COLLATE utf8_unicode_ci NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `survey_email_log`
--

CREATE TABLE IF NOT EXISTS `survey_email_log` (
`id` int(10) unsigned NOT NULL,
  `session_id` int(10) unsigned DEFAULT NULL,
  `email_id` int(10) unsigned DEFAULT NULL,
  `created` datetime NOT NULL,
  `recipient` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sent` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `survey_email_queue`
--

CREATE TABLE IF NOT EXISTS `survey_email_queue` (
`id` int(10) unsigned NOT NULL,
  `account_id` int(10) unsigned NOT NULL,
  `subject` varchar(355) COLLATE utf8_unicode_ci NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `recipient` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `meta` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `survey_externals`
--

CREATE TABLE IF NOT EXISTS `survey_externals` (
  `id` int(10) unsigned NOT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `api_end` tinyint(1) DEFAULT '0',
  `expire_after` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `survey_items`
--

CREATE TABLE IF NOT EXISTS `survey_items` (
`id` int(11) unsigned NOT NULL,
  `study_id` int(10) unsigned NOT NULL,
  `type` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `choice_list` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type_options` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `label` text COLLATE utf8_unicode_ci,
  `label_parsed` mediumtext COLLATE utf8_unicode_ci,
  `optional` tinyint(4) DEFAULT NULL,
  `class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `showif` mediumtext COLLATE utf8_unicode_ci,
  `value` text COLLATE utf8_unicode_ci,
  `block_order` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `item_order` smallint(6) DEFAULT NULL,
  `order` int(10) DEFAULT NULL,
  `post_process` mediumtext COLLATE utf8_unicode_ci,
  `page_no` smallint(5) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `survey_items_display`
--

CREATE TABLE IF NOT EXISTS `survey_items_display` (
`id` bigint(20) unsigned NOT NULL,
  `item_id` int(10) unsigned NOT NULL,
  `session_id` int(10) unsigned NOT NULL,
  `answer` mediumtext COLLATE utf8_unicode_ci,
  `created` datetime DEFAULT NULL,
  `answered` datetime DEFAULT NULL,
  `answered_relative` double DEFAULT NULL,
  `displaycount` smallint(5) unsigned DEFAULT NULL,
  `display_order` mediumint(8) unsigned DEFAULT NULL,
  `hidden` tinyint(1) DEFAULT NULL,
  `saved` datetime DEFAULT NULL,
  `shown` datetime DEFAULT NULL,
  `shown_relative` double DEFAULT NULL,
  `page` tinyint(3) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `survey_item_choices`
--

CREATE TABLE IF NOT EXISTS `survey_item_choices` (
`id` int(10) unsigned NOT NULL,
  `study_id` int(10) unsigned NOT NULL,
  `list_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `label` mediumtext COLLATE utf8_unicode_ci,
  `label_parsed` mediumtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `survey_newsletter`
--

CREATE TABLE IF NOT EXISTS `survey_newsletter` (
`id` int(10) unsigned NOT NULL,
  `names` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email_verified` tinyint(1) NOT NULL DEFAULT '0',
  `email_verification_hash` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `survey_pages`
--

CREATE TABLE IF NOT EXISTS `survey_pages` (
  `id` int(10) unsigned NOT NULL,
  `body` mediumtext COLLATE utf8_unicode_ci,
  `body_parsed` mediumtext COLLATE utf8_unicode_ci,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `end` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `survey_pauses`
--

CREATE TABLE IF NOT EXISTS `survey_pauses` (
  `id` int(10) unsigned NOT NULL,
  `wait_until_time` time DEFAULT NULL,
  `wait_until_date` date DEFAULT NULL,
  `wait_minutes` int(11) DEFAULT NULL,
  `relative_to` mediumtext COLLATE utf8_unicode_ci,
  `body` mediumtext COLLATE utf8_unicode_ci,
  `body_parsed` mediumtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `survey_reports`
--

CREATE TABLE IF NOT EXISTS `survey_reports` (
  `session_id` int(10) unsigned NOT NULL,
  `unit_id` int(10) unsigned NOT NULL,
  `created` datetime DEFAULT NULL,
  `last_viewed` datetime DEFAULT NULL,
  `opencpu_url` varchar(400) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `survey_results`
--

CREATE TABLE IF NOT EXISTS `survey_results` (
  `session_id` int(10) unsigned NOT NULL,
  `study_id` int(10) unsigned NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `ended` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `survey_runs`
--

CREATE TABLE IF NOT EXISTS `survey_runs` (
`id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `api_secret_hash` varchar(255) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `cron_active` tinyint(1) DEFAULT '0',
  `public` tinyint(4) DEFAULT '0',
  `locked` tinyint(1) DEFAULT '0',
  `reminder_email` int(10) unsigned DEFAULT NULL,
  `service_message` int(10) unsigned DEFAULT NULL,
  `overview_script` int(10) unsigned DEFAULT NULL,
  `deactivated_page` int(10) unsigned DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description_parsed` mediumtext COLLATE utf8_unicode_ci,
  `public_blurb` mediumtext COLLATE utf8_unicode_ci,
  `public_blurb_parsed` mediumtext COLLATE utf8_unicode_ci,
  `header_image_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `footer_text` mediumtext COLLATE utf8_unicode_ci,
  `footer_text_parsed` mediumtext COLLATE utf8_unicode_ci,
  `custom_css_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_js_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `osf_project_id` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_deamon_access` int(10) unsigned DEFAULT '0',
  `cron_fork` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `use_material_design` tinyint(1) NOT NULL DEFAULT '0',
  `expire_cookie` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `survey_run_sessions`
--

CREATE TABLE IF NOT EXISTS `survey_run_sessions` (
`id` int(11) NOT NULL,
  `run_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `session` char(64) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime DEFAULT NULL,
  `ended` datetime DEFAULT NULL,
  `last_access` datetime DEFAULT NULL,
  `position` smallint(6) DEFAULT NULL,
  `current_unit_id` int(10) unsigned DEFAULT NULL,
  `deactivated` tinyint(1) DEFAULT '0',
  `no_email` int(11) DEFAULT NULL,
  `testing` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `survey_run_settings`
--

CREATE TABLE IF NOT EXISTS `survey_run_settings` (
  `run_session_id` int(10) unsigned NOT NULL,
  `settings` mediumtext COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `survey_run_special_units`
--

CREATE TABLE IF NOT EXISTS `survey_run_special_units` (
  `id` int(10) unsigned NOT NULL,
  `run_id` int(10) unsigned NOT NULL,
  `type` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `survey_run_units`
--

CREATE TABLE IF NOT EXISTS `survey_run_units` (
`id` int(10) unsigned NOT NULL,
  `run_id` int(10) unsigned NOT NULL,
  `unit_id` int(10) unsigned DEFAULT NULL,
  `position` smallint(6) NOT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `survey_sessions_queue`
--

CREATE TABLE IF NOT EXISTS `survey_sessions_queue` (
  `unit_session_id` bigint(20) unsigned NOT NULL,
  `run_session_id` int(10) unsigned NOT NULL,
  `unit_id` int(10) unsigned NOT NULL,
  `created` int(10) unsigned NOT NULL,
  `expires` int(10) unsigned NOT NULL,
  `run` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `counter` int(10) unsigned NOT NULL DEFAULT '0',
  `execute` tinyint(1) unsigned NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `survey_shuffles`
--

CREATE TABLE IF NOT EXISTS `survey_shuffles` (
  `id` int(10) unsigned NOT NULL,
  `groups` smallint(5) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `survey_studies`
--

CREATE TABLE IF NOT EXISTS `survey_studies` (
  `id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `results_table` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `valid` tinyint(1) DEFAULT NULL,
  `maximum_number_displayed` smallint(5) unsigned DEFAULT NULL,
  `displayed_percentage_maximum` tinyint(3) unsigned DEFAULT NULL,
  `add_percentage_points` tinyint(4) DEFAULT NULL,
  `expire_after` int(10) unsigned DEFAULT NULL,
  `expire_invitation_after` int(10) unsigned DEFAULT NULL,
  `expire_invitation_grace` int(10) unsigned DEFAULT NULL,
  `enable_instant_validation` tinyint(1) DEFAULT '1',
  `original_file` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  `google_file_id` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `unlinked` tinyint(1) DEFAULT '0',
  `hide_results` tinyint(4) NOT NULL DEFAULT '0',
  `use_paging` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `survey_text_messages`
--

CREATE TABLE IF NOT EXISTS `survey_text_messages` (
  `id` int(10) unsigned NOT NULL,
  `account_id` int(10) unsigned DEFAULT NULL,
  `recipient_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` mediumtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `survey_units`
--

CREATE TABLE IF NOT EXISTS `survey_units` (
`id` int(10) unsigned NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `type` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `survey_unit_sessions`
--

CREATE TABLE IF NOT EXISTS `survey_unit_sessions` (
`id` int(10) unsigned NOT NULL,
  `unit_id` int(10) unsigned NOT NULL,
  `run_session_id` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `ended` datetime DEFAULT NULL,
  `expired` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `survey_uploaded_files`
--

CREATE TABLE IF NOT EXISTS `survey_uploaded_files` (
`id` int(10) unsigned NOT NULL,
  `run_id` int(10) unsigned NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `original_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `new_file_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `survey_users`
--

CREATE TABLE IF NOT EXISTS `survey_users` (
`id` int(10) unsigned NOT NULL,
  `user_code` char(64) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `first_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `affiliation` varchar(350) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `admin` tinyint(1) DEFAULT '0',
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_verification_hash` varchar(255) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `email_verified` tinyint(1) DEFAULT '0',
  `reset_token_hash` varchar(255) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `reset_token_expiry` datetime DEFAULT NULL,
  `mobile_number` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile_verification_hash` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile_verified` tinyint(1) DEFAULT '0',
  `referrer_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
 ADD PRIMARY KEY (`access_token`);

--
-- Indexes for table `oauth_authorization_codes`
--
ALTER TABLE `oauth_authorization_codes`
 ADD PRIMARY KEY (`authorization_code`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
 ADD PRIMARY KEY (`client_id`);

--
-- Indexes for table `oauth_jwt`
--
ALTER TABLE `oauth_jwt`
 ADD PRIMARY KEY (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
 ADD PRIMARY KEY (`refresh_token`);

--
-- Indexes for table `oauth_users`
--
ALTER TABLE `oauth_users`
 ADD PRIMARY KEY (`username`);

--
-- Indexes for table `osf`
--
ALTER TABLE `osf`
 ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `shuffle`
--
ALTER TABLE `shuffle`
 ADD PRIMARY KEY (`session_id`), ADD KEY `fk_survey_results_survey_unit_sessions1_idx` (`session_id`), ADD KEY `fk_survey_reports_survey_units1_idx` (`unit_id`);

--
-- Indexes for table `survey_branches`
--
ALTER TABLE `survey_branches`
 ADD PRIMARY KEY (`id`), ADD KEY `fk_survey_branch_survey_units1_idx` (`id`);

--
-- Indexes for table `survey_cron_log`
--
ALTER TABLE `survey_cron_log`
 ADD PRIMARY KEY (`id`), ADD KEY `fk_survey_cron_log_survey_runs1_idx` (`run_id`);

--
-- Indexes for table `survey_emails`
--
ALTER TABLE `survey_emails`
 ADD PRIMARY KEY (`id`), ADD KEY `fk_survey_emails_survey_units1_idx` (`id`), ADD KEY `fk_survey_emails_survey_email_accounts1_idx` (`account_id`);

--
-- Indexes for table `survey_email_accounts`
--
ALTER TABLE `survey_email_accounts`
 ADD PRIMARY KEY (`id`), ADD KEY `fk_survey_emails_survey_users1_idx` (`user_id`);

--
-- Indexes for table `survey_email_log`
--
ALTER TABLE `survey_email_log`
 ADD PRIMARY KEY (`id`), ADD KEY `fk_survey_email_log_survey_emails1_idx` (`email_id`), ADD KEY `fk_survey_email_log_survey_unit_sessions1_idx` (`session_id`);

--
-- Indexes for table `survey_email_queue`
--
ALTER TABLE `survey_email_queue`
 ADD PRIMARY KEY (`id`), ADD KEY `account_id` (`account_id`);

--
-- Indexes for table `survey_externals`
--
ALTER TABLE `survey_externals`
 ADD PRIMARY KEY (`id`), ADD KEY `fk_survey_forks_survey_run_items1_idx` (`id`);

--
-- Indexes for table `survey_items`
--
ALTER TABLE `survey_items`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `study_item` (`study_id`,`name`), ADD KEY `fk_survey_items_survey_studies1_idx` (`study_id`), ADD KEY `type` (`study_id`,`type`), ADD KEY `page_no` (`page_no`);

--
-- Indexes for table `survey_items_display`
--
ALTER TABLE `survey_items_display`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `session_item_views` (`session_id`,`item_id`), ADD KEY `id_idx` (`item_id`), ADD KEY `answered` (`session_id`,`saved`), ADD KEY `page` (`page`);

--
-- Indexes for table `survey_item_choices`
--
ALTER TABLE `survey_item_choices`
 ADD PRIMARY KEY (`id`), ADD KEY `fk_survey_item_choices_survey_studies1_idx` (`study_id`), ADD KEY `listname` (`list_name`), ADD KEY `list_name` (`list_name`), ADD KEY `list_name_2` (`list_name`);

--
-- Indexes for table `survey_newsletter`
--
ALTER TABLE `survey_newsletter`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `survey_pages`
--
ALTER TABLE `survey_pages`
 ADD PRIMARY KEY (`id`), ADD KEY `fk_survey_feedback_survey_units1_idx` (`id`);

--
-- Indexes for table `survey_pauses`
--
ALTER TABLE `survey_pauses`
 ADD PRIMARY KEY (`id`), ADD KEY `fk_survey_breaks_survey_run_items1_idx` (`id`);

--
-- Indexes for table `survey_reports`
--
ALTER TABLE `survey_reports`
 ADD PRIMARY KEY (`session_id`), ADD KEY `fk_survey_results_survey_unit_sessions1_idx` (`session_id`), ADD KEY `fk_survey_reports_survey_units1_idx` (`unit_id`);

--
-- Indexes for table `survey_results`
--
ALTER TABLE `survey_results`
 ADD PRIMARY KEY (`session_id`), ADD KEY `fk_survey_results_survey_unit_sessions1_idx` (`session_id`), ADD KEY `fk_survey_results_survey_studies1_idx` (`study_id`), ADD KEY `ending` (`session_id`,`study_id`,`ended`);

--
-- Indexes for table `survey_runs`
--
ALTER TABLE `survey_runs`
 ADD PRIMARY KEY (`id`), ADD KEY `fk_runs_survey_users1_idx` (`user_id`), ADD KEY `fk_survey_runs_survey_units1_idx` (`reminder_email`), ADD KEY `fk_survey_runs_survey_units2_idx` (`service_message`), ADD KEY `fk_survey_runs_survey_units3_idx` (`overview_script`), ADD KEY `fk_survey_runs_survey_units4_idx` (`deactivated_page`), ADD KEY `last_deamon_access` (`last_deamon_access`);

--
-- Indexes for table `survey_run_sessions`
--
ALTER TABLE `survey_run_sessions`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `run_session` (`session`,`run_id`), ADD UNIQUE KEY `run_user` (`user_id`,`run_id`), ADD KEY `fk_survey_run_sessions_survey_runs1_idx` (`run_id`), ADD KEY `fk_survey_run_sessions_survey_users1_idx` (`user_id`), ADD KEY `fk_survey_run_sessions_survey_units1_idx` (`current_unit_id`), ADD KEY `position` (`position`);

--
-- Indexes for table `survey_run_settings`
--
ALTER TABLE `survey_run_settings`
 ADD PRIMARY KEY (`run_session_id`);

--
-- Indexes for table `survey_run_special_units`
--
ALTER TABLE `survey_run_special_units`
 ADD PRIMARY KEY (`id`), ADD KEY `run_id` (`run_id`), ADD KEY `type` (`type`);

--
-- Indexes for table `survey_run_units`
--
ALTER TABLE `survey_run_units`
 ADD PRIMARY KEY (`id`,`run_id`), ADD KEY `fk_survey_run_data_survey_runs1_idx` (`run_id`), ADD KEY `fk_survey_run_data_survey_run_items1_idx` (`unit_id`), ADD KEY `position_run` (`run_id`,`position`);

--
-- Indexes for table `survey_sessions_queue`
--
ALTER TABLE `survey_sessions_queue`
 ADD PRIMARY KEY (`unit_session_id`), ADD KEY `run_session_id` (`run_session_id`,`unit_id`), ADD KEY `expires` (`expires`);

--
-- Indexes for table `survey_shuffles`
--
ALTER TABLE `survey_shuffles`
 ADD PRIMARY KEY (`id`), ADD KEY `fk_survey_branch_survey_units1_idx` (`id`);

--
-- Indexes for table `survey_studies`
--
ALTER TABLE `survey_studies`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `name_by_user` (`user_id`,`name`), ADD KEY `fk_survey_studies_survey_users_idx` (`user_id`), ADD KEY `fk_survey_studies_run_items1_idx` (`id`);

--
-- Indexes for table `survey_text_messages`
--
ALTER TABLE `survey_text_messages`
 ADD PRIMARY KEY (`id`), ADD KEY `fk_survey_emails_survey_units1_idx` (`id`), ADD KEY `fk_survey_emails_survey_email_accounts1_idx` (`account_id`);

--
-- Indexes for table `survey_units`
--
ALTER TABLE `survey_units`
 ADD PRIMARY KEY (`id`), ADD KEY `type` (`type`);

--
-- Indexes for table `survey_unit_sessions`
--
ALTER TABLE `survey_unit_sessions`
 ADD PRIMARY KEY (`id`), ADD KEY `session_uq` (`created`,`run_session_id`,`unit_id`), ADD KEY `fk_survey_sessions_survey_units1_idx` (`unit_id`), ADD KEY `fk_survey_unit_sessions_survey_run_sessions1_idx` (`run_session_id`), ADD KEY `ended` (`ended`);

--
-- Indexes for table `survey_uploaded_files`
--
ALTER TABLE `survey_uploaded_files`
 ADD PRIMARY KEY (`id`,`run_id`), ADD UNIQUE KEY `unique` (`run_id`,`original_file_name`), ADD KEY `fk_survey_uploaded_files_survey_runs1_idx` (`run_id`);

--
-- Indexes for table `survey_users`
--
ALTER TABLE `survey_users`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `user_code_UNIQUE` (`user_code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `survey_cron_log`
--
ALTER TABLE `survey_cron_log`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `survey_email_accounts`
--
ALTER TABLE `survey_email_accounts`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `survey_email_log`
--
ALTER TABLE `survey_email_log`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `survey_email_queue`
--
ALTER TABLE `survey_email_queue`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `survey_items`
--
ALTER TABLE `survey_items`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `survey_items_display`
--
ALTER TABLE `survey_items_display`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `survey_item_choices`
--
ALTER TABLE `survey_item_choices`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `survey_newsletter`
--
ALTER TABLE `survey_newsletter`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `survey_runs`
--
ALTER TABLE `survey_runs`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `survey_run_sessions`
--
ALTER TABLE `survey_run_sessions`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `survey_run_units`
--
ALTER TABLE `survey_run_units`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `survey_units`
--
ALTER TABLE `survey_units`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `survey_unit_sessions`
--
ALTER TABLE `survey_unit_sessions`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `survey_uploaded_files`
--
ALTER TABLE `survey_uploaded_files`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `survey_users`
--
ALTER TABLE `survey_users`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `shuffle`
--
ALTER TABLE `shuffle`
ADD CONSTRAINT `fk_unit_sessions_shuffle` FOREIGN KEY (`session_id`) REFERENCES `survey_unit_sessions` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_unit_shuffle` FOREIGN KEY (`unit_id`) REFERENCES `survey_units` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `survey_branches`
--
ALTER TABLE `survey_branches`
ADD CONSTRAINT `fk_branch_unit` FOREIGN KEY (`id`) REFERENCES `survey_units` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `survey_cron_log`
--
ALTER TABLE `survey_cron_log`
ADD CONSTRAINT `fk_survey_cron_log_survey_runs1` FOREIGN KEY (`run_id`) REFERENCES `survey_runs` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `survey_emails`
--
ALTER TABLE `survey_emails`
ADD CONSTRAINT `fk_email_acc` FOREIGN KEY (`account_id`) REFERENCES `survey_email_accounts` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_email_unit` FOREIGN KEY (`id`) REFERENCES `survey_units` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `survey_email_accounts`
--
ALTER TABLE `survey_email_accounts`
ADD CONSTRAINT `fk_email_user` FOREIGN KEY (`user_id`) REFERENCES `survey_users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `survey_email_log`
--
ALTER TABLE `survey_email_log`
ADD CONSTRAINT `fk_survey_email_log_survey_emails1` FOREIGN KEY (`email_id`) REFERENCES `survey_emails` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_survey_email_log_survey_unit_sessions1` FOREIGN KEY (`session_id`) REFERENCES `survey_unit_sessions` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION;

--
-- Constraints for table `survey_email_queue`
--
ALTER TABLE `survey_email_queue`
ADD CONSTRAINT `survey_email_queue_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `survey_email_accounts` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `survey_externals`
--
ALTER TABLE `survey_externals`
ADD CONSTRAINT `fk_external_unit` FOREIGN KEY (`id`) REFERENCES `survey_units` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `survey_items`
--
ALTER TABLE `survey_items`
ADD CONSTRAINT `fk_survey_items_survey_studies1` FOREIGN KEY (`study_id`) REFERENCES `survey_studies` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `survey_items_display`
--
ALTER TABLE `survey_items_display`
ADD CONSTRAINT `itemid` FOREIGN KEY (`item_id`) REFERENCES `survey_items` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
ADD CONSTRAINT `sessionidx` FOREIGN KEY (`session_id`) REFERENCES `survey_unit_sessions` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `survey_item_choices`
--
ALTER TABLE `survey_item_choices`
ADD CONSTRAINT `fk_survey_item_choices_survey_studies1` FOREIGN KEY (`study_id`) REFERENCES `survey_studies` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `survey_pages`
--
ALTER TABLE `survey_pages`
ADD CONSTRAINT `fk_page_unit` FOREIGN KEY (`id`) REFERENCES `survey_units` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `survey_pauses`
--
ALTER TABLE `survey_pauses`
ADD CONSTRAINT `fk_survey_breaks_survey_run_items1` FOREIGN KEY (`id`) REFERENCES `survey_units` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `survey_reports`
--
ALTER TABLE `survey_reports`
ADD CONSTRAINT `fk_survey_reports_survey_units1` FOREIGN KEY (`unit_id`) REFERENCES `survey_units` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_survey_results_survey_unit_sessions10` FOREIGN KEY (`session_id`) REFERENCES `survey_unit_sessions` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `survey_results`
--
ALTER TABLE `survey_results`
ADD CONSTRAINT `fk_survey_results_survey_studies1` FOREIGN KEY (`study_id`) REFERENCES `survey_studies` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_survey_results_survey_unit_sessions1` FOREIGN KEY (`session_id`) REFERENCES `survey_unit_sessions` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `survey_runs`
--
ALTER TABLE `survey_runs`
ADD CONSTRAINT `fk_runs_survey_users1` FOREIGN KEY (`user_id`) REFERENCES `survey_users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_survey_runs_survey_units1` FOREIGN KEY (`reminder_email`) REFERENCES `survey_units` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_survey_runs_survey_units2` FOREIGN KEY (`service_message`) REFERENCES `survey_units` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_survey_runs_survey_units3` FOREIGN KEY (`overview_script`) REFERENCES `survey_units` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_survey_runs_survey_units4` FOREIGN KEY (`deactivated_page`) REFERENCES `survey_units` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `survey_run_sessions`
--
ALTER TABLE `survey_run_sessions`
ADD CONSTRAINT `fk_survey_run_sessions_survey_runs1` FOREIGN KEY (`run_id`) REFERENCES `survey_runs` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_survey_run_sessions_survey_units1` FOREIGN KEY (`current_unit_id`) REFERENCES `survey_units` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_survey_run_sessions_survey_users1` FOREIGN KEY (`user_id`) REFERENCES `survey_users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `survey_run_special_units`
--
ALTER TABLE `survey_run_special_units`
ADD CONSTRAINT `survey_run_special_units_ibfk_1` FOREIGN KEY (`id`) REFERENCES `survey_units` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
ADD CONSTRAINT `survey_run_special_units_ibfk_2` FOREIGN KEY (`run_id`) REFERENCES `survey_runs` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `survey_run_units`
--
ALTER TABLE `survey_run_units`
ADD CONSTRAINT `fk_suru` FOREIGN KEY (`run_id`) REFERENCES `survey_runs` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_suru_it` FOREIGN KEY (`unit_id`) REFERENCES `survey_units` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `survey_shuffles`
--
ALTER TABLE `survey_shuffles`
ADD CONSTRAINT `fk_shuffle_unit` FOREIGN KEY (`id`) REFERENCES `survey_units` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `survey_studies`
--
ALTER TABLE `survey_studies`
ADD CONSTRAINT `fk_study_unit` FOREIGN KEY (`id`) REFERENCES `survey_units` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_survey_studies_survey_users` FOREIGN KEY (`user_id`) REFERENCES `survey_users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `survey_text_messages`
--
ALTER TABLE `survey_text_messages`
ADD CONSTRAINT `fk_email_acc0` FOREIGN KEY (`account_id`) REFERENCES `survey_email_accounts` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_email_unit0` FOREIGN KEY (`id`) REFERENCES `survey_units` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `survey_unit_sessions`
--
ALTER TABLE `survey_unit_sessions`
ADD CONSTRAINT `fk_survey_sessions_survey_units1` FOREIGN KEY (`unit_id`) REFERENCES `survey_units` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_survey_unit_sessions_survey_run_sessions1` FOREIGN KEY (`run_session_id`) REFERENCES `survey_run_sessions` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `survey_uploaded_files`
--
ALTER TABLE `survey_uploaded_files`
ADD CONSTRAINT `fk_survey_uploaded_files_survey_runs1` FOREIGN KEY (`run_id`) REFERENCES `survey_runs` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
