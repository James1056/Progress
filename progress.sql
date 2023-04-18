-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 18, 2023 at 07:35 PM
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
-- Database: `progress`
--

-- --------------------------------------------------------

--
-- Table structure for table `ad`
--

CREATE TABLE `ad` (
  `ad_id` int(11) NOT NULL,
  `trainer_id` int(11) NOT NULL DEFAULT 4,
  `fitness_level` int(11) NOT NULL,
  `text` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ad`
--

INSERT INTO `ad` (`ad_id`, `trainer_id`, `fitness_level`, `text`) VALUES
(1, 4, 1, 'Hey Newbies, Lorem ipsum dolor sit amet consectetur, adipisicing elit. Earum, neque, quae veniam illo ab architecto corporis tempora libero dignissimos nulla vitae quam itaque id doloremque inventore modi, error esse suscipit! Lorem ipsum dolor sit amet consectetur, adipisicing elit. Earum, neque, quae veniam illo ab architecto corporis tempora libero dignissimos nulla vitae quam itaque id doloremque inventore modi, error esse suscipit! Lorem ipsum dolor sit amet consectetur, adipisicing elit. Earum, neque, quae veniam illo ab architecto corporis tempora libero dignissimos nulla vitae quam itaque id doloremque inventore modi, error esse suscipit! Lorem ipsum dolor sit amet consectetur, adipisicing'),
(2, 4, 2, 'Yo Gym Novices, Lorem ipsum dolor sit amet consectetur, adipisicing elit. Earum, neque, quae veniam illo ab architecto corporis tempora libero dignissimos nulla vitae quam itaque id doloremque inventore modi, error esse suscipit!Lorem ipsum dolor sit amet consectetur, adipisicing elit. Earum, neque, quae veniam illo ab architecto corporis tempora libero dignissimos nulla vitae quam itaque id doloremque inventore modi, error esse suscipit! Lorem ipsum dolor sit amet consectetur, adipisicing elit. Earum, neque, quae veniam illo ab architecto corporis tempora libero dignissimos nulla vitae quam itaque id doloremque inventore modi, error esse suscipit! Lorem ipsum dolor sit amet consectetur, adipisicing elit. Earum, neque, quae veniam illo ab architecto corporis tempora libero dignissimos nulla vitae quam itaque id doloremque inventore modi, error esse suscipit! Lorem ipsum dolor sit amet consectetur, adipisicing elit. Earum, neque, quae veniam illo ab architecto corporis tempora libero di'),
(3, 4, 3, 'What Up Gym Vets, Lorem ipsum dolor sit amet consectetur, adipisicing elit. Earum, neque, quae veniam illo ab architecto corporis tempora libero dignissimos nulla vitae quam itaque id doloremque inventore modi, error esse suscipit! Lorem ipsum dolor sit amet consectetur, adipisicing elit. Earum, neque, quae veniam illo ab architecto corporis tempora libero dignissimos nulla vitae quam itaque id doloremque inventore modi, error esse suscipit! Lorem ipsum dolor sit amet consectetur, adipisicing elit. Earum, neque, quae veniam illo ab architecto corporis tempora libero dignissimos nulla vitae quam itaque id doloremque inventore modi, error esse suscipit! Lorem ipsum dolor sit amet consectetur, adipisicing elit. Earum, neque, quae veniam illo ab architecto corporis tempora libero dignissimos nulla vitae quam itaque id doloremque inventore modi, error esse suscipit! Lorem ipsum dolor sit amet consectetur, adipisicing elit. Earum, neque, quae veniam illo ab architecto corporis tempora libero');

-- --------------------------------------------------------

--
-- Table structure for table `gym`
--

CREATE TABLE `gym` (
  `id` bigint(20) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(5000) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gym`
--

INSERT INTO `gym` (`id`, `date`, `description`, `image`, `title`) VALUES
(1, '2023-04-17 16:33:38', 'ldfkjalfjaf;ajf;lkajflkafajfajfksaadslfjsafjafajflksfjlksafjdsjakfjsajf;lksanfdjsa;lkjfakadslfjsafjafajflksfjlksafjdsjakfjsajf;lksanfdjsa;lkjfakadslfjsafjafajflksfjlksafjdsjakfjsajf;lksanfdjsa;lkjfak', 'https://picsum.photos/200', 'Welcome to ____ Gym'),
(2, '2023-04-17 13:31:14', 'lkdjfjdafjafdsajfkjsafjsaljf;dsajflsfjd;lsaf', 'https://picsum.photos/200', 'About Our Facility'),
(3, '2023-04-17 13:31:29', 'adsjfsajfsajf', 'https://picsum.photos/200', 'ldskjfaljfsaf'),
(4, '2023-04-17 13:37:27', 'ajslfdkjsaf;lkjdksajflksajf', 'https://picsum.photos/200', 'aifdjdalkjfalkfjsa;fa'),
(5, '2023-04-17 16:33:06', 'dlfjafjafjafjalkjfsa;lkadslfjsafjafajflksfjlksafjdsjakfjsajf;lksanfdjsa;lkjfakadslfjsafjafajflksfjlksafjdsjakfjsajf;lksanfdjsa;lkjfakadslfjsafjafajflksfjlksafjdsjakfjsajf;lksanfdjsa;lkjfakadslfjsafjafajflksfjlksafjdsjakfjsajf;lksanfdjsa;lkjfak', 'https://picsum.photos/200', 'dakjfa;fj');

-- --------------------------------------------------------

--
-- Table structure for table `meal`
--

CREATE TABLE `meal` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `text` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `meal`
--

INSERT INTO `meal` (`id`, `user_id`, `text`) VALUES
(1, 3, 'During the week I consume around 3500 calories as I am on a bulk.\r\n\r\nEach day I shall start with a bowl of porridge along with a high calorie protien shake, then I have a snake of a peanut butter sandwich before lunch. For lunch I shall have chicken pasta along with two bananas. After I have worked out I will have a post workout meal of');

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
  `response_user_id` int(11) NOT NULL,
  `text` varchar(500) NOT NULL,
  `requestid` bigint(20) NOT NULL,
  `resposne_user_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `response_user_id`, `text`, `requestid`, `resposne_user_id`, `user_id`) VALUES
(2, 3, 'I love upper body dude, I can definitely help you who that ', 1, 0, 0),
(3, 3, 'I go to the gym Monday Wednesday Friday let me know if you go and I can lend a hand', 2, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `partner`
--

CREATE TABLE `partner` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `text` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `partner`
--

INSERT INTO `partner` (`id`, `user_id`, `text`) VALUES
(1, 1, 'Hey guys I\'m new to the gym and am looking for a person to help teach me what I need to do, I want to focus on upper body, thank you.'),
(2, 2, 'I\'ve been going to the gym for a while now and would really want to work out with a partner.');

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
(16, 'My lower back hurtrs during squats, does anyone know why? any tips?', 1),
(17, 'my back is disjointed,, what i do', 2),
(18, 'Can someone help me', 3),
(20, 'duasduiadsfuioafsduifds', 4);

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

--
-- Dumping data for table `reply`
--

INSERT INTO `reply` (`id`, `question_id`, `text`, `user_id`) VALUES
(1, 16, 'dsfasdfasdfad', 4),
(2, 16, 'asdfsdafsdaf', 4);

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
(14, 1, 'Im gonna teach you how. follow this workout', 'Bench 400'),
(15, 2, 'first this and that then this, then that', 'Squat 500'),
(16, 3, 'eat food, lift weight', 'Get massive');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(40) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(6) NOT NULL,
  `fitness_level` int(11) NOT NULL,
  `password` varchar(255) NOT NULL,
  `trainer_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `first_name`, `last_name`, `dob`, `gender`, `fitness_level`, `password`, `trainer_id`) VALUES
(1, 'sam03lift', 'Samantha ', 'Bailey', '2004-02-11', 'F', 2, '$2a$12$A7BXulA85CwrkWv2Whhx5.yylIQRef5t3rQD64dpGxI1zwViWscLS', NULL),
(2, 'coop123', 'Gerald ', 'Cooper', '2003-01-06', 'M', 1, '$2a$12$/8fIKBjjPsq2AxIP1pHMe.GumdAoxwQo9KqRGGGEbxGawmxp.tCu2', 4),
(3, '245Shar245', 'Sharon', 'Harold', '1996-07-12', 'F', 3, '$2a$12$95wuNma5wq8MLb86ONrQmePZHpNr2zRcbQZ4FZDm0rN7Qn2.ln2ey', 4),
(4, 'AKing927', 'Adam', 'King', '1999-05-01', 'M', 4, '$2a$12$8Bo6EZTsYyPYTxTxLzz.SuGJlfHpCnGjXu6ixUEGPO/o1hPkp/6Z2', NULL),
(7, 'JimO777', 'Jim', 'O\'Nier', '1983-04-03', 'M', 5, '$2a$12$7ddYJxLmjzVF6wMbWqU32.bq0k.BzPcZ04ocCZNwVayg3TAj41PNi', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `id` int(11) NOT NULL,
  `trainer_id` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `fitness_level` int(11) NOT NULL,
  `youtube_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`id`, `trainer_id`, `description`, `fitness_level`, `youtube_id`) VALUES
(4, 4, 'It\'s Keyboard Cat!', 3, 'J---aiyznGQ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ad`
--
ALTER TABLE `ad`
  ADD PRIMARY KEY (`ad_id`),
  ADD KEY `FK20wggw2gm6cb7d11c9hpxsiru` (`trainer_id`);

--
-- Indexes for table `gym`
--
ALTER TABLE `gym`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meal`
--
ALTER TABLE `meal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partner`
--
ALTER TABLE `partner`
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
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `TRAINER_FK` (`trainer_id`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ad`
--
ALTER TABLE `ad`
  MODIFY `ad_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `gym`
--
ALTER TABLE `gym`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `meal`
--
ALTER TABLE `meal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `partner`
--
ALTER TABLE `partner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `reply`
--
ALTER TABLE `reply`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `split`
--
ALTER TABLE `split`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ad`
--
ALTER TABLE `ad`
  ADD CONSTRAINT `FK20wggw2gm6cb7d11c9hpxsiru` FOREIGN KEY (`trainer_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `TRAINER_FK` FOREIGN KEY (`trainer_id`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
