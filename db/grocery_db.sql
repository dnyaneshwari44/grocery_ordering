-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2024 at 08:54 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `grocery_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_list`
--

CREATE TABLE `admin_list` (
  `admin_id` int(11) NOT NULL,
  `fullname` varchar(20) DEFAULT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_list`
--

INSERT INTO `admin_list` (`admin_id`, `fullname`, `username`, `password`, `status`, `date_created`) VALUES
(1, 'Shivraj', 'admin', '123', 1, '2021-10-24 21:28:37'),
(3, 'a', 'root', '123', 1, '2024-10-08 19:12:50'),
(4, 'kandarp_patil', 'data', '81dc9bdb52d04dc20036dbd8313ed055', 1, '2024-10-10 12:08:02');

-- --------------------------------------------------------

--
-- Table structure for table `cart_list`
--

CREATE TABLE `cart_list` (
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` float NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart_list`
--

INSERT INTO `cart_list` (`customer_id`, `product_id`, `quantity`, `date_created`) VALUES
(5, 13, 8, '2024-11-15 07:02:55'),
(5, 12, 1, '2024-11-15 07:15:32'),
(5, 15, 50, '2024-11-15 07:43:02');

-- --------------------------------------------------------

--
-- Table structure for table `category_list`
--

CREATE TABLE `category_list` (
  `category_id` int(11) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category_list`
--

INSERT INTO `category_list` (`category_id`, `name`, `status`, `date_created`) VALUES
(1, 'Grains', 1, '2021-10-24 21:30:38'),
(2, 'Dairy', 1, '2021-10-24 21:30:48'),
(3, 'Fruits', 1, '2021-10-24 21:30:53'),
(4, 'Vegetables', 1, '2021-10-24 21:31:02'),
(5, 'Meat', 1, '2021-10-24 21:31:08'),
(6, 'Beverages', 1, '2021-10-24 21:31:14'),
(7, 'Snacks', 1, '2021-10-24 21:31:23'),
(8, 'Condiments', 1, '2021-10-24 21:31:32'),
(9, 'Bakery1', 1, '2021-10-24 21:31:44'),
(10, 'chappal', 1, '2021-10-24 21:31:49'),
(11, 'sample ', 1, '2021-10-24 21:32:15'),
(13, 'a', 1, '2024-10-08 18:57:35');

-- --------------------------------------------------------

--
-- Table structure for table `customer_list`
--

CREATE TABLE `customer_list` (
  `customer_id` int(11) NOT NULL,
  `fullname` varchar(20) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `email` text NOT NULL,
  `contact` text NOT NULL,
  `address` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `date_updated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_list`
--

INSERT INTO `customer_list` (`customer_id`, `fullname`, `username`, `password`, `email`, `contact`, `address`, `status`, `date_created`, `date_updated`) VALUES
(2, 'shiv', 'a', '0cc175b9c0f1b6a831c399e269772661', 'infotech0844@gmail.com', '8999127575', 'MADHA COLONY ,GADEGAON ROAD ,BARSHI', 1, '2024-10-07 18:05:33', '2024-10-07 18:05:33'),
(3, 'kp', 'k', '8ce4b16b22b58894aa86c421e8759df3', 'k@gmail.com', '8999127575', 'jalgaon', 1, '2024-10-10 10:59:28', '2024-10-10 10:59:28'),
(4, 'prasad', 'p', '83878c91171338902e0fe0fb97a8c47a', 'p@gmail.com', '8999127575', 'jalgaon', 1, '2024-10-10 11:53:26', '2024-10-10 11:53:26'),
(5, 'Shivraj Ravindra Yad', 'h', '2510c39011c5be704182423e3a695e91', 'shivrajyadav320@gmail.com', '8999127575', 'MADHA COLONY ,GADEGAON ROAD ,BARSHI', 1, '2024-11-15 07:01:49', '2024-11-15 07:01:49');

-- --------------------------------------------------------

--
-- Table structure for table `fees_list`
--

CREATE TABLE `fees_list` (
  `fee_id` int(11) NOT NULL,
  `location` varchar(100) DEFAULT NULL,
  `amount` double NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fees_list`
--

INSERT INTO `fees_list` (`fee_id`, `location`, `amount`, `status`, `date_created`) VALUES
(1, 'barshi1', 50, 1, '2021-10-24 21:52:38'),
(2, 'Solapur', 65, 1, '2021-10-24 21:52:45'),
(3, 'jalgaon', 45, 1, '2021-10-24 21:52:54'),
(5, 'j', 40, 1, '2024-10-08 18:57:49');

-- --------------------------------------------------------

--
-- Table structure for table `inventory_list`
--

CREATE TABLE `inventory_list` (
  `inventory_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `type` int(11) NOT NULL DEFAULT 1,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `inventory_list`
--

INSERT INTO `inventory_list` (`inventory_id`, `product_id`, `quantity`, `type`, `date_created`) VALUES
(21, 13, 8, 2, '2024-10-16 12:36:17'),
(22, 15, 50, 2, '2024-11-15 07:36:22');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `order_id` int(11) NOT NULL,
  `inventory_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` double NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`order_id`, `inventory_id`, `product_id`, `quantity`, `date_created`) VALUES
(18, 21, 13, 1, '2024-10-16 12:36:17');

-- --------------------------------------------------------

--
-- Table structure for table `order_list`
--

CREATE TABLE `order_list` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `transaction_code` int(11) NOT NULL,
  `fee_id` int(11) NOT NULL,
  `delivery_address` int(11) NOT NULL,
  `total_amount` double NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_list`
--

INSERT INTO `order_list` (`order_id`, `customer_id`, `transaction_code`, `fee_id`, `delivery_address`, `total_amount`, `status`, `date_created`) VALUES
(16, 2, 2147483647, 3, 0, 15, 0, '2024-10-10 10:57:31'),
(17, 3, 2147483647, 1, 0, 115, 3, '2024-10-10 11:00:01'),
(18, 2, 2018251646, 3, 0, 200, 1, '2024-10-16 12:36:17');

-- --------------------------------------------------------

--
-- Table structure for table `product_list`
--

CREATE TABLE `product_list` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` double NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `date_updated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_list`
--

INSERT INTO `product_list` (`product_id`, `category_id`, `name`, `description`, `price`, `status`, `date_created`, `date_updated`) VALUES
(12, 2, '0', 's', 5, 1, '2024-10-10 11:40:27', '2024-10-10 11:40:27'),
(13, 4, '0', 'RED AAPLE', 200, 1, '2024-10-10 11:41:35', '2024-10-10 11:41:35'),
(14, 3, 'Orange', 'Yellow orange', 50, 1, '2024-11-15 07:19:01', '2024-11-15 07:19:01'),
(15, 3, 'carrot', 'Carrot Reddish', 50, 1, '2024-11-15 07:36:22', '2024-11-15 07:36:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_list`
--
ALTER TABLE `admin_list`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `cart_list`
--
ALTER TABLE `cart_list`
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `category_list`
--
ALTER TABLE `category_list`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `customer_list`
--
ALTER TABLE `customer_list`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `fees_list`
--
ALTER TABLE `fees_list`
  ADD PRIMARY KEY (`fee_id`);

--
-- Indexes for table `inventory_list`
--
ALTER TABLE `inventory_list`
  ADD PRIMARY KEY (`inventory_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD KEY `order_id` (`order_id`),
  ADD KEY `inventory_id` (`inventory_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `order_list`
--
ALTER TABLE `order_list`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `fee_id` (`fee_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `product_list`
--
ALTER TABLE `product_list`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_list`
--
ALTER TABLE `admin_list`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `category_list`
--
ALTER TABLE `category_list`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `customer_list`
--
ALTER TABLE `customer_list`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `fees_list`
--
ALTER TABLE `fees_list`
  MODIFY `fee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `inventory_list`
--
ALTER TABLE `inventory_list`
  MODIFY `inventory_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `order_list`
--
ALTER TABLE `order_list`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `product_list`
--
ALTER TABLE `product_list`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart_list`
--
ALTER TABLE `cart_list`
  ADD CONSTRAINT `cart_list_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer_list` (`customer_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_list_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product_list` (`product_id`) ON DELETE CASCADE;

--
-- Constraints for table `inventory_list`
--
ALTER TABLE `inventory_list`
  ADD CONSTRAINT `inventory_list_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product_list` (`product_id`) ON DELETE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `order_list` (`order_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`inventory_id`) REFERENCES `inventory_list` (`inventory_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_ibfk_3` FOREIGN KEY (`product_id`) REFERENCES `product_list` (`product_id`) ON DELETE CASCADE;

--
-- Constraints for table `order_list`
--
ALTER TABLE `order_list`
  ADD CONSTRAINT `order_list_ibfk_1` FOREIGN KEY (`fee_id`) REFERENCES `fees_list` (`fee_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_list_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `customer_list` (`customer_id`) ON DELETE CASCADE;

--
-- Constraints for table `product_list`
--
ALTER TABLE `product_list`
  ADD CONSTRAINT `product_list_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category_list` (`category_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
