-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 24, 2021 at 01:48 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `weather_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `weather_data`
--

CREATE TABLE `weather_data` (
  `weather_id` int(11) NOT NULL,
  `weather_status` varchar(20) NOT NULL,
  `description` varchar(50) NOT NULL,
  `temperature` varchar(20) NOT NULL,
  `feel_like` varchar(20) NOT NULL,
  `humidity` int(11) NOT NULL,
  `pressure` int(11) NOT NULL,
  `city` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `weather_data`
--

INSERT INTO `weather_data` (`weather_id`, `weather_status`, `description`, `temperature`, `feel_like`, `humidity`, `pressure`, `city`, `created_at`) VALUES
(1, 'Clouds', 'scattered clouds', '29.8', '30.91', 51, 1014, 'Bangalore', '2021-10-24 10:52:22'),
(2, 'Clouds', 'scattered clouds', '29.8', '30.91', 51, 1014, 'Bangalore', '2021-10-24 11:07:22'),
(3, 'Mist', 'mist', '28.99', '34.5', 79, 1010, 'Chennai', '2021-10-24 11:08:07'),
(4, 'Clouds', 'broken clouds', '19.07', '19.36', 89, 1013, 'ooty', '2021-10-24 11:09:58'),
(5, 'Clouds', 'scattered clouds', '28.8', '30.42', 58, 1014, 'Bangalore', '2021-10-24 11:16:44'),
(6, 'Mist', 'mist', '28.99', '34.5', 79, 1010, 'chennai', '2021-10-24 11:18:49'),
(7, 'Mist', 'mist', '28.99', '34.5', 79, 1010, 'chennai', '2021-10-24 11:18:55'),
(8, 'Clouds', 'few clouds', '30.99', '33.65', 55, 1011, 'mumbai', '2021-10-24 11:19:16'),
(9, 'Mist', 'mist', '28.99', '34.5', 79, 1010, 'chennai', '2021-10-24 11:19:23'),
(10, 'Clouds', 'few clouds', '30.99', '33.65', 55, 1011, 'mumbai', '2021-10-24 11:19:38'),
(11, 'Clouds', 'scattered clouds', '28.8', '30.42', 58, 1014, 'Bangalore', '2021-10-24 11:28:32'),
(12, 'Clouds', 'scattered clouds', '28.8', '30.42', 58, 1014, 'Bangalore', '2021-10-24 11:28:50'),
(13, 'Mist', 'mist', '28.99', '34.5', 79, 1010, 'chennai', '2021-10-24 11:29:12'),
(14, 'Clouds', 'scattered clouds', '28.8', '30.42', 58, 1014, 'Bangalore', '2021-10-24 11:29:21'),
(15, 'Mist', 'mist', '28.99', '34.5', 79, 1010, 'chennai', '2021-10-24 11:30:34'),
(16, 'Mist', 'mist', '28.99', '34.5', 79, 1010, 'chennai', '2021-10-24 11:30:36'),
(17, 'Mist', 'mist', '28.99', '34.5', 79, 1010, 'chennai', '2021-10-24 11:30:39'),
(18, 'Clouds', 'scattered clouds', '28.8', '30.42', 58, 1014, 'Bangalore', '2021-10-24 11:30:46'),
(19, 'Clouds', 'scattered clouds', '28.8', '30.42', 58, 1014, 'Bangalore', '2021-10-24 11:30:49'),
(20, 'Clouds', 'scattered clouds', '28.8', '30.42', 58, 1014, 'Bangalore', '2021-10-24 11:31:29'),
(21, 'Mist', 'mist', '28.99', '34.5', 79, 1010, 'chennai', '2021-10-24 11:31:38'),
(22, 'Clear', 'clear sky', '7.76', '7.76', 80, 1021, 'new york', '2021-10-24 11:31:51'),
(23, 'Clear', 'clear sky', '7.76', '7.76', 80, 1021, 'new york', '2021-10-24 11:32:00'),
(24, 'Clouds', 'broken clouds', '27.38', '30.15', 76, 1010, 'Erode', '2021-10-24 11:32:06'),
(25, 'Clouds', 'broken clouds', '19.07', '19.36', 89, 1013, 'OOty', '2021-10-24 11:38:50'),
(26, 'Clouds', 'broken clouds', '19.07', '19.36', 89, 1013, 'OOty', '2021-10-24 11:38:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `weather_data`
--
ALTER TABLE `weather_data`
  ADD PRIMARY KEY (`weather_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `weather_data`
--
ALTER TABLE `weather_data`
  MODIFY `weather_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
