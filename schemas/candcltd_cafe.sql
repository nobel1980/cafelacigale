-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 22, 2021 at 07:34 AM
-- Server version: 5.7.36-cll-lve
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `candcltd_cafe`
--

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `level` int(2) DEFAULT NULL,
  `isActive` int(1) DEFAULT '0',
  `original_name` varchar(80) DEFAULT NULL,
  `file_name` varchar(80) DEFAULT NULL,
  `extension` varchar(4) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `modified_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `title`, `level`, `isActive`, `original_name`, `file_name`, `extension`, `size`, `created_at`, `modified_at`) VALUES
(1, 'Annual General Metting 2017', 0, 1, 'annual_general_metting_2017.jpg', 'f5mm3uy73qvch50aqoyb', 'jpg', 224881, 2019, NULL),
(2, 'Child Education and Marriage Insurace', 1, 1, 'Product_child_education.jpg', 'x5cqatfn0gu6qb1laipm', 'jpg', 43770, 2019, NULL),
(3, 'Zonal Conference 2018', 2, 1, 'Zonal_conference_2018.jpg', 'mdr6t5es6uh15sq5tial', 'jpg', 330954, 2019, NULL),
(4, 'Mobile Insurance', 3, 1, 'm_insurance.jpg', '4esnzd547vx7sinc7exk', 'jpg', 47095, 2019, NULL),
(5, 'Mourning Day 2018', 4, 1, 'mourning_day_2018.jpg', 'srnphmeqax76k37z0tyf', 'jpg', 653916, 2019, NULL),
(6, '18th Anniversary', 5, 1, '18th_anniversary.jpg', '8t0n08utdu20cuywpeet', 'jpg', 39081, 2019, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `description` text,
  `level` int(1) DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `created` date DEFAULT NULL,
  `modified` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `level`, `active`, `created`, `modified`) VALUES
(1, 'Smoothies', 'Smoothies', NULL, 1, '2018-02-01', '2019-05-04'),
(2, 'Breakfast', 'Served until 4:00pm', NULL, 1, '2018-02-01', '2019-05-04'),
(3, 'Baguettes', 'Includes salad\r\nExtra fillings are available for Â£1.00 each', NULL, 1, '2018-02-01', '2020-05-15'),
(4, 'Paninis', 'Includes salad\r\nExtra fillings are available for Â£1.00 each', NULL, 1, '2020-05-15', '2020-05-15'),
(5, 'Wraps', 'Includes salad\r\nExtra fillings are available for Â£1.00 each', NULL, 1, '2020-05-15', '2020-05-15'),
(6, 'Sandwiches', 'Includes salad\r\nExtra fillings are available for 60p each', NULL, 1, '2020-05-15', '2020-05-15'),
(7, 'Burgers', 'Add bacon for 90p & egg for 60p extra each\r\nAdd chips OR hash browns for Â£1.00 extra each', NULL, 1, '2020-05-16', '2020-05-16'),
(8, 'Chicken', '', NULL, 1, '2020-05-16', '2020-05-16'),
(9, 'Jacket Potato', 'Includes side salad\r\nExtra fillings are available for Â£1.00 each', NULL, 1, '2020-05-16', '2020-05-16'),
(10, 'Omelettes', '', NULL, 1, '2020-05-16', '2020-05-16'),
(11, 'Caribbean', 'Thursday & Friday', NULL, 1, '2020-05-16', '2020-05-16'),
(12, 'Salads', '', NULL, 1, '2020-05-16', '2020-05-16'),
(13, 'Pastries & Savouries', '', NULL, 1, '2020-05-16', '2020-05-16'),
(14, 'Milkshakes', 'Add ice cream for 50p extra', NULL, 1, '2020-05-16', '2020-05-16'),
(15, 'Drinks', '', NULL, 1, '2020-05-16', '2020-05-16'),
(16, 'Hot Drinks', '', NULL, 1, '2020-05-16', '2020-05-16');

-- --------------------------------------------------------

--
-- Table structure for table `email_confirmations`
--

CREATE TABLE `email_confirmations` (
  `id` int(10) UNSIGNED NOT NULL,
  `usersId` int(10) UNSIGNED NOT NULL,
  `code` char(32) NOT NULL,
  `createdAt` int(10) UNSIGNED NOT NULL,
  `modifiedAt` int(10) UNSIGNED DEFAULT NULL,
  `confirmed` char(1) DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `email_confirmations`
--

INSERT INTO `email_confirmations` (`id`, `usersId`, `code`, `createdAt`, `modifiedAt`, `confirmed`) VALUES
(1, 5, 'nT95jiUeABFspkuJqG8yJRwmKSiBles', 1552285534, NULL, 'N');

-- --------------------------------------------------------

--
-- Table structure for table `failed_logins`
--

CREATE TABLE `failed_logins` (
  `id` int(10) UNSIGNED NOT NULL,
  `usersId` int(10) UNSIGNED DEFAULT NULL,
  `ipAddress` char(15) NOT NULL,
  `attempted` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `failed_logins`
--

INSERT INTO `failed_logins` (`id`, `usersId`, `ipAddress`, `attempted`) VALUES
(1, 5, '::1', 1556339600),
(2, 5, '::1', 1588397885),
(3, 5, '103.84.255.218', 1622312480),
(4, 5, '95.147.45.78', 1631704849);

-- --------------------------------------------------------

--
-- Table structure for table `password_changes`
--

CREATE TABLE `password_changes` (
  `id` int(10) UNSIGNED NOT NULL,
  `usersId` int(10) UNSIGNED NOT NULL,
  `ipAddress` char(15) NOT NULL,
  `userAgent` text NOT NULL,
  `createdAt` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `password_changes`
--

INSERT INTO `password_changes` (`id`, `usersId`, `ipAddress`, `userAgent`, `createdAt`) VALUES
(1, 5, '103.84.255.218', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1622400906);

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `profilesId` int(10) UNSIGNED NOT NULL,
  `resource` varchar(16) NOT NULL,
  `action` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `profilesId`, `resource`, `action`) VALUES
(1, 3, 'users', 'index'),
(2, 3, 'users', 'search'),
(3, 3, 'profiles', 'index'),
(4, 3, 'profiles', 'search'),
(17, 2, 'users', 'index'),
(18, 2, 'users', 'search'),
(19, 2, 'users', 'edit'),
(20, 2, 'users', 'create'),
(21, 2, 'profiles', 'index'),
(22, 2, 'profiles', 'search'),
(23, 1, 'users', 'index'),
(24, 1, 'users', 'search'),
(25, 1, 'users', 'edit'),
(26, 1, 'users', 'create'),
(27, 1, 'users', 'delete'),
(28, 1, 'users', 'changePassword'),
(29, 1, 'profiles', 'index'),
(30, 1, 'profiles', 'search'),
(31, 1, 'profiles', 'edit'),
(32, 1, 'profiles', 'create'),
(33, 1, 'profiles', 'delete'),
(34, 1, 'permissions', 'index');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(1000) NOT NULL,
  `description` text,
  `price` decimal(10,2) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `level` int(2) DEFAULT NULL,
  `created` date DEFAULT NULL,
  `modified` date DEFAULT NULL,
  `createdby` varchar(250) DEFAULT NULL,
  `modifiedby` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `category_id`, `active`, `level`, `created`, `modified`, `createdby`, `modifiedby`) VALUES
(1, 'Blueberry, Raspberry, Mango & Apple', '', 2.90, 1, 1, NULL, '2019-05-04', '2019-05-04', NULL, NULL),
(2, ' Melon, Mango & Strawberry', '', 2.90, 1, 1, NULL, '2019-05-04', '2019-05-04', NULL, NULL),
(3, 'Pineapple, Banana & Coconut', '', 2.90, 1, 1, NULL, '2019-05-04', '2019-05-04', NULL, NULL),
(4, 'Strawberry & Banana', '', 2.90, 1, 1, NULL, '2019-05-04', '2019-05-04', NULL, NULL),
(5, ' La Cigale Breakfast', '2 Eggs, 2 bacon, 2 sausages, beans, mushrooms, tomato, 1 toast, chips OR hash browns', 6.90, 2, 1, NULL, '2019-05-04', '2019-05-04', NULL, NULL),
(6, 'Brunch Breakfast', '2 Eggs, 2 bacon, 2 sausages, mushrooms, tomato, 1 toast', 5.90, 2, 1, NULL, '2019-05-04', '2019-05-04', NULL, NULL),
(7, 'Traditional Breakfast', '2 Eggs, 2 bacon, 1 sausage, beans, chips, 1 toast', 5.90, 2, 1, NULL, '2019-05-04', '2019-05-04', NULL, NULL),
(8, 'Early Starter Breakfast', '2 Scrambled eggs, 2 bacon, tomato, beans, 2 hash browns, 1 toast', 5.90, 2, 1, NULL, '2019-05-04', '2019-05-04', NULL, NULL),
(9, 'Mini Breakfast', '1 Egg, 1 bacon, 1 sausage, mushrooms, tomato, 1 toast', 5.00, 2, 1, NULL, '2019-05-04', '2019-05-04', NULL, NULL),
(10, 'Cheese Baguette', '', 3.50, 3, 1, NULL, '2020-05-15', '2021-05-29', NULL, NULL),
(11, 'Egg Mayonnaise Baguette', '', 3.50, 3, 1, NULL, '2020-05-15', '2021-05-29', NULL, NULL),
(12, 'Chicken Escalope Baguette', '', 3.90, 3, 1, NULL, '2020-05-15', '2021-05-29', NULL, NULL),
(13, 'Coronation Chicken Baguette', '', 3.90, 3, 1, NULL, '2020-05-15', '2021-05-29', NULL, NULL),
(14, 'Cheese & Pickle Baguette', '', 3.90, 3, 1, NULL, '2020-05-15', '2021-05-29', NULL, NULL),
(15, 'Chicken Tikka Baguette', '', 3.90, 3, 1, NULL, '2020-05-15', '2021-05-29', NULL, NULL),
(16, 'Ham & Cheese Baguette', '', 3.90, 3, 1, NULL, '2020-05-15', '2021-05-29', NULL, NULL),
(17, 'Ham & Brie Baguette', '', 4.50, 3, 1, NULL, '2020-05-15', '2021-05-29', NULL, NULL),
(18, 'Salami & Cheese Baguette', '', 3.90, 3, 1, NULL, '2020-05-15', '2021-05-29', NULL, NULL),
(19, 'Bacon Baguette', '', 3.90, 3, 1, NULL, '2020-05-15', '2021-05-29', NULL, NULL),
(20, 'Chicken Baguette', '', 3.90, 3, 1, NULL, '2020-05-15', '2021-05-29', NULL, NULL),
(21, 'Tuna Baguette', '', 3.90, 3, 1, NULL, '2020-05-15', '2021-05-29', NULL, NULL),
(22, 'Mozzarella, Tomato & Avocado Baguette', '', 4.50, 3, 1, NULL, '2020-05-15', '2021-05-29', NULL, NULL),
(23, 'Tuna & Cheese Baguette', '', 4.50, 3, 1, NULL, '2020-05-15', '2021-05-29', NULL, NULL),
(24, 'B.L.T. Baguette', '', 4.00, 3, 1, NULL, '2020-05-15', '2021-05-29', NULL, NULL),
(25, 'Tuna Mayonnaise & Sweetcorn Baguette', '', 4.00, 3, 1, NULL, '2020-05-15', '2021-05-29', NULL, NULL),
(26, 'Chicken & Cheese Baguette', '', 4.50, 3, 1, NULL, '2020-05-15', '2021-05-29', NULL, NULL),
(27, 'Chicken Mayonnaise & Sweetcorn Baguette', '', 4.00, 3, 1, NULL, '2020-05-15', '2021-05-29', NULL, NULL),
(28, 'Chicken Escalope & Cheese Baguette', '', 4.50, 3, 1, NULL, '2020-05-15', '2021-05-29', NULL, NULL),
(29, 'Falafel & Hummus Baguette', '', 4.50, 3, 1, NULL, '2020-05-15', '2021-05-29', NULL, NULL),
(30, 'Bacon & Sausage Baguette', '', 4.90, 3, 1, NULL, '2020-05-15', '2021-05-29', NULL, NULL),
(31, 'Smoked Salmon & Cream Cheese Baguette', '', 4.90, 3, 1, NULL, '2020-05-15', '2021-05-29', NULL, NULL),
(32, 'Prawn Mayonnaise & Avocado Baguette', '', 4.90, 3, 1, NULL, '2020-05-15', '2021-05-29', NULL, NULL),
(33, 'Cheese Panini', '', 3.50, 4, 1, NULL, '2020-05-15', '2021-05-29', NULL, NULL),
(34, 'Egg Mayonnaise Panini', '', 3.50, 4, 1, NULL, '2020-05-15', '2021-05-29', NULL, NULL),
(35, 'Chicken Escalope Panini', '', 3.90, 4, 1, NULL, '2020-05-15', '2021-05-29', NULL, NULL),
(36, 'Coronation Chicken Panini', '', 3.90, 4, 1, NULL, '2020-05-15', '2021-05-29', NULL, NULL),
(37, 'Cheese & Pickle Panini', '', 3.90, 4, 1, NULL, '2020-05-15', '2021-05-29', NULL, NULL),
(38, 'Chicken Tikka Panini', '', 3.90, 4, 1, NULL, '2020-05-15', '2021-05-29', NULL, NULL),
(39, 'Ham & Cheese Panini', '', 3.90, 4, 1, NULL, '2020-05-15', '2021-05-29', NULL, NULL),
(40, 'Ham & Brie Panini', '', 4.50, 4, 1, NULL, '2020-05-15', '2021-05-29', NULL, NULL),
(41, 'Salami & Cheese Panini', '', 3.90, 4, 1, NULL, '2020-05-15', '2021-05-29', NULL, NULL),
(42, 'Bacon Panini', '', 3.90, 4, 1, NULL, '2020-05-15', '2021-05-29', NULL, NULL),
(43, 'Chicken Panini', '', 3.90, 4, 1, NULL, '2020-05-15', '2021-05-29', NULL, NULL),
(44, 'Tuna Panini', '', 3.90, 4, 1, NULL, '2020-05-15', '2021-05-29', NULL, NULL),
(45, 'Mozzarella, Tomato & Avocado Panini', '', 4.50, 4, 1, NULL, '2020-05-15', '2021-05-29', NULL, NULL),
(46, 'Tuna & Cheese Panini', '', 4.50, 4, 1, NULL, '2020-05-15', '2021-05-29', NULL, NULL),
(47, 'B.L.T. Panini', '', 4.00, 4, 1, NULL, '2020-05-15', '2021-05-29', NULL, NULL),
(48, 'Tuna Mayonnaise & Sweetcorn Panini', '', 4.00, 4, 1, NULL, '2020-05-15', '2021-05-29', NULL, NULL),
(49, 'Chicken & Cheese Panini', '', 4.50, 4, 1, NULL, '2020-05-15', '2021-05-29', NULL, NULL),
(50, 'Chicken Mayonnaise & Sweetcorn Panini', '', 4.00, 4, 1, NULL, '2020-05-15', '2021-05-29', NULL, NULL),
(51, 'Chicken Escalope & Cheese Panini', '', 4.50, 4, 1, NULL, '2020-05-15', '2021-05-29', NULL, NULL),
(52, 'Falafel & Hummus Panini', '', 4.50, 4, 1, NULL, '2020-05-15', '2021-05-29', NULL, NULL),
(53, 'Bacon & Sausage Panini', '', 4.90, 4, 1, NULL, '2020-05-15', '2021-05-29', NULL, NULL),
(54, 'Smoked Salmon & Cream Cheese Panini', '', 4.90, 4, 1, NULL, '2020-05-15', '2021-05-29', NULL, NULL),
(55, 'Prawn Mayonnaise & Avocado Panini', '', 4.90, 4, 1, NULL, '2020-05-15', '2021-05-29', NULL, NULL),
(56, 'Cheese Wrap', '', 3.50, 5, 1, NULL, '2020-05-15', '2021-05-30', NULL, NULL),
(57, 'Egg Mayonnaise Wrap', '', 3.50, 5, 1, NULL, '2020-05-15', '2021-05-30', NULL, NULL),
(58, 'Chicken Escalope Wrap', '', 3.90, 5, 1, NULL, '2020-05-15', '2021-05-30', NULL, NULL),
(59, 'Coronation Chicken Wrap', '', 3.90, 5, 1, NULL, '2020-05-15', '2021-05-30', NULL, NULL),
(60, 'Cheese & Pickle Wrap', '', 3.90, 5, 1, NULL, '2020-05-15', '2021-05-30', NULL, NULL),
(61, 'Chicken Tikka Wrap', '', 3.90, 5, 1, NULL, '2020-05-15', '2021-05-30', NULL, NULL),
(62, 'Ham & Cheese Wrap', '', 3.90, 5, 1, NULL, '2020-05-15', '2021-05-30', NULL, NULL),
(63, 'Ham & Brie Wrap', '', 3.90, 5, 1, NULL, '2020-05-15', '2021-05-30', NULL, NULL),
(64, 'Salami & Cheese Wrap', '', 3.90, 5, 1, NULL, '2020-05-15', '2021-05-30', NULL, NULL),
(65, 'Bacon Wrap', '', 3.90, 5, 1, NULL, '2020-05-15', '2021-05-30', NULL, NULL),
(66, 'Chicken Wrap', '', 3.90, 5, 1, NULL, '2020-05-15', '2021-05-30', NULL, NULL),
(67, 'Tuna Wrap', '', 3.90, 5, 1, NULL, '2020-05-15', '2021-05-30', NULL, NULL),
(68, 'Mozzarella, Tomato & Avocado Wrap', '', 4.50, 5, 1, NULL, '2020-05-15', '2021-05-30', NULL, NULL),
(69, 'Tuna & Cheese Wrap', '', 4.50, 5, 1, NULL, '2020-05-15', '2021-05-30', NULL, NULL),
(70, 'B.L.T. Wrap', '', 4.00, 5, 1, NULL, '2020-05-15', '2021-05-30', NULL, NULL),
(71, 'Tuna Mayonnaise & Sweetcorn Wrap', '', 4.00, 5, 1, NULL, '2020-05-15', '2021-05-30', NULL, NULL),
(72, 'Chicken & Cheese Wrap', '', 4.50, 5, 1, NULL, '2020-05-16', '2021-05-30', NULL, NULL),
(73, 'Chicken Mayonnaise & Sweetcorn Wrap', '', 4.00, 5, 1, NULL, '2020-05-16', '2021-05-30', NULL, NULL),
(74, 'Chicken Escalope & Cheese Wrap', '', 4.50, 5, 1, NULL, '2020-05-16', '2021-05-30', NULL, NULL),
(75, 'Falafel & Hummus Wrap', '', 4.50, 5, 1, NULL, '2020-05-16', '2021-05-30', NULL, NULL),
(76, 'Bacon & Sausage Wrap', '', 4.90, 5, 1, NULL, '2020-05-16', '2021-05-30', NULL, NULL),
(77, 'Smoked Salmon & Cream Cheese Wrap', '', 4.90, 5, 1, NULL, '2020-05-16', '2021-05-30', NULL, NULL),
(78, 'Prawn Mayonnaise & Avocado Wrap', '', 4.90, 5, 1, NULL, '2020-05-16', '2021-05-30', NULL, NULL),
(79, 'Cheese Sandwich', '', 2.50, 6, 1, NULL, '2020-05-16', '2020-05-16', NULL, NULL),
(80, 'Egg Mayonnaise Sandwich', '', 2.50, 6, 1, NULL, '2020-05-16', '2020-05-16', NULL, NULL),
(81, 'Chicken Escalope Sandwich', '', 2.80, 6, 1, NULL, '2020-05-16', '2020-05-16', NULL, NULL),
(82, 'Coronation Chicken Sandwich', '', 2.80, 6, 1, NULL, '2020-05-16', '2020-05-16', NULL, NULL),
(83, 'Cheese & Pickle Sandwich', '', 2.80, 6, 1, NULL, '2020-05-16', '2020-05-16', NULL, NULL),
(84, 'Chicken Tikka Sandwich', '', 2.80, 6, 1, NULL, '2020-05-16', '2020-05-16', NULL, NULL),
(85, 'Ham & Cheese Sandwich', '', 2.80, 6, 1, NULL, '2020-05-16', '2020-05-16', NULL, NULL),
(86, 'Ham & Brie Sandwich', '', 2.80, 6, 1, NULL, '2020-05-16', '2020-05-16', NULL, NULL),
(87, 'Salami & Cheese Sandwich', '', 2.80, 6, 1, NULL, '2020-05-16', '2020-05-16', NULL, NULL),
(88, 'Bacon Sandwich', '', 2.80, 6, 1, NULL, '2020-05-16', '2020-05-16', NULL, NULL),
(89, 'Chicken Sandwich', '', 2.80, 6, 1, NULL, '2020-05-16', '2020-05-16', NULL, NULL),
(90, 'Tuna Sandwich', '', 2.80, 6, 1, NULL, '2020-05-16', '2020-05-16', NULL, NULL),
(91, 'Mozzarella, Tomato & Avocado Sandwich', '', 3.00, 6, 1, NULL, '2020-05-16', '2020-05-16', NULL, NULL),
(92, 'Tuna & Cheese Sandwich', '', 2.90, 6, 1, NULL, '2020-05-16', '2020-05-16', NULL, NULL),
(93, 'B.L.T. Sandwich', '', 2.80, 6, 1, NULL, '2020-05-16', '2020-05-16', NULL, NULL),
(94, 'Tuna Mayonnaise & Sweetcorn Sandwich', '', 2.90, 6, 1, NULL, '2020-05-16', '2020-05-16', NULL, NULL),
(95, 'Chicken & Cheese Sandwich', '', 2.90, 6, 1, NULL, '2020-05-16', '2020-05-16', NULL, NULL),
(96, 'Chicken Mayonnaise & Sweetcorn Sandwich', '', 2.90, 6, 1, NULL, '2020-05-16', '2020-05-16', NULL, NULL),
(97, 'Chicken Escalope & Cheese Sandwich', '', 2.90, 6, 1, NULL, '2020-05-16', '2020-05-16', NULL, NULL),
(98, 'Bacon & Sausage Sandwich', '', 3.00, 6, 1, NULL, '2020-05-16', '2020-05-16', NULL, NULL),
(99, 'Smoked Salmon & Cream Cheese Sandwich', '', 3.00, 6, 1, NULL, '2020-05-16', '2020-05-16', NULL, NULL),
(100, 'Prawn Mayonnaise & Avocado Sandwich', '', 3.00, 6, 1, NULL, '2020-05-16', '2020-05-16', NULL, NULL),
(101, 'Quarter Pounder Burger', '', 3.90, 7, 1, NULL, '2020-05-16', '2020-05-16', NULL, NULL),
(102, 'Cheese Burger', '', 3.90, 7, 1, NULL, '2020-05-16', '2020-05-16', NULL, NULL),
(103, 'King Size Burger', '', 4.90, 7, 1, NULL, '2020-05-16', '2020-05-16', NULL, NULL),
(104, 'Chicken Burger', '', 3.90, 7, 1, NULL, '2020-05-16', '2020-05-16', NULL, NULL),
(105, 'Spicy Bean Burger', '', 3.90, 7, 1, NULL, '2020-05-16', '2020-05-16', NULL, NULL),
(106, 'Chicken Nuggets (5 Pieces)', '', 3.50, 8, 1, NULL, '2020-05-16', '2020-05-16', NULL, NULL),
(107, 'Chicken Strips (4 Pieces)', '', 3.50, 8, 1, NULL, '2020-05-16', '2020-05-16', NULL, NULL),
(108, 'Jacket Potato with Egg Mayonnaise', '', 4.00, 9, 1, NULL, '2020-05-16', '2021-05-29', NULL, NULL),
(109, 'Jacket Potato with Cheese', '', 4.00, 9, 1, NULL, '2020-05-16', '2021-05-29', NULL, NULL),
(110, 'Plain Omelette', '', 3.50, 10, 1, NULL, '2020-05-16', '2020-05-16', NULL, NULL),
(111, 'Cheese Omelette', '', 3.80, 10, 1, NULL, '2020-05-16', '2020-05-16', NULL, NULL),
(112, 'Jerk Chicken with Rice & Peas', '', 5.90, 11, 1, NULL, '2020-05-16', '2021-05-29', NULL, NULL),
(113, 'Curry Lamb with Rice & Peas', '', 5.90, 11, 1, NULL, '2020-05-16', '2021-05-29', NULL, NULL),
(114, 'Greek Salad', '', 3.50, 12, 1, NULL, '2020-05-16', '2020-05-16', NULL, NULL),
(115, 'Caesar Salad', 'Chicken or bacon', 4.50, 12, 1, NULL, '2020-05-16', '2020-05-16', NULL, NULL),
(116, 'Lebanese Salad', 'Cucumber, tomato, onions, olives & lemon', 4.50, 12, 1, NULL, '2020-05-16', '2020-05-16', NULL, NULL),
(117, 'Falafel & Hummus Salad', '', 4.50, 12, 1, NULL, '2020-05-16', '2020-05-16', NULL, NULL),
(118, 'Tuna Salad', '', 4.50, 12, 1, NULL, '2020-05-16', '2020-05-16', NULL, NULL),
(119, 'Chicken Salad', '', 4.50, 12, 1, NULL, '2020-05-16', '2020-05-16', NULL, NULL),
(120, 'Prawn Salad', '', 4.50, 12, 1, NULL, '2020-05-16', '2020-05-16', NULL, NULL),
(121, '2 Pieces Toast with Butter', '', 0.90, 13, 1, NULL, '2020-05-16', '2020-05-16', NULL, NULL),
(122, '2 Pieces Toast with Jam', '', 1.10, 13, 1, NULL, '2020-05-16', '2020-05-16', NULL, NULL),
(123, '2 Pieces Toast with Marmalade', '', 1.10, 13, 1, NULL, '2020-05-16', '2020-05-16', NULL, NULL),
(124, 'Croissant with Butter & Jam', '', 1.20, 13, 1, NULL, '2020-05-16', '2020-05-16', NULL, NULL),
(125, 'Croissant with Butter & Marmalade', '', 1.20, 13, 1, NULL, '2020-05-16', '2020-05-16', NULL, NULL),
(126, 'Croissant with Cheese', '', 1.20, 13, 1, NULL, '2020-05-16', '2020-05-16', NULL, NULL),
(127, 'Croissant with Ham & Cheese', '', 2.20, 13, 1, NULL, '2020-05-16', '2020-05-16', NULL, NULL),
(128, 'Chocolate Croissant', '', 1.20, 13, 1, NULL, '2020-05-16', '2020-05-16', NULL, NULL),
(129, 'Honey Milkshake', '', 2.50, 14, 1, NULL, '2020-05-16', '2020-05-16', NULL, NULL),
(130, 'Banana Milkshake', '', 2.50, 14, 1, NULL, '2020-05-16', '2020-05-16', NULL, NULL),
(131, 'Strawberry Milkshake', '', 2.50, 14, 1, NULL, '2020-05-16', '2020-05-16', NULL, NULL),
(132, 'Coca-Cola 0.33L', '', 1.50, 15, 1, NULL, '2020-05-16', '2020-05-16', NULL, NULL),
(133, 'Coca-Cola 0.5L', '', 2.20, 15, 1, NULL, '2020-05-16', '2020-05-16', NULL, NULL),
(134, 'Diet Coca-Cola 0.33L', '', 1.10, 15, 1, NULL, '2020-05-16', '2020-05-16', NULL, NULL),
(135, 'Diet Coca-Cola 0.5L', '', 1.90, 15, 1, NULL, '2020-05-16', '2020-05-16', NULL, NULL),
(136, 'Coca Cola Zero 0.33L', '', 1.10, 15, 1, NULL, '2020-05-16', '2020-05-16', NULL, NULL),
(137, 'Coca Cola Zero 0.5L Bottle', '', 1.90, 15, 1, NULL, '2020-05-16', '2020-05-16', NULL, NULL),
(138, 'Fanta Orange 0.33L', '', 1.10, 15, 1, NULL, '2020-05-16', '2020-05-16', NULL, NULL),
(139, 'Fanta Orange 0.5L Bottle', '', 1.90, 15, 1, NULL, '2020-05-16', '2020-05-16', NULL, NULL),
(140, 'Bottle of Water', '', 0.90, 15, 1, NULL, '2020-05-16', '2020-05-16', NULL, NULL),
(141, 'Sprite 0.33L', '', 1.10, 15, 1, NULL, '2020-05-18', '2020-05-18', NULL, NULL),
(142, 'Sprite 0.5L Bottle', '', 1.90, 15, 1, NULL, '2020-05-18', '2020-05-18', NULL, NULL),
(143, 'Dr. Pepper 0.33L', '', 1.10, 15, 1, NULL, '2020-05-18', '2020-05-18', NULL, NULL),
(144, 'Dr. Pepper 0.5L Bottle', '', 1.90, 15, 1, NULL, '2020-05-18', '2020-05-18', NULL, NULL),
(145, 'Glass of Milk', '', 0.90, 15, 1, NULL, '2020-05-18', '2020-05-18', NULL, NULL),
(146, 'Freshly Squeezed Orange Juice', '', 2.60, 15, 1, NULL, '2020-05-18', '2020-05-18', NULL, NULL),
(147, 'Apple Juice 0.5L Bottle', '', 1.90, 15, 1, NULL, '2020-05-18', '2020-05-18', NULL, NULL),
(148, 'Orange Juice 0.5L Bottle', '', 1.90, 15, 1, NULL, '2020-05-18', '2020-05-18', NULL, NULL),
(149, 'Oasis Strawberry 0.5L Bottle', '', 1.90, 15, 1, NULL, '2020-05-18', '2020-05-18', NULL, NULL),
(150, 'Oasis Citrus 0.5L Bottle', '', 1.90, 15, 1, NULL, '2020-05-18', '2020-05-18', NULL, NULL),
(151, 'Orange Lucozade 0.5L Bottle', '', 1.90, 15, 1, NULL, '2020-05-18', '2020-05-18', NULL, NULL),
(152, 'Apple-Small Carton of Juice (220ml) ', '', 0.90, 15, 1, NULL, '2020-05-18', '2020-05-18', NULL, NULL),
(153, 'Orange-Small Carton of Juice (220ml) ', '', 0.90, 15, 1, NULL, '2020-05-18', '2020-05-18', NULL, NULL),
(154, 'Ribena-Small Carton of Juice (220ml)', '', 0.90, 15, 1, NULL, '2020-05-18', '2020-05-18', NULL, NULL),
(155, 'Coffee Large', '', 1.80, 16, 1, NULL, '2020-05-18', '2020-05-18', NULL, NULL),
(156, 'Coffee Small', '', 1.60, 16, 1, NULL, '2020-05-18', '2020-05-18', NULL, NULL),
(157, 'Cappuccino Large', '', 1.90, 16, 1, NULL, '2020-05-18', '2020-05-18', NULL, NULL),
(158, 'Cappuccino Small', '', 1.70, 16, 1, NULL, '2020-05-18', '2020-05-18', NULL, NULL),
(159, 'Latte Large', '', 1.90, 16, 1, NULL, '2020-05-18', '2020-05-18', NULL, NULL),
(160, 'Latte Small', '', 1.80, 16, 1, NULL, '2020-05-18', '2020-05-18', NULL, NULL),
(161, 'Hot Chocolate Large', '', 1.90, 16, 1, NULL, '2020-05-18', '2020-05-18', NULL, NULL),
(162, 'Hot Chocolate Small', '', 1.80, 16, 1, NULL, '2020-05-18', '2020-05-18', NULL, NULL),
(163, 'Americano Large', '', 1.80, 16, 1, NULL, '2020-05-18', '2020-05-18', NULL, NULL),
(164, 'Americano Small', '', 1.60, 16, 1, NULL, '2020-05-18', '2020-05-18', NULL, NULL),
(165, 'Moccachino', '', 1.90, 16, 1, NULL, '2020-05-18', '2020-05-18', NULL, NULL),
(166, 'Espresso', '', 1.40, 16, 1, NULL, '2020-05-18', '2020-05-18', NULL, NULL),
(167, 'Double Espresso', '', 1.60, 16, 1, NULL, '2020-05-18', '2020-05-18', NULL, NULL),
(168, 'Macchiato', '', 1.60, 16, 1, NULL, '2020-05-18', '2020-05-18', NULL, NULL),
(169, 'Earl Grey Tea', '', 1.40, 16, 1, NULL, '2020-05-18', '2020-05-18', NULL, NULL),
(170, 'Chamomile Tea', '', 1.40, 16, 1, NULL, '2020-05-18', '2020-05-18', NULL, NULL),
(171, 'Peppermint Tea', '', 1.40, 16, 1, NULL, '2020-05-18', '2020-05-18', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(64) NOT NULL,
  `active` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `name`, `active`) VALUES
(1, 'Administrators', 'Y'),
(2, 'Users', 'Y'),
(3, 'Read-Only', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `remember_tokens`
--

CREATE TABLE `remember_tokens` (
  `id` int(10) UNSIGNED NOT NULL,
  `usersId` int(10) UNSIGNED NOT NULL,
  `token` char(32) NOT NULL,
  `userAgent` text NOT NULL,
  `createdAt` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `reset_passwords`
--

CREATE TABLE `reset_passwords` (
  `id` int(10) UNSIGNED NOT NULL,
  `usersId` int(10) UNSIGNED NOT NULL,
  `code` varchar(48) NOT NULL,
  `createdAt` int(10) UNSIGNED NOT NULL,
  `modifiedAt` int(10) UNSIGNED DEFAULT NULL,
  `reset` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `success_logins`
--

CREATE TABLE `success_logins` (
  `id` int(10) UNSIGNED NOT NULL,
  `usersId` int(10) UNSIGNED NOT NULL,
  `ipAddress` char(15) NOT NULL,
  `userAgent` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `success_logins`
--

INSERT INTO `success_logins` (`id`, `usersId`, `ipAddress`, `userAgent`) VALUES
(1, 5, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0'),
(2, 5, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:66.0) Gecko/20100101 Firefox/66.0'),
(3, 5, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0'),
(4, 5, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:76.0) Gecko/20100101 Firefox/76.0'),
(5, 5, '103.84.255.218', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(6, 5, '103.84.255.218', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(7, 5, '103.84.255.218', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(8, 5, '103.84.255.218', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(9, 5, '103.84.255.218', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:88.0) Gecko/20100101 Firefox/88.0'),
(10, 5, '95.147.45.78', 'Mozilla/5.0 (Linux; Android 10; SNE-LX1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.62 Mobile Safari/537.36');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` char(60) NOT NULL,
  `mustChangePassword` char(1) DEFAULT NULL,
  `profilesId` int(10) UNSIGNED NOT NULL,
  `banned` char(1) NOT NULL,
  `suspended` char(1) NOT NULL,
  `active` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `mustChangePassword`, `profilesId`, `banned`, `suspended`, `active`) VALUES
(1, 'Bob Burnquist', 'bob@phalconphp.com', '$2a$08$Lx1577KNhPa9lzFYKssadetmbhaveRtCoVaOnoXXxUIhrqlCJYWCW', 'N', 1, 'N', 'N', 'Y'),
(2, 'Erik', 'erik@phalconphp.com', '$2a$08$f4llgFQQnhPKzpGmY1sOuuu23nYfXYM/EVOpnjjvAmbxxDxG3pbX.', 'N', 1, 'Y', 'Y', 'Y'),
(3, 'Veronica', 'veronica@phalconphp.com', '$2a$08$NQjrh9fKdMHSdpzhMj0xcOSwJQwMfpuDMzgtRyA89ADKUbsFZ94C2', 'N', 1, 'N', 'N', 'Y'),
(4, 'Yukimi Nagano', 'yukimi@phalconphp.com', '$2a$08$cxxpy4Jvt6Q3xGKgMWIILuf75RQDSroenvoB7L..GlXoGkVEMoSr.', 'N', 2, 'N', 'N', 'Y'),
(5, 'Shahidul Islam', 'nobel.amin@gmail.com', '$2y$08$bHZ6bWVITWVmazF2WDVucOQ5tunVybvF79njE8u3TS4T7bfmN5Mei', 'N', 1, 'N', 'N', 'Y');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_confirmations`
--
ALTER TABLE `email_confirmations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_logins`
--
ALTER TABLE `failed_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usersId` (`usersId`);

--
-- Indexes for table `password_changes`
--
ALTER TABLE `password_changes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usersId` (`usersId`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profilesId` (`profilesId`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `active` (`active`);

--
-- Indexes for table `remember_tokens`
--
ALTER TABLE `remember_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `token` (`token`);

--
-- Indexes for table `reset_passwords`
--
ALTER TABLE `reset_passwords`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usersId` (`usersId`);

--
-- Indexes for table `success_logins`
--
ALTER TABLE `success_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usersId` (`usersId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profilesId` (`profilesId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `email_confirmations`
--
ALTER TABLE `email_confirmations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_logins`
--
ALTER TABLE `failed_logins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `password_changes`
--
ALTER TABLE `password_changes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=172;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `remember_tokens`
--
ALTER TABLE `remember_tokens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reset_passwords`
--
ALTER TABLE `reset_passwords`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `success_logins`
--
ALTER TABLE `success_logins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
