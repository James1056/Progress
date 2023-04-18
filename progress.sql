-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 18, 2023 at 05:38 AM
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
(1, '2023-04-17 23:34:42', 'Welcome to our gym! We\'re thrilled that you\'ve decided to become a member and take control of your fitness journey. We believe that exercise is the key to a happy and healthy life, and we\'re committed to helping you reach your goals in a safe and supportive environment.\r\n\r\nAs a member of our gym, you\'ll have access to a wide range of equipment and facilities, including state-of-the-art cardio machines, free weights, and resistance training equipment. We also offer a variety of group fitness classes led by certified instructors, including yoga, Pilates, cycling, and more.\r\n\r\nBut our gym is more than just a place to work out. We\'re a community of like-minded individuals who are passionate about health and fitness. Whether you\'re a seasoned athlete or just starting out, you\'ll find that our members and staff are friendly, supportive, and eager to help you achieve your goals.\r\n\r\nSo, whether you\'re looking to lose weight, build muscle, or simply improve your overall health, we\'re here to help. We look forward to seeing you at the gym soon!', 'https://picsum.photos/800/200', 'Welcome to ____ Gym'),
(2, '2023-04-17 23:18:55', 'Our gym facility is designed to provide our members with a top-notch fitness experience. We offer a spacious and well-equipped workout area, complete with a variety of cardio machines, strength training equipment, and free weights. Our machines are state-of-the-art and regularly maintained to ensure that they\'re in peak condition for our members to use.\r\n\r\nIn addition to our workout area, we also have a designated space for group fitness classes. Our group fitness classes are led by certified instructors and include a variety of options such as yoga, Pilates, cycling, and more. These classes provide a fun and supportive environment for our members to work out in a group setting and help to foster a sense of community within our gym.\r\n\r\nWe understand that hygiene is of utmost importance, especially during these times. That\'s why we have strict cleaning protocols in place to ensure that all of our equipment and facilities are thoroughly sanitized after each use. Our staff also conduct routine cleaning throughout the day to maintain a clean and safe environment.\r\n\r\nWe also offer additional amenities such as locker rooms, showers, and towel service to make your gym experience as convenient and comfortable as possible.\r\n\r\nOverall, our gym facility is designed to provide our members with everything they need to achieve their fitness goals in a safe and supportive environment. We\'re committed to helping our members succeed, and we\'re proud to be a part of their fitness journeys.', 'https://picsum.photos/200', 'About Our Facility'),
(3, '2023-04-17 13:31:29', 'adsjfsajfsajf', 'https://picsum.photos/200', 'ldskjfaljfsaf'),
(4, '2023-04-17 13:37:27', 'ajslfdkjsaf;lkjdksajflksajf', 'https://picsum.photos/200', 'aifdjdalkjfalkfjsa;fa'),
(5, '2023-04-17 16:33:06', 'dlfjafjafjafjalkjfsa;lkadslfjsafjafajflksfjlksafjdsjakfjsajf;lksanfdjsa;lkjfakadslfjsafjafajflksfjlksafjdsjakfjsajf;lksanfdjsa;lkjfakadslfjsafjafajflksfjlksafjdsjakfjsajf;lksanfdjsa;lkjfakadslfjsafjafajflksfjlksafjdsjakfjsajf;lksanfdjsa;lkjfak', 'https://loremipsum.io/generator/?n=5&t=p', 'dakjfa;fj');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gym`
--
ALTER TABLE `gym`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gym`
--
ALTER TABLE `gym`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
