-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 08, 2016 at 08:10 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `saffron_restro`
--

-- --------------------------------------------------------

--
-- Table structure for table `configraution`
--

CREATE TABLE IF NOT EXISTS `configraution` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `min_order_per_page` int(11) DEFAULT NULL,
  `manager_id` int(11) DEFAULT NULL,
  `no_of_table` int(11) DEFAULT NULL,
  `tax` decimal(11,2) DEFAULT NULL,
  `auto_refresh_time` int(11) NOT NULL,
  `hotel_name` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `free_waiter_notify_color` varchar(255) DEFAULT NULL,
  `busy_waiter_notify_color` varchar(255) DEFAULT NULL,
  `occupied_table_notify_color` varchar(255) DEFAULT NULL,
  `email_id` int(100) NOT NULL,
  `upper_block_refresh_time` int(11) DEFAULT NULL,
  `customer_notification_auto_refresh_time` int(11) DEFAULT NULL,
  `free_waiter_auto_refresh_time` int(11) DEFAULT NULL,
  `free_table_auto_refresh_time` int(11) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `configraution`
--

INSERT INTO `configraution` (`id`, `min_order_per_page`, `manager_id`, `no_of_table`, `tax`, `auto_refresh_time`, `hotel_name`, `logo`, `address`, `contact`, `free_waiter_notify_color`, `busy_waiter_notify_color`, `occupied_table_notify_color`, `email_id`, `upper_block_refresh_time`, `customer_notification_auto_refresh_time`, `free_waiter_auto_refresh_time`, `free_table_auto_refresh_time`, `currency`) VALUES
(27, 12, 68, 25, '12.36', 0, 'BIRYANI HOUSE', 'logo.jpg', 'Accacia Avenue, Kololo- Opposite Kabojja School!', '+91 9668845878', '008000', 'ff7575', 'ff7575', 1, 5000, 5000, 6000, 6000, 'RS');

-- --------------------------------------------------------

--
-- Table structure for table `coupon`
--

CREATE TABLE IF NOT EXISTS `coupon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `code` varchar(64) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `used` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=484 ;

--
-- Dumping data for table `coupon`
--

INSERT INTO `coupon` (`id`, `name`, `description`, `code`, `timestamp`, `used`) VALUES
(469, '', '', '855172', '2012-11-13 01:57:11', 0),
(470, '', '', '200387', '2012-12-02 04:24:42', 0),
(471, '', '', '849597', '2012-12-02 04:38:47', 0),
(472, '', '', '301406', '2012-12-02 04:38:52', 0),
(473, '', '', '384600', '2012-12-02 04:38:53', 0),
(474, '', '', '269931', '2012-12-02 04:38:54', 0),
(475, '', '', '244360', '2012-12-02 04:40:14', 0),
(476, '', '', '761843', '2012-12-02 04:41:07', 0),
(477, '', '', '678485', '2012-12-02 04:41:53', 0),
(478, '', '', '184567', '2012-12-02 04:44:15', 0),
(479, '', '', '895959', '2012-12-02 04:44:21', 0),
(480, '', '', '517398', '2012-12-02 04:48:35', 0),
(481, '', '', '640142', '2012-12-02 05:07:25', 0),
(482, '', '', '389956', '2012-12-03 12:36:37', 0),
(483, '', '', '317960', '2014-12-24 08:15:36', 0);

-- --------------------------------------------------------

--
-- Table structure for table `customer_data`
--

CREATE TABLE IF NOT EXISTS `customer_data` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(200) DEFAULT NULL,
  `mobile` varchar(20) NOT NULL,
  `birth_date` varchar(20) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `menu_id` int(10) NOT NULL,
  `comment` varchar(400) NOT NULL,
  `price` decimal(50,0) NOT NULL,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `bill` varchar(100) NOT NULL,
  `order_id` int(10) NOT NULL,
  `orderitem_id` int(10) NOT NULL,
  `menu_name` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=59 ;

--
-- Dumping data for table `customer_data`
--

INSERT INTO `customer_data` (`id`, `customer_name`, `mobile`, `birth_date`, `email`, `menu_id`, `comment`, `price`, `timestamp`, `bill`, `order_id`, `orderitem_id`, `menu_name`) VALUES
(58, 'khushisoni', '8452812880', '215454', 's@djkj', 0, '', '0', '2015-02-11 01:03:47', '', 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `email`
--

CREATE TABLE IF NOT EXISTS `email` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `from` varchar(100) NOT NULL,
  `to` varchar(100) NOT NULL,
  `cc` varchar(100) DEFAULT NULL,
  `bcc` varchar(100) NOT NULL,
  `host` varchar(100) NOT NULL,
  `port` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `available` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ingredients`
--

CREATE TABLE IF NOT EXISTS `ingredients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menuItemid` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `quantity` int(20) NOT NULL,
  `min_ingr` int(20) NOT NULL,
  `delete` int(10) NOT NULL,
  `date` date NOT NULL,
  `in_limit` varchar(10) NOT NULL,
  `ing_type` varchar(200) NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=85 ;

--
-- Dumping data for table `ingredients`
--

INSERT INTO `ingredients` (`id`, `menuItemid`, `name`, `quantity`, `min_ingr`, `delete`, `date`, `in_limit`, `ing_type`, `category`) VALUES
(14, 0, 'Cherriess', 134362, 5, 0, '2015-01-28', '', '', NULL),
(15, 0, 'Honey', 12000, 48, 0, '2015-01-15', '', '', NULL),
(16, 0, 'Toffee', 120, 0, 0, '2015-02-16', '1', '', NULL),
(17, 0, 'Nuts', 1200, 360, 0, '2015-01-15', '', '', NULL),
(18, 0, 'Ham', 565, 113, 0, '2015-01-15', '', '', NULL),
(19, 0, 'Swiss Cheese', 12000, 2400, 0, '2015-01-15', '', '', NULL),
(20, 29, 'Mayonnaise', 30, 2, 0, '2015-01-15', '', '', NULL),
(21, 30, 'Pepperoni', 30, 2, 0, '2015-01-15', '', '', NULL),
(22, 30, 'Mozzarella', 30, 2, 0, '2015-01-15', '', '', NULL),
(23, 30, 'Black Olives', 30, 2, 0, '2015-01-15', '', '', NULL),
(24, 30, 'Pineapple', 30, 2, 0, '2015-01-15', '', '', NULL),
(25, 31, 'Shrimp', 30, 2, 0, '2015-01-15', '', '', NULL),
(26, 31, 'Potatoes', 30, 2, 0, '2015-01-15', '', '', NULL),
(27, 0, 'Peanuts', 10020, 2004, 0, '2015-01-15', '', '', NULL),
(28, 33, 'Ice Cream', 30, 4, 0, '2015-01-15', '', '', NULL),
(29, 33, 'Chocolate Chunks', 30, 4, 1, '2015-01-15', '', '', NULL),
(30, 34, 'Cream cheese', 30, 4, 0, '2015-01-15', '', '', NULL),
(31, 0, 'Butter', 30, 4, 0, '2015-02-09', '1', '', NULL),
(32, 35, 'Garlic', 30, 4, 0, '2015-01-15', '', '', NULL),
(33, 0, 'Fresh Basil', 100, 4, 0, '2015-01-19', '', '', NULL),
(34, 35, 'Pine Nuts', 45, 2, 0, '2015-01-15', '', '', NULL),
(35, 35, 'Lettuce', 45, 2, 0, '2015-01-15', '', '', NULL),
(36, 42, 'Cucumber Slices', 45, 2, 0, '2015-01-15', '', '', NULL),
(37, 42, 'Ice', 45, 2, 0, '2015-01-15', '', '', NULL),
(38, 42, 'Gin', 45, 2, 1, '2015-01-15', '', '', NULL),
(39, 42, 'Vodka', 45, 2, 0, '2015-01-15', '', '', NULL),
(40, 42, 'Lemon Juice', 45, 2, 0, '2015-01-15', '', '', NULL),
(41, 42, 'Worcester Sauce', 45, 2, 0, '2015-01-15', '', '', NULL),
(49, 43, 'Pineapple Juice', 45, 2, 0, '2015-01-15', '', '', NULL),
(50, 43, 'Grenadine', 45, 2, 0, '2015-01-15', '', '', NULL),
(51, 43, 'Carribean Rum', 45, 2, 1, '2015-01-15', '', '', NULL),
(52, 43, 'Cheap Gin', 45, 2, 0, '2015-01-15', '', '', NULL),
(53, 43, 'Olive Juice', 45, 2, 0, '2015-03-31', '', 'nou', NULL),
(54, 40, 'Grenadine', 45, 2, 0, '2015-01-15', '', '', NULL),
(55, 40, 'Menthomint Schnapps', 45, 2, 0, '2015-01-15', '', '', NULL),
(56, 41, 'Vanilla Rum', 45, 2, 0, '2015-01-15', '', '', NULL),
(57, 41, 'Strawberry Rum', 45, 2, 0, '2015-01-15', '', '', NULL),
(58, 0, 'Amaretto', 31, 9, 0, '2015-02-24', '1', '', NULL),
(59, 0, 'egg2', 1188, 2, 0, '2015-01-15', '', '', NULL),
(60, 0, 'apple', 7, 10, 0, '2015-02-02', '1', '', NULL),
(61, 0, 'Chiken', 100, 2, 0, '2015-01-21', '', '', NULL),
(62, 0, 'cvcv', 1, 5, 0, '2015-02-11', '1', 'nou', NULL),
(63, 0, 'test', 1, 3, 0, '2015-01-26', '', '', NULL),
(64, 0, 'xyaa', 10000, 10, 0, '2015-01-28', '', '', NULL),
(65, 0, 'paneer', 167, 5, 0, '2015-02-02', '', '', NULL),
(66, 0, 'as', 24, 23, 0, '2015-02-24', '1', '', NULL),
(67, 0, 'rajma', 0, 2, 0, '2015-02-09', '', 'kg', NULL),
(68, 0, 'appp', 128, 12, 0, '2015-02-09', '1', 'nos', NULL),
(69, 0, 'abc', 44, 12, 0, '2015-04-02', '1', 'grm', NULL),
(70, 0, 'akls', 1100, 13, 0, '2015-02-24', '1', 'grm', NULL),
(71, 0, 'k', 100, 10, 0, '2015-02-09', '', 'nou', NULL),
(72, 0, 'newtestb', 11878, 5, 0, '2015-02-10', '1', '', 'bar'),
(73, 0, 'Semi k', 337, 10, 0, '2015-02-10', '1', '', 'bar'),
(74, 0, 'new ', 56, 10, 0, '2015-02-10', '1', '', 'bar'),
(75, 0, 'Oregano', 100, 10, 0, '2015-03-13', '1', 'nou', NULL),
(76, 0, 'collard leaves', 2000, 100, 0, '2015-03-13', '1', 'grm', NULL),
(77, 0, 'Chinese noodles', 0, 100, 0, '2015-03-13', '', 'kg', NULL),
(78, 0, 'Cabbage', 0, 5, 0, '2015-03-13', '', 'kg', NULL),
(79, 0, 'rice', 0, 10, 0, '2015-03-13', '', 'kg', NULL),
(80, 0, 'Dal', 0, 10, 0, '2015-03-13', '', 'kg', NULL),
(81, 0, 'Fish', 0, 100, 0, '2015-03-13', '', 'kg', NULL),
(82, 0, 'Mutton', 0, 10, 0, '2015-03-13', '', 'kg', NULL),
(83, 0, 'Almond', 0, 10, 0, '2015-03-13', '', 'kg', NULL),
(84, 0, 'flour', 0, 10, 0, '2015-03-13', '', 'kg', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ingr_available`
--

CREATE TABLE IF NOT EXISTS `ingr_available` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `ingr_id` int(20) NOT NULL,
  `quantity` int(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=59 ;

--
-- Dumping data for table `ingr_available`
--

INSERT INTO `ingr_available` (`id`, `ingr_id`, `quantity`) VALUES
(48, 68, 120),
(49, 70, 13),
(50, 70, 13),
(51, 70, 13),
(52, 71, 123),
(53, 72, 5),
(54, 140, 0),
(55, 158, 0),
(56, 62, 5),
(57, 53, 2),
(58, 69, 12);

-- --------------------------------------------------------

--
-- Table structure for table `menuitem`
--

CREATE TABLE IF NOT EXISTS `menuitem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `price` float NOT NULL,
  `name` varchar(64) NOT NULL,
  `item_no` int(11) DEFAULT NULL,
  `description` text NOT NULL,
  `type` int(11) NOT NULL,
  `calories` int(11) NOT NULL DEFAULT '500',
  `available` tinyint(1) NOT NULL DEFAULT '1',
  `picturepath` varchar(128) NOT NULL,
  `keywords` varchar(128) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `featured_item` int(10) NOT NULL,
  `rating` int(10) NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `res_category` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=168 ;

--
-- Dumping data for table `menuitem`
--

INSERT INTO `menuitem` (`id`, `price`, `name`, `item_no`, `description`, `type`, `calories`, `available`, `picturepath`, `keywords`, `item_id`, `featured_item`, `rating`, `category`, `res_category`) VALUES
(82, 9500, 'Vegetarian Manchow Soup', 82, 'An Indian-chinese soup, a flavorful blend of\nvegetables', 21, 10, 1, '82.jpg', 'Pepperoni', 21, 1, 0, 'restro', 'BH'),
(83, 9500, 'Chicken Manchow Soup', 83, 'An Indian Chinese chicken soup, a true\ndelight for your soul .', 23, 10, 1, '83.jpg', 'Pepperoni,Chiken', 23, 0, 0, 'restro', 'BH'),
(84, 4000, 'Green Salad', 84, 'Sliced cucumber, onions, tomatoes and carrots', 39, 10, 1, '84.jpg', 'Lemon Juice', 39, 0, 0, 'restro', 'BH'),
(85, 2500, 'Plain Roasted Papad', 85, 'A thin, crisp, plain roasted cracker', 7, 10, 1, '85.jpg', 'Olive Juice', 7, 0, 0, 'restro', 'BH'),
(86, 5000, 'Masala Papad', 86, 'A thin, crisp, fried cracker', 7, 12, 1, '86.jpg', 'Butter', 7, 0, 0, 'restro', 'BH'),
(87, 12000, 'Spring Rolls', 87, 'Savory rolls stuffed with vegetables and deep\nfried', 7, 15, 1, '87.jpg', 'Garlic', 7, 0, 0, 'restro', 'BH'),
(88, 8000, 'French Fries', 88, 'Surprised to see this in an Indian restaurant?\nOur chef makes a very happy exception for our\ntiny tots .', 7, 8, 1, '88.jpg', 'Potatoes', 7, 1, 0, 'restro', 'BH'),
(89, 15000, 'Vegetable Bullets', 89, 'Made with finely chopped vegetables, herbs,\nspices and deep-fried', 7, 7, 1, '89.jpg', 'Ham', 7, 0, 0, 'restro', 'BH'),
(90, 16000, 'Vegetable Manchurian', 90, 'Vegetable balls with a slight Chinese influence\ntossed in various sauce', 7, 9, 1, '90.jpg', 'new ', 7, 0, 0, 'restro', 'BH'),
(91, 18000, 'Chilli Paneer', 91, 'A melt in the mouth starter with Chinese flavors\nand an Indian twist', 7, 12, 1, '91.jpg', 'Pepperoni', 7, 0, 0, 'restro', 'BH'),
(92, 19000, 'Vegetarian Noodles', 92, 'Vegetable noodles is a very popular Indo Chinese dish. I don''t think there will be anyone who does not like noodles.It is so easy to prepare and also tastes good.', 28, 50, 1, '92.jpg', 'Garlic,Chinese noodles', 25, 0, 0, 'restro', 'BH'),
(93, 19000, 'Egg Noodles', 93, 'Boil water in a wide pan with a tsp of oil and 1/2 tsp of salt. When water starts boiling, add the noodles and cook for 4-5 minutes stirring occasionally or as instructed in the pack', 28, 50, 1, '93.jpg', 'Garlic,Chinese noodles', 25, 0, 0, 'restro', 'BH'),
(94, 19000, 'Chicken Noodles', 94, 'The best part of this chicken noodles was the chicken. I marinated the chicken with some soy sauce, oyster sauce, Shaoxing wine, sesame oil, white pepper, and a secret ingredient that made all the difference: Worcestershire sauce', 28, 50, 1, '94.jpg', 'Garlic,Chiken,Chinese noodles', 25, 0, 0, 'restro', 'BH'),
(95, 19000, 'Vegetarian Fried Rice', 95, '\n1K+\n131\nPrint\nIndo Chinese Recipes | Easy Indian Chinese Recipes\nNo, its not Chinese but close :) Its Indo-Chinese and every Indian out there is utterly, shamelessly biased about this. Trust me :). We will argue to the point of going red in the face that this is what Chinese food is all about - err, well at least I did something similar in the beginning of my culinary journey beyond Indian boundaries.\nIndo Chinese Recipes | Easy Indian Chinese Recipes\nAnd this rice is where it all begins. The protein additions, that I specify in the recipe below, are practically unknown back in India (except the meal maker and that''s not added in this rice). But given that I do, to add some nutrition to this rice, I thought I will mention it for the health loving foodies who also enjoy eating all kinds of food. They are optional of course.  Typically, this recipe does not really deserve such a long post, but its the simplest things that at times take so much more detail :)\nIndo Chinese Recipes | Easy Indian Chinese Recipes\nHaving leftover rice is essential for this (Indians always have it - we love our rice) and the texture is important for that perfect fried rice', 27, 50, 1, '95.jpg', 'Garlic,rice', 25, 0, 0, 'restro', 'BH'),
(96, 19000, 'egg fried rice', 96, 'Egg fried rice is a great way to use up leftover rice and vegetables. Learn how to make egg fried rice Indian style.', 27, 50, 1, '96.jpg', 'Garlic,rice', 25, 0, 0, 'restro', 'BH'),
(97, 19000, 'Chicken Fried Rice', 97, 'Amazing chicken fried rice that is better than take out! Ingredients ... I adapted this recipe from my fried rice recipe here. More better than take .', 27, 50, 1, '97.jpg', 'Garlic,rice', 25, 0, 0, 'restro', 'BH'),
(98, 18000, 'vegetable pulao', 98, 'In this recipe, assortment of spices, veggies and rice are first sauted in oil and ghee and then cooked in pressure cooker as you would cook plain rice. ', 27, 50, 1, '98.jpg', 'Garlic,Cabbage,rice', 25, 0, 0, 'restro', 'BH'),
(99, 19000, 'Kheema Pulao', 99, 'Fragrant and spicy minced lamb or goat cooked in range of aromatic spices, and the heavenly flavor of basmati rice cooked together in dum to make this fabulous dish called keema biryani. This is one of my favorite biryani, try this and am sure you will too fall in love with it.', 27, 50, 1, '99.jpg', 'Garlic,rice', 25, 0, 0, 'restro', 'BH'),
(100, 19000, 'Plain Steamed Rice', 100, 'Basmati rice steamed', 27, 50, 1, '100.jpg', 'rice', 25, 0, 0, 'restro', 'BH'),
(101, 9000, 'Zeera Rice', 101, 'Cumin flavored basmati rice', 27, 50, 1, '101.jpg', 'rice', 25, 0, 0, 'restro', 'BH'),
(102, 9000, 'Bagara Rice', 102, 'Coriander and green chillis tossed with flavorful\nbasmati rice', 27, 50, 1, '102.jpg', 'rice', 25, 0, 0, 'restro', 'BH'),
(103, 17000, 'Khatti DaL', 103, 'A simple lentil based dal delicacy made slightly\nsour', 26, 50, 1, '103.jpg', 'Dal', 24, 0, 0, 'restro', 'BH'),
(104, 17000, 'Dal Makhani', 104, 'Whole black lentils and red kidney beans cooked\nwith tantalizing spices', 26, 50, 1, '104.jpg', 'Dal', 24, 0, 0, 'restro', 'BH'),
(105, 17000, 'Lahsooni Dal Tadka', 105, 'Moong dal cooked beautifully and tampered\nwith cumin and galic\nAAllll oouurr', 26, 50, 1, '105.jpg', 'Garlic,Dal', 24, 0, 0, 'restro', 'BH'),
(106, 20000, 'Bengali Fish Curry', 106, 'West Bengal special fish curry with diced Irish\npotatoes and cauliflower', 24, 50, 1, '106.jpg', 'Fish', 24, 0, 0, 'restro', 'BH'),
(107, 20000, 'Fish Masala Curry', 107, 'A curry made from a perfect blend of\ncashew-nuts, almonds, pistachio an garnished\nwith spices', 24, 50, 1, '107.jpg', 'Garlic,Cheap Gin,Fish', 24, 0, 0, 'restro', 'BH'),
(108, 20000, 'Hyderabadi Gosht Ka Khorma', 108, 'Meat served with a tantalizing thick gravy of\ncashew-nut, yogurt and spices', 24, 50, 1, '108.jpg', 'Chiken', 24, 0, 0, 'restro', 'BH'),
(109, 20000, 'Mutton Rogan Josh', 109, 'A Kashmiri delicacy of mutton cubes prepared\nin typical Kashmiri style', 24, 50, 1, '109.jpg', 'Mutton', 24, 0, 0, 'restro', 'BH'),
(110, 20000, 'Achari Gosht', 110, 'Mutton cubes cooked in tangy pickle masala\r\ngravy', 24, 50, 1, '110.jpg', 'Mutton', 24, 0, 0, 'restro', 'BH'),
(111, 8000, 'Stuffed Paratha', 111, 'Paratha stuffed with a spiced mixture of\nmashed potato', 25, 50, 1, '111.jpg', 'Potatoes', 25, 0, 0, 'restro', 'BH'),
(112, 7000, 'Masala Kulcha', 112, 'Naan bread stuffed with potatoes and mild\nspices', 25, 50, 1, '112.jpg', 'Potatoes', 25, 0, 0, 'restro', 'BH'),
(113, 7000, 'Peshwari Naan', 113, 'Naan stuffed with a tasty combo of sultanas\nand almond flavors', 23, 50, 1, '113.jpg', 'Cream cheese,Almond', 23, 0, 0, 'restro', 'BH'),
(114, 6500, 'Garlic Naan', 114, 'Naan flavored with fresh garlic', 25, 50, 1, '114.jpg', 'Garlic', 25, 0, 0, 'restro', 'BH'),
(115, 7500, 'Cheese Naan', 115, 'Cheese stuffed in flour and cooked in tandoor', 25, 50, 1, '115.jpg', 'Cream cheese', 25, 0, 0, 'restro', 'BH'),
(116, 7500, 'Cheese Chilli Garlic Naan', 116, 'Cheese, chilli and slight garlic stuffed in flour\nand cooked in tandoor', 25, 50, 1, '116.jpg', 'Cream cheese,Garlic', 25, 0, 0, 'restro', 'BH'),
(117, 6000, 'Butter Naan', 117, 'Naan layered with butter cooked in tandoor', 25, 50, 1, '117.jpg', 'Butter', 25, 0, 0, 'restro', 'BH'),
(118, 5000, 'Plain Naan', 118, 'Tear shaped refined flour leavened bread', 26, 50, 1, '118.jpg', 'k', 24, 0, 0, 'restro', 'BH'),
(119, 5000, 'Roomali Roti', 119, 'Handkerchief thin bread rolled on hands and\ncooked on an inverted tawa', 25, 50, 1, '119.jpg', 'flour', 25, 0, 0, 'restro', 'BH'),
(121, 20000, 'Kheema-Mutter', 121, 'Finally chopped mutton and green peas\ncooked together with onions and tomatoes', 24, 50, 1, '121.jpg', 'Mutton', 24, 0, 0, 'restro', 'BH'),
(122, 20000, 'Gosht Nazakat', 122, 'Mutton cooked with dal and pumpkin with a\nblended flavor of cinnamon stick', 24, 50, 1, '122.jpg', 'Mutton', 24, 0, 0, 'restro', 'BH'),
(123, 20000, 'Chicken Iguru', 123, 'Spicy chicken curry cooked traditional Andhra\nPradesh style', 24, 50, 1, '123.jpg', 'Chiken', 24, 0, 0, 'restro', 'BH'),
(124, 20000, 'Chicken Kholapuri', 124, 'Bold, and spicy is what defines this chicken curry;\na very aromatic dish that heavily pronounces the\nflavors from the South Western part of India\nKolhapur', 24, 50, 1, '124.jpg', 'Chiken', 24, 0, 0, 'restro', 'BH'),
(125, 19000, 'Kadhai Chicken', 125, 'Chicken cooked in a khadai with an\nalmond-pisctachio base and a tinge of green\npepper', 24, 50, 1, '125.jpg', 'Chiken', 24, 0, 0, 'restro', 'BH'),
(126, 19000, 'Chicken Butter Masala', 126, 'A chicken dish, which is marinated in yogurt and\na mixtureof mind blowing spices', 24, 50, 1, '126.jpg', 'Chiken', 24, 0, 0, 'restro', 'BH'),
(127, 19000, 'Chicken Chat Pata', 127, 'A tangy chicken curry cooked and blended with\nindian spices', 24, 50, 1, '127.jpg', 'Chiken', 24, 0, 0, 'restro', 'BH'),
(128, 19000, 'Chicken Musalam', 128, 'A special chicken dish from kitchen of NIZAMS,\ntopped with cheese with a rich onion and\ntomatoe gravy base', 24, 50, 1, '128.jpg', 'Chiken', 24, 0, 0, 'restro', 'BH'),
(129, 18500, 'Vegetable Malai Kofta', 129, 'Vegetable and paneer kofta curry gram flour\ncoated dumplings simmered in a rich and spicy\ntomato based gravy', 24, 50, 1, '129.jpg', 'paneer', 24, 0, 0, 'restro', 'BH'),
(130, 18500, 'Kadhai Vegetable', 130, 'Colorful medley of vegetables in a rich\ncreamy tomato blend', 24, 50, 1, '130.jpg', 'Cabbage', 24, 0, 0, 'restro', 'BH'),
(131, 18500, 'Palak Paneer', 131, 'A thick curry sauce based on pureed\nspinach', 24, 50, 1, '131.jpg', 'paneer', 24, 0, 0, 'restro', 'BH'),
(132, 18500, 'Kadhai Paneer', 132, 'Paneer cooked in a khadai with an\nalmond-pistachio and a tinge of green pepper', 24, 50, 1, '132.jpg', 'paneer', 24, 0, 0, 'restro', 'BH'),
(133, 18000, 'Paneer Butter Masala', 133, 'A mainstay of Indian cuisine made from thick\ngravy of cream, tomatoes and garnished with\nspices', 24, 50, 1, '133.jpg', 'paneer', 24, 0, 0, 'restro', 'BH'),
(134, 17500, 'Bagara Baigan', 134, 'Spicy aubergines in a thick tamarind gravy\nA Hyderabadi delicacy', 24, 50, 1, '134.jpg', 'k', 24, 0, 0, 'restro', 'BH'),
(135, 22000, 'Tandoori Murgh Half', 135, 'Chicken marinated with exotic spices and\nyogurt cooked over charcoal', 23, 50, 1, '135.jpg', 'Chiken', 23, 0, 0, 'restro', 'BH'),
(137, 37000, 'Tandoori Murgh Full', 137, 'Chicken marinated with exotic spices and\nyogurt cooked over charcoal', 23, 50, 1, '137.jpg', 'Chiken', 23, 0, 0, 'restro', 'BH'),
(138, 19000, 'Hara Bhara Kebab', 138, 'A kebab made with spinach and chicken', 23, 50, 1, '138.jpg', 'Chiken', 23, 0, 0, 'restro', 'BH'),
(139, 19000, 'Reshmi Kebab', 139, 'Smooth as silk kebabs served after prolonged\nmarinating and light braising of chicken, cooked\nover charcoal', 23, 50, 1, '139.jpg', 'Chiken', 23, 0, 0, 'restro', 'BH'),
(140, 19000, 'Tangdi Kebab', 140, 'Chicken drumsticks marinated in fresh cream,\nyogurt, exotic spices and marinated to perfection', 23, 50, 1, '', 'Chiken', 23, 0, 0, 'restro', 'BH'),
(141, 19000, 'Irani Kebab', 141, 'Chicken chunks marinated in exotic spices and a\ntinge of cheese an cream cooked in a tandoor', 23, 50, 1, '141.jpg', 'Chiken', 23, 0, 0, 'restro', 'BH'),
(142, 20000, 'Fish Tikka', 142, 'Fish chunks marinated and cooked over\ncharcoal to perfection', 23, 50, 1, '142.jpg', 'Chiken', 23, 0, 0, 'restro', 'BH'),
(143, 20000, 'Fish Tikka', 143, 'Fish chunks marinated and cooked over\ncharcoal to perfection', 23, 50, 1, '143.jpg', 'Chiken', 23, 0, 0, 'restro', 'BH'),
(144, 45000, 'Non-Vegetarian Mixed Platter', 144, 'A mouth-watering combination of various\nnon-vegetarian kebabs cooked in Tandoor/fried.\n(serves 4- 5 people)', 23, 50, 1, '144.jpg', 'Chiken,Fish,Mutton', 23, 0, 0, 'restro', 'BH'),
(145, 32000, 'Mixed Vegetable Platter', 145, 'A mouth-watering combination of tossed, fried\nand vegetable kebabs cooked over live charcoal\nA true delight for vegetarians! Serves 4-5 people', 22, 50, 1, '145.jpg', 'Potatoes,Cabbage', 23, 0, 0, 'restro', 'BH'),
(146, 18000, 'Chicken 65', 146, 'Most favorite and popular Hyderabad snack\nwhich comprises of chicken being Cooked and\nmarinated with spices of the region beware of\nthe tantalizing chilli!', 7, 10, 1, '146.jpg', 'Chiken', 7, 0, 0, 'restro', 'BH'),
(147, 18000, 'Hara Bhara Kebab', 147, 'A kebab made with spinach, Irish potatoes\nand peas', 22, 50, 1, '147.jpg', 'Cabbage', 23, 0, 0, 'restro', 'BH'),
(148, 19000, 'Chilli Chicken', 148, 'chicken being Cooked and\nmarinated with spices of the region beware of\nthe tantalizing chilli!', 7, 20, 1, '148.jpg', 'Chiken', 7, 0, 0, 'restro', 'BH'),
(149, 18000, 'Paneer Tikka Kebab', 149, 'Cubes of paneer, onion and capsicum and\ntomatoes marinated in exotic spices, yogurt\nand cooked to perfection over charcoal', 22, 50, 1, '149.jpg', 'paneer,Cabbage', 23, 0, 0, 'restro', 'BH'),
(150, 18000, 'Chicken Drumstick', 150, 'Tender cooked chicken drumsticks', 7, 50, 1, '150.jpg', 'Chiken', 7, 0, 0, 'restro', 'BH'),
(151, 18000, 'Pepper Chicken', 151, 'A tempting treat which will take your taste buds\nfor an exciting ride!', 7, 50, 1, '151.jpg', 'Chiken', 7, 0, 0, 'restro', 'BH'),
(152, 19000, 'Apollo Fish', 152, 'Apollo fish is a Hyderabad original, the flavor of\nthe dish comes from ginger, cayenne pepper,\nmustard powder and vinegar', 7, 50, 1, '152.jpg', 'Fish', 7, 0, 0, 'restro', 'BH'),
(153, 19500, 'Mutton 65', 153, 'Kebabs from our Tandoor', 7, 50, 1, '153.jpg', 'Mutton', 7, 0, 0, 'restro', 'BH'),
(155, 19000, 'Fish Amristari', 155, 'A mouthwatering fried fish prepared with lots of\nspices', 7, 2, 1, '155.jpg', 'Fish', 7, 0, 0, 'restro', 'BH'),
(156, 19000, 'Test', 156, 'fsaghfd', 35, 50, 1, '', 'Semi k', 35, 0, 0, 'restro', 'BH'),
(157, 12, 'test again', 157, 'fdg', 35, 50, 1, '', 'Nuts', 35, 0, 0, 'restro', 'BH'),
(158, 15, 'tes thre', 111, 'hdfgh', 35, 54, 1, '', 'Semi k', 35, 0, 0, 'restro', 'BH'),
(159, 5643, 'fgjhk', 14, 'kjhkjh', 34, 56, 1, '', 'Cherriess', 34, 0, 0, 'restro', 'BH'),
(160, 27000, 'Vegetarian Biryani', 1, 'The most exotic rice and meat slowly cooked together for an hour on dum.', 38, 20, 1, '160.jpg', 'Chiken', 38, 0, 0, 'restro', 'BH'),
(161, 27000, 'Egg Biryani', 2, 'The biryani is not just a dish, its hand crafted excellence', 38, 200, 1, '161.jpg', 'rice', 38, 0, 0, 'restro', 'BH'),
(162, 27000, 'Chicken Biryani', 3, 'The most exotic rice and meat slowly cooked together for an hour on dum.', 38, 100, 1, '162.jpg', 'rice', 38, 0, 0, 'restro', 'BH'),
(163, 27000, 'Mutton Biryani', 4, 'The most exotic rice and meat slowly cooked together for an hour on dum.', 38, 100, 1, '163.jpg', 'rice', 38, 0, 0, 'restro', 'BH'),
(164, 27000, 'Fish Biryani', 5, 'The most exotic rice and meat slowly cooked together for an hour on dum.', 38, 100, 1, '164.jpg', 'rice,Mutton', 38, 0, 0, 'restro', 'BH'),
(165, 2500, 'Extra Salad & Raita', 6, 'Extra Salad & Raita', 38, 250, 1, '165.jpg', 'Nuts', 38, 0, 0, 'restro', 'BH'),
(166, 8100, 'Double ka meetha', 10, 'A dessert of Hyderabad decent made from hot crisp fried roundels of bread, soaked in saffron and cardamom-flavored syrup', 42, 100, 1, '166.jpg', 'flour', 42, 0, 0, 'restro', 'BH'),
(167, 8100, 'Malpua', 66, 'A sweet Indian mini pancake', 42, 100, 1, '167.jpg', 'flour', 42, 0, 0, 'restro', 'BH');

-- --------------------------------------------------------

--
-- Table structure for table `menutype`
--

CREATE TABLE IF NOT EXISTS `menutype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype_name` varchar(255) NOT NULL,
  `menu_type` varchar(100) NOT NULL,
  `menu_desc` varchar(200) NOT NULL,
  `menu_order` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=43 ;

--
-- Dumping data for table `menutype`
--

INSERT INTO `menutype` (`id`, `menutype_name`, `menu_type`, `menu_desc`, `menu_order`) VALUES
(7, 'STARTERS', '1', 'Surprised to see this in an Indian restaurant?\r\nOur chef makes a very happy exception for our\r\ntiny tots', 4),
(21, 'SOUPS', '1', 'An Indian soup, a true\r\ndelight for your soul .', 2),
(23, 'TANDOOR+KEBABS', '1', 'Smooth as silk kebabs served after prolonged\r\nmarinating and light braising of chicken, cooked\r\nover charcoal', 6),
(24, 'CURRIES+DALS', '1', 'Mixed Vegetable curry from NIZAM kitchen , Spicy chicken curry cooked traditional Andhra\r\nPradesh style', 9),
(25, 'ROTIS+RICE+NOODLES', '1', 'Roti cooked in tandoor', 10),
(29, 'COFFEE', '2', 'df', 1),
(30, 'smoothie milkshake', '2', 'dsf', 2),
(31, 'fresh fruit juice', '2', 'dfdf', 3),
(32, 'Beer', '2', 'df', 4),
(33, 'spirits', '2', 'sdf', 5),
(34, 'Cocktail', '2', 'sdf', 6),
(35, 'Mocktail', '2', 'dsf', 7),
(38, 'BIRYANI', '1', 'Special Biryani', 1),
(39, 'SALAD', '1', 'Special Salad', 3),
(40, 'BURGER+SANDWICHES', '1', 'Special', 5),
(41, 'PASTA+WRAPS', '1', 'Special', 7),
(42, 'DESSERTS', '1', 'Special', 11);

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE IF NOT EXISTS `notification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` text NOT NULL,
  `acceptby` int(11) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `type` int(11) NOT NULL DEFAULT '0',
  `orderid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `acceptby` (`acceptby`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=362 ;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`id`, `description`, `acceptby`, `timestamp`, `type`, `orderid`) VALUES
(134, 'SET FOR DELIVERY', NULL, '2015-01-05 02:02:08', 0, 299),
(135, 'SET FOR DELIVERY', NULL, '2015-01-05 02:02:22', 0, 302),
(136, 'SET FOR DELIVERY', NULL, '2015-01-05 02:50:32', 0, 303),
(137, 'SET FOR DELIVERY', NULL, '2015-01-05 04:01:46', 0, 305),
(138, 'SET FOR DELIVERY', NULL, '2015-01-05 04:23:44', 0, 305),
(139, 'SET FOR DELIVERY', NULL, '2015-01-05 05:31:54', 0, 311),
(140, 'SET FOR DELIVERY', NULL, '2015-01-05 08:20:07', 0, 312),
(141, 'SET FOR DELIVERY', NULL, '2015-01-05 09:04:36', 0, 312),
(142, 'SET FOR DELIVERY', NULL, '2015-01-05 09:51:36', 0, 26),
(143, 'SET FOR DELIVERY', NULL, '2015-01-06 02:11:39', 0, 315),
(144, 'SET FOR DELIVERY', NULL, '2015-01-06 03:09:00', 0, 315),
(145, 'SET FOR DELIVERY', NULL, '2015-01-07 02:48:33', 0, 357),
(146, 'SET FOR DELIVERY', NULL, '2015-01-07 03:45:38', 0, 357),
(147, 'SET FOR DELIVERY', NULL, '2015-01-07 03:46:47', 0, 357),
(148, 'SET FOR DELIVERY', NULL, '2015-01-07 04:22:08', 0, 358),
(149, 'SET FOR DELIVERY', NULL, '2015-01-07 04:49:11', 0, 360),
(150, 'SET FOR DELIVERY', NULL, '2015-01-07 04:59:40', 0, 361),
(151, 'SET FOR DELIVERY', NULL, '2015-01-07 05:00:38', 0, 358),
(152, 'SET FOR DELIVERY', NULL, '2015-01-07 07:59:26', 0, 363),
(153, 'SET FOR DELIVERY', NULL, '2015-01-07 07:59:28', 0, 359),
(154, 'SET FOR DELIVERY', NULL, '2015-01-07 07:59:41', 0, 27),
(155, 'SET FOR DELIVERY', NULL, '2015-01-07 07:59:46', 0, 365),
(156, 'SET FOR DELIVERY', NULL, '2015-01-07 08:05:29', 0, 364),
(157, 'SET FOR DELIVERY', NULL, '2015-01-07 08:51:52', 0, 364),
(158, 'SET FOR DELIVERY', NULL, '2015-01-07 09:02:24', 0, 362),
(159, 'SET FOR DELIVERY', NULL, '2015-01-07 09:03:10', 0, 364),
(160, 'SET FOR DELIVERY', NULL, '2015-01-07 09:12:25', 0, 364),
(161, 'SET FOR DELIVERY', NULL, '2015-01-08 01:37:40', 0, 50),
(162, 'SET FOR DELIVERY', NULL, '2015-01-08 01:38:10', 0, 50),
(163, 'SET FOR DELIVERY', NULL, '2015-01-08 01:46:37', 0, 27),
(164, 'SET FOR DELIVERY', NULL, '2015-01-08 01:47:59', 0, 27),
(165, 'SET FOR DELIVERY', NULL, '2015-01-08 01:53:38', 0, 366),
(166, 'SET FOR DELIVERY', NULL, '2015-01-08 02:27:04', 0, 28),
(167, 'SET FOR DELIVERY', NULL, '2015-01-08 03:40:32', 0, 28),
(168, 'SET FOR DELIVERY', NULL, '2015-01-08 03:43:13', 0, 28),
(169, 'SET FOR DELIVERY', NULL, '2015-01-08 03:44:34', 0, 28),
(170, 'SET FOR DELIVERY', NULL, '2015-01-08 03:45:53', 0, 28),
(171, 'SET FOR DELIVERY', NULL, '2015-01-09 01:34:40', 0, 369),
(172, 'SET FOR DELIVERY', NULL, '2015-01-10 08:57:37', 0, 381),
(173, 'SET FOR DELIVERY', NULL, '2015-01-15 07:49:58', 0, 388),
(174, 'SET FOR DELIVERY', NULL, '2015-01-16 05:27:07', 0, 390),
(175, 'SET FOR DELIVERY', NULL, '2015-01-17 00:57:05', 0, 392),
(176, 'SET FOR DELIVERY', NULL, '2015-01-17 01:33:54', 0, 60),
(177, 'SET FOR DELIVERY', NULL, '2015-01-17 01:33:56', 0, 27),
(178, 'SET FOR DELIVERY', NULL, '2015-01-17 01:33:58', 0, 66),
(179, 'SET FOR DELIVERY', NULL, '2015-01-17 01:37:44', 0, 60),
(180, 'SET FOR DELIVERY', NULL, '2015-01-17 01:38:10', 0, 31),
(181, 'SET FOR DELIVERY', NULL, '2015-01-17 03:23:58', 0, 66),
(182, 'SET FOR DELIVERY', NULL, '2015-01-19 00:32:10', 0, 395),
(183, 'SET FOR DELIVERY', NULL, '2015-01-20 09:42:49', 0, 26),
(184, 'SET FOR DELIVERY', NULL, '2015-01-20 09:48:54', 0, 29),
(185, 'SET FOR DELIVERY', NULL, '2015-01-20 09:50:55', 0, 27),
(186, 'SET FOR DELIVERY', NULL, '2015-01-20 09:54:28', 0, 30),
(187, 'SET FOR DELIVERY', NULL, '2015-01-20 09:54:42', 0, 26),
(188, 'SET FOR DELIVERY', NULL, '2015-01-20 09:54:53', 0, 29),
(189, 'SET FOR DELIVERY', NULL, '2015-01-20 09:54:59', 0, 398),
(190, 'SET FOR DELIVERY', NULL, '2015-01-21 01:00:38', 0, 30),
(191, 'SET FOR DELIVERY', NULL, '2015-01-21 01:00:47', 0, 30),
(192, 'SET FOR DELIVERY', NULL, '2015-01-21 01:00:53', 0, 27),
(193, 'SET FOR DELIVERY', NULL, '2015-01-21 01:00:55', 0, 26),
(194, 'SET FOR DELIVERY', NULL, '2015-01-21 01:01:09', 0, 29),
(195, 'SET FOR DELIVERY', NULL, '2015-01-21 01:11:39', 0, 26),
(196, 'SET FOR DELIVERY', NULL, '2015-01-21 01:11:57', 0, 27),
(197, 'SET FOR DELIVERY', NULL, '2015-01-21 01:29:20', 0, 0),
(198, 'SET FOR DELIVERY', NULL, '2015-01-21 01:29:22', 0, 0),
(199, 'SET FOR DELIVERY', NULL, '2015-01-21 01:29:29', 0, 0),
(200, 'SET FOR DELIVERY', NULL, '2015-01-21 01:30:48', 0, 0),
(201, 'SET FOR DELIVERY', NULL, '2015-01-21 01:31:26', 0, 0),
(202, 'SET FOR DELIVERY', NULL, '2015-01-21 01:32:00', 0, 0),
(203, 'SET FOR DELIVERY', NULL, '2015-01-21 01:32:01', 0, 0),
(204, 'SET FOR DELIVERY', NULL, '2015-01-21 01:32:03', 0, 0),
(205, 'SET FOR DELIVERY', NULL, '2015-01-21 01:32:30', 0, 0),
(206, 'SET FOR DELIVERY', NULL, '2015-01-21 01:32:55', 0, 33),
(207, 'SET FOR DELIVERY', NULL, '2015-01-21 01:34:36', 0, 27),
(208, 'SET FOR DELIVERY', NULL, '2015-01-21 01:35:24', 0, 33),
(209, 'SET FOR DELIVERY', NULL, '2015-01-21 01:35:28', 0, 28),
(210, 'SET FOR DELIVERY', NULL, '2015-01-21 01:35:33', 0, 27),
(211, 'SET FOR DELIVERY', NULL, '2015-01-23 04:44:05', 0, 426),
(212, 'SET FOR DELIVERY', NULL, '2015-01-30 00:17:14', 0, 0),
(213, 'SET FOR DELIVERY', NULL, '2015-01-30 00:17:19', 0, 0),
(214, 'SET FOR DELIVERY', NULL, '2015-01-30 00:17:26', 0, 0),
(215, 'SET FOR DELIVERY', NULL, '2015-01-30 00:17:32', 0, 0),
(216, 'SET FOR DELIVERY', NULL, '2015-01-30 00:31:23', 0, 0),
(217, 'SET FOR DELIVERY', NULL, '2015-01-30 00:31:44', 0, 0),
(218, 'SET FOR DELIVERY', NULL, '2015-01-30 00:32:04', 0, 0),
(219, 'SET FOR DELIVERY', NULL, '2015-01-30 00:32:08', 0, 0),
(220, 'SET FOR DELIVERY', NULL, '2015-01-30 00:34:09', 0, 0),
(221, 'SET FOR DELIVERY', NULL, '2015-01-30 00:36:44', 0, 0),
(222, 'SET FOR DELIVERY', NULL, '2015-01-30 00:40:11', 0, 0),
(223, 'SET FOR DELIVERY', NULL, '2015-01-30 00:40:13', 0, 0),
(224, 'SET FOR DELIVERY', NULL, '2015-01-30 00:43:17', 0, 28),
(225, 'SET FOR DELIVERY', NULL, '2015-01-30 03:13:24', 0, 28),
(226, 'SET FOR DELIVERY', NULL, '2015-01-30 03:13:33', 0, 28),
(227, 'SET FOR DELIVERY', NULL, '2015-01-30 03:14:56', 0, 28),
(228, 'SET FOR DELIVERY', NULL, '2015-01-30 04:15:37', 0, 473),
(229, 'SET FOR DELIVERY', NULL, '2015-01-30 04:22:12', 0, 29),
(230, 'SET FOR DELIVERY', NULL, '2015-01-30 06:01:50', 0, 70),
(231, 'SET FOR DELIVERY', NULL, '2015-01-30 06:01:53', 0, 30),
(232, 'SET FOR DELIVERY', NULL, '2015-01-30 06:01:59', 0, 28),
(233, 'SET FOR DELIVERY', NULL, '2015-01-30 06:05:40', 0, 51),
(234, 'SET FOR DELIVERY', NULL, '2015-01-30 06:05:43', 0, 52),
(235, 'SET FOR DELIVERY', NULL, '2015-01-30 06:05:44', 0, 52),
(236, 'SET FOR DELIVERY', NULL, '2015-01-30 06:44:15', 0, 28),
(237, 'SET FOR DELIVERY', NULL, '2015-01-30 06:44:16', 0, 52),
(240, 'SET FOR DELIVERY', NULL, '2015-02-02 04:00:02', 0, 33),
(241, 'SET FOR DELIVERY', NULL, '2015-02-02 04:00:35', 0, 30),
(242, 'SET FOR DELIVERY', NULL, '2015-02-02 04:09:41', 0, 28),
(243, 'SET FOR DELIVERY', NULL, '2015-02-02 04:09:52', 0, 69),
(244, 'SET FOR DELIVERY', NULL, '2015-02-03 09:35:03', 0, 28),
(245, 'SET FOR DELIVERY', NULL, '2015-02-03 09:36:08', 0, 33),
(246, 'SET FOR DELIVERY', NULL, '2015-02-03 09:36:09', 0, 70),
(247, 'SET FOR DELIVERY', NULL, '2015-02-04 05:06:34', 0, 27),
(248, 'SET FOR DELIVERY', NULL, '2015-02-04 05:06:50', 0, 26),
(249, 'SET FOR DELIVERY', NULL, '2015-02-04 08:21:06', 0, 33),
(250, 'SET FOR DELIVERY', NULL, '2015-02-05 04:54:48', 0, 26),
(251, 'SET FOR DELIVERY', NULL, '2015-02-05 06:50:37', 0, 26),
(252, 'SET FOR DELIVERY', NULL, '2015-02-05 09:32:31', 0, 26),
(253, 'SET FOR DELIVERY', NULL, '2015-02-05 09:32:32', 0, 27),
(254, 'SET FOR DELIVERY', NULL, '2015-02-05 09:32:33', 0, 28),
(255, 'SET FOR DELIVERY', NULL, '2015-02-05 09:32:34', 0, 29),
(256, 'SET FOR DELIVERY', NULL, '2015-02-05 09:32:36', 0, 33),
(257, 'SET FOR DELIVERY', NULL, '2015-02-05 09:32:37', 0, 58),
(258, 'SET FOR DELIVERY', NULL, '2015-02-05 09:41:48', 0, 26),
(259, 'SET FOR DELIVERY', NULL, '2015-02-05 09:42:26', 0, 27),
(260, 'SET FOR DELIVERY', NULL, '2015-02-05 09:42:37', 0, 28),
(261, 'SET FOR DELIVERY', NULL, '2015-02-05 09:42:41', 0, 29),
(262, 'SET FOR DELIVERY', NULL, '2015-02-05 09:43:43', 0, 33),
(263, 'SET FOR DELIVERY', NULL, '2015-02-06 07:08:37', 0, 26),
(264, 'SET FOR DELIVERY', NULL, '2015-02-06 07:08:38', 0, 27),
(265, 'SET FOR DELIVERY', NULL, '2015-02-06 07:08:39', 0, 28),
(266, 'SET FOR DELIVERY', NULL, '2015-02-06 07:08:40', 0, 29),
(267, 'SET FOR DELIVERY', NULL, '2015-02-06 07:08:42', 0, 33),
(268, 'SET FOR DELIVERY', NULL, '2015-02-06 07:08:44', 0, 58),
(269, 'SET FOR DELIVERY', NULL, '2015-02-06 07:09:09', 0, 26),
(270, 'SET FOR DELIVERY', NULL, '2015-02-06 07:09:24', 0, 27),
(271, 'SET FOR DELIVERY', NULL, '2015-02-06 10:35:02', 0, 28),
(272, 'SET FOR DELIVERY', NULL, '2015-02-06 10:35:07', 0, 28),
(273, 'SET FOR DELIVERY', NULL, '2015-02-06 10:35:11', 0, 29),
(274, 'SET FOR DELIVERY', NULL, '2015-02-06 10:35:12', 0, 29),
(275, 'SET FOR DELIVERY', NULL, '2015-02-06 10:35:14', 0, 29),
(276, 'SET FOR DELIVERY', NULL, '2015-02-06 10:35:16', 0, 29),
(277, 'SET FOR DELIVERY', NULL, '2015-02-06 10:35:17', 0, 29),
(278, 'SET FOR DELIVERY', NULL, '2015-02-09 00:43:09', 0, 26),
(279, 'SET FOR DELIVERY', NULL, '2015-02-09 00:43:31', 0, 69),
(280, 'SET FOR DELIVERY', NULL, '2015-02-09 00:44:10', 0, 70),
(281, 'SET FOR DELIVERY', NULL, '2015-02-11 00:51:07', 0, 26),
(282, 'SET FOR DELIVERY', NULL, '2015-02-11 00:53:45', 0, 27),
(283, 'SET FOR DELIVERY', NULL, '2015-02-11 00:54:29', 0, 30),
(284, 'SET FOR DELIVERY', NULL, '2015-02-11 06:47:01', 0, 28),
(285, 'SET FOR DELIVERY', NULL, '2015-02-11 06:48:20', 0, 0),
(286, 'SET FOR DELIVERY', NULL, '2015-02-11 06:48:23', 0, 0),
(287, 'SET FOR DELIVERY', NULL, '2015-02-11 06:48:27', 0, 0),
(288, 'SET FOR DELIVERY', NULL, '2015-02-11 06:48:28', 0, 0),
(289, 'SET FOR DELIVERY', NULL, '2015-02-11 06:48:30', 0, 0),
(290, 'SET FOR DELIVERY', NULL, '2015-02-11 06:51:18', 0, 0),
(291, 'SET FOR DELIVERY', NULL, '2015-02-11 06:51:53', 0, 0),
(292, 'SET FOR DELIVERY', NULL, '2015-02-11 06:51:55', 0, 0),
(293, 'SET FOR DELIVERY', NULL, '2015-02-11 06:51:57', 0, 0),
(294, 'SET FOR DELIVERY', NULL, '2015-02-11 06:51:59', 0, 0),
(295, 'SET FOR DELIVERY', NULL, '2015-02-11 06:52:00', 0, 0),
(296, 'SET FOR DELIVERY', NULL, '2015-02-11 06:52:03', 0, 0),
(297, 'SET FOR DELIVERY', NULL, '2015-02-11 06:52:44', 0, 0),
(298, 'SET FOR DELIVERY', NULL, '2015-02-11 06:52:46', 0, 0),
(299, 'SET FOR DELIVERY', NULL, '2015-02-11 06:52:51', 0, 0),
(300, 'SET FOR DELIVERY', NULL, '2015-02-11 06:52:54', 0, 0),
(301, 'SET FOR DELIVERY', NULL, '2015-02-11 06:53:50', 0, 0),
(302, 'SET FOR DELIVERY', NULL, '2015-02-11 06:53:57', 0, 0),
(303, 'SET FOR DELIVERY', NULL, '2015-02-11 06:54:00', 0, 0),
(304, 'SET FOR DELIVERY', NULL, '2015-02-11 06:54:03', 0, 0),
(305, 'SET FOR DELIVERY', NULL, '2015-02-11 06:54:04', 0, 0),
(306, 'SET FOR DELIVERY', NULL, '2015-02-11 06:54:04', 0, 0),
(307, 'SET FOR DELIVERY', NULL, '2015-02-11 06:54:04', 0, 0),
(308, 'SET FOR DELIVERY', NULL, '2015-02-11 06:54:06', 0, 0),
(309, 'SET FOR DELIVERY', NULL, '2015-02-11 06:54:07', 0, 0),
(310, 'SET FOR DELIVERY', NULL, '2015-02-11 06:54:07', 0, 0),
(311, 'SET FOR DELIVERY', NULL, '2015-02-11 06:55:25', 0, 0),
(312, 'SET FOR DELIVERY', NULL, '2015-02-11 06:55:30', 0, 26),
(313, 'SET FOR DELIVERY', NULL, '2015-02-11 06:55:32', 0, 26),
(314, 'SET FOR DELIVERY', NULL, '2015-02-11 07:08:48', 0, 0),
(315, 'SET FOR DELIVERY', NULL, '2015-02-11 07:09:05', 0, 0),
(316, 'SET FOR DELIVERY', NULL, '2015-02-11 07:09:58', 0, 28),
(317, 'SET FOR DELIVERY', NULL, '2015-02-11 07:13:51', 0, 0),
(318, 'SET FOR DELIVERY', NULL, '2015-02-11 07:13:59', 0, 0),
(319, 'SET FOR DELIVERY', NULL, '2015-02-11 07:14:30', 0, 28),
(320, 'SET FOR DELIVERY', NULL, '2015-02-11 07:15:13', 0, 515),
(321, 'SET FOR DELIVERY', NULL, '2015-02-11 07:16:23', 0, 512),
(322, 'SET FOR DELIVERY', NULL, '2015-02-11 07:16:34', 0, 516),
(323, 'SET FOR DELIVERY', NULL, '2015-02-11 07:16:44', 0, 517),
(324, 'SET FOR DELIVERY', NULL, '2015-02-11 07:31:25', 0, 516),
(325, 'SET FOR DELIVERY', NULL, '2015-02-11 07:31:47', 0, 515),
(326, 'SET FOR DELIVERY', NULL, '2015-02-16 03:52:54', 0, 530),
(327, 'SET FOR DELIVERY', NULL, '2015-02-16 03:58:12', 0, 531),
(328, 'SET FOR DELIVERY', NULL, '2015-02-16 04:07:15', 0, 531),
(329, 'SET FOR DELIVERY', NULL, '2015-02-16 04:53:02', 0, 532),
(330, 'SET FOR DELIVERY', NULL, '2015-02-16 04:55:37', 0, 532),
(331, 'SET FOR DELIVERY', NULL, '2015-02-16 05:10:35', 0, 532),
(332, 'SET FOR DELIVERY', NULL, '2015-02-16 05:48:51', 0, 532),
(333, 'SET FOR DELIVERY', NULL, '2015-02-21 04:47:09', 0, 562),
(334, 'SET FOR DELIVERY', NULL, '2015-03-26 08:54:01', 0, 731),
(335, 'SET FOR DELIVERY', NULL, '2015-03-26 08:54:02', 0, 734),
(336, 'SET FOR DELIVERY', NULL, '2015-03-26 09:56:17', 0, 732),
(337, 'SET FOR DELIVERY', NULL, '2015-03-26 09:56:18', 0, 733),
(338, 'SET FOR DELIVERY', NULL, '2015-03-26 09:56:20', 0, 734),
(339, 'SET FOR DELIVERY', NULL, '2015-04-01 10:41:46', 0, 735),
(340, 'SET FOR DELIVERY', NULL, '2015-04-01 10:42:41', 0, 737),
(341, 'SET FOR DELIVERY', NULL, '2015-04-01 10:43:10', 0, 738),
(342, 'SET FOR DELIVERY', NULL, '2015-04-01 10:45:52', 0, 739),
(343, 'SET FOR DELIVERY', NULL, '2015-04-02 01:35:51', 0, 741),
(344, 'SET FOR DELIVERY', NULL, '2015-04-02 01:35:53', 0, 742),
(345, 'SET FOR DELIVERY', NULL, '2015-04-02 01:44:44', 0, 743),
(346, 'SET FOR DELIVERY', NULL, '2015-04-02 01:44:59', 0, 744),
(347, 'SET FOR DELIVERY', NULL, '2015-04-02 01:46:18', 0, 745),
(348, 'SET FOR DELIVERY', NULL, '2015-04-02 01:46:50', 0, 746),
(349, 'SET FOR DELIVERY', NULL, '2015-04-02 01:48:06', 0, 743),
(350, 'SET FOR DELIVERY', NULL, '2015-04-02 01:49:59', 0, 744),
(351, 'SET FOR DELIVERY', NULL, '2015-04-02 02:07:45', 0, 746),
(352, 'SET FOR DELIVERY', NULL, '2015-04-02 02:07:52', 0, 747),
(353, 'SET FOR DELIVERY', NULL, '2015-04-02 02:08:45', 0, 745),
(354, 'SET FOR DELIVERY', NULL, '2015-04-02 02:09:15', 0, 745),
(355, 'SET FOR DELIVERY', NULL, '2015-04-02 02:09:19', 0, 747),
(356, 'SET FOR DELIVERY', NULL, '2015-04-02 02:09:22', 0, 746),
(357, 'SET FOR DELIVERY', NULL, '2015-04-02 02:09:24', 0, 744),
(358, 'SET FOR DELIVERY', NULL, '2015-04-02 02:09:25', 0, 743),
(359, 'SET FOR DELIVERY', NULL, '2016-03-04 16:16:02', 0, 750),
(360, 'SET FOR DELIVERY', NULL, '2016-03-08 17:26:28', 0, 751),
(361, 'SET FOR DELIVERY', NULL, '2016-03-08 18:40:55', 0, 753);

-- --------------------------------------------------------

--
-- Table structure for table `notification_log`
--

CREATE TABLE IF NOT EXISTS `notification_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `notifications` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `tablenumber` int(11) DEFAULT NULL,
  `customer_unique_id` varchar(255) DEFAULT NULL,
  `waiter` varchar(255) DEFAULT NULL,
  `staff` varchar(255) DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  `is_watch` tinyint(4) DEFAULT NULL,
  `text` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2412 ;

--
-- Dumping data for table `notification_log`
--

INSERT INTO `notification_log` (`id`, `notifications`, `created_at`, `order_id`, `tablenumber`, `customer_unique_id`, `waiter`, `staff`, `type_id`, `is_watch`, `text`) VALUES
(1426, 'Customer LoggedIn', '2015-01-31 10:37:32', 0, 15, '1234567890_15', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>1234567890</span> come on Table <span class=''label label-info label-as-badge''>15</span>'),
(1427, 'Waiter Called', '2015-01-31 10:40:52', 0, 7, 'dsgg_7', 'harry', 'N/A', 2, 1, '<div style=''color:black;''> Customer: <span  class=''label label-success label-as-badge''>dsgg</span> on Table: <span class=''label label-info label-as-badge''> 7</span> call Waiter: <span class=''label label-primary label-as-badge''>harry</span></div>'),
(1428, 'Customer LoggedIn', '2015-01-31 10:47:01', 0, 4, 'dfhddhh_4', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>dfhddhh</span> come on Table <span class=''label label-info label-as-badge''>4</span>'),
(1429, 'Customer LoggedIn', '2015-01-31 10:53:22', 0, 7, 'fghgh_7', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>fghgh</span> come on Table <span class=''label label-info label-as-badge''>7</span>'),
(1430, 'Staff LoggedIn', '2015-01-31 10:55:04', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-01-31 10:55:04</span></div>'),
(1431, 'Customer LoggedIn', '2015-01-31 10:56:16', 0, 3, 'fgh_3', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>fgh</span> come on Table <span class=''label label-info label-as-badge''>3</span>'),
(1432, 'Order Placed', '2015-01-31 10:56:28', 482, 3, 'fgh_3', 'harry jainy', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>fgh</span> Place Order On Table <span class=''label label-info label-as-badge''>3</span>'),
(1433, 'Staff LoggedIn', '2015-01-31 10:56:43', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-01-31 10:56:43</span></div>'),
(1434, 'Customer LoggedIn', '2015-01-31 10:57:26', 0, 4, 'hhgg_4', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>hhgg</span> come on Table <span class=''label label-info label-as-badge''>4</span>'),
(1435, 'Customer LoggedIn', '2015-01-31 11:02:06', 0, 4, 'dfggd_4', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>dfggd</span> come on Table <span class=''label label-info label-as-badge''>4</span>'),
(1436, 'Customer LoggedIn', '2015-01-31 11:02:42', 0, 1, 'dffdg_1', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>dffdg</span> come on Table <span class=''label label-info label-as-badge''>1</span>'),
(1437, 'Customer LoggedIn', '2015-01-31 11:03:44', 0, 1, '3443434343_1', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>3443434343</span> come on Table <span class=''label label-info label-as-badge''>1</span>'),
(1438, 'Waiter Called', '2015-01-31 11:12:25', 0, 1, '3443434343_1', 'bhumin bhumin', 'N/A', 2, 1, '<div> Customer: <span  class=''label label-success label-as-badge''>3443434343</span> on Table: <span class=''label label-info label-as-badge''> 1</span> call Waiter: <span  class=''label label-primery label-as-badge''>bhumin bhumin</span></div>'),
(1439, 'Waiter Called', '2015-01-31 11:13:25', 0, 1, '3443434343_1', 'bhumin bhumin', 'N/A', 2, 1, '<div> Customer: <span  class=''label label-success label-as-badge''>3443434343</span> on Table: <span class=''label label-info label-as-badge''> 1</span> call Waiter: <span  class=''label label-primery label-as-badge''>bhumin bhumin</span></div>'),
(1440, 'Waiter Called', '2015-01-31 11:13:56', 0, 1, '3443434343_1', 'bhumin bhumin', 'N/A', 2, 1, '<div> Customer: <span  class=''label label-success label-as-badge''>3443434343</span> on Table: <span class=''label label-info label-as-badge''> 1</span> call Waiter: <span  class=''label label-primery label-as-badge''>bhumin bhumin</span></div>'),
(1441, 'Staff LoggedIn', '2015-01-31 11:17:52', 0, 0, 'N/A', 'N/A', 'Mayo Less', 3, 1, '<div><span class=''label label-primery label-as-badge''>Mayo Less</span> login at <span class=''label label-warning label-as-badge''> 2015-01-31 11:17:52</span></div>'),
(1442, 'Staff LoggedIn', '2015-01-31 11:17:54', 0, 0, 'N/A', 'N/A', 'Mayo Less', 3, 1, '<div><span class=''label label-primery label-as-badge''>Mayo Less</span> login at <span class=''label label-warning label-as-badge''> 2015-01-31 11:17:54</span></div>'),
(1443, 'Staff LoggedIn', '2015-01-31 11:20:07', 0, 0, 'N/A', 'N/A', 'John vio', 3, 1, '<div><span class=''label label-primery label-as-badge''>John vio</span> login at <span class=''label label-warning label-as-badge''> 2015-01-31 11:20:07</span></div>'),
(1444, 'Order Placed', '2015-01-31 11:47:40', 482, 3, 'fgh_3', 'Ivan hary', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>fgh</span> Place Order On Table <span class=''label label-info label-as-badge''>3</span>'),
(1445, 'Staff LoggedIn', '2015-01-31 13:02:27', 0, 0, 'N/A', 'N/A', 'John vio', 3, 1, '<div><span class=''label label-primery label-as-badge''>John vio</span> login at <span class=''label label-warning label-as-badge''> 2015-01-31 13:02:27</span></div>'),
(1446, 'Staff LoggedIn', '2015-02-02 06:03:06', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-02 06:03:06</span></div>'),
(1447, 'Staff LoggedIn', '2015-02-02 06:19:01', 0, 0, 'N/A', 'N/A', 'John vio', 3, 1, '<div><span class=''label label-primery label-as-badge''>John vio</span> login at <span class=''label label-warning label-as-badge''> 2015-02-02 06:19:01</span></div>'),
(1448, 'Staff LoggedIn', '2015-02-02 06:20:00', 0, 0, 'N/A', 'N/A', 'John vio', 3, 1, '<div><span class=''label label-primery label-as-badge''>John vio</span> login at <span class=''label label-warning label-as-badge''> 2015-02-02 06:20:00</span></div>'),
(1449, 'Customer LoggedIn', '2015-02-02 06:22:55', 0, 7, 'propername_7', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>propername</span> come on Table <span class=''label label-info label-as-badge''>7</span>'),
(1450, 'Customer LoggedIn', '2015-02-02 06:23:52', 0, 3, 'propername_3', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>propername</span> come on Table <span class=''label label-info label-as-badge''>3</span>'),
(1451, 'Order Placed', '2015-02-02 06:23:55', 482, 3, 'propername_3', 'Ivan hary', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>propername</span> Place Order On Table <span class=''label label-info label-as-badge''>3</span>'),
(1452, 'Order Placed', '2015-02-02 06:24:34', 482, 3, 'propername_3', 'Ivan hary', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>propername</span> Place Order On Table <span class=''label label-info label-as-badge''>3</span>'),
(1453, 'Customer LoggedIn', '2015-02-02 06:27:05', 0, 3, '8452812880_3', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>8452812880</span> come on Table <span class=''label label-info label-as-badge''>3</span>'),
(1454, 'Order Placed', '2015-02-02 06:27:15', 483, 3, '8452812880_3', 'Ivan hary', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>8452812880</span> Place Order On Table <span class=''label label-info label-as-badge''>3</span>'),
(1455, 'Staff LoggedIn', '2015-02-02 06:28:22', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-02 06:28:22</span></div>'),
(1456, 'Customer LoggedIn', '2015-02-02 06:31:07', 0, 7, '7878787877_7', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>7878787877</span> come on Table <span class=''label label-info label-as-badge''>7</span>'),
(1457, 'Customer LoggedIn', '2015-02-02 06:32:20', 0, 3, '7575757577_3', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>7575757577</span> come on Table <span class=''label label-info label-as-badge''>3</span>'),
(1458, 'Order Placed', '2015-02-02 06:32:23', 484, 3, '7575757577_3', 'Ivan hary', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>7575757577</span> Place Order On Table <span class=''label label-info label-as-badge''>3</span>'),
(1459, 'Order Placed', '2015-02-02 06:33:43', 484, 3, '7575757577_3', 'Ivan hary', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>7575757577</span> Place Order On Table <span class=''label label-info label-as-badge''>3</span>'),
(1460, 'Order Placed', '2015-02-02 06:33:54', 484, 3, '7575757577_3', 'Ivan hary', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>7575757577</span> Place Order On Table <span class=''label label-info label-as-badge''>3</span>'),
(1461, 'Staff LoggedIn', '2015-02-02 06:39:30', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-02 06:39:30</span></div>'),
(1462, 'Staff LoggedIn', '2015-02-02 06:41:52', 0, 0, 'N/A', 'N/A', 'Mayo Less', 3, 1, '<div><span class=''label label-primery label-as-badge''>Mayo Less</span> login at <span class=''label label-warning label-as-badge''> 2015-02-02 06:41:52</span></div>'),
(1463, 'Order Placed', '2015-02-02 06:44:32', 484, 3, '7575757577_3', 'Ivan hary', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>7575757577</span> Place Order On Table <span class=''label label-info label-as-badge''>3</span>'),
(1464, 'Customer LoggedIn', '2015-02-02 06:45:09', 0, 3, 'nayanaam_3', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>nayanaam</span> come on Table <span class=''label label-info label-as-badge''>3</span>'),
(1465, 'Order Placed', '2015-02-02 06:45:13', 485, 3, 'nayanaam_3', 'Ivan hary', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>nayanaam</span> Place Order On Table <span class=''label label-info label-as-badge''>3</span>'),
(1466, 'Order Placed', '2015-02-02 06:45:30', 485, 3, 'nayanaam_3', 'Ivan hary', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>nayanaam</span> Place Order On Table <span class=''label label-info label-as-badge''>3</span>'),
(1467, 'Customer LoggedIn', '2015-02-02 06:45:51', 0, 3, 'againnew_3', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>againnew</span> come on Table <span class=''label label-info label-as-badge''>3</span>'),
(1468, 'Order Placed', '2015-02-02 06:45:54', 486, 3, 'againnew_3', 'Ivan hary', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>againnew</span> Place Order On Table <span class=''label label-info label-as-badge''>3</span>'),
(1469, 'Order Placed', '2015-02-02 06:46:01', 486, 3, 'againnew_3', 'Ivan hary', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>againnew</span> Place Order On Table <span class=''label label-info label-as-badge''>3</span>'),
(1470, 'Staff LoggedIn', '2015-02-02 06:49:30', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-02 06:49:30</span></div>'),
(1471, 'Staff LoggedIn', '2015-02-02 06:58:15', 0, 0, 'N/A', 'N/A', 'John vio', 3, 1, '<div><span class=''label label-primery label-as-badge''>John vio</span> login at <span class=''label label-warning label-as-badge''> 2015-02-02 06:58:15</span></div>'),
(1472, 'Staff LoggedIn', '2015-02-02 06:59:05', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-02 06:59:05</span></div>'),
(1473, 'Customer LoggedIn', '2015-02-02 07:04:28', 0, 7, 'jfgh_7', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>jfgh</span> come on Table <span class=''label label-info label-as-badge''>7</span>'),
(1474, 'Waiter Called', '2015-02-02 07:04:33', 0, 7, 'jfgh_7', 'harry', 'N/A', 2, 1, '<div style=''color:black;''> Customer: <span  class=''label label-success label-as-badge''>jfgh</span> on Table: <span class=''label label-info label-as-badge''> 7</span> Request For Refil Drink</div> '),
(1475, 'Staff LoggedIn', '2015-02-02 07:04:54', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-02 07:04:54</span></div>'),
(1476, 'Staff LoggedIn', '2015-02-02 07:10:32', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-02 07:10:32</span></div>'),
(1477, 'Staff LoggedIn', '2015-02-02 07:11:30', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-02 07:11:30</span></div>'),
(1478, 'Staff LoggedIn', '2015-02-02 07:15:01', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-02 07:15:01</span></div>'),
(1479, 'Customer LoggedIn', '2015-02-02 07:14:45', 0, 8, 'gggh_8', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>gggh</span> come on Table <span class=''label label-info label-as-badge''>8</span>'),
(1480, 'Waiter Called', '2015-02-02 07:14:50', 0, 8, 'gggh_8', 'Ivan', 'N/A', 2, 1, '<div style=''color:black;''> Customer: <span  class=''label label-success label-as-badge''>gggh</span> on Table: <span class=''label label-info label-as-badge''> 8</span> Request For Refil Drink</div> '),
(1481, 'Staff LoggedIn', '2015-02-02 07:15:17', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-02 07:15:17</span></div>'),
(1482, 'Staff LoggedIn', '2015-02-02 07:26:42', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-02 07:26:42</span></div>'),
(1483, 'Staff LoggedIn', '2015-02-02 07:28:53', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-02 07:28:53</span></div>'),
(1484, 'Staff LoggedIn', '2015-02-02 07:29:58', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-02 07:29:58</span></div>'),
(1485, 'Staff LoggedIn', '2015-02-02 08:20:04', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-02 08:20:04</span></div>'),
(1486, 'Staff LoggedIn', '2015-02-02 08:35:45', 0, 0, 'N/A', 'N/A', 'Mayo Less', 3, 1, '<div><span class=''label label-primery label-as-badge''>Mayo Less</span> login at <span class=''label label-warning label-as-badge''> 2015-02-02 08:35:45</span></div>'),
(1487, 'Staff LoggedIn', '2015-02-02 09:07:40', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-02 09:07:40</span></div>'),
(1488, 'Staff LoggedIn', '2015-02-02 09:07:56', 0, 0, 'N/A', 'N/A', 'Mayo Less', 3, 1, '<div><span class=''label label-primery label-as-badge''>Mayo Less</span> login at <span class=''label label-warning label-as-badge''> 2015-02-02 09:07:56</span></div>'),
(1489, 'Staff LoggedIn', '2015-02-02 09:08:45', 0, 0, 'N/A', 'N/A', 'janis rumo', 3, 1, '<div><span class=''label label-primery label-as-badge''>janis rumo</span> login at <span class=''label label-warning label-as-badge''> 2015-02-02 09:08:45</span></div>'),
(1490, 'Customer LoggedIn', '2015-02-02 09:10:15', 0, 12, 'first_12', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>first</span> come on Table <span class=''label label-info label-as-badge''>12</span>'),
(1491, 'Staff LoggedIn', '2015-02-02 09:10:56', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-02 09:10:56</span></div>'),
(1492, 'Order Placed', '2015-02-02 09:13:16', 487, 12, 'first_12', 'janis rumo', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>first</span> Place Order On Table <span class=''label label-info label-as-badge''>12</span>'),
(1493, 'Waiter Called', '2015-02-02 09:14:21', 0, 12, 'first_12', 'janis', 'N/A', 2, 1, '<div style=''color:black;''> Customer: <span  class=''label label-success label-as-badge''>first</span> on Table: <span class=''label label-info label-as-badge''> 12</span> call Waiter: <span class=''label label-primary label-as-badge''>janis</span></div>'),
(1494, 'Staff LoggedIn', '2015-02-02 09:17:40', 0, 0, 'N/A', 'N/A', 'John vio', 3, 1, '<div><span class=''label label-primery label-as-badge''>John vio</span> login at <span class=''label label-warning label-as-badge''> 2015-02-02 09:17:40</span></div>'),
(1495, 'Waiter Called', '2015-02-02 09:19:13', 0, 12, 'first_12', 'janis', 'N/A', 2, 1, '<div style=''color:black;''> Customer: <span  class=''label label-success label-as-badge''>first</span> on Table: <span class=''label label-info label-as-badge''> 12</span> call Waiter: <span class=''label label-primary label-as-badge''>janis</span></div>'),
(1496, 'Waiter Called', '2015-02-02 09:19:47', 0, 12, 'first_12', 'janis', 'N/A', 2, 1, '<div style=''color:black;''> Customer: <span  class=''label label-success label-as-badge''>first</span> on Table: <span class=''label label-info label-as-badge''> 12</span> Request For Refil Drink</div> '),
(1497, 'Waiter Called', '2015-02-02 09:19:48', 0, 12, 'first_12', 'janis', 'N/A', 2, 1, '<div style=''color:black;''> Customer: <span  class=''label label-success label-as-badge''>first</span> on Table: <span class=''label label-info label-as-badge''> 12</span> Request For Refil Drink</div> '),
(1498, 'Waiter Called', '2015-02-02 09:19:48', 0, 12, 'first_12', 'janis', 'N/A', 2, 1, '<div style=''color:black;''> Customer: <span  class=''label label-success label-as-badge''>first</span> on Table: <span class=''label label-info label-as-badge''> 12</span> Request For Refil Drink</div> '),
(1499, 'Waiter Called', '2015-02-02 09:19:49', 0, 12, 'first_12', 'janis', 'N/A', 2, 1, '<div style=''color:black;''> Customer: <span  class=''label label-success label-as-badge''>first</span> on Table: <span class=''label label-info label-as-badge''> 12</span> Request For Refil Drink</div> '),
(1500, 'Waiter Called', '2015-02-02 09:19:49', 0, 12, 'first_12', 'janis', 'N/A', 2, 1, '<div style=''color:black;''> Customer: <span  class=''label label-success label-as-badge''>first</span> on Table: <span class=''label label-info label-as-badge''> 12</span> Request For Refil Drink</div> '),
(1501, 'Waiter Called', '2015-02-02 09:19:51', 0, 12, 'first_12', 'janis', 'N/A', 2, 1, '<div style=''color:black;''> Customer: <span  class=''label label-success label-as-badge''>first</span> on Table: <span class=''label label-info label-as-badge''> 12</span> Request For Refil Drink</div> '),
(1502, 'Waiter Called', '2015-02-02 09:19:56', 0, 12, 'first_12', 'janis', 'N/A', 2, 1, '<div style=''color:black;''> Customer: <span  class=''label label-success label-as-badge''>first</span> on Table: <span class=''label label-info label-as-badge''> 12</span> Request For Refil Drink</div> '),
(1503, 'Waiter Called', '2015-02-02 09:19:56', 0, 12, 'first_12', 'janis', 'N/A', 2, 1, '<div style=''color:black;''> Customer: <span  class=''label label-success label-as-badge''>first</span> on Table: <span class=''label label-info label-as-badge''> 12</span> Request For Refil Drink</div> '),
(1504, 'Waiter Called', '2015-02-02 09:19:56', 0, 12, 'first_12', 'janis', 'N/A', 2, 1, '<div style=''color:black;''> Customer: <span  class=''label label-success label-as-badge''>first</span> on Table: <span class=''label label-info label-as-badge''> 12</span> Request For Refil Drink</div> '),
(1505, 'Waiter Called', '2015-02-02 09:19:56', 0, 12, 'first_12', 'janis', 'N/A', 2, 1, '<div style=''color:black;''> Customer: <span  class=''label label-success label-as-badge''>first</span> on Table: <span class=''label label-info label-as-badge''> 12</span> Request For Refil Drink</div> '),
(1506, 'Waiter Called', '2015-02-02 09:19:56', 0, 12, 'first_12', 'janis', 'N/A', 2, 1, '<div style=''color:black;''> Customer: <span  class=''label label-success label-as-badge''>first</span> on Table: <span class=''label label-info label-as-badge''> 12</span> Request For Refil Drink</div> '),
(1507, 'Waiter Called', '2015-02-02 09:19:56', 0, 12, 'first_12', 'janis', 'N/A', 2, 1, '<div style=''color:black;''> Customer: <span  class=''label label-success label-as-badge''>first</span> on Table: <span class=''label label-info label-as-badge''> 12</span> Request For Refil Drink</div> '),
(1508, 'Waiter Called', '2015-02-02 09:20:00', 0, 12, 'first_12', 'janis', 'N/A', 2, 1, '<div style=''color:black;''> Customer: <span  class=''label label-success label-as-badge''>first</span> on Table: <span class=''label label-info label-as-badge''> 12</span> Request For Refil Drink</div> '),
(1509, 'Waiter Called', '2015-02-02 09:20:04', 0, 12, 'first_12', 'janis', 'N/A', 2, 1, '<div style=''color:black;''> Customer: <span  class=''label label-success label-as-badge''>first</span> on Table: <span class=''label label-info label-as-badge''> 12</span> Request For Refil Drink</div> '),
(1510, 'Waiter Called', '2015-02-02 09:21:12', 0, 12, 'first_12', 'janis', 'N/A', 2, 1, '<div style=''color:black;''> Customer: <span  class=''label label-success label-as-badge''>first</span> on Table: <span class=''label label-info label-as-badge''> 12</span> Request For Refil Drink</div> '),
(1511, 'Order Placed', '2015-02-02 09:21:20', 487, 12, 'first_12', 'janis rumo', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>first</span> Place Order On Table <span class=''label label-info label-as-badge''>12</span>'),
(1512, 'Waiter Called', '2015-02-02 09:21:23', 0, 12, 'first_12', 'janis', 'N/A', 2, 1, '<div style=''color:black;''> Customer: <span  class=''label label-success label-as-badge''>first</span> on Table: <span class=''label label-info label-as-badge''> 12</span> Request For Refil Drink</div> '),
(1513, 'Customer LoggedIn', '2015-02-02 09:24:12', 0, 12, 'two_12', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>two</span> come on Table <span class=''label label-info label-as-badge''>12</span>'),
(1514, 'Order Placed', '2015-02-02 09:24:56', 487, 12, 'first_12', 'janis rumo', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>first</span> Place Order On Table <span class=''label label-info label-as-badge''>12</span>'),
(1515, 'Order Placed', '2015-02-02 09:25:13', 487, 12, 'first_12', 'janis rumo', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>first</span> Place Order On Table <span class=''label label-info label-as-badge''>12</span>'),
(1516, 'Order Placed', '2015-02-02 09:25:23', 487, 12, 'first_12', 'janis rumo', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>first</span> Place Order On Table <span class=''label label-info label-as-badge''>12</span>'),
(1517, 'Order Placed', '2015-02-02 09:25:50', 487, 12, 'first_12', 'janis rumo', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>first</span> Place Order On Table <span class=''label label-info label-as-badge''>12</span>'),
(1518, 'Staff LoggedIn', '2015-02-02 09:50:33', 0, 0, 'N/A', 'N/A', 'John vio', 3, 1, '<div><span class=''label label-primery label-as-badge''>John vio</span> login at <span class=''label label-warning label-as-badge''> 2015-02-02 09:50:33</span></div>'),
(1519, 'Staff LoggedIn', '2015-02-02 09:54:18', 0, 0, 'N/A', 'N/A', 'Mayo Less', 3, 1, '<div><span class=''label label-primery label-as-badge''>Mayo Less</span> login at <span class=''label label-warning label-as-badge''> 2015-02-02 09:54:18</span></div>'),
(1520, 'Staff LoggedIn', '2015-02-02 09:55:47', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-02 09:55:47</span></div>'),
(1521, 'Staff LoggedIn', '2015-02-02 10:03:38', 0, 0, 'N/A', 'N/A', 'Mayo Less', 3, 1, '<div><span class=''label label-primery label-as-badge''>Mayo Less</span> login at <span class=''label label-warning label-as-badge''> 2015-02-02 10:03:38</span></div>'),
(1522, 'Customer LoggedIn', '2015-02-02 10:06:03', 0, 1, 'abc_1', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>abc</span> come on Table <span class=''label label-info label-as-badge''>1</span>'),
(1523, 'Order Placed', '2015-02-02 10:06:10', 488, 1, 'abc_1', 'John vio', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>abc</span> Place Order On Table <span class=''label label-info label-as-badge''>1</span>'),
(1524, 'Order Placed', '2015-02-02 10:07:27', 488, 1, 'abc_1', 'John vio', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>abc</span> Place Order On Table <span class=''label label-info label-as-badge''>1</span>'),
(1525, 'Customer LoggedIn', '2015-02-02 10:07:49', 0, 1, 'abcd_1', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>abcd</span> come on Table <span class=''label label-info label-as-badge''>1</span>'),
(1526, 'Order Placed', '2015-02-02 10:08:06', 489, 1, 'abcd_1', 'John vio', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>abcd</span> Place Order On Table <span class=''label label-info label-as-badge''>1</span>'),
(1527, 'Order Placed', '2015-02-02 10:09:25', 489, 1, 'abcd_1', 'John vio', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>abcd</span> Place Order On Table <span class=''label label-info label-as-badge''>1</span>'),
(1528, 'Order Placed', '2015-02-02 10:10:04', 488, 1, 'abc_1', 'John vio', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>abc</span> Place Order On Table <span class=''label label-info label-as-badge''>1</span>'),
(1529, 'Order Placed', '2015-02-02 10:12:48', 489, 1, 'abcd_1', 'John vio', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>abcd</span> Place Order On Table <span class=''label label-info label-as-badge''>1</span>'),
(1530, 'Order Placed', '2015-02-02 10:12:48', 489, 1, 'abcd_1', 'John vio', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>abcd</span> Place Order On Table <span class=''label label-info label-as-badge''>1</span>'),
(1531, 'Order Placed', '2015-02-02 10:14:00', 489, 1, 'abcd_1', 'John vio', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>abcd</span> Place Order On Table <span class=''label label-info label-as-badge''>1</span>'),
(1532, 'Customer LoggedIn', '2015-02-02 10:14:22', 0, 1, '9999999999_1', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>9999999999</span> come on Table <span class=''label label-info label-as-badge''>1</span>'),
(1533, 'Order Placed', '2015-02-02 10:14:28', 490, 1, '9999999999_1', 'John vio', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>9999999999</span> Place Order On Table <span class=''label label-info label-as-badge''>1</span>'),
(1534, 'Order Placed', '2015-02-02 10:16:21', 490, 1, '9999999999_1', 'John vio', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>9999999999</span> Place Order On Table <span class=''label label-info label-as-badge''>1</span>'),
(1535, 'Staff LoggedIn', '2015-02-02 10:32:03', 0, 0, 'N/A', 'N/A', 'John vio', 3, 1, '<div><span class=''label label-primery label-as-badge''>John vio</span> login at <span class=''label label-warning label-as-badge''> 2015-02-02 10:32:03</span></div>'),
(1536, 'Waiter Called', '2015-02-02 10:32:13', 0, 1, '9999999999_1', 'John', 'N/A', 2, 1, '<div style=''color:black;''> Customer: <span  class=''label label-success label-as-badge''>9999999999</span> on Table: <span class=''label label-info label-as-badge''> 1</span> call Waiter: <span class=''label label-primary label-as-badge''>John</span></div>'),
(1537, 'Staff LoggedIn', '2015-02-02 11:01:27', 0, 0, 'N/A', 'N/A', 'John vio', 3, 1, '<div><span class=''label label-primery label-as-badge''>John vio</span> login at <span class=''label label-warning label-as-badge''> 2015-02-02 11:01:27</span></div>'),
(1538, 'Staff LoggedIn', '2015-02-02 11:04:02', 0, 0, 'N/A', 'N/A', 'John vio', 3, 1, '<div><span class=''label label-primery label-as-badge''>John vio</span> login at <span class=''label label-warning label-as-badge''> 2015-02-02 11:04:02</span></div>'),
(1539, 'Staff LoggedIn', '2015-02-02 11:28:46', 0, 0, 'N/A', 'N/A', 'John vio', 3, 1, '<div><span class=''label label-primery label-as-badge''>John vio</span> login at <span class=''label label-warning label-as-badge''> 2015-02-02 11:28:46</span></div>'),
(1540, 'Customer LoggedIn', '2015-02-02 11:30:09', 0, 14, 'abcdef_14', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>abcdef</span> come on Table <span class=''label label-info label-as-badge''>14</span>'),
(1541, 'Order Placed', '2015-02-02 11:31:18', 491, 14, 'abcdef_14', 'harry jainy', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>abcdef</span> Place Order On Table <span class=''label label-info label-as-badge''>14</span>'),
(1542, 'Waiter Called', '2015-02-02 11:31:27', 0, 14, 'abcdef_14', 'harry', 'N/A', 2, 1, '<div style=''color:black;''> Customer: <span  class=''label label-success label-as-badge''>abcdef</span> on Table: <span class=''label label-info label-as-badge''> 14</span> call Waiter: <span class=''label label-primary label-as-badge''>harry</span></div>'),
(1543, 'Order Placed', '2015-02-02 11:34:07', 492, 14, 'abcdef_14', 'harry jainy', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>abcdef</span> Place Order On Table <span class=''label label-info label-as-badge''>14</span>'),
(1544, 'Waiter Called', '2015-02-02 11:34:10', 0, 14, 'abcdef_14', 'harry', 'N/A', 2, 1, '<div style=''color:black;''> Customer: <span  class=''label label-success label-as-badge''>abcdef</span> on Table: <span class=''label label-info label-as-badge''> 14</span> call Waiter: <span class=''label label-primary label-as-badge''>harry</span></div>'),
(1545, 'Waiter Called', '2015-02-02 11:34:24', 0, 14, 'abcdef_14', 'harry', 'N/A', 2, 1, '<div style=''color:black;''> Customer: <span  class=''label label-success label-as-badge''>abcdef</span> on Table: <span class=''label label-info label-as-badge''> 14</span> call Waiter: <span class=''label label-primary label-as-badge''>harry</span></div>'),
(1546, 'Waiter Called', '2015-02-02 11:41:41', 0, 1, '9999999999_1', 'John', 'N/A', 2, 1, '<div style=''color:black;''> Customer: <span  class=''label label-success label-as-badge''>9999999999</span> on Table: <span class=''label label-info label-as-badge''> 1</span> call Waiter: <span class=''label label-primary label-as-badge''>John</span></div>'),
(1547, 'Waiter Called', '2015-02-02 11:41:55', 0, 1, '9999999999_1', 'John', 'N/A', 2, 1, '<div style=''color:black;''> Customer: <span  class=''label label-success label-as-badge''>9999999999</span> on Table: <span class=''label label-info label-as-badge''> 1</span> call Waiter: <span class=''label label-primary label-as-badge''>John</span></div>'),
(1548, 'Customer LoggedIn', '2015-02-02 11:42:44', 0, 14, 'asdasd_14', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>asdasd</span> come on Table <span class=''label label-info label-as-badge''>14</span>'),
(1549, 'Waiter Called', '2015-02-02 11:42:51', 0, 14, 'asdasd_14', 'harry', 'N/A', 2, 1, '<div style=''color:black;''> Customer: <span  class=''label label-success label-as-badge''>asdasd</span> on Table: <span class=''label label-info label-as-badge''> 14</span> call Waiter: <span class=''label label-primary label-as-badge''>harry</span></div>'),
(1550, 'Waiter Called', '2015-02-02 11:43:04', 0, 14, 'asdasd_14', 'harry', 'N/A', 2, 1, '<div style=''color:black;''> Customer: <span  class=''label label-success label-as-badge''>asdasd</span> on Table: <span class=''label label-info label-as-badge''> 14</span> call Waiter: <span class=''label label-primary label-as-badge''>harry</span></div>'),
(1551, 'Waiter Called', '2015-02-02 11:43:19', 0, 14, 'asdasd_14', 'harry', 'N/A', 2, 1, '<div style=''color:black;''> Customer: <span  class=''label label-success label-as-badge''>asdasd</span> on Table: <span class=''label label-info label-as-badge''> 14</span> call Waiter: <span class=''label label-primary label-as-badge''>harry</span></div>'),
(1552, 'Waiter Called', '2015-02-02 11:43:23', 0, 14, 'asdasd_14', 'harry', 'N/A', 2, 1, '<div style=''color:black;''> Customer: <span  class=''label label-success label-as-badge''>asdasd</span> on Table: <span class=''label label-info label-as-badge''> 14</span> call Waiter: <span class=''label label-primary label-as-badge''>harry</span></div>'),
(1553, 'Order Placed', '2015-02-02 11:43:30', 493, 14, 'asdasd_14', 'harry jainy', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>asdasd</span> Place Order On Table <span class=''label label-info label-as-badge''>14</span>'),
(1554, 'Waiter Called', '2015-02-02 11:43:31', 0, 14, 'asdasd_14', 'harry', 'N/A', 2, 1, '<div style=''color:black;''> Customer: <span  class=''label label-success label-as-badge''>asdasd</span> on Table: <span class=''label label-info label-as-badge''> 14</span> call Waiter: <span class=''label label-primary label-as-badge''>harry</span></div>'),
(1555, 'Waiter Called', '2015-02-02 11:43:38', 0, 14, 'asdasd_14', 'harry', 'N/A', 2, 1, '<div style=''color:black;''> Customer: <span  class=''label label-success label-as-badge''>asdasd</span> on Table: <span class=''label label-info label-as-badge''> 14</span> call Waiter: <span class=''label label-primary label-as-badge''>harry</span></div>'),
(1556, 'Waiter Called', '2015-02-02 11:43:44', 0, 14, 'asdasd_14', 'harry', 'N/A', 2, 1, '<div style=''color:black;''> Customer: <span  class=''label label-success label-as-badge''>asdasd</span> on Table: <span class=''label label-info label-as-badge''> 14</span> call Waiter: <span class=''label label-primary label-as-badge''>harry</span></div>'),
(1557, 'Waiter Called', '2015-02-02 11:44:08', 0, 1, '9999999999_1', 'John', 'N/A', 2, 1, '<div style=''color:black;''> Customer: <span  class=''label label-success label-as-badge''>9999999999</span> on Table: <span class=''label label-info label-as-badge''> 1</span> call Waiter: <span class=''label label-primary label-as-badge''>John</span></div>'),
(1558, 'Call Waiter Request Accepted', '2015-02-02 11:47:00', 0, 14, 'asdasd_14', 'harry', 'N/A', 2, 1, '<div style=''color:black;''> Waiter : <span  class=''label label-primary label-as-badge''>harry</span> Accepted Request From Customer :<span  class=''label label-success label-as-badge''>asdasd</span> on Table No: <span class=''label label-info label-as-badge''> 14</span></div>'),
(1559, 'Call Waiter Request Accepted', '2015-02-02 11:58:38', 0, 14, 'asdasd_14', 'harry', 'N/A', 2, 1, '<div style=''color:black;''> Waiter : <span  class=''label label-primary label-as-badge''>harry</span> Accepted Request From Customer :<span  class=''label label-success label-as-badge''>asdasd</span> on Table No: <span class=''label label-info label-as-badge''> 14</span></div>'),
(1560, 'Call Waiter Request Accepted', '2015-02-02 11:58:38', 0, 14, 'asdasd_14', 'harry', 'N/A', 2, 1, '<div style=''color:black;''> Waiter : <span  class=''label label-primary label-as-badge''>harry</span> Accepted Request From Customer :<span  class=''label label-success label-as-badge''>asdasd</span> on Table No: <span class=''label label-info label-as-badge''> 14</span></div>'),
(1561, 'Call Waiter Request Accepted', '2015-02-02 11:58:39', 0, 14, 'asdasd_14', 'harry', 'N/A', 2, 1, '<div style=''color:black;''> Waiter : <span  class=''label label-primary label-as-badge''>harry</span> Accepted Request From Customer :<span  class=''label label-success label-as-badge''>asdasd</span> on Table No: <span class=''label label-info label-as-badge''> 14</span></div>'),
(1562, 'Call Waiter Request Accepted', '2015-02-02 11:58:40', 0, 14, 'asdasd_14', 'harry', 'N/A', 2, 1, '<div style=''color:black;''> Waiter : <span  class=''label label-primary label-as-badge''>harry</span> Accepted Request From Customer :<span  class=''label label-success label-as-badge''>asdasd</span> on Table No: <span class=''label label-info label-as-badge''> 14</span></div>'),
(1563, 'Call Waiter Request Accepted', '2015-02-02 11:58:42', 0, 14, 'asdasd_14', 'harry', 'N/A', 2, 1, '<div style=''color:black;''> Waiter : <span  class=''label label-primary label-as-badge''>harry</span> Accepted Request From Customer :<span  class=''label label-success label-as-badge''>asdasd</span> on Table No: <span class=''label label-info label-as-badge''> 14</span></div>'),
(1564, 'Call Waiter Request Accepted', '2015-02-02 11:59:11', 0, 14, 'asdasd_14', 'harry', 'N/A', 2, 1, '<div style=''color:black;''> Waiter : <span  class=''label label-primary label-as-badge''>harry</span> Accepted Request From Customer :<span  class=''label label-success label-as-badge''>asdasd</span> on Table No: <span class=''label label-info label-as-badge''> 14</span></div>'),
(1565, 'Order Placed', '2015-02-02 13:20:32', 493, 14, 'asdasd_14', 'harry jainy', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>asdasd</span> Place Order On Table <span class=''label label-info label-as-badge''>14</span>'),
(1566, 'Staff LoggedIn', '2015-02-02 13:57:54', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-02 13:57:54</span></div>'),
(1567, 'Staff LoggedIn', '2015-02-02 14:17:28', 0, 0, 'N/A', 'N/A', 'John vio', 3, 1, '<div><span class=''label label-primery label-as-badge''>John vio</span> login at <span class=''label label-warning label-as-badge''> 2015-02-02 14:17:28</span></div>'),
(1568, 'Staff LoggedIn', '2015-02-03 05:26:40', 0, 0, 'N/A', 'N/A', 'John vio', 3, 1, '<div><span class=''label label-primery label-as-badge''>John vio</span> login at <span class=''label label-warning label-as-badge''> 2015-02-03 05:26:40</span></div>'),
(1569, 'Staff LoggedIn', '2015-02-03 05:57:55', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-03 05:57:55</span></div>'),
(1570, 'Staff LoggedIn', '2015-02-03 06:31:11', 0, 0, 'N/A', 'N/A', 'John vio', 3, 1, '<div><span class=''label label-primery label-as-badge''>John vio</span> login at <span class=''label label-warning label-as-badge''> 2015-02-03 06:31:11</span></div>'),
(1571, 'Staff LoggedIn', '2015-02-03 06:33:31', 0, 0, 'N/A', 'N/A', 'John vio', 3, 1, '<div><span class=''label label-primery label-as-badge''>John vio</span> login at <span class=''label label-warning label-as-badge''> 2015-02-03 06:33:31</span></div>'),
(1572, 'Customer LoggedIn', '2015-02-03 07:33:40', 0, 7, 'waiter test_7', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>waiter test</span> come on Table <span class=''label label-info label-as-badge''>7</span>'),
(1573, 'Order Placed', '2015-02-03 07:34:18', 494, 7, 'waiter test_7', ' ', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>waiter test</span> Place Order On Table <span class=''label label-info label-as-badge''>7</span>'),
(1574, 'Order Placed', '2015-02-03 07:35:34', 494, 7, 'waiter test_7', ' ', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>waiter test</span> Place Order On Table <span class=''label label-info label-as-badge''>7</span>'),
(1575, 'Order Placed', '2015-02-03 07:36:05', 494, 7, 'waiter test_7', ' ', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>waiter test</span> Place Order On Table <span class=''label label-info label-as-badge''>7</span>'),
(1576, 'Staff LoggedIn', '2015-02-03 09:03:58', 0, 0, 'N/A', 'N/A', 'John vio', 3, 1, '<div><span class=''label label-primery label-as-badge''>John vio</span> login at <span class=''label label-warning label-as-badge''> 2015-02-03 09:03:58</span></div>'),
(1577, 'Staff LoggedIn', '2015-02-03 09:38:38', 0, 0, 'N/A', 'N/A', 'John vio', 3, 1, '<div><span class=''label label-primery label-as-badge''>John vio</span> login at <span class=''label label-warning label-as-badge''> 2015-02-03 09:38:38</span></div>'),
(1578, 'Staff LoggedIn', '2015-02-03 10:44:12', 0, 0, 'N/A', 'N/A', 'John vio', 3, 1, '<div><span class=''label label-primery label-as-badge''>John vio</span> login at <span class=''label label-warning label-as-badge''> 2015-02-03 10:44:12</span></div>'),
(1579, 'Staff LoggedIn', '2015-02-03 10:51:44', 0, 0, 'N/A', 'N/A', 'John vio', 3, 1, '<div><span class=''label label-primery label-as-badge''>John vio</span> login at <span class=''label label-warning label-as-badge''> 2015-02-03 10:51:44</span></div>'),
(1580, 'Order Placed', '2015-02-03 11:17:30', 495, 7, 'waiter test_7', ' ', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>waiter test</span> Place Order On Table <span class=''label label-info label-as-badge''>7</span>'),
(1581, 'Staff LoggedIn', '2015-02-03 11:21:55', 0, 0, 'N/A', 'N/A', 'John vio', 3, 1, '<div><span class=''label label-primery label-as-badge''>John vio</span> login at <span class=''label label-warning label-as-badge''> 2015-02-03 11:21:55</span></div>'),
(1582, 'Staff LoggedIn', '2015-02-03 11:46:59', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-03 11:46:59</span></div>'),
(1583, 'Order Placed', '2015-02-03 12:31:03', 495, 7, 'waiter test_7', ' ', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>waiter test</span> Place Order On Table <span class=''label label-info label-as-badge''>7</span>'),
(1584, 'Staff LoggedIn', '2015-02-03 13:16:55', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-03 13:16:55</span></div>'),
(1585, 'Staff LoggedIn', '2015-02-03 13:24:26', 0, 0, 'N/A', 'N/A', 'John vio', 3, 1, '<div><span class=''label label-primery label-as-badge''>John vio</span> login at <span class=''label label-warning label-as-badge''> 2015-02-03 13:24:26</span></div>'),
(1586, 'Order Placed', '2015-02-03 13:25:14', 495, 7, 'waiter test_7', ' ', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>waiter test</span> Place Order On Table <span class=''label label-info label-as-badge''>7</span>'),
(1587, 'Staff LoggedIn', '2015-02-03 13:32:51', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-03 13:32:51</span></div>'),
(1588, 'Staff LoggedIn', '2015-02-03 13:37:15', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-03 13:37:15</span></div>'),
(1589, 'Staff LoggedIn', '2015-02-03 13:40:09', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-03 13:40:09</span></div>'),
(1590, 'Staff LoggedIn', '2015-02-03 13:48:30', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-03 13:48:30</span></div>'),
(1591, 'Staff LoggedIn', '2015-02-03 14:04:40', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-03 14:04:40</span></div>'),
(1592, 'Staff LoggedIn', '2015-02-03 14:10:17', 0, 0, 'N/A', 'N/A', 'John vio', 3, 1, '<div><span class=''label label-primery label-as-badge''>John vio</span> login at <span class=''label label-warning label-as-badge''> 2015-02-03 14:10:17</span></div>'),
(1593, 'Staff LoggedIn', '2015-02-03 14:14:08', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-03 14:14:08</span></div>'),
(1594, 'Staff LoggedIn', '2015-02-03 14:18:54', 0, 0, 'N/A', 'N/A', 'Mayo Less', 3, 1, '<div><span class=''label label-primery label-as-badge''>Mayo Less</span> login at <span class=''label label-warning label-as-badge''> 2015-02-03 14:18:54</span></div>'),
(1595, 'Staff LoggedIn', '2015-02-03 14:24:59', 0, 0, 'N/A', 'N/A', 'John vio', 3, 1, '<div><span class=''label label-primery label-as-badge''>John vio</span> login at <span class=''label label-warning label-as-badge''> 2015-02-03 14:24:59</span></div>'),
(1596, 'Customer LoggedIn', '2015-02-03 14:26:59', 0, 7, 'abc_abc_7', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>abc</span> come on Table <span class=''label label-info label-as-badge''>7</span>'),
(1597, 'Order Placed', '2015-02-03 14:27:16', 494, 7, 'abc_abc_7', ' ', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>abc</span> Place Order On Table <span class=''label label-info label-as-badge''>7</span>'),
(1598, 'Order Placed', '2015-02-03 14:28:41', 494, 7, 'abc_abc_7', ' ', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>abc</span> Place Order On Table <span class=''label label-info label-as-badge''>7</span>'),
(1599, 'Customer LoggedIn', '2015-02-03 14:32:07', 0, 2, 'bhumin_bhandari_2', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>bhumin</span> come on Table <span class=''label label-info label-as-badge''>2</span>'),
(1600, 'Order Placed', '2015-02-03 14:32:16', 496, 2, 'bhumin_bhandari_2', 'cris namo', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>bhumin</span> Place Order On Table <span class=''label label-info label-as-badge''>2</span>'),
(1601, 'Customer LoggedIn', '2015-02-03 14:33:24', 0, 2, 'sadasd_2', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>sadasd</span> come on Table <span class=''label label-info label-as-badge''>2</span>'),
(1602, 'Order Placed', '2015-02-03 14:33:27', 497, 2, 'sadasd_2', 'cris namo', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>sadasd</span> Place Order On Table <span class=''label label-info label-as-badge''>2</span>'),
(1603, 'Order Placed', '2015-02-03 14:33:44', 496, 2, 'bhumin_bhandari_2', 'cris namo', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>bhumin</span> Place Order On Table <span class=''label label-info label-as-badge''>2</span>'),
(1604, 'Staff LoggedIn', '2015-02-03 15:05:35', 0, 0, 'N/A', 'N/A', 'Mayo Less', 3, 1, '<div><span class=''label label-primery label-as-badge''>Mayo Less</span> login at <span class=''label label-warning label-as-badge''> 2015-02-03 15:05:35</span></div>'),
(1605, 'Staff LoggedIn', '2015-02-03 15:14:45', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-03 15:14:45</span></div>'),
(1606, 'Customer LoggedIn', '2015-02-03 15:28:56', 0, 7, 'sx_7', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>sx</span> come on Table <span class=''label label-info label-as-badge''>7</span>'),
(1607, 'Staff LoggedIn', '2015-02-03 15:28:55', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-03 15:28:55</span></div>'),
(1608, 'Order Placed', '2015-02-03 15:29:05', 498, 7, 'sx_7', ' ', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>sx</span> Place Order On Table <span class=''label label-info label-as-badge''>7</span>'),
(1609, 'Staff LoggedIn', '2015-02-03 15:29:30', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-03 15:29:30</span></div>');
INSERT INTO `notification_log` (`id`, `notifications`, `created_at`, `order_id`, `tablenumber`, `customer_unique_id`, `waiter`, `staff`, `type_id`, `is_watch`, `text`) VALUES
(1610, 'Staff LoggedIn', '2015-02-03 15:30:35', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-03 15:30:35</span></div>'),
(1611, 'Staff LoggedIn', '2015-02-04 06:08:09', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-04 06:08:09</span></div>'),
(1612, 'Staff LoggedIn', '2015-02-04 06:08:47', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-04 06:08:47</span></div>'),
(1613, 'Staff LoggedIn', '2015-02-04 06:15:18', 0, 0, 'N/A', 'N/A', 'John vio', 3, 1, '<div><span class=''label label-primery label-as-badge''>John vio</span> login at <span class=''label label-warning label-as-badge''> 2015-02-04 06:15:18</span></div>'),
(1614, 'Staff LoggedIn', '2015-02-04 06:18:39', 0, 0, 'N/A', 'N/A', 'John vio', 3, 1, '<div><span class=''label label-primery label-as-badge''>John vio</span> login at <span class=''label label-warning label-as-badge''> 2015-02-04 06:18:39</span></div>'),
(1615, 'Customer LoggedIn', '2015-02-04 06:19:44', 0, 2, 'asdsd_2', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>asdsd</span> come on Table <span class=''label label-info label-as-badge''>2</span>'),
(1616, 'Staff LoggedIn', '2015-02-04 06:20:48', 0, 0, 'N/A', 'N/A', 'John vio', 3, 1, '<div><span class=''label label-primery label-as-badge''>John vio</span> login at <span class=''label label-warning label-as-badge''> 2015-02-04 06:20:48</span></div>'),
(1617, 'Customer LoggedIn', '2015-02-04 06:48:47', 0, 3, 'asd_3', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>asd</span> come on Table <span class=''label label-info label-as-badge''>3</span>'),
(1618, 'Order Placed', '2015-02-04 06:49:15', 499, 3, 'asd_3', 'cris namo', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>asd</span> Place Order On Table <span class=''label label-info label-as-badge''>3</span>'),
(1619, 'Order Placed', '2015-02-04 06:53:32', 499, 3, 'asd_3', 'cris namo', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>asd</span> Place Order On Table <span class=''label label-info label-as-badge''>3</span>'),
(1620, 'Order Placed', '2015-02-04 06:53:44', 499, 3, 'asd_3', 'cris namo', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>asd</span> Place Order On Table <span class=''label label-info label-as-badge''>3</span>'),
(1621, 'Order Placed', '2015-02-04 06:54:19', 499, 3, 'asd_3', 'cris namo', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>asd</span> Place Order On Table <span class=''label label-info label-as-badge''>3</span>'),
(1622, 'Order Placed', '2015-02-04 06:54:31', 499, 3, 'asd_3', 'cris namo', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>asd</span> Place Order On Table <span class=''label label-info label-as-badge''>3</span>'),
(1623, 'Order Placed', '2015-02-04 06:56:13', 499, 3, 'asd_3', 'cris namo', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>asd</span> Place Order On Table <span class=''label label-info label-as-badge''>3</span>'),
(1624, 'Order Placed', '2015-02-04 06:56:42', 499, 3, 'asd_3', 'cris namo', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>asd</span> Place Order On Table <span class=''label label-info label-as-badge''>3</span>'),
(1625, 'Order Placed', '2015-02-04 06:57:12', 499, 3, 'asd_3', 'cris namo', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>asd</span> Place Order On Table <span class=''label label-info label-as-badge''>3</span>'),
(1626, 'Order Placed', '2015-02-04 06:58:00', 499, 3, 'asd_3', 'cris namo', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>asd</span> Place Order On Table <span class=''label label-info label-as-badge''>3</span>'),
(1627, 'Order Placed', '2015-02-04 06:58:47', 499, 3, 'asd_3', 'cris namo', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>asd</span> Place Order On Table <span class=''label label-info label-as-badge''>3</span>'),
(1628, 'Order Placed', '2015-02-04 07:01:03', 499, 3, 'asd_3', 'cris namo', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>asd</span> Place Order On Table <span class=''label label-info label-as-badge''>3</span>'),
(1629, 'Order Placed', '2015-02-04 07:01:46', 499, 3, 'asd_3', 'cris namo', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>asd</span> Place Order On Table <span class=''label label-info label-as-badge''>3</span>'),
(1630, 'Staff LoggedIn', '2015-02-04 10:20:53', 0, 0, 'N/A', 'N/A', 'John vio', 3, 1, '<div><span class=''label label-primery label-as-badge''>John vio</span> login at <span class=''label label-warning label-as-badge''> 2015-02-04 10:20:53</span></div>'),
(1631, 'Staff LoggedIn', '2015-02-04 10:23:23', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-04 10:23:23</span></div>'),
(1632, 'Staff LoggedIn', '2015-02-04 10:24:24', 0, 0, 'N/A', 'N/A', 'Mayo Less', 3, 1, '<div><span class=''label label-primery label-as-badge''>Mayo Less</span> login at <span class=''label label-warning label-as-badge''> 2015-02-04 10:24:24</span></div>'),
(1633, 'Staff LoggedIn', '2015-02-04 10:36:10', 0, 0, 'N/A', 'N/A', 'Mayo Less', 3, 1, '<div><span class=''label label-primery label-as-badge''>Mayo Less</span> login at <span class=''label label-warning label-as-badge''> 2015-02-04 10:36:10</span></div>'),
(1634, 'Staff LoggedIn', '2015-02-04 10:59:21', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-04 10:59:21</span></div>'),
(1635, 'Order Placed', '2015-02-04 11:00:11', 499, 2, 'asdsd_2', 'bhumin bhumin', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>asdsd</span> Place Order On Table <span class=''label label-info label-as-badge''>2</span>'),
(1636, 'Order Placed', '2015-02-04 11:00:16', 499, 2, 'asdsd_2', 'bhumin bhumin', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>asdsd</span> Place Order On Table <span class=''label label-info label-as-badge''>2</span>'),
(1637, 'Order Placed', '2015-02-04 11:04:23', 499, 2, 'asdsd_2', 'bhumin bhumin', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>asdsd</span> Place Order On Table <span class=''label label-info label-as-badge''>2</span>'),
(1638, 'Order Placed', '2015-02-04 11:15:53', 500, 2, 'asdsd_2', 'bhumin bhumin', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>asdsd</span> Place Order On Table <span class=''label label-info label-as-badge''>2</span>'),
(1639, 'Customer LoggedIn', '2015-02-04 11:38:45', 0, 2, 'asdsdasdasd_2', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>asdsdasdasd</span> come on Table <span class=''label label-info label-as-badge''>2</span>'),
(1640, 'Order Placed', '2015-02-04 11:38:49', 500, 2, 'asdsdasdasd_2', 'bhumin bhumin', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>asdsdasdasd</span> Place Order On Table <span class=''label label-info label-as-badge''>2</span>'),
(1641, 'Staff LoggedIn', '2015-02-04 12:10:36', 0, 0, 'N/A', 'N/A', 'Mayo Less', 3, 1, '<div><span class=''label label-primery label-as-badge''>Mayo Less</span> login at <span class=''label label-warning label-as-badge''> 2015-02-04 12:10:36</span></div>'),
(1642, 'Staff LoggedIn', '2015-02-04 12:10:44', 0, 0, 'N/A', 'N/A', 'Mayo Less', 3, 1, '<div><span class=''label label-primery label-as-badge''>Mayo Less</span> login at <span class=''label label-warning label-as-badge''> 2015-02-04 12:10:44</span></div>'),
(1643, 'Staff LoggedIn', '2015-02-04 12:11:38', 0, 0, 'N/A', 'N/A', 'Mayo Less', 3, 1, '<div><span class=''label label-primery label-as-badge''>Mayo Less</span> login at <span class=''label label-warning label-as-badge''> 2015-02-04 12:11:38</span></div>'),
(1644, 'Staff LoggedIn', '2015-02-04 12:11:44', 0, 0, 'N/A', 'N/A', 'Mayo Less', 3, 1, '<div><span class=''label label-primery label-as-badge''>Mayo Less</span> login at <span class=''label label-warning label-as-badge''> 2015-02-04 12:11:44</span></div>'),
(1645, 'Staff LoggedIn', '2015-02-04 12:17:13', 0, 0, 'N/A', 'N/A', 'Mayo Less', 3, 1, '<div><span class=''label label-primery label-as-badge''>Mayo Less</span> login at <span class=''label label-warning label-as-badge''> 2015-02-04 12:17:13</span></div>'),
(1646, 'Staff LoggedIn', '2015-02-04 12:18:52', 0, 0, 'N/A', 'N/A', 'Mayo Less', 3, 1, '<div><span class=''label label-primery label-as-badge''>Mayo Less</span> login at <span class=''label label-warning label-as-badge''> 2015-02-04 12:18:52</span></div>'),
(1647, 'Staff LoggedIn', '2015-02-04 12:19:25', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-04 12:19:25</span></div>'),
(1648, 'Staff LoggedIn', '2015-02-04 13:35:23', 0, 0, 'N/A', 'N/A', 'John vio', 3, 1, '<div><span class=''label label-primery label-as-badge''>John vio</span> login at <span class=''label label-warning label-as-badge''> 2015-02-04 13:35:23</span></div>'),
(1649, 'Staff LoggedIn', '2015-02-04 14:09:34', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-04 14:09:34</span></div>'),
(1650, 'Staff LoggedIn', '2015-02-04 14:19:12', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-04 14:19:12</span></div>'),
(1651, 'Staff LoggedIn', '2015-02-04 14:58:31', 0, 0, 'N/A', 'N/A', 'John vio', 3, 1, '<div><span class=''label label-primery label-as-badge''>John vio</span> login at <span class=''label label-warning label-as-badge''> 2015-02-04 14:58:31</span></div>'),
(1652, 'Staff LoggedIn', '2015-02-04 15:16:23', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-04 15:16:23</span></div>'),
(1653, 'Staff LoggedIn', '2015-02-04 15:25:08', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-04 15:25:08</span></div>'),
(1654, 'Staff LoggedIn', '2015-02-05 06:12:59', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-05 06:12:59</span></div>'),
(1655, 'Staff LoggedIn', '2015-02-05 06:20:18', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-05 06:20:18</span></div>'),
(1656, 'Staff LoggedIn', '2015-02-05 06:32:23', 0, 0, 'N/A', 'N/A', 'Mayo Less', 3, 1, '<div><span class=''label label-primery label-as-badge''>Mayo Less</span> login at <span class=''label label-warning label-as-badge''> 2015-02-05 06:32:23</span></div>'),
(1657, 'Staff LoggedIn', '2015-02-05 09:23:47', 0, 0, 'N/A', 'N/A', 'Mayo Less', 3, 1, '<div><span class=''label label-primery label-as-badge''>Mayo Less</span> login at <span class=''label label-warning label-as-badge''> 2015-02-05 09:23:47</span></div>'),
(1658, 'Customer LoggedIn', '2015-02-05 09:28:04', 0, 12, 'testing_12', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>testing</span> come on Table <span class=''label label-info label-as-badge''>12</span>'),
(1659, 'Staff LoggedIn', '2015-02-05 10:00:28', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-05 10:00:28</span></div>'),
(1660, 'Customer LoggedIn', '2015-02-05 10:07:17', 0, 8, 'asdsadad_8', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>asdsadad</span> come on Table <span class=''label label-info label-as-badge''>8</span>'),
(1661, 'Staff LoggedIn', '2015-02-05 10:17:18', 0, 0, 'N/A', 'N/A', 'Mayo Less', 3, 1, '<div><span class=''label label-primery label-as-badge''>Mayo Less</span> login at <span class=''label label-warning label-as-badge''> 2015-02-05 10:17:18</span></div>'),
(1662, 'Staff LoggedIn', '2015-02-05 10:17:32', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-05 10:17:32</span></div>'),
(1663, 'Staff LoggedIn', '2015-02-05 10:17:39', 0, 0, 'N/A', 'N/A', 'John vio', 3, 1, '<div><span class=''label label-primery label-as-badge''>John vio</span> login at <span class=''label label-warning label-as-badge''> 2015-02-05 10:17:39</span></div>'),
(1664, 'Staff LoggedIn', '2015-02-05 10:20:57', 0, 0, 'N/A', 'N/A', 'harry jainy', 3, 1, '<div><span class=''label label-primery label-as-badge''>harry jainy</span> login at <span class=''label label-warning label-as-badge''> 2015-02-05 10:20:57</span></div>'),
(1665, 'Customer LoggedIn', '2015-02-05 10:21:42', 0, 13, 'itsme_13', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>itsme</span> come on Table <span class=''label label-info label-as-badge''>13</span>'),
(1666, 'Order Placed', '2015-02-05 10:22:08', 501, 13, 'itsme_13', 'harry jainy', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>itsme</span> Place Order On Table <span class=''label label-info label-as-badge''>13</span>'),
(1667, 'Staff LoggedIn', '2015-02-05 10:23:19', 0, 0, 'N/A', 'N/A', 'cris namo', 3, 1, '<div><span class=''label label-primery label-as-badge''>cris namo</span> login at <span class=''label label-warning label-as-badge''> 2015-02-05 10:23:19</span></div>'),
(1668, 'Staff LoggedIn', '2015-02-05 10:27:24', 0, 0, 'N/A', 'N/A', 'harry jainy', 3, 1, '<div><span class=''label label-primery label-as-badge''>harry jainy</span> login at <span class=''label label-warning label-as-badge''> 2015-02-05 10:27:24</span></div>'),
(1669, 'Staff LoggedIn', '2015-02-05 10:40:09', 0, 0, 'N/A', 'N/A', 'John vio', 3, 1, '<div><span class=''label label-primery label-as-badge''>John vio</span> login at <span class=''label label-warning label-as-badge''> 2015-02-05 10:40:09</span></div>'),
(1670, 'Staff LoggedIn', '2015-02-05 10:40:20', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-05 10:40:20</span></div>'),
(1671, 'Staff LoggedIn', '2015-02-05 11:05:32', 0, 0, 'N/A', 'N/A', 'John vio', 3, 1, '<div><span class=''label label-primery label-as-badge''>John vio</span> login at <span class=''label label-warning label-as-badge''> 2015-02-05 11:05:32</span></div>'),
(1672, 'Staff LoggedIn', '2015-02-05 11:06:02', 0, 0, 'N/A', 'N/A', 'John vio', 3, 1, '<div><span class=''label label-primery label-as-badge''>John vio</span> login at <span class=''label label-warning label-as-badge''> 2015-02-05 11:06:02</span></div>'),
(1673, 'Staff LoggedIn', '2015-02-05 11:55:51', 0, 0, 'N/A', 'N/A', 'John vio', 3, 1, '<div><span class=''label label-primery label-as-badge''>John vio</span> login at <span class=''label label-warning label-as-badge''> 2015-02-05 11:55:51</span></div>'),
(1674, 'Staff LoggedIn', '2015-02-05 11:56:06', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-05 11:56:06</span></div>'),
(1675, 'Staff LoggedIn', '2015-02-05 12:04:14', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-05 12:04:14</span></div>'),
(1676, 'Staff LoggedIn', '2015-02-05 12:19:53', 0, 0, 'N/A', 'N/A', 'Mayo Less', 3, 1, '<div><span class=''label label-primery label-as-badge''>Mayo Less</span> login at <span class=''label label-warning label-as-badge''> 2015-02-05 12:19:53</span></div>'),
(1677, 'Staff LoggedIn', '2015-02-05 12:35:47', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-05 12:35:47</span></div>'),
(1678, 'Staff LoggedIn', '2015-02-05 12:35:49', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-05 12:35:49</span></div>'),
(1679, 'Staff LoggedIn', '2015-02-05 12:36:07', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-05 12:36:07</span></div>'),
(1680, 'Staff LoggedIn', '2015-02-05 12:37:07', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-05 12:37:07</span></div>'),
(1681, 'Staff LoggedIn', '2015-02-05 12:38:06', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-05 12:38:06</span></div>'),
(1682, 'Customer LoggedIn', '2015-02-06 05:53:51', 0, 14, 'asdas_14', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>asdas</span> come on Table <span class=''label label-info label-as-badge''>14</span>'),
(1683, 'Waiter Called', '2015-02-06 05:53:55', 0, 14, 'asdas_14', 'elen', 'N/A', 2, 1, '<div style=''color:black;''> Customer: <span  class=''label label-success label-as-badge''>asdas</span> on Table: <span class=''label label-info label-as-badge''> 14</span> call Waiter: <span class=''label label-primary label-as-badge''>elen</span></div>'),
(1684, 'Call Waiter Request Accepted', '2015-02-06 10:58:18', 0, 14, 'asdas_14', 'elen', 'N/A', 2, 1, '<div style=''color:black;''> Waiter : <span  class=''label label-primary label-as-badge''>elen</span> Accepted Request From Customer :<span  class=''label label-success label-as-badge''>asdas</span> on Table No: <span class=''label label-info label-as-badge''> 14</span></div>'),
(1685, 'Order Placed', '2015-02-06 11:11:53', 502, 14, 'asdas_14', 'elen marlo', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>asdas</span> Place Order On Table <span class=''label label-info label-as-badge''>14</span>'),
(1686, 'Staff LoggedIn', '2015-02-06 12:21:20', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-06 12:21:20</span></div>'),
(1687, 'Customer LoggedIn', '2015-02-06 12:23:36', 0, 10, 'djay_10', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>djay</span> come on Table <span class=''label label-info label-as-badge''>10</span>'),
(1688, 'Staff LoggedIn', '2015-02-06 12:32:07', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-06 12:32:07</span></div>'),
(1689, 'Customer LoggedIn', '2015-02-06 12:33:19', 0, 12, 'chulli_12', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>chulli</span> come on Table <span class=''label label-info label-as-badge''>12</span>'),
(1690, 'Order Placed', '2015-02-06 12:34:16', 503, 12, 'chulli_12', 'harry jainy', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>chulli</span> Place Order On Table <span class=''label label-info label-as-badge''>12</span>'),
(1691, 'Staff LoggedIn', '2015-02-06 12:34:46', 0, 0, 'N/A', 'N/A', 'Mayo Less', 3, 1, '<div><span class=''label label-primery label-as-badge''>Mayo Less</span> login at <span class=''label label-warning label-as-badge''> 2015-02-06 12:34:46</span></div>'),
(1692, 'Staff LoggedIn', '2015-02-06 12:37:01', 0, 0, 'N/A', 'N/A', 'Mayo Less', 3, 1, '<div><span class=''label label-primery label-as-badge''>Mayo Less</span> login at <span class=''label label-warning label-as-badge''> 2015-02-06 12:37:01</span></div>'),
(1693, 'Staff LoggedIn', '2015-02-06 12:37:23', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-06 12:37:23</span></div>'),
(1694, 'Staff LoggedIn', '2015-02-06 12:38:55', 0, 0, 'N/A', 'N/A', 'Mayo Less', 3, 1, '<div><span class=''label label-primery label-as-badge''>Mayo Less</span> login at <span class=''label label-warning label-as-badge''> 2015-02-06 12:38:55</span></div>'),
(1695, 'Staff LoggedIn', '2015-02-06 12:40:24', 0, 0, 'N/A', 'N/A', 'John vio', 3, 1, '<div><span class=''label label-primery label-as-badge''>John vio</span> login at <span class=''label label-warning label-as-badge''> 2015-02-06 12:40:24</span></div>'),
(1696, 'Staff LoggedIn', '2015-02-06 12:40:49', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-06 12:40:49</span></div>'),
(1697, 'Staff LoggedIn', '2015-02-06 12:41:56', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-06 12:41:56</span></div>'),
(1698, 'Staff LoggedIn', '2015-02-06 12:45:34', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-06 12:45:34</span></div>'),
(1699, 'Staff LoggedIn', '2015-02-06 12:52:52', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-06 12:52:52</span></div>'),
(1700, 'Staff LoggedIn', '2015-02-06 13:00:49', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-06 13:00:49</span></div>'),
(1701, 'Staff LoggedIn', '2015-02-06 13:01:53', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-06 13:01:53</span></div>'),
(1702, 'Staff LoggedIn', '2015-02-06 15:06:52', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-06 15:06:52</span></div>'),
(1703, 'Staff LoggedIn', '2015-02-06 15:31:03', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-06 15:31:03</span></div>'),
(1704, 'Staff LoggedIn', '2015-02-06 15:35:03', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-06 15:35:03</span></div>'),
(1705, 'Staff LoggedIn', '2015-02-06 15:35:03', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-06 15:35:03</span></div>'),
(1706, 'Staff LoggedIn', '2015-02-06 15:37:05', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-06 15:37:05</span></div>'),
(1707, 'Staff LoggedIn', '2015-02-06 16:04:28', 0, 0, 'N/A', 'N/A', 'Mayo Less', 3, 1, '<div><span class=''label label-primery label-as-badge''>Mayo Less</span> login at <span class=''label label-warning label-as-badge''> 2015-02-06 16:04:28</span></div>'),
(1708, 'Staff LoggedIn', '2015-02-06 16:04:34', 0, 0, 'N/A', 'N/A', 'Mayo Less', 3, 1, '<div><span class=''label label-primery label-as-badge''>Mayo Less</span> login at <span class=''label label-warning label-as-badge''> 2015-02-06 16:04:34</span></div>'),
(1709, 'Staff LoggedIn', '2015-02-06 16:07:03', 0, 0, 'N/A', 'N/A', 'John vio', 3, 1, '<div><span class=''label label-primery label-as-badge''>John vio</span> login at <span class=''label label-warning label-as-badge''> 2015-02-06 16:07:03</span></div>'),
(1710, 'Staff LoggedIn', '2015-02-06 16:08:06', 0, 0, 'N/A', 'N/A', 'Ivan hary', 3, 1, '<div><span class=''label label-primery label-as-badge''>Ivan hary</span> login at <span class=''label label-warning label-as-badge''> 2015-02-06 16:08:06</span></div>'),
(1711, 'Staff LoggedIn', '2015-02-06 18:04:45', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-06 18:04:45</span></div>'),
(1712, 'Staff LoggedIn', '2015-02-06 18:07:50', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-06 18:07:50</span></div>'),
(1713, 'Staff LoggedIn', '2015-02-07 12:05:07', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-07 12:05:07</span></div>'),
(1714, 'Staff LoggedIn', '2015-02-07 12:14:26', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-07 12:14:26</span></div>'),
(1715, 'Staff LoggedIn', '2015-02-07 12:15:05', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-07 12:15:05</span></div>'),
(1716, 'Staff LoggedIn', '2015-02-07 13:53:14', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-07 13:53:14</span></div>'),
(1717, 'Staff LoggedIn', '2015-02-08 09:42:37', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-08 09:42:37</span></div>'),
(1718, 'Customer LoggedIn', '2015-02-08 09:44:32', 0, 1, 'abcdef_1', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>abcdef</span> come on Table <span class=''label label-info label-as-badge''>1</span>'),
(1719, 'Order Placed', '2015-02-08 09:45:00', 504, 1, 'abcdef_1', 'John vio', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>abcdef</span> Place Order On Table <span class=''label label-info label-as-badge''>1</span>'),
(1720, 'Order Placed', '2015-02-08 09:45:10', 504, 1, 'abcdef_1', 'John vio', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>abcdef</span> Place Order On Table <span class=''label label-info label-as-badge''>1</span>'),
(1721, 'Order Placed', '2015-02-08 09:45:42', 504, 1, 'abcdef_1', 'John vio', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>abcdef</span> Place Order On Table <span class=''label label-info label-as-badge''>1</span>'),
(1722, 'Waiter Called', '2015-02-08 09:46:43', 0, 1, 'abcdef_1', 'John', 'N/A', 2, 1, '<div style=''color:black;''> Customer: <span  class=''label label-success label-as-badge''>abcdef</span> on Table: <span class=''label label-info label-as-badge''> 1</span> call Waiter: <span class=''label label-primary label-as-badge''>John</span></div>'),
(1723, 'Customer LoggedIn', '2015-02-08 09:47:28', 0, 1, 'bbcwew_1', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>bbcwew</span> come on Table <span class=''label label-info label-as-badge''>1</span>'),
(1724, 'Waiter Called', '2015-02-09 03:43:15', 0, 2, NULL, 'Ivan', 'N/A', 2, 1, '<div style=''color:black;''> Customer: <span  class=''label label-success label-as-badge''></span> on Table: <span class=''label label-info label-as-badge''> 2</span> call Waiter: <span class=''label label-primary label-as-badge''>Ivan</span></div>'),
(1725, 'Staff LoggedIn', '2015-02-09 03:45:26', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-09 03:45:26</span></div>'),
(1726, 'Staff LoggedIn', '2015-02-09 05:57:49', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-09 05:57:49</span></div>'),
(1727, 'Customer LoggedIn', '2015-02-09 06:01:46', 0, 1, 'name_1', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>name</span> come on Table <span class=''label label-info label-as-badge''>1</span>'),
(1728, 'Order Placed', '2015-02-09 06:03:57', 505, 1, 'name_1', 'John vio', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>name</span> Place Order On Table <span class=''label label-info label-as-badge''>1</span>'),
(1729, 'Staff LoggedIn', '2015-02-09 06:07:33', 0, 0, 'N/A', 'N/A', 'John vio', 3, 1, '<div><span class=''label label-primery label-as-badge''>John vio</span> login at <span class=''label label-warning label-as-badge''> 2015-02-09 06:07:33</span></div>'),
(1730, 'Order Placed', '2015-02-09 06:08:07', 505, 1, 'name_1', 'John vio', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>name</span> Place Order On Table <span class=''label label-info label-as-badge''>1</span>'),
(1731, 'Waiter Called', '2015-02-09 06:09:58', 0, 1, 'name_1', 'John', 'N/A', 2, 1, '<div style=''color:black;''> Customer: <span  class=''label label-success label-as-badge''>name</span> on Table: <span class=''label label-info label-as-badge''> 1</span> call Waiter: <span class=''label label-primary label-as-badge''>John</span></div>'),
(1732, 'Waiter Called', '2015-02-09 06:10:12', 0, 1, 'name_1', 'John', 'N/A', 2, 1, '<div style=''color:black;''> Customer: <span  class=''label label-success label-as-badge''>name</span> on Table: <span class=''label label-info label-as-badge''> 1</span> Request For Refil Drink</div> '),
(1733, 'Waiter Called', '2015-02-09 06:10:51', 0, 1, 'name_1', 'John', 'N/A', 2, 1, '<div style=''color:black;''> Customer: <span  class=''label label-success label-as-badge''>name</span> on Table: <span class=''label label-info label-as-badge''> 1</span> Request For Refil Drink</div> '),
(1734, 'Waiter Called', '2015-02-09 06:10:54', 0, 1, 'name_1', 'John', 'N/A', 2, 1, '<div style=''color:black;''> Customer: <span  class=''label label-success label-as-badge''>name</span> on Table: <span class=''label label-info label-as-badge''> 1</span> Request For Refil Drink</div> '),
(1735, 'Order Placed', '2015-02-09 06:11:01', 505, 1, 'name_1', 'John vio', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>name</span> Place Order On Table <span class=''label label-info label-as-badge''>1</span>'),
(1736, 'Waiter Called', '2015-02-09 06:11:03', 0, 1, 'name_1', 'John', 'N/A', 2, 1, '<div style=''color:black;''> Customer: <span  class=''label label-success label-as-badge''>name</span> on Table: <span class=''label label-info label-as-badge''> 1</span> Request For Refil Drink</div> '),
(1737, 'Call Waiter Request Accepted', '2015-02-09 06:11:55', 0, 0, NULL, NULL, 'N/A', 2, 1, '<div style=''color:black;''> Waiter : <span  class=''label label-primary label-as-badge''></span> Accepted Request From Customer :<span  class=''label label-success label-as-badge''></span> on Table No: <span class=''label label-info label-as-badge''> </span></div>'),
(1738, 'Staff LoggedIn', '2015-02-09 06:12:45', 0, 0, 'N/A', 'N/A', 'Mayo Less', 3, 1, '<div><span class=''label label-primery label-as-badge''>Mayo Less</span> login at <span class=''label label-warning label-as-badge''> 2015-02-09 06:12:45</span></div>'),
(1739, 'Call Waiter Request Accepted', '2015-02-09 06:16:26', 0, 0, NULL, NULL, 'N/A', 2, 1, '<div style=''color:black;''> Waiter : <span  class=''label label-primary label-as-badge''></span> Accepted Request From Customer :<span  class=''label label-success label-as-badge''></span> on Table No: <span class=''label label-info label-as-badge''> </span></div>'),
(1740, 'Call Waiter Request Accepted', '2015-02-09 06:16:35', 0, 0, NULL, NULL, 'N/A', 2, 1, '<div style=''color:black;''> Waiter : <span  class=''label label-primary label-as-badge''></span> Accepted Request From Customer :<span  class=''label label-success label-as-badge''></span> on Table No: <span class=''label label-info label-as-badge''> </span></div>'),
(1741, 'Call Waiter Request Accepted', '2015-02-09 06:16:46', 0, 0, NULL, NULL, 'N/A', 2, 1, '<div style=''color:black;''> Waiter : <span  class=''label label-primary label-as-badge''></span> Accepted Request From Customer :<span  class=''label label-success label-as-badge''></span> on Table No: <span class=''label label-info label-as-badge''> </span></div>'),
(1742, 'Call Waiter Request Accepted', '2015-02-09 06:16:55', 0, 0, NULL, NULL, 'N/A', 2, 1, '<div style=''color:black;''> Waiter : <span  class=''label label-primary label-as-badge''></span> Accepted Request From Customer :<span  class=''label label-success label-as-badge''></span> on Table No: <span class=''label label-info label-as-badge''> </span></div>'),
(1743, 'Call Waiter Request Accepted', '2015-02-09 06:17:15', 0, 0, NULL, NULL, 'N/A', 2, 1, '<div style=''color:black;''> Waiter : <span  class=''label label-primary label-as-badge''></span> Accepted Request From Customer :<span  class=''label label-success label-as-badge''></span> on Table No: <span class=''label label-info label-as-badge''> </span></div>'),
(1744, 'Call Waiter Request Accepted', '2015-02-09 06:17:44', 0, 0, NULL, NULL, 'N/A', 2, 1, '<div style=''color:black;''> Waiter : <span  class=''label label-primary label-as-badge''></span> Accepted Request From Customer :<span  class=''label label-success label-as-badge''></span> on Table No: <span class=''label label-info label-as-badge''> </span></div>'),
(1745, 'Call Waiter Request Accepted', '2015-02-09 06:17:49', 0, 0, NULL, NULL, 'N/A', 2, 1, '<div style=''color:black;''> Waiter : <span  class=''label label-primary label-as-badge''></span> Accepted Request From Customer :<span  class=''label label-success label-as-badge''></span> on Table No: <span class=''label label-info label-as-badge''> </span></div>'),
(1746, 'Call Waiter Request Accepted', '2015-02-09 06:18:49', 0, 0, NULL, NULL, 'N/A', 2, 1, '<div style=''color:black;''> Waiter : <span  class=''label label-primary label-as-badge''></span> Accepted Request From Customer :<span  class=''label label-success label-as-badge''></span> on Table No: <span class=''label label-info label-as-badge''> </span></div>'),
(1747, 'Call Waiter Request Accepted', '2015-02-09 06:19:15', 0, 0, NULL, NULL, 'N/A', 2, 1, '<div style=''color:black;''> Waiter : <span  class=''label label-primary label-as-badge''></span> Accepted Request From Customer :<span  class=''label label-success label-as-badge''></span> on Table No: <span class=''label label-info label-as-badge''> </span></div>'),
(1748, 'Call Waiter Request Accepted', '2015-02-09 06:19:18', 0, 0, NULL, NULL, 'N/A', 2, 1, '<div style=''color:black;''> Waiter : <span  class=''label label-primary label-as-badge''></span> Accepted Request From Customer :<span  class=''label label-success label-as-badge''></span> on Table No: <span class=''label label-info label-as-badge''> </span></div>'),
(1749, 'Staff LoggedIn', '2015-02-09 06:27:35', 0, 0, 'N/A', 'N/A', 'Mayo Less', 3, 1, '<div><span class=''label label-primery label-as-badge''>Mayo Less</span> login at <span class=''label label-warning label-as-badge''> 2015-02-09 06:27:35</span></div>'),
(1750, 'Staff LoggedIn', '2015-02-09 07:21:57', 0, 0, 'N/A', 'N/A', 'Mayo Less', 3, 1, '<div><span class=''label label-primery label-as-badge''>Mayo Less</span> login at <span class=''label label-warning label-as-badge''> 2015-02-09 07:21:57</span></div>'),
(1751, 'Waiter Called', '2015-02-09 07:47:17', 0, 2, NULL, 'Ivan', 'N/A', 2, 1, '<div style=''color:black;''> Customer: <span  class=''label label-success label-as-badge''></span> on Table: <span class=''label label-info label-as-badge''> 2</span> call Waiter: <span class=''label label-primary label-as-badge''>Ivan</span></div>'),
(1752, 'Staff LoggedIn', '2015-02-09 08:49:23', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-09 08:49:23</span></div>'),
(1753, 'Staff LoggedIn', '2015-02-09 09:53:19', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-09 09:53:19</span></div>'),
(1754, 'Staff LoggedIn', '2015-02-09 12:38:26', 0, 0, 'N/A', 'N/A', 'John vio', 3, 1, '<div><span class=''label label-primery label-as-badge''>John vio</span> login at <span class=''label label-warning label-as-badge''> 2015-02-09 12:38:26</span></div>'),
(1755, 'Staff LoggedIn', '2015-02-09 12:43:34', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-09 12:43:34</span></div>'),
(1756, 'Staff LoggedIn', '2015-02-09 12:46:28', 0, 0, 'N/A', 'N/A', 'John vio', 3, 1, '<div><span class=''label label-primery label-as-badge''>John vio</span> login at <span class=''label label-warning label-as-badge''> 2015-02-09 12:46:28</span></div>'),
(1757, 'Staff LoggedIn', '2015-02-09 12:46:52', 0, 0, 'N/A', 'N/A', 'John vio', 3, 1, '<div><span class=''label label-primery label-as-badge''>John vio</span> login at <span class=''label label-warning label-as-badge''> 2015-02-09 12:46:52</span></div>'),
(1758, 'Staff LoggedIn', '2015-02-09 12:47:53', 0, 0, 'N/A', 'N/A', 'Ivan hary', 3, 1, '<div><span class=''label label-primery label-as-badge''>Ivan hary</span> login at <span class=''label label-warning label-as-badge''> 2015-02-09 12:47:53</span></div>'),
(1759, 'Customer LoggedIn', '2015-02-09 12:48:31', 0, 3, 'customerone_3', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>customerone</span> come on Table <span class=''label label-info label-as-badge''>3</span>'),
(1760, 'Order Placed', '2015-02-09 12:48:39', 506, 3, 'customerone_3', 'Ivan hary', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>customerone</span> Place Order On Table <span class=''label label-info label-as-badge''>3</span>'),
(1761, 'Staff LoggedIn', '2015-02-09 12:52:19', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-09 12:52:19</span></div>'),
(1762, 'Staff LoggedIn', '2015-02-09 12:58:48', 0, 0, 'N/A', 'N/A', 'janis rumo', 3, 1, '<div><span class=''label label-primery label-as-badge''>janis rumo</span> login at <span class=''label label-warning label-as-badge''> 2015-02-09 12:58:48</span></div>'),
(1763, 'Staff LoggedIn', '2015-02-09 13:02:37', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-09 13:02:37</span></div>'),
(1764, 'Staff LoggedIn', '2015-02-09 15:08:17', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-09 15:08:17</span></div>'),
(1765, 'Staff LoggedIn', '2015-02-10 05:43:19', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-10 05:43:19</span></div>'),
(1766, 'Staff LoggedIn', '2015-02-10 05:52:08', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-10 05:52:08</span></div>'),
(1767, 'Staff LoggedIn', '2015-02-10 06:06:49', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-10 06:06:49</span></div>'),
(1768, 'Staff LoggedIn', '2015-02-10 06:22:24', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-10 06:22:24</span></div>'),
(1769, 'Staff LoggedIn', '2015-02-10 06:40:03', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-10 06:40:03</span></div>'),
(1770, 'Staff LoggedIn', '2015-02-10 06:50:57', 0, 0, 'N/A', 'N/A', 'John vio', 3, 1, '<div><span class=''label label-primery label-as-badge''>John vio</span> login at <span class=''label label-warning label-as-badge''> 2015-02-10 06:50:57</span></div>'),
(1771, 'Staff LoggedIn', '2015-02-10 07:24:31', 0, 0, 'N/A', 'N/A', 'Mayo Less', 3, 1, '<div><span class=''label label-primery label-as-badge''>Mayo Less</span> login at <span class=''label label-warning label-as-badge''> 2015-02-10 07:24:31</span></div>'),
(1772, 'Staff LoggedIn', '2015-02-10 07:32:44', 0, 0, 'N/A', 'N/A', 'John vio', 3, 1, '<div><span class=''label label-primery label-as-badge''>John vio</span> login at <span class=''label label-warning label-as-badge''> 2015-02-10 07:32:44</span></div>'),
(1773, 'Staff LoggedIn', '2015-02-10 08:46:40', 0, 0, 'N/A', 'N/A', 'John vio', 3, 1, '<div><span class=''label label-primery label-as-badge''>John vio</span> login at <span class=''label label-warning label-as-badge''> 2015-02-10 08:46:40</span></div>'),
(1774, 'Call Waiter Request Accepted', '2015-02-10 08:46:54', 0, 2, 'N/A', 'John', 'N/A', 2, 1, '<div style=''color:black;''> Waiter : <span  class=''label label-primary label-as-badge''>John</span> Accepted Request From Table No: <span class=''label label-info label-as-badge''> 2</span></div>'),
(1775, 'Staff LoggedIn', '2015-02-10 08:56:45', 0, 0, 'N/A', 'N/A', 'John vio', 3, 1, '<div><span class=''label label-primery label-as-badge''>John vio</span> login at <span class=''label label-warning label-as-badge''> 2015-02-10 08:56:45</span></div>'),
(1776, 'Call Waiter Request Accepted', '2015-02-10 08:56:50', 0, 2, 'N/A', 'John', 'N/A', 2, 1, '<div style=''color:black;''> Waiter : <span  class=''label label-primary label-as-badge''>John</span> Accepted Request From Table No: <span class=''label label-info label-as-badge''> 2</span></div>'),
(1777, 'Staff LoggedIn', '2015-02-10 08:59:15', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-10 08:59:15</span></div>'),
(1778, 'Staff LoggedIn', '2015-02-10 09:27:38', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-10 09:27:38</span></div>'),
(1779, 'Staff LoggedIn', '2015-02-10 09:53:55', 0, 0, 'N/A', 'N/A', 'John vio', 3, 1, '<div><span class=''label label-primery label-as-badge''>John vio</span> login at <span class=''label label-warning label-as-badge''> 2015-02-10 09:53:55</span></div>'),
(1780, 'Customer LoggedIn', '2015-02-10 10:17:17', 0, 68, 'abcdefghu_68', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>abcdefghu</span> come on Table <span class=''label label-info label-as-badge''>68</span>'),
(1781, 'Customer LoggedIn', '2015-02-10 10:20:41', 0, 68, 'abcdefghu_68', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>abcdefghu</span> come on Table <span class=''label label-info label-as-badge''>68</span>'),
(1782, 'Staff LoggedIn', '2015-02-10 10:37:57', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-10 10:37:57</span></div>'),
(1783, 'Customer LoggedIn', '2015-02-10 10:42:00', 0, 68, 'xysdasd_68', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>xysdasd</span> come on Table <span class=''label label-info label-as-badge''>68</span>'),
(1784, 'Customer LoggedIn', '2015-02-10 10:53:23', 0, 68, 'xysdasd_68', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>xysdasd</span> come on Table <span class=''label label-info label-as-badge''>68</span>'),
(1785, 'Staff LoggedIn', '2015-02-10 10:57:41', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-10 10:57:41</span></div>'),
(1786, 'Staff LoggedIn', '2015-02-10 11:09:53', 0, 0, 'N/A', 'N/A', 'Mayo Less', 3, 1, '<div><span class=''label label-primery label-as-badge''>Mayo Less</span> login at <span class=''label label-warning label-as-badge''> 2015-02-10 11:09:53</span></div>'),
(1787, 'Customer LoggedIn', '2015-02-10 11:10:18', 0, 68, 'sadasd_68', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>sadasd</span> come on Table <span class=''label label-info label-as-badge''>68</span>'),
(1788, 'Customer LoggedIn', '2015-02-10 11:44:55', 0, 68, 'asasdas_68', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>asasdas</span> come on Table <span class=''label label-info label-as-badge''>68</span>'),
(1789, 'Staff LoggedIn', '2015-02-10 12:14:53', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-10 12:14:53</span></div>'),
(1790, 'Customer LoggedIn', '2015-02-10 12:15:58', 0, 68, 'khushi_68', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>khushi</span> come on Table <span class=''label label-info label-as-badge''>68</span>'),
(1791, 'Customer LoggedIn', '2015-02-10 12:21:38', 0, 68, 'dasdasda_68', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>dasdasda</span> come on Table <span class=''label label-info label-as-badge''>68</span>'),
(1792, 'Customer LoggedIn', '2015-02-10 12:22:23', 0, 68, 'ASDFADASDASDA_68', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>ASDFADASDASDA</span> come on Table <span class=''label label-info label-as-badge''>68</span>'),
(1793, 'Staff LoggedIn', '2015-02-10 13:02:37', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-10 13:02:37</span></div>'),
(1794, 'Staff LoggedIn', '2015-02-10 13:02:51', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-10 13:02:51</span></div>'),
(1795, 'Staff LoggedIn', '2015-02-10 13:38:51', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-10 13:38:51</span></div>'),
(1796, 'Customer LoggedIn', '2015-02-10 13:48:53', 0, 68, 'asdsdasdasdasd_68', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>asdsdasdasdasd</span> come on Table <span class=''label label-info label-as-badge''>68</span>'),
(1797, 'Staff LoggedIn', '2015-02-10 13:59:26', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-10 13:59:26</span></div>');
INSERT INTO `notification_log` (`id`, `notifications`, `created_at`, `order_id`, `tablenumber`, `customer_unique_id`, `waiter`, `staff`, `type_id`, `is_watch`, `text`) VALUES
(1798, 'Staff LoggedIn', '2015-02-10 15:23:07', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-10 15:23:07</span></div>'),
(1799, 'Staff LoggedIn', '2015-02-10 17:00:19', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-10 17:00:19</span></div>'),
(1800, 'Staff LoggedIn', '2015-02-11 05:37:33', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-11 05:37:33</span></div>'),
(1801, 'Staff LoggedIn', '2015-02-11 05:37:44', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-11 05:37:44</span></div>'),
(1802, 'Staff LoggedIn', '2015-02-11 05:40:31', 0, 0, 'N/A', 'N/A', 'Mayo Less', 3, 1, '<div><span class=''label label-primery label-as-badge''>Mayo Less</span> login at <span class=''label label-warning label-as-badge''> 2015-02-11 05:40:31</span></div>'),
(1803, 'Staff LoggedIn', '2015-02-11 05:57:11', 0, 0, 'N/A', 'N/A', 'John vio', 3, 1, '<div><span class=''label label-primery label-as-badge''>John vio</span> login at <span class=''label label-warning label-as-badge''> 2015-02-11 05:57:11</span></div>'),
(1804, 'Customer LoggedIn', '2015-02-11 06:04:24', 0, 1, 'khushi_1', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>khushi</span> come on Table <span class=''label label-info label-as-badge''>1</span>'),
(1805, 'Staff LoggedIn', '2015-02-11 06:05:07', 0, 0, 'N/A', 'N/A', 'Ivan hary', 3, 1, '<div><span class=''label label-primery label-as-badge''>Ivan hary</span> login at <span class=''label label-warning label-as-badge''> 2015-02-11 06:05:07</span></div>'),
(1806, 'Staff LoggedIn', '2015-02-11 06:05:28', 0, 0, 'N/A', 'N/A', 'janis rumo', 3, 1, '<div><span class=''label label-primery label-as-badge''>janis rumo</span> login at <span class=''label label-warning label-as-badge''> 2015-02-11 06:05:28</span></div>'),
(1807, 'Staff LoggedIn', '2015-02-11 06:05:44', 0, 0, 'N/A', 'N/A', 'harry jainy', 3, 1, '<div><span class=''label label-primery label-as-badge''>harry jainy</span> login at <span class=''label label-warning label-as-badge''> 2015-02-11 06:05:44</span></div>'),
(1808, 'Staff LoggedIn', '2015-02-11 06:07:59', 0, 0, 'N/A', 'N/A', 'John vio', 3, 1, '<div><span class=''label label-primery label-as-badge''>John vio</span> login at <span class=''label label-warning label-as-badge''> 2015-02-11 06:07:59</span></div>'),
(1809, 'Staff LoggedIn', '2015-02-11 06:08:20', 0, 0, 'N/A', 'N/A', 'John vio', 3, 1, '<div><span class=''label label-primery label-as-badge''>John vio</span> login at <span class=''label label-warning label-as-badge''> 2015-02-11 06:08:20</span></div>'),
(1810, 'Staff LoggedIn', '2015-02-11 06:09:18', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-11 06:09:18</span></div>'),
(1811, 'Order Placed', '2015-02-11 06:11:05', 512, 1, 'khushi_1', 'John vio', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>khushi</span> Place Order On Table <span class=''label label-info label-as-badge''>1</span>'),
(1812, 'Staff LoggedIn', '2015-02-11 06:12:16', 0, 0, 'N/A', 'N/A', 'Mayo Less', 3, 1, '<div><span class=''label label-primery label-as-badge''>Mayo Less</span> login at <span class=''label label-warning label-as-badge''> 2015-02-11 06:12:16</span></div>'),
(1813, 'Customer LoggedIn', '2015-02-11 06:14:32', 0, 2, 'bhumin_2', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>bhumin</span> come on Table <span class=''label label-info label-as-badge''>2</span>'),
(1814, 'Order Placed', '2015-02-11 06:14:48', 513, 2, 'bhumin_2', 'Ivan hary', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>bhumin</span> Place Order On Table <span class=''label label-info label-as-badge''>2</span>'),
(1815, 'Waiter Called', '2015-02-11 06:25:44', 0, 1, 'khushi_1', 'John', 'N/A', 2, 1, '<div style=''color:black;''> Customer: <span  class=''label label-success label-as-badge''>khushi</span> on Table: <span class=''label label-info label-as-badge''> 1</span> call Waiter: <span class=''label label-primary label-as-badge''>John</span></div>'),
(1816, 'Staff LoggedIn', '2015-02-11 06:26:59', 0, 0, 'N/A', 'N/A', 'John vio', 3, 1, '<div><span class=''label label-primery label-as-badge''>John vio</span> login at <span class=''label label-warning label-as-badge''> 2015-02-11 06:26:59</span></div>'),
(1817, 'Call Waiter Request Accepted', '2015-02-11 06:27:39', 0, 1, 'N/A', 'John', 'N/A', 2, 1, '<div style=''color:black;''> Waiter : <span  class=''label label-primary label-as-badge''>John</span> Accepted Request From Table No: <span class=''label label-info label-as-badge''> 1</span></div>'),
(1818, 'Call Waiter Request Accepted', '2015-02-11 06:27:52', 0, 1, 'N/A', 'John', 'N/A', 2, 1, '<div style=''color:black;''> Waiter : <span  class=''label label-primary label-as-badge''>John</span> Accepted Request From Table No: <span class=''label label-info label-as-badge''> 1</span></div>'),
(1819, 'Waiter Called', '2015-02-11 06:28:44', 0, 1, 'khushi_1', 'John', 'N/A', 2, 1, '<div style=''color:black;''> Customer: <span  class=''label label-success label-as-badge''>khushi</span> on Table: <span class=''label label-info label-as-badge''> 1</span> Request For Refil Drink</div> '),
(1820, 'Customer LoggedIn', '2015-02-11 06:30:39', 0, 3, 'khushisoni_3', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>khushisoni</span> come on Table <span class=''label label-info label-as-badge''>3</span>'),
(1821, 'Order Placed', '2015-02-11 06:32:57', 514, 3, 'khushisoni_3', 'janis rumo', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>khushisoni</span> Place Order On Table <span class=''label label-info label-as-badge''>3</span>'),
(1822, 'Waiter Called', '2015-02-11 06:33:01', 0, 3, 'khushisoni_3', 'janis', 'N/A', 2, 1, '<div style=''color:black;''> Customer: <span  class=''label label-success label-as-badge''>khushisoni</span> on Table: <span class=''label label-info label-as-badge''> 3</span> Request For Refil Drink</div> '),
(1823, 'Order Placed', '2015-02-11 06:34:17', 514, 3, 'khushisoni_3', 'janis rumo', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>khushisoni</span> Place Order On Table <span class=''label label-info label-as-badge''>3</span>'),
(1824, 'Customer LoggedIn', '2015-02-11 06:37:42', 0, 3, '8452812880_3', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>8452812880</span> come on Table <span class=''label label-info label-as-badge''>3</span>'),
(1825, 'Order Placed', '2015-02-11 06:38:01', 515, 3, '8452812880_3', 'janis rumo', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>8452812880</span> Place Order On Table <span class=''label label-info label-as-badge''>3</span>'),
(1826, 'Customer LoggedIn', '2015-02-11 06:42:59', 0, 68, 'xyzdbc_68', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>xyzdbc</span> come on Table <span class=''label label-info label-as-badge''>68</span>'),
(1827, 'Staff LoggedIn', '2015-02-11 07:19:26', 0, 0, 'N/A', 'N/A', 'Mayo Less', 3, 1, '<div><span class=''label label-primery label-as-badge''>Mayo Less</span> login at <span class=''label label-warning label-as-badge''> 2015-02-11 07:19:26</span></div>'),
(1828, 'Staff LoggedIn', '2015-02-11 08:01:32', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-11 08:01:32</span></div>'),
(1829, 'Staff LoggedIn', '2015-02-11 08:01:34', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-11 08:01:34</span></div>'),
(1830, 'Staff LoggedIn', '2015-02-11 08:44:38', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-11 08:44:38</span></div>'),
(1831, 'Customer LoggedIn', '2015-02-11 09:00:49', 0, 1, 'newone_1', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>newone</span> come on Table <span class=''label label-info label-as-badge''>1</span>'),
(1832, 'Order Placed', '2015-02-11 09:00:54', 518, 1, 'newone_1', 'John vio', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>newone</span> Place Order On Table <span class=''label label-info label-as-badge''>1</span>'),
(1833, 'Waiter Called', '2015-02-11 09:00:57', 0, 1, 'newone_1', 'John', 'N/A', 2, 1, '<div style=''color:black;''> Customer: <span  class=''label label-success label-as-badge''>newone</span> on Table: <span class=''label label-info label-as-badge''> 1</span> call Waiter: <span class=''label label-primary label-as-badge''>John</span></div>'),
(1834, 'Waiter Called', '2015-02-11 09:01:28', 0, 1, 'newone_1', 'John', 'N/A', 2, 1, '<div style=''color:black;''> Customer: <span  class=''label label-success label-as-badge''>newone</span> on Table: <span class=''label label-info label-as-badge''> 1</span> call Waiter: <span class=''label label-primary label-as-badge''>John</span></div>'),
(1835, 'Customer LoggedIn', '2015-02-11 09:02:11', 0, 3, 'xyz_3', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>xyz</span> come on Table <span class=''label label-info label-as-badge''>3</span>'),
(1836, 'Waiter Called', '2015-02-11 09:02:13', 0, 3, 'xyz_3', 'janis', 'N/A', 2, 1, '<div style=''color:black;''> Customer: <span  class=''label label-success label-as-badge''>xyz</span> on Table: <span class=''label label-info label-as-badge''> 3</span> call Waiter: <span class=''label label-primary label-as-badge''>janis</span></div>'),
(1837, 'Waiter Called', '2015-02-11 09:02:57', 0, 1, 'newone_1', 'John', 'N/A', 2, 1, '<div style=''color:black;''> Customer: <span  class=''label label-success label-as-badge''>newone</span> on Table: <span class=''label label-info label-as-badge''> 1</span> call Waiter: <span class=''label label-primary label-as-badge''>John</span></div>'),
(1838, 'Waiter Called', '2015-02-11 09:03:15', 0, 1, 'newone_1', 'John', 'N/A', 2, 1, '<div style=''color:black;''> Customer: <span  class=''label label-success label-as-badge''>newone</span> on Table: <span class=''label label-info label-as-badge''> 1</span> Request For Refil Drink</div> '),
(1839, 'Waiter Called', '2015-02-11 09:03:15', 0, 1, 'newone_1', 'John', 'N/A', 2, 1, '<div style=''color:black;''> Customer: <span  class=''label label-success label-as-badge''>newone</span> on Table: <span class=''label label-info label-as-badge''> 1</span> Request For Refil Drink</div> '),
(1840, 'Waiter Called', '2015-02-11 09:03:35', 0, 1, 'newone_1', 'John', 'N/A', 2, 1, '<div style=''color:black;''> Customer: <span  class=''label label-success label-as-badge''>newone</span> on Table: <span class=''label label-info label-as-badge''> 1</span> Request For Refil Drink</div> '),
(1841, 'Order Placed', '2015-02-11 09:03:46', 518, 1, 'newone_1', 'John vio', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>newone</span> Place Order On Table <span class=''label label-info label-as-badge''>1</span>'),
(1842, 'Order Placed', '2015-02-11 09:06:37', 518, 1, 'newone_1', 'John vio', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>newone</span> Place Order On Table <span class=''label label-info label-as-badge''>1</span>'),
(1843, 'Staff LoggedIn', '2015-02-11 09:07:14', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-11 09:07:14</span></div>'),
(1844, 'Order Placed', '2015-02-11 09:07:48', 518, 1, 'newone_1', 'John vio', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>newone</span> Place Order On Table <span class=''label label-info label-as-badge''>1</span>'),
(1845, 'Order Placed', '2015-02-11 09:10:46', 518, 1, 'newone_1', 'John vio', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>newone</span> Place Order On Table <span class=''label label-info label-as-badge''>1</span>'),
(1846, 'Staff LoggedIn', '2015-02-11 09:20:52', 0, 0, 'N/A', 'N/A', 'Mayo Less', 3, 1, '<div><span class=''label label-primery label-as-badge''>Mayo Less</span> login at <span class=''label label-warning label-as-badge''> 2015-02-11 09:20:52</span></div>'),
(1847, 'Staff LoggedIn', '2015-02-11 09:25:35', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-11 09:25:35</span></div>'),
(1848, 'Customer LoggedIn', '2015-02-11 09:28:03', 0, 1, 'khushbu_1', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>khushbu</span> come on Table <span class=''label label-info label-as-badge''>1</span>'),
(1849, 'Customer LoggedIn', '2015-02-11 09:33:36', 0, 1, 'fgfdgdfg_1', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>fgfdgdfg</span> come on Table <span class=''label label-info label-as-badge''>1</span>'),
(1850, 'Order Placed', '2015-02-11 09:33:39', 519, 1, 'fgfdgdfg_1', 'John vio', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>fgfdgdfg</span> Place Order On Table <span class=''label label-info label-as-badge''>1</span>'),
(1851, 'Waiter Called', '2015-02-11 09:34:11', 0, 1, 'fgfdgdfg_1', 'John', 'N/A', 2, 1, '<div style=''color:black;''> Customer: <span  class=''label label-success label-as-badge''>fgfdgdfg</span> on Table: <span class=''label label-info label-as-badge''> 1</span> call Waiter: <span class=''label label-primary label-as-badge''>John</span></div>'),
(1852, 'Waiter Called', '2015-02-11 09:34:30', 0, 1, 'fgfdgdfg_1', 'John', 'N/A', 2, 1, '<div style=''color:black;''> Customer: <span  class=''label label-success label-as-badge''>fgfdgdfg</span> on Table: <span class=''label label-info label-as-badge''> 1</span> Request For Refil Drink</div> '),
(1853, 'Waiter Called', '2015-02-11 09:36:42', 0, 1, 'fgfdgdfg_1', 'John', 'N/A', 2, 1, '<div style=''color:black;''> Customer: <span  class=''label label-success label-as-badge''>fgfdgdfg</span> on Table: <span class=''label label-info label-as-badge''> 1</span> Request For Refil Drink</div> '),
(1854, 'Order Placed', '2015-02-11 09:41:00', 519, 1, 'fgfdgdfg_1', 'John vio', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>fgfdgdfg</span> Place Order On Table <span class=''label label-info label-as-badge''>1</span>'),
(1855, 'Order Placed', '2015-02-11 09:41:56', 519, 1, 'fgfdgdfg_1', 'John vio', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>fgfdgdfg</span> Place Order On Table <span class=''label label-info label-as-badge''>1</span>'),
(1856, 'Waiter Called', '2015-02-11 09:42:43', 0, 1, 'fgfdgdfg_1', 'John', 'N/A', 2, 1, '<div style=''color:black;''> Customer: <span  class=''label label-success label-as-badge''>fgfdgdfg</span> on Table: <span class=''label label-info label-as-badge''> 1</span> Request For Refil Drink</div> '),
(1857, 'Staff LoggedIn', '2015-02-11 09:53:18', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-11 09:53:18</span></div>'),
(1858, 'Staff LoggedIn', '2015-02-11 13:40:29', 0, 0, 'N/A', 'N/A', 'John vio', 3, 1, '<div><span class=''label label-primery label-as-badge''>John vio</span> login at <span class=''label label-warning label-as-badge''> 2015-02-11 13:40:29</span></div>'),
(1859, 'Staff LoggedIn', '2015-02-11 13:41:22', 0, 0, 'N/A', 'N/A', 'John vio', 3, 1, '<div><span class=''label label-primery label-as-badge''>John vio</span> login at <span class=''label label-warning label-as-badge''> 2015-02-11 13:41:22</span></div>'),
(1860, 'Staff LoggedIn', '2015-02-11 13:42:10', 0, 0, 'N/A', 'N/A', 'John vio', 3, 1, '<div><span class=''label label-primery label-as-badge''>John vio</span> login at <span class=''label label-warning label-as-badge''> 2015-02-11 13:42:10</span></div>'),
(1861, 'Staff LoggedIn', '2015-02-11 13:47:04', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-11 13:47:04</span></div>'),
(1862, 'Call Waiter Request Accepted', '2015-02-11 13:48:02', 0, 1, 'N/A', 'John', 'N/A', 2, 1, '<div style=''color:black;''> Waiter : <span  class=''label label-primary label-as-badge''>John</span> Accepted Request From Table No: <span class=''label label-info label-as-badge''> 1</span></div>'),
(1863, 'Call Waiter Request Accepted', '2015-02-11 13:48:10', 0, 1, 'N/A', 'John', 'N/A', 2, 1, '<div style=''color:black;''> Waiter : <span  class=''label label-primary label-as-badge''>John</span> Accepted Request From Table No: <span class=''label label-info label-as-badge''> 1</span></div>'),
(1864, 'Call Waiter Request Accepted', '2015-02-11 13:48:13', 0, 1, 'N/A', 'John', 'N/A', 2, 1, '<div style=''color:black;''> Waiter : <span  class=''label label-primary label-as-badge''>John</span> Accepted Request From Table No: <span class=''label label-info label-as-badge''> 1</span></div>'),
(1865, 'Call Waiter Request Accepted', '2015-02-11 13:48:19', 0, 1, 'N/A', 'John', 'N/A', 2, 1, '<div style=''color:black;''> Waiter : <span  class=''label label-primary label-as-badge''>John</span> Accepted Request From Table No: <span class=''label label-info label-as-badge''> 1</span></div>'),
(1866, 'Call Waiter Request Accepted', '2015-02-11 13:48:34', 0, 1, 'N/A', 'John', 'N/A', 2, 1, '<div style=''color:black;''> Waiter : <span  class=''label label-primary label-as-badge''>John</span> Accepted Request From Table No: <span class=''label label-info label-as-badge''> 1</span></div>'),
(1867, 'Call Waiter Request Accepted', '2015-02-11 13:48:35', 0, 1, 'N/A', 'John', 'N/A', 2, 1, '<div style=''color:black;''> Waiter : <span  class=''label label-primary label-as-badge''>John</span> Accepted Request From Table No: <span class=''label label-info label-as-badge''> 1</span></div>'),
(1868, 'Staff LoggedIn', '2015-02-11 14:07:43', 0, 0, 'N/A', 'N/A', 'Mayo Less', 3, 1, '<div><span class=''label label-primery label-as-badge''>Mayo Less</span> login at <span class=''label label-warning label-as-badge''> 2015-02-11 14:07:43</span></div>'),
(1869, 'Staff LoggedIn', '2015-02-11 14:22:21', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-11 14:22:21</span></div>'),
(1870, 'Staff LoggedIn', '2015-02-11 14:36:23', 0, 0, 'N/A', 'N/A', 'elen marlo', 3, 1, '<div><span class=''label label-primery label-as-badge''>elen marlo</span> login at <span class=''label label-warning label-as-badge''> 2015-02-11 14:36:23</span></div>'),
(1871, 'Order Placed', '2015-02-11 15:02:26', 520, 2, 'bhumin_2', 'Ivan hary', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>bhumin</span> Place Order On Table <span class=''label label-info label-as-badge''>2</span>'),
(1872, 'Staff LoggedIn', '2015-02-11 15:11:24', 0, 0, 'N/A', 'N/A', 'Owner Owner', 3, 1, '<div><span class=''label label-primery label-as-badge''>Owner Owner</span> login at <span class=''label label-warning label-as-badge''> 2015-02-11 15:11:24</span></div>'),
(1873, 'Staff LoggedIn', '2015-02-11 15:15:49', 0, 0, 'N/A', 'N/A', 'elen marlo', 3, 1, '<div><span class=''label label-primery label-as-badge''>elen marlo</span> login at <span class=''label label-warning label-as-badge''> 2015-02-11 15:15:49</span></div>'),
(1874, 'Order Placed', '2015-02-11 15:16:04', 513, 2, 'bhumin_2', 'Ivan hary', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>bhumin</span> Place Order On Table <span class=''label label-info label-as-badge''>2</span>'),
(1875, 'Staff LoggedIn', '2015-02-11 15:19:07', 0, 0, 'N/A', 'N/A', 'elen marlo', 3, 1, '<div><span class=''label label-primery label-as-badge''>elen marlo</span> login at <span class=''label label-warning label-as-badge''> 2015-02-11 15:19:07</span></div>'),
(1876, 'Order Placed', '2015-02-11 15:19:28', 513, 2, 'bhumin_2', 'Ivan hary', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>bhumin</span> Place Order On Table <span class=''label label-info label-as-badge''>2</span>'),
(1877, 'Waiter Called', '2015-02-11 18:00:33', 0, 4, NULL, 'elen', 'N/A', 2, 1, '<div style=''color:black;''> Customer: <span  class=''label label-success label-as-badge''></span> on Table: <span class=''label label-info label-as-badge''> 4</span> call Waiter: <span class=''label label-primary label-as-badge''>elen</span></div>'),
(1878, 'Customer LoggedIn', '2015-02-11 18:01:06', 0, 4, 'Xyz_4', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>Xyz</span> come on Table <span class=''label label-info label-as-badge''>4</span>'),
(1879, 'Order Placed', '2015-02-11 18:02:22', 521, 4, 'Xyz_4', 'elen marlo', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>Xyz</span> Place Order On Table <span class=''label label-info label-as-badge''>4</span>'),
(1880, 'Staff LoggedIn', '2015-02-11 20:39:25', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-11 20:39:25</span></div>'),
(1881, 'Staff LoggedIn', '2015-02-11 20:44:30', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-11 20:44:30</span></div>'),
(1882, 'Staff LoggedIn', '2015-02-11 20:44:46', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-11 20:44:46</span></div>'),
(1883, 'Staff LoggedIn', '2015-02-12 05:46:26', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-12 05:46:26</span></div>'),
(1884, 'Customer LoggedIn', '2015-02-12 05:47:16', 0, 68, 'todayorder_68', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>todayorder</span> come on Table <span class=''label label-info label-as-badge''>68</span>'),
(1885, 'Staff LoggedIn', '2015-02-12 05:51:40', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-12 05:51:40</span></div>'),
(1886, 'Staff LoggedIn', '2015-02-12 05:55:44', 0, 0, 'N/A', 'N/A', 'Owner Owner', 3, 1, '<div><span class=''label label-primery label-as-badge''>Owner Owner</span> login at <span class=''label label-warning label-as-badge''> 2015-02-12 05:55:44</span></div>'),
(1887, 'Customer LoggedIn', '2015-02-12 05:57:01', 0, 15, 'jhighjsd_15', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>jhighjsd</span> come on Table <span class=''label label-info label-as-badge''>15</span>'),
(1888, 'Order Placed', '2015-02-12 05:57:12', 523, 15, 'jhighjsd_15', 'Ivan hary', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>jhighjsd</span> Place Order On Table <span class=''label label-info label-as-badge''>15</span>'),
(1889, 'Staff LoggedIn', '2015-02-12 06:00:22', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-12 06:00:22</span></div>'),
(1890, 'Staff LoggedIn', '2015-02-12 06:15:52', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-12 06:15:52</span></div>'),
(1891, 'Staff LoggedIn', '2015-02-12 06:26:17', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-12 06:26:17</span></div>'),
(1892, 'Staff LoggedIn', '2015-02-12 06:26:54', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-12 06:26:54</span></div>'),
(1893, 'Staff LoggedIn', '2015-02-12 06:29:17', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-12 06:29:17</span></div>'),
(1894, 'Staff LoggedIn', '2015-02-12 06:32:01', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-12 06:32:01</span></div>'),
(1895, 'Staff LoggedIn', '2015-02-12 06:34:42', 0, 0, 'N/A', 'N/A', 'John vio', 3, 1, '<div><span class=''label label-primery label-as-badge''>John vio</span> login at <span class=''label label-warning label-as-badge''> 2015-02-12 06:34:42</span></div>'),
(1896, 'Staff LoggedIn', '2015-02-12 06:35:59', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-12 06:35:59</span></div>'),
(1897, 'Staff LoggedIn', '2015-02-12 06:43:42', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-12 06:43:42</span></div>'),
(1898, 'Staff LoggedIn', '2015-02-12 06:43:54', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-12 06:43:54</span></div>'),
(1899, 'Staff LoggedIn', '2015-02-12 06:45:07', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-12 06:45:07</span></div>'),
(1900, 'Staff LoggedIn', '2015-02-12 06:48:45', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-12 06:48:45</span></div>'),
(1901, 'Staff LoggedIn', '2015-02-12 06:52:03', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-12 06:52:03</span></div>'),
(1902, 'Staff LoggedIn', '2015-02-12 06:56:48', 0, 0, 'N/A', 'N/A', 'John vio', 3, 1, '<div><span class=''label label-primery label-as-badge''>John vio</span> login at <span class=''label label-warning label-as-badge''> 2015-02-12 06:56:48</span></div>'),
(1903, 'Staff LoggedIn', '2015-02-12 06:58:39', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-12 06:58:39</span></div>'),
(1904, 'Staff LoggedIn', '2015-02-12 07:14:49', 0, 0, 'N/A', 'N/A', 'John vio', 3, 1, '<div><span class=''label label-primery label-as-badge''>John vio</span> login at <span class=''label label-warning label-as-badge''> 2015-02-12 07:14:49</span></div>'),
(1905, 'Staff LoggedIn', '2015-02-12 08:03:44', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-12 08:03:44</span></div>'),
(1906, 'Staff LoggedIn', '2015-02-12 08:41:14', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-12 08:41:14</span></div>'),
(1907, 'Staff LoggedIn', '2015-02-12 08:48:52', 0, 0, 'N/A', 'N/A', 'Owner Owner', 3, 1, '<div><span class=''label label-primery label-as-badge''>Owner Owner</span> login at <span class=''label label-warning label-as-badge''> 2015-02-12 08:48:52</span></div>'),
(1908, 'Staff LoggedIn', '2015-02-12 08:58:40', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-12 08:58:40</span></div>'),
(1909, 'Staff LoggedIn', '2015-02-12 09:04:40', 0, 0, 'N/A', 'N/A', 'John vio', 3, 1, '<div><span class=''label label-primery label-as-badge''>John vio</span> login at <span class=''label label-warning label-as-badge''> 2015-02-12 09:04:40</span></div>'),
(1910, 'Staff LoggedIn', '2015-02-12 09:18:05', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-12 09:18:05</span></div>'),
(1911, 'Staff LoggedIn', '2015-02-12 09:42:37', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-12 09:42:37</span></div>'),
(1912, 'Staff LoggedIn', '2015-02-12 09:58:27', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-12 09:58:27</span></div>'),
(1913, 'Staff LoggedIn', '2015-02-12 10:14:33', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-12 10:14:33</span></div>'),
(1914, 'Staff LoggedIn', '2015-02-12 10:20:34', 0, 0, 'N/A', 'N/A', 'Owner Owner', 3, 1, '<div><span class=''label label-primery label-as-badge''>Owner Owner</span> login at <span class=''label label-warning label-as-badge''> 2015-02-12 10:20:34</span></div>'),
(1915, 'Staff LoggedIn', '2015-02-12 10:30:12', 0, 0, 'N/A', 'N/A', 'John vio', 3, 1, '<div><span class=''label label-primery label-as-badge''>John vio</span> login at <span class=''label label-warning label-as-badge''> 2015-02-12 10:30:12</span></div>'),
(1916, 'Staff LoggedIn', '2015-02-12 10:30:47', 0, 0, 'N/A', 'N/A', 'John vio', 3, 1, '<div><span class=''label label-primery label-as-badge''>John vio</span> login at <span class=''label label-warning label-as-badge''> 2015-02-12 10:30:47</span></div>'),
(1917, 'Staff LoggedIn', '2015-02-12 10:31:16', 0, 0, 'N/A', 'N/A', 'John vio', 3, 1, '<div><span class=''label label-primery label-as-badge''>John vio</span> login at <span class=''label label-warning label-as-badge''> 2015-02-12 10:31:16</span></div>'),
(1918, 'Staff LoggedIn', '2015-02-12 10:33:48', 0, 0, 'N/A', 'N/A', 'Owner Owner', 3, 1, '<div><span class=''label label-primery label-as-badge''>Owner Owner</span> login at <span class=''label label-warning label-as-badge''> 2015-02-12 10:33:48</span></div>'),
(1919, 'Staff LoggedIn', '2015-02-12 10:33:57', 0, 0, 'N/A', 'N/A', 'John vio', 3, 1, '<div><span class=''label label-primery label-as-badge''>John vio</span> login at <span class=''label label-warning label-as-badge''> 2015-02-12 10:33:57</span></div>'),
(1920, 'Staff LoggedIn', '2015-02-12 10:34:15', 0, 0, 'N/A', 'N/A', 'John vio', 3, 1, '<div><span class=''label label-primery label-as-badge''>John vio</span> login at <span class=''label label-warning label-as-badge''> 2015-02-12 10:34:15</span></div>'),
(1921, 'Staff LoggedIn', '2015-02-12 10:39:03', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-12 10:39:03</span></div>'),
(1922, 'Staff LoggedIn', '2015-02-12 11:08:43', 0, 0, 'N/A', 'N/A', 'John vio', 3, 1, '<div><span class=''label label-primery label-as-badge''>John vio</span> login at <span class=''label label-warning label-as-badge''> 2015-02-12 11:08:43</span></div>'),
(1923, 'Staff LoggedIn', '2015-02-12 11:10:33', 0, 0, 'N/A', 'N/A', 'John vio', 3, 1, '<div><span class=''label label-primery label-as-badge''>John vio</span> login at <span class=''label label-warning label-as-badge''> 2015-02-12 11:10:33</span></div>'),
(1924, 'Customer LoggedIn', '2015-02-12 11:29:13', 0, 1, 'sdf_1', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>sdf</span> come on Table <span class=''label label-info label-as-badge''>1</span>'),
(1925, 'Order Placed', '2015-02-12 11:30:41', 524, 1, 'sdf_1', 'John vio', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>sdf</span> Place Order On Table <span class=''label label-info label-as-badge''>1</span>'),
(1926, 'Staff LoggedIn', '2015-02-12 11:38:07', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-12 11:38:07</span></div>'),
(1927, 'Staff LoggedIn', '2015-02-12 11:46:31', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-12 11:46:31</span></div>'),
(1928, 'Customer LoggedIn', '2015-02-12 11:57:22', 0, 68, 'takeaway_68', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>takeaway</span> come on Table <span class=''label label-info label-as-badge''>68</span>'),
(1929, 'Staff LoggedIn', '2015-02-12 12:21:52', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-12 12:21:52</span></div>'),
(1930, 'Customer LoggedIn', '2015-02-12 12:24:24', 0, 68, 'fastorder_68', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>fastorder</span> come on Table <span class=''label label-info label-as-badge''>68</span>'),
(1931, 'Staff LoggedIn', '2015-02-12 12:40:00', 0, 0, 'N/A', 'N/A', 'Owner Owner', 3, 1, '<div><span class=''label label-primery label-as-badge''>Owner Owner</span> login at <span class=''label label-warning label-as-badge''> 2015-02-12 12:40:00</span></div>'),
(1932, 'Staff LoggedIn', '2015-02-12 12:54:16', 0, 0, 'N/A', 'N/A', 'Owner Owner', 3, 1, '<div><span class=''label label-primery label-as-badge''>Owner Owner</span> login at <span class=''label label-warning label-as-badge''> 2015-02-12 12:54:16</span></div>'),
(1933, 'Staff LoggedIn', '2015-02-12 13:34:35', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-12 13:34:35</span></div>'),
(1934, 'Customer LoggedIn', '2015-02-12 13:42:49', 0, 68, 'ontheway_68', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>ontheway</span> come on Table <span class=''label label-info label-as-badge''>68</span>'),
(1935, 'Staff LoggedIn', '2015-02-12 13:43:44', 0, 0, 'N/A', 'N/A', 'Owner Owner', 3, 1, '<div><span class=''label label-primery label-as-badge''>Owner Owner</span> login at <span class=''label label-warning label-as-badge''> 2015-02-12 13:43:44</span></div>'),
(1936, 'Staff LoggedIn', '2015-02-12 14:47:39', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-12 14:47:39</span></div>'),
(1937, 'Customer LoggedIn', '2015-02-13 05:19:34', 0, 5, 'abcdadsd_5', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>abcdadsd</span> come on Table <span class=''label label-info label-as-badge''>5</span>'),
(1938, 'Customer LoggedIn', '2015-02-13 05:57:16', 0, 7, 'aasdasdasdas_7', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>aasdasdasdas</span> come on Table <span class=''label label-info label-as-badge''>7</span>'),
(1939, 'Staff LoggedIn', '2015-02-13 05:59:09', 0, 0, 'N/A', 'N/A', 'Owner Owner', 3, 1, '<div><span class=''label label-primery label-as-badge''>Owner Owner</span> login at <span class=''label label-warning label-as-badge''> 2015-02-13 05:59:09</span></div>'),
(1942, 'Staff LoggedIn', '2015-02-13 10:24:19', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-13 10:24:19</span></div>'),
(1946, 'Staff LoggedIn', '2015-02-13 11:50:13', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-13 11:50:13</span></div>'),
(1950, 'Waiter Called', '2015-02-13 12:17:26', 0, 7, 'aasdasdasdas_7', 'cris', 'N/A', 2, 1, '<div style=''color:black;''> Customer: <span  class=''label label-success label-as-badge''>aasdasdasdas</span> on Table: <span class=''label label-info label-as-badge''> 7</span> call Waiter: <span class=''label label-primary label-as-badge''>cris</span></div>'),
(1951, 'Waiter Called', '2015-02-13 12:19:51', 0, 7, 'aasdasdasdas_7', 'cris', 'N/A', 2, 1, '<div style=''color:black;''> Customer: <span  class=''label label-success label-as-badge''>aasdasdasdas</span> on Table: <span class=''label label-info label-as-badge''> 7</span> call Waiter: <span class=''label label-primary label-as-badge''>cris</span></div>'),
(1952, 'Customer LoggedIn', '2015-02-13 12:37:17', 0, 8, 'dasdad_8', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>dasdad</span> come on Table <span class=''label label-info label-as-badge''>8</span>'),
(1955, 'Waiter Called', '2015-02-13 12:41:02', 0, 8, 'dasdad_8', 'janis', 'N/A', 2, 1, '<div style=''color:black;''> Customer: <span  class=''label label-success label-as-badge''>dasdad</span> on Table: <span class=''label label-info label-as-badge''> 8</span> call Waiter: <span class=''label label-primary label-as-badge''>janis</span></div>'),
(1956, 'Waiter Called', '2015-02-13 12:42:24', 0, 8, 'dasdad_8', 'janis', 'N/A', 2, 1, '<div style=''color:black;''> Customer: <span  class=''label label-success label-as-badge''>dasdad</span> on Table: <span class=''label label-info label-as-badge''> 8</span> call Waiter: <span class=''label label-primary label-as-badge''>janis</span></div>'),
(1957, 'Waiter Called', '2015-02-13 12:42:29', 0, 8, 'dasdad_8', 'janis', 'N/A', 2, 1, '<div style=''color:black;''> Customer: <span  class=''label label-success label-as-badge''>dasdad</span> on Table: <span class=''label label-info label-as-badge''> 8</span> call Waiter: <span class=''label label-primary label-as-badge''>janis</span></div>'),
(1958, 'Staff LoggedIn', '2015-02-13 14:04:26', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-13 14:04:26</span></div>'),
(1959, 'Staff LoggedIn', '2015-02-14 09:11:52', 0, 0, 'N/A', 'N/A', 'John vio', 3, 1, '<div><span class=''label label-primery label-as-badge''>John vio</span> login at <span class=''label label-warning label-as-badge''> 2015-02-14 09:11:52</span></div>'),
(1960, 'Call Waiter Request Accepted', '2015-02-14 09:12:30', 0, 3, 'N/A', 'John', 'N/A', 2, 1, '<div style=''color:black;''> Waiter : <span  class=''label label-primary label-as-badge''>John</span> Accepted Request From Table No: <span class=''label label-info label-as-badge''> 3</span></div>'),
(1961, 'Call Waiter Request Accepted', '2015-02-14 09:12:32', 0, 3, 'N/A', 'John', 'N/A', 2, 1, '<div style=''color:black;''> Waiter : <span  class=''label label-primary label-as-badge''>John</span> Accepted Request From Table No: <span class=''label label-info label-as-badge''> 3</span></div>'),
(1962, 'Call Waiter Request Accepted', '2015-02-14 09:12:32', 0, 3, 'N/A', 'John', 'N/A', 2, 1, '<div style=''color:black;''> Waiter : <span  class=''label label-primary label-as-badge''>John</span> Accepted Request From Table No: <span class=''label label-info label-as-badge''> 3</span></div>'),
(1963, 'Call Waiter Request Accepted', '2015-02-14 09:12:39', 0, 4, 'N/A', 'John', 'N/A', 2, 1, '<div style=''color:black;''> Waiter : <span  class=''label label-primary label-as-badge''>John</span> Accepted Request From Table No: <span class=''label label-info label-as-badge''> 4</span></div>'),
(1964, 'Call Waiter Request Accepted', '2015-02-14 09:12:42', 0, 4, 'N/A', 'John', 'N/A', 2, 1, '<div style=''color:black;''> Waiter : <span  class=''label label-primary label-as-badge''>John</span> Accepted Request From Table No: <span class=''label label-info label-as-badge''> 4</span></div>'),
(1965, 'Call Waiter Request Accepted', '2015-02-14 09:12:46', 0, 7, 'N/A', 'John', 'N/A', 2, 1, '<div style=''color:black;''> Waiter : <span  class=''label label-primary label-as-badge''>John</span> Accepted Request From Table No: <span class=''label label-info label-as-badge''> 7</span></div>'),
(1966, 'Call Waiter Request Accepted', '2015-02-14 09:12:49', 0, 8, 'N/A', 'John', 'N/A', 2, 1, '<div style=''color:black;''> Waiter : <span  class=''label label-primary label-as-badge''>John</span> Accepted Request From Table No: <span class=''label label-info label-as-badge''> 8</span></div>'),
(1967, 'Staff LoggedIn', '2015-02-16 06:15:00', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-16 06:15:00</span></div>'),
(1968, 'Staff LoggedIn', '2015-02-16 06:28:53', 0, 0, 'N/A', 'N/A', 'Mayo Less', 3, 1, '<div><span class=''label label-primery label-as-badge''>Mayo Less</span> login at <span class=''label label-warning label-as-badge''> 2015-02-16 06:28:53</span></div>'),
(1969, 'Staff LoggedIn', '2015-02-16 06:29:19', 0, 0, 'N/A', 'N/A', 'John vio', 3, 1, '<div><span class=''label label-primery label-as-badge''>John vio</span> login at <span class=''label label-warning label-as-badge''> 2015-02-16 06:29:19</span></div>'),
(1970, 'Customer LoggedIn', '2015-02-16 06:29:45', 0, 1, 'akon_1', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>akon</span> come on Table <span class=''label label-info label-as-badge''>1</span>'),
(1971, 'Staff LoggedIn', '2015-02-16 06:53:00', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-16 06:53:00</span></div>'),
(1972, 'Customer LoggedIn', '2015-02-16 06:53:38', 0, 68, 'asdfghjkl_68', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>asdfghjkl</span> come on Table <span class=''label label-info label-as-badge''>68</span>'),
(1973, 'Staff LoggedIn', '2015-02-16 08:29:07', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-16 08:29:07</span></div>'),
(1974, 'Staff LoggedIn', '2015-02-16 08:49:20', 0, 0, 'N/A', 'N/A', 'Owner Owner', 3, 1, '<div><span class=''label label-primery label-as-badge''>Owner Owner</span> login at <span class=''label label-warning label-as-badge''> 2015-02-16 08:49:20</span></div>'),
(1975, 'Staff LoggedIn', '2015-02-16 09:03:19', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-16 09:03:19</span></div>'),
(1976, 'Staff LoggedIn', '2015-02-16 09:13:03', 0, 0, 'N/A', 'N/A', 'Mayo Less', 3, 1, '<div><span class=''label label-primery label-as-badge''>Mayo Less</span> login at <span class=''label label-warning label-as-badge''> 2015-02-16 09:13:03</span></div>'),
(1977, 'Staff LoggedIn', '2015-02-16 09:16:07', 0, 0, 'N/A', 'N/A', 'John vio', 3, 1, '<div><span class=''label label-primery label-as-badge''>John vio</span> login at <span class=''label label-warning label-as-badge''> 2015-02-16 09:16:07</span></div>'),
(1978, 'Customer LoggedIn', '2015-02-16 09:17:21', 0, 20, 'kjghkjghkjehrkjh_20', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>kjghkjghkjehrkjh</span> come on Table <span class=''label label-info label-as-badge''>20</span>'),
(1981, 'Staff LoggedIn', '2015-02-16 09:19:19', 0, 0, 'N/A', 'N/A', 'Mayo Less', 3, 1, '<div><span class=''label label-primery label-as-badge''>Mayo Less</span> login at <span class=''label label-warning label-as-badge''> 2015-02-16 09:19:19</span></div>'),
(1982, 'Staff LoggedIn', '2015-02-16 09:19:53', 0, 0, 'N/A', 'N/A', 'John vio', 3, 1, '<div><span class=''label label-primery label-as-badge''>John vio</span> login at <span class=''label label-warning label-as-badge''> 2015-02-16 09:19:53</span></div>'),
(1984, 'Staff LoggedIn', '2015-02-16 09:20:16', 0, 0, 'N/A', 'N/A', 'Mayo Less', 3, 1, '<div><span class=''label label-primery label-as-badge''>Mayo Less</span> login at <span class=''label label-warning label-as-badge''> 2015-02-16 09:20:16</span></div>'),
(1985, 'Staff LoggedIn', '2015-02-16 09:23:37', 0, 0, 'N/A', 'N/A', 'John vio', 3, 1, '<div><span class=''label label-primery label-as-badge''>John vio</span> login at <span class=''label label-warning label-as-badge''> 2015-02-16 09:23:37</span></div>'),
(1987, 'Staff LoggedIn', '2015-02-16 09:24:12', 0, 0, 'N/A', 'N/A', 'Mayo Less', 3, 1, '<div><span class=''label label-primery label-as-badge''>Mayo Less</span> login at <span class=''label label-warning label-as-badge''> 2015-02-16 09:24:12</span></div>'),
(1988, 'Staff LoggedIn', '2015-02-16 09:25:18', 0, 0, 'N/A', 'N/A', 'Mayo Less', 3, 1, '<div><span class=''label label-primery label-as-badge''>Mayo Less</span> login at <span class=''label label-warning label-as-badge''> 2015-02-16 09:25:18</span></div>'),
(1989, 'Staff LoggedIn', '2015-02-16 09:35:16', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-16 09:35:16</span></div>'),
(1990, 'Staff LoggedIn', '2015-02-16 09:38:45', 0, 0, 'N/A', 'N/A', 'Owner Owner', 3, 1, '<div><span class=''label label-primery label-as-badge''>Owner Owner</span> login at <span class=''label label-warning label-as-badge''> 2015-02-16 09:38:45</span></div>'),
(1991, 'Staff LoggedIn', '2015-02-16 09:39:06', 0, 0, 'N/A', 'N/A', 'Owner Owner', 3, 1, '<div><span class=''label label-primery label-as-badge''>Owner Owner</span> login at <span class=''label label-warning label-as-badge''> 2015-02-16 09:39:06</span></div>'),
(1992, 'Staff LoggedIn', '2015-02-16 09:50:35', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-16 09:50:35</span></div>'),
(1993, 'Staff LoggedIn', '2015-02-16 10:06:30', 0, 0, 'N/A', 'N/A', 'Mayo Less', 3, 1, '<div><span class=''label label-primery label-as-badge''>Mayo Less</span> login at <span class=''label label-warning label-as-badge''> 2015-02-16 10:06:30</span></div>'),
(1994, 'Staff LoggedIn', '2015-02-16 10:07:26', 0, 0, 'N/A', 'N/A', 'John vio', 3, 1, '<div><span class=''label label-primery label-as-badge''>John vio</span> login at <span class=''label label-warning label-as-badge''> 2015-02-16 10:07:26</span></div>'),
(1995, 'Staff LoggedIn', '2015-02-16 10:09:28', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-16 10:09:28</span></div>'),
(1996, 'Customer LoggedIn', '2015-02-16 10:10:33', 0, 17, 'tableoneorder_17', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>tableoneorder</span> come on Table <span class=''label label-info label-as-badge''>17</span>'),
(1997, 'Customer LoggedIn', '2015-02-16 10:14:20', 0, 1, 'dump_1', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>dump</span> come on Table <span class=''label label-info label-as-badge''>1</span>'),
(1998, 'Staff LoggedIn', '2015-02-16 10:18:27', 0, 0, 'N/A', 'N/A', 'John vio', 3, 1, '<div><span class=''label label-primery label-as-badge''>John vio</span> login at <span class=''label label-warning label-as-badge''> 2015-02-16 10:18:27</span></div>');
INSERT INTO `notification_log` (`id`, `notifications`, `created_at`, `order_id`, `tablenumber`, `customer_unique_id`, `waiter`, `staff`, `type_id`, `is_watch`, `text`) VALUES
(1999, 'Order Placed', '2015-02-16 10:21:40', 532, 17, 'tableoneorder_17', 'elen marlo', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>tableoneorder</span> Place Order On Table <span class=''label label-info label-as-badge''>17</span>'),
(2000, 'Order Placed', '2015-02-16 10:24:19', 532, 17, 'tableoneorder_17', 'John vio', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>tableoneorder</span> Place Order On Table <span class=''label label-info label-as-badge''>17</span>'),
(2001, 'Order Placed', '2015-02-16 10:27:21', 532, 17, 'tableoneorder_17', 'John vio', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>tableoneorder</span> Place Order On Table <span class=''label label-info label-as-badge''>17</span>'),
(2002, 'Order Placed', '2015-02-16 10:27:52', 532, 17, 'tableoneorder_17', 'John vio', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>tableoneorder</span> Place Order On Table <span class=''label label-info label-as-badge''>17</span>'),
(2003, 'Order Placed', '2015-02-16 10:43:18', 532, 17, 'tableoneorder_17', 'John vio', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>tableoneorder</span> Place Order On Table <span class=''label label-info label-as-badge''>17</span>'),
(2004, 'Staff LoggedIn', '2015-02-16 10:43:41', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-16 10:43:41</span></div>'),
(2005, 'Staff LoggedIn', '2015-02-16 12:31:03', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-16 12:31:03</span></div>'),
(2006, 'Customer LoggedIn', '2015-02-16 12:31:07', 0, 20, 'namename_20', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>namename</span> come on Table <span class=''label label-info label-as-badge''>20</span>'),
(2007, 'Staff LoggedIn', '2015-02-16 13:22:39', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-16 13:22:39</span></div>'),
(2008, 'Staff LoggedIn', '2015-02-16 13:23:37', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-16 13:23:37</span></div>'),
(2009, 'Staff LoggedIn', '2015-02-16 13:29:26', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-16 13:29:26</span></div>'),
(2010, 'Staff LoggedIn', '2015-02-16 14:18:05', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-16 14:18:05</span></div>'),
(2011, 'Staff LoggedIn', '2015-02-16 14:25:39', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-16 14:25:39</span></div>'),
(2012, 'Staff LoggedIn', '2015-02-16 15:20:16', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-16 15:20:16</span></div>'),
(2013, 'Staff LoggedIn', '2015-02-17 05:55:16', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-17 05:55:16</span></div>'),
(2014, 'Staff LoggedIn', '2015-02-17 06:01:22', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-17 06:01:22</span></div>'),
(2015, 'Staff LoggedIn', '2015-02-17 07:11:55', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-17 07:11:55</span></div>'),
(2016, 'Staff LoggedIn', '2015-02-17 07:31:52', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-17 07:31:52</span></div>'),
(2017, 'Staff LoggedIn', '2015-02-17 07:33:53', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-17 07:33:53</span></div>'),
(2018, 'Staff LoggedIn', '2015-02-17 07:47:20', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-17 07:47:20</span></div>'),
(2019, 'Staff LoggedIn', '2015-02-17 09:43:00', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-17 09:43:00</span></div>'),
(2020, 'Staff LoggedIn', '2015-02-17 09:43:00', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-17 09:43:00</span></div>'),
(2021, 'Staff LoggedIn', '2015-02-17 11:11:51', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-17 11:11:51</span></div>'),
(2022, 'Customer LoggedIn', '2015-02-17 12:35:47', 0, 20, 'sadad_20', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>sadad</span> come on Table <span class=''label label-info label-as-badge''>20</span>'),
(2023, 'Staff LoggedIn', '2015-02-17 12:43:57', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-17 12:43:57</span></div>'),
(2024, 'Staff LoggedIn', '2015-02-17 12:48:21', 0, 0, 'N/A', 'N/A', 'Owner Owner', 3, 1, '<div><span class=''label label-primery label-as-badge''>Owner Owner</span> login at <span class=''label label-warning label-as-badge''> 2015-02-17 12:48:21</span></div>'),
(2025, 'Staff LoggedIn', '2015-02-17 12:54:18', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-17 12:54:18</span></div>'),
(2026, 'Customer LoggedIn', '2015-02-17 18:10:53', 0, 68, 'djayfr_68', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>djayfr</span> come on Table <span class=''label label-info label-as-badge''>68</span>'),
(2027, 'Customer LoggedIn', '2015-02-17 18:11:17', 0, 14, 'djayrr_14', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>djayrr</span> come on Table <span class=''label label-info label-as-badge''>14</span>'),
(2029, 'Staff LoggedIn', '2015-02-18 06:12:02', 0, 0, 'N/A', 'N/A', 'Owner Owner', 3, 1, '<div><span class=''label label-primery label-as-badge''>Owner Owner</span> login at <span class=''label label-warning label-as-badge''> 2015-02-18 06:12:02</span></div>'),
(2030, 'Staff LoggedIn', '2015-02-18 09:20:53', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-18 09:20:53</span></div>'),
(2031, 'Staff LoggedIn', '2015-02-18 11:57:13', 0, 0, 'N/A', 'N/A', 'Mayo Less', 3, 1, '<div><span class=''label label-primery label-as-badge''>Mayo Less</span> login at <span class=''label label-warning label-as-badge''> 2015-02-18 11:57:13</span></div>'),
(2032, 'Staff LoggedIn', '2015-02-18 14:47:27', 0, 0, 'N/A', 'N/A', 'Owner Owner', 3, 1, '<div><span class=''label label-primery label-as-badge''>Owner Owner</span> login at <span class=''label label-warning label-as-badge''> 2015-02-18 14:47:27</span></div>'),
(2033, 'Staff LoggedIn', '2015-02-18 15:18:03', 0, 0, 'N/A', 'N/A', 'Owner Owner', 3, 1, '<div><span class=''label label-primery label-as-badge''>Owner Owner</span> login at <span class=''label label-warning label-as-badge''> 2015-02-18 15:18:03</span></div>'),
(2034, 'Staff LoggedIn', '2015-02-18 15:18:12', 0, 0, 'N/A', 'N/A', 'Owner Owner', 3, 1, '<div><span class=''label label-primery label-as-badge''>Owner Owner</span> login at <span class=''label label-warning label-as-badge''> 2015-02-18 15:18:12</span></div>'),
(2035, 'Staff LoggedIn', '2015-02-19 06:00:33', 0, 0, 'N/A', 'N/A', 'John vio', 3, 1, '<div><span class=''label label-primery label-as-badge''>John vio</span> login at <span class=''label label-warning label-as-badge''> 2015-02-19 06:00:33</span></div>'),
(2036, 'Customer LoggedIn', '2015-02-19 06:02:03', 0, 1, 'hijklmnop_1', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>hijklmnop</span> come on Table <span class=''label label-info label-as-badge''>1</span>'),
(2037, 'Staff LoggedIn', '2015-02-19 06:03:18', 0, 0, 'N/A', 'N/A', 'Owner Owner', 3, 1, '<div><span class=''label label-primery label-as-badge''>Owner Owner</span> login at <span class=''label label-warning label-as-badge''> 2015-02-19 06:03:18</span></div>'),
(2038, 'Staff LoggedIn', '2015-02-19 07:09:48', 0, 0, 'N/A', 'N/A', 'John vio', 3, 1, '<div><span class=''label label-primery label-as-badge''>John vio</span> login at <span class=''label label-warning label-as-badge''> 2015-02-19 07:09:48</span></div>'),
(2039, 'Customer LoggedIn', '2015-02-19 07:10:14', 0, 2, 'fghfgh_2', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>fghfgh</span> come on Table <span class=''label label-info label-as-badge''>2</span>'),
(2040, 'Staff LoggedIn', '2015-02-19 09:29:23', 0, 0, 'N/A', 'N/A', 'Owner Owner', 3, 1, '<div><span class=''label label-primery label-as-badge''>Owner Owner</span> login at <span class=''label label-warning label-as-badge''> 2015-02-19 09:29:23</span></div>'),
(2041, 'Staff LoggedIn', '2015-02-19 09:55:19', 0, 0, 'N/A', 'N/A', 'Owner Owner', 3, 1, '<div><span class=''label label-primery label-as-badge''>Owner Owner</span> login at <span class=''label label-warning label-as-badge''> 2015-02-19 09:55:19</span></div>'),
(2042, 'Staff LoggedIn', '2015-02-19 09:55:34', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-19 09:55:34</span></div>'),
(2049, 'Call Waiter Request Accepted', '2015-02-19 12:08:22', 0, 1, 'N/A', 'John', 'N/A', 2, 1, '<div style=''color:black;''> Waiter : <span  class=''label label-primary label-as-badge''>John</span> Accepted Request From Table No: <span class=''label label-info label-as-badge''> 1</span></div>'),
(2050, 'Customer LoggedIn', '2015-02-19 12:52:09', 0, 16, 'khushi_16', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>khushi</span> come on Table <span class=''label label-info label-as-badge''>16</span>'),
(2052, 'Order Placed', '2015-02-19 12:56:27', 539, 16, 'khushi_16', 'John vio', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>khushi</span> Place Order On Table <span class=''label label-info label-as-badge''>16</span>'),
(2053, 'Order Placed', '2015-02-19 12:56:45', 539, 16, 'khushi_16', 'John vio', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>khushi</span> Place Order On Table <span class=''label label-info label-as-badge''>16</span>'),
(2054, 'Order Placed', '2015-02-19 12:57:11', 539, 16, 'khushi_16', 'John vio', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>khushi</span> Place Order On Table <span class=''label label-info label-as-badge''>16</span>'),
(2055, 'Customer LoggedIn', '2015-02-19 12:57:37', 0, 16, 'khushi_16', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>khushi</span> come on Table <span class=''label label-info label-as-badge''>16</span>'),
(2057, 'Customer LoggedIn', '2015-02-19 13:01:33', 0, 16, 'khushi_16', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>khushi</span> come on Table <span class=''label label-info label-as-badge''>16</span>'),
(2059, 'Customer LoggedIn', '2015-02-19 13:02:49', 0, 16, 'khushi_16', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>khushi</span> come on Table <span class=''label label-info label-as-badge''>16</span>'),
(2061, 'Customer LoggedIn', '2015-02-19 13:04:00', 0, 16, 'khushi_16', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>khushi</span> come on Table <span class=''label label-info label-as-badge''>16</span>'),
(2063, 'Customer LoggedIn', '2015-02-19 13:05:27', 0, 16, 'khushi_16', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>khushi</span> come on Table <span class=''label label-info label-as-badge''>16</span>'),
(2065, 'Customer LoggedIn', '2015-02-19 13:06:43', 0, 16, 'khushi_16', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>khushi</span> come on Table <span class=''label label-info label-as-badge''>16</span>'),
(2067, 'Customer LoggedIn', '2015-02-19 13:08:39', 0, 16, 'khushi_16', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>khushi</span> come on Table <span class=''label label-info label-as-badge''>16</span>'),
(2069, 'Customer LoggedIn', '2015-02-19 13:12:12', 0, 16, 'khushi_16', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>khushi</span> come on Table <span class=''label label-info label-as-badge''>16</span>'),
(2071, 'Customer LoggedIn', '2015-02-19 13:35:26', 0, 16, 'one_16', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>one</span> come on Table <span class=''label label-info label-as-badge''>16</span>'),
(2073, 'Customer LoggedIn', '2015-02-19 13:36:48', 0, 16, 'two_16', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>two</span> come on Table <span class=''label label-info label-as-badge''>16</span>'),
(2075, 'Customer LoggedIn', '2015-02-19 15:05:06', 0, 16, 'khushi_16', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>khushi</span> come on Table <span class=''label label-info label-as-badge''>16</span>'),
(2076, 'Customer LoggedIn', '2015-02-19 15:05:59', 0, 16, 'khushi_16', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>khushi</span> come on Table <span class=''label label-info label-as-badge''>16</span>'),
(2078, 'Customer LoggedIn', '2015-02-19 15:06:15', 0, 16, 'khushbu_16', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>khushbu</span> come on Table <span class=''label label-info label-as-badge''>16</span>'),
(2080, 'Customer LoggedIn', '2015-02-19 15:08:06', 0, 1, '_1', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''></span> come on Table <span class=''label label-info label-as-badge''>1</span>'),
(2081, 'Customer LoggedIn', '2015-02-19 15:08:51', 0, 16, 'khushi_16', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>khushi</span> come on Table <span class=''label label-info label-as-badge''>16</span>'),
(2083, 'Customer LoggedIn', '2015-02-19 15:09:07', 0, 16, 'khushbu_16', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>khushbu</span> come on Table <span class=''label label-info label-as-badge''>16</span>'),
(2085, 'Customer LoggedIn', '2015-02-19 15:16:01', 0, 16, 'khushi_16', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>khushi</span> come on Table <span class=''label label-info label-as-badge''>16</span>'),
(2087, 'Customer LoggedIn', '2015-02-19 15:23:12', 0, 16, 'khushi_16', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>khushi</span> come on Table <span class=''label label-info label-as-badge''>16</span>'),
(2088, 'Order Placed', '2015-02-19 15:23:15', 555, 16, 'khushi_16', 'Ivan hary', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>khushi</span> Place Order On Table <span class=''label label-info label-as-badge''>16</span>'),
(2089, 'Customer LoggedIn', '2015-02-19 15:23:37', 0, 16, 'lkjlkj_16', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>lkjlkj</span> come on Table <span class=''label label-info label-as-badge''>16</span>'),
(2090, 'Order Placed', '2015-02-19 15:23:41', 556, 16, 'lkjlkj_16', 'Ivan hary', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>lkjlkj</span> Place Order On Table <span class=''label label-info label-as-badge''>16</span>'),
(2091, 'Staff LoggedIn', '2015-02-20 06:09:12', 0, 0, 'N/A', 'N/A', 'Owner Owner', 3, 1, '<div><span class=''label label-primery label-as-badge''>Owner Owner</span> login at <span class=''label label-warning label-as-badge''> 2015-02-20 06:09:12</span></div>'),
(2092, 'Customer LoggedIn', '2015-02-20 06:44:59', 0, 18, 'khushi_18', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>khushi</span> come on Table <span class=''label label-info label-as-badge''>18</span>'),
(2094, 'Customer LoggedIn', '2015-02-20 06:45:33', 0, 18, 'khushbu_18', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>khushbu</span> come on Table <span class=''label label-info label-as-badge''>18</span>'),
(2096, 'Customer LoggedIn', '2015-02-20 06:45:54', 0, 18, 'soni_18', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>soni</span> come on Table <span class=''label label-info label-as-badge''>18</span>'),
(2098, 'Staff LoggedIn', '2015-02-20 06:46:57', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-20 06:46:57</span></div>'),
(2099, 'Customer LoggedIn', '2015-02-20 08:32:39', 0, 18, 'tiya_18', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>tiya</span> come on Table <span class=''label label-info label-as-badge''>18</span>'),
(2101, 'Customer LoggedIn', '2015-02-20 08:37:44', 0, 18, 'tuoirw_18', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>tuoirw</span> come on Table <span class=''label label-info label-as-badge''>18</span>'),
(2103, 'Order Placed', '2015-02-20 09:18:22', 538, 2, 'fghfgh_2', 'Ivan hary', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>fghfgh</span> Place Order On Table <span class=''label label-info label-as-badge''>2</span>'),
(2104, 'Customer LoggedIn', '2015-02-20 09:21:07', 0, 4, 'hjkhih_4', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>hjkhih</span> come on Table <span class=''label label-info label-as-badge''>4</span>'),
(2106, 'Staff LoggedIn', '2015-02-20 09:47:37', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-20 09:47:37</span></div>'),
(2107, 'Customer LoggedIn', '2015-02-20 09:50:12', 0, 13, 'chulli_13', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>chulli</span> come on Table <span class=''label label-info label-as-badge''>13</span>'),
(2108, 'Staff LoggedIn', '2015-02-20 14:16:56', 0, 0, 'N/A', 'N/A', 'Owner Owner', 3, 1, '<div><span class=''label label-primery label-as-badge''>Owner Owner</span> login at <span class=''label label-warning label-as-badge''> 2015-02-20 14:16:56</span></div>'),
(2109, 'Staff LoggedIn', '2015-02-20 14:23:56', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-20 14:23:56</span></div>'),
(2110, 'Staff LoggedIn', '2015-02-21 10:06:38', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-21 10:06:38</span></div>'),
(2111, 'Customer LoggedIn', '2015-02-21 10:12:03', 0, 14, 'xxx_14', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>xxx</span> come on Table <span class=''label label-info label-as-badge''>14</span>'),
(2113, 'Staff LoggedIn', '2015-02-21 10:15:24', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-21 10:15:24</span></div>'),
(2114, 'Staff LoggedIn', '2015-02-21 10:16:34', 0, 0, 'N/A', 'N/A', 'Mayo Less', 3, 1, '<div><span class=''label label-primery label-as-badge''>Mayo Less</span> login at <span class=''label label-warning label-as-badge''> 2015-02-21 10:16:34</span></div>'),
(2115, 'Staff LoggedIn', '2015-02-23 05:44:16', 0, 0, 'N/A', 'N/A', 'John vio', 3, 1, '<div><span class=''label label-primery label-as-badge''>John vio</span> login at <span class=''label label-warning label-as-badge''> 2015-02-23 05:44:16</span></div>'),
(2116, 'Customer LoggedIn', '2015-02-23 05:45:28', 0, 3, 'first_3', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>first</span> come on Table <span class=''label label-info label-as-badge''>3</span>'),
(2118, 'Staff LoggedIn', '2015-02-23 05:48:52', 0, 0, 'N/A', 'N/A', 'John vio', 3, 1, '<div><span class=''label label-primery label-as-badge''>John vio</span> login at <span class=''label label-warning label-as-badge''> 2015-02-23 05:48:52</span></div>'),
(2119, 'Staff LoggedIn', '2015-02-23 05:51:13', 0, 0, 'N/A', 'N/A', 'Owner Owner', 3, 1, '<div><span class=''label label-primery label-as-badge''>Owner Owner</span> login at <span class=''label label-warning label-as-badge''> 2015-02-23 05:51:13</span></div>'),
(2120, 'Customer LoggedIn', '2015-02-23 06:30:05', 0, 5, 'khushi_5', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>khushi</span> come on Table <span class=''label label-info label-as-badge''>5</span>'),
(2122, 'Staff LoggedIn', '2015-02-23 06:31:43', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-23 06:31:43</span></div>'),
(2123, 'Customer LoggedIn', '2015-02-23 07:04:27', 0, 5, 'khushi_5', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>khushi</span> come on Table <span class=''label label-info label-as-badge''>5</span>'),
(2125, 'Staff LoggedIn', '2015-02-23 08:14:18', 0, 0, 'N/A', 'N/A', 'Owner Owner', 3, 1, '<div><span class=''label label-primery label-as-badge''>Owner Owner</span> login at <span class=''label label-warning label-as-badge''> 2015-02-23 08:14:18</span></div>'),
(2126, 'Staff LoggedIn', '2015-02-23 08:24:06', 0, 0, 'N/A', 'N/A', 'Owner Owner', 3, 1, '<div><span class=''label label-primery label-as-badge''>Owner Owner</span> login at <span class=''label label-warning label-as-badge''> 2015-02-23 08:24:06</span></div>'),
(2127, 'Customer LoggedIn', '2015-02-23 08:34:51', 0, 5, 'khushi_5', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>khushi</span> come on Table <span class=''label label-info label-as-badge''>5</span>'),
(2129, 'Staff LoggedIn', '2015-02-23 08:35:40', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-23 08:35:40</span></div>'),
(2130, 'Customer LoggedIn', '2015-02-23 08:37:26', 0, 1, '_1', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''></span> come on Table <span class=''label label-info label-as-badge''>1</span>'),
(2131, 'Staff LoggedIn', '2015-02-23 09:38:32', 0, 0, 'N/A', 'N/A', 'Owner Owner', 3, 1, '<div><span class=''label label-primery label-as-badge''>Owner Owner</span> login at <span class=''label label-warning label-as-badge''> 2015-02-23 09:38:32</span></div>'),
(2132, 'Staff LoggedIn', '2015-02-23 10:04:55', 0, 0, 'N/A', 'N/A', 'Owner Owner', 3, 1, '<div><span class=''label label-primery label-as-badge''>Owner Owner</span> login at <span class=''label label-warning label-as-badge''> 2015-02-23 10:04:55</span></div>'),
(2133, 'Staff LoggedIn', '2015-02-23 11:58:19', 0, 0, 'N/A', 'N/A', 'John vio', 3, 1, '<div><span class=''label label-primery label-as-badge''>John vio</span> login at <span class=''label label-warning label-as-badge''> 2015-02-23 11:58:19</span></div>'),
(2134, 'Staff LoggedIn', '2015-02-23 12:00:56', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-23 12:00:56</span></div>'),
(2135, 'Staff LoggedIn', '2015-02-23 12:27:52', 0, 0, 'N/A', 'N/A', 'Owner Owner', 3, 1, '<div><span class=''label label-primery label-as-badge''>Owner Owner</span> login at <span class=''label label-warning label-as-badge''> 2015-02-23 12:27:52</span></div>'),
(2136, 'Staff LoggedIn', '2015-02-23 12:28:47', 0, 0, 'N/A', 'N/A', 'Owner Owner', 3, 1, '<div><span class=''label label-primery label-as-badge''>Owner Owner</span> login at <span class=''label label-warning label-as-badge''> 2015-02-23 12:28:47</span></div>'),
(2137, 'Staff LoggedIn', '2015-02-23 12:31:16', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-23 12:31:16</span></div>'),
(2138, 'Staff LoggedIn', '2015-02-23 14:38:09', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-23 14:38:09</span></div>'),
(2139, 'Staff LoggedIn', '2015-02-24 06:08:16', 0, 0, 'N/A', 'N/A', 'Owner Owner', 3, 1, '<div><span class=''label label-primery label-as-badge''>Owner Owner</span> login at <span class=''label label-warning label-as-badge''> 2015-02-24 06:08:16</span></div>'),
(2140, 'Staff LoggedIn', '2015-02-24 06:09:43', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-24 06:09:43</span></div>'),
(2141, 'Staff LoggedIn', '2015-02-24 06:15:41', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-24 06:15:41</span></div>'),
(2142, 'Staff LoggedIn', '2015-02-24 06:30:30', 0, 0, 'N/A', 'N/A', 'Mayo Less', 3, 1, '<div><span class=''label label-primery label-as-badge''>Mayo Less</span> login at <span class=''label label-warning label-as-badge''> 2015-02-24 06:30:30</span></div>'),
(2143, 'Staff LoggedIn', '2015-02-24 06:56:26', 0, 0, 'N/A', 'N/A', 'Owner Owner', 3, 1, '<div><span class=''label label-primery label-as-badge''>Owner Owner</span> login at <span class=''label label-warning label-as-badge''> 2015-02-24 06:56:26</span></div>'),
(2144, 'Staff LoggedIn', '2015-02-25 09:50:53', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-25 09:50:53</span></div>'),
(2145, 'Staff LoggedIn', '2015-02-25 09:52:16', 0, 0, 'N/A', 'N/A', 'Owner Owner', 3, 1, '<div><span class=''label label-primery label-as-badge''>Owner Owner</span> login at <span class=''label label-warning label-as-badge''> 2015-02-25 09:52:16</span></div>'),
(2146, 'Staff LoggedIn', '2015-02-25 19:24:42', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-25 19:24:42</span></div>'),
(2147, 'Customer LoggedIn', '2015-02-27 08:59:45', 0, 5, 'khushi_5', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>khushi</span> come on Table <span class=''label label-info label-as-badge''>5</span>'),
(2148, 'Customer LoggedIn', '2015-02-27 14:49:04', 0, 5, 'fdgdfd_5', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>fdgdfd</span> come on Table <span class=''label label-info label-as-badge''>5</span>'),
(2149, 'Customer LoggedIn', '2015-02-27 14:52:16', 0, 5, 'bvhvg_5', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>bvhvg</span> come on Table <span class=''label label-info label-as-badge''>5</span>'),
(2150, 'Waiter Called', '2015-02-27 14:52:32', 0, 5, 'bvhvg_5', 'cris', 'N/A', 2, 1, '<div style=''color:black;''> Customer: <span  class=''label label-success label-as-badge''>bvhvg</span> on Table: <span class=''label label-info label-as-badge''> 5</span> call Waiter: <span class=''label label-primary label-as-badge''>cris</span></div>'),
(2151, 'Staff LoggedIn', '2015-02-27 17:28:01', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-02-27 17:28:01</span></div>'),
(2152, 'Customer LoggedIn', '2015-03-02 11:31:33', 0, 5, 'khush_5', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>khush</span> come on Table <span class=''label label-info label-as-badge''>5</span>'),
(2153, 'Customer LoggedIn', '2015-03-02 12:11:26', 0, 5, 'sfg_5', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>sfg</span> come on Table <span class=''label label-info label-as-badge''>5</span>'),
(2154, 'Customer LoggedIn', '2015-03-03 06:20:45', 0, 5, 'khushi_5', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>khushi</span> come on Table <span class=''label label-info label-as-badge''>5</span>'),
(2155, 'Customer LoggedIn', '2015-03-03 07:36:01', 0, 4, 'lkj_4', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>lkj</span> come on Table <span class=''label label-info label-as-badge''>4</span>'),
(2156, 'Customer LoggedIn', '2015-03-03 08:54:51', 0, 4, 'fgsdfgdfsg_4', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>fgsdfgdfsg</span> come on Table <span class=''label label-info label-as-badge''>4</span>'),
(2157, 'Customer LoggedIn', '2015-03-03 09:52:48', 0, 4, 'dfsg_4', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>dfsg</span> come on Table <span class=''label label-info label-as-badge''>4</span>'),
(2158, 'Staff LoggedIn', '2015-03-03 13:26:30', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-03-03 13:26:30</span></div>'),
(2159, 'Customer LoggedIn', '2015-03-04 09:35:17', 0, 3, 'dfh_3', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>dfh</span> come on Table <span class=''label label-info label-as-badge''>3</span>'),
(2160, 'Staff LoggedIn', '2015-03-04 12:13:59', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-03-04 12:13:59</span></div>'),
(2161, 'Staff LoggedIn', '2015-03-04 12:46:09', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-03-04 12:46:09</span></div>'),
(2162, 'Staff LoggedIn', '2015-03-04 14:15:01', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-03-04 14:15:01</span></div>'),
(2163, 'Customer LoggedIn', '2015-03-04 14:58:27', 0, 2, 'abccsd_2', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>abccsd</span> come on Table <span class=''label label-info label-as-badge''>2</span>'),
(2164, 'Customer LoggedIn', '2015-03-12 07:26:50', 0, 1, 'abcdef_1', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>abcdef</span> come on Table <span class=''label label-info label-as-badge''>1</span>'),
(2165, 'Staff LoggedIn', '2015-03-12 07:27:10', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-03-12 07:27:10</span></div>'),
(2166, 'Staff LoggedIn', '2015-03-12 09:00:00', 0, 0, 'N/A', 'N/A', 'Mayo Less', 3, 1, '<div><span class=''label label-primery label-as-badge''>Mayo Less</span> login at <span class=''label label-warning label-as-badge''> 2015-03-12 09:00:00</span></div>'),
(2167, 'Customer LoggedIn', '2015-03-12 09:01:50', 0, 1, 'asdsd_1', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>asdsd</span> come on Table <span class=''label label-info label-as-badge''>1</span>'),
(2168, 'Customer LoggedIn', '2015-03-12 09:10:58', 0, 3, 'asdsadad_3', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>asdsadad</span> come on Table <span class=''label label-info label-as-badge''>3</span>'),
(2169, 'Customer LoggedIn', '2015-03-12 11:36:56', 0, 1, 'gfjhgfghjfgh_1', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>gfjhgfghjfgh</span> come on Table <span class=''label label-info label-as-badge''>1</span>'),
(2170, 'Staff LoggedIn', '2015-03-12 14:12:00', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-03-12 14:12:00</span></div>'),
(2171, 'Customer LoggedIn', '2015-03-13 05:58:32', 0, 1, 'testcustomer_1', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>testcustomer</span> come on Table <span class=''label label-info label-as-badge''>1</span>'),
(2172, 'Staff LoggedIn', '2015-03-13 05:59:19', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-03-13 05:59:19</span></div>'),
(2173, 'Staff LoggedIn', '2015-03-13 06:19:50', 0, 0, 'N/A', 'N/A', 'Mayo Less', 3, 1, '<div><span class=''label label-primery label-as-badge''>Mayo Less</span> login at <span class=''label label-warning label-as-badge''> 2015-03-13 06:19:50</span></div>'),
(2174, 'Customer LoggedIn', '2015-03-13 06:22:27', 0, 1, '_1', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''></span> come on Table <span class=''label label-info label-as-badge''>1</span>'),
(2175, 'Customer LoggedIn', '2015-03-13 06:29:54', 0, 1, '_1', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''></span> come on Table <span class=''label label-info label-as-badge''>1</span>'),
(2176, 'Customer LoggedIn', '2015-03-13 07:06:50', 0, 2, 'Test_2', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>Test</span> come on Table <span class=''label label-info label-as-badge''>2</span>'),
(2177, 'Staff LoggedIn', '2015-03-13 07:28:56', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-03-13 07:28:56</span></div>'),
(2178, 'Staff LoggedIn', '2015-03-13 07:29:01', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-03-13 07:29:01</span></div>'),
(2179, 'Staff LoggedIn', '2015-03-13 07:29:46', 0, 0, 'N/A', 'N/A', 'John vio', 3, 1, '<div><span class=''label label-primery label-as-badge''>John vio</span> login at <span class=''label label-warning label-as-badge''> 2015-03-13 07:29:46</span></div>'),
(2180, 'Staff LoggedIn', '2015-03-13 07:30:17', 0, 0, 'N/A', 'N/A', 'Mayo Less', 3, 1, '<div><span class=''label label-primery label-as-badge''>Mayo Less</span> login at <span class=''label label-warning label-as-badge''> 2015-03-13 07:30:17</span></div>'),
(2181, 'Customer LoggedIn', '2015-03-13 07:31:05', 0, 2, 'bhumin_2', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>bhumin</span> come on Table <span class=''label label-info label-as-badge''>2</span>'),
(2182, 'Customer LoggedIn', '2015-03-13 07:32:03', 0, 2, 'khushi_2', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>khushi</span> come on Table <span class=''label label-info label-as-badge''>2</span>'),
(2183, 'Order Placed', '2015-03-13 07:33:36', 568, 2, 'khushi_2', 'Ivan hary', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>khushi</span> Place Order On Table <span class=''label label-info label-as-badge''>2</span>'),
(2184, 'Customer LoggedIn', '2015-03-13 07:35:42', 0, 68, 'dggdgsdg_68', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>dggdgsdg</span> come on Table <span class=''label label-info label-as-badge''>68</span>'),
(2185, 'Staff LoggedIn', '2015-03-13 07:39:14', 0, 0, 'N/A', 'N/A', 'John vio', 3, 1, '<div><span class=''label label-primery label-as-badge''>John vio</span> login at <span class=''label label-warning label-as-badge''> 2015-03-13 07:39:14</span></div>'),
(2186, 'Order Placed', '2015-03-13 07:39:37', 568, 2, 'khushi_2', 'Ivan hary', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>khushi</span> Place Order On Table <span class=''label label-info label-as-badge''>2</span>'),
(2187, 'Staff LoggedIn', '2015-03-13 08:46:04', 0, 0, 'N/A', 'N/A', 'John vio', 3, 1, '<div><span class=''label label-primery label-as-badge''>John vio</span> login at <span class=''label label-warning label-as-badge''> 2015-03-13 08:46:04</span></div>'),
(2188, 'Staff LoggedIn', '2015-03-13 08:51:03', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-03-13 08:51:03</span></div>'),
(2189, 'Order Placed', '2015-03-13 08:55:24', 570, 3, 'asdsadad_3', 'janis rumo', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>asdsadad</span> Place Order On Table <span class=''label label-info label-as-badge''>3</span>'),
(2190, 'Staff LoggedIn', '2015-03-13 09:03:07', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-03-13 09:03:07</span></div>'),
(2191, 'Staff LoggedIn', '2015-03-13 09:04:59', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-03-13 09:04:59</span></div>'),
(2192, 'Staff LoggedIn', '2015-03-13 09:13:38', 0, 0, 'N/A', 'N/A', 'Mayo Less', 3, 1, '<div><span class=''label label-primery label-as-badge''>Mayo Less</span> login at <span class=''label label-warning label-as-badge''> 2015-03-13 09:13:38</span></div>'),
(2193, 'Staff LoggedIn', '2015-03-13 09:22:11', 0, 0, 'N/A', 'N/A', 'John vio', 3, 1, '<div><span class=''label label-primery label-as-badge''>John vio</span> login at <span class=''label label-warning label-as-badge''> 2015-03-13 09:22:11</span></div>'),
(2194, 'Customer LoggedIn', '2015-03-13 09:22:39', 0, 6, 'gfjj_6', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>gfjj</span> come on Table <span class=''label label-info label-as-badge''>6</span>'),
(2195, 'Customer LoggedIn', '2015-03-13 09:23:21', 0, 2, 'ghjjgh_2', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>ghjjgh</span> come on Table <span class=''label label-info label-as-badge''>2</span>'),
(2196, 'Staff LoggedIn', '2015-03-13 10:18:07', 0, 0, 'N/A', 'N/A', 'John vio', 3, 1, '<div><span class=''label label-primery label-as-badge''>John vio</span> login at <span class=''label label-warning label-as-badge''> 2015-03-13 10:18:07</span></div>'),
(2197, 'Staff LoggedIn', '2015-03-13 10:18:29', 0, 0, 'N/A', 'N/A', 'Mayo Less', 3, 1, '<div><span class=''label label-primery label-as-badge''>Mayo Less</span> login at <span class=''label label-warning label-as-badge''> 2015-03-13 10:18:29</span></div>'),
(2198, 'Order Placed', '2015-03-13 10:29:02', 571, 3, 'asdsadad_3', 'janis rumo', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>asdsadad</span> Place Order On Table <span class=''label label-info label-as-badge''>3</span>'),
(2199, 'Staff LoggedIn', '2015-03-13 11:20:47', 0, 0, 'N/A', 'N/A', 'John vio', 3, 1, '<div><span class=''label label-primery label-as-badge''>John vio</span> login at <span class=''label label-warning label-as-badge''> 2015-03-13 11:20:47</span></div>'),
(2200, 'Customer LoggedIn', '2015-03-13 11:21:08', 0, 1, 'abcdefghi_1', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>abcdefghi</span> come on Table <span class=''label label-info label-as-badge''>1</span>'),
(2201, 'Order Placed', '2015-03-13 11:21:22', 572, 1, 'abcdefghi_1', 'John vio', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>abcdefghi</span> Place Order On Table <span class=''label label-info label-as-badge''>1</span>'),
(2202, 'Staff LoggedIn', '2015-03-13 11:28:42', 0, 0, 'N/A', 'N/A', 'John vio', 3, 1, '<div><span class=''label label-primery label-as-badge''>John vio</span> login at <span class=''label label-warning label-as-badge''> 2015-03-13 11:28:42</span></div>'),
(2203, 'Staff LoggedIn', '2015-03-13 11:36:56', 0, 0, 'N/A', 'N/A', 'Mayo Less', 3, 1, '<div><span class=''label label-primery label-as-badge''>Mayo Less</span> login at <span class=''label label-warning label-as-badge''> 2015-03-13 11:36:56</span></div>'),
(2204, 'Staff LoggedIn', '2015-03-13 14:16:24', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-03-13 14:16:24</span></div>'),
(2205, 'Staff LoggedIn', '2015-03-16 06:16:59', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-03-16 06:16:59</span></div>'),
(2206, 'Staff LoggedIn', '2015-03-16 06:33:48', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-03-16 06:33:48</span></div>'),
(2207, 'Staff LoggedIn', '2015-03-16 06:41:38', 0, 0, 'N/A', 'N/A', 'John vio', 3, 1, '<div><span class=''label label-primery label-as-badge''>John vio</span> login at <span class=''label label-warning label-as-badge''> 2015-03-16 06:41:38</span></div>'),
(2208, 'Customer LoggedIn', '2015-03-16 06:41:49', 0, 2, 'asdasda_2', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>asdasda</span> come on Table <span class=''label label-info label-as-badge''>2</span>'),
(2209, 'Order Placed', '2015-03-16 06:41:57', 573, 2, 'asdasda_2', 'Ivan hary', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>asdasda</span> Place Order On Table <span class=''label label-info label-as-badge''>2</span>'),
(2210, 'Order Placed', '2015-03-16 06:49:19', 568, 2, 'khushi_2', 'Ivan hary', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>khushi</span> Place Order On Table <span class=''label label-info label-as-badge''>2</span>'),
(2211, 'Order Placed', '2015-03-16 06:55:51', 568, 2, 'khushi_2', 'Ivan hary', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>khushi</span> Place Order On Table <span class=''label label-info label-as-badge''>2</span>'),
(2212, 'Order Placed', '2015-03-16 06:56:24', 568, 2, 'khushi_2', 'Ivan hary', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>khushi</span> Place Order On Table <span class=''label label-info label-as-badge''>2</span>'),
(2213, 'Staff LoggedIn', '2015-03-16 06:57:16', 0, 0, 'N/A', 'N/A', 'John vio', 3, 1, '<div><span class=''label label-primery label-as-badge''>John vio</span> login at <span class=''label label-warning label-as-badge''> 2015-03-16 06:57:16</span></div>'),
(2214, 'Customer LoggedIn', '2015-03-16 06:57:25', 0, 7, '123_7', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>123</span> come on Table <span class=''label label-info label-as-badge''>7</span>'),
(2215, 'Order Placed', '2015-03-16 06:57:30', 574, 7, '123_7', 'janis rumo', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>123</span> Place Order On Table <span class=''label label-info label-as-badge''>7</span>'),
(2216, 'Staff LoggedIn', '2015-03-16 06:58:10', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-03-16 06:58:10</span></div>'),
(2217, 'Staff LoggedIn', '2015-03-16 07:10:18', 0, 0, 'N/A', 'N/A', 'John vio', 3, 1, '<div><span class=''label label-primery label-as-badge''>John vio</span> login at <span class=''label label-warning label-as-badge''> 2015-03-16 07:10:18</span></div>'),
(2218, 'Order Placed', '2015-03-16 07:10:24', 568, 2, 'khushi_2', 'Ivan hary', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>khushi</span> Place Order On Table <span class=''label label-info label-as-badge''>2</span>'),
(2219, 'Order Placed', '2015-03-16 07:10:55', 568, 2, 'khushi_2', 'Ivan hary', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>khushi</span> Place Order On Table <span class=''label label-info label-as-badge''>2</span>'),
(2220, 'Staff LoggedIn', '2015-03-16 07:11:11', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-03-16 07:11:11</span></div>'),
(2221, 'Staff LoggedIn', '2015-03-16 07:12:16', 0, 0, 'N/A', 'N/A', 'John vio', 3, 1, '<div><span class=''label label-primery label-as-badge''>John vio</span> login at <span class=''label label-warning label-as-badge''> 2015-03-16 07:12:16</span></div>'),
(2222, 'Staff LoggedIn', '2015-03-16 07:16:38', 0, 0, 'N/A', 'N/A', 'John vio', 3, 1, '<div><span class=''label label-primery label-as-badge''>John vio</span> login at <span class=''label label-warning label-as-badge''> 2015-03-16 07:16:38</span></div>'),
(2223, 'Order Placed', '2015-03-16 07:16:44', 574, 7, '123_7', 'janis rumo', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>123</span> Place Order On Table <span class=''label label-info label-as-badge''>7</span>'),
(2224, 'Order Placed', '2015-03-16 07:29:34', 568, 2, 'khushi_2', 'Ivan hary', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>khushi</span> Place Order On Table <span class=''label label-info label-as-badge''>2</span>'),
(2225, 'Staff LoggedIn', '2015-03-17 12:21:03', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-03-17 12:21:04</span></div>'),
(2226, 'Staff LoggedIn', '2015-03-17 12:36:03', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-03-17 12:36:03</span></div>'),
(2227, 'Staff LoggedIn', '2015-03-17 14:26:14', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-03-17 14:26:14</span></div>'),
(2228, 'Staff LoggedIn', '2015-03-17 15:17:59', 0, 0, 'N/A', 'N/A', 'John vio', 3, 1, '<div><span class=''label label-primery label-as-badge''>John vio</span> login at <span class=''label label-warning label-as-badge''> 2015-03-17 15:17:59</span></div>'),
(2229, 'Customer LoggedIn', '2015-03-17 15:18:25', 0, 1, 'KHUSHI_1', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>KHUSHI</span> come on Table <span class=''label label-info label-as-badge''>1</span>'),
(2230, 'Order Placed', '2015-03-17 15:19:45', 575, 1, 'KHUSHI_1', 'John vio', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>KHUSHI</span> Place Order On Table <span class=''label label-info label-as-badge''>1</span>');
INSERT INTO `notification_log` (`id`, `notifications`, `created_at`, `order_id`, `tablenumber`, `customer_unique_id`, `waiter`, `staff`, `type_id`, `is_watch`, `text`) VALUES
(2231, 'Staff LoggedIn', '2015-03-17 15:21:47', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-03-17 15:21:47</span></div>'),
(2232, 'Staff LoggedIn', '2015-03-17 15:31:18', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-03-17 15:31:18</span></div>'),
(2233, 'Staff LoggedIn', '2015-03-17 15:31:20', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-03-17 15:31:20</span></div>'),
(2234, 'Staff LoggedIn', '2015-03-17 15:31:23', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-03-17 15:31:23</span></div>'),
(2235, 'Staff LoggedIn', '2015-03-17 15:31:23', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-03-17 15:31:23</span></div>'),
(2236, 'Staff LoggedIn', '2015-03-17 15:31:36', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-03-17 15:31:36</span></div>'),
(2237, 'Staff LoggedIn', '2015-03-17 15:31:36', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-03-17 15:31:36</span></div>'),
(2238, 'Staff LoggedIn', '2015-03-17 15:31:37', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-03-17 15:31:37</span></div>'),
(2239, 'Staff LoggedIn', '2015-03-17 15:31:37', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-03-17 15:31:37</span></div>'),
(2240, 'Staff LoggedIn', '2015-03-17 15:31:37', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-03-17 15:31:37</span></div>'),
(2241, 'Staff LoggedIn', '2015-03-17 15:31:41', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-03-17 15:31:41</span></div>'),
(2242, 'Staff LoggedIn', '2015-03-17 15:31:54', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-03-17 15:31:54</span></div>'),
(2243, 'Staff LoggedIn', '2015-03-17 15:32:05', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-03-17 15:32:05</span></div>'),
(2244, 'Staff LoggedIn', '2015-03-17 15:32:24', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-03-17 15:32:24</span></div>'),
(2245, 'Staff LoggedIn', '2015-03-17 15:32:25', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-03-17 15:32:25</span></div>'),
(2246, 'Staff LoggedIn', '2015-03-17 15:32:25', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-03-17 15:32:25</span></div>'),
(2247, 'Staff LoggedIn', '2015-03-17 15:32:25', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-03-17 15:32:25</span></div>'),
(2248, 'Staff LoggedIn', '2015-03-17 15:32:25', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-03-17 15:32:25</span></div>'),
(2249, 'Staff LoggedIn', '2015-03-17 15:32:25', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-03-17 15:32:25</span></div>'),
(2250, 'Staff LoggedIn', '2015-03-17 15:32:27', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-03-17 15:32:27</span></div>'),
(2251, 'Staff LoggedIn', '2015-03-17 15:32:27', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-03-17 15:32:27</span></div>'),
(2252, 'Staff LoggedIn', '2015-03-17 15:32:27', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-03-17 15:32:27</span></div>'),
(2253, 'Staff LoggedIn', '2015-03-17 15:32:52', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-03-17 15:32:52</span></div>'),
(2254, 'Staff LoggedIn', '2015-03-17 15:38:18', 0, 0, 'N/A', 'N/A', 'John vio', 3, 1, '<div><span class=''label label-primery label-as-badge''>John vio</span> login at <span class=''label label-warning label-as-badge''> 2015-03-17 15:38:18</span></div>'),
(2255, 'Staff LoggedIn', '2015-03-17 15:39:26', 0, 0, 'N/A', 'N/A', 'John vio', 3, 1, '<div><span class=''label label-primery label-as-badge''>John vio</span> login at <span class=''label label-warning label-as-badge''> 2015-03-17 15:39:26</span></div>'),
(2256, 'Staff LoggedIn', '2015-03-17 15:39:41', 0, 0, 'N/A', 'N/A', 'Mayo Less', 3, 1, '<div><span class=''label label-primery label-as-badge''>Mayo Less</span> login at <span class=''label label-warning label-as-badge''> 2015-03-17 15:39:41</span></div>'),
(2257, 'Customer LoggedIn', '2015-03-17 15:46:52', 0, 1, 'bhumn_1', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>bhumn</span> come on Table <span class=''label label-info label-as-badge''>1</span>'),
(2258, 'Order Placed', '2015-03-17 15:47:37', 576, 1, 'bhumn_1', 'John vio', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>bhumn</span> Place Order On Table <span class=''label label-info label-as-badge''>1</span>'),
(2259, 'Order Placed', '2015-03-17 15:47:37', 577, 1, 'bhumn_1', 'John vio', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>bhumn</span> Place Order On Table <span class=''label label-info label-as-badge''>1</span>'),
(2260, 'Order Placed', '2015-03-17 15:47:37', 578, 1, 'bhumn_1', 'John vio', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>bhumn</span> Place Order On Table <span class=''label label-info label-as-badge''>1</span>'),
(2261, 'Order Placed', '2015-03-17 15:47:37', 579, 1, 'bhumn_1', 'John vio', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>bhumn</span> Place Order On Table <span class=''label label-info label-as-badge''>1</span>'),
(2262, 'Staff LoggedIn', '2015-03-17 16:18:12', 0, 0, 'N/A', 'N/A', 'Ivan hary', 3, 1, '<div><span class=''label label-primery label-as-badge''>Ivan hary</span> login at <span class=''label label-warning label-as-badge''> 2015-03-17 16:18:12</span></div>'),
(2263, 'Staff LoggedIn', '2015-03-17 16:29:42', 0, 0, 'N/A', 'N/A', 'Ivan hary', 3, 1, '<div><span class=''label label-primery label-as-badge''>Ivan hary</span> login at <span class=''label label-warning label-as-badge''> 2015-03-17 16:29:42</span></div>'),
(2264, 'Staff LoggedIn', '2015-03-17 16:30:18', 0, 0, 'N/A', 'N/A', 'Mayo Less', 3, 1, '<div><span class=''label label-primery label-as-badge''>Mayo Less</span> login at <span class=''label label-warning label-as-badge''> 2015-03-17 16:30:18</span></div>'),
(2265, 'Customer LoggedIn', '2015-03-18 08:26:28', 0, 3, 'hogotest_3', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>hogotest</span> come on Table <span class=''label label-info label-as-badge''>3</span>'),
(2266, 'Customer LoggedIn', '2015-03-18 09:38:25', 0, 3, 'hogotest_3', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>hogotest</span> come on Table <span class=''label label-info label-as-badge''>3</span>'),
(2267, 'Staff LoggedIn', '2015-03-18 09:51:38', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-03-18 09:51:38</span></div>'),
(2268, 'Staff LoggedIn', '2015-03-18 12:33:29', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-03-18 12:33:29</span></div>'),
(2269, 'Staff LoggedIn', '2015-03-18 13:00:35', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-03-18 13:00:35</span></div>'),
(2270, 'Staff LoggedIn', '2015-03-18 13:01:12', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-03-18 13:01:12</span></div>'),
(2271, 'Staff LoggedIn', '2015-03-18 14:12:43', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-03-18 14:12:43</span></div>'),
(2272, 'Customer LoggedIn', '2015-03-18 19:56:55', 0, 4, 'It_fugitive_4', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>It</span> come on Table <span class=''label label-info label-as-badge''>4</span>'),
(2273, 'Customer LoggedIn', '2015-03-18 21:00:32', 0, 4, 'fdg_4', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>fdg</span> come on Table <span class=''label label-info label-as-badge''>4</span>'),
(2274, 'Customer LoggedIn', '2015-03-19 06:12:28', 0, 3, 'hogotestas_3', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>hogotestas</span> come on Table <span class=''label label-info label-as-badge''>3</span>'),
(2275, 'Staff LoggedIn', '2015-03-19 06:15:06', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 1, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-03-19 06:15:06</span></div>'),
(2276, 'Staff LoggedIn', '2015-03-19 06:15:42', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 0, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-03-19 06:15:42</span></div>'),
(2277, 'Staff LoggedIn', '2015-03-19 14:57:08', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 0, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-03-19 14:57:08</span></div>'),
(2278, 'Customer LoggedIn', '2015-03-19 15:07:40', 0, 1, 'asdsdasd_1', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>asdsdasd</span> come on Table <span class=''label label-info label-as-badge''>1</span>'),
(2279, 'Customer LoggedIn', '2015-03-19 10:44:18', 0, 3, 'asssshaaa_3', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>asssshaaa</span> come on Table <span class=''label label-info label-as-badge''>3</span>'),
(2280, 'Customer LoggedIn', '2015-03-19 19:23:17', 0, 1, 'Kyushi__1', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>Kyushi</span> come on Table <span class=''label label-info label-as-badge''>1</span>'),
(2281, 'Customer LoggedIn', '2015-03-19 14:11:38', 0, 1, 'dsasdas_1', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>dsasdas</span> come on Table <span class=''label label-info label-as-badge''>1</span>'),
(2282, 'Order Placed', '2015-03-19 14:12:04', 580, 1, 'dsasdas_1', 'John vio', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>dsasdas</span> Place Order On Table <span class=''label label-info label-as-badge''>1</span>'),
(2283, 'Staff LoggedIn', '2015-03-19 14:13:41', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 0, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-03-19 14:13:41</span></div>'),
(2284, 'Staff LoggedIn', '2015-03-19 14:15:44', 0, 0, 'N/A', 'N/A', 'Mayo Less', 3, 0, '<div><span class=''label label-primery label-as-badge''>Mayo Less</span> login at <span class=''label label-warning label-as-badge''> 2015-03-19 14:15:44</span></div>'),
(2285, 'Customer LoggedIn', '2015-03-19 14:38:43', 0, 3, 'dsads_3', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>dsads</span> come on Table <span class=''label label-info label-as-badge''>3</span>'),
(2286, 'Customer LoggedIn', '2015-03-20 05:30:26', 0, 3, 'ASDFADASDASDAa_3', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>ASDFADASDASDAa</span> come on Table <span class=''label label-info label-as-badge''>3</span>'),
(2287, 'Staff LoggedIn', '2015-03-20 06:02:40', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 0, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-03-20 06:02:40</span></div>'),
(2288, 'Order Placed', '2015-03-20 09:32:20', 581, 3, '0', 'janis rumo', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''></span> Place Order On Table <span class=''label label-info label-as-badge''>3</span>'),
(2289, 'Order Placed', '2015-03-20 09:34:21', 581, 3, '0', 'janis rumo', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''></span> Place Order On Table <span class=''label label-info label-as-badge''>3</span>'),
(2290, 'Order Placed', '2015-03-20 09:38:50', 581, 3, '0', 'janis rumo', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''></span> Place Order On Table <span class=''label label-info label-as-badge''>3</span>'),
(2291, 'Staff LoggedIn', '2015-03-20 17:05:11', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 0, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-03-20 17:05:11</span></div>'),
(2292, 'Staff LoggedIn', '2015-03-20 11:41:19', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 0, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-03-20 11:41:19</span></div>'),
(2293, 'Staff LoggedIn', '2015-03-23 06:02:47', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 0, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-03-23 06:02:47</span></div>'),
(2294, 'Order Placed', '2015-03-23 09:43:38', 582, 9, '0', 'elen marlo', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''></span> Place Order On Table <span class=''label label-info label-as-badge''>9</span>'),
(2295, 'Order Placed', '2015-03-23 15:26:42', 583, 4, '0', 'elen marlo', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''></span> Place Order On Table <span class=''label label-info label-as-badge''>4</span>'),
(2296, 'Staff LoggedIn', '2015-03-24 06:10:11', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 0, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-03-24 06:10:11</span></div>'),
(2297, 'Staff LoggedIn', '2015-03-24 06:42:14', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 0, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-03-24 06:42:14</span></div>'),
(2298, 'Staff LoggedIn', '2015-03-24 07:14:44', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 0, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-03-24 07:14:44</span></div>'),
(2299, 'Customer Set On Table', '2015-03-24 08:43:55', 0, 0, NULL, '', 'N/A', 4, 1, '<div style=''color:black;''> Customer: <span  class=''label label-success label-as-badge''>sit On Table </span> on Table: <span class=''label label-info label-as-badge''> </span> call Waiter: <span class=''label label-primary label-as-badge''></span></div>'),
(2300, 'Customer Set On Table', '2015-03-24 08:44:00', 0, 15, NULL, '81', 'N/A', 4, 1, '<div style=''color:black;''> Customer: <span  class=''label label-success label-as-badge''>sit On Table </span> on Table: <span class=''label label-info label-as-badge''> 15</span> call Waiter: <span class=''label label-primary label-as-badge''>81</span></div>'),
(2301, 'Customer Set On Table', '2015-03-24 08:45:59', 0, 21, NULL, '75', 'N/A', 4, 1, '<div style=''color:black;''> Customer: <span  class=''label label-success label-as-badge''>sit On Table </span> on Table: <span class=''label label-info label-as-badge''> 21</span> call Waiter: <span class=''label label-primary label-as-badge''>75</span></div>'),
(2302, 'Customer LoggedIn', '2015-03-24 08:57:18', 0, 23, NULL, '81', 'N/A', 4, 1, '<div style=''color:black;''> Customer: <span  class=''label label-success label-as-badge''>sit On Table </span> on Table: <span class=''label label-info label-as-badge''> 23</span> call Waiter: <span class=''label label-primary label-as-badge''>81</span></div>'),
(2303, 'Order Placed', '2015-03-24 12:15:54', 690, 23, NULL, 'elen marlo', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''></span> Place Order On Table <span class=''label label-info label-as-badge''>23</span>'),
(2304, 'Order Placed', '2015-03-24 12:25:55', 690, 23, NULL, 'elen marlo', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''></span> Place Order On Table <span class=''label label-info label-as-badge''>23</span>'),
(2305, 'Customer LoggedIn', '2015-03-24 12:28:24', 0, 7, NULL, '70', 'N/A', 4, 1, '<div style=''color:black;''> Customer: <span  class=''label label-success label-as-badge''>sit On Table </span> on Table: <span class=''label label-info label-as-badge''> 7</span> call Waiter: <span class=''label label-primary label-as-badge''>70</span></div>'),
(2306, 'Order Placed', '2015-03-24 12:33:44', 690, 7, NULL, 'John vio', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''></span> Place Order On Table <span class=''label label-info label-as-badge''>7</span>'),
(2307, 'Customer LoggedIn', '2015-03-24 12:35:17', 0, 9, NULL, '70', 'N/A', 4, 1, '<div style=''color:black;''> Customer: <span  class=''label label-success label-as-badge''>sit On Table </span> on Table: <span class=''label label-info label-as-badge''> 9</span> call Waiter: <span class=''label label-primary label-as-badge''>70</span></div>'),
(2308, 'Order Placed', '2015-03-24 12:35:37', 704, 9, NULL, 'John vio', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''></span> Place Order On Table <span class=''label label-info label-as-badge''>9</span>'),
(2309, 'Order Placed', '2015-03-24 12:36:10', 704, 9, NULL, 'John vio', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''></span> Place Order On Table <span class=''label label-info label-as-badge''>9</span>'),
(2310, 'Order Placed', '2015-03-24 12:36:52', 704, 9, NULL, 'John vio', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''></span> Place Order On Table <span class=''label label-info label-as-badge''>9</span>'),
(2311, 'Order Placed', '2015-03-24 12:43:00', 704, 9, NULL, 'John vio', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''></span> Place Order On Table <span class=''label label-info label-as-badge''>9</span>'),
(2312, 'Order Placed', '2015-03-24 12:44:13', 704, 9, NULL, 'John vio', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''></span> Place Order On Table <span class=''label label-info label-as-badge''>9</span>'),
(2313, 'Order Placed', '2015-03-24 12:45:43', 704, 9, NULL, 'John vio', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>John vio</span> Place Order On Table <span class=''label label-info label-as-badge''>9</span>'),
(2314, 'Order Placed', '2015-03-24 13:07:06', 704, 9, NULL, 'John vio', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>John vio</span> Place Order On Table <span class=''label label-info label-as-badge''>9</span>'),
(2315, 'Order Placed', '2015-03-24 13:07:55', 704, 9, NULL, 'John vio', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>John vio</span> Place Order On Table <span class=''label label-info label-as-badge''>9</span>'),
(2316, 'Order Placed', '2015-03-24 15:01:42', 704, 9, NULL, 'John vio', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>John vio</span> Place Order On Table <span class=''label label-info label-as-badge''>9</span>'),
(2317, 'Order Placed', '2015-03-24 15:14:21', 704, 9, NULL, 'John vio', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>John vio</span> Place Order On Table <span class=''label label-info label-as-badge''>9</span>'),
(2318, 'Order Placed', '2015-03-24 15:26:46', 704, 9, NULL, 'John vio', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>John vio</span> Place Order On Table <span class=''label label-info label-as-badge''>9</span>'),
(2319, 'Staff LoggedIn', '2015-03-25 06:09:56', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 0, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-03-25 06:09:56</span></div>'),
(2320, 'Customer LoggedIn', '2015-03-25 06:25:51', 0, 9, 'fgdfg_9', 'N/A', 'N/A', 4, 1, 'Customer: <span class=''label label-success label-as-badge''>fgdfg</span> come on Table <span class=''label label-info label-as-badge''>9</span>'),
(2321, 'Staff LoggedIn', '2015-03-26 06:04:29', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 0, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-03-26 06:04:29</span></div>'),
(2322, 'Staff LoggedIn', '2015-03-26 06:04:29', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 0, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-03-26 06:04:29</span></div>'),
(2323, 'Staff LoggedIn', '2015-03-26 09:58:34', 0, 0, 'N/A', 'N/A', 'Mayo Less', 3, 0, '<div><span class=''label label-primery label-as-badge''>Mayo Less</span> login at <span class=''label label-warning label-as-badge''> 2015-03-26 09:58:34</span></div>'),
(2324, 'Customer LoggedIn', '2015-03-26 10:10:09', 0, 3, NULL, '74', 'N/A', 4, 1, '<div style=''color:black;''> Customer: <span  class=''label label-success label-as-badge''>sit On Table </span> on Table: <span class=''label label-info label-as-badge''> 3</span> call Waiter: <span class=''label label-primary label-as-badge''>74</span></div>'),
(2325, 'Order Placed', '2015-03-26 10:10:24', 734, 3, NULL, 'Ivan hary', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>Ivan hary</span> Place Order On Table <span class=''label label-info label-as-badge''>3</span>'),
(2326, 'Staff LoggedIn', '2015-03-26 11:38:25', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 0, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-03-26 11:38:25</span></div>'),
(2327, 'Staff LoggedIn', '2015-03-26 12:16:06', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 0, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-03-26 12:16:06</span></div>'),
(2328, 'Staff LoggedIn', '2015-03-26 14:23:24', 0, 0, 'N/A', 'N/A', 'Mayo Less', 3, 0, '<div><span class=''label label-primery label-as-badge''>Mayo Less</span> login at <span class=''label label-warning label-as-badge''> 2015-03-26 14:23:24</span></div>'),
(2329, 'Staff LoggedIn', '2015-03-27 06:42:09', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 0, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-03-27 06:42:09</span></div>'),
(2330, 'Staff LoggedIn', '2015-03-27 06:43:01', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 0, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-03-27 06:43:01</span></div>'),
(2331, 'Staff LoggedIn', '2015-03-27 07:18:20', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 0, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-03-27 07:18:20</span></div>'),
(2332, 'Staff LoggedIn', '2015-03-29 13:28:24', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 0, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-03-29 13:28:24</span></div>'),
(2333, 'Customer LoggedIn', '2015-03-30 05:46:41', 0, 8, NULL, '70', 'N/A', 4, 1, '<div style=''color:black;''> Customer: <span  class=''label label-success label-as-badge''>sit On Table </span> on Table: <span class=''label label-info label-as-badge''> 8</span> call Waiter: <span class=''label label-primary label-as-badge''>70</span></div>'),
(2334, 'Staff LoggedIn', '2015-03-30 10:16:11', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 0, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-03-30 10:16:11</span></div>'),
(2335, 'Staff LoggedIn', '2015-03-30 10:44:46', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 0, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-03-30 10:44:46</span></div>'),
(2336, 'Staff LoggedIn', '2015-03-30 11:05:58', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 0, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-03-30 11:05:58</span></div>'),
(2337, 'Staff LoggedIn', '2015-03-30 11:58:58', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 0, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-03-30 11:58:58</span></div>'),
(2338, 'Customer LoggedIn', '2015-03-30 14:01:40', 0, 7, NULL, '70', 'N/A', 4, 1, '<div style=''color:black;''> Customer: <span  class=''label label-success label-as-badge''>sit On Table </span> on Table: <span class=''label label-info label-as-badge''> 7</span> call Waiter: <span class=''label label-primary label-as-badge''>70</span></div>'),
(2339, 'Customer LoggedIn', '2015-03-30 14:05:33', 0, 9, NULL, '70', 'N/A', 4, 1, '<div style=''color:black;''> Customer: <span  class=''label label-success label-as-badge''>sit On Table </span> on Table: <span class=''label label-info label-as-badge''> 9</span> call Waiter: <span class=''label label-primary label-as-badge''>70</span></div>'),
(2340, 'Customer LoggedIn', '2015-03-31 06:12:44', 0, 6, NULL, '70', 'N/A', 4, 1, '<div style=''color:black;''> Customer: <span  class=''label label-success label-as-badge''>sit On Table </span> on Table: <span class=''label label-info label-as-badge''> 6</span> call Waiter: <span class=''label label-primary label-as-badge''>70</span></div>'),
(2341, 'Customer LoggedIn', '2015-03-31 06:13:19', 0, 10, NULL, '70', 'N/A', 4, 1, '<div style=''color:black;''> Customer: <span  class=''label label-success label-as-badge''>sit On Table </span> on Table: <span class=''label label-info label-as-badge''> 10</span> call Waiter: <span class=''label label-primary label-as-badge''>70</span></div>'),
(2342, 'Customer LoggedIn', '2015-03-31 06:16:46', 0, 14, NULL, '79', 'N/A', 4, 1, '<div style=''color:black;''> Customer: <span  class=''label label-success label-as-badge''>sit On Table </span> on Table: <span class=''label label-info label-as-badge''> 14</span> call Waiter: <span class=''label label-primary label-as-badge''>79</span></div>'),
(2343, 'Customer LoggedIn', '2015-03-31 06:16:52', 0, 14, NULL, '79', 'N/A', 4, 1, '<div style=''color:black;''> Customer: <span  class=''label label-success label-as-badge''>sit On Table </span> on Table: <span class=''label label-info label-as-badge''> 14</span> call Waiter: <span class=''label label-primary label-as-badge''>79</span></div>'),
(2344, 'Customer LoggedIn', '2015-03-31 06:16:58', 0, 15, NULL, '80', 'N/A', 4, 1, '<div style=''color:black;''> Customer: <span  class=''label label-success label-as-badge''>sit On Table </span> on Table: <span class=''label label-info label-as-badge''> 15</span> call Waiter: <span class=''label label-primary label-as-badge''>80</span></div>'),
(2345, 'Customer LoggedIn', '2015-03-31 06:18:11', 0, 14, NULL, '79', 'N/A', 4, 1, '<div style=''color:black;''> Customer: <span  class=''label label-success label-as-badge''>sit On Table </span> on Table: <span class=''label label-info label-as-badge''> 14</span> call Waiter: <span class=''label label-primary label-as-badge''>79</span></div>'),
(2346, 'Customer LoggedIn', '2015-03-31 06:20:25', 0, 15, NULL, '80', 'N/A', 4, 1, '<div style=''color:black;''> Customer: <span  class=''label label-success label-as-badge''>sit On Table </span> on Table: <span class=''label label-info label-as-badge''> 15</span> call Waiter: <span class=''label label-primary label-as-badge''>80</span></div>'),
(2347, 'Customer LoggedIn', '2015-03-31 06:20:34', 0, 15, NULL, '80', 'N/A', 4, 1, '<div style=''color:black;''> Customer: <span  class=''label label-success label-as-badge''>sit On Table </span> on Table: <span class=''label label-info label-as-badge''> 15</span> call Waiter: <span class=''label label-primary label-as-badge''>80</span></div>'),
(2348, 'Customer LoggedIn', '2015-03-31 06:27:31', 0, 15, NULL, '80', 'N/A', 4, 1, '<div style=''color:black;''> Customer: <span  class=''label label-success label-as-badge''>sit On Table </span> on Table: <span class=''label label-info label-as-badge''> 15</span> call Waiter: <span class=''label label-primary label-as-badge''>80</span></div>'),
(2349, 'Customer LoggedIn', '2015-03-31 06:44:10', 0, 1, NULL, '70', 'N/A', 4, 1, '<div style=''color:black;''> Customer: <span  class=''label label-success label-as-badge''>sit On Table </span> on Table: <span class=''label label-info label-as-badge''> 1</span> call Waiter: <span class=''label label-primary label-as-badge''>70</span></div>'),
(2350, 'Staff LoggedIn', '2015-03-31 06:45:22', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 0, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-03-31 06:45:22</span></div>'),
(2351, 'Customer LoggedIn', '2015-03-31 08:30:00', 0, 3, NULL, '74', 'N/A', 4, 1, '<div style=''color:black;''> Customer: <span  class=''label label-success label-as-badge''>sit On Table </span> on Table: <span class=''label label-info label-as-badge''> 3</span> call Waiter: <span class=''label label-primary label-as-badge''>74</span></div>'),
(2352, 'Staff LoggedIn', '2015-03-31 09:15:27', 0, 0, 'N/A', 'N/A', 'Mayo Less', 3, 0, '<div><span class=''label label-primery label-as-badge''>Mayo Less</span> login at <span class=''label label-warning label-as-badge''> 2015-03-31 09:15:27</span></div>'),
(2353, 'Staff LoggedIn', '2015-03-31 09:23:58', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 0, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-03-31 09:23:58</span></div>'),
(2354, 'Staff LoggedIn', '2015-04-01 15:03:01', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 0, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-04-01 15:03:01</span></div>'),
(2355, 'Staff LoggedIn', '2015-04-02 05:54:03', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 0, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2015-04-02 05:54:03</span></div>'),
(2356, 'Staff LoggedIn', '2015-04-02 05:54:43', 0, 0, 'N/A', 'N/A', 'Mayo Less', 3, 0, '<div><span class=''label label-primery label-as-badge''>Mayo Less</span> login at <span class=''label label-warning label-as-badge''> 2015-04-02 05:54:43</span></div>'),
(2357, 'Customer LoggedIn', '2015-04-02 06:07:19', 0, 4, NULL, '70', 'N/A', 4, 1, '<div style=''color:black;''> Customer: <span  class=''label label-success label-as-badge''>sit On Table </span> on Table: <span class=''label label-info label-as-badge''> 4</span> call Waiter: <span class=''label label-primary label-as-badge''>70</span></div>'),
(2358, 'Order Placed', '2015-04-02 06:08:38', 743, 4, NULL, 'John vio', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>John vio</span> Place Order On Table <span class=''label label-info label-as-badge''>4</span>'),
(2359, 'Order Placed', '2015-04-02 06:08:56', 743, 4, NULL, 'John vio', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>John vio</span> Place Order On Table <span class=''label label-info label-as-badge''>4</span>'),
(2360, 'Order Placed', '2015-04-02 06:09:40', 744, 4, NULL, 'John vio', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>John vio</span> Place Order On Table <span class=''label label-info label-as-badge''>4</span>'),
(2361, 'Customer LoggedIn', '2015-04-02 06:10:09', 0, 8, NULL, '70', 'N/A', 4, 1, '<div style=''color:black;''> Customer: <span  class=''label label-success label-as-badge''>sit On Table </span> on Table: <span class=''label label-info label-as-badge''> 8</span> call Waiter: <span class=''label label-primary label-as-badge''>70</span></div>'),
(2362, 'Order Placed', '2015-04-02 06:10:18', 745, 8, NULL, 'John vio', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>John vio</span> Place Order On Table <span class=''label label-info label-as-badge''>8</span>'),
(2363, 'Customer LoggedIn', '2015-04-02 06:10:36', 0, 15, NULL, '80', 'N/A', 4, 1, '<div style=''color:black;''> Customer: <span  class=''label label-success label-as-badge''>sit On Table </span> on Table: <span class=''label label-info label-as-badge''> 15</span> call Waiter: <span class=''label label-primary label-as-badge''>80</span></div>'),
(2364, 'Order Placed', '2015-04-02 06:10:59', 746, 15, NULL, 'cris namo', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>cris namo</span> Place Order On Table <span class=''label label-info label-as-badge''>15</span>'),
(2365, 'Order Placed', '2015-04-02 06:11:25', 746, 15, NULL, 'cris namo', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>cris namo</span> Place Order On Table <span class=''label label-info label-as-badge''>15</span>'),
(2366, 'Staff LoggedIn', '2015-04-02 06:42:07', 0, 0, 'N/A', 'N/A', 'John vio', 3, 0, '<div><span class=''label label-primery label-as-badge''>John vio</span> login at <span class=''label label-warning label-as-badge''> 2015-04-02 06:42:07</span></div>'),
(2367, 'Customer LoggedIn', '2015-04-02 12:04:43', 0, 15, NULL, '80', 'N/A', 4, 1, '<div style=''color:black;''> Customer: <span  class=''label label-success label-as-badge''>sit On Table </span> on Table: <span class=''label label-info label-as-badge''> 15</span> call Waiter: <span class=''label label-primary label-as-badge''>80</span></div>'),
(2368, 'Customer LoggedIn', '2016-03-04 16:22:22', 0, 4, NULL, '70', 'N/A', 4, 1, '<div style=''color:black;''> Customer: <span  class=''label label-success label-as-badge''>sit On Table </span> on Table: <span class=''label label-info label-as-badge''> 4</span> call Waiter: <span class=''label label-primary label-as-badge''>70</span></div>'),
(2369, 'Customer LoggedIn', '2016-03-04 16:26:23', 0, 5, NULL, '70', 'N/A', 4, 1, '<div style=''color:black;''> Customer: <span  class=''label label-success label-as-badge''>sit On Table </span> on Table: <span class=''label label-info label-as-badge''> 5</span> call Waiter: <span class=''label label-primary label-as-badge''>70</span></div>'),
(2370, 'Customer LoggedIn', '2016-03-04 16:26:38', 0, 6, NULL, '70', 'N/A', 4, 1, '<div style=''color:black;''> Customer: <span  class=''label label-success label-as-badge''>sit On Table </span> on Table: <span class=''label label-info label-as-badge''> 6</span> call Waiter: <span class=''label label-primary label-as-badge''>70</span></div>'),
(2371, 'Customer LoggedIn', '2016-03-04 16:30:36', 0, 2, NULL, '', 'N/A', 4, 1, '<div style=''color:black;''> Customer: <span  class=''label label-success label-as-badge''>sit On Table </span> on Table: <span class=''label label-info label-as-badge''> 2</span> call Waiter: <span class=''label label-primary label-as-badge''></span></div>'),
(2372, 'Customer LoggedIn', '2016-03-04 16:31:52', 0, 8, NULL, '70', 'N/A', 4, 1, '<div style=''color:black;''> Customer: <span  class=''label label-success label-as-badge''>sit On Table </span> on Table: <span class=''label label-info label-as-badge''> 8</span> call Waiter: <span class=''label label-primary label-as-badge''>70</span></div>'),
(2373, 'Staff LoggedIn', '2016-03-04 16:43:44', 0, 0, 'N/A', 'N/A', 'Ivan hary', 3, 0, '<div><span class=''label label-primery label-as-badge''>Ivan hary</span> login at <span class=''label label-warning label-as-badge''> 2016-03-04 16:43:44</span></div>'),
(2374, 'Waiter Called', '2016-03-04 16:51:04', 0, 8, NULL, 'John', 'N/A', 2, 1, '<div style=''color:black;''> Customer: <span  class=''label label-success label-as-badge''></span> on Table: <span class=''label label-info label-as-badge''> 8</span> call Waiter: <span class=''label label-primary label-as-badge''>John</span></div>'),
(2375, 'Order Placed', '2016-03-04 16:54:00', 748, 8, NULL, 'John vio', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>John vio</span> Place Order On Table <span class=''label label-info label-as-badge''>8</span>'),
(2376, 'Order Placed', '2016-03-04 16:57:36', 748, 8, NULL, 'John vio', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>John vio</span> Place Order On Table <span class=''label label-info label-as-badge''>8</span>'),
(2377, 'Order Placed', '2016-03-04 16:58:01', 748, 8, NULL, 'John vio', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>John vio</span> Place Order On Table <span class=''label label-info label-as-badge''>8</span>'),
(2378, 'Order Placed', '2016-03-04 17:01:20', 749, 8, NULL, 'John vio', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>John vio</span> Place Order On Table <span class=''label label-info label-as-badge''>8</span>'),
(2379, 'Order Placed', '2016-03-04 17:11:12', 749, 8, NULL, 'John vio', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>John vio</span> Place Order On Table <span class=''label label-info label-as-badge''>8</span>'),
(2380, 'Order Placed', '2016-03-04 17:12:21', 750, 8, NULL, 'John vio', 'N/A', 1, 1, 'Customer: <span class=''label label-success label-as-badge''>John vio</span> Place Order On Table <span class=''label label-info label-as-badge''>8</span>'),
(2381, 'Staff LoggedIn', '2016-03-04 17:13:35', 0, 0, 'N/A', 'N/A', 'John vio', 3, 0, '<div><span class=''label label-primery label-as-badge''>John vio</span> login at <span class=''label label-warning label-as-badge''> 2016-03-04 17:13:35</span></div>'),
(2382, 'Call Waiter Request Accepted', '2016-03-04 17:14:18', 0, 8, 'N/A', 'John', 'N/A', 2, 1, '<div style=''color:black;''> Waiter : <span  class=''label label-primary label-as-badge''>John</span> Accepted Request From Table No: <span class=''label label-info label-as-badge''> 8</span></div>'),
(2383, 'Call Waiter Request Accepted', '2016-03-04 17:14:19', 0, 8, 'N/A', 'John', 'N/A', 2, 1, '<div style=''color:black;''> Waiter : <span  class=''label label-primary label-as-badge''>John</span> Accepted Request From Table No: <span class=''label label-info label-as-badge''> 8</span></div>'),
(2384, 'Staff LoggedIn', '2016-03-04 17:15:46', 0, 0, 'N/A', 'N/A', 'Mayo Less', 3, 0, '<div><span class=''label label-primery label-as-badge''>Mayo Less</span> login at <span class=''label label-warning label-as-badge''> 2016-03-04 17:15:46</span></div>'),
(2385, 'Staff LoggedIn', '2016-03-04 17:17:24', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 0, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2016-03-04 17:17:24</span></div>'),
(2386, 'Staff LoggedIn', '2016-03-04 17:28:19', 0, 0, 'N/A', 'N/A', 'Owner Owner', 3, 0, '<div><span class=''label label-primery label-as-badge''>Owner Owner</span> login at <span class=''label label-warning label-as-badge''> 2016-03-04 17:28:19</span></div>'),
(2387, 'Staff LoggedIn', '2016-03-08 18:01:13', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 0, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2016-03-08 18:01:13</span></div>'),
(2388, 'Customer LoggedIn', '2016-03-08 18:21:21', 0, 1, NULL, '', 'N/A', 4, 0, '<div style=''color:black;''> Customer: <span  class=''label label-success label-as-badge''>sit On Table </span> on Table: <span class=''label label-info label-as-badge''> 1</span> call Waiter: <span class=''label label-primary label-as-badge''></span></div>'),
(2389, 'Customer LoggedIn', '2016-03-08 18:21:30', 0, 1, 'Bhumin_1', 'N/A', 'N/A', 4, 0, 'Customer: <span class=''label label-success label-as-badge''>Bhumin</span> come on Table <span class=''label label-info label-as-badge''>1</span>'),
(2390, 'Order Placed', '2016-03-08 18:22:00', 751, 1, NULL, ' ', 'N/A', 1, 0, 'Customer: <span class=''label label-success label-as-badge''> </span> Place Order On Table <span class=''label label-info label-as-badge''>1</span>'),
(2391, 'Staff LoggedIn', '2016-03-08 18:25:17', 0, 0, 'N/A', 'N/A', 'Mayo Less', 3, 0, '<div><span class=''label label-primery label-as-badge''>Mayo Less</span> login at <span class=''label label-warning label-as-badge''> 2016-03-08 18:25:17</span></div>'),
(2392, 'Staff LoggedIn', '2016-03-08 18:25:42', 0, 0, 'N/A', 'N/A', 'waiter Waiter', 3, 0, '<div><span class=''label label-primery label-as-badge''>waiter Waiter</span> login at <span class=''label label-warning label-as-badge''> 2016-03-08 18:25:42</span></div>'),
(2393, 'Staff LoggedIn', '2016-03-08 18:26:26', 0, 0, 'N/A', 'N/A', 'Mayo Less', 3, 0, '<div><span class=''label label-primery label-as-badge''>Mayo Less</span> login at <span class=''label label-warning label-as-badge''> 2016-03-08 18:26:26</span></div>'),
(2394, 'Staff LoggedIn', '2016-03-08 18:26:41', 0, 0, 'N/A', 'N/A', 'waiter Waiter', 3, 0, '<div><span class=''label label-primery label-as-badge''>waiter Waiter</span> login at <span class=''label label-warning label-as-badge''> 2016-03-08 18:26:41</span></div>'),
(2395, 'Customer LoggedIn', '2016-03-08 18:51:57', 0, 2, NULL, '', 'N/A', 4, 0, '<div style=''color:black;''> Customer: <span  class=''label label-success label-as-badge''>sit On Table </span> on Table: <span class=''label label-info label-as-badge''> 2</span> call Waiter: <span class=''label label-primary label-as-badge''></span></div>'),
(2396, 'Customer LoggedIn', '2016-03-08 19:08:50', 0, 1, NULL, '84', 'N/A', 4, 0, '<div style=''color:black;''> Customer: <span  class=''label label-success label-as-badge''>sit On Table </span> on Table: <span class=''label label-info label-as-badge''> 1</span> call Waiter: <span class=''label label-primary label-as-badge''>84</span></div>'),
(2397, 'Customer LoggedIn', '2016-03-08 19:09:32', 0, 1, NULL, '84', 'N/A', 4, 0, '<div style=''color:black;''> Customer: <span  class=''label label-success label-as-badge''>sit On Table </span> on Table: <span class=''label label-info label-as-badge''> 1</span> call Waiter: <span class=''label label-primary label-as-badge''>84</span></div>'),
(2398, 'Customer LoggedIn', '2016-03-08 19:15:00', 0, 1, NULL, '84', 'N/A', 4, 0, '<div style=''color:black;''> Customer: <span  class=''label label-success label-as-badge''>sit On Table </span> on Table: <span class=''label label-info label-as-badge''> 1</span> call Waiter: <span class=''label label-primary label-as-badge''>84</span></div>'),
(2399, 'Customer LoggedIn', '2016-03-08 19:15:50', 0, 2, NULL, '', 'N/A', 4, 0, '<div style=''color:black;''> Customer: <span  class=''label label-success label-as-badge''>sit On Table </span> on Table: <span class=''label label-info label-as-badge''> 2</span> call Waiter: <span class=''label label-primary label-as-badge''></span></div>'),
(2400, 'Customer LoggedIn', '2016-03-08 19:32:26', 0, 1, NULL, '84', 'N/A', 4, 0, '<div style=''color:black;''> Customer: <span  class=''label label-success label-as-badge''>sit On Table </span> on Table: <span class=''label label-info label-as-badge''> 1</span> call Waiter: <span class=''label label-primary label-as-badge''>84</span></div>'),
(2401, 'Customer LoggedIn', '2016-03-08 19:32:34', 0, 1, 'asdasd_1', 'N/A', 'N/A', 4, 0, 'Customer: <span class=''label label-success label-as-badge''>asdasd</span> come on Table <span class=''label label-info label-as-badge''>1</span>'),
(2402, 'Order Placed', '2016-03-08 19:32:50', 752, 1, NULL, 'waiter Waiter', 'N/A', 1, 0, 'Customer: <span class=''label label-success label-as-badge''>waiter Waiter</span> Place Order On Table <span class=''label label-info label-as-badge''>1</span>'),
(2403, 'Customer LoggedIn', '2016-03-08 19:34:09', 0, 1, 'xyzs_1', 'N/A', 'N/A', 4, 0, 'Customer: <span class=''label label-success label-as-badge''>xyzs</span> come on Table <span class=''label label-info label-as-badge''>1</span>'),
(2404, 'Customer LoggedIn', '2016-03-08 19:40:06', 0, 1, 'Bhumin_1', 'N/A', 'N/A', 4, 0, 'Customer: <span class=''label label-success label-as-badge''>Bhumin</span> come on Table <span class=''label label-info label-as-badge''>1</span>'),
(2405, 'Staff LoggedIn', '2016-03-08 19:40:14', 0, 0, 'N/A', 'N/A', 'waiter Waiter', 3, 0, '<div><span class=''label label-primery label-as-badge''>waiter Waiter</span> login at <span class=''label label-warning label-as-badge''> 2016-03-08 19:40:14</span></div>'),
(2406, 'Order Placed', '2016-03-08 19:40:27', 753, 1, NULL, 'waiter Waiter', 'N/A', 1, 0, 'Customer: <span class=''label label-success label-as-badge''>waiter Waiter</span> Place Order On Table <span class=''label label-info label-as-badge''>1</span>'),
(2407, 'Staff LoggedIn', '2016-03-08 19:40:52', 0, 0, 'N/A', 'N/A', 'Mayo Less', 3, 0, '<div><span class=''label label-primery label-as-badge''>Mayo Less</span> login at <span class=''label label-warning label-as-badge''> 2016-03-08 19:40:52</span></div>'),
(2408, 'Staff LoggedIn', '2016-03-08 19:41:08', 0, 0, 'N/A', 'N/A', 'waiter Waiter', 3, 0, '<div><span class=''label label-primery label-as-badge''>waiter Waiter</span> login at <span class=''label label-warning label-as-badge''> 2016-03-08 19:41:08</span></div>'),
(2409, 'Staff LoggedIn', '2016-03-08 19:41:32', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 0, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2016-03-08 19:41:32</span></div>'),
(2410, 'Staff LoggedIn', '2016-03-08 19:58:09', 0, 0, 'N/A', 'N/A', 'Super  Admin', 3, 0, '<div><span class=''label label-primery label-as-badge''>Super  Admin</span> login at <span class=''label label-warning label-as-badge''> 2016-03-08 19:58:09</span></div>'),
(2411, 'Order Placed', '2016-03-08 20:08:39', 753, 1, NULL, 'waiter Waiter', 'N/A', 1, 0, 'Customer: <span class=''label label-success label-as-badge''>waiter Waiter</span> Place Order On Table <span class=''label label-info label-as-badge''>1</span>');

-- --------------------------------------------------------

--
-- Table structure for table `notification_master`
--

CREATE TABLE IF NOT EXISTS `notification_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `notification` varchar(255) DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `notification_master`
--

INSERT INTO `notification_master` (`id`, `notification`, `is_active`) VALUES
(1, 'Order Placed', 1),
(2, 'Waiter Called Request', 1),
(3, 'Staff Logged', 0),
(4, 'Customer Logged', 1),
(5, 'Waiter Called Request Accepted', 1),
(6, 'Order Processed', 1),
(7, 'Order Ready To Deliver', 1),
(8, 'Order Deliver', 1),
(9, 'Drink Refil Request', 1),
(10, 'Drink Refil Request Accepted', 1),
(11, 'Call Waiter Request Accepted', 1);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE IF NOT EXISTS `order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `waiter_id` int(11) NOT NULL,
  `customername` varchar(64) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '0',
  `pickuptime` timestamp NULL DEFAULT NULL,
  `tablenumber` int(11) NOT NULL,
  `tabletnumber` int(11) NOT NULL,
  `customer_unique_id` varchar(80) NOT NULL,
  `key` int(11) DEFAULT NULL,
  `payment_status` int(10) NOT NULL DEFAULT '0',
  `date` date NOT NULL,
  `time` varchar(255) DEFAULT NULL,
  `shift_path` text,
  `invoice_print` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=765 ;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `waiter_id`, `customername`, `timestamp`, `status`, `pickuptime`, `tablenumber`, `tabletnumber`, `customer_unique_id`, `key`, `payment_status`, `date`, `time`, `shift_path`, `invoice_print`) VALUES
(753, 84, 'Bhumin', '2016-03-08 18:40:27', 4, NULL, 1, 1, 'Bhumin_1', NULL, 1, '2016-03-08', NULL, NULL, 0),
(764, 0, 'asasd', '2016-03-08 19:06:42', 4, NULL, 0, 0, '', NULL, 1, '2016-03-08', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `orderitem`
--

CREATE TABLE IF NOT EXISTS `orderitem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menuid` int(11) NOT NULL,
  `orderid` int(11) NOT NULL,
  `table_no` int(11) NOT NULL,
  `comp` int(11) DEFAULT NULL,
  `ingredients` text,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `paymentid` int(11) DEFAULT NULL,
  `price` float NOT NULL,
  `cust_name` varchar(80) NOT NULL,
  `status` int(10) NOT NULL,
  `quantity` int(20) NOT NULL,
  `comment` varchar(500) NOT NULL,
  `comment_status` varchar(100) NOT NULL,
  `comment_date` varchar(100) NOT NULL,
  `total_votes` varchar(10) NOT NULL,
  `total_valuve` varchar(10) NOT NULL,
  `notes` text,
  `el` varchar(100) NOT NULL,
  `sl` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `orderid` (`orderid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1822 ;

--
-- Dumping data for table `orderitem`
--

INSERT INTO `orderitem` (`id`, `menuid`, `orderid`, `table_no`, `comp`, `ingredients`, `timestamp`, `paymentid`, `price`, `cust_name`, `status`, `quantity`, `comment`, `comment_status`, `comment_date`, `total_votes`, `total_valuve`, `notes`, `el`, `sl`) VALUES
(1816, 0, 0, 1, NULL, NULL, '2016-03-08 18:40:06', NULL, 0, 'Bhumin_1', 0, 0, '', '', '', '', '', NULL, '', ''),
(1817, 160, 753, 1, NULL, 'All', '2016-03-08 18:40:27', NULL, 27000, 'Bhumin', 4, 1, '', '', '', '', '', '0', '', ''),
(1818, 161, 753, 1, NULL, 'All', '2016-03-08 18:40:27', NULL, 27000, 'Bhumin', 4, 1, '', '', '', '', '', '0', '', ''),
(1819, 82, 764, 0, NULL, 'All', '2016-03-08 19:06:42', NULL, 9500, '', 4, 1, '', '', '', '', '', '', 'indian', 'mild'),
(1820, 84, 764, 0, NULL, 'All', '2016-03-08 19:06:42', NULL, 4000, '', 4, 1, '', '', '', '', '', '', 'indian', 'mild'),
(1821, 160, 753, 1, NULL, 'All', '2016-03-08 19:08:39', NULL, 108000, 'Bhumin', 0, 4, '', '', '', '', '', '0', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE IF NOT EXISTS `payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `paymenttype` int(11) DEFAULT NULL,
  `amount` float(11,2) DEFAULT NULL,
  `cash_tendered` float(11,2) DEFAULT NULL,
  `change` float(11,2) DEFAULT NULL,
  `tipamount` float(11,2) DEFAULT NULL,
  `couponcode` varchar(255) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `orderitem` int(11) DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `customername` varchar(255) DEFAULT NULL,
  `tax` float(11,2) DEFAULT NULL,
  `tablenumber` int(11) DEFAULT NULL,
  `customer_unique_id` varchar(255) DEFAULT NULL,
  `bill_html` text,
  `tax_amount` float(11,2) DEFAULT NULL,
  `discount` float(11,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=238 ;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `paymenttype`, `amount`, `cash_tendered`, `change`, `tipamount`, `couponcode`, `order`, `orderitem`, `timestamp`, `customername`, `tax`, `tablenumber`, `customer_unique_id`, `bill_html`, `tax_amount`, `discount`) VALUES
(225, NULL, 10674.20, NULL, NULL, NULL, NULL, 731, NULL, NULL, 'khushi', 12.36, 0, NULL, NULL, 1174.20, NULL),
(226, NULL, 10674.20, NULL, NULL, NULL, NULL, 733, NULL, NULL, '', 12.36, 10, NULL, NULL, 1174.20, NULL),
(227, NULL, 78090.20, NULL, NULL, NULL, NULL, 734, NULL, NULL, '', 12.36, 3, NULL, NULL, 8590.20, NULL),
(228, NULL, 192500.00, 25000.00, 167500.00, NULL, NULL, 743, NULL, NULL, '', 0.00, 4, NULL, NULL, 0.00, 500.00),
(229, NULL, 100000.00, 15000.00, 85000.00, NULL, NULL, 744, NULL, NULL, '', 0.00, 4, NULL, NULL, 0.00, 8000.00),
(230, NULL, 80000.00, 9000.00, 71000.00, NULL, NULL, 745, NULL, NULL, '', 0.00, 8, NULL, NULL, 0.00, 1000.00),
(231, NULL, 80000.00, 9000.00, 71000.00, NULL, NULL, 745, NULL, NULL, '', 0.00, 8, NULL, NULL, 0.00, 1000.00),
(232, NULL, 80000.00, 9000.00, 71000.00, NULL, NULL, 745, NULL, NULL, '', 0.00, 8, NULL, NULL, 0.00, 1000.00),
(233, NULL, 80000.00, 9000.00, 71000.00, NULL, NULL, 745, NULL, NULL, '', 0.00, 8, NULL, NULL, 0.00, 1000.00),
(234, 0, 0.00, NULL, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, '0', NULL, 0.00, NULL),
(235, 0, 0.00, NULL, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, 0.00, NULL, '0', NULL, 0.00, NULL),
(236, NULL, 54000.00, 0.00, 54000.00, NULL, NULL, 753, NULL, NULL, '', 0.00, 1, NULL, NULL, 0.00, 0.00),
(237, NULL, 13500.00, 0.00, 13500.00, NULL, NULL, 764, NULL, NULL, 'asasd', 0.00, 0, NULL, NULL, 0.00, 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `payment_old`
--

CREATE TABLE IF NOT EXISTS `payment_old` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `paymenttype` int(11) NOT NULL,
  `amount` float NOT NULL,
  `tipamount` float NOT NULL,
  `couponcode` varchar(64) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `orderitem` int(11) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tax` float NOT NULL,
  PRIMARY KEY (`id`),
  KEY `order` (`order`) USING BTREE,
  KEY `couponcode` (`couponcode`) USING BTREE,
  KEY `orderitem` (`orderitem`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `sidebar_menus`
--

CREATE TABLE IF NOT EXISTS `sidebar_menus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `menu_url` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `active_status` tinyint(4) DEFAULT NULL,
  `for_panel` varchar(255) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Dumping data for table `sidebar_menus`
--

INSERT INTO `sidebar_menus` (`id`, `menu_name`, `icon`, `menu_url`, `parent_id`, `active_status`, `for_panel`, `order`) VALUES
(1, 'Dashboard', 'fa-tachometer', 'dashboard', 0, 0, 'Manager', 1),
(2, 'Orders', 'fa-bell-o', 'orders', 0, 0, 'Manager', 2),
(4, 'Assign Table', 'fa-edit', 'assign/assign_info', 0, 0, 'Manager', 6),
(5, 'User', 'fa-lock', 'useraccounts', 0, 0, 'Manager', 7),
(6, 'Software Setup', 'fa-wrench', '#', 0, 0, 'Manager', 10),
(7, 'Dashboard', 'fa-user', 'orders', 0, 0, 'Kitchen', 0),
(8, 'Inventory', NULL, 'inventory', 0, 0, 'Kitchen', 0),
(9, 'Ingredients', NULL, 'ingredients', 0, 0, 'Kitchen', 0),
(11, 'Disable Menu', NULL, 'menuitems', 0, 0, 'Kitchen', 0),
(12, 'Masters', 'fa-user', '#', 0, 0, 'Manager', 13),
(13, 'Menu Type', NULL, 'menutype', 12, 0, 'Manager', 14),
(14, 'Menu items', NULL, 'menuitems', 12, 0, 'Manager', 14),
(15, 'Email Setup', NULL, 'email', 6, 0, 'Manager', 11),
(16, 'Genral Setup', '', 'configruation', 6, 0, 'Manager', 12),
(17, 'Inventory', 'fa-credit-card', 'inventory', 0, 0, 'Manager', 4),
(18, 'Utilities', 'fa-plus-square', 'utilities', 0, 0, 'Manager', 8),
(19, 'My Orders', 'fa-user', 'myorders', 0, 0, 'Waiter', 2),
(20, 'All Orders', NULL, 'orders', 0, 0, 'Waiter', 3),
(21, 'Help Request', NULL, 'helprequests', 0, 0, 'Waiter', 4),
(23, 'Dashboard', 'fa-tachometer', 'dashboard', 0, 0, 'Waiter', 1),
(24, 'Change Table', NULL, 'changetable', 18, 0, 'Manager', 9),
(26, 'Notifications Type', NULL, 'notification_list', 12, 0, 'Manager', 15),
(27, 'Dashboard', 'tachometer', 'dashboard', 0, 0, 'Admin', 1),
(28, 'Reports', 'fa-print', 'reports', 0, 0, 'Admin', 2),
(29, 'Stock Report', NULL, 'stock', 28, 0, 'Admin', 3),
(30, 'Payment Report', NULL, 'payment', 28, 0, 'Admin', 4),
(31, 'Disable Men', 'fa-plus-square', 'menu_utilty', 18, NULL, 'Manager', 16);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE IF NOT EXISTS `staff` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(64) NOT NULL,
  `lname` varchar(64) NOT NULL,
  `role` int(11) NOT NULL,
  `logincode` varchar(11) NOT NULL,
  `uname` varchar(40) NOT NULL,
  `pic` varchar(255) DEFAULT NULL,
  `delete` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `logincode` (`logincode`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=86 ;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `fname`, `lname`, `role`, `logincode`, `uname`, `pic`, `delete`) VALUES
(68, 'Super ', 'Admin', 2, 'nirav', 'nirav', 'manager.jpg', 0),
(69, 'Mayo', 'Less', 1, 'kitchen', 'kitchen', 'kitchen.jpg', 0),
(83, 'Owner', 'Owner', 3, 'admin', 'admin', 'default.png', 0),
(84, 'waiter', 'Waiter', 0, '123456', 'waiter', 'dummy-profilepng', 0),
(85, 'ramu', 'ramu', 0, '123456', 'ramu', 'default.png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE IF NOT EXISTS `status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(255) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `bgcolor` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `status`, `order`, `bgcolor`, `color`) VALUES
(1, 'Processed', 2, '#0fff0f', '#000000'),
(2, 'Ready To Deliver', 3, '#ffff00', '#000000'),
(3, 'Deliver', 4, '#008000', '#ffffff'),
(4, 'Paid', 5, '#ff0000', '#ffff99'),
(5, 'order placed', 1, '#ff66ff', '#ffffff');

-- --------------------------------------------------------

--
-- Table structure for table `status_copy`
--

CREATE TABLE IF NOT EXISTS `status_copy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(255) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `bgcolor` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `status_copy`
--

INSERT INTO `status_copy` (`id`, `status`, `order`, `bgcolor`, `color`) VALUES
(1, 'Ready To Deliver', 3, NULL, NULL),
(2, 'Deliver', 4, NULL, NULL),
(3, 'Paid', 5, NULL, NULL),
(4, 'test', 6, 'ff6600', 'ffff00'),
(5, 'gh', 7, '#ffffff', '#ff6600'),
(6, 'order placed', 5, '#ff6600', '#ffffff'),
(7, 'Processed', 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE IF NOT EXISTS `stock` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `ing_id` int(20) NOT NULL,
  `add_date` date NOT NULL,
  `add_date_time` time NOT NULL,
  `available` int(20) NOT NULL,
  `type` int(20) NOT NULL,
  `quantity` int(50) NOT NULL,
  `supplier` varchar(50) NOT NULL,
  `ing_name` varchar(80) NOT NULL,
  `ing_type` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=184 ;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`id`, `ing_id`, `add_date`, `add_date_time`, `available`, `type`, `quantity`, `supplier`, `ing_name`, `ing_type`) VALUES
(160, 62, '2015-02-11', '00:00:00', 5, 0, 0, '', '', 'nou'),
(161, 62, '2015-02-11', '00:00:00', 0, 0, 12, '', '', ''),
(162, 69, '2015-02-12', '00:00:00', 0, 0, 17, '', '', ''),
(163, 69, '2015-02-12', '00:00:00', 0, 0, 22, '', '', ''),
(164, 69, '2015-02-12', '00:00:00', 0, 0, 12, '', '', ''),
(165, 16, '2015-02-16', '00:00:00', 0, 0, 120, '', '', ''),
(166, 69, '2015-02-24', '00:00:00', 0, 0, 17, '', '', ''),
(167, 69, '2015-02-24', '00:00:00', 0, 0, 15, '', '', ''),
(168, 69, '2015-02-24', '00:00:00', 0, 0, 30, '', '', ''),
(169, 75, '2015-03-13', '00:00:00', 0, 0, 0, '', 'Oregano', 'nou'),
(170, 76, '2015-03-13', '00:00:00', 0, 0, 0, '', 'collard leaves', 'grm'),
(171, 77, '2015-03-13', '00:00:00', 0, 0, 0, '', 'Chinese noodles', 'kg'),
(172, 78, '2015-03-13', '00:00:00', 0, 0, 0, '', 'Cabbage', 'kg'),
(173, 79, '2015-03-13', '00:00:00', 0, 0, 0, '', 'rice', 'kg'),
(174, 80, '2015-03-13', '00:00:00', 0, 0, 0, '', 'Dal', 'kg'),
(175, 81, '2015-03-13', '00:00:00', 0, 0, 0, '', 'Fish', 'kg'),
(176, 82, '2015-03-13', '00:00:00', 0, 0, 0, '', 'Mutton', 'kg'),
(177, 83, '2015-03-13', '00:00:00', 0, 0, 0, '', 'Almond', 'kg'),
(178, 84, '2015-03-13', '00:00:00', 0, 0, 0, '', 'flour', 'kg'),
(179, 69, '2015-03-31', '00:00:00', 0, 0, 35, '', '', ''),
(180, 53, '2015-03-31', '00:00:00', 2, 0, 0, '', '', 'nou'),
(181, 69, '2015-03-31', '00:00:00', 12, 0, 0, '', '', 'grm'),
(182, 69, '2015-03-31', '00:00:00', 0, 0, 40, '', '', ''),
(183, 69, '2015-04-02', '00:00:00', 0, 0, 44, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `stock_transaction`
--

CREATE TABLE IF NOT EXISTS `stock_transaction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `stock_transaction`
--

INSERT INTO `stock_transaction` (`id`, `item_id`, `qty`, `type`, `date`) VALUES
(1, 69, 17, 'Inward', '2015-02-16'),
(2, 69, 22, 'Inward', '2015-02-16'),
(3, 69, 10, 'Consume', '2015-02-16'),
(4, 69, 25, 'Inward', '2015-02-24'),
(5, 58, 2, 'Consume', '2015-02-24'),
(6, 70, 100, 'Consume', '2015-02-24'),
(7, 66, 12, 'Inward', '2015-02-24'),
(8, 69, 15, 'Inward', '2015-02-24'),
(9, 75, 100, 'Inward', '2015-03-13'),
(10, 76, 2000, 'Inward', '2015-03-13'),
(11, 69, 5, 'Inward', '2015-03-31'),
(12, 69, 5, '', '2015-03-31'),
(13, 69, 56, '', '2015-04-02');

-- --------------------------------------------------------

--
-- Table structure for table `table`
--

CREATE TABLE IF NOT EXISTS `table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tablenumber` int(11) NOT NULL,
  `tabletnumber` int(11) NOT NULL,
  `inuse` tinyint(1) NOT NULL DEFAULT '0',
  `notes` text,
  `waiter_id` int(11) DEFAULT NULL,
  `reserved` int(10) NOT NULL,
  `res_cust_name` varchar(100) NOT NULL,
  `res_time_from` varchar(100) NOT NULL,
  `res_time_to` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tablenumber` (`tablenumber`,`tabletnumber`),
  KEY `tabletnumber` (`tabletnumber`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1922 ;

--
-- Dumping data for table `table`
--

INSERT INTO `table` (`id`, `tablenumber`, `tabletnumber`, `inuse`, `notes`, `waiter_id`, `reserved`, `res_cust_name`, `res_time_from`, `res_time_to`) VALUES
(1915, 1, 1, 0, 'assign', 84, 0, '', '', ''),
(1916, 2, 2, 0, 'assign', 85, 0, '', '', ''),
(1917, 3, 3, 0, 'assign', 84, 0, '', '', ''),
(1921, 4, 4, 0, 'assign', 84, 0, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tabletnotification`
--

CREATE TABLE IF NOT EXISTS `tabletnotification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `acceptedby` int(11) DEFAULT NULL,
  `tablenumber` int(11) NOT NULL,
  `tabletnumber` int(11) NOT NULL,
  `waiter_id` int(11) NOT NULL,
  `orderid` int(11) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `cust_name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `acceptedby` (`acceptedby`),
  KEY `tablenumber` (`tablenumber`,`tabletnumber`),
  KEY `tabletnumber` (`tabletnumber`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=236 ;

-- --------------------------------------------------------

--
-- Table structure for table `temp_your_order`
--

CREATE TABLE IF NOT EXISTS `temp_your_order` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `itemid` int(10) NOT NULL,
  `itemname` varchar(200) NOT NULL,
  `ingredients` varchar(80) NOT NULL,
  `price` decimal(20,0) NOT NULL,
  `cust_name` varchar(80) NOT NULL,
  `orderid` int(10) NOT NULL,
  `item_img` varchar(200) NOT NULL,
  `quantity` int(20) NOT NULL,
  `table_no` int(10) NOT NULL,
  `waiter_id` int(10) NOT NULL,
  `notes` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE IF NOT EXISTS `transaction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `amount` float(11,4) DEFAULT NULL,
  `transaction_date` datetime DEFAULT NULL,
  `transaction_type` varchar(255) DEFAULT NULL,
  `narration` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id`, `order_id`, `amount`, `transaction_date`, `transaction_type`, `narration`) VALUES
(1, 745, 81000.0000, '2015-04-02 00:00:00', 'Received', 'Payment Against OrderID :: 745'),
(2, 0, 0.0000, '0000-00-00 00:00:00', 'Received', ''),
(3, 0, 0.0000, '0000-00-00 00:00:00', 'Received', ''),
(4, 753, 54000.0000, '2016-03-08 19:41:55', 'Received', 'Payment Against OrderID :: 753'),
(5, 764, 13500.0000, '2016-03-08 20:07:27', 'Received', 'Payment Against OrderID :: 764');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `notification`
--
ALTER TABLE `notification`
  ADD CONSTRAINT `notification_ibfk_1` FOREIGN KEY (`acceptby`) REFERENCES `staff` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payment_old`
--
ALTER TABLE `payment_old`
  ADD CONSTRAINT `payment_old_ibfk_1` FOREIGN KEY (`order`) REFERENCES `orderitem` (`orderid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `payment_old_ibfk_2` FOREIGN KEY (`couponcode`) REFERENCES `coupon` (`code`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `payment_old_ibfk_3` FOREIGN KEY (`orderitem`) REFERENCES `orderitem` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tabletnotification`
--
ALTER TABLE `tabletnotification`
  ADD CONSTRAINT `tabletnotification_ibfk_2` FOREIGN KEY (`acceptedby`) REFERENCES `staff` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tabletnotification_ibfk_3` FOREIGN KEY (`tablenumber`) REFERENCES `table` (`tablenumber`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tabletnotification_ibfk_4` FOREIGN KEY (`tabletnumber`) REFERENCES `table` (`tabletnumber`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
