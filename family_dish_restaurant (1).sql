-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 19, 2024 at 09:20 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `family_dish_restaurant`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `booking_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `guests` int(11) NOT NULL CHECK (`guests` between 1 and 12),
  `special_requests` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`booking_id`, `name`, `email`, `phone`, `date`, `time`, `guests`, `special_requests`) VALUES
(3, 'waruma', 'asd@gmail.com', '0710631468', '2024-08-08', '12:22:00', 5, 'none'),
(4, 'Snow Man', 'warun@gmail.com', '0710631468', '2024-08-16', '13:30:00', 5, 'None'),
(5, 'swe', 'asd@gmail.com', '0710631468', '2024-08-20', '02:03:00', 12, 'dfre'),
(10, 'Dileka', 'warun@gmail.com', '0710631468', '2024-08-21', '22:01:00', 12, 'no'),
(11, 'jjfg', 'warun@gmail.com', '0710631468', '2024-08-13', '14:50:00', 10, 'vb'),
(12, 'Hirusha', 'waruna@gmail.com', '0710631468', '2024-08-14', '15:43:00', 10, 'NO'),
(13, 'waruns', 'warun@gmail.com', '0710631468', '2024-08-15', '13:00:00', 12, 'Nothing'),
(14, 'Snow Man', 'asd@gmail.com', '0710631468', '2024-08-15', '15:52:00', 2, ''),
(15, 'Snow Man', 'asd@gmail.com', '0710631468', '2024-08-15', '15:52:00', 2, ''),
(16, 'Snow Man', 'warun@gmail.com', '0710631468', '2024-08-15', '15:54:00', 2, ''),
(17, 'Snow Man', 'warun@gmail.com', '0710631468', '2024-08-15', '15:50:00', 2, ''),
(18, 'WHR Wallpaper', 'warun@gmail.com', '0710631468', '2024-08-21', '12:50:00', 2, ''),
(19, 'WHR Wallpaper', 'warun@gmail.com', '0710631468', '2024-08-23', '11:52:00', 10, ''),
(20, 'Waruna Hashan', 'warun@gmail.com', '0710631468', '2024-08-16', '15:58:00', 10, 'No'),
(21, 'Dileka', 'asd@gmail.com', '07106314688', '2024-08-24', '12:23:00', 10, 'no'),
(22, 'WHR Wallpaper', 'warun@gmail.com', '22131654', '2024-08-16', '12:24:00', 10, ''),
(23, 'WHR Wallpaper', 'warun@gmail.com', '071063146', '2024-08-16', '12:29:00', 10, 'Drinks'),
(24, 'WHR Wallpaper', 'warun@gmail.com', '0710631468', '2024-08-29', '19:28:00', 10, '');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `message_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`message_id`, `name`, `email`, `phone`, `message`) VALUES
(2, 'Snow Man', 'warun@gmail.com', '0710631468', 'good'),
(3, 'Snow Man', 'warun@gmail.com', '0710631468', 'good'),
(4, 'Snow Man', 'warun@gmail.com', '0710631468', 'good'),
(5, 'WHR Wallpaper', 'dh@gmail.com', '0710631468', 'xdfd'),
(6, 'Snow Man', 'warun@gmail.com', '0710631468', 'dgdhsh'),
(7, 'Hirusha', 'gfhf@gmail.com', '0710631468', 'book'),
(8, 'WHR Wallpaper', 'warun@gmail.com', '071063146', 'ffj'),
(9, 'WHR Wallpaper', 'warun@gmail.com', '071063146', 'jl');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `review_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `rating` int(11) NOT NULL CHECK (`rating` between 1 and 5),
  `comments` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`review_id`, `name`, `email`, `rating`, `comments`) VALUES
(3, 'Snow Man', 'warun@gmail.com', 2, 'dfdsg'),
(4, 'WHR Wallpaper', 'gfh@gmail.com', 1, 'hfhfh');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`booking_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`review_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
