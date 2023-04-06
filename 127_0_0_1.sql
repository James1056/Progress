-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 06, 2023 at 09:10 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `csc340sp23-book-manager`
--
CREATE DATABASE IF NOT EXISTS `csc340sp23-book-manager` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `csc340sp23-book-manager`;
--
-- Database: `csc340sp23-crud`
--
CREATE DATABASE IF NOT EXISTS `csc340sp23-crud` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `csc340sp23-crud`;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `price`) VALUES
(1, 'Devin', 45);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` bigint(20) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"progress\",\"table\":\"split\"},{\"db\":\"progress\",\"table\":\"question\"},{\"db\":\"proj3\",\"table\":\"faculty\"},{\"db\":\"proj3\",\"table\":\"employee\"},{\"db\":\"csc340sp23-crud\",\"table\":\"product\"},{\"db\":\"progress\",\"table\":\"user\"},{\"db\":\"progress\",\"table\":\"client\"},{\"db\":\"progress\",\"table\":\"gym\"},{\"db\":\"proj3\",\"table\":\"dependent\"},{\"db\":\"proj3\",\"table\":\"deptlocation\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'progress', 'user', '{\"sorted_col\":\"`user`.`fitness_level` ASC\"}', '2023-04-02 21:30:35'),
('root', 'proj3', 'employee', '{\"sorted_col\":\"`employee`.`SSN` ASC\"}', '2023-04-02 00:12:39'),
('root', 'proj3', 'manager', '{\"sorted_col\":\"`manager`.`SSN` ASC\"}', '2023-03-22 23:35:17');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2023-04-06 19:10:44', '{\"Console\\/Mode\":\"show\",\"Console\\/Height\":107.9395,\"ThemeDefault\":\"pmahomme\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `progress`
--
CREATE DATABASE IF NOT EXISTS `progress` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `progress`;

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `user_id` int(11) NOT NULL,
  `trainer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gym`
--

CREATE TABLE `gym` (
  `id` int(11) NOT NULL,
  `intro` varchar(5000) NOT NULL,
  `facility` varchar(5000) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `meal plan`
--

CREATE TABLE `meal plan` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `text` varchar(1000) NOT NULL,
  `file` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `meal plan`
--

INSERT INTO `meal plan` (`id`, `user_id`, `text`, `file`) VALUES
(1, 3, 'During the week I consume around 3500 calories as I am on a bulk.\r\n\r\nEach day I shall start with a bowl of porridge along with a high calorie protien shake, then I have a snake of a peanut butter sandwich before lunch. For lunch I shall have chicken pasta along with two bananas. After I have worked out I will have a post workout meal of', '');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `response_user_id` int(11) NOT NULL,
  `text` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `partner request`
--

CREATE TABLE `partner request` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `text` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `partner request`
--

INSERT INTO `partner request` (`id`, `user_id`, `text`) VALUES
(1, 1, 'Hey guys I\'m new to the gym and am looking for a person to help teach me what I need to do, I want to focus on upper body, thank you.'),
(2, 2, 'I\'ve been going to the gym for a while now and would really want to work out with a partner.');

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `user_id` int(11) NOT NULL,
  `bio` text NOT NULL,
  `profile_picture` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `id` int(11) NOT NULL,
  `text` varchar(700) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`id`, `text`, `user_id`) VALUES
(16, 'My lower back hurtrs during squats, does anyone know why? any tips?', 0),
(17, 'my back is disjointed,, what i do', 0),
(18, 'Can someone help me', 0);

-- --------------------------------------------------------

--
-- Table structure for table `reply`
--

CREATE TABLE `reply` (
  `id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `text` varchar(500) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `split`
--

CREATE TABLE `split` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `text` varchar(1000) NOT NULL,
  `title` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `split`
--

INSERT INTO `split` (`id`, `user_id`, `text`, `title`) VALUES
(14, 0, 'Im gonna teach you how. follow this workout', 'Bench 400'),
(15, 0, 'first this and that then this, then that', 'Squat 500'),
(16, 0, 'eat food, lift weight', 'Get massive');

-- --------------------------------------------------------

--
-- Table structure for table `trainer`
--

CREATE TABLE `trainer` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `gym_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `training video`
--

CREATE TABLE `training video` (
  `id` int(11) NOT NULL,
  `trainer_id` int(11) NOT NULL,
  `video` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(40) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `D.O.B` date NOT NULL,
  `gender` varchar(6) NOT NULL,
  `fitness_level` int(11) NOT NULL,
  `password` varchar(20) NOT NULL,
  `dob` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `first_name`, `last_name`, `D.O.B`, `gender`, `fitness_level`, `password`, `dob`) VALUES
(1, 'sam03lift', 'Samantha ', 'Bailey', '2004-02-11', 'F', 2, 'test123', NULL),
(2, 'coop123', 'Gerald ', 'Cooper', '2003-01-06', 'M', 1, 'test2', NULL),
(3, '245Shar245', 'Sharon', 'Harold', '1996-07-12', 'F', 3, 'Test!3', NULL),
(4, 'AKing927', 'Adam', 'King', '1999-05-01', 'M', 4, 'Trainer123', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gym`
--
ALTER TABLE `gym`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meal plan`
--
ALTER TABLE `meal plan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partner request`
--
ALTER TABLE `partner request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reply`
--
ALTER TABLE `reply`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `split`
--
ALTER TABLE `split`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trainer`
--
ALTER TABLE `trainer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `training video`
--
ALTER TABLE `training video`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gym`
--
ALTER TABLE `gym`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `meal plan`
--
ALTER TABLE `meal plan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `partner request`
--
ALTER TABLE `partner request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `reply`
--
ALTER TABLE `reply`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `split`
--
ALTER TABLE `split`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `trainer`
--
ALTER TABLE `trainer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `training video`
--
ALTER TABLE `training video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Database: `proj3`
--
CREATE DATABASE IF NOT EXISTS `proj3` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `proj3`;

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `deptNum` int(11) NOT NULL,
  `deptName` varchar(20) DEFAULT NULL,
  `NumEmp` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`deptNum`, `deptName`, `NumEmp`) VALUES
(51, 'scottandrick', 2),
(61, 'tomandjack', 2);

-- --------------------------------------------------------

--
-- Table structure for table `dependent`
--

CREATE TABLE `dependent` (
  `SSN` decimal(9,0) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `relationship` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dependent`
--

INSERT INTO `dependent` (`SSN`, `name`, `relationship`) VALUES
('113764712', 'daddy trackus', 'father'),
('233762212', 'momma lackus', 'mother'),
('492769122', 'cuz mocklidius gladi', 'cousin'),
('777782212', 'momma fackus', 'mother');

-- --------------------------------------------------------

--
-- Table structure for table `deptlocation`
--

CREATE TABLE `deptlocation` (
  `deptNum` int(11) NOT NULL,
  `location` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `deptlocation`
--

INSERT INTO `deptlocation` (`deptNum`, `location`) VALUES
(51, 'albemarle, nc'),
(61, 'greensboro, nc');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `SSN` decimal(9,0) NOT NULL,
  `dob` varchar(10) DEFAULT NULL,
  `fname` varchar(20) DEFAULT NULL,
  `minit` varchar(1) DEFAULT NULL,
  `lname` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`SSN`, `dob`, `fname`, `minit`, `lname`) VALUES
('273291', '03131956', 'Marlee', 'O', 'McLaughlin\r'),
('357316', '09181932', 'Devonte', 'E', 'Doyle\r'),
('706617', '11181982', 'Cierra', 'A', 'Lesch\r'),
('2066862', '11051944', 'Watson', 'R', 'Legros\r'),
('3044388', '03231936', 'Marcelo', 'U', 'Pollich\r'),
('4379718', '07141991', 'Alda', 'U', 'Auer\r'),
('4737425', '07031980', 'Leonardo', 'C', 'Daugherty\r'),
('5377222', '04271984', 'Finn', 'C', 'Krajcik\r'),
('5952885', '07201953', 'Lisa', 'H', 'Purdy\r'),
('6521802', '06221942', 'Joana', 'H', 'Beier\r'),
('6533757', '08121970', 'Marley', 'O', 'Cole\r'),
('7017565', '08241950', 'Horacio', 'M', 'Durgan\r'),
('7544811', '05021951', 'Adelia', 'X', 'Dickinson\r'),
('7815694', '07211963', 'Lempi', 'V', 'Bauch\r'),
('7827146', '04201997', 'Yasmine', 'H', 'Rowe\r'),
('8091151', '09041983', 'Winifred', 'R', 'Steuber\r'),
('10278464', '11111947', 'Floy', 'I', 'Hettinger\r'),
('10492665', '09051959', 'Kyleigh', 'W', 'Eichmann\r'),
('12214168', '09261967', 'Kimberly', 'X', 'Cummings\r'),
('12333521', '09021948', 'Melyna', 'V', 'Kuhn\r'),
('12765019', '07261951', 'Alexa', 'Q', 'Olson\r'),
('12804165', '06091932', 'Judah', 'E', 'Lueilwitz\r'),
('13152384', '03201985', 'Alene', 'H', 'Zulauf\r'),
('13322921', '10051938', 'Brannon', 'U', 'Howell\r'),
('14009237', '02261984', 'Holly', 'G', 'Collier\r'),
('14290815', '03191935', 'Elda', 'N', 'Luettgen\r'),
('15152916', '04011960', 'Karen', 'O', 'Heidenreich\r'),
('15328450', '05221951', 'Saul', 'D', 'Yost\r'),
('15375271', '02161926', 'Leonora', 'I', 'Mitchell\r'),
('15910563', '02251930', 'Sarina', 'U', 'Anderson\r'),
('16015420', '07041924', 'Hettie', 'F', 'Rutherford\r'),
('16024145', '03231983', 'Camren', 'T', 'Gleichner\r'),
('16411998', '07241940', 'Laurianne', 'Z', 'Dietrich\r'),
('16727614', '10211963', 'Moses', 'G', 'Kohler\r'),
('16875078', '10201943', 'Maximus', 'E', 'Price\r'),
('17623467', '10051955', 'Jaqueline', 'Z', 'Boyle\r'),
('18098562', '04211958', 'Hadley', 'K', 'Barton\r'),
('18229361', '09061956', 'Julius', 'G', 'Kulas\r'),
('18281906', '02101938', 'Jackie', 'L', 'Murphy\r'),
('18316716', '07051990', 'Celine', 'B', 'Gleason\r'),
('19080860', '04251962', 'Clay', 'R', 'Windler\r'),
('19200802', '07111936', 'Verla', 'V', 'Kris\r'),
('20301216', '08091973', 'Kathleen', 'D', 'Daugherty\r'),
('21176951', '10111986', 'Xander', 'J', 'Dare\r'),
('21314374', '09221922', 'Isabella', 'I', 'Funk\r'),
('22458384', '02081966', 'Clare', 'V', 'Leffler\r'),
('22808339', '11271955', 'Mariana', 'F', 'Eichmann\r'),
('23439761', '11271973', 'Nikolas', 'N', 'Mraz\r'),
('23715183', '06091985', 'Heaven', 'R', 'Kiehn\r'),
('24334428', '06041976', 'Else', 'S', 'Monahan\r'),
('25740706', '05111962', 'Wiley', 'U', 'Lemke\r'),
('25984626', '01241988', 'Jaylin', 'O', 'Leffler\r'),
('26283693', '05051995', 'Erick', 'Y', 'Zieme\r'),
('27557833', '04051972', 'Virgil', 'K', 'Greenholt\r'),
('28414960', '04281940', 'Kristoffer', 'A', 'Prosacco\r'),
('30971383', '05081967', 'Darrell', 'N', 'Nitzsche\r'),
('31082557', '03181967', 'Bud', 'D', 'Kris\r'),
('31135417', '02231991', 'Kelvin', 'R', 'Ward\r'),
('31883677', '11141946', 'Jaleel', 'B', 'O\'Conner\r'),
('32050967', '08061932', 'Lessie', 'I', 'Cartwright\r'),
('32777106', '11051942', 'Haven', 'C', 'Frami\r'),
('33273084', '08131932', 'Casper', 'T', 'Abernathy\r'),
('33631111', '01071968', 'Henderson', 'S', 'Jacobs\r'),
('34203970', '09251945', 'Candelario', 'X', 'Cormier\r'),
('34435748', '03031954', 'Erling', 'X', 'Hansen\r'),
('34674287', '07051935', 'Reece', 'N', 'Jaskolski\r'),
('34883205', '10241956', 'Gerry', 'B', 'Kutch\r'),
('35171530', '06281954', 'Loraine', 'F', 'Price\r'),
('35703067', '08121933', 'Lilliana', 'Z', 'Schoen\r'),
('35750622', '06151962', 'Shaina', 'M', 'McClure\r'),
('35865444', '09111977', 'Bert', 'Z', 'Jast\r'),
('36529686', '06051982', 'Nella', 'P', 'Ryan\r'),
('37113002', '03221943', 'Damaris', 'A', 'Williamson\r'),
('37144628', '04181930', 'Hal', 'V', 'Treutel\r'),
('37277128', '02261959', 'Jaleel', 'S', 'Feest\r'),
('38317486', '05091992', 'Rosario', 'D', 'Pagac\r'),
('39180663', '07021996', 'Gabrielle', 'M', 'Nolan\r'),
('39314262', '08171971', 'Dejuan', 'E', 'Abshire\r'),
('39504532', '07211931', 'Ofelia', 'D', 'Rohan\r'),
('40034202', '08091938', 'Parker', 'S', 'Schroeder\r'),
('40483358', '09191970', 'Carlotta', 'T', 'Zulauf\r'),
('41013043', '10102000', 'Crystal', 'K', 'Treutel\r'),
('41038321', '04111945', 'Russel', 'E', 'Hoppe\r'),
('41140778', '07151982', 'Ted', 'U', 'Fahey\r'),
('41231244', '06181992', 'Demario', 'G', 'Kuhlman\r'),
('41279134', '07131958', 'Floy', 'P', 'Jacobson\r'),
('42562456', '04211968', 'Lorenza', 'O', 'Mitchell\r'),
('43402105', '10201987', 'Jamaal', 'W', 'Hermann\r'),
('44308635', '11221963', 'Myrtis', 'J', 'Lubowitz\r'),
('44531418', '01241924', 'Madisen', 'I', 'Cartwright\r'),
('45242704', '06161978', 'Mathew', 'O', 'Howell\r'),
('45871132', '04021951', 'Dane', 'P', 'Huel\r'),
('45886843', '09031942', 'Armani', 'J', 'Marquardt\r'),
('46254272', '10081925', 'Milton', 'Y', 'Jacobi\r'),
('46744686', '05211936', 'Gregg', 'P', 'Greenfelder\r'),
('48364017', '09131947', 'Rosalyn', 'P', 'Davis\r'),
('48942705', '06281985', 'Davon', 'X', 'Tromp\r'),
('49140403', '02091994', 'Reuben', 'F', 'Connelly\r'),
('50085068', '06181994', 'Emely', 'A', 'Barrows\r'),
('50663727', '06171995', 'Donavon', 'U', 'Bernier\r'),
('50788223', '10101924', 'Jessika', 'S', 'DuBuque\r'),
('50872653', '04061949', 'Gilberto', 'D', 'Klein\r'),
('51137882', '05281981', 'Garnett', 'V', 'Huel\r'),
('51164629', '08061945', 'Herta', 'H', 'Koelpin\r'),
('51205173', '04172001', 'Quinton', 'K', 'Olson\r'),
('52160351', '08271959', 'Clementine', 'S', 'Greenfelder\r'),
('52282043', '01141998', 'Durward', 'W', 'Renner\r'),
('52416331', '02251953', 'Gay', 'I', 'Parker\r'),
('52759436', '02041973', 'Carmine', 'C', 'Reichel\r'),
('53081651', '02141972', 'Donavon', 'I', 'Abernathy\r'),
('53433640', '03261937', 'Brant', 'L', 'Gorczany\r'),
('53783954', '09271952', 'Amaya', 'J', 'Greenholt\r'),
('54227884', '05151952', 'Adonis', 'Z', 'Lehner\r'),
('54558871', '08121946', 'Sam', 'G', 'Morar\r'),
('55447283', '06101984', 'Gail', 'K', 'Oberbrunner\r'),
('55682203', '05121939', 'Annabel', 'X', 'Herzog\r'),
('55975221', '07271930', 'Pearl', 'J', 'Little\r'),
('56378625', '07041975', 'Lia', 'O', 'Stoltenberg\r'),
('56735440', '10021935', 'Larue', 'R', 'Vandervort\r'),
('57005121', '07011998', 'Audrey', 'V', 'Jacobson\r'),
('57129761', '11181963', 'Loraine', 'E', 'Lindgren\r'),
('57237241', '03261976', 'Mabel', 'I', 'Walker\r'),
('57387387', '02151993', 'Wilson', 'X', 'Ritchie\r'),
('58230597', '08141985', 'Clair', 'E', 'Satterfield\r'),
('58248077', '09231995', 'Sigmund', 'W', 'Hodkiewicz\r'),
('58624658', '09231949', 'Yasmin', 'N', 'Osinski\r'),
('59551114', '06041983', 'Mia', 'I', 'Walker\r'),
('59847633', '06061952', 'Jesus', 'G', 'O\'Kon\r'),
('59947512', '02131925', 'Brisa', 'M', 'Crist\r'),
('62114153', '06101953', 'Destiney', 'B', 'Harber\r'),
('64614258', '01261985', 'Jayce', 'D', 'Aufderhar\r'),
('65095352', '08131966', 'Jerrod', 'V', 'Nikolaus\r'),
('65437106', '04071965', 'Rebecca', 'I', 'Waters\r'),
('66527843', '03261969', 'Glenda', 'T', 'Lebsack\r'),
('67249128', '02272000', 'Retha', 'Q', 'Hilpert\r'),
('67501556', '03031929', 'Friedrich', 'L', 'Hessel\r'),
('68431982', '10231973', 'Dylan', 'J', 'Kihn\r'),
('70762363', '04181983', 'Lonie', 'E', 'Tremblay\r'),
('70922932', '10221981', 'Shanie', 'B', 'Torp\r'),
('71223363', '09051943', 'Joelle', 'P', 'Feeney\r'),
('71360858', '09071956', 'Isadore', 'I', 'Sanford\r'),
('71403218', '05051920', 'Jany', 'F', 'Pfeffer\r'),
('73661827', '01071964', 'Verna', 'W', 'King\r'),
('73682764', '06261974', 'Carey', 'F', 'Murray\r'),
('73696332', '02051991', 'Alvena', 'M', 'McKenzie\r'),
('74606216', '05081966', 'Pete', 'N', 'Koss\r'),
('75070035', '02171981', 'Seamus', 'U', 'Ortiz\r'),
('75269355', '03151955', 'Ernestine', 'I', 'Kutch\r'),
('75865141', '03121931', 'Broderick', 'V', 'Beahan\r'),
('76230536', '02071961', 'Itzel', 'Y', 'Corkery\r'),
('76258846', '05251932', 'Oren', 'N', 'Farrell\r'),
('77251030', '04171980', 'Dimitri', 'H', 'Ullrich\r'),
('77407088', '06131982', 'Margarette', 'H', 'Roob\r'),
('77480137', '10211944', 'Hipolito', 'B', 'Bayer\r'),
('77817737', '08181971', 'Claire', 'R', 'Reinger\r'),
('78416422', '02101980', 'Daron', 'K', 'Fadel\r'),
('78515312', '01021996', 'Moriah', 'M', 'Stehr\r'),
('79507808', '05161947', 'Ova', 'I', 'Heathcote\r'),
('80199252', '06101976', 'Floyd', 'Y', 'Gibson\r'),
('80567058', '04251948', 'Caleb', 'T', 'Bednar\r'),
('81052967', '10101924', 'Rossie', 'D', 'Leffler\r'),
('81873663', '04031990', 'Justyn', 'U', 'Raynor\r'),
('83920591', '07061938', 'Noemie', 'Z', 'Heller\r'),
('84204078', '07271991', 'Autumn', 'U', 'Swaniawski\r'),
('84226156', '05261932', 'Maurice', 'T', 'Padberg\r'),
('84429790', '05171978', 'Bradford', 'Q', 'Effertz\r'),
('84469055', '06021926', 'Modesto', 'N', 'Batz\r'),
('84692910', '07111964', 'Tina', 'D', 'Watsica\r'),
('84717161', '08161924', 'Wade', 'D', 'Block\r'),
('84900122', '04091952', 'Bennett', 'T', 'Kassulke\r'),
('85407117', '09261960', 'Gus', 'M', 'Heathcote\r'),
('85749239', '04102001', 'Ian', 'E', 'Rosenbaum\r'),
('86014048', '02171940', 'Alanna', 'Y', 'Leannon\r'),
('86161568', '09091983', 'Krista', 'L', 'Crona\r'),
('86389581', '06271980', 'Pedro', 'W', 'Weber\r'),
('86675244', '01221993', 'Etha', 'T', 'Larson\r'),
('86963938', '03061969', 'Valentine', 'R', 'Goldner\r'),
('87620345', '07061976', 'Malvina', 'K', 'Pacocha\r'),
('88340151', '04091949', 'Emmet', 'S', 'Bednar\r'),
('88620170', '04021926', 'Garrett', 'H', 'O\'Hara\r'),
('88985861', '03241988', 'Garett', 'D', 'Pacocha\r'),
('91083629', '02181978', 'Hank', 'I', 'Yundt\r'),
('91764933', '02191987', 'Sofia', 'I', 'Reichel\r'),
('92142872', '03071972', 'Bernardo', 'K', 'Luettgen\r'),
('94160354', '05091975', 'Janice', 'X', 'West\r'),
('94207282', '02281960', 'Fidel', 'Z', 'Fritsch\r'),
('96800730', '04121981', 'Cyril', 'K', 'Morissette\r'),
('97603171', '05101977', 'Deonte', 'F', 'Kirlin\r'),
('99103385', '10211922', 'Kasey', 'X', 'Johnson\r'),
('99725745', '07041933', 'Lorena', 'Q', 'Stamm\r'),
('101106506', '06171980', 'Leonel', 'X', 'VonRueden\r'),
('101137525', '02101975', 'Amos', 'K', 'Eichmann\r'),
('101218169', '07111950', 'Branson', 'S', 'Sawayn\r'),
('101772426', '03061989', 'Ahmad', 'E', 'Heathcote\r'),
('101829081', '05281948', 'Bettye', 'A', 'Gutmann\r'),
('102427510', '07051922', 'Georgianna', 'H', 'Welch\r'),
('102678637', '07181933', 'Rhea', 'E', 'Runte\r'),
('102781157', '06141984', 'Sister', 'U', 'Treutel\r'),
('103531949', '04211989', 'Elroy', 'V', 'Heathcote\r'),
('103657840', '07241945', 'Lora', 'L', 'Reichert\r'),
('104262592', '10211931', 'Casey', 'O', 'Hudson\r'),
('106032262', '03271978', 'Ernestina', 'W', 'Hodkiewicz\r'),
('106185880', '01162000', 'Katheryn', 'Z', 'Stehr\r'),
('107248286', '01011958', 'Felix', 'G', 'Dooley\r'),
('107812894', '03071940', 'Astrid', 'R', 'Mante\r'),
('109537442', '04161988', 'Dixie', 'N', 'Kihn\r'),
('110030482', '03081968', 'Brenna', 'Y', 'Pfannerstill\r'),
('110493407', '03111953', 'Soledad', 'U', 'Johnson\r'),
('110551548', '07231986', 'Jarred', 'S', 'McLaughlin\r'),
('110573954', '02051982', 'Sienna', 'Q', 'Barrows\r'),
('111255697', '08101987', 'Emmitt', 'K', 'Dickens\r'),
('112647647', '07021954', 'Joanny', 'O', 'Halvorson\r'),
('113024663', '02181921', 'Virginia', 'H', 'Abernathy\r'),
('113137612', '02031979', 'Cora', 'R', 'Armstrong\r'),
('113315343', '03051944', 'Jefferey', 'F', 'Heidenreich\r'),
('113450139', '06051949', 'Henry', 'I', 'Spinka\r'),
('113844563', '10091999', 'Marlene', 'N', 'Windler\r'),
('114476158', '10061943', 'Mauricio', 'P', 'Nader\r'),
('115788932', '10041947', 'Lura', 'U', 'Runte\r'),
('115879303', '04061934', 'Marley', 'F', 'Cole\r'),
('116434288', '04131921', 'Bertrand', 'N', 'Dare\r'),
('117136879', '08181982', 'Dejuan', 'H', 'Jenkins\r'),
('117262180', '03051928', 'Devin', 'E', 'Raynor\r'),
('119100161', '03071926', 'Brenna', 'Q', 'Gutkowski\r'),
('120070127', '01231935', 'Felton', 'E', 'Gibson\r'),
('120126064', '07121972', 'Ottilie', 'H', 'Waelchi\r'),
('120237763', '01041944', 'Elsa', 'V', 'Eichmann\r'),
('120242175', '04251963', 'Anderson', 'O', 'Bahringer\r'),
('120402508', '02031994', 'Sharon', 'T', 'Hauck\r'),
('121284474', '08231980', 'Oma', 'T', 'Ritchie\r'),
('122357462', '10261970', 'Ewell', 'E', 'Friesen\r'),
('123436528', '01241958', 'Hobart', 'V', 'Schmidt\r'),
('123768750', '01251987', 'Federico', 'J', 'Spencer\r'),
('123870315', '09281955', 'Parker', 'J', 'Yundt\r'),
('124280708', '02211996', 'River', 'Z', 'McLaughlin\r'),
('124287467', '06281931', 'Lesley', 'L', 'Hegmann\r'),
('127007887', '05081922', 'Joana', 'K', 'Hyatt\r'),
('127218966', '07171963', 'Junius', 'E', 'Hermiston\r'),
('127375212', '10181990', 'Alexandrine', 'K', 'Gottlieb\r'),
('129876747', '10081947', 'Katelynn', 'K', 'Kuphal\r'),
('130853992', '04281968', 'Gladys', 'C', 'Yundt\r'),
('131406325', '10091927', 'Doug', 'M', 'Dicki\r'),
('131506144', '03201966', 'Alisa', 'D', 'Rowe\r'),
('131632117', '09271924', 'Jaquan', 'R', 'Emard\r'),
('131691572', '01141930', 'Charlotte', 'F', 'Huels\r'),
('131742087', '05041926', 'Adell', 'M', 'Howe\r'),
('131768570', '05181954', 'Hailie', 'I', 'Glover\r'),
('131982971', '05271936', 'Emilia', 'L', 'Runte\r'),
('132092000', '08161971', 'Delores', 'U', 'Conn\r'),
('132479427', '10071991', 'Terrill', 'D', 'Fahey\r'),
('132878024', '10161970', 'Joesph', 'F', 'Stamm\r'),
('133307003', '07112001', 'Mariah', 'N', 'Schroeder\r'),
('133310021', '07031982', 'Asia', 'H', 'Nitzsche\r'),
('134021443', '05251938', 'Lester', 'H', 'Gottlieb\r'),
('134025598', '01281972', 'Marcella', 'B', 'Block\r'),
('135004166', '03161984', 'Delaney', 'V', 'Keeling\r'),
('136447462', '05271972', 'Kaleigh', 'K', 'Harber\r'),
('136465029', '01141953', 'Louisa', 'X', 'Koss\r'),
('137212437', '05261987', 'Garth', 'L', 'Jaskolski\r'),
('137541378', '06141974', 'Nelda', 'W', 'Moen\r'),
('137687100', '07241990', 'Alverta', 'Y', 'Sanford\r'),
('137867804', '07261992', 'Wyatt', 'K', 'Mayert\r'),
('138414115', '02031955', 'Korbin', 'I', 'Goldner\r'),
('138840299', '07141974', 'Declan', 'V', 'Gulgowski\r'),
('139264360', '01171959', 'Effie', 'H', 'Rath\r'),
('139305851', '01151966', 'Ellen', 'Y', 'Kuhlman\r'),
('140058587', '06111938', 'Lucio', 'Y', 'Conn\r'),
('140477627', '07101997', 'Alycia', 'Z', 'Bashirian\r'),
('140765178', '02091922', 'Clemmie', 'J', 'Hane\r'),
('140897578', '04071936', 'Jacey', 'F', 'Ratke\r'),
('141061284', '05211994', 'Lizzie', 'M', 'Fritsch\r'),
('141179666', '05171989', 'Myron', 'O', 'Windler\r'),
('141506977', '06261958', 'Johann', 'D', 'Kreiger\r'),
('141805566', '05201951', 'Lexie', 'O', 'Mohr\r'),
('141930522', '05071959', 'Alfred', 'W', 'Trantow\r'),
('142183638', '10111972', 'Rosie', 'B', 'Waelchi\r'),
('143088631', '08051936', 'Selina', 'P', 'Homenick\r'),
('143471008', '04171934', 'Quincy', 'P', 'Ritchie\r'),
('143527855', '10091999', 'Zula', 'G', 'O\'Kon\r'),
('144373226', '04171922', 'Abe', 'P', 'Trantow\r'),
('145167228', '04101995', 'Einar', 'C', 'Hoeger\r'),
('145832702', '06011938', 'Ulices', 'H', 'Jast\r'),
('146894185', '08081947', 'Lessie', 'G', 'McGlynn\r'),
('146916578', '08081952', 'Meggie', 'F', 'Harber\r'),
('147583071', '05011964', 'Stella', 'H', 'Heaney\r'),
('148354533', '03131975', 'Autumn', 'T', 'Lueilwitz\r'),
('150300823', '02161963', 'Eldridge', 'H', 'Johns\r'),
('150336581', '02241934', 'Caroline', 'W', 'Kozey\r'),
('150343650', '04121996', 'Deangelo', 'U', 'Jakubowski\r'),
('151040755', '07261988', 'Vallie', 'Y', 'Adams\r'),
('151882635', '10081988', 'Neoma', 'E', 'Bauch\r'),
('152846040', '10231948', 'Marcos', 'W', 'Lynch\r'),
('153190835', '10261965', 'Roselyn', 'E', 'Wyman\r'),
('153364843', '05031929', 'Neil', 'V', 'Beer\r'),
('153765062', '08111971', 'Liliane', 'L', 'Walsh\r'),
('155076744', '02271932', 'Guillermo', 'T', 'Kerluke\r'),
('155170669', '05111998', 'Jorge', 'W', 'Koss\r'),
('155379326', '04111940', 'Gabriel', 'U', 'Olson\r'),
('155630346', '09051938', 'Kelton', 'P', 'Emard\r'),
('155733823', '04241962', 'Aletha', 'M', 'Cartwright\r'),
('156053974', '09211967', 'Carolyn', 'W', 'Carroll\r'),
('156170383', '10021982', 'Hermina', 'P', 'Grant\r'),
('156363445', '05061979', 'Lucas', 'I', 'Dooley\r'),
('156645463', '09021936', 'Marcia', 'I', 'Brakus\r'),
('157121220', '09161984', 'Humberto', 'C', 'Gleason\r'),
('157327254', '01241954', 'Greyson', 'R', 'Kohler\r'),
('157385985', '08101988', 'Bessie', 'E', 'Goodwin\r'),
('157423014', '08191992', 'Laila', 'A', 'Kihn\r'),
('157619686', '06191937', 'Andreanne', 'T', 'Wiza\r'),
('158157039', '09261926', 'Oscar', 'C', 'Fritsch\r'),
('158207738', '02121983', 'Lorenza', 'V', 'Hahn\r'),
('159387074', '10281951', 'Jewel', 'Y', 'Shanahan\r'),
('160056831', '07091979', 'Pascale', 'M', 'Beahan\r'),
('160094625', '11251948', 'Mckenna', 'U', 'Bernhard\r'),
('160655553', '04081956', 'Denis', 'P', 'Muller\r'),
('161037119', '06011964', 'Sigurd', 'X', 'Dickinson\r'),
('161269027', '05211924', 'Lewis', 'I', 'Parisian\r'),
('161342162', '07121942', 'Chad', 'U', 'Schroeder\r'),
('161551449', '03271985', 'Rodrick', 'E', 'Kilback\r'),
('161673485', '09041947', 'Pinkie', 'X', 'Goyette\r'),
('162133828', '04241943', 'Kailee', 'M', 'Lockman\r'),
('162282053', '02261937', 'Edwin', 'A', 'Ankunding\r'),
('162572566', '04281976', 'Aaron', 'K', 'Klocko\r'),
('162834445', '09101984', 'Adelbert', 'Y', 'Gibson\r'),
('162972303', '07061959', 'Hassie', 'H', 'Bradtke\r'),
('163463352', '08031976', 'Abe', 'L', 'Denesik\r'),
('163774687', '02151958', 'Jarod', 'R', 'Flatley\r'),
('163876496', '05091942', 'Verna', 'M', 'Ortiz\r'),
('165442229', '07241985', 'Mathias', 'M', 'Walsh\r'),
('165602070', '07231938', 'Carmel', 'M', 'Bruen\r'),
('165881358', '02231921', 'Savanah', 'E', 'Yost\r'),
('166036835', '11071965', 'Bennett', 'C', 'Crooks\r'),
('166266267', '09161938', 'Malvina', 'U', 'Jast\r'),
('166633574', '10231965', 'Hadley', 'N', 'Stroman\r'),
('167215278', '04171986', 'Jay', 'A', 'Hamill\r'),
('167623525', '10101995', 'Zora', 'P', 'Hilll\r'),
('168963382', '04261953', 'Adolph', 'P', 'Dibbert\r'),
('170663888', '07031980', 'Bethany', 'W', 'Mante\r'),
('170715153', '10211929', 'Ida', 'G', 'Walsh\r'),
('170918240', '05251941', 'Joey', 'G', 'Hegmann\r'),
('171133913', '11101939', 'Florian', 'W', 'Wyman\r'),
('171337731', '03241922', 'Darren', 'D', 'Hyatt\r'),
('173165255', '06071989', 'Otha', 'R', 'Pfeffer\r'),
('173202641', '08161955', 'Coby', 'H', 'Considine\r'),
('173741092', '04271992', 'Sigmund', 'V', 'Grimes\r'),
('174472129', '10081956', 'Jerrold', 'G', 'Pacocha\r'),
('175161214', '07211962', 'Bryce', 'R', 'Rippin\r'),
('176062831', '11201930', 'Mavis', 'J', 'Rice\r'),
('176552401', '08081937', 'Jeanette', 'N', 'Boehm\r'),
('177444254', '04151931', 'Antwon', 'E', 'Padberg\r'),
('177678212', '01171993', 'Christiana', 'X', 'Zieme\r'),
('177852825', '02201989', 'Jeromy', 'F', 'Beatty\r'),
('178062717', '02061941', 'Rex', 'R', 'Hoeger\r'),
('178618618', '05281970', 'Idell', 'X', 'Wunsch\r'),
('179518557', '10221926', 'Bonita', 'F', 'Reinger\r'),
('180474921', '06061944', 'Lea', 'O', 'Kreiger\r'),
('180990384', '09131963', 'Jacky', 'P', 'Bogan\r'),
('181075471', '10111999', 'Aron', 'M', 'Krajcik\r'),
('181605326', '01171973', 'Antone', 'Y', 'Schimmel\r'),
('181643950', '10061979', 'Rollin', 'K', 'Torphy\r'),
('182001203', '07231960', 'Allan', 'R', 'Dare\r'),
('182064565', '11051921', 'Kenya', 'M', 'Frami\r'),
('183001461', '04231972', 'Enrico', 'K', 'Kuvalis\r'),
('183106140', '09021990', 'Adolphus', 'V', 'Bergstrom\r'),
('183716570', '08251979', 'Rhoda', 'Y', 'Quigley\r'),
('184568762', '02171974', 'Randal', 'O', 'Larkin\r'),
('184684178', '06111975', 'Camila', 'D', 'Nikolaus\r'),
('185442594', '09091945', 'Eldred', 'S', 'Leannon\r'),
('186053674', '03051990', 'Carson', 'J', 'Goldner\r'),
('186344125', '09211982', 'Dandre', 'F', 'Fay\r'),
('186900191', '08071982', 'Linnie', 'E', 'Cronin\r'),
('187163650', '03131961', 'Lemuel', 'J', 'Kautzer\r'),
('187300003', '06111969', 'Shanon', 'B', 'Rosenbaum\r'),
('187714052', '06201971', 'Luz', 'R', 'Ernser\r'),
('187809440', '06061959', 'Eve', 'H', 'Cummerata\r'),
('187854937', '08201976', 'Floy', 'G', 'Denesik\r'),
('187909057', '07131954', 'Celine', 'W', 'Feil\r'),
('188602854', '08121983', 'Deondre', 'F', 'Bernhard\r'),
('188706325', '07031977', 'Marge', 'J', 'Dickens\r'),
('189240878', '03271957', 'Reagan', 'F', 'Stanton\r'),
('191367462', '05141924', 'Amalia', 'F', 'Ruecker\r'),
('192897344', '03231950', 'Rosalyn', 'M', 'Blanda\r'),
('193625165', '02191931', 'Evangeline', 'X', 'Bashirian\r'),
('193961195', '06191969', 'Dakota', 'F', 'Wisoky\r'),
('194044239', '04251987', 'Denis', 'K', 'Gibson\r'),
('197381639', '03201928', 'Josefa', 'F', 'Runolfsson\r'),
('198337568', '06061991', 'Kaylah', 'G', 'Stoltenberg\r'),
('198520365', '04271991', 'Brown', 'V', 'Emard\r'),
('199136100', '05251995', 'Destiny', 'D', 'Hintz\r'),
('199306307', '06171938', 'Abelardo', 'D', 'Littel\r'),
('200108000', '10101963', 'Onie', 'C', 'Kreiger\r'),
('200435210', '04041938', 'Lawrence', 'Y', 'Mueller\r'),
('200479002', '06201967', 'Jimmy', 'R', 'Gaylord\r'),
('200814826', '01081937', 'Shaun', 'Y', 'Stark\r'),
('200842083', '02151940', 'Pietro', 'K', 'Jacobs\r'),
('201513108', '02191937', 'Elton', 'F', 'Lind\r'),
('201614369', '10171933', 'Izaiah', 'M', 'Dibbert\r'),
('201701891', '04011922', 'Lafayette', 'U', 'Schmeler\r'),
('201721357', '01151929', 'Chet', 'P', 'Dare\r'),
('201911267', '08041951', 'Leola', 'U', 'Bogisich\r'),
('201958063', '04081936', 'Zoey', 'Y', 'Kuvalis\r'),
('202343455', '07141948', 'Ike', 'H', 'Torp\r'),
('202473880', '03161993', 'Guillermo', 'T', 'Hudson\r'),
('202620104', '07161999', 'Orlo', 'M', 'Hickle\r'),
('203494673', '09051962', 'Jefferey', 'N', 'Mosciski\r'),
('203780701', '05051993', 'Mavis', 'W', 'Jerde\r'),
('203908846', '06121981', 'Helena', 'S', 'Bergstrom\r'),
('204160751', '11281999', 'Dalton', 'R', 'Runolfsdottir\r'),
('204837491', '02191989', 'Stanford', 'V', 'Witting\r'),
('205345584', '11171932', 'Adelle', 'X', 'Leuschke\r'),
('206129880', '04261929', 'Royal', 'H', 'Powlowski\r'),
('206675874', '11191928', 'Trey', 'L', 'Kohler\r'),
('208085717', '02071962', 'Braden', 'H', 'Yost\r'),
('208836165', '07211955', 'Kenna', 'Y', 'Hudson\r'),
('208943572', '10151981', 'Crystal', 'G', 'Kub\r'),
('210568896', '08221934', 'Thea', 'V', 'Cormier\r'),
('211254193', '09211968', 'Anastacio', 'M', 'Stracke\r'),
('212646677', '09131959', 'Aylin', 'J', 'Paucek\r'),
('213483106', '09101984', 'Clara', 'U', 'Romaguera\r'),
('213514842', '06121972', 'Rachael', 'F', 'Waelchi\r'),
('213574062', '06161991', 'Mallie', 'I', 'Okuneva\r'),
('214102170', '08221990', 'Virgil', 'P', 'Ortiz\r'),
('214584565', '05071937', 'Fabian', 'M', 'Bauch\r'),
('214621088', '09081930', 'Tomasa', 'H', 'Schowalter\r'),
('214842783', '01191932', 'Laurine', 'I', 'Ankunding\r'),
('215005461', '02211961', 'Donnie', 'I', 'Schultz\r'),
('215182402', '05131993', 'River', 'F', 'Purdy\r'),
('215246946', '01271934', 'Nyah', 'H', 'Glover\r'),
('215297864', '06191924', 'Felicia', 'D', 'Schumm\r'),
('215390115', '06241962', 'Pete', 'K', 'Champlin\r'),
('215857770', '08211931', 'Vilma', 'Y', 'Thiel\r'),
('217240678', '08101971', 'Jamel', 'D', 'Howell\r'),
('217733636', '05181936', 'Marcia', 'O', 'Jenkins\r'),
('217753166', '10051976', 'Bridie', 'I', 'Kuphal\r'),
('218502746', '03161926', 'Bell', 'X', 'Tromp\r'),
('218689797', '04071930', 'Paris', 'G', 'Jaskolski\r'),
('220174684', '03041952', 'Aliza', 'F', 'Bartoletti\r'),
('220345843', '02271945', 'Ramiro', 'H', 'Boehm\r'),
('220820896', '02241971', 'Walter', 'F', 'Donnelly\r'),
('221733978', '05211943', 'Caterina', 'U', 'Heidenreich\r'),
('222089605', '03071985', 'Darby', 'F', 'Okuneva\r'),
('222157058', '10051980', 'Bettye', 'P', 'Huels\r'),
('222356587', '09261944', 'Rose', 'V', 'Hyatt\r'),
('222574993', '10091963', 'Lavada', 'K', 'Connelly\r'),
('223027763', '03021935', 'Michele', 'Y', 'Pfannerstill\r'),
('223238926', '02281988', 'Adan', 'N', 'Brakus\r'),
('223354370', '10151943', 'Ellsworth', 'D', 'McGlynn\r'),
('223858244', '08221922', 'Joelle', 'G', 'Marks\r'),
('224080118', '06271998', 'Efren', 'I', 'Morissette\r'),
('224512913', '10021991', 'Hoyt', 'G', 'Wolff\r'),
('225247364', '08281939', 'Kasandra', 'C', 'Ledner\r'),
('225266870', '06201993', 'Jimmie', 'E', 'Lakin\r'),
('226561963', '03271936', 'Joey', 'X', 'Lesch\r'),
('226888561', '10131967', 'Leanne', 'B', 'Hessel\r'),
('227592535', '06021980', 'Shaniya', 'O', 'Flatley\r'),
('227667692', '03201996', 'Deion', 'D', 'Gaylord\r'),
('227757688', '02031992', 'Sofia', 'Q', 'Bergstrom\r'),
('230209636', '10221925', 'Sandrine', 'Z', 'Donnelly\r'),
('231136962', '09221937', 'Nicola', 'D', 'Hills\r'),
('231464832', '07021938', 'Blanca', 'Q', 'Rempel\r'),
('231947603', '11041939', 'Dejon', 'U', 'Gislason\r'),
('232451856', '03021968', 'Mortimer', 'Z', 'Rogahn\r'),
('232853120', '01031947', 'Spencer', 'P', 'Cartwright\r'),
('233730804', '10161954', 'Dean', 'Y', 'Dicki\r'),
('233744557', '09251924', 'Elva', 'W', 'Roob\r'),
('235042847', '02171950', 'Alison', 'I', 'Bayer\r'),
('235420113', '03061945', 'Anastacio', 'D', 'Howell\r'),
('236438305', '02131957', 'Ed', 'E', 'Watsica\r'),
('236839540', '06071988', 'Antonetta', 'Q', 'Spencer\r'),
('236906497', '10261982', 'Tyrique', 'O', 'Bosco\r'),
('236953452', '08071987', 'Adrien', 'U', 'Rodriguez\r'),
('237184082', '02121989', 'Lilly', 'X', 'Champlin\r'),
('238601827', '09122000', 'Ettie', 'C', 'Thompson\r'),
('238866678', '02021950', 'Haylie', 'B', 'Barton\r'),
('239801009', '02141926', 'Oswaldo', 'S', 'Keebler\r'),
('240144007', '10211934', 'Mekhi', 'J', 'O\'Reilly\r'),
('241404830', '09021940', 'Cletus', 'L', 'Runolfsdottir\r'),
('241466385', '10171925', 'Joshuah', 'E', 'Hyatt\r'),
('241715256', '04111931', 'Grady', 'P', 'West\r'),
('242430016', '10061932', 'Rosie', 'A', 'Dickens\r'),
('242793804', '08181971', 'Dana', 'V', 'Gorczany\r'),
('243031264', '01051921', 'Carlee', 'R', 'Mosciski\r'),
('243077592', '08181992', 'Claire', 'W', 'Hodkiewicz\r'),
('243250249', '11081983', 'Hobart', 'J', 'Connelly\r'),
('243322836', '08221940', 'Antonia', 'W', 'Emard\r'),
('244374863', '07131984', 'Grover', 'K', 'Hessel\r'),
('245298760', '02281938', 'Vella', 'Y', 'Ondricka\r'),
('245738475', '06261981', 'Hilma', 'U', 'Padberg\r'),
('246004182', '02261961', 'Rudy', 'Y', 'Weimann\r'),
('246825208', '09141945', 'Mariano', 'M', 'Becker\r'),
('246830020', '03241964', 'Clemens', 'J', 'Kohler\r'),
('246892215', NULL, 'Torm', NULL, 'Zippy'),
('246988011', '01041925', 'Modesto', 'M', 'Funk\r'),
('247520856', '05061932', 'Clara', 'Y', 'Cummerata\r'),
('247818462', '04021998', 'Antonette', 'S', 'Gulgowski\r'),
('248985771', '08041939', 'Maud', 'Y', 'Legros\r'),
('250260846', '02271978', 'Guy', 'A', 'Hand\r'),
('250357531', '07092001', 'Marietta', 'I', 'Sanford\r'),
('250382074', '03131946', 'Adelle', 'T', 'Kunze\r'),
('250411161', '05081970', 'Madison', 'J', 'Streich\r'),
('250647029', '04261946', 'Darrel', 'A', 'Raynor\r'),
('251223116', '08281972', 'Cassandra', 'D', 'Koelpin\r'),
('252918682', '10281945', 'Kareem', 'S', 'Mayer\r'),
('253008170', '11131966', 'Corbin', 'L', 'Lindgren\r'),
('253280020', '03111945', 'Elisha', 'X', 'Bailey\r'),
('253936413', '02171924', 'Irving', 'I', 'Jerde\r'),
('254581227', '03171950', 'Destiney', 'W', 'Block\r'),
('254755716', '09081945', 'Betty', 'F', 'Schamberger\r'),
('254864622', '07191950', 'Adele', 'L', 'Johnson\r'),
('255717090', '06171946', 'Eula', 'L', 'Fahey\r'),
('257152390', '04031948', 'Jackie', 'W', 'Marvin\r'),
('257428894', '10231949', 'Lillie', 'J', 'Corwin\r'),
('258327126', '10121988', 'Lesley', 'U', 'Schuppe\r'),
('259243852', '09041952', 'Christelle', 'H', 'Bechtelar\r'),
('261460828', '08211987', 'Camilla', 'G', 'West\r'),
('261680397', '09161987', 'Ollie', 'E', 'Prosacco\r'),
('262821364', '04131946', 'Macie', 'T', 'Cruickshank\r'),
('263285897', '04141981', 'Dessie', 'L', 'D\'Amore\r'),
('264891347', '05111999', 'Esmeralda', 'F', 'Berge\r'),
('265036934', '08071956', 'Malachi', 'N', 'Bayer\r'),
('265658802', '02051944', 'Ariane', 'C', 'Johns\r'),
('266339660', '07131967', 'Vilma', 'W', 'Cremin\r'),
('266376622', '10111971', 'Tabitha', 'O', 'Ankunding\r'),
('266405832', '02051963', 'Diana', 'L', 'Schultz\r'),
('266862570', '07031946', 'Rachel', 'W', 'Torphy\r'),
('267730353', '04161979', 'Yasmine', 'H', 'Swaniawski\r'),
('267989425', '08071934', 'Arvid', 'I', 'Langosh\r'),
('268804520', '06091978', 'Colt', 'F', 'Wiza\r'),
('270739321', '01201942', 'Jayson', 'A', 'Koelpin\r'),
('271206317', '03271965', 'Gerardo', 'Y', 'Connelly\r'),
('271478580', '03081945', 'Price', 'X', 'Rohan\r'),
('272198816', '04181980', 'Jimmie', 'W', 'Bayer\r'),
('272234867', '02251979', 'Kaylee', 'J', 'Rau\r'),
('272823272', '09041974', 'Madge', 'P', 'Little\r'),
('272863762', '05101923', 'Sandra', 'S', 'Harris\r'),
('273001621', '09031999', 'Noemie', 'H', 'Harvey\r'),
('273158982', '07241962', 'Horacio', 'Q', 'Frami\r'),
('273222380', '08101932', 'Adan', 'T', 'Rolfson\r'),
('273473622', '01191986', 'Rod', 'X', 'Gutkowski\r'),
('273721974', '08241978', 'Savion', 'R', 'Jenkins\r'),
('273733094', '04201954', 'Amanda', 'J', 'Windler\r'),
('273863992', '02171955', 'Eunice', 'V', 'Osinski\r'),
('274095976', '06091978', 'Matt', 'J', 'Senger\r'),
('274594404', '09111941', 'Betty', 'O', 'Schaefer\r'),
('275483967', '09071998', 'Diamond', 'W', 'Doyle\r'),
('276081704', '03251996', 'Junior', 'D', 'Crona\r'),
('276332649', '09061956', 'Haven', 'Z', 'Yost\r'),
('276524242', '08251983', 'Waldo', 'L', 'Orn\r'),
('276669756', '02021964', 'Carolyn', 'E', 'Runolfsson\r'),
('276883875', '03271926', 'Tad', 'U', 'Grady\r'),
('277234029', '10031993', 'Hubert', 'C', 'Sauer\r'),
('277458716', '03251961', 'Hershel', 'C', 'Mills\r'),
('277673719', '06051964', 'Alyce', 'P', 'Towne\r'),
('278071210', '07271951', 'Constantin', 'J', 'Zemlak\r'),
('278132815', '03221988', 'Donnell', 'Y', 'Jacobson\r'),
('278849483', '05231930', 'Carmen', 'Y', 'Heller\r'),
('280146930', '09201984', 'Talon', 'C', 'Dooley\r'),
('280559567', '07021951', 'Myrtice', 'H', 'Williamson\r'),
('281515812', '09161935', 'Delores', 'Z', 'Hermiston\r'),
('281530264', '07191961', 'Linnie', 'H', 'Wehner\r'),
('281867685', '02041963', 'Floyd', 'G', 'Green\r'),
('283042612', '02151926', 'Matilde', 'O', 'Runolfsdottir\r'),
('283234320', '07241943', 'Shanel', 'K', 'Corkery\r'),
('283436284', '03191959', 'Amya', 'A', 'Lesch\r'),
('283685403', '08191942', 'Sedrick', 'V', 'Blanda\r'),
('284342866', '04261965', 'Jorge', 'E', 'Hahn\r'),
('285547948', '08061942', 'Bria', 'U', 'Kovacek\r'),
('285562710', '09181944', 'Marco', 'X', 'Macejkovic\r'),
('285778642', '04101965', 'Dale', 'B', 'Reynolds\r'),
('286163460', '08111935', 'Annamarie', 'A', 'Towne\r'),
('286539275', '01091924', 'Loren', 'Q', 'Kohler\r'),
('286787626', '05272001', 'Clement', 'E', 'Durgan\r'),
('287311088', '04022000', 'Palma', 'A', 'Fisher\r'),
('287340296', '08141941', 'Terry', 'G', 'Pfeffer\r'),
('287555037', '01182000', 'Gustave', 'B', 'Toy\r'),
('287722551', '06061966', 'Jasmin', 'J', 'Bosco\r'),
('288850108', '06091969', 'Carlie', 'J', 'Grant\r'),
('289331194', '08201996', 'Zoie', 'X', 'Kuhic\r'),
('289473814', '08061941', 'Alba', 'I', 'Stamm\r'),
('290047813', '03121946', 'Susanna', 'S', 'Pfeffer\r'),
('291037507', '08131973', 'Ashleigh', 'K', 'Morissette\r'),
('293010053', '03081931', 'Meaghan', 'M', 'Rath\r'),
('293061671', '09271967', 'Keshawn', 'L', 'Lockman\r'),
('295230561', '06021987', 'Ozzie', 'L', 'Senger\r'),
('296169508', '09271939', 'Dayton', 'T', 'Hammes\r'),
('297280229', '04081960', 'Lillian', 'Q', 'Roberts\r'),
('298751551', '05021953', 'Mabel', 'N', 'Romaguera\r'),
('300179237', '10051985', 'Albin', 'P', 'Emmerich\r'),
('300218187', '07051994', 'Katharina', 'I', 'Bednar\r'),
('300375034', '09271956', 'Sage', 'Y', 'Maggio\r'),
('300425413', '03271930', 'Alexander', 'J', 'Braun\r'),
('300425822', '08161985', 'Ernestina', 'G', 'Lesch\r'),
('302683349', '07151937', 'Bella', 'Q', 'Hickle\r'),
('303068179', '03181943', 'Dakota', 'P', 'Langosh\r'),
('303649181', '02061938', 'Zella', 'S', 'Klein\r'),
('304080051', '05271992', 'Olen', 'N', 'Feest\r'),
('304291298', '07031991', 'Iva', 'B', 'Bergnaum\r'),
('304633281', '11211972', 'Wilford', 'F', 'Abbott\r'),
('304658912', '06081982', 'Kyla', 'O', 'Halvorson\r'),
('306323776', '08081961', 'Zachariah', 'S', 'McLaughlin\r'),
('306356552', '07081962', 'Dora', 'R', 'Wuckert\r'),
('306497843', '10071975', 'Valentine', 'E', 'Oberbrunner\r'),
('306618561', '10191994', 'Aurelia', 'H', 'Lueilwitz\r'),
('306624419', '02251923', 'Shanny', 'T', 'Zboncak\r'),
('307478262', '03021968', 'Isac', 'T', 'Beatty\r'),
('307573639', '05251941', 'Nathen', 'F', 'Bosco\r'),
('308172366', '09101979', 'Brielle', 'O', 'Davis\r'),
('308202111', '05091926', 'Brandt', 'R', 'Howe\r'),
('308787677', '09041997', 'Ruthie', 'N', 'Fritsch\r'),
('308831087', '02111956', 'Emma', 'O', 'Johnson\r'),
('309010137', '10041959', 'Deontae', 'Q', 'Feeney\r'),
('310012975', '03021949', 'Dell', 'O', 'Schaefer\r'),
('310599551', '07261975', 'Dena', 'Q', 'Beier\r'),
('310820817', '09041961', 'Ryann', 'Y', 'Christiansen\r'),
('310860160', '10091949', 'Nick', 'G', 'Rutherford\r'),
('311210352', '05221939', 'Verona', 'F', 'Morar\r'),
('311619302', '10261954', 'Roma', 'C', 'Bode\r'),
('311628473', '05261929', 'Charlie', 'P', 'Kuphal\r'),
('312024802', '06221993', 'Jovan', 'U', 'Schinner\r'),
('312905206', '10171940', 'Sharon', 'Y', 'Wilkinson\r'),
('313263915', '09121959', 'Sophie', 'W', 'Hettinger\r'),
('313462077', '06181958', 'Friedrich', 'R', 'Koss\r'),
('313574266', '07251957', 'Kayleigh', 'I', 'Erdman\r'),
('314075079', '10131995', 'Anabelle', 'H', 'O\'Keefe\r'),
('314164940', '05221923', 'Naomie', 'T', 'Williamson\r'),
('314334088', '02081968', 'Lon', 'M', 'Ward\r'),
('314394781', '01101946', 'Christop', 'V', 'Gusikowski\r'),
('315341437', '03051931', 'Magdalena', 'J', 'Schulist\r'),
('315689596', '07191959', 'Corene', 'T', 'Boyle\r'),
('315716480', '05231995', 'Margarete', 'V', 'Raynor\r'),
('316470361', '03281944', 'Joe', 'K', 'Klocko\r'),
('316869653', '08051982', 'Citlalli', 'K', 'Ritchie\r'),
('318101432', '02091983', 'Hugh', 'D', 'Funk\r'),
('318127584', '07081974', 'Brionna', 'G', 'Price\r'),
('318540737', '06141966', 'Elouise', 'N', 'Langosh\r'),
('318583247', '08121944', 'Emilio', 'R', 'Marks\r'),
('318730219', '02151936', 'Joy', 'N', 'Strosin\r'),
('319231047', '10231942', 'Ben', 'L', 'Anderson\r'),
('320633132', '02021963', 'Zelda', 'W', 'Brown\r'),
('321008808', '06061926', 'Rory', 'K', 'Orn\r'),
('321245011', '04071955', 'Granville', 'Q', 'Shields\r'),
('321424678', '08261938', 'Pinkie', 'A', 'Shields\r'),
('322166679', '04071950', 'Horace', 'U', 'Rau\r'),
('323111586', '05071931', 'Rosina', 'G', 'Fisher\r'),
('323175888', '04091925', 'Chance', 'W', 'Casper\r'),
('323428298', '07131989', 'Ima', 'F', 'Wisozk\r'),
('324015045', '08041984', 'Bud', 'V', 'Altenwerth\r'),
('324873623', '10101989', 'Kayden', 'G', 'Christiansen\r'),
('325411082', '03191992', 'Cleveland', 'C', 'Quigley\r'),
('325437286', '02141932', 'Coy', 'E', 'Glover\r'),
('327042841', '02141934', 'Piper', 'Q', 'Hand\r'),
('327400551', '02171998', 'Vincenza', 'C', 'Mraz\r'),
('328030181', '06252001', 'Laurie', 'X', 'Stehr\r'),
('328806735', '05051923', 'Garret', 'T', 'Graham\r'),
('328864848', '01041937', 'Jaycee', 'E', 'Senger\r'),
('329010197', '08221999', 'Marietta', 'W', 'Halvorson\r'),
('329161093', '06232000', 'Rex', 'B', 'Lakin\r'),
('329488912', '03231921', 'Holly', 'H', 'Casper\r'),
('329711225', '11071940', 'Odessa', 'Q', 'Walsh\r'),
('330028045', '02091965', 'Morgan', 'K', 'Howell\r'),
('331228602', '09231942', 'Providenci', 'K', 'Lockman\r'),
('331242117', '06061944', 'Stefan', 'K', 'Herzog\r'),
('331460057', '07281925', 'Sigrid', 'O', 'Spencer\r'),
('331569980', '01151962', 'Litzy', 'L', 'Stroman\r'),
('331975637', '05151930', 'Lillian', 'L', 'Hamill\r'),
('332057472', '01061945', 'Bruce', 'G', 'Labadie\r'),
('332069854', '01261927', 'Alana', 'B', 'Schmitt\r'),
('332160450', '09081923', 'Berneice', 'C', 'Zieme\r'),
('333041182', '07141993', 'Kenyon', 'L', 'Shanahan\r'),
('333555461', '07071935', 'Maeve', 'U', 'Macejkovic\r'),
('334109386', '11131932', 'Percival', 'X', 'Zieme\r'),
('334176466', '03181973', 'Jayda', 'R', 'Goodwin\r'),
('334288022', '08101999', 'Chelsea', 'V', 'Goyette\r'),
('335021807', '07151944', 'Wilfred', 'J', 'Fay\r'),
('335441835', '05231966', 'Angelita', 'D', 'Terry\r'),
('335742358', '09261947', 'Lilla', 'H', 'Weber\r'),
('336376227', '07181998', 'Tad', 'V', 'Cartwright\r'),
('336417757', '10141938', 'Josiane', 'X', 'Dibbert\r'),
('336500896', '04201931', 'Kennith', 'I', 'Hills\r'),
('336530244', '04231975', 'Stuart', 'G', 'Marquardt\r'),
('337223242', '07251960', 'Winfield', 'C', 'Bradtke\r'),
('337877741', '01051962', 'Alessandra', 'D', 'Mosciski\r'),
('338194181', '04231992', 'Dessie', 'P', 'Kub\r'),
('338612066', '07091987', 'Sedrick', 'M', 'O\'Reilly\r'),
('340576946', '09241959', 'Merle', 'Q', 'Toy\r'),
('341200355', '09072001', 'Herman', 'E', 'Mann\r'),
('341594240', '09011949', 'Felix', 'A', 'Kautzer\r'),
('342104650', '02261952', 'Ana', 'R', 'Hintz\r'),
('342713770', '08051947', 'Claudia', 'S', 'Tillman\r'),
('344676869', '05271941', 'Anastacio', 'Z', 'Christiansen\r'),
('345391628', '04201975', 'Roma', 'E', 'Fadel\r'),
('346176830', '07061931', 'Marvin', 'O', 'Glover\r'),
('346276272', '01061949', 'Delfina', 'Q', 'Jacobs\r'),
('346600881', '10241976', 'Nico', 'O', 'Mann\r'),
('347560904', '09101921', 'Hester', 'B', 'Crooks\r'),
('347707737', '07241995', 'Leonel', 'Z', 'Ratke\r'),
('347958257', '09111996', 'Lonzo', 'W', 'Mayer\r'),
('349838768', '05281994', 'Hugh', 'D', 'Smith\r'),
('350122535', '07061923', 'Bernice', 'G', 'Olson\r'),
('350466472', '06251958', 'Jermaine', 'M', 'Blick\r'),
('351350842', '04081952', 'Athena', 'O', 'Olson\r'),
('351603482', '05181953', 'Lolita', 'J', 'Ondricka\r'),
('351819381', '04051997', 'Anais', 'I', 'Kuhn\r'),
('352181773', '11221939', 'Felicity', 'R', 'Rowe\r'),
('352307395', '05281988', 'Jeramie', 'A', 'Murray\r'),
('352543628', '07251970', 'Connie', 'F', 'Bahringer\r'),
('353415367', '02141992', 'Merritt', 'N', 'Crona\r'),
('353421849', '05241989', 'Nick', 'P', 'Denesik\r'),
('354013583', '10011937', 'Brennon', 'W', 'Bogan\r'),
('354149747', '10281935', 'Tad', 'T', 'Wiegand\r'),
('354303363', '08191995', 'Clemmie', 'N', 'Hermann\r'),
('355178335', '01021921', 'Alvena', 'H', 'Green\r'),
('355281212', '11181967', 'Nicholas', 'K', 'Streich\r'),
('355840449', '06041937', 'Juvenal', 'T', 'Wintheiser\r'),
('357136552', '01021941', 'Baylee', 'C', 'Swaniawski\r'),
('357171291', '04071975', 'Emerald', 'X', 'Bode\r'),
('358295372', '02101937', 'Ressie', 'J', 'Olson\r'),
('360174506', '06231949', 'Victoria', 'V', 'McCullough\r'),
('360858804', '02051968', 'Verlie', 'H', 'Auer\r'),
('361244128', '08131923', 'Geo', 'R', 'Bernier\r'),
('361447763', '10151934', 'Nat', 'X', 'Altenwerth\r'),
('362158529', '10251963', 'Eda', 'U', 'Hickle\r'),
('362503025', '05031997', 'Emile', 'T', 'Fay\r'),
('362719568', '06181924', 'Tevin', 'T', 'O\'Hara\r'),
('363292807', '08241999', 'Katrina', 'S', 'Rath\r'),
('363846633', '05011924', 'Cortney', 'J', 'Crooks\r'),
('363898898', '04011993', 'Shaniya', 'L', 'Aufderhar\r'),
('364806252', '09201922', 'Edmond', 'F', 'Koepp\r'),
('365713602', '10061921', 'Gloria', 'T', 'Koss\r'),
('365741771', '09281986', 'Alphonso', 'L', 'Skiles\r'),
('366761374', '03111972', 'Caroline', 'M', 'Kuhic\r'),
('366965210', '03101962', 'Nyah', 'J', 'Rippin\r'),
('367045796', '08091977', 'Noemy', 'E', 'Cole\r'),
('367520741', '10261998', 'Evie', 'L', 'Rippin\r'),
('368657154', '09181935', 'Clint', 'U', 'Hegmann\r'),
('368694258', '08081950', 'Raquel', 'R', 'Schuster\r'),
('368925674', '10051982', 'Douglas', 'K', 'Orn\r'),
('369958386', '05011975', 'Horacio', 'T', 'Wintheiser\r'),
('370212486', '08051952', 'Sophie', 'G', 'Greenfelder\r'),
('371553019', '09091938', 'Henri', 'X', 'Vandervort\r'),
('372371023', '11071949', 'Coby', 'J', 'Dare\r'),
('372630404', '03081957', 'Michael', 'S', 'Jacobs\r'),
('373468326', '01191950', 'Jerome', 'W', 'Cruickshank\r'),
('373757036', '03091970', 'Roberto', 'D', 'Crona\r'),
('373922203', '10081949', 'Jedidiah', 'D', 'Orn\r'),
('374138616', '06131984', 'Garrick', 'C', 'Maggio\r'),
('374182917', '06281987', 'Arlie', 'P', 'Simonis\r'),
('374810506', '07091939', 'Leonel', 'J', 'Konopelski\r'),
('375288243', '04162000', 'Hailey', 'E', 'Goldner\r'),
('375529710', '03061921', 'Dion', 'Y', 'Blick\r'),
('375608089', '06181971', 'Rosemarie', 'I', 'Schmitt\r'),
('375796108', '08191962', 'Keeley', 'Q', 'Buckridge\r'),
('376157469', '08111995', 'Pete', 'I', 'Mosciski\r'),
('377461783', '10061944', 'Julie', 'D', 'Swaniawski\r'),
('377486859', '10201941', 'Libbie', 'X', 'Jast\r'),
('377713111', '04021978', 'Brook', 'O', 'Schoen\r'),
('378186427', '02141945', 'Donnie', 'C', 'Von\r'),
('378666336', '02211928', 'Adolphus', 'V', 'Quigley\r'),
('378756834', '02191974', 'Karlee', 'B', 'Denesik\r'),
('379047964', '08131943', 'Clementina', 'P', 'Bernier\r'),
('380125413', '05011939', 'Anderson', 'F', 'McClure\r'),
('381549193', '02121991', 'Novella', 'C', 'Mante\r'),
('381563124', '11101959', 'Eula', 'T', 'Dibbert\r'),
('381761803', '09031949', 'Della', 'H', 'Barrows\r'),
('381915601', '02231980', 'Vance', 'V', 'Heathcote\r'),
('382676351', '08221922', 'Hallie', 'Q', 'Bogan\r'),
('382871494', '09171981', 'Magdalena', 'Q', 'Jerde\r'),
('383008756', '01271994', 'Leonardo', 'H', 'Mraz\r'),
('383174073', '10141947', 'Kaylin', 'G', 'Herman\r'),
('383292463', '06071928', 'Ima', 'F', 'Gottlieb\r'),
('383343679', '05231991', 'Kellie', 'L', 'Schumm\r'),
('384066581', '05131923', 'Micaela', 'O', 'Watsica\r'),
('384337336', '06132001', 'Melyna', 'S', 'Mertz\r'),
('384401117', '09081939', 'Bessie', 'O', 'Hirthe\r'),
('384743876', '10081995', 'Torrance', 'E', 'Dickinson\r'),
('385375626', '04201984', 'Savanah', 'W', 'Wisoky\r'),
('385716645', '09111970', 'Conrad', 'O', 'Kozey\r'),
('386472743', '08271937', 'Roy', 'Q', 'Wiegand\r'),
('386886547', '03041934', 'Sammy', 'D', 'Gaylord\r'),
('387172057', '10111966', 'Danial', 'K', 'Rempel\r'),
('387203673', '04061968', 'Walker', 'Y', 'Hoppe\r'),
('387279885', '10241939', 'Deron', 'A', 'Zieme\r'),
('387308581', '05171985', 'Wilma', 'I', 'Kozey\r'),
('387431185', '04221921', 'Jade', 'H', 'Reichert\r'),
('388080057', '05021982', 'Brett', 'F', 'Schimmel\r'),
('388425017', '04221971', 'Donnie', 'B', 'Funk\r'),
('388513229', '02181987', 'Percy', 'L', 'Gorczany\r'),
('388644986', '02091935', 'Ruth', 'R', 'Hammes\r'),
('388672745', '05151963', 'Tristin', 'N', 'Koch\r'),
('388774035', '05121970', 'Kelsie', 'P', 'Pouros\r'),
('388958312', '10111958', 'Ignacio', 'W', 'O\'Conner\r'),
('388968881', '06161982', 'Kieran', 'X', 'Donnelly\r'),
('390241018', '08121964', 'Kieran', 'X', 'Hodkiewicz\r'),
('391404356', '03021985', 'Rod', 'X', 'White\r'),
('393375233', '08091954', 'Delmer', 'L', 'Stracke\r'),
('394221835', '08071926', 'Adrianna', 'R', 'Douglas\r'),
('396225104', '02231921', 'Holden', 'F', 'Bergstrom\r'),
('396355105', '04241967', 'Laurie', 'N', 'Smitham\r'),
('397328223', '11181920', 'Triston', 'C', 'Kreiger\r'),
('399016061', '08251965', 'Noelia', 'H', 'Fadel\r'),
('399346380', '09031998', 'Efren', 'Q', 'Kunze\r'),
('400277601', '04121994', 'Major', 'K', 'Hagenes\r'),
('400792870', '07021957', 'Jennifer', 'P', 'Walter\r'),
('401289961', '04051987', 'Bartholome', 'K', 'Waters\r'),
('402221266', '04091982', 'Ubaldo', 'X', 'Bosco\r'),
('403424707', '03071924', 'Harmon', 'W', 'Fadel\r'),
('403960524', '04071925', 'Gordon', 'T', 'Stroman\r'),
('404421442', '08241927', 'Joesph', 'K', 'MacGyver\r'),
('404472127', '07141921', 'Fatima', 'B', 'Nitzsche\r'),
('404507265', '05271991', 'Orpha', 'T', 'Rolfson\r'),
('404678157', '05021956', 'Chesley', 'S', 'Ernser\r'),
('404873928', '07241955', 'Dexter', 'Q', 'Towne\r'),
('405237218', '04031930', 'Katharina', 'T', 'Jaskolski\r'),
('405327953', '01161993', 'Yazmin', 'J', 'Cummerata\r'),
('405419872', '09191940', 'Twila', 'T', 'Metz\r'),
('406072947', '02211989', 'Cleveland', 'Q', 'Tromp\r'),
('406143604', '06141929', 'Chadd', 'T', 'Shanahan\r'),
('406278145', '09121982', 'Alda', 'O', 'Weimann\r'),
('407310522', '08261986', 'Rafael', 'C', 'Nitzsche\r'),
('407327807', '06061942', 'Guido', 'U', 'Schaefer\r'),
('408004292', '01091979', 'Katelin', 'W', 'Lindgren\r'),
('408100410', '10221987', 'Ezequiel', 'G', 'Feil\r'),
('408113538', '04011948', 'Percival', 'H', 'Satterfield\r'),
('408344690', '06171958', 'Hattie', 'E', 'Wiza\r'),
('408640142', '08101939', 'Shirley', 'Y', 'Cormier\r'),
('408975440', '09261973', 'Amelie', 'R', 'Baumbach\r'),
('409322394', '09131964', 'Eudora', 'T', 'Johns\r'),
('409417651', '11131988', 'Haley', 'J', 'Cormier\r'),
('410495864', '01101941', 'Rudy', 'Z', 'Larson\r'),
('411526957', '04061976', 'Shawna', 'G', 'Breitenberg\r'),
('411727617', '10171947', 'Payton', 'K', 'Medhurst\r'),
('411837602', '02011965', 'Jamarcus', 'M', 'Lynch\r'),
('412533608', '04271947', 'Darren', 'G', 'Schmitt\r'),
('412595834', '07151960', 'Jonas', 'Y', 'Jacobson\r'),
('412868000', '02071951', 'Ethyl', 'H', 'Bins\r'),
('413810354', '05101941', 'Lexie', 'C', 'Dibbert\r'),
('414107606', '08101941', 'Lilla', 'Q', 'Dare\r'),
('414510623', '05181929', 'Heidi', 'R', 'Swift\r'),
('414554430', '01111949', 'Abelardo', 'R', 'Reynolds\r'),
('414572592', '09161958', 'Maribel', 'R', 'Thiel\r'),
('414730173', '05271948', 'Felicita', 'V', 'Walker\r'),
('415194062', '02051952', 'Braulio', 'Y', 'Gaylord\r'),
('416857576', '08111943', 'Eloy', 'B', 'Rolfson\r'),
('417210501', '05141970', 'London', 'G', 'Beer\r'),
('417854593', '05261956', 'Darren', 'D', 'Bayer\r'),
('418117340', '04211962', 'Katharina', 'G', 'Tillman\r'),
('418173432', '10011931', 'Christine', 'Z', 'Stokes\r'),
('418201680', '06071985', 'Maegan', 'X', 'Jakubowski\r'),
('418517105', '09151970', 'Maribel', 'B', 'Cormier\r'),
('418552361', '10211994', 'Treva', 'M', 'Kirlin\r'),
('418747204', '08121947', 'Fannie', 'S', 'Mertz\r'),
('420037110', '03161990', 'Agustin', 'M', 'Gottlieb\r'),
('420104659', '03171958', 'Concepcion', 'H', 'Johnson\r'),
('421062435', '10251994', 'Annabell', 'J', 'Kautzer\r'),
('421425553', '07071986', 'Ernest', 'K', 'Kulas\r'),
('422242871', '06181930', 'Lessie', 'G', 'O\'Keefe\r'),
('422501640', '07261935', 'Judson', 'Y', 'Beer\r'),
('423183763', '05261939', 'Sofia', 'G', 'Leannon\r'),
('423317681', '07022000', 'Jennings', 'I', 'Zemlak\r'),
('423346437', '06241980', 'Vernice', 'G', 'Jacobi\r'),
('423415370', '11231936', 'Vanessa', 'U', 'Aufderhar\r'),
('424098922', '06181978', 'Antwan', 'R', 'O\'Kon\r'),
('426307714', '06041997', 'Orval', 'K', 'Larkin\r'),
('426634704', '10171974', 'Olga', 'T', 'Kozey\r'),
('427826331', '09071969', 'Gavin', 'U', 'Treutel\r'),
('427978734', '05191995', 'Niko', 'M', 'Frami\r'),
('428091687', '09271974', 'Erick', 'S', 'Beatty\r'),
('428760102', '05081973', 'Velma', 'S', 'Beer\r'),
('429222800', '09101953', 'Elva', 'F', 'Hamill\r'),
('430522527', '10061959', 'Ayden', 'K', 'Hudson\r'),
('430731064', '05031991', 'Billy', 'U', 'Gorczany\r'),
('432288508', '06271949', 'Nora', 'K', 'Rice\r'),
('432368107', '03201950', 'Payton', 'U', 'Hudson\r'),
('432621820', '06101943', 'Marge', 'L', 'Schaefer\r'),
('433152313', '02081923', 'Ignacio', 'N', 'Kautzer\r'),
('434012860', '04181983', 'Lorenz', 'Q', 'Gerlach\r'),
('434352835', '04231926', 'Colt', 'I', 'Greenfelder\r'),
('435378976', '07281965', 'Camille', 'N', 'Hane\r'),
('435466214', '01071966', 'Claudie', 'K', 'Kassulke\r'),
('435671040', '07231969', 'Ulices', 'X', 'Bruen\r'),
('435825282', '02171950', 'Giovanni', 'S', 'Collier\r'),
('435953672', '03261962', 'Elisa', 'K', 'Steuber\r'),
('435970836', '02061966', 'Brandy', 'X', 'Christiansen\r'),
('436641506', '07171975', 'Dane', 'K', 'O\'Conner\r'),
('438550217', '11071953', 'Marquise', 'X', 'Barrows\r'),
('438746466', '08171946', 'Alize', 'J', 'Shanahan\r'),
('439468751', '10201951', 'Eldora', 'P', 'Bartell\r'),
('440055619', '05111941', 'Charlie', 'J', 'Metz\r'),
('440347503', '02161933', 'Vada', 'D', 'Kihn\r'),
('440704757', '09181923', 'Bernita', 'M', 'Wolff\r'),
('440951122', '11121939', 'Shany', 'V', 'Gusikowski\r'),
('441537372', '02111934', 'Leopold', 'Q', 'Boyle\r'),
('443017136', '07281956', 'Josue', 'O', 'Schuppe\r'),
('443548225', '08221927', 'Eleonore', 'W', 'Okuneva\r'),
('444239191', '09071928', 'Flavie', 'B', 'Nienow\r'),
('445056049', '01011974', 'Junior', 'D', 'Swaniawski\r'),
('445117660', '04211949', 'Ambrose', 'R', 'Hirthe\r'),
('445549265', '03211961', 'Rylan', 'P', 'Cormier\r'),
('445722117', '08181983', 'Chandler', 'N', 'Rau\r'),
('446290565', '08281969', 'Joanie', 'S', 'Brekke\r'),
('446551107', '10071993', 'Marlin', 'O', 'Haley\r'),
('446880007', '06101932', 'Jovanny', 'R', 'Brakus\r'),
('447150471', '11281972', 'Franz', 'D', 'McKenzie\r'),
('447314331', '03121920', 'Jarret', 'W', 'Cronin\r'),
('447575777', '10031946', 'Russell', 'O', 'Spinka\r'),
('447661838', '05131981', 'Christop', 'S', 'Moen\r'),
('447781770', '05251947', 'Arnulfo', 'J', 'Mraz\r'),
('448448151', '10271932', 'Layla', 'Y', 'Hickle\r'),
('449418781', '02101985', 'Dock', 'X', 'Botsford\r'),
('449836341', '04131924', 'Laurine', 'N', 'Christiansen\r'),
('450462406', '05261957', 'Quinn', 'K', 'Hansen\r'),
('451531493', '05061938', 'Santos', 'G', 'Stokes\r'),
('452926261', '02181962', 'Kayla', 'S', 'Schmidt\r'),
('453310126', '04172001', 'Presley', 'Q', 'Dibbert\r'),
('453460608', '03241969', 'Mallie', 'J', 'Rice\r'),
('453586092', '05021983', 'Consuelo', 'A', 'Hills\r'),
('453818384', '05111970', 'Tressie', 'S', 'Hagenes\r'),
('454085364', '03251933', 'Justyn', 'G', 'Haley\r'),
('454192561', '07081979', 'Aurelia', 'B', 'Berge\r'),
('454334019', '06111962', 'Luna', 'U', 'Schuster\r'),
('456737054', '11161961', 'Robin', 'H', 'Beahan\r'),
('456761021', '05131972', 'Bobby', 'D', 'Stehr\r'),
('457111288', '07021982', 'Alexander', 'W', 'Graham\r'),
('458072274', '04051921', 'Gunnar', 'S', 'Williamson\r'),
('458242776', '02081999', 'Cortney', 'F', 'Anderson\r'),
('459411172', '08071926', 'Justina', 'E', 'Buckridge\r'),
('459430875', '04101968', 'Imogene', 'V', 'Howe\r'),
('459646816', '06121997', 'Jaden', 'G', 'O\'Keefe\r'),
('460335038', '04271934', 'Savanna', 'B', 'Mayert\r'),
('461232245', '09071933', 'Francis', 'Z', 'Jerde\r'),
('462376868', '05111935', 'Hector', 'M', 'Satterfield\r'),
('463018382', '02061958', 'Esta', 'O', 'Leuschke\r'),
('464662915', '02241977', 'Lennie', 'O', 'Schamberger\r'),
('466205398', '04111991', 'Dena', 'Z', 'McCullough\r'),
('466252676', '07071954', 'Sally', 'E', 'Emard\r'),
('466672897', '02201927', 'Robin', 'T', 'Jacobson\r'),
('466716068', '10181966', 'Meta', 'K', 'Bauch\r'),
('467008645', '03241999', 'Emmett', 'U', 'Turner\r'),
('467133211', '05221945', 'Dashawn', 'F', 'Predovic\r'),
('467411858', '05271986', 'Sallie', 'J', 'Stokes\r'),
('467645403', '09261962', 'Kennedi', 'T', 'Torp\r'),
('467744835', '05021943', 'Elnora', 'J', 'Ratke\r'),
('468175515', '05241921', 'Robbie', 'X', 'Nitzsche\r'),
('468228821', '04181967', 'Ally', 'M', 'King\r'),
('468327166', '05161971', 'Lilla', 'W', 'Simonis\r'),
('468770200', '08061966', 'Donavon', 'U', 'Welch\r'),
('469002615', '02031953', 'Leila', 'C', 'Predovic\r'),
('469071221', '05041922', 'Elyse', 'B', 'Johnston\r'),
('470033539', '10131949', 'Rey', 'H', 'Bartell\r'),
('470159451', '11201964', 'Megane', 'X', 'Hintz\r'),
('470256714', '03051973', 'Ed', 'K', 'Hand\r'),
('470455227', '08271950', 'Branson', 'R', 'Runolfsson\r'),
('470778522', '03102000', 'Anjali', 'S', 'Orn\r'),
('471014852', '05201938', 'Freida', 'G', 'Cronin\r');
INSERT INTO `employee` (`SSN`, `dob`, `fname`, `minit`, `lname`) VALUES
('471068277', '01241958', 'Kaylin', 'R', 'Bauch\r'),
('471218644', '07031994', 'Orion', 'L', 'Schmidt\r'),
('472855253', '07261932', 'Joanie', 'E', 'Goyette\r'),
('473040133', '02221931', 'Cierra', 'T', 'Barton\r'),
('473148873', '08221969', 'Rey', 'U', 'Hirthe\r'),
('474182678', '01101994', 'Gwen', 'V', 'Daniel\r'),
('474371812', '09091980', 'Erica', 'J', 'Schoen\r'),
('474434240', '06071941', 'Yesenia', 'Y', 'Blanda\r'),
('474777041', '07161962', 'Aron', 'I', 'Smith\r'),
('475076831', '02021992', 'Guy', 'I', 'Romaguera\r'),
('475523809', '08271976', 'Maud', 'K', 'Schmitt\r'),
('475932511', '09201973', 'Austen', 'U', 'McCullough\r'),
('476000178', '03121948', 'Angelina', 'T', 'Reichel\r'),
('476650662', '09211943', 'Jerod', 'X', 'Reilly\r'),
('476860117', '10251950', 'Maybelle', 'F', 'Schmeler\r'),
('476942515', '04031963', 'Greyson', 'Y', 'Douglas\r'),
('478533576', '05082001', 'Edwina', 'Z', 'Runolfsson\r'),
('480211224', '10011953', 'Lura', 'N', 'Lang\r'),
('480724207', '03021974', 'Hassan', 'N', 'Hodkiewicz\r'),
('480885664', '08241932', 'Octavia', 'P', 'Harvey\r'),
('480987701', '05231927', 'Hillard', 'S', 'Brekke\r'),
('481854078', '07021954', 'Blake', 'F', 'Franecki\r'),
('483092830', '01061948', 'Chanelle', 'O', 'Bins\r'),
('483668600', '08161921', 'Noble', 'X', 'Anderson\r'),
('483986137', '01241925', 'Nicholaus', 'V', 'Barrows\r'),
('484415495', '10121958', 'Yesenia', 'X', 'Eichmann\r'),
('484520695', '01191934', 'Nicolas', 'N', 'Mayer\r'),
('485277275', '06261947', 'Rigoberto', 'W', 'Rutherford\r'),
('485934004', '05141984', 'Hayden', 'E', 'Krajcik\r'),
('488496737', '03131933', 'Emiliano', 'W', 'Pagac\r'),
('488967205', '06181940', 'Susana', 'L', 'Hermiston\r'),
('489343233', '06181959', 'Zachery', 'S', 'Stiedemann\r'),
('492375062', '06231926', 'Noemy', 'L', 'Cremin\r'),
('492472646', '08152001', 'Aryanna', 'L', 'Feil\r'),
('492700521', '11231952', 'Daphne', 'X', 'Bauch\r'),
('493282026', '03261962', 'Jarvis', 'Q', 'McCullough\r'),
('495443875', '02081959', 'Jessy', 'A', 'D\'Amore\r'),
('500768051', '07221961', 'Abdullah', 'L', 'Trantow\r'),
('502294414', '05151969', 'Lavada', 'Z', 'Shanahan\r'),
('502640183', '07021944', 'Savannah', 'I', 'Ryan\r'),
('503345579', '05031950', 'Ulices', 'P', 'White\r'),
('503708746', '09241968', 'Paula', 'T', 'Gleason\r'),
('503780405', '08071989', 'Darren', 'T', 'Zieme\r'),
('504687668', '08061993', 'Ephraim', 'Y', 'Hammes\r'),
('505010500', '11111992', 'Ebba', 'Y', 'Kozey\r'),
('505112157', '09141931', 'Cassandra', 'U', 'Weimann\r'),
('505135266', '05112000', 'Georgiana', 'C', 'Jacobi\r'),
('505613006', '09101940', 'Darien', 'L', 'Harris\r'),
('505736257', '01281959', 'Therese', 'P', 'Murazik\r'),
('506487675', '07061969', 'Robbie', 'C', 'Hilpert\r'),
('506664973', '03051995', 'Lonny', 'E', 'Murray\r'),
('506670022', '10091980', 'Dorothea', 'D', 'Wiegand\r'),
('507467016', '07161960', 'Hadley', 'F', 'Schulist\r'),
('507791437', '02171984', 'Hollie', 'R', 'Gaylord\r'),
('509388094', '03041981', 'Edmond', 'H', 'Robel\r'),
('509793560', '11061999', 'Leola', 'O', 'Boehm\r'),
('510147684', '04161963', 'Janick', 'W', 'Nikolaus\r'),
('510268322', '11041992', 'Heaven', 'Y', 'Rempel\r'),
('510287808', '06051974', 'Bridie', 'R', 'Daugherty\r'),
('510762714', '08071933', 'Monique', 'G', 'Kassulke\r'),
('510866717', '09181962', 'Terrance', 'N', 'Vandervort\r'),
('511053934', '10071988', 'Maya', 'R', 'Streich\r'),
('511074852', '09191931', 'Sabina', 'N', 'Kuphal\r'),
('511136832', '07231943', 'Giuseppe', 'Z', 'Kuhlman\r'),
('511614233', '08071954', 'Jordyn', 'N', 'Hintz\r'),
('512557374', '01061969', 'Charlene', 'O', 'Larkin\r'),
('512886844', '06181986', 'Marcelle', 'A', 'Mante\r'),
('513290676', '04231995', 'Elna', 'G', 'Welch\r'),
('513297281', '09231966', 'Georgianna', 'R', 'Runolfsdottir\r'),
('513786364', '07031947', 'Dorothy', 'E', 'Gleason\r'),
('514043273', '06231951', 'Emma', 'D', 'Kuhic\r'),
('514276592', '03221998', 'Yasmine', 'I', 'Pfeffer\r'),
('514286101', '06121928', 'Jeffery', 'F', 'McCullough\r'),
('514513888', '09251974', 'Kristopher', 'J', 'Jacobi\r'),
('514584257', '03101958', 'Kara', 'X', 'Greenholt\r'),
('515104807', '09131947', 'Victor', 'T', 'D\'Amore\r'),
('515190255', '09031950', 'Josiah', 'Y', 'Buckridge\r'),
('515663490', '10231957', 'Jovani', 'Z', 'Wolf\r'),
('515810982', '03031943', 'May', 'M', 'Kihn\r'),
('515876150', '10171949', 'Kacey', 'T', 'Breitenberg\r'),
('517345785', '02111968', 'Reed', 'J', 'Walsh\r'),
('517728251', '04241995', 'Jordon', 'R', 'Waelchi\r'),
('518385236', '10051966', 'Waino', 'A', 'Trantow\r'),
('518416353', '05121952', 'Merritt', 'W', 'Davis\r'),
('518457087', '03051991', 'Nola', 'S', 'Daniel\r'),
('518464695', '08191964', 'Hilario', 'O', 'Von\r'),
('518561653', '07281927', 'Reinhold', 'J', 'Kreiger\r'),
('518601944', '03152001', 'Monserrate', 'D', 'Boehm\r'),
('520010600', '07141980', 'Arianna', 'C', 'Kling\r'),
('520074224', '03241968', 'Lisandro', 'X', 'Thompson\r'),
('520484270', '07281957', 'Casper', 'L', 'Sporer\r'),
('520871342', '02161923', 'Naomie', 'E', 'Kunde\r'),
('521015724', '07261976', 'Sydney', 'J', 'Kutch\r'),
('521087592', '09081978', 'Alfreda', 'W', 'Schmeler\r'),
('521172584', '06171993', 'Neal', 'X', 'Greenholt\r'),
('521437910', '08081952', 'Riley', 'V', 'Muller\r'),
('521646684', '09081963', 'Abigayle', 'G', 'Daugherty\r'),
('521771065', '04251971', 'Leon', 'V', 'Herzog\r'),
('522896261', '04241977', 'Pansy', 'L', 'Stracke\r'),
('522941977', '10111980', 'Liam', 'H', 'Rodriguez\r'),
('523268758', '11141953', 'Lavern', 'T', 'Kerluke\r'),
('523269130', '08251933', 'Annamae', 'G', 'Metz\r'),
('523440016', '06251986', 'Keanu', 'B', 'Towne\r'),
('523791758', '05181983', 'Orlando', 'N', 'Mraz\r'),
('523952624', '06211953', 'Martina', 'M', 'Stroman\r'),
('524142785', '02111986', 'Alexandre', 'L', 'Dickens\r'),
('524767666', '11271986', 'Caterina', 'F', 'Luettgen\r'),
('524801824', '05231926', 'Gabe', 'Q', 'Reilly\r'),
('525120112', '01081965', 'Hailey', 'Y', 'Cremin\r'),
('525130345', '04211923', 'Janelle', 'K', 'Kohler\r'),
('525536603', '03091935', 'Claud', 'Q', 'Sawayn\r'),
('525827374', '05131972', 'Jules', 'S', 'Hayes\r'),
('526202481', '07181979', 'Clifford', 'R', 'Feil\r'),
('526980986', '03252000', 'Talia', 'H', 'Quitzon\r'),
('529224648', '11201939', 'Rey', 'A', 'Murray\r'),
('529339381', '04181933', 'Carlee', 'E', 'Hartmann\r'),
('530113005', '02281951', 'Juwan', 'G', 'Brekke\r'),
('531281502', '11161935', 'Eloy', 'J', 'Ondricka\r'),
('531717325', '04151971', 'Kory', 'J', 'Hegmann\r'),
('531717563', '04131924', 'Ali', 'I', 'Heller\r'),
('531736618', '03211926', 'Eda', 'W', 'Abshire\r'),
('531933742', '04171959', 'Else', 'Q', 'Heidenreich\r'),
('532306620', '08221938', 'Orrin', 'Y', 'Conn\r'),
('532367740', '11131932', 'Nicklaus', 'G', 'Wiza\r'),
('533104711', '02021943', 'Reynold', 'S', 'Fisher\r'),
('533348244', '03091986', 'Donna', 'T', 'Gusikowski\r'),
('534191978', '06091956', 'Sally', 'F', 'Macejkovic\r'),
('534365334', '05201987', 'Domenic', 'A', 'Moore\r'),
('534858844', '06111936', 'Dorothy', 'K', 'Pagac\r'),
('535140310', '02091999', 'Guillermo', 'K', 'Nolan\r'),
('535554845', '03191993', 'Aiyana', 'W', 'Schoen\r'),
('536176578', '04121945', 'Janet', 'H', 'Hilll\r'),
('537170925', '10211974', 'Gwendolyn', 'X', 'Schneider\r'),
('539414640', '04081933', 'Omer', 'X', 'Wolff\r'),
('539800312', '04131982', 'Sabrina', 'G', 'Brown\r'),
('540093298', '07181976', 'Aiden', 'I', 'Schneider\r'),
('540385832', '09091952', 'Bradford', 'M', 'Schamberger\r'),
('540715740', '04221923', 'Dannie', 'S', 'O\'Connell\r'),
('541081831', '04181945', 'Hattie', 'E', 'Wehner\r'),
('541237349', '06121991', 'Arnoldo', 'D', 'Rath\r'),
('541424000', '08211969', 'Cortez', 'F', 'Miller\r'),
('542575003', '05161925', 'Adriana', 'W', 'Turner\r'),
('542916204', '09221962', 'Tad', 'K', 'Jacobson\r'),
('543286842', '06251960', 'Alycia', 'D', 'Will\r'),
('543448056', '08071995', 'Kaelyn', 'I', 'Hagenes\r'),
('543859403', '06151939', 'Fidel', 'I', 'Watsica\r'),
('544867581', '09151923', 'Suzanne', 'G', 'Raynor\r'),
('545340039', '06111960', 'Wendy', 'M', 'Tillman\r'),
('545540876', '10231987', 'Otha', 'L', 'Yundt\r'),
('545584565', '09021966', 'Zachariah', 'D', 'Morar\r'),
('546002026', '05181955', 'Devin', 'P', 'Hauck\r'),
('546062524', '10021988', 'Julius', 'K', 'Brown\r'),
('546215628', '10241983', 'Austen', 'O', 'Emard\r'),
('546547611', '11051965', 'Sincere', 'M', 'Hackett\r'),
('547764151', '01211976', 'Vida', 'W', 'Pfannerstill\r'),
('547865812', '08031962', 'Nels', 'T', 'McClure\r'),
('548668563', '03191971', 'Reggie', 'G', 'Friesen\r'),
('549025106', '10111955', 'Rosa', 'F', 'Herzog\r'),
('550448292', '09012000', 'Kaia', 'X', 'Spinka\r'),
('550588714', '02141959', 'Selina', 'L', 'Halvorson\r'),
('550908624', '08281999', 'Alicia', 'Q', 'Bradtke\r'),
('551205211', '07121962', 'Jaclyn', 'A', 'Keebler\r'),
('551522884', '09101984', 'Cordell', 'X', 'Abbott\r'),
('551770548', '11051969', 'Shemar', 'C', 'Considine\r'),
('552125791', '04061979', 'Leonie', 'Z', 'Beatty\r'),
('552149873', '02281951', 'Keyshawn', 'X', 'Kerluke\r'),
('553118814', '03271976', 'Alexandrea', 'Z', 'Gleichner\r'),
('553143907', '02201944', 'Alanna', 'W', 'Jacobs\r'),
('553150536', '01211980', 'Jacinthe', 'W', 'Reichel\r'),
('553230770', '01221981', 'Anjali', 'T', 'Weimann\r'),
('553352425', '09191937', 'Colt', 'A', 'Brown\r'),
('553593223', '06251937', 'Valentina', 'Y', 'Barton\r'),
('553673669', '07141945', 'Leann', 'N', 'Feeney\r'),
('553899281', '04261958', 'Kailey', 'Z', 'Wehner\r'),
('554861501', '01151977', 'Easton', 'K', 'Stanton\r'),
('555611611', '07041943', 'Alia', 'I', 'Homenick\r'),
('556660567', '01031939', 'Tomasa', 'V', 'Weissnat\r'),
('556938157', '05121937', 'Mitchell', 'R', 'Hermann\r'),
('557164730', '02021939', 'Adella', 'V', 'Buckridge\r'),
('557466873', '05161935', 'Talon', 'T', 'Lehner\r'),
('557467584', '08091994', 'Eugene', 'F', 'Greenfelder\r'),
('558035562', '10231938', 'Giovanny', 'S', 'Nienow\r'),
('558183586', '04151961', 'Jaquan', 'U', 'Johnson\r'),
('558189822', '03241990', 'Rowland', 'Y', 'Aufderhar\r'),
('558610823', '10221932', 'Linda', 'F', 'Parisian\r'),
('558626814', '07221997', 'Opal', 'D', 'Murphy\r'),
('558668102', '11121925', 'Darrell', 'D', 'Green\r'),
('558757465', '09041923', 'Icie', 'I', 'Romaguera\r'),
('558936245', '02111963', 'Blair', 'X', 'Quigley\r'),
('559588013', '11241963', 'Polly', 'B', 'Hansen\r'),
('560162152', '07061935', 'Lori', 'G', 'Ratke\r'),
('560580342', '03121973', 'Ramon', 'X', 'Hansen\r'),
('560969536', '10131983', 'Markus', 'C', 'Beier\r'),
('561161337', '09031965', 'Adam', 'S', 'Jast\r'),
('561615466', '07161923', 'Kathleen', 'H', 'Brakus\r'),
('561808702', '05161923', 'Myrtie', 'J', 'Flatley\r'),
('562021028', '09141922', 'Joe', 'I', 'Ortiz\r'),
('562626570', '06151957', 'Solon', 'O', 'Jacobi\r'),
('562739628', '05271945', 'Mireya', 'L', 'Schaden\r'),
('563000532', '06241969', 'Trisha', 'A', 'Beier\r'),
('563315213', '06211947', 'Lindsey', 'J', 'Eichmann\r'),
('563923257', '09151998', 'Aliza', 'M', 'Murphy\r'),
('563930924', '02201931', 'Abbey', 'F', 'Steuber\r'),
('564615430', '05061976', 'Ellen', 'F', 'Krajcik\r'),
('564682124', '11281962', 'Constance', 'N', 'Bins\r'),
('565038264', '11081939', 'Coleman', 'C', 'Quitzon\r'),
('565603694', '02181949', 'Mark', 'U', 'Dicki\r'),
('566182560', '11221926', 'Freddy', 'R', 'Pagac\r'),
('566370336', '06251991', 'Elwin', 'J', 'Flatley\r'),
('567293389', '10171945', 'Jamarcus', 'D', 'Heller\r'),
('567726013', '07221965', 'Robin', 'V', 'O\'Conner\r'),
('568723146', '03041992', 'Mason', 'E', 'McCullough\r'),
('570484960', '01061985', 'Michael', 'C', 'Tillman\r'),
('570782359', '02261926', 'Grant', 'Q', 'Rau\r'),
('570814848', '08251962', 'Delilah', 'J', 'Donnelly\r'),
('570848730', '02251954', 'Austin', 'G', 'Hammes\r'),
('570919257', '06131990', 'Constantin', 'G', 'Walker\r'),
('571082283', '06241929', 'Zaria', 'R', 'Rice\r'),
('572293285', '09181975', 'Cydney', 'N', 'Zieme\r'),
('573717117', '08071950', 'Mohammad', 'W', 'Cremin\r'),
('574168863', '11231926', 'Althea', 'P', 'Hintz\r'),
('574317132', '09251975', 'Kaleigh', 'H', 'Waters\r'),
('574377677', '08021971', 'Ethel', 'Q', 'Bosco\r'),
('575226310', '07251949', 'Leola', 'F', 'Braun\r'),
('575655635', '05101941', 'Mayra', 'C', 'Hintz\r'),
('575941671', '05231982', 'Ryann', 'J', 'Powlowski\r'),
('576184045', '02021972', 'Althea', 'D', 'Wisozk\r'),
('576349772', '06041989', 'Tyler', 'W', 'Hintz\r'),
('576795122', '09081930', 'Ian', 'G', 'Wyman\r'),
('576828609', '03251976', 'Randal', 'J', 'Bergnaum\r'),
('577094155', '08111970', 'Demarcus', 'L', 'Predovic\r'),
('577177900', '06031986', 'Jose', 'D', 'Kassulke\r'),
('578710407', '06011950', 'Lucie', 'N', 'Wunsch\r'),
('578883774', '07131989', 'Katrina', 'G', 'Goodwin\r'),
('578980113', '04101935', 'Haskell', 'V', 'Ward\r'),
('579037122', '04141979', 'Ruthie', 'B', 'Gottlieb\r'),
('580145441', '06211972', 'Leilani', 'K', 'Schuster\r'),
('581917911', '03181933', 'Kellie', 'Z', 'Veum\r'),
('582001154', '05221945', 'Lenny', 'C', 'Paucek\r'),
('582352340', '04241989', 'Yazmin', 'E', 'Gorczany\r'),
('582378813', '09061970', 'Cristal', 'W', 'Doyle\r'),
('582530457', '02241990', 'Genesis', 'J', 'Marvin\r'),
('582610643', '09121996', 'Jacey', 'G', 'Swift\r'),
('582614189', '07201946', 'Joseph', 'Y', 'Kunde\r'),
('582782226', '06201939', 'Vivien', 'J', 'Rosenbaum\r'),
('582856481', '11041958', 'Gwen', 'N', 'Fadel\r'),
('583137955', '04081941', 'Ralph', 'A', 'Johnston\r'),
('584023270', '02071940', 'Macie', 'V', 'Daugherty\r'),
('584108730', '06251987', 'Pierre', 'F', 'Bartell\r'),
('584358576', '09191993', 'Gregorio', 'E', 'Kunze\r'),
('584372026', '10041943', 'Eloisa', 'X', 'Hane\r'),
('585583508', '10111923', 'Sarai', 'M', 'Gulgowski\r'),
('585838372', '03131975', 'Kelli', 'E', 'Hane\r'),
('586054777', '04121978', 'Wilburn', 'S', 'Raynor\r'),
('586056135', '07121972', 'Margot', 'N', 'Bogan\r'),
('586210569', '06031926', 'Vesta', 'J', 'Volkman\r'),
('586352411', '02111959', 'Amira', 'A', 'Ortiz\r'),
('586577663', '10031982', 'Albert', 'I', 'Wintheiser\r'),
('586877611', '10111927', 'Zola', 'S', 'Johnston\r'),
('587700220', '04211952', 'Emile', 'N', 'Larson\r'),
('587846413', '08011996', 'Dora', 'Y', 'Conn\r'),
('587863470', '03031997', 'Roy', 'H', 'Corwin\r'),
('588271255', '02061927', 'Alysa', 'K', 'Friesen\r'),
('588771042', '09091950', 'Mac', 'X', 'Herman\r'),
('588802835', '07281984', 'Dora', 'M', 'Langosh\r'),
('589471209', '02071969', 'Sidney', 'S', 'Goldner\r'),
('590098143', '06251965', 'Bradly', 'M', 'Marvin\r'),
('592633169', '08141939', 'Brody', 'C', 'Denesik\r'),
('593350185', '04201931', 'Manuel', 'U', 'Little\r'),
('593718048', '02021998', 'Ismael', 'A', 'Reynolds\r'),
('594457898', '03091991', 'Stanley', 'C', 'Schmeler\r'),
('594757625', '07151941', 'Zula', 'Q', 'Senger\r'),
('594908310', '05231951', 'Hillard', 'Z', 'MacGyver\r'),
('595094385', '06091953', 'Kadin', 'D', 'Purdy\r'),
('598514079', '07281946', 'Friedrich', 'E', 'Davis\r'),
('599611421', '07111921', 'Felicity', 'I', 'Reinger\r'),
('600544285', '02171938', 'Morton', 'K', 'Terry\r'),
('601420148', '09271992', 'Trisha', 'S', 'Gottlieb\r'),
('603367613', '04011962', 'Gertrude', 'P', 'Goldner\r'),
('603477387', '09091928', 'Chelsea', 'A', 'Gutkowski\r'),
('603645974', '07091998', 'Richmond', 'K', 'Lowe\r'),
('604038065', '09141956', 'Pink', 'S', 'Kozey\r'),
('604057697', '06101982', 'Miles', 'U', 'Bartoletti\r'),
('604216451', '01182000', 'Merle', 'U', 'Fadel\r'),
('604626253', '02251926', 'Melody', 'Y', 'Murazik\r'),
('604871543', '08151980', 'Al', 'J', 'Bergnaum\r'),
('605348862', '09131976', 'Lucas', 'M', 'Harvey\r'),
('605614713', '09211923', 'Janis', 'Q', 'Fahey\r'),
('606158828', '03091945', 'Brandon', 'J', 'Baumbach\r'),
('606270572', '11101956', 'Reid', 'S', 'Lemke\r'),
('607274772', '10151999', 'Elvis', 'Y', 'Ruecker\r'),
('607354890', '03041953', 'Darion', 'Q', 'Schmeler\r'),
('607709717', '04261996', 'Anjali', 'N', 'Heidenreich\r'),
('608216646', '03111982', 'Torrey', 'F', 'Ondricka\r'),
('608544546', '06131955', 'Cesar', 'D', 'Shields\r'),
('608641244', '03041980', 'Marjolaine', 'R', 'Senger\r'),
('608947561', '07181984', 'Jorge', 'T', 'Mills\r'),
('609887347', '05161960', 'Kellen', 'J', 'Streich\r'),
('610563125', '03061969', 'Myron', 'Q', 'Romaguera\r'),
('612691733', '05111954', 'Vern', 'D', 'Christiansen\r'),
('612883474', '05161970', 'Chase', 'F', 'Brekke\r'),
('613637650', '07201926', 'Herminio', 'Y', 'Tillman\r'),
('613758029', '03151984', 'Diana', 'Y', 'Kiehn\r'),
('613961313', '10101925', 'Carlo', 'H', 'Rutherford\r'),
('614488970', '11051992', 'Brandi', 'W', 'Tromp\r'),
('614801563', '09201988', 'Shania', 'Q', 'Conn\r'),
('615248202', '05141999', 'Enos', 'J', 'Boehm\r'),
('615731665', '10181975', 'Darlene', 'U', 'Ruecker\r'),
('616845371', '03081957', 'Loyce', 'M', 'O\'Keefe\r'),
('617051619', '03101974', 'Orland', 'Q', 'Muller\r'),
('617165192', '08071964', 'Llewellyn', 'R', 'Deckow\r'),
('617323643', '11021926', 'Beau', 'G', 'Mertz\r'),
('618426866', '05261956', 'Deven', 'S', 'Walsh\r'),
('618535859', '03061920', 'Conner', 'V', 'Block\r'),
('620064285', '04261972', 'Greyson', 'O', 'Goodwin\r'),
('620206314', '09041957', 'Juliana', 'E', 'Fahey\r'),
('620228557', '08071921', 'Ramiro', 'F', 'Mosciski\r'),
('620603771', '08031966', 'Elwyn', 'H', 'Reilly\r'),
('620755675', '04251926', 'Stewart', 'P', 'Boehm\r'),
('621271402', '09201985', 'Kailee', 'C', 'Feest\r'),
('621288599', '07221937', 'Henry', 'K', 'Lang\r'),
('621427564', '06041990', 'Rodger', 'I', 'Mante\r'),
('622018598', '08111948', 'Helen', 'D', 'Aufderhar\r'),
('623018603', '10171986', 'Madaline', 'V', 'Douglas\r'),
('624513923', '06141998', 'Monique', 'I', 'Graham\r'),
('625666730', '06121926', 'Carolyn', 'Q', 'Kuhlman\r'),
('626331355', '07051928', 'Curtis', 'V', 'Dietrich\r'),
('627372550', '10211920', 'Gail', 'M', 'Hagenes\r'),
('627737213', '11251950', 'Aliza', 'B', 'Reichert\r'),
('628070485', '03041956', 'Brant', 'F', 'Nitzsche\r'),
('628311332', '08051950', 'Jessika', 'W', 'Flatley\r'),
('628465073', '10101937', 'Jolie', 'X', 'Block\r'),
('629619370', '11251940', 'Thora', 'N', 'Streich\r'),
('630122692', '06021985', 'Barrett', 'Q', 'Hammes\r'),
('630304108', '01251994', 'Hunter', 'P', 'Borer\r'),
('630710088', '10201979', 'Mateo', 'A', 'D\'Amore\r'),
('630811261', '01171996', 'Bella', 'Z', 'Prohaska\r'),
('631132187', '10121962', 'Abelardo', 'A', 'Simonis\r'),
('631540517', '09091959', 'Darby', 'S', 'Torp\r'),
('631624602', '02231934', 'Lela', 'P', 'Langosh\r'),
('631626302', '07171949', 'Caleb', 'J', 'Kihn\r'),
('632019880', '04121930', 'Felipe', 'E', 'Ziemann\r'),
('632048718', '09181985', 'Rickie', 'E', 'Glover\r'),
('632737665', '02161984', 'Maverick', 'M', 'Bartoletti\r'),
('632738651', '05201942', 'Olen', 'F', 'Ledner\r'),
('634046633', '09241992', 'Daisy', 'N', 'Hodkiewicz\r'),
('634084576', '02281966', 'Marlin', 'X', 'Beahan\r'),
('634338414', '08231994', 'Lela', 'X', 'Nienow\r'),
('634980823', '08271960', 'Moshe', 'O', 'Morissette\r'),
('635714837', '08101937', 'Alia', 'W', 'Dooley\r'),
('635805735', '11021974', 'Nyasia', 'U', 'Carroll\r'),
('635883429', '06031958', 'Effie', 'N', 'Ferry\r'),
('636022823', '05231923', 'Kelley', 'Q', 'Effertz\r'),
('636807581', '01121970', 'Mariano', 'F', 'Ledner\r'),
('637681374', '07231975', 'Whitney', 'U', 'Paucek\r'),
('637872837', '02151992', 'Gust', 'F', 'Armstrong\r'),
('637981386', '06261975', 'Jessica', 'Y', 'Pfeffer\r'),
('638121783', '09211967', 'Tony', 'H', 'Boyle\r'),
('638341261', '10011993', 'Alison', 'K', 'Jacobi\r'),
('638605570', '03251957', 'Abbie', 'X', 'Conroy\r'),
('638935031', '10261986', 'Ronny', 'F', 'Gibson\r'),
('639012612', '05081924', 'Yasmin', 'L', 'Nicolas\r'),
('639136458', '03231960', 'Eloise', 'R', 'Denesik\r'),
('639887993', '02152001', 'Rogers', 'P', 'Batz\r'),
('640238290', '10141974', 'Kurtis', 'C', 'Abbott\r'),
('641054426', '07071977', 'Raheem', 'X', 'Parisian\r'),
('641250762', '10281969', 'Katarina', 'J', 'Reichert\r'),
('641881274', '08041995', 'Malvina', 'E', 'Leffler\r'),
('642407750', '09021975', 'Alessia', 'X', 'Hane\r'),
('643083065', '01011961', 'Antwon', 'G', 'Ryan\r'),
('643391712', '03141951', 'Woodrow', 'B', 'Durgan\r'),
('643543013', '04271959', 'Vidal', 'L', 'Ebert\r'),
('644183202', '01151931', 'Mireya', 'Y', 'Becker\r'),
('644623320', '04221931', 'Gunner', 'N', 'Dickinson\r'),
('645081753', '06161981', 'Nelle', 'I', 'Hammes\r'),
('645682304', '07161967', 'Laron', 'G', 'Block\r'),
('646515303', '10191961', 'Freddy', 'U', 'Walter\r'),
('646583482', '09101923', 'Camden', 'I', 'Connelly\r'),
('646866965', '06161951', 'Santa', 'G', 'Bernhard\r'),
('647215978', '03071987', 'Sierra', 'R', 'Friesen\r'),
('648022574', '08161984', 'Rico', 'Q', 'Johns\r'),
('648114087', '03091959', 'Ottilie', 'V', 'Mohr\r'),
('648153306', '05101996', 'Ozella', 'A', 'Bayer\r'),
('648213386', '05141935', 'Thelma', 'K', 'Turner\r'),
('649691716', '07191942', 'Elva', 'N', 'Nitzsche\r'),
('649881218', '08201980', 'Ben', 'G', 'Champlin\r'),
('650007409', '10211961', 'Juliet', 'J', 'Nicolas\r'),
('650072936', '06071926', 'Wilford', 'C', 'Wilkinson\r'),
('650151410', '11231980', 'Reese', 'C', 'Grant\r'),
('650274642', '06231954', 'Charles', 'P', 'O\'Hara\r'),
('650292406', '06091943', 'Frankie', 'N', 'Nolan\r'),
('650464079', '05141929', 'Lora', 'M', 'Bailey\r'),
('650887359', '11191977', 'Priscilla', 'A', 'Wyman\r'),
('653233776', '09051977', 'Alycia', 'L', 'Kub\r'),
('653424801', '10181935', 'Sigrid', 'X', 'Beer\r'),
('653575228', '08091923', 'Montana', 'U', 'Dietrich\r'),
('653857616', '03041943', 'Ella', 'G', 'Fritsch\r'),
('654082338', '07071964', 'Jamaal', 'I', 'Heaney\r'),
('654627217', '07101942', 'Bonita', 'O', 'Schoen\r'),
('655540617', '03241981', 'Horace', 'J', 'Kautzer\r'),
('657436648', '08231951', 'Domenico', 'E', 'Runolfsson\r'),
('657894076', '11031973', 'Kristin', 'Q', 'Lang\r'),
('658052692', '10251934', 'Virgie', 'O', 'Veum\r'),
('658528972', '09021979', 'Jadyn', 'W', 'Keeling\r'),
('658616645', '02031968', 'Kory', 'F', 'Waelchi\r'),
('659523402', '04221959', 'Jace', 'O', 'Fadel\r'),
('660096075', '04061985', 'Yolanda', 'G', 'Stark\r'),
('660405500', '05061982', 'Javon', 'K', 'Hermann\r'),
('660903110', '09051974', 'Baby', 'X', 'Schaefer\r'),
('662457916', '10201942', 'Tomasa', 'B', 'Collier\r'),
('663232406', '06141985', 'Daron', 'J', 'Herzog\r'),
('663443051', '06141940', 'Kylee', 'L', 'Johnson\r'),
('664007014', '05031945', 'Mallory', 'U', 'Klocko\r'),
('665366530', '09061958', 'Lenna', 'P', 'Koelpin\r'),
('665506578', '04151954', 'Ashlee', 'X', 'Prosacco\r'),
('666446836', '07131995', 'Diego', 'U', 'Keeling\r'),
('666707365', '06021961', 'Serenity', 'U', 'Funk\r'),
('666709417', '02261944', 'Marilou', 'C', 'Bayer\r'),
('666754755', '04281990', 'Taya', 'B', 'Franecki\r'),
('667816595', '09191963', 'Angie', 'Y', 'Cremin\r'),
('667868394', '11091972', 'Amaya', 'B', 'Tremblay\r'),
('667928025', '01061987', 'Shakira', 'H', 'D\'Amore\r'),
('668025426', '01181984', 'Maud', 'O', 'Dickinson\r'),
('669412248', '02201995', 'Timothy', 'F', 'Yost\r'),
('669690112', '02051963', 'Maci', 'T', 'Bernhard\r'),
('670872409', '02251958', 'Asa', 'W', 'White\r'),
('671436812', '05261962', 'Zola', 'V', 'Jakubowski\r'),
('671604691', '03151937', 'Tracey', 'B', 'Erdman\r'),
('671753863', '10221970', 'Ansel', 'D', 'Lynch\r'),
('672196293', '08111996', 'Jaylen', 'Q', 'Rowe\r'),
('672415607', '05101977', 'Fredrick', 'J', 'Hahn\r'),
('672511207', '02091943', 'Josefa', 'L', 'Lockman\r'),
('673138018', '02231934', 'Alysson', 'Z', 'West\r'),
('673201508', '06171940', 'Rosemarie', 'U', 'Cummerata\r'),
('674446176', '02151927', 'Kylee', 'E', 'Weimann\r'),
('674865579', '01101922', 'Colton', 'C', 'Murray\r'),
('675234849', '03081966', 'Cyril', 'K', 'Moen\r'),
('675243579', '10191950', 'Thelma', 'E', 'Borer\r'),
('675650728', '09061973', 'Mac', 'C', 'Jaskolski\r'),
('676169776', '04171998', 'Yvette', 'B', 'Lueilwitz\r'),
('676728633', '02151933', 'Alize', 'V', 'Schoen\r'),
('677026532', '03211940', 'Gladys', 'G', 'Fay\r'),
('677088386', '10201943', 'Ezekiel', 'T', 'Ziemann\r'),
('677376808', '07201923', 'Delphia', 'N', 'Windler\r'),
('677762158', '04021931', 'Geovanni', 'O', 'Stiedemann\r'),
('678302041', '07181988', 'Paris', 'M', 'Hilll\r'),
('678458327', '09201965', 'Cleora', 'F', 'Pagac\r'),
('678936121', '01011958', 'Alda', 'E', 'Zemlak\r'),
('679468720', '07051985', 'Verla', 'R', 'Feest\r'),
('680175872', '02172000', 'Caitlyn', 'J', 'McKenzie\r'),
('680315270', '02191994', 'Luis', 'C', 'Howell\r'),
('680731025', '10231993', 'Johnpaul', 'Z', 'Johns\r'),
('681031057', '02101955', 'Sibyl', 'I', 'Goodwin\r'),
('681228337', '04211974', 'Priscilla', 'T', 'Kozey\r'),
('681536638', '09261968', 'Nestor', 'K', 'Bruen\r'),
('681742250', '05091988', 'Odessa', 'G', 'Daugherty\r'),
('682080422', '09091927', 'Aniya', 'I', 'Blick\r'),
('682369330', '04061922', 'Horace', 'Q', 'Ruecker\r'),
('682967304', '11261940', 'Zaria', 'Q', 'Gottlieb\r'),
('683133268', '04221949', 'Wilhelm', 'W', 'Kling\r'),
('683243668', '05121933', 'Isabel', 'G', 'Dicki\r'),
('683452282', '03171951', 'Mayra', 'O', 'Adams\r'),
('683869932', '03181942', 'Dallas', 'E', 'Ankunding\r'),
('684062241', '04061922', 'Treva', 'S', 'Huel\r'),
('685090038', '07031986', 'Glen', 'P', 'Gusikowski\r'),
('685517815', '11161948', 'Drake', 'W', 'Stiedemann\r'),
('686292737', '03081920', 'Nathan', 'U', 'Grimes\r'),
('686327018', '08231937', 'Kaley', 'O', 'Von\r'),
('686344811', '09021981', 'Brice', 'Y', 'Green\r'),
('686472160', '09131937', 'Kole', 'X', 'Kemmer\r'),
('686785035', '08091952', 'Price', 'A', 'Quigley\r'),
('687106664', '09221966', 'Rahsaan', 'P', 'McClure\r'),
('687275243', '11181955', 'Nannie', 'P', 'Howell\r'),
('688280549', '09101948', 'Hank', 'C', 'Feil\r'),
('688772533', '05061976', 'Kory', 'T', 'Krajcik\r'),
('689619436', '02071967', 'Humberto', 'D', 'Lueilwitz\r'),
('690463439', '02181958', 'Donnell', 'F', 'DuBuque\r'),
('690698683', '05071941', 'Ignatius', 'M', 'Kuhlman\r'),
('692037042', '06181969', 'Jeffry', 'L', 'Stiedemann\r'),
('694370181', '09031957', 'Vella', 'Q', 'Schuster\r'),
('696357013', '10221970', 'Felicity', 'A', 'Gusikowski\r'),
('697306507', '08141976', 'Zetta', 'I', 'MacGyver\r'),
('697353464', '06161959', 'Audrey', 'O', 'Orn\r'),
('697556315', '05032000', 'Jerald', 'D', 'Legros\r'),
('697783110', '07141926', 'Annamarie', 'I', 'Hills\r'),
('700275055', '06141949', 'Katherine', 'L', 'Gislason\r'),
('700544033', '02171963', 'Dave', 'G', 'Donnelly\r'),
('700686812', '01261930', 'Xzavier', 'E', 'Douglas\r'),
('700728725', '06161936', 'Dominique', 'Y', 'Gislason\r'),
('700840251', '03021963', 'Deangelo', 'W', 'Kihn\r'),
('701228873', '09021929', 'Madisen', 'Y', 'Ruecker\r'),
('702027780', '10041923', 'Charley', 'P', 'Witting\r'),
('702403193', '10041934', 'Cornelius', 'J', 'Berge\r'),
('702769956', '10161976', 'Jensen', 'Y', 'Bahringer\r'),
('703417691', '09031958', 'Meggie', 'X', 'Haag\r'),
('703461641', '09281994', 'Franz', 'R', 'Jacobs\r'),
('703576595', '07112001', 'Agustina', 'T', 'Koch\r'),
('704657450', '05111993', 'Deanna', 'F', 'Hilpert\r'),
('704707243', '09131931', 'Donnell', 'M', 'Rosenbaum\r'),
('704746711', '02221921', 'Nyah', 'C', 'Wiza\r'),
('705094539', '05281942', 'Koby', 'E', 'Bogan\r'),
('705723062', '05041983', 'Louisa', 'I', 'Olson\r'),
('705955117', '09231971', 'Anita', 'L', 'Yundt\r'),
('706015193', '10271995', 'Devin', 'I', 'Sawayn\r'),
('706688138', '08261927', 'Lilla', 'B', 'Pacocha\r'),
('706740166', '08241970', 'Jaylan', 'B', 'Shields\r'),
('707277613', '06191926', 'Guido', 'C', 'Watsica\r'),
('707437053', '08261964', 'Sherman', 'A', 'Lynch\r'),
('707676561', '09111924', 'Garnett', 'N', 'Harber\r'),
('707853666', '04221934', 'Jaycee', 'K', 'Ortiz\r'),
('708177625', '10021966', 'Dawn', 'W', 'Homenick\r'),
('709298352', '03071950', 'Rylan', 'B', 'Champlin\r'),
('711096402', '11211993', 'Amelia', 'X', 'Raynor\r'),
('711338557', '10031944', 'Caterina', 'J', 'Nader\r'),
('712153461', '06181996', 'Isabell', 'D', 'Thiel\r'),
('712439573', '04091965', 'Shaun', 'V', 'Olson\r'),
('712713613', '02161929', 'Bernita', 'C', 'Gerlach\r'),
('713208107', '11061982', 'Vida', 'T', 'Dibbert\r'),
('713685257', '04111937', 'Kayla', 'T', 'Volkman\r'),
('714015523', '01241925', 'Mallory', 'J', 'Ebert\r'),
('714098668', '06141941', 'Danyka', 'Y', 'Mraz\r'),
('714466736', '05071938', 'Caesar', 'I', 'Anderson\r'),
('715600541', '10121967', 'Amelia', 'U', 'Beier\r'),
('715876806', '10271951', 'Jordan', 'B', 'Williamson\r'),
('718157002', '04021946', 'Jerrold', 'C', 'Morar\r'),
('718387473', '02191963', 'Aleen', 'L', 'McDermott\r'),
('718733739', '03251963', 'Sofia', 'O', 'Prohaska\r'),
('719655595', '07161930', 'Nasir', 'R', 'Lakin\r'),
('719823624', '09221994', 'Lelah', 'T', 'Rodriguez\r'),
('720243552', '10211967', 'Hilton', 'G', 'Spencer\r'),
('721481205', '09021989', 'Kristy', 'M', 'Botsford\r'),
('722707456', '06061962', 'Kody', 'P', 'Osinski\r'),
('722713717', '11051976', 'Tomasa', 'Z', 'Reichel\r'),
('723135884', '07131950', 'Dolores', 'J', 'Emmerich\r'),
('723362683', '06111963', 'Isidro', 'E', 'Harris\r'),
('723422346', '07091949', 'Jeffrey', 'B', 'Johnston\r'),
('723749011', '08041935', 'Jevon', 'L', 'Anderson\r'),
('723929255', '03141931', 'Everardo', 'C', 'Raynor\r'),
('724686322', '08041970', 'Ian', 'E', 'Homenick\r'),
('725349285', '05081984', 'Eino', 'P', 'Murray\r'),
('727078993', '06091974', 'Camron', 'E', 'Wuckert\r'),
('727082023', '02051963', 'Zena', 'X', 'Renner\r'),
('727098134', '02131962', 'Robin', 'J', 'Rolfson\r'),
('727467448', '06131946', 'Avis', 'A', 'Breitenberg\r'),
('727566443', '02041929', 'Litzy', 'W', 'Murphy\r'),
('727718054', '02081958', 'Denis', 'W', 'Larson\r'),
('728098878', '09081952', 'Vidal', 'Z', 'Osinski\r'),
('728408728', '07131945', 'Mya', 'U', 'Walsh\r'),
('728436762', '04211946', 'Ruby', 'Q', 'Bechtelar\r'),
('729086787', '05091972', 'Sheila', 'P', 'Howe\r'),
('729415382', '04141929', 'Lindsey', 'K', 'Anderson\r'),
('730182085', '02151987', 'Meaghan', 'U', 'Altenwerth\r'),
('730240072', '03211966', 'Zetta', 'X', 'Cormier\r'),
('730260500', '11051939', 'Clifton', 'K', 'Hegmann\r'),
('730408163', '05211966', 'Jordyn', 'U', 'Carroll\r'),
('731243812', '02081987', 'Ahmad', 'Q', 'Mohr\r'),
('732363226', '05031960', 'Aidan', 'J', 'Weissnat\r'),
('733901088', '06021968', 'Angie', 'W', 'Graham\r'),
('734517314', '11071989', 'Mabelle', 'N', 'Schuster\r'),
('734586079', '10171966', 'Kennith', 'U', 'Brakus\r'),
('734631366', '09261999', 'Manley', 'T', 'Reynolds\r'),
('735115360', '03151942', 'Maybelle', 'T', 'Lynch\r'),
('735433604', '02251987', 'Addison', 'E', 'Dooley\r'),
('735464747', '04121947', 'Macie', 'G', 'Stokes\r'),
('735685690', '06201952', 'Bradly', 'Q', 'Nolan\r'),
('737032090', '09261963', 'Oswaldo', 'F', 'Kovacek\r'),
('737286011', '09061924', 'Daniella', 'L', 'Hilpert\r'),
('737349406', '09201973', 'Iva', 'I', 'Schuster\r'),
('738020806', '07101957', 'Florence', 'I', 'Terry\r'),
('738163156', '02181922', 'Carolanne', 'N', 'Littel\r'),
('738474110', '01071939', 'Cora', 'C', 'Senger\r'),
('739316347', '07111958', 'Oscar', 'F', 'Mohr\r'),
('741084250', '06201978', 'Garfield', 'C', 'Koelpin\r'),
('741835581', '09221982', 'Lacey', 'O', 'Kassulke\r'),
('742170455', '07211974', 'Violette', 'H', 'Bergnaum\r'),
('742236091', '06131985', 'Alfredo', 'C', 'Von\r'),
('742314681', '04071969', 'Afton', 'Y', 'Kiehn\r'),
('743342478', '02131979', 'Ayana', 'E', 'Hegmann\r'),
('743435958', '07011985', 'Harrison', 'G', 'Langworth\r'),
('743950867', '04241926', 'Alf', 'P', 'Goldner\r'),
('744323335', '02151990', 'Verna', 'N', 'Ratke\r'),
('745018700', '09201994', 'Cortney', 'I', 'Frami\r'),
('745151213', '06221979', 'Zita', 'K', 'Kris\r'),
('745417213', '06251948', 'Colin', 'C', 'Daniel\r'),
('745842538', '11211949', 'Ethel', 'G', 'Hermann\r'),
('747483492', '09131983', 'Eveline', 'W', 'Balistreri\r'),
('747820034', '02101981', 'Cathy', 'G', 'Crist\r'),
('747898806', '07261943', 'Germaine', 'I', 'Shields\r'),
('748503276', '02041930', 'Delphine', 'C', 'Schmidt\r'),
('748707800', '04081958', 'Zetta', 'V', 'White\r'),
('748823311', '09221921', 'Michael', 'R', 'Ritchie\r'),
('749264600', '05111931', 'Domingo', 'J', 'Heathcote\r'),
('750534322', '02201945', 'Allen', 'O', 'Medhurst\r'),
('751483867', '08021952', 'Elsie', 'D', 'Farrell\r'),
('753324100', '04111964', 'Trevion', 'X', 'Gleason\r'),
('753514204', '07101930', 'Margarita', 'E', 'Volkman\r'),
('753798372', '04131964', 'Dwight', 'M', 'Predovic\r'),
('753870966', '07131954', 'Kody', 'I', 'Gleason\r'),
('753937153', '10171984', 'Idell', 'B', 'Zieme\r'),
('754586185', '05021938', 'Ali', 'F', 'Balistreri\r'),
('754759271', '02251997', 'Eriberto', 'D', 'Mueller\r'),
('755189312', '04281934', 'Mitchel', 'W', 'Hermann\r'),
('755431173', '05021996', 'Arlo', 'L', 'Casper\r'),
('755734781', '11051965', 'Alessandra', 'Q', 'Kuhlman\r'),
('755865015', '09011947', 'Guiseppe', 'P', 'Baumbach\r'),
('756467410', '01211997', 'Abraham', 'C', 'Pacocha\r'),
('756477930', '02221929', 'Gregoria', 'D', 'Kunde\r'),
('756528415', '02151982', 'Abbey', 'R', 'Dickinson\r'),
('756610158', '10171920', 'Matteo', 'M', 'Beahan\r'),
('756656484', '06121947', 'Cathy', 'H', 'Carroll\r'),
('757576493', '09061922', 'Blaze', 'K', 'Thompson\r'),
('757604461', '10181947', 'Alexandro', 'N', 'Funk\r'),
('757653777', '04121934', 'Javonte', 'M', 'Hettinger\r'),
('757738006', '08201927', 'Edward', 'W', 'Bins\r'),
('758252480', '04261985', 'Letitia', 'B', 'Wolff\r'),
('758372522', '08111989', 'Lempi', 'R', 'Graham\r'),
('758574447', '08071992', 'Darrin', 'S', 'Steuber\r'),
('759182536', '06031999', 'Barton', 'V', 'Bergstrom\r'),
('759958041', '10271934', 'Sylvan', 'F', 'Schiller\r'),
('760651748', '02141934', 'Kory', 'O', 'Lindgren\r'),
('761567305', '11101953', 'Myles', 'F', 'Schaden\r'),
('762084940', '03191963', 'Herbert', 'N', 'Gottlieb\r'),
('762795057', '10101989', 'Blanche', 'Z', 'Wintheiser\r'),
('763455108', '09071939', 'Ella', 'S', 'Cruickshank\r'),
('764215087', '11031962', 'Brennon', 'D', 'Gutkowski\r'),
('764327518', '03201954', 'Helen', 'O', 'Kunde\r'),
('764363830', '08181943', 'Rosina', 'D', 'Mitchell\r'),
('764559836', '05021940', 'Jermaine', 'R', 'Prosacco\r'),
('764972570', '08021977', 'Nova', 'D', 'Quigley\r'),
('765278958', '10261950', 'Kylie', 'R', 'Kerluke\r'),
('765723618', '03011946', 'Talon', 'H', 'Auer\r'),
('765741576', '05101933', 'Lilliana', 'Q', 'Raynor\r'),
('765768773', '02171977', 'Kaylee', 'Q', 'Haag\r'),
('766132468', '04181937', 'Claud', 'Y', 'Beahan\r'),
('766613258', '06261987', 'Dayton', 'Y', 'Purdy\r'),
('766792487', '05241922', 'Antonette', 'A', 'Bauch\r'),
('767116433', '03081960', 'Lamont', 'L', 'Kovacek\r'),
('767258891', '03271984', 'Zachariah', 'G', 'Dicki\r'),
('767724877', '08171935', 'Gerard', 'E', 'Greenholt\r'),
('767834571', '02041993', 'Adolphus', 'Y', 'White\r'),
('768263006', '04121967', 'Hector', 'T', 'Marvin\r'),
('770177245', '04251952', 'Willis', 'T', 'Robel\r'),
('770614806', '03161948', 'Furman', 'H', 'Wuckert\r'),
('771193120', '06091950', 'Aglae', 'T', 'Bailey\r'),
('771368511', '04081987', 'Aubree', 'R', 'Lynch\r'),
('771733611', '09171964', 'Junius', 'D', 'Ferry\r'),
('773010788', '05221953', 'Anthony', 'G', 'Hermiston\r'),
('773025704', '07151961', 'Adriel', 'T', 'Okuneva\r'),
('773349818', '06231964', 'Pansy', 'N', 'Corwin\r'),
('773686142', '04191983', 'Cheyanne', 'T', 'Crona\r'),
('773715447', '01181922', 'Garland', 'M', 'King\r'),
('773743161', '09051933', 'Ernesto', 'V', 'Raynor\r'),
('774051326', '02281988', 'Cloyd', 'B', 'Batz\r'),
('774390480', '06181976', 'Allene', 'N', 'Hamill\r'),
('776697046', '05171973', 'Catalina', 'H', 'Hand\r'),
('777075949', '07091924', 'Jarrell', 'C', 'Shanahan\r'),
('777215763', '10201932', 'Wyman', 'O', 'Stokes\r'),
('777256639', '05211984', 'Shyann', 'M', 'Bartoletti\r'),
('777622660', '02111978', 'Hildegard', 'K', 'Nitzsche\r'),
('778238308', '10021974', 'Edward', 'Z', 'Smitham\r'),
('778385827', '08061925', 'Caitlyn', 'V', 'Ward\r'),
('779309090', '04151976', 'Rosalyn', 'R', 'Reichel\r'),
('780830765', '03081984', 'Rubye', 'X', 'Feest\r'),
('781010961', '10031991', 'Janiya', 'O', 'MacGyver\r'),
('781030206', '03241946', 'Prudence', 'M', 'McClure\r'),
('781394357', '03111997', 'Annalise', 'R', 'Goyette\r'),
('781835480', '01051977', 'Elenor', 'E', 'Bergnaum\r'),
('782347414', '04131986', 'Jessyca', 'R', 'Gleason\r'),
('782670376', '06151940', 'Amalia', 'I', 'Gutkowski\r'),
('782728071', '06211975', 'Gina', 'Y', 'Glover\r'),
('783588033', '11121947', 'Anabelle', 'H', 'Muller\r'),
('784285759', '03191949', 'Kim', 'W', 'Lowe\r'),
('784643597', '02061937', 'Austyn', 'P', 'Mitchell\r'),
('784674065', '03081941', 'Weldon', 'T', 'Lemke\r'),
('784695128', '02181989', 'D\'angelo', 'D', 'Nienow\r'),
('784713966', '05061981', 'Noble', 'N', 'Raynor\r'),
('784721194', '07191926', 'Ofelia', 'F', 'Crist\r'),
('785108921', '07181935', 'Alda', 'A', 'Moore\r'),
('785222535', '09061921', 'Juston', 'Y', 'Konopelski\r'),
('785565361', '10231995', 'Lelia', 'O', 'Mayert\r'),
('785744023', '07201969', 'Freeman', 'R', 'Gulgowski\r'),
('789652852', '08151946', 'Mable', 'G', 'Dickens\r'),
('789989874', '07281930', 'Ebony', 'P', 'Zemlak\r'),
('791402259', '07151951', 'Sylvia', 'P', 'Predovic\r'),
('791418626', '11041980', 'Eloy', 'F', 'Weber\r'),
('792025634', '10191983', 'Letha', 'O', 'Sawayn\r'),
('793349616', '04131948', 'Lilian', 'U', 'Rodriguez\r'),
('793428859', '05281996', 'Alphonso', 'W', 'Weber\r'),
('794246025', '05031961', 'Estrella', 'L', 'Crooks\r'),
('796187374', '06131943', 'Filomena', 'X', 'Rogahn\r'),
('798936462', '08261948', 'Reva', 'J', 'Fritsch\r'),
('800244067', '03241972', 'Marisol', 'R', 'Powlowski\r'),
('800248623', '06051969', 'Leonel', 'K', 'Nikolaus\r'),
('800301761', '09221979', 'Clair', 'C', 'Dietrich\r'),
('800443250', '10091996', 'Lucious', 'R', 'Goyette\r'),
('801244809', '09192000', 'Noah', 'B', 'Pollich\r'),
('801342185', '04151938', 'Hannah', 'L', 'Batz\r'),
('801466866', '03071957', 'Cara', 'P', 'Cronin\r'),
('802051127', '11071938', 'Kadin', 'N', 'Klocko\r'),
('802153033', '08081961', 'Ahmed', 'N', 'Kulas\r'),
('802323880', '09121986', 'Sophie', 'L', 'Zieme\r'),
('802330215', '09101947', 'Aric', 'D', 'Mueller\r'),
('803012147', '02021925', 'Wellington', 'D', 'Schaden\r'),
('803215615', '08251993', 'Izabella', 'U', 'Sipes\r'),
('803238516', '03111996', 'Elisa', 'V', 'Von\r'),
('803291600', '01021958', 'Lexus', 'P', 'Von\r'),
('803312503', '06031970', 'Eulalia', 'Y', 'Davis\r'),
('803511400', '01181971', 'Brandi', 'I', 'Schaefer\r'),
('803662682', '09061955', 'Chasity', 'U', 'Marvin\r'),
('803816370', '02071922', 'Dorris', 'X', 'Walter\r'),
('804213652', '05281950', 'Vilma', 'X', 'Schoen\r'),
('804657287', '07201954', 'Bianka', 'Q', 'Bahringer\r'),
('804703685', '09071998', 'Rocky', 'P', 'Windler\r'),
('805241445', '10271979', 'Rodger', 'L', 'Gerhold\r'),
('805936746', '07031926', 'Chelsie', 'N', 'Hermann\r'),
('805956712', '08261932', 'Frederique', 'L', 'Hammes\r'),
('806013882', '10271923', 'Tyson', 'P', 'Larkin\r'),
('806364009', '03191959', 'Katharina', 'N', 'Upton\r'),
('806424057', '05021937', 'Dewitt', 'I', 'Howell\r'),
('806550766', '03181986', 'Dayana', 'B', 'Hessel\r'),
('806642503', '03121989', 'Dominic', 'T', 'Wuckert\r'),
('806718595', '05181950', 'Jordy', 'E', 'Hammes\r'),
('806802281', '07071997', 'Manuel', 'W', 'Senger\r'),
('807049900', '02171939', 'Mollie', 'O', 'Mayer\r'),
('807286350', '08241986', 'Hayden', 'K', 'Heller\r'),
('807383836', '01201977', 'Lavon', 'X', 'Morissette\r'),
('807418168', '02101997', 'Mathew', 'Y', 'Gusikowski\r'),
('807440048', '07241925', 'Arnold', 'P', 'Langworth\r'),
('807600821', '10221949', 'Rosa', 'A', 'Morar\r'),
('808547951', '06221924', 'Joesph', 'M', 'Shanahan\r'),
('810353491', '04161976', 'Angel', 'C', 'Johns\r'),
('810927081', '01251948', 'Liliane', 'G', 'Predovic\r'),
('811625388', '03211995', 'Gregorio', 'E', 'Rempel\r'),
('812088821', '10041933', 'Brandy', 'L', 'Cremin\r'),
('812092467', '06041961', 'Dasia', 'C', 'Becker\r'),
('812404151', '09061999', 'Alexandrea', 'H', 'Kemmer\r'),
('812963524', '02181933', 'Ashton', 'V', 'Kuhic\r'),
('813260388', '07221947', 'Johnpaul', 'M', 'Johnson\r'),
('813316307', '03111978', 'Nick', 'X', 'Fahey\r'),
('813735524', '06271947', 'Elvie', 'R', 'Carter\r'),
('814440113', '10091950', 'Brionna', 'E', 'Schmitt\r'),
('814613456', '11011922', 'Arely', 'R', 'Beer\r'),
('815060155', '03051968', 'Eli', 'B', 'Fahey\r'),
('816170113', '01021943', 'Anthony', 'V', 'Pacocha\r'),
('816674169', '06141924', 'Myron', 'V', 'Kutch\r'),
('817276818', '04021925', 'Tristin', 'T', 'Bailey\r'),
('817342204', '05201954', 'Katlynn', 'N', 'Cartwright\r'),
('817785572', '06191928', 'Hildegard', 'H', 'Reynolds\r'),
('817841321', '09111934', 'Carlos', 'F', 'Zemlak\r'),
('818145633', '01191937', 'Rolando', 'I', 'Ratke\r'),
('818773690', '09131941', 'Mariano', 'R', 'Bode\r'),
('819756923', '01231942', 'Howard', 'I', 'Cormier\r'),
('820188870', '09011971', 'Brent', 'R', 'Bogan\r'),
('820686385', '09101939', 'Eladio', 'V', 'Von\r'),
('821086254', '02201930', 'Amir', 'Q', 'Keebler\r'),
('821120001', '06161948', 'Jasper', 'B', 'Cummings\r'),
('821176442', '04021940', 'Brandt', 'T', 'Hane\r'),
('821262143', '07151933', 'Nora', 'V', 'Hermiston\r'),
('821321892', '07221960', 'Ottis', 'Y', 'Stroman\r'),
('821323667', '05261949', 'Buck', 'M', 'Marvin\r'),
('821816666', '05281970', 'Clement', 'O', 'Luettgen\r'),
('822413161', '06081925', 'Ines', 'G', 'Mertz\r'),
('823100953', '08141939', 'Kieran', 'H', 'Kohler\r'),
('823102133', '03081921', 'Kamron', 'J', 'Dare\r'),
('823654151', '05161966', 'Lincoln', 'B', 'Hartmann\r'),
('824047837', '03211997', 'Ezequiel', 'G', 'Schaden\r'),
('824241866', '05261968', 'Audra', 'D', 'Stehr\r'),
('825021362', '08041944', 'Dejuan', 'I', 'Auer\r'),
('825637391', '05191923', 'Lonzo', 'W', 'Hyatt\r'),
('825641648', '03071942', 'Jamar', 'X', 'Oberbrunner\r'),
('826467483', '02031974', 'Theodora', 'G', 'Jerde\r'),
('827219622', '10071937', 'Tyrell', 'B', 'Simonis\r'),
('829925771', '07071991', 'Jeramie', 'F', 'Hauck\r'),
('830620258', '01241983', 'Georgiana', 'T', 'Grant\r'),
('831091280', '09061991', 'Charley', 'R', 'Kuvalis\r'),
('831111087', '05271996', 'Dean', 'S', 'Yost\r'),
('831320324', '05221952', 'Eduardo', 'R', 'Bergstrom\r'),
('831377563', '02211936', 'Pete', 'C', 'Cremin\r'),
('831477797', '03041970', 'Daniela', 'A', 'Runte\r'),
('831478809', '04281966', 'Brown', 'B', 'Bayer\r'),
('831991705', '06101988', 'Mattie', 'N', 'Stanton\r'),
('833283513', '10201974', 'Norwood', 'B', 'Haag\r'),
('833668360', '02151991', 'Rex', 'G', 'Reichert\r'),
('833862775', '07211964', 'Giovanna', 'D', 'Ruecker\r'),
('833871566', '04271951', 'Eva', 'X', 'Homenick\r'),
('834077676', '08101952', 'Raven', 'N', 'Little\r'),
('834770808', '02191940', 'Rylan', 'D', 'Jast\r'),
('835203927', '04091943', 'Haleigh', 'C', 'Hoppe\r'),
('835971706', '01201964', 'Cathryn', 'V', 'Schiller\r'),
('836301668', '03071977', 'Gregorio', 'N', 'Heaney\r'),
('836788508', '04021929', 'Finn', 'U', 'Schroeder\r'),
('837515806', '08041988', 'Domenick', 'R', 'Keeling\r'),
('838584772', '03141994', 'Garland', 'O', 'Walter\r'),
('838810456', '03111942', 'Charlotte', 'P', 'Schneider\r'),
('839168925', '09131945', 'Manuel', 'Q', 'Nikolaus\r'),
('840174488', '10281964', 'Korbin', 'B', 'Wolff\r'),
('840436878', '01101989', 'Alex', 'Q', 'Sporer\r'),
('841304175', '01161959', 'Oswaldo', 'J', 'Paucek\r'),
('841454214', '06131999', 'Aimee', 'D', 'Schultz\r'),
('841751400', '07281952', 'Charlene', 'V', 'Gorczany\r'),
('841935104', '05231957', 'Rickey', 'V', 'Blick\r'),
('842463807', '06141964', 'Zachariah', 'I', 'Pagac\r'),
('842509268', '10201921', 'Marley', 'P', 'West\r'),
('842801516', '11191941', 'Holly', 'M', 'Murazik\r'),
('843134838', '05081945', 'Roberto', 'J', 'Greenholt\r'),
('843413449', '04041972', 'Lysanne', 'I', 'Daugherty\r'),
('844046444', '08061937', 'Shanna', 'H', 'VonRueden\r'),
('844212814', '04251958', 'Yazmin', 'B', 'Johnston\r'),
('844446625', '02011952', 'Allen', 'Q', 'Hermann\r'),
('844467083', '04261959', 'Marie', 'W', 'Hammes\r'),
('844850390', '10171942', 'Frederic', 'B', 'Rogahn\r'),
('844934430', '09051937', 'Axel', 'K', 'Jacobi\r'),
('846250055', '06221960', 'Gustave', 'P', 'Olson\r'),
('846325260', '09271952', 'Josiane', 'N', 'Marks\r'),
('847028616', '10211965', 'Mckayla', 'R', 'Wintheiser\r'),
('847858764', '09061927', 'Brennon', 'J', 'Lind\r'),
('847966171', '09221930', 'Amos', 'V', 'Upton\r'),
('849572628', '09281927', 'Cleve', 'R', 'Crooks\r'),
('850485862', '03171943', 'Ezekiel', 'C', 'Murazik\r'),
('851491916', '10171923', 'Stephon', 'Y', 'Schimmel\r'),
('851751668', '10031932', 'Dashawn', 'R', 'Daniel\r'),
('851814132', '10101957', 'Leopold', 'U', 'Swaniawski\r'),
('852297825', '07191923', 'Florencio', 'E', 'Nikolaus\r'),
('852471060', '07041944', 'Cicero', 'C', 'Jones\r'),
('853288274', '08061931', 'Jeremie', 'N', 'Sanford\r'),
('853574752', '04041942', 'Keon', 'N', 'Torphy\r'),
('853605372', '09071981', 'George', 'N', 'Klocko\r'),
('853823070', '08271999', 'Clementina', 'T', 'Koelpin\r'),
('854510641', '09261993', 'Dudley', 'S', 'Bailey\r'),
('854551213', '04031976', 'Jameson', 'N', 'Gerhold\r'),
('856748431', '01261941', 'Alysha', 'S', 'Marvin\r'),
('856834383', '10071985', 'Abbie', 'L', 'Grady\r'),
('857723815', '08181925', 'Bernard', 'K', 'Ferry\r'),
('857943008', '07261929', 'Camron', 'V', 'Gislason\r'),
('858324360', '11041936', 'Gail', 'N', 'Jast\r'),
('858647523', '04081926', 'Izabella', 'P', 'Eichmann\r'),
('859227425', '11271948', 'Sidney', 'T', 'Vandervort\r'),
('860726812', '02151959', 'Vicky', 'V', 'Hamill\r'),
('861365283', '04021973', 'Serena', 'J', 'Hahn\r'),
('861455584', '05191926', 'Jan', 'R', 'Stokes\r'),
('861628041', '09131945', 'Heber', 'V', 'Morar\r'),
('861770127', '09261945', 'Jacquelyn', 'V', 'Goyette\r'),
('862226162', '03121971', 'Hassie', 'R', 'Wilkinson\r'),
('862308849', '07061967', 'Bessie', 'W', 'Lang\r'),
('864272206', '05211927', 'Vicky', 'B', 'Oberbrunner\r'),
('864745219', '09051969', 'Mack', 'Y', 'Carroll\r'),
('865427750', '06141974', 'Ressie', 'O', 'Bins\r'),
('865636346', '10051944', 'Nickolas', 'D', 'Gerhold\r'),
('865660221', '03221933', 'Laila', 'U', 'Conroy\r'),
('865661720', '03151947', 'Laisha', 'K', 'Eichmann\r'),
('865886084', '07061921', 'Vergie', 'Y', 'Olson\r'),
('866331878', '08091967', 'Edison', 'S', 'Buckridge\r'),
('866443189', '07121989', 'Ara', 'G', 'Schuster\r'),
('867315851', '02061950', 'Reuben', 'G', 'Lowe\r'),
('868362378', '10271924', 'Darren', 'Q', 'Tromp\r'),
('868754746', '05271928', 'Alice', 'Q', 'Muller\r'),
('869020058', '01111970', 'Antoinette', 'C', 'Quigley\r'),
('869470410', '01231951', 'Dudley', 'L', 'Wolff\r'),
('870276742', '04151924', 'Hope', 'C', 'Ziemann\r'),
('871106533', '11131986', 'Michale', 'N', 'Rosenbaum\r'),
('871125431', '09091927', 'King', 'U', 'Stanton\r'),
('871423870', '07241965', 'Tamia', 'N', 'Blick\r'),
('871700534', '08201944', 'Dandre', 'O', 'Kling\r'),
('871736880', '10261943', 'Elsa', 'Q', 'Bosco\r'),
('871825088', '08261970', 'Magnus', 'Y', 'Haley\r'),
('872096769', '08281926', 'Gladys', 'R', 'Nolan\r'),
('872700606', '09161958', 'Dallas', 'M', 'Lowe\r'),
('872748285', '10151982', 'Amy', 'U', 'Hegmann\r'),
('872932820', '05011954', 'Myra', 'X', 'Buckridge\r'),
('873402720', '03191951', 'Elisa', 'I', 'Altenwerth\r'),
('873872176', '09241969', 'Destany', 'G', 'Rosenbaum\r'),
('873889972', '07201961', 'Aletha', 'I', 'Heaney\r'),
('874284746', '08041982', 'Kenya', 'G', 'Cronin\r'),
('874646180', '11081931', 'Constantin', 'R', 'Mann\r'),
('874728941', '02171960', 'Evans', 'D', 'Weber\r'),
('874809743', '02071942', 'Michelle', 'Z', 'Adams\r'),
('875058400', '05221929', 'Garfield', 'T', 'Considine\r'),
('875186362', '05242000', 'Sammie', 'B', 'O\'Keefe\r'),
('876114671', '06201996', 'Justice', 'B', 'Hane\r'),
('877345537', '02041936', 'Mose', 'F', 'Heaney\r'),
('877523272', '05031948', 'Keeley', 'I', 'Beatty\r'),
('878318006', '05051927', 'Blaze', 'V', 'Flatley\r'),
('878372969', '05181990', 'Lysanne', 'Q', 'Boyle\r'),
('878551586', '08281938', 'Lulu', 'F', 'Lehner\r'),
('878750241', '07161982', 'Rosina', 'J', 'Schmidt\r'),
('878891887', '07131928', 'Eric', 'H', 'Klein\r'),
('879430664', '10181923', 'Constantin', 'U', 'Heller\r'),
('880521260', '04151961', 'Allie', 'R', 'Kihn\r'),
('880634484', '03091981', 'Thad', 'N', 'Yundt\r'),
('880676363', '02181996', 'Jorge', 'Q', 'Lind\r'),
('880790402', '03041985', 'Braulio', 'Z', 'Morar\r'),
('882487970', '08131935', 'Mariano', 'B', 'Schneider\r'),
('882530453', '07181957', 'Ian', 'V', 'Ullrich\r'),
('883543149', '10281992', 'Buford', 'G', 'Ullrich\r'),
('884886347', '01151989', 'Merlin', 'I', 'Nitzsche\r'),
('885550071', '04061959', 'Cornell', 'E', 'Welch\r'),
('885697081', '07031938', 'Kaleigh', 'Y', 'Wisoky\r'),
('886031032', '03191996', 'Aniya', 'E', 'Roberts\r'),
('886625076', '01281931', 'Jeremie', 'Q', 'Waters\r'),
('886701471', '02231943', 'Evert', 'V', 'Roob\r'),
('886831125', '05251970', 'Heather', 'W', 'DuBuque\r'),
('887412404', '07231934', 'Crystel', 'D', 'Satterfield\r'),
('887444748', '07141950', 'Ellie', 'R', 'Leannon\r'),
('887612827', '05101977', 'Wilma', 'M', 'Frami\r'),
('887886627', '02041944', 'Rodrick', 'D', 'Stroman\r'),
('888133633', '02141939', 'Antonio', 'N', 'King\r'),
('888192158', '09121929', 'Guido', 'D', 'Donnelly\r'),
('888276141', '08031982', 'Natalia', 'F', 'Stokes\r'),
('888292748', '07041938', 'Viva', 'A', 'Auer\r'),
('888301763', '06181965', 'Brook', 'B', 'Aufderhar\r'),
('888646667', '04121981', 'Emmie', 'W', 'Hahn\r'),
('889310976', '11221954', 'Blanca', 'N', 'Quitzon\r'),
('889878387', '11271944', 'Courtney', 'N', 'Murazik\r'),
('889953525', '11231954', 'Tiffany', 'L', 'Shanahan\r'),
('891126186', '06041928', 'Tyshawn', 'E', 'Stoltenberg\r'),
('891342063', '01241955', 'Eldridge', 'H', 'Witting\r'),
('892614251', '06111934', 'Lon', 'O', 'Gutmann\r'),
('892952815', '04281998', 'General', 'K', 'Schowalter\r'),
('894085804', '03091992', 'Albertha', 'O', 'Wyman\r'),
('897388801', '04241924', 'Charlie', 'A', 'Grant\r'),
('898684888', '06061960', 'Donavon', 'M', 'Zulauf\r'),
('898801323', '10231978', 'Elinore', 'E', 'Morissette\r'),
('900620428', '11231981', 'Ludwig', 'Y', 'Hettinger\r'),
('901033200', '06121971', 'Damian', 'Q', 'Legros\r'),
('901200543', '02161965', 'Marlee', 'J', 'Beatty\r'),
('901861081', '04241994', 'Terence', 'C', 'Brown\r'),
('904067533', '05181965', 'Douglas', 'D', 'Wuckert\r'),
('904167730', '06061984', 'Louie', 'H', 'Monahan\r'),
('904535134', '05121956', 'Marion', 'J', 'Leffler\r'),
('905403412', '07071992', 'Jamal', 'N', 'Stehr\r'),
('907611340', '03241982', 'Sherman', 'K', 'Volkman\r'),
('911332725', '02081974', 'Guillermo', 'I', 'Huel\r'),
('911576837', '04251999', 'Kiarra', 'I', 'Buckridge\r'),
('911740665', '08261991', 'Derick', 'R', 'Gerhold\r'),
('911800811', '09232000', 'Maude', 'J', 'Towne\r'),
('912709768', '07231925', 'Natalie', 'R', 'Renner\r'),
('912724716', '09111989', 'Demetrius', 'W', 'Adams\r'),
('916544482', '08231993', 'Darion', 'D', 'Kihn\r'),
('917107754', '01161973', 'Alessandro', 'P', 'Friesen\r'),
('917281615', '05031921', 'Quinten', 'Z', 'Kozey\r'),
('917552939', '05161945', 'Marcellus', 'M', 'Graham\r'),
('917828186', '10141971', 'Lorena', 'Y', 'Wisozk\r'),
('917973105', '04221965', 'Price', 'G', 'Wolf\r'),
('918546357', '05241983', 'Julian', 'D', 'Metz\r'),
('918684566', '08152000', 'Felipa', 'T', 'Hodkiewicz\r'),
('921401847', '05021984', 'Kitty', 'M', 'Botsford\r'),
('922415168', '04052000', 'Miller', 'Y', 'Klocko\r'),
('922610424', '03021980', 'Jovanny', 'P', 'Ondricka\r'),
('923499129', '03091959', 'Jett', 'S', 'Gleason\r'),
('924926526', '04181967', 'Dejon', 'U', 'Senger\r');
INSERT INTO `employee` (`SSN`, `dob`, `fname`, `minit`, `lname`) VALUES
('925746070', '02161959', 'Ollie', 'A', 'Crooks\r'),
('925814849', '07121952', 'Arthur', 'I', 'Jaskolski\r'),
('926074005', '08211981', 'Wilburn', 'D', 'Kunze\r'),
('926368482', '09061982', 'Juana', 'J', 'Kris\r'),
('926873645', '04251924', 'Mallie', 'I', 'Weber\r'),
('927417353', '04081944', 'Johnny', 'U', 'Kulas\r'),
('927737561', '03141959', 'Floyd', 'C', 'Swaniawski\r'),
('929016228', '08181948', 'Icie', 'H', 'Heathcote\r'),
('929302113', '02161938', 'Kyra', 'N', 'VonRueden\r'),
('931023549', '07231997', 'Armand', 'P', 'Terry\r'),
('933075470', '09231937', 'Cayla', 'K', 'Bradtke\r'),
('933211008', '02281970', 'Luther', 'A', 'Streich\r'),
('933416508', '10211977', 'Sincere', 'W', 'Ankunding\r'),
('933438559', '09281924', 'Raoul', 'W', 'Friesen\r'),
('933491854', '03241922', 'Salma', 'O', 'Wintheiser\r'),
('933607682', '10021958', 'Kendall', 'M', 'Eichmann\r'),
('934782535', '01071952', 'Katelin', 'G', 'Klein\r'),
('935615114', '06091935', 'Soledad', 'I', 'Beatty\r'),
('936448610', '08162000', 'Vito', 'U', 'Conn\r'),
('937078844', '09121996', 'Walker', 'A', 'Kunze\r'),
('937644663', '08141930', 'Asa', 'F', 'Schuppe\r'),
('938120583', '01081966', 'Turner', 'E', 'Quitzon\r'),
('938257991', '07261954', 'Kendrick', 'Y', 'O\'Conner\r'),
('938314201', '03261997', 'Melissa', 'P', 'Predovic\r'),
('938428701', '09101960', 'Lea', 'S', 'Kautzer\r'),
('938455626', '06091951', 'Brook', 'M', 'Yundt\r'),
('938808736', '07251959', 'Bianka', 'A', 'Welch\r'),
('940411386', '05221924', 'Oscar', 'K', 'Goyette\r'),
('940848676', '08021969', 'Frederick', 'T', 'Sauer\r'),
('941063523', '06271939', 'Martina', 'K', 'Smitham\r'),
('941905113', '04171996', 'Zachary', 'C', 'Gerhold\r'),
('943147084', '04211941', 'Koby', 'R', 'Krajcik\r'),
('944085751', '07271927', 'Nicolette', 'E', 'Harris\r'),
('944206136', '05241940', 'Verlie', 'L', 'Nikolaus\r'),
('944287245', '07171993', 'Paris', 'S', 'Conn\r'),
('944784379', '02101944', 'Isabel', 'W', 'Mills\r'),
('945051776', '07221975', 'Colten', 'M', 'Kuphal\r'),
('945586681', '05241949', 'Tyreek', 'V', 'Kohler\r'),
('945872568', '04281945', 'Dedric', 'R', 'Maggio\r'),
('948759374', '06071964', 'Merlin', 'N', 'Armstrong\r'),
('948984585', '10241944', 'Jaron', 'L', 'Gibson\r'),
('950643358', '10011935', 'Nichole', 'X', 'Langworth\r'),
('951206387', '07091999', 'Rhea', 'K', 'Runte\r'),
('951424181', '10251933', 'Dereck', 'T', 'Heaney\r'),
('951875750', '05151942', 'Carey', 'W', 'Schneider\r'),
('953048175', '09091928', 'Cyrus', 'T', 'Predovic\r'),
('954872053', '02071977', 'Jamey', 'T', 'Schuppe\r'),
('955775971', '01031921', 'Dusty', 'D', 'Brakus\r'),
('956141376', '05261921', 'Trinity', 'I', 'Gorczany\r'),
('958112587', '02011987', 'Lucienne', 'V', 'Schoen\r'),
('958115406', '10121977', 'Lucy', 'C', 'Bogan\r'),
('958826949', '09091943', 'Beaulah', 'E', 'Dickens\r'),
('959667203', '10061960', 'Amina', 'X', 'Balistreri\r'),
('960235906', '02211938', 'Muhammad', 'D', 'Kunze\r'),
('960303645', '10141983', 'Elise', 'E', 'Hirthe\r'),
('961170368', '10281973', 'Jaclyn', 'C', 'Jenkins\r'),
('962387742', '08081991', 'Xzavier', 'I', 'Miller\r'),
('962634849', '01251975', 'Unique', 'P', 'Bradtke\r'),
('962861671', '11071928', 'Robbie', 'L', 'Cruickshank\r'),
('964464097', '01221935', 'Chaim', 'C', 'Smitham\r'),
('964492210', '04101967', 'Charity', 'E', 'Beier\r'),
('965368113', '11021964', 'Margot', 'B', 'Grady\r'),
('965477555', '05121972', 'Owen', 'K', 'Powlowski\r'),
('965723776', '11201971', 'Ona', 'D', 'Bogan\r'),
('965848080', '06201927', 'Cleo', 'O', 'Schimmel\r'),
('967936145', '06101971', 'Jarvis', 'C', 'Russel\r'),
('968257786', '06151983', 'Concepcion', 'R', 'Heaney\r'),
('968324228', '10172001', 'Derek', 'T', 'Bayer\r'),
('968623632', '10201924', 'Barton', 'S', 'Hane\r'),
('970039601', '03131998', 'Johnathan', 'I', 'Lebsack\r'),
('971462803', '09231956', 'Jovany', 'K', 'Schmitt\r'),
('971509369', '08101999', 'Robert', 'X', 'Schmidt\r'),
('972032282', '03261954', 'June', 'Y', 'Lockman\r'),
('972385460', '02061928', 'Jaylen', 'T', 'Gutkowski\r'),
('972853153', '10251952', 'Jaquelin', 'S', 'Olson\r'),
('975756388', '03261977', 'Kasandra', 'J', 'Doyle\r'),
('978108063', '05151979', 'Cory', 'V', 'Daugherty\r'),
('979618014', '04231993', 'Lavina', 'W', 'Gottlieb\r'),
('980571741', '03261981', 'Jack', 'Y', 'Hamill\r'),
('981105750', '07271982', 'Bulah', 'B', 'Schulist\r'),
('982061776', '02101982', 'Jayda', 'D', 'Tremblay\r'),
('983562777', '02271976', 'Mable', 'B', 'Wisoky\r'),
('984203928', '09201964', 'Price', 'A', 'Murray\r'),
('985053648', '04191967', 'Gerda', 'T', 'Cartwright\r'),
('985693411', '06201974', 'Stone', 'K', 'Schmeler\r'),
('986246232', '11151972', 'Marjolaine', 'H', 'Gibson\r'),
('986280193', '02121965', 'Tyra', 'W', 'Klein\r'),
('986281261', '05091939', 'Cristopher', 'K', 'Kuhic\r'),
('986395443', '05201955', 'Andy', 'Y', 'Feeney\r'),
('987432204', '02021966', 'Carroll', 'D', 'Roberts\r'),
('987824112', '06251955', 'Jarret', 'G', 'Lowe\r'),
('989407200', '04031947', 'Kayleigh', 'Q', 'Wintheiser\r'),
('990012141', '02201951', 'Turner', 'K', 'Spencer\r'),
('991568571', '08121976', 'Nasir', 'V', 'Herman\r'),
('991685186', '07251997', 'Al', 'F', 'Koepp\r'),
('995585536', '03061947', 'Edyth', 'U', 'Medhurst\r'),
('998153475', '11251962', 'Korey', 'V', 'Hodkiewicz\r');

-- --------------------------------------------------------

--
-- Stand-in structure for view `faculty`
-- (See below for the actual view)
--
CREATE TABLE `faculty` (
`SSN` decimal(9,0)
,`fname` varchar(20)
,`lname` varchar(20)
);

-- --------------------------------------------------------

--
-- Table structure for table `hourlyemp`
--

CREATE TABLE `hourlyemp` (
  `SSN` decimal(9,0) DEFAULT NULL,
  `hourPay` decimal(4,2) DEFAULT NULL CHECK (`hourPay` >= 7.50)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hourlyemp`
--

INSERT INTO `hourlyemp` (`SSN`, `hourPay`) VALUES
('233762212', '21.00'),
('113764712', '26.00');

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `SSN` decimal(9,0) DEFAULT NULL,
  `salary` int(11) DEFAULT NULL,
  `OfficeNum` decimal(10,0) DEFAULT NULL,
  `StartDate` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`SSN`, `salary`, `OfficeNum`, `StartDate`) VALUES
('492769122', 91300, '381', '01282001');

-- --------------------------------------------------------

--
-- Table structure for table `manages`
--

CREATE TABLE `manages` (
  `deptNum` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `manages`
--

INSERT INTO `manages` (`deptNum`) VALUES
(51);

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `projName` varchar(20) NOT NULL,
  `projNum` decimal(12,0) NOT NULL,
  `projDesc` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`projName`, `projNum`, `projDesc`) VALUES
('contra', '4583', 'shoot’em up'),
('mario', '7777', '2D sidescroller, adventure'),
('metroid', '2577', '2D sidescroller'),
('zelda', '4582', '3D exploration');

-- --------------------------------------------------------

--
-- Table structure for table `salariedemp`
--

CREATE TABLE `salariedemp` (
  `SSN` decimal(9,0) DEFAULT NULL,
  `salary` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `salariedemp`
--

INSERT INTO `salariedemp` (`SSN`, `salary`) VALUES
('492769122', 91300),
('777782212', 90000);

-- --------------------------------------------------------

--
-- Table structure for table `works`
--

CREATE TABLE `works` (
  `SSN` decimal(9,0) NOT NULL,
  `deptNum` int(11) NOT NULL,
  `projName` varchar(20) NOT NULL,
  `projNum` decimal(12,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `works`
--

INSERT INTO `works` (`SSN`, `deptNum`, `projName`, `projNum`) VALUES
('113764712', 51, 'zelda', '4582'),
('233762212', 51, 'metroid', '2577'),
('492769122', 61, 'contra', '4583'),
('777782212', 61, 'mario', '7777');

-- --------------------------------------------------------

--
-- Structure for view `faculty`
--
DROP TABLE IF EXISTS `faculty`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `faculty`  AS SELECT `employee`.`SSN` AS `SSN`, `employee`.`fname` AS `fname`, `employee`.`lname` AS `lname` FROM `employee``employee`  ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`deptNum`);

--
-- Indexes for table `dependent`
--
ALTER TABLE `dependent`
  ADD KEY `SSN` (`SSN`);

--
-- Indexes for table `deptlocation`
--
ALTER TABLE `deptlocation`
  ADD PRIMARY KEY (`deptNum`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`SSN`),
  ADD KEY `name_index` (`lname`);

--
-- Indexes for table `hourlyemp`
--
ALTER TABLE `hourlyemp`
  ADD KEY `SSN` (`SSN`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD KEY `SSN` (`SSN`);

--
-- Indexes for table `manages`
--
ALTER TABLE `manages`
  ADD PRIMARY KEY (`deptNum`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`projName`,`projNum`);

--
-- Indexes for table `salariedemp`
--
ALTER TABLE `salariedemp`
  ADD KEY `SSN` (`SSN`);

--
-- Indexes for table `works`
--
ALTER TABLE `works`
  ADD PRIMARY KEY (`SSN`,`deptNum`,`projName`,`projNum`),
  ADD UNIQUE KEY `projNum` (`projNum`),
  ADD KEY `deptNum` (`deptNum`),
  ADD KEY `projName` (`projName`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dependent`
--
ALTER TABLE `dependent`
  ADD CONSTRAINT `dependent_ibfk_1` FOREIGN KEY (`SSN`) REFERENCES `employee` (`SSN`);

--
-- Constraints for table `deptlocation`
--
ALTER TABLE `deptlocation`
  ADD CONSTRAINT `deptlocation_ibfk_1` FOREIGN KEY (`deptNum`) REFERENCES `department` (`deptNum`);

--
-- Constraints for table `hourlyemp`
--
ALTER TABLE `hourlyemp`
  ADD CONSTRAINT `hourlyemp_ibfk_1` FOREIGN KEY (`SSN`) REFERENCES `employee` (`SSN`);

--
-- Constraints for table `manager`
--
ALTER TABLE `manager`
  ADD CONSTRAINT `manager_ibfk_1` FOREIGN KEY (`SSN`) REFERENCES `employee` (`SSN`);

--
-- Constraints for table `manages`
--
ALTER TABLE `manages`
  ADD CONSTRAINT `manages_ibfk_1` FOREIGN KEY (`deptNum`) REFERENCES `department` (`deptNum`);

--
-- Constraints for table `salariedemp`
--
ALTER TABLE `salariedemp`
  ADD CONSTRAINT `salariedemp_ibfk_1` FOREIGN KEY (`SSN`) REFERENCES `employee` (`SSN`);

--
-- Constraints for table `works`
--
ALTER TABLE `works`
  ADD CONSTRAINT `works_ibfk_1` FOREIGN KEY (`deptNum`) REFERENCES `department` (`deptNum`),
  ADD CONSTRAINT `works_ibfk_2` FOREIGN KEY (`projName`) REFERENCES `project` (`projName`),
  ADD CONSTRAINT `works_ibfk_3` FOREIGN KEY (`SSN`) REFERENCES `employee` (`SSN`);
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
