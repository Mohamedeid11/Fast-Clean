-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 09, 2020 at 06:01 PM
-- Server version: 10.2.35-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fastcleanbh_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `content_en` text NOT NULL,
  `vision_en` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `vision_ar` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `vision_image` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `mission_en` text CHARACTER SET utf16 DEFAULT NULL,
  `mission_ar` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `mission_image` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `goals_en` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `goals_ar` text DEFAULT NULL,
  `goals_image` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `image`, `title`, `content`, `title_en`, `content_en`, `vision_en`, `vision_ar`, `vision_image`, `mission_en`, `mission_ar`, `mission_image`, `goals_en`, `goals_ar`, `goals_image`) VALUES
(1, 'http://www.promosbh.com/newsite/system/api/uploads/about/logo copy.png', 'برومو ميديا', 'شركة برومو هي شركة تسويق رقمي مبتكرة في مملكة البحرين ، متخصصة في جميع أنواع التسويق الرقمي والإعلان والورق والإعلان الرقمي وقنوات التواصل الاجتماعي.', 'Promo Media', 'Promo Company Is An Innovative Digital Marketing Company In The Kingdom Of Bahrain, Specialized In All Types Of Digital Marketing, Advertising, Paper And Digital Advertising And Social Media Channels', 'Achieve leadership in providing creative services Which is characterized by effectiveness and sustainability', 'تحقيق الريادة في تقديم خدمات إبداعية تتميز بالفعالية والاستدامة.', 'http://www.promosbh.com/newsite/system/api/uploads/about/photo-of-people-using-laptops-3182833.png', 'Applying the principles of advertising and marketing in a manner that is characterized by quality and integrity and achieves a future vision for institutions and companies', 'تطبيق مبادئ الإعلان والتسويق بشكل يتسم بالجودة والنزاهة ويحقق رؤية مستقبلية للمؤسسات والشركات.', 'http://www.promosbh.com/newsite/system/api/uploads/about/photo-of-people-near-wooden-table-3184418.png', '- Provide a clear marketing and economic vision.</br>\r\n- Innovative solutions that achieve current and future goals.</br>\r\n- Create and support a competitive advantage.</br>\r\n- Total quality is a cornerstone of everything we offer', '- تقديم رؤية تسويقية واقتصادية واضحة.</br>\r\n- حلول مبتكرة تحقق الأهداف الحالية والمستقبلية.</br>\r\n- خلق ميزة تنافسية ودعمها.</br>\r\n- الجودة الشاملة هي حجر الزاوية في كل ما نقدمه', 'http://www.promosbh.com/newsite/system/api/uploads/about/working-in-a-group-6224.png');

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `name_ar` varchar(255) CHARACTER SET utf8 NOT NULL,
  `display` int(11) NOT NULL,
  `branch_show` int(11) NOT NULL DEFAULT 1,
  `date` varchar(255) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`id`, `name`, `name_ar`, `display`, `branch_show`, `date`) VALUES
(2, 'Arad', 'عراد', 1, 1, '2020-07-22 22:58:30'),
(3, 'Muharraq', 'المحرق', 1, 1, '2020-07-22 22:58:57'),
(4, 'Isa Town', 'مدينة عيسى ', 1, 1, '2020-07-22 22:59:26'),
(5, 'Bahrain Mall', 'مجمع البحرين', 1, 1, '2020-07-22 22:59:44'),
(6, 'Riffa ', 'الرفاع', 1, 1, '2020-07-22 23:00:07'),
(7, 'Galali', 'قلالي', 1, 1, '2020-07-22 23:00:26'),
(8, 'Hamad Town ', 'مدينة حمد ', 1, 1, '2020-07-22 23:00:41'),
(9, 'Sanad', 'سند', 1, 1, '2020-07-22 23:00:57'),
(10, 'B.D.F Hospital ', 'مستشفى العسكري', 1, 1, '2020-07-22 23:01:31'),
(11, 'Segaya Plaza', 'السقية بلازا ', 1, 1, '2020-07-22 23:02:00'),
(12, 'Tubli', 'توبلي ', 0, 1, '2020-07-22 23:04:04'),
(13, 'Juffair', 'الجفير', 0, 1, '2020-07-22 23:04:32');

-- --------------------------------------------------------

--
-- Table structure for table `branches_regions`
--

CREATE TABLE `branches_regions` (
  `id` int(11) NOT NULL,
  `region_id` int(11) NOT NULL,
  `branche_id` int(11) NOT NULL,
  `date` varchar(255) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `branches_regions`
--

INSERT INTO `branches_regions` (`id`, `region_id`, `branche_id`, `date`) VALUES
(2, 12, 2, '2020-07-26 12:16:17'),
(3, 6, 3, '2020-07-26 12:16:22'),
(4, 8, 5, '2020-07-26 12:16:28'),
(5, 27, 6, '2020-07-26 12:16:45');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `sub_category_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `size_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `addition_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `client_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remove_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `note` varchar(255) CHARACTER SET utf8 NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `date` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `cart_type` int(11) NOT NULL DEFAULT 1 COMMENT '1:mobileOrder,2:WebOrder	'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cart_id`, `sub_category_id`, `size_id`, `addition_id`, `quantity`, `price`, `client_id`, `remove_id`, `note`, `status`, `date`, `cart_type`) VALUES
(1, '35', '64', '', '1', '1.5', '15', '', '', 1, '2020-07-19', 1),
(2, '22', '47', '', '1', '0.8', '15', '', '', 1, '2020-07-19', 1),
(3, '21', '46', '', '3', '2.4', '15', '', 'Test Not 555', 1, '2020-07-19', 1),
(4, '6', '9', '', '1', '4', '15', '', '', 1, '2020-07-19', 1),
(5, '35', '64', '', '1', '1.5', '', '', '', 0, '2020-07-19', 1),
(6, '35', '64', '', '1', '1.5', '15', '', '', 1, '2020-07-19', 1),
(7, '5', '8', '', '1', '1.5', '15', '', '', 0, '2020-07-21', 1),
(8, '6', '9', '', '1', '4', '18', '', '', 1, '2020-07-21', 1),
(13, '35', '64', '', '1', '1.5', '18', '', '', 1, '2020-07-21', 1),
(21, '4', '7', '', '1', '2', '18', '', '', 1, '2020-07-21', 1),
(22, '21', '46', '', '1', '0.8', '18', '', '', 1, '2020-07-21', 1),
(24, '22', '47', '', '1', '0.8', '18', '', '', 1, '2020-07-21', 1),
(25, '6', '9', '', '1', '4', '19', '', '', 1, '2020-07-22', 1),
(26, '35', '64', '', '1', '1.5', '19', '', '', 1, '2020-07-22', 1),
(27, '35', '64', '', '1', '1.5', '19', '', '', 1, '2020-07-22', 1),
(33, '1', '3', '', '1', '1.5', '1', '', '', 1, '2020-07-25 18:43:29', 2),
(34, '2', '5', '', '1', '1.5', '22', '', '', 1, '2020-07-25 19:11:10', 2),
(35, '35', '64', '', '4', '6', '22', '', '', 1, '2020-07-25 19:24:19', 2),
(36, '87', '195', '', '1', '1.25', '22', '', '', 1, '2020-07-25 19:42:57', 2),
(37, '9', '17', '', '2', '3', '23', '', '', 0, '2020-07-26', 1),
(38, '9', '16', '', '1', '1', '', '', '', 0, '2020-07-26', 1),
(39, '35', '64', '', '1', '1.5', '', '', '', 0, '2020-07-26', 1),
(40, '2', '5', '', '1', '1.5', '', '', '', 0, '2020-07-26', 1),
(41, '33', '62', '', '1', '2.5', '24', '', '', 1, '2020-07-26', 1),
(42, '28', '55', '', '3', '6', '24', '', '', 1, '2020-07-26', 1),
(44, '9', '18', '', '1', '1.8', '25', '', '', 1, '2020-07-26', 1),
(45, '6', '9', '', '1', '4', '24', '', '', 1, '2020-07-26', 1),
(46, '34', '63', '', '1', '2.5', '24', '', '', 1, '2020-07-26', 1),
(47, '34', '63', '', '1', '2.5', '24', '', '', 1, '2020-07-26', 1),
(48, '34', '63', '', '1', '2.5', '24', '', '', 1, '2020-07-26', 1),
(51, '35', '64', '', '1', '1.5', '24', '', '', 0, '2020-07-26', 1),
(52, '35', '64', '', '1', '1.5', '24', '', '', 0, '2020-07-26', 1),
(53, '9', '16', '', '1', '1', '24', '', '', 0, '2020-07-26', 1),
(54, '34', '63', '', '1', '2.5', '24', '', '', 0, '2020-07-26', 1),
(55, '34', '63', '', '1', '2.5', '24', '', '', 0, '2020-07-26', 1),
(57, '1', '2', '', '3', '4.5', '1', '', '', 0, '2020-07-26 09:48:29', 2),
(58, '6', '9', '', '3', '12', '23', '', '', 0, '2020-07-26', 1),
(59, '91', '205', '', '1', '7', '24', '', '', 0, '2020-07-27', 1),
(61, '28', '55', '', '5', '10', '26', '', '', 1, '2020-08-09', 1),
(83, '22', '47', '', '4', '3.2', '28', '', '', 0, '2020-08-25', 1),
(85, '9', '16', '', '1', '1', '', '', '', 0, '2020-08-29', 1),
(88, '35', '64', '', '1', '1.5', '29', '', '', 0, '2020-09-12', 1),
(89, '2', '5', '', '1', '1.5', '30', '', '', 1, '2020-09-17 08:57:38', 2),
(91, '22', '47', '', '1', '0.8', '19', '', '', 0, '2020-09-20', 1),
(92, '15', '35', '', '1', '1.5', '19', '', '', 0, '2020-09-20', 1),
(93, '9', '18', '', '3', '5.4', '30', '', 'test note', 1, '2020-09-20', 1),
(94, '100', '230', '', '1', '6', '27', '', '', 0, '2020-09-23', 1),
(95, '2', '', '', '3', '0', '16', '', 'Amazing', 0, '2020-11-08', 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category_name_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category_name_ar` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `display` int(255) NOT NULL DEFAULT 1,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category_name_en`, `category_name_ar`, `display`, `date`) VALUES
(1, 'Fixed Washers', 'المغاسل الثابته', 1, '2020-10-31 16:05:16'),
(2, 'mobile Washer', 'المغاسل المتحركه', 1, '2020-10-31 16:05:44'),
(3, 'Home subscription laundries', 'مغاسل الاشتراكات المنزليه', 1, '2020-11-04 12:59:53'),
(5, 'Dorothy Klein', 'Ulla Tillman', 1, '2020-11-08 13:13:21');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `client_id` int(11) NOT NULL,
  `client_name` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `client_password` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `client_email` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `client_phone` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `date` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`client_id`, `client_name`, `client_password`, `client_email`, `client_phone`, `date`) VALUES
(1, 'aname', '123456', 'lopycyte@mailinator.com', '0110111011', '2020-10-28 14:22:23'),
(2, 'New Client', '1234567', 'vedi@mailinator.com', '011011', '2020-10-28 14:23:17'),
(3, 'Mohamed', '123456', 'mohamed@mohamed.com', '01101111', '2020-11-02 10:30:31'),
(4, 'Mohamed', '123456', 'mohamed@mohamed.com', '011', '2020-11-02 10:30:41'),
(6, 'Charles Norton', 'Pa$$w0rd!', 'tesi@mailinator.com', '+1 (697) 869-1774', '2020-11-08 14:13:07');

-- --------------------------------------------------------

--
-- Table structure for table `client_addresses`
--

CREATE TABLE `client_addresses` (
  `client_address_id` int(11) NOT NULL,
  `lat` varchar(255) CHARACTER SET utf8 NOT NULL,
  `lang` varchar(255) CHARACTER SET utf8 NOT NULL,
  `region` varchar(50) CHARACTER SET utf8 NOT NULL,
  `block` varchar(255) CHARACTER SET utf8 NOT NULL,
  `road` varchar(255) CHARACTER SET utf8 NOT NULL,
  `building` varchar(255) CHARACTER SET utf8 NOT NULL,
  `flat_number` varchar(255) CHARACTER SET utf8 NOT NULL,
  `client_phone` varchar(255) CHARACTER SET utf8 NOT NULL,
  `note` text CHARACTER SET utf8 NOT NULL,
  `client_id` varchar(50) CHARACTER SET utf8 NOT NULL,
  `date` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `client_addresses`
--

INSERT INTO `client_addresses` (`client_address_id`, `lat`, `lang`, `region`, `block`, `road`, `building`, `flat_number`, `client_phone`, `note`, `client_id`, `date`) VALUES
(2, '', '', '84', '323232', '874 Runnymede Rd, Woodside, CA 94062, USA', '323232', '322', '3232323', '333', '9', '2020-06-15 09:39:47'),
(3, '', '', '83', 'eeewewew', '27887 Baker Ln, Los Altos Hills, CA 94022, USA', '22', 'e2', 'ds', 'ewe we', '7', '2020-06-16 11:42:18'),
(4, '', '', '', '', 'King Faisal Hwy, Manama, Bahrain', '', '', '', '', '14', '2020-06-18 17:41:16'),
(5, '0', '0', '86', 'block 10', 'street 9', 'building 11', 'flat 21', '01224300', 'Added notes', '15', '2020-07-16 15:45:19'),
(6, '31.07887346292744', '29.74619351327419', '85', '088', 'Earthy Pass', 'building', '58', '01554898751', '', '18', '2020-07-21 17:23:31'),
(7, '26.2371310651502', '50.57821489870548', '85', '222', '383 Government Ave', '555', '', '33340388', '', '19', '2020-07-22 22:46:25'),
(9, '', '', '83', '125', '1748', '125', '1', '33405497', '', '22', '2020-07-25 20:17:57'),
(10, '25.829337020136', '50.609143058715', '35', '226', '2648', '2339', '', '33683333', '', '23', '2020-07-26 11:56:05'),
(11, '26.223095546569', '50.667187505938', '6', '366?', '6678', '667', '', '38883747', '', '24', '2020-07-26 12:19:39'),
(12, '', '', '76', '345', '543', '5435', '543', '01090083525', '', '1', '2020-07-27 14:26:38'),
(13, '26.222521025658', '50.662804508001', '51', '115', '1508', '44', '', '34216769', '', '26', '2020-08-09 11:14:31'),
(14, '26.19802946300285', '50.46638656407595', '4', '551', 'Rd No 5105', '85', '', '33825259', '', '27', '2020-08-17 20:51:41'),
(15, '26.198022844645823', '50.466386899352074', '68', '525', 'Rd No 5105', '77', '', '33825259', '', '27', '2020-08-17 23:07:13');

-- --------------------------------------------------------

--
-- Table structure for table `client_fav`
--

CREATE TABLE `client_fav` (
  `fav_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `sub_category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `client_fav`
--

INSERT INTO `client_fav` (`fav_id`, `client_id`, `sub_category_id`) VALUES
(2, 6, 250),
(6, 9, 250),
(7, 4, 250),
(10, 15, 6),
(11, 15, 22),
(12, 15, 28),
(14, 18, 22),
(16, 18, 20),
(18, 19, 1),
(26, 1, 34);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(11) NOT NULL,
  `client_id` varchar(255) DEFAULT NULL,
  `washer_id` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `rate` varchar(255) DEFAULT NULL,
  `viewed` int(11) DEFAULT NULL,
  `date` varchar(255) CHARACTER SET utf8mb4 NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `client_id`, `washer_id`, `comment`, `rate`, `viewed`, `date`) VALUES
(1, '1', '1', 'some Comment here', '5', 20, 'current_timestamp()'),
(2, '2', '3', 'لتافقغعتفغتي', '54', 4, 'current_timestamp()');

-- --------------------------------------------------------

--
-- Table structure for table `complaints`
--

CREATE TABLE `complaints` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `content` text CHARACTER SET utf8 NOT NULL,
  `date` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complaints`
--

INSERT INTO `complaints` (`id`, `client_id`, `title`, `content`, `date`) VALUES
(2, 15, 't', 'C', '2020-07-19 16:21:29'),
(3, 18, 'title ', 'My message ', '2020-07-21 17:43:38'),
(4, 19, 'تتن', 'نتتت', '2020-07-22 22:52:13'),
(5, 24, 'fghn', 'Hbbnbhj', '2020-07-26 12:38:17');

-- --------------------------------------------------------

--
-- Table structure for table `complaint_images`
--

CREATE TABLE `complaint_images` (
  `id` int(11) NOT NULL,
  `complaint_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `complaint_images`
--

INSERT INTO `complaint_images` (`id`, `complaint_id`, `image`) VALUES
(1, 2, 'http://aljazeeraroastery.com/system/api/uploads/complaints/2/photo.jpg'),
(2, 3, 'http://aljazeeraroastery.com/system/api/uploads/complaints/3/FB_IMG_1595331774996.jpg'),
(3, 4, 'http://aljazeeraroastery.com/system/api/uploads/complaints/4/20200714_182359.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `address_en` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `google-plus` varchar(255) NOT NULL,
  `twitter` varchar(255) NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `pinterest` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  `accept_orders` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `address`, `address_en`, `phone`, `mobile`, `email`, `google-plus`, `twitter`, `facebook`, `pinterest`, `website`, `accept_orders`) VALUES
(1, 'مبنى 1029 ، مجمع 436 ، طريق 3621 ، مكتب 63 ، مملكة البحرين ، منطقة السيف', 'Building 1029, Block 436, Road 3621, Office 63, Kingdom of bahrain,Seef Area', '97316636669', '97316636669', 'info@promosbh.com', 'https://www.instagram.com/promos.bahrain/?igshid=278lyg1lcmge', 'twitter', 'https://www.facebook.com/Promos.bahrain/', '0097316636669', 'http://www.promosbh.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact_links`
--

CREATE TABLE `contact_links` (
  `id` int(11) NOT NULL,
  `branche_id` int(11) NOT NULL,
  `link` varchar(255) CHARACTER SET utf8 NOT NULL,
  `contact_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `email` varchar(225) CHARACTER SET utf8 NOT NULL,
  `title` varchar(225) CHARACTER SET utf8 NOT NULL,
  `subject` text CHARACTER SET utf8 NOT NULL,
  `date_added` varchar(255) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `email`, `title`, `subject`, `date_added`) VALUES
(11, 'تجريب', 'safyeissa208@gmail.com', 'teeest', 'safy', '2020-07-25 15:53:07');

-- --------------------------------------------------------

--
-- Table structure for table `delivered_way`
--

CREATE TABLE `delivered_way` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `name_en` varchar(255) NOT NULL,
  `display` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `delivered_way`
--

INSERT INTO `delivered_way` (`id`, `name`, `name_en`, `display`) VALUES
(1, 'توصيل إلى المنزل', 'Delivery', 1),
(2, 'إستلام من الفرع', 'Pick Up', 1),
(3, 'داخل الفرع', 'In Branch', 0);

-- --------------------------------------------------------

--
-- Table structure for table `devices`
--

CREATE TABLE `devices` (
  `id` int(11) NOT NULL,
  `device_token_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `login` int(11) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `devices`
--

INSERT INTO `devices` (`id`, `device_token_id`, `client_id`, `login`, `date_added`) VALUES
(10, 10, 4, 1, '2020-06-06 19:31:41'),
(9, 9, 5, 1, '2020-06-04 22:37:33'),
(8, 8, 5, 1, '2020-06-04 22:37:33'),
(7, 7, 4, 1, '2020-06-04 22:07:28'),
(11, 11, 6, 1, '2020-06-07 08:55:41'),
(12, 12, 6, 1, '2020-06-07 08:55:41'),
(13, 13, 7, 1, '2020-06-07 20:38:04'),
(14, 14, 7, 1, '2020-06-07 20:38:04'),
(15, 15, 1, 1, '2020-06-07 20:47:49'),
(16, 16, 1, 1, '2020-06-07 20:47:49'),
(17, 17, 4, 1, '2020-06-08 11:57:31'),
(18, 18, 7, 1, '2020-06-12 01:13:06'),
(19, 19, 7, 1, '2020-06-13 23:17:54'),
(20, 20, 7, 1, '2020-06-14 11:53:13'),
(21, 21, 7, 1, '2020-06-14 12:03:29'),
(22, 22, 7, 1, '2020-06-14 13:11:54'),
(23, 23, 8, 1, '2020-06-14 19:46:41'),
(24, 24, 9, 1, '2020-06-14 20:11:07'),
(25, 25, 10, 1, '2020-06-15 19:48:12'),
(26, 26, 7, 1, '2020-06-16 13:22:12'),
(27, 27, 7, 1, '2020-06-17 00:26:17'),
(28, 28, 11, 1, '2020-06-17 12:43:28'),
(29, 29, 12, 1, '2020-06-17 13:23:45'),
(30, 30, 13, 1, '2020-06-17 13:24:17'),
(31, 31, 14, 1, '2020-06-18 17:28:52'),
(32, 32, 2, 1, '2020-06-18 19:48:35'),
(33, 33, 7, 1, '2020-06-19 16:34:43'),
(34, 34, 7, 1, '2020-06-19 20:26:16'),
(35, 35, 15, 1, '2020-07-14 10:14:51'),
(36, 36, 15, 1, '2020-07-19 15:25:29'),
(37, 37, 15, 1, '2020-07-19 15:56:24'),
(38, 38, 16, 1, '2020-07-19 16:05:45'),
(39, 39, 15, 1, '2020-07-19 16:16:16'),
(40, 40, 15, 1, '2020-07-19 23:39:05'),
(41, 41, 15, 1, '2020-07-20 01:44:23'),
(42, 154, 17, 1, '2020-07-21 15:14:59'),
(43, 161, 18, 1, '2020-07-21 15:38:02'),
(44, 179, 19, 1, '2020-07-22 18:00:26'),
(45, 183, 20, 1, '2020-07-23 01:44:17'),
(46, 196, 23, 1, '2020-07-26 11:53:27'),
(47, 197, 24, 1, '2020-07-26 12:08:24'),
(48, 198, 25, 1, '2020-07-26 12:13:21'),
(49, 200, 15, 1, '2020-07-27 18:16:15'),
(50, 207, 26, 1, '2020-08-09 11:11:12'),
(51, 214, 27, 1, '2020-08-17 18:59:47'),
(52, 222, 28, 1, '2020-08-25 03:36:20'),
(53, 236, 29, 1, '2020-09-12 18:42:04'),
(54, 239, 1, 1, '2020-09-16 00:23:49'),
(55, 243, 15, 1, '2020-09-16 14:34:53'),
(56, 244, 2, 1, '2020-09-17 11:57:20'),
(57, 246, 22, 1, '2020-09-17 12:06:28'),
(58, 252, 31, 1, '2020-09-17 12:24:02'),
(59, 254, 1, 1, '2020-09-17 12:31:37'),
(60, 262, 30, 1, '2020-09-20 15:42:02'),
(61, 266, 2, 1, '2020-10-28 15:23:28'),
(62, 267, 3, 1, '2020-11-02 10:30:31'),
(63, 268, 4, 1, '2020-11-02 10:30:41');

-- --------------------------------------------------------

--
-- Table structure for table `device_token`
--

CREATE TABLE `device_token` (
  `id` int(11) NOT NULL,
  `device_token` varchar(200) CHARACTER SET utf8 NOT NULL,
  `type` varchar(100) CHARACTER SET utf8 NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `device_token`
--

INSERT INTO `device_token` (`id`, `device_token`, `type`, `date_added`) VALUES
(10, '', 'android', '2020-06-06 19:31:41'),
(8, '', 'android', '2020-06-04 22:37:33'),
(9, 'f2GKmJkk3cg:APA91bE_7KoxLd81Fplvcr1kPFZBKeBmrViW5Cyvamju3Uqp974s9B70F10ZDLAt8JW57bhjk6zi5En8nILn0z3PbRjCOcBj-EaRZGDU7syCDS_lcv0y89qmiSUDO2FLgnqDue-_Gchs', 'android', '2020-06-04 22:37:33'),
(7, 'f2GKmJkk3cg:APA91bE_7KoxLd81Fplvcr1kPFZBKeBmrViW5Cyvamju3Uqp974s9B70F10ZDLAt8JW57bhjk6zi5En8nILn0z3PbRjCOcBj-EaRZGDU7syCDS_lcv0y89qmiSUDO2FLgnqDue-_Gchs', 'android', '2020-06-04 22:07:28'),
(11, '', 'android', '2020-06-07 08:55:41'),
(12, 'f2GKmJkk3cg:APA91bE_7KoxLd81Fplvcr1kPFZBKeBmrViW5Cyvamju3Uqp974s9B70F10ZDLAt8JW57bhjk6zi5En8nILn0z3PbRjCOcBj-EaRZGDU7syCDS_lcv0y89qmiSUDO2FLgnqDue-_Gchs', 'android', '2020-06-07 08:55:41'),
(13, '', 'android', '2020-06-07 20:38:04'),
(14, 'f2GKmJkk3cg:APA91bE_7KoxLd81Fplvcr1kPFZBKeBmrViW5Cyvamju3Uqp974s9B70F10ZDLAt8JW57bhjk6zi5En8nILn0z3PbRjCOcBj-EaRZGDU7syCDS_lcv0y89qmiSUDO2FLgnqDue-_Gchs', 'android', '2020-06-07 20:38:04'),
(15, '', 'android', '2020-06-07 20:47:49'),
(16, 'f2GKmJkk3cg:APA91bE_7KoxLd81Fplvcr1kPFZBKeBmrViW5Cyvamju3Uqp974s9B70F10ZDLAt8JW57bhjk6zi5En8nILn0z3PbRjCOcBj-EaRZGDU7syCDS_lcv0y89qmiSUDO2FLgnqDue-_Gchs', 'android', '2020-06-07 20:47:49'),
(17, 'eVRZrmcPzik:APA91bE3jYljB_j8Tk69_pdmsME-k-mW3UXgV4OuIDBvCr_gyYxc7XKo2FIWRy9CYnNysleNRlrpVvF7MdJLWngYnt7Xu1O1D37eNrIPH3OwyZR1NQv-dVnq4Xsv7SzOfvKGfkjIOC5J', 'android', '2020-06-08 11:57:31'),
(18, 'fzUl9juvwEhEt9h20Yvm_I:APA91bFklVcD17CHmp-ECP0I2wro3StqxWCDuoAFf0PHUSXNxwb3tKuf2C0crcbOpkg9tIGUlr7ZSWT9HQXmuthrZiIvSeDE_Y00okFPcgwt0YUqlXa3tzpgvteK5V9oc82rGkZ5YbG4', '1', '2020-06-12 01:13:06'),
(19, 'eNgFEMzDNUtWpFjVvWo3sj:APA91bEvtl96ULH_aXDsWoxO6YWJzf2DqZx5KwqSFUik7Nj5Fsbg6XX7MCqf0nfVJM-pmpAlljPzQwNsUK84TQIkOQG-xWdQa-rrDm5G8Ug8r4mibn9RYgjnJq-kVWvSUDwo86cn72Zl', '1', '2020-06-13 23:17:54'),
(20, 'e3gWeXzUfUNshtgnffRELl:APA91bEXVlNzuq4yn-RS7VgVDBhjrVdGxYtxXQgRapbblUoKyUdLiz337Nw3EvKqAQUcQH9Sp8uqs1E3LP6MqKjohoTtnZnzVYLRBwAS68CqZ9i_bQ1Qo-5zDcBDaOkpBijKpeEGfj3M', '1', '2020-06-14 11:53:13'),
(21, 'fcUOzNWJ10SqjTZiO-vbhN:APA91bH8Ud3SwqL1ybkGu-wxnb4ClJoTt45xo_yJOy4y73HF9ffI5d0eDfXQSgKioIb1R0F8oRzCewbUGIzIUP4EODiftgkpe4D_zOYwXTgxDKm_pq7c8Eg-Lv5XkKnpzwoBNb8Y3c-V', '1', '2020-06-14 12:03:29'),
(22, 'fE02w1a_V0chlihSXCaaY_:APA91bEW-8c6Wqy8CnS6AuS5lCrZI0Sp9Utraw7wiTBgVvqbsarnDHzGVUutA_TFBucuhwQKUyhYUN2P_AL6wQOywD1qEJsgU7ihqmHhveylSN4RpWr8fUbSfwqvTowCiJ5wYvEjjzL_', '1', '2020-06-14 13:11:54'),
(23, 'fE02w1a_V0chlihSXCaaY_:APA91bEW-8c6Wqy8CnS6AuS5lCrZI0Sp9Utraw7wiTBgVvqbsarnDHzGVUutA_TFBucuhwQKUyhYUN2P_AL6wQOywD1qEJsgU7ihqmHhveylSN4RpWr8fUbSfwqvTowCiJ5wYvEjjzL_', '', '2020-06-14 19:46:41'),
(24, 'fE02w1a_V0chlihSXCaaY_:APA91bEW-8c6Wqy8CnS6AuS5lCrZI0Sp9Utraw7wiTBgVvqbsarnDHzGVUutA_TFBucuhwQKUyhYUN2P_AL6wQOywD1qEJsgU7ihqmHhveylSN4RpWr8fUbSfwqvTowCiJ5wYvEjjzL_', '', '2020-06-14 20:11:07'),
(25, 'dPRcmGAfDdY:APA91bFHAiOzYJedTk5nX_TJt2-SNsnXZ0Zry6Hp_wfb7wvB_tAOsN8B2uxzMBlolQpygina1e8wvTnN-Tc_5Pl4d5_ksOWHJF_2P98I8G2Ko-qjXi7v4GDf-j1FLy4oxx1rTE1MskDu', 'android', '2020-06-15 19:48:12'),
(26, 'cfcail_MqkHCgYVDprK3Ao:APA91bHQzFTz2U4DQCqFvrFZYU7FLSrGC1talGepr3MjO3U04X8xjBhHVAyP8ogTxFkaORnY91vWAQRnWXUa0r_CZmxOVzp7eUDfoqT9IgFyUfiAb5Fpek1Mmtj4YpQyll9-Y5o7jmCi', '1', '2020-06-16 13:22:12'),
(27, 'd-sVIwNP7Exoh0FdzDAZyI:APA91bE16awxxvt-7SC2jvmnQfJDlZsSHPC_THEVwJ0vgXjb0Upbrd9JbY2xpsJKsTKW8PKLUw03IpHAnTgXRH-S9FVPeGWI9MJNfVjGk53jam7MqO_58drhRc5WdN4rBPn2Rr55vwYL', '1', '2020-06-17 00:26:17'),
(28, 'dl0xbQW7zhY:APA91bHb8i8ZFxnLkeiIHJjDXsEwK_7SfHY_O4CP89ZaWrepgp08MH_79fKaZ3eFgYseaCXnlLqTdVDs8Kb7u3kk-rPgceLT7eqCvo09oiaVjM05YYQSvDmrsDI5FuPkPqwscAG528ox', 'android', '2020-06-17 12:43:28'),
(29, 'fE02w1a_V0chlihSXCaaY_:APA91bEW-8c6Wqy8CnS6AuS5lCrZI0Sp9Utraw7wiTBgVvqbsarnDHzGVUutA_TFBucuhwQKUyhYUN2P_AL6wQOywD1qEJsgU7ihqmHhveylSN4RpWr8fUbSfwqvTowCiJ5wYvEjjzL_', '', '2020-06-17 13:23:45'),
(30, 'fE02w1a_V0chlihSXCaaY_:APA91bEW-8c6Wqy8CnS6AuS5lCrZI0Sp9Utraw7wiTBgVvqbsarnDHzGVUutA_TFBucuhwQKUyhYUN2P_AL6wQOywD1qEJsgU7ihqmHhveylSN4RpWr8fUbSfwqvTowCiJ5wYvEjjzL_', '', '2020-06-17 13:24:17'),
(31, 'dJf4tKx7z0_CoR-QXCU20K:APA91bFDYiOcnf84Tk5Z5qnCLO3hxtBUnDtdC9eZg1_FddSVmOnqfWwCFU1UKQo85PdkdgOU4vn4NbAqD4vBspOLwee1v0XipWHPFR56Cez8VF-tj2lywhl8GlFJd6fONk-fTP_nEWpS', '', '2020-06-18 17:28:52'),
(32, 'c6OuBroqgk1Lj63_Muke2u:APA91bHj2d9HKY9am9EtMwV8YDS_9xWHV5jcKEM1JVyxXwDit60pgXgOl2ddjmh0lKVOD1Up4nWW5o4cQm-6VsYm6bf0iIrAQbGZg_3G47xyAeJtqcgzDHEqq1Ro4Rhh0edrghnjy6HS', '1', '2020-06-18 19:48:35'),
(33, 'cswKUHBet08Wu9yBTWflbM:APA91bEQQAjPYDr0Y7k0214rewXNaqTqrZxiA8BVKpQmfWU2uXlpv1BnzjWWEXylLZEA50bLIUPiBvlaNMAnzD1s4nZPn4InoFbnHNTmr5wGrC0CvZLnec9DzeCxJhHSYPzECax3n0dM', '1', '2020-06-19 16:34:43'),
(34, 'dhKw7uGmnElEtvpX2QQ7Ib:APA91bGerA6U1P1TzaU9m0eydbjKJlcQzNKFhuGoZCirxyLEf5Kiror04C1Zmpo-GJ0ljzQAF5jInXpCzimLi1qccKwg5HmRMOG_FujmfETqkHgd2_J8e5HTdiNYrKPvYGwLnG16AeCg', '1', '2020-06-19 20:26:16'),
(35, 'eqz2Ao42v088kfxMEZR-Jm:APA91bGbwNBdBkqqTqRTmFHn1nD9JgM39ghuCeV8rDolKygaAMP6h6AbTrv224739lE1GLqEPALCCxTGj4KY9yV7mQ0luC4sFSY9Gxrf5lX_fpnszZBWAmKoZgf2Kwex0Zx_Qb6K6od6', 'ios', '2020-07-14 10:14:51'),
(36, 'efhq47RurUWUsA5hN7H4v3:APA91bHloNAt585sHxlNB_PPXoE6cSF3x7X8DZXCGVRdog-bWcjnf5klVr7Kqs2J6-spUQITpGvOuhmgIMbjhgb60N6XAeQxHhqNmozkraO4xqlW4-5hrk1rKGaUC84XGXR1ugHdBr2s', 'ios', '2020-07-19 15:25:29'),
(37, 'f9GmVLbx_ULpjeDkwTtUKc:APA91bHagHbsgRHSKYiTxLlbn4nuFEYKb21STZsE9oAWHnwnzv5AN41tUR6Vo7pPOpRQXAGQkJdkkwe4WmUUOdYUfMw5I7C3DG0mkJGptXpUTBkLgY9PX28OVCdOe-1xtn2N9t9FG47P', 'ios', '2020-07-19 15:56:24'),
(38, 'f9GmVLbx_ULpjeDkwTtUKc:APA91bHagHbsgRHSKYiTxLlbn4nuFEYKb21STZsE9oAWHnwnzv5AN41tUR6Vo7pPOpRQXAGQkJdkkwe4WmUUOdYUfMw5I7C3DG0mkJGptXpUTBkLgY9PX28OVCdOe-1xtn2N9t9FG47P', 'ios', '2020-07-19 16:05:45'),
(39, 'figrXCRD40cbjuCAVqo76A:APA91bHqxuXBwdD3QCn7LWvwiTQ4pEMhY7T-N_CZhJEgIS0vX75uPo0gjswHRBoeuZ39cbWYYzMYOn6EcdvBAIJltOIAISrfP9mIazwbZXymUKRyFuNwT4_Btxj6PRsP-W8PXUr5IDWr', 'ios', '2020-07-19 16:16:16'),
(40, 'd3KgggDs_0YtlrWLkTFQJC:APA91bGQLggydY71-Fe8gVdfOePFhiIAnGfuPxDcuedZnY3NvQtnkIOZLGLAUtUOjAZsYsRR-_FqqgV7C06Yvk6JBJPrl5pGlaoZlzhlp1rSiLY3vge3XS1reScs3neXcLC5Dd3F6oDO', 'ios', '2020-07-19 23:39:05'),
(41, 'eyKeSEntN0jEjFgNQj3ezk:APA91bFLUUrvwzpcFcm5Lzv1mpZk66JTn_COZzWkKD8tLKFmuoTXuuLU5ybKmCcXP8fhAKT3NYfB1ICtNqj-QM2UwkfQZBuOah9hwzNZTQBk6KoHAdq7dAZ3EGYhn2mVhhGhVsOYqsWZ', 'ios', '2020-07-20 01:44:23'),
(42, 'cwWXeeMzB4w:APA91bF4RMJ55lP12CSATZj2dyAMgl0UQ3Gu-wlnOWjN85CtfwON6ASg4xUwURQYyyTgbFNYBNjDRfpVOTlm_tHYj2fcaqje4U2Swt4q8-SxllG19clAQ9w7JAwUSLtNhYEGthoYMOuK', 'android', '2020-07-20 20:02:22'),
(43, 'cwWXeeMzB4w:APA91bF4RMJ55lP12CSATZj2dyAMgl0UQ3Gu-wlnOWjN85CtfwON6ASg4xUwURQYyyTgbFNYBNjDRfpVOTlm_tHYj2fcaqje4U2Swt4q8-SxllG19clAQ9w7JAwUSLtNhYEGthoYMOuK', 'android', '2020-07-20 20:04:48'),
(44, 'cwWXeeMzB4w:APA91bF4RMJ55lP12CSATZj2dyAMgl0UQ3Gu-wlnOWjN85CtfwON6ASg4xUwURQYyyTgbFNYBNjDRfpVOTlm_tHYj2fcaqje4U2Swt4q8-SxllG19clAQ9w7JAwUSLtNhYEGthoYMOuK', 'android', '2020-07-20 20:44:52'),
(45, 'cwWXeeMzB4w:APA91bF4RMJ55lP12CSATZj2dyAMgl0UQ3Gu-wlnOWjN85CtfwON6ASg4xUwURQYyyTgbFNYBNjDRfpVOTlm_tHYj2fcaqje4U2Swt4q8-SxllG19clAQ9w7JAwUSLtNhYEGthoYMOuK', 'android', '2020-07-20 21:06:45'),
(46, 'cwWXeeMzB4w:APA91bF4RMJ55lP12CSATZj2dyAMgl0UQ3Gu-wlnOWjN85CtfwON6ASg4xUwURQYyyTgbFNYBNjDRfpVOTlm_tHYj2fcaqje4U2Swt4q8-SxllG19clAQ9w7JAwUSLtNhYEGthoYMOuK', 'android', '2020-07-20 21:09:26'),
(47, 'cwWXeeMzB4w:APA91bF4RMJ55lP12CSATZj2dyAMgl0UQ3Gu-wlnOWjN85CtfwON6ASg4xUwURQYyyTgbFNYBNjDRfpVOTlm_tHYj2fcaqje4U2Swt4q8-SxllG19clAQ9w7JAwUSLtNhYEGthoYMOuK', 'android', '2020-07-20 21:12:38'),
(48, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 21:16:59'),
(49, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 21:32:09'),
(50, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 21:33:49'),
(51, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 21:34:31'),
(52, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 21:35:24'),
(53, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 21:35:55'),
(54, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 21:36:32'),
(55, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 21:37:36'),
(56, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 21:37:58'),
(57, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 21:39:53'),
(58, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 21:41:33'),
(59, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 21:42:18'),
(60, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 21:42:38'),
(61, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 21:43:47'),
(62, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 21:46:12'),
(63, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 21:46:40'),
(64, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 21:47:29'),
(65, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 21:48:07'),
(66, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 21:52:29'),
(67, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 21:53:34'),
(68, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 21:54:30'),
(69, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 21:55:00'),
(70, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 22:00:00'),
(71, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 22:02:43'),
(72, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 22:06:45'),
(73, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 22:07:34'),
(74, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 22:09:51'),
(75, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 22:13:46'),
(76, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 22:14:35'),
(77, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 22:15:34'),
(78, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 22:22:14'),
(79, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 22:36:40'),
(80, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 22:38:53'),
(81, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 22:40:18'),
(82, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 22:42:14'),
(83, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 22:42:40'),
(84, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 22:45:36'),
(85, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 22:46:46'),
(86, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 22:47:58'),
(87, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 23:08:57'),
(88, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 23:10:27'),
(89, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 23:17:28'),
(90, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 23:17:39'),
(91, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 23:18:56'),
(92, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 23:20:03'),
(93, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 23:20:24'),
(94, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 23:24:11'),
(95, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 23:27:11'),
(96, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-20 23:34:48'),
(97, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 00:07:35'),
(98, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 00:09:12'),
(99, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 00:16:35'),
(100, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 00:23:20'),
(101, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 00:33:24'),
(102, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 00:38:12'),
(103, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 00:39:28'),
(104, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 00:39:38'),
(105, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 00:40:27'),
(106, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 00:42:49'),
(107, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 00:43:42'),
(108, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 00:44:31'),
(109, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 00:44:53'),
(110, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 00:46:38'),
(111, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 00:58:27'),
(112, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 01:00:37'),
(113, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 01:04:24'),
(114, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 01:15:07'),
(115, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 01:17:27'),
(116, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 01:19:13'),
(117, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 01:20:32'),
(118, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 01:21:21'),
(119, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 01:23:15'),
(120, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 01:25:01'),
(121, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 13:26:32'),
(122, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 13:27:59'),
(123, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 13:35:08'),
(124, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 13:50:49'),
(125, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 13:52:46'),
(126, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 13:54:15'),
(127, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 13:57:13'),
(128, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 14:01:54'),
(129, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 14:03:19'),
(130, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 14:05:17'),
(131, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 14:06:45'),
(132, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 14:15:05'),
(133, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 14:17:12'),
(134, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 14:20:44'),
(135, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 14:21:34'),
(136, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 14:23:58'),
(137, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 14:25:32'),
(138, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 14:29:42'),
(139, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 14:32:30'),
(140, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 14:34:27'),
(141, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 14:48:35'),
(142, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 14:49:22'),
(143, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 14:49:57'),
(144, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 14:50:27'),
(145, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 14:53:35'),
(146, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 14:54:57'),
(147, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 14:56:13'),
(148, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 14:58:19'),
(149, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 15:04:26'),
(150, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 15:08:42'),
(151, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 15:10:33'),
(152, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 15:12:29'),
(153, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 15:14:29'),
(154, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 15:14:59'),
(155, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 15:20:13'),
(156, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 15:24:48'),
(157, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 15:28:35'),
(158, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 15:34:12'),
(159, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 15:35:45'),
(160, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 15:37:25'),
(161, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 15:38:02'),
(162, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 15:38:11'),
(163, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 18:46:17'),
(164, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-21 18:52:14'),
(165, '', 'android', '2020-07-21 19:08:42'),
(166, '', 'android', '2020-07-21 19:19:13'),
(167, '', 'android', '2020-07-21 19:20:56'),
(168, 'elc_coWbxWU:APA91bG2v9JMHtmEE3rpxRN0Et0YKKpijbZMLhzf11IwFY15VlIeQY5Ve7e1HpI2KsKwA38X38TS0Y1Qe1eeZc0IA_i02BoiHAb2Wn6W5NGiBzbvX3qLCimErF417fE-L1jpNoDpIgAp', 'android', '2020-07-21 20:45:24'),
(169, '', 'android', '2020-07-21 21:10:27'),
(170, '', 'android', '2020-07-21 21:11:19'),
(171, '', 'android', '2020-07-21 21:14:15'),
(172, 'cwt_7nt25C0:APA91bHMs9aP2zcinxIlG5P7DyF8kzRNVQ9VxYT5hZ3PJC9-sSlqVSCGQIiDfaST3sscwA1jjlq6zm-8nCFQyYPWIneY3BEIsiChDxWd-T2yp30Cx5frBT2iMHbLN8Bx50aaqW4W-v56', 'android', '2020-07-22 02:46:25'),
(173, 'd1knWfaLstk:APA91bFeqOoxMIp-zDWgzvflvMGghshy1nbGKhGMxvKUtLVM4IRCdSX0yCtUG86L5kuflVOde3cSwq0ukfJjMZI_iLlCV0kTJVjy7IkgA3KSoxEEK8PrcCPnaHD14HaFydyznaXduDtx', 'android', '2020-07-22 02:46:36'),
(174, 'c1Za-icThyk:APA91bEHK3f_cQuJvuqC7C6al9R-_nISisgB4xdrkDlC_xvub2BHch4ElwwdA1qYgCGUKihMBs3qQ1KFvsa6j_FL62gy3NiFHuEt5EhTlDhDLbBJ2-Pa-ab13C2JH6IdtH1b4qx7cNKS', 'android', '2020-07-22 02:53:24'),
(175, 'c1Za-icThyk:APA91bEHK3f_cQuJvuqC7C6al9R-_nISisgB4xdrkDlC_xvub2BHch4ElwwdA1qYgCGUKihMBs3qQ1KFvsa6j_FL62gy3NiFHuEt5EhTlDhDLbBJ2-Pa-ab13C2JH6IdtH1b4qx7cNKS', 'android', '2020-07-22 02:57:33'),
(176, '', 'android', '2020-07-22 11:54:00'),
(177, 'dkh4Dz3Tfko:APA91bHewMknvTkzAqyCY7x_KAkAlT3ibbxVFgr6-Q6-sPDiwqfDGva6MjkeghbwV4VYx_Fy9L6u_8_zQMCwC-pMIrZ5oxXToDCRFZMTo3eB-rHJN1zQB3HZOZEpR0UN74BeWY8KhBWC', 'android', '2020-07-22 16:47:36'),
(178, 'fuRiQRT_c7c:APA91bHofv0UWCoqcB7Fa8aLKB9jZXddru51ycrX4rkX_gEl1jxbHq8GafA8cIXuE2cBqmjd2oexnMDpCndSfLRJBjQaNhCBo8pgm61t1nVHNhN4tG8mfAAUkzPtshuhIgmrllRNl4X8', 'android', '2020-07-22 17:59:09'),
(179, 'fuRiQRT_c7c:APA91bHofv0UWCoqcB7Fa8aLKB9jZXddru51ycrX4rkX_gEl1jxbHq8GafA8cIXuE2cBqmjd2oexnMDpCndSfLRJBjQaNhCBo8pgm61t1nVHNhN4tG8mfAAUkzPtshuhIgmrllRNl4X8', 'android', '2020-07-22 18:00:26'),
(180, 'dkh4Dz3Tfko:APA91bHewMknvTkzAqyCY7x_KAkAlT3ibbxVFgr6-Q6-sPDiwqfDGva6MjkeghbwV4VYx_Fy9L6u_8_zQMCwC-pMIrZ5oxXToDCRFZMTo3eB-rHJN1zQB3HZOZEpR0UN74BeWY8KhBWC', 'android', '2020-07-22 18:52:41'),
(181, 'dkh4Dz3Tfko:APA91bHewMknvTkzAqyCY7x_KAkAlT3ibbxVFgr6-Q6-sPDiwqfDGva6MjkeghbwV4VYx_Fy9L6u_8_zQMCwC-pMIrZ5oxXToDCRFZMTo3eB-rHJN1zQB3HZOZEpR0UN74BeWY8KhBWC', 'android', '2020-07-23 00:07:33'),
(182, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-23 01:44:03'),
(183, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-23 01:44:17'),
(184, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-23 01:44:24'),
(185, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-23 01:48:43'),
(186, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-23 01:50:06'),
(187, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-23 01:50:44'),
(188, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-23 01:51:56'),
(189, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-23 01:53:56'),
(190, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-23 01:55:03'),
(191, '', 'android', '2020-07-23 03:23:08'),
(192, '', 'android', '2020-07-23 03:33:46'),
(193, 'fByHtbgfQDw:APA91bGaXIWQmNqxcBdc9FSBre8xmN71nogE7zMu0fcd_v_pz0jGq_3PXmogyqGVhKHGCap9d-se_LMrRsiw5hm-I2JFCmrSjuciUouL4M5sVneSRFHfdXBr_y0y4XBiuW-FaEDrOUsc', 'android', '2020-07-23 11:37:14'),
(194, 'fByHtbgfQDw:APA91bGaXIWQmNqxcBdc9FSBre8xmN71nogE7zMu0fcd_v_pz0jGq_3PXmogyqGVhKHGCap9d-se_LMrRsiw5hm-I2JFCmrSjuciUouL4M5sVneSRFHfdXBr_y0y4XBiuW-FaEDrOUsc', 'android', '2020-07-23 15:47:48'),
(195, 'fByHtbgfQDw:APA91bGaXIWQmNqxcBdc9FSBre8xmN71nogE7zMu0fcd_v_pz0jGq_3PXmogyqGVhKHGCap9d-se_LMrRsiw5hm-I2JFCmrSjuciUouL4M5sVneSRFHfdXBr_y0y4XBiuW-FaEDrOUsc', 'android', '2020-07-23 16:08:53'),
(196, 'd4HcJqTe0kmjpAKT86C_yE:APA91bF47kL9aGMS3SP9nzTyjHLKjrYyt0og3FoMBcXhBhyYnF3aK0h8knl9sG7bkC8lNMfKq78C4votQ59eo-RNDAaUKJ38gWcp4hbU8BH1MCPw3kDRJ5YgjZEnd66waN5K0tCD5_w_', 'ios', '2020-07-26 11:53:27'),
(197, 'fPx4coVBckQyoB75y8Wth2:APA91bGv-XHtYQoCY2jDu1SITO6la6wa6BB9eeOEEENQWRHHhghOLudLliyf7QzlGWcJNZ_lbwFBE22P8JcWHurtyyxiK5aZ5-5KgH8GL2QIW2v1AjqnSvBRvd7Nwwmg1IKAucA743R-', 'ios', '2020-07-26 12:08:24'),
(198, 'd44vmR8GSkJpit30c-9mrY:APA91bE3iahwsCGzWkAHjTBaMMgMDyVEgwiVxOB8Cb6S8paL-lFqCDIjRK-fSvCJvni6kjRLxH6dKwKeZ3u-zZH0QP90bng0r8lDsVTIpNg69JRpnRZpsx2UJrPakpIOWO00ArEMsj4q', 'ios', '2020-07-26 12:13:21'),
(199, 'fuRiQRT_c7c:APA91bHofv0UWCoqcB7Fa8aLKB9jZXddru51ycrX4rkX_gEl1jxbHq8GafA8cIXuE2cBqmjd2oexnMDpCndSfLRJBjQaNhCBo8pgm61t1nVHNhN4tG8mfAAUkzPtshuhIgmrllRNl4X8', 'android', '2020-07-26 12:43:05'),
(200, 'csrqol9gTkT3ieLkB49sCF:APA91bHi_GwXAdv6wxG-1NvuD1Io48XG1NEuLsRyhSX61AHxVKp6keFcsoKhbEPmOj4bAb0Hp3IW9osLPbJLVzHqsCMJ8L0GtK7ETdat_B_S1URngk-mcyrYsaUv7E_AdqWXlWSqKetD', 'ios', '2020-07-27 18:16:15'),
(201, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-07-29 00:29:19'),
(202, '', 'android', '2020-07-29 10:00:09'),
(203, '', 'android', '2020-07-29 10:03:35'),
(204, '', 'android', '2020-08-06 10:28:39'),
(205, '', 'android', '2020-08-06 10:31:24'),
(206, 'fByHtbgfQDw:APA91bGaXIWQmNqxcBdc9FSBre8xmN71nogE7zMu0fcd_v_pz0jGq_3PXmogyqGVhKHGCap9d-se_LMrRsiw5hm-I2JFCmrSjuciUouL4M5sVneSRFHfdXBr_y0y4XBiuW-FaEDrOUsc', 'android', '2020-08-08 19:47:52'),
(207, 'ehHiFnf070ouurQUr6Lpdi:APA91bEcWtY6SaL5O4iGbjBUxvzSRCiOV0RUjEKCYn1qqRH0TOXtgW83T0Wca9rkruvPdupUebMkQdrJj8R-cLJ6hNId7GN7gT2WOsKvJZdMCH430Wo7onboRBAmUeth0LsCBXnWOid8', 'ios', '2020-08-09 11:11:12'),
(208, 'cDsu_tz9kK4:APA91bEOfCOBMgqcWBeBlLrIjtO1f9I-W4OUszBpHqO7lYYTtPrIMBsonJ-_qTDm1DFo7syqAXS52J9bzz1zuDZKPWDhYsOPxdiY9XboeLrpOatfNJgv77pYy9i4KuDJVSHHSX5Yyrfl', 'android', '2020-08-09 17:08:10'),
(209, 'cDsu_tz9kK4:APA91bEOfCOBMgqcWBeBlLrIjtO1f9I-W4OUszBpHqO7lYYTtPrIMBsonJ-_qTDm1DFo7syqAXS52J9bzz1zuDZKPWDhYsOPxdiY9XboeLrpOatfNJgv77pYy9i4KuDJVSHHSX5Yyrfl', 'android', '2020-08-09 17:10:09'),
(210, 'fByHtbgfQDw:APA91bGaXIWQmNqxcBdc9FSBre8xmN71nogE7zMu0fcd_v_pz0jGq_3PXmogyqGVhKHGCap9d-se_LMrRsiw5hm-I2JFCmrSjuciUouL4M5sVneSRFHfdXBr_y0y4XBiuW-FaEDrOUsc', 'android', '2020-08-16 12:33:37'),
(211, 'eOo1rG0L6xc:APA91bEBTCoEwJ2fRTaXXIUsw9hPxQTNabMSPDBFhZqVBdjynRmHSl2k9JVe2tBipbLMSBRSL7jHEev_DgCaebwdHSMOZbBn-5QOVf7JKIHz-qXtZ9ABzNtCJh5pj9dfMTRVajn5GqTf', 'android', '2020-08-17 17:53:26'),
(212, 'eOo1rG0L6xc:APA91bEBTCoEwJ2fRTaXXIUsw9hPxQTNabMSPDBFhZqVBdjynRmHSl2k9JVe2tBipbLMSBRSL7jHEev_DgCaebwdHSMOZbBn-5QOVf7JKIHz-qXtZ9ABzNtCJh5pj9dfMTRVajn5GqTf', 'android', '2020-08-17 17:53:45'),
(213, 'eOo1rG0L6xc:APA91bEBTCoEwJ2fRTaXXIUsw9hPxQTNabMSPDBFhZqVBdjynRmHSl2k9JVe2tBipbLMSBRSL7jHEev_DgCaebwdHSMOZbBn-5QOVf7JKIHz-qXtZ9ABzNtCJh5pj9dfMTRVajn5GqTf', 'android', '2020-08-17 18:59:19'),
(214, 'eOo1rG0L6xc:APA91bEBTCoEwJ2fRTaXXIUsw9hPxQTNabMSPDBFhZqVBdjynRmHSl2k9JVe2tBipbLMSBRSL7jHEev_DgCaebwdHSMOZbBn-5QOVf7JKIHz-qXtZ9ABzNtCJh5pj9dfMTRVajn5GqTf', 'android', '2020-08-17 18:59:47'),
(215, 'eCzoDdyYB_M:APA91bEiQtUoXvrwhssFHWO-AOZjbhpUHInPihKCP9MVugErjfNkP7KtxYavgxx9oHifFRJA310hJaYuqkV4_aYFp3KyjjobZkqHWLBIEgun6EPJS15tqBH80nxgMA0pSyT5HRLm5yUV', 'android', '2020-08-17 19:48:07'),
(216, '', 'android', '2020-08-17 20:46:59'),
(217, 'fByHtbgfQDw:APA91bGaXIWQmNqxcBdc9FSBre8xmN71nogE7zMu0fcd_v_pz0jGq_3PXmogyqGVhKHGCap9d-se_LMrRsiw5hm-I2JFCmrSjuciUouL4M5sVneSRFHfdXBr_y0y4XBiuW-FaEDrOUsc', 'android', '2020-08-19 16:36:34'),
(218, '', 'android', '2020-08-19 20:42:34'),
(219, 'fByHtbgfQDw:APA91bGaXIWQmNqxcBdc9FSBre8xmN71nogE7zMu0fcd_v_pz0jGq_3PXmogyqGVhKHGCap9d-se_LMrRsiw5hm-I2JFCmrSjuciUouL4M5sVneSRFHfdXBr_y0y4XBiuW-FaEDrOUsc', 'android', '2020-08-20 15:26:04'),
(220, 'easybBdNrgs:APA91bEanzsdtMuypFDfX0FbDpss_jVgBAF5dn7MJUbiVzHtRodW6bCtkqNTY5t7W3DYzc_U4-OnYpGpu5eGxCDrZFEGSNSvng-bj5mxQO-XTm8TlLrjj8OdeKI2aE1UNUODohcJ5YFv', 'android', '2020-08-20 18:15:30'),
(221, 'fByHtbgfQDw:APA91bGaXIWQmNqxcBdc9FSBre8xmN71nogE7zMu0fcd_v_pz0jGq_3PXmogyqGVhKHGCap9d-se_LMrRsiw5hm-I2JFCmrSjuciUouL4M5sVneSRFHfdXBr_y0y4XBiuW-FaEDrOUsc', 'android', '2020-08-24 17:15:19'),
(222, 'epPGUXzREk-UpQcBdkkkj7:APA91bHo5pHMhaz3_hgz43FBnmjF9wmrQpIBCS4snOa0c5JT6v9YUO8OGqiwb3cqnLSgHVOGZJXpv0DscpGQV92c3KRI-4Qh1lQYlYo7dnHgzkE6llNqgzCZF5vgEYe8v4n_K_AEHBkK', 'ios', '2020-08-25 03:36:20'),
(223, 'fwBWlKkKvCU:APA91bG6aQ4heLSAYRUNURxthPOv7JLIbRiDb2qI-4zqKnX4eaoi1R0umbjt_2j71iunX_wnblroKH9pu-KiDJcFmdqr5b4QJkObasTWCZd3CAxRrmmPEW0B9DrTq8NNv12IDxvJZwwF', 'android', '2020-09-01 13:31:50'),
(224, 'fwBWlKkKvCU:APA91bG6aQ4heLSAYRUNURxthPOv7JLIbRiDb2qI-4zqKnX4eaoi1R0umbjt_2j71iunX_wnblroKH9pu-KiDJcFmdqr5b4QJkObasTWCZd3CAxRrmmPEW0B9DrTq8NNv12IDxvJZwwF', 'android', '2020-09-01 13:56:06'),
(225, 'fwBWlKkKvCU:APA91bG6aQ4heLSAYRUNURxthPOv7JLIbRiDb2qI-4zqKnX4eaoi1R0umbjt_2j71iunX_wnblroKH9pu-KiDJcFmdqr5b4QJkObasTWCZd3CAxRrmmPEW0B9DrTq8NNv12IDxvJZwwF', 'android', '2020-09-01 14:34:29'),
(226, 'fwBWlKkKvCU:APA91bG6aQ4heLSAYRUNURxthPOv7JLIbRiDb2qI-4zqKnX4eaoi1R0umbjt_2j71iunX_wnblroKH9pu-KiDJcFmdqr5b4QJkObasTWCZd3CAxRrmmPEW0B9DrTq8NNv12IDxvJZwwF', 'android', '2020-09-01 15:14:05'),
(227, 'ciGR8ZCERl0:APA91bENmZw5pDnYd7jyxsb9auQAzsy0hTOWlsL-cvh92tk4bmzfjp73wX8d7--AKiWWzMDIQom08Sl-dsOFGxujQTl9wsQLHcvCG-IszIaLU4zA0N1Lm3ElRVotpL0nGJTW2jxWjwWq', 'android', '2020-09-03 00:55:35'),
(228, 'ciGR8ZCERl0:APA91bENmZw5pDnYd7jyxsb9auQAzsy0hTOWlsL-cvh92tk4bmzfjp73wX8d7--AKiWWzMDIQom08Sl-dsOFGxujQTl9wsQLHcvCG-IszIaLU4zA0N1Lm3ElRVotpL0nGJTW2jxWjwWq', 'android', '2020-09-03 00:55:43'),
(229, '', 'android', '2020-09-04 08:29:01'),
(230, '', 'android', '2020-09-04 08:30:24'),
(231, '', 'android', '2020-09-04 08:30:43'),
(232, '', 'android', '2020-09-04 08:32:25'),
(233, '', 'android', '2020-09-06 09:38:26'),
(234, '', 'android', '2020-09-06 09:42:28'),
(235, 'fByHtbgfQDw:APA91bGaXIWQmNqxcBdc9FSBre8xmN71nogE7zMu0fcd_v_pz0jGq_3PXmogyqGVhKHGCap9d-se_LMrRsiw5hm-I2JFCmrSjuciUouL4M5sVneSRFHfdXBr_y0y4XBiuW-FaEDrOUsc', 'android', '2020-09-06 16:36:42'),
(236, 'cA1VrjWkzEswk5Y9kQs3EI:APA91bF10k0o4cCKQAy70q5G-44jYM3lpILjynRrOTrfMV6ZihX1JLq2C0BYxkrSNPwdd1myGiR_fe5o_CNMZdODxLua5VKRwF9McjGXmu2jfJFpBFGH-_qoWHH0k5i_Vmvuz43WyHes', 'ios', '2020-09-12 18:42:04'),
(237, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-09-16 00:23:21'),
(238, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-09-16 00:23:25'),
(239, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-09-16 00:23:49'),
(240, '', 'android', '2020-09-16 01:34:43'),
(241, '', 'android', '2020-09-16 01:46:03'),
(242, '', 'android', '2020-09-16 01:47:38'),
(243, 'fdSxCr6LME_wiWF9a24JRf:APA91bEV-h_KQKYbfURCBHMHK9gver-w0xKx3_-7fMEXWPf9Ir83Pz1fG_gRAoVleKatbw9bY8VPlGCavKHvfloYzyAHSlfYkq4CJ_hPbeohtNJ_CCn1SFleK8p9-v2_5MNU3kqtt_o_', 'ios', '2020-09-16 14:34:53'),
(244, '', '', '2020-09-17 11:57:20'),
(245, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-09-17 12:05:22'),
(246, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-09-17 12:06:28'),
(247, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-09-17 12:06:34'),
(248, 'cqpiOdi4xZc:APA91bHv16k3d6_WZAzflM2T-HxJYqD2B9hjDE3TjUP_bvo-vMqSLObyazLpCdPujPW7x_hqEIJOCKF526tMc9iHZVguD-vbt0AJLoBIR_0xNlLaKhOCXI00bMzJpAlcEFupLnJJOaqS', 'android', '2020-09-17 12:15:44'),
(249, '', 'android', '2020-09-17 12:20:33'),
(250, '', 'android', '2020-09-17 12:22:50'),
(251, 'frTT6R_QUqE:APA91bH8NQjS_q0tTpnGG3ol_Q3iOlkj7TQyKo-8RGg9WZwaoWg__V-TrJ2dio6i42FF9ZM76AVaWAqCeXdNh2rAtfp-jwB_T4DmSJrRORbPWAEL8sAHIhaIxiZGwnkjnRAgAkwDXKkS', 'android', '2020-09-17 12:22:55'),
(252, 'frTT6R_QUqE:APA91bH8NQjS_q0tTpnGG3ol_Q3iOlkj7TQyKo-8RGg9WZwaoWg__V-TrJ2dio6i42FF9ZM76AVaWAqCeXdNh2rAtfp-jwB_T4DmSJrRORbPWAEL8sAHIhaIxiZGwnkjnRAgAkwDXKkS', 'android', '2020-09-17 12:24:02'),
(253, 'dBlbxoFAxms:APA91bHX5_4uufu9kIgAe--hAW_y999daJNXcccu-lswavW3Fi3lvCdp91uYcewbnq-89EoSJnffF1GowIF4gjsg0rCHjdCV9M6tNLsRWA1mwKonP-sTGm-1iWdb_2wL68A_F2wPrFXD', 'android', '2020-09-17 12:31:16'),
(254, 'dBlbxoFAxms:APA91bHX5_4uufu9kIgAe--hAW_y999daJNXcccu-lswavW3Fi3lvCdp91uYcewbnq-89EoSJnffF1GowIF4gjsg0rCHjdCV9M6tNLsRWA1mwKonP-sTGm-1iWdb_2wL68A_F2wPrFXD', 'android', '2020-09-17 12:31:37'),
(255, 'eODigwI96dY:APA91bFxyLL7jeCdM5wOvhaXNdc7M6wOYcWZo5r9Rli1uO8wXeLkAxfED70Yc3JI5KQ2rqU7zYG0EiUvCQmG_qnZbupwGKSbXg259aIlwrnETr4r9XS-zyLflmK2ehv6bXe0fwwIUr8J', 'android', '2020-09-17 22:03:19'),
(256, 'eODigwI96dY:APA91bFxyLL7jeCdM5wOvhaXNdc7M6wOYcWZo5r9Rli1uO8wXeLkAxfED70Yc3JI5KQ2rqU7zYG0EiUvCQmG_qnZbupwGKSbXg259aIlwrnETr4r9XS-zyLflmK2ehv6bXe0fwwIUr8J', 'android', '2020-09-19 10:09:22'),
(257, 'ccpRvxS7nes:APA91bGzwEJ04Kw7_Rgou8vm2BatcEMPsJlr3qLh9gJ5-zQCaNtveGYo6JH6S40hAgRAUUjfTmOq1PiCQPklQn9IiiVCidt1lBN4Zr2aoUJRzVKyGCArbFrapJye3UAX_Xw8bhdOEsb-', 'android', '2020-09-19 10:56:23'),
(258, 'ccpRvxS7nes:APA91bGzwEJ04Kw7_Rgou8vm2BatcEMPsJlr3qLh9gJ5-zQCaNtveGYo6JH6S40hAgRAUUjfTmOq1PiCQPklQn9IiiVCidt1lBN4Zr2aoUJRzVKyGCArbFrapJye3UAX_Xw8bhdOEsb-', 'android', '2020-09-19 11:21:21'),
(259, 'ccpRvxS7nes:APA91bGzwEJ04Kw7_Rgou8vm2BatcEMPsJlr3qLh9gJ5-zQCaNtveGYo6JH6S40hAgRAUUjfTmOq1PiCQPklQn9IiiVCidt1lBN4Zr2aoUJRzVKyGCArbFrapJye3UAX_Xw8bhdOEsb-', 'android', '2020-09-19 15:56:04'),
(260, 'ccpRvxS7nes:APA91bGzwEJ04Kw7_Rgou8vm2BatcEMPsJlr3qLh9gJ5-zQCaNtveGYo6JH6S40hAgRAUUjfTmOq1PiCQPklQn9IiiVCidt1lBN4Zr2aoUJRzVKyGCArbFrapJye3UAX_Xw8bhdOEsb-', 'android', '2020-09-20 09:48:01'),
(261, 'd7rBQmScPvE:APA91bFwg3IuiigOOQ3nnJKlRT12EgXYoqtk7Rn6C1rguqg921hjOvaSMP5rATVamAcnUwZAqWCVeglEjOkTimJRgHo3QX5KEJFy9t02ehghxEq3LYv7K7AHHDJ1BAvCpY85a7tp3znb', 'android', '2020-09-20 15:41:07'),
(262, 'd7rBQmScPvE:APA91bFwg3IuiigOOQ3nnJKlRT12EgXYoqtk7Rn6C1rguqg921hjOvaSMP5rATVamAcnUwZAqWCVeglEjOkTimJRgHo3QX5KEJFy9t02ehghxEq3LYv7K7AHHDJ1BAvCpY85a7tp3znb', 'android', '2020-09-20 15:42:02'),
(263, 'eODigwI96dY:APA91bFxyLL7jeCdM5wOvhaXNdc7M6wOYcWZo5r9Rli1uO8wXeLkAxfED70Yc3JI5KQ2rqU7zYG0EiUvCQmG_qnZbupwGKSbXg259aIlwrnETr4r9XS-zyLflmK2ehv6bXe0fwwIUr8J', 'android', '2020-09-21 22:02:07'),
(264, 'ccpRvxS7nes:APA91bGzwEJ04Kw7_Rgou8vm2BatcEMPsJlr3qLh9gJ5-zQCaNtveGYo6JH6S40hAgRAUUjfTmOq1PiCQPklQn9IiiVCidt1lBN4Zr2aoUJRzVKyGCArbFrapJye3UAX_Xw8bhdOEsb-', 'android', '2020-09-24 14:03:15'),
(265, 'dl464-tQ4UA:APA91bFRVQkTCkJVzd7SxPBjtkWGcBPnxyaU84C181yqLqp82D49_WMIrMYpfm8Xpoi8TY2Uuc3wegKbYFLMyNJzshs6I_GIwMiRhqeZkp96pXQ-zIOWqms5zEQrevY0TLs8PfWwc8UB', 'android', '2020-09-26 01:26:49'),
(266, 'f2GKmJkk3cg:APA91bE_7KoxLd81Fplvcr1kPFZBKeBmrViW5Cyvamju3Uqp974s9B70F10ZDLAt8JW57bhjk6zi5En8nILn0z3PbRjCOcBj-EaRZGDU7syCDS_lcv0y89qmiSUDO2FLgnqDue-_Gchs', 'android', '2020-10-28 15:23:28'),
(267, 'tokn', 'android', '2020-11-02 10:30:31'),
(268, 'tokn', 'android', '2020-11-02 10:30:41'),
(269, 'f2GKmJkk3cg:APA91bE_7KoxLd81Fplvcr1kPFZBKeBmrViW5Cyvamju3Uqp974s9B70F10ZDLAt8JW57bhjk6zi5En8nILn0z3PbRjCOcBj-EaRZGDU7syCDS_lcv0y89qmiSUDO2FLgnqDue-_Gchs', 'android', '2020-11-04 18:03:48');

-- --------------------------------------------------------

--
-- Table structure for table `dish_of_day`
--

CREATE TABLE `dish_of_day` (
  `id` int(11) NOT NULL,
  `parent_category_id` int(11) NOT NULL,
  `sub_category_id` int(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `show_date` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dish_of_day`
--

INSERT INTO `dish_of_day` (`id`, `parent_category_id`, `sub_category_id`, `image`, `show_date`, `date`) VALUES
(1, 1, 2, 'http://aljazeeraroastery.com/system/api/uploads/dish/1/1594843341.jpg', '2020-07-15', '2020-07-15 23:02:20');

-- --------------------------------------------------------

--
-- Table structure for table `drinks`
--

CREATE TABLE `drinks` (
  `id` int(11) NOT NULL,
  `title_ar` varchar(255) CHARACTER SET utf8 NOT NULL,
  `title_en` varchar(255) CHARACTER SET utf8 NOT NULL,
  `price` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `date` varchar(255) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `name_en` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `name_ar` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 NOT NULL,
  `date_added` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `name_en`, `name_ar`, `image`, `date_added`) VALUES
(39, 'PHOTP SESSION', 'جلسة تصوير', 'http://www.promosbh.com/newsite/system/api/uploads/gallery/39/download (1).jpg', '2020-10-09 22:09:44'),
(40, 'WORKING TIME', 'وقت العمل', 'http://www.promosbh.com/newsite/system/api/uploads/gallery/40/download (2).jpg', '2020-10-09 22:10:16'),
(41, 'MEETING', 'اجتماع', 'http://www.promosbh.com/newsite/system/api/uploads/gallery/41/images.jpg', '2020-10-09 22:10:53'),
(42, 'PHOTP SESSION', 'جلسة تصوير', 'http://www.promosbh.com/newsite/system/api/uploads/gallery/42/images (1).jpg', '2020-10-09 22:11:08'),
(43, 'WORKING TIME', 'وقت العمل', 'http://www.promosbh.com/newsite/system/api/uploads/gallery/43/download.jpg', '2020-10-09 22:11:46'),
(44, 'MEETING', 'اجتماع', 'http://www.promosbh.com/newsite/system/api/uploads/gallery/44/images2.jpg', '2020-10-09 22:11:59');

-- --------------------------------------------------------

--
-- Table structure for table `latest`
--

CREATE TABLE `latest` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `parent_category_id` int(11) NOT NULL,
  `date_added` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `latest`
--

INSERT INTO `latest` (`id`, `product_id`, `parent_category_id`, `date_added`) VALUES
(1, 16, 1, '2020-05-19 04:14:42'),
(2, 34, 1, '2020-06-11 01:20:49'),
(3, 35, 1, '2020-06-11 14:02:24'),
(4, 9, 2, '2020-07-26 11:52:42');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `date` varchar(255) NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `name`, `phone`, `email`, `content`, `date`) VALUES
(10, 'Final Test', 123456789, 'promosbh@gmail.com', 'Some Content Messages', '2020-10-09 17:41:42'),
(8, 'Mohamed  1', 1234456, 'promosbh@gmail.com', 'adsdfdhidopkfgiseroputroekjhgfdgsdfgs', '2020-10-08 14:44:42'),
(11, 'Mohamed', 1092845038, 'info@promosbh.com', 'message for test', '2020-10-12 12:29:11'),
(12, 'Ahmed Zaki', 34376004, 'finance@promosbh.com', 'Test \r\nHi promo', '2020-10-13 22:42:26');

-- --------------------------------------------------------

--
-- Table structure for table `messages_type`
--

CREATE TABLE `messages_type` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `title_ar` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `messages_type`
--

INSERT INTO `messages_type` (`id`, `title`, `title_ar`, `date`) VALUES
(1, 'Complaints', 'شكوى أو إقتراح', ''),
(2, 'Offers', 'عروض', ''),
(3, 'Events', 'مناسبات', '');

-- --------------------------------------------------------

--
-- Table structure for table `most_request_sub`
--

CREATE TABLE `most_request_sub` (
  `id` int(11) NOT NULL,
  `parent_category_id` int(11) NOT NULL,
  `sub_category_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `most_request_sub`
--

INSERT INTO `most_request_sub` (`id`, `parent_category_id`, `sub_category_id`, `date_added`) VALUES
(14, 1, 2, '2020-07-12 18:10:22');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `text` text CHARACTER SET utf32 NOT NULL,
  `client_id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `text_id` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `text`, `client_id`, `type`, `text_id`, `date`) VALUES
(1, 'Your order Approved', 15, 'order', '3', '2020-07-19 13:01:25'),
(2, 'Your order with the delivery man', 15, 'order', '3', '2020-07-19 13:01:29'),
(3, 'Your order Approved', 18, 'order', '6', '2020-07-21 14:26:31'),
(4, 'Your order has been Delivered', 18, 'order', '6', '2020-07-21 14:31:34'),
(5, 'Your order Approved', 19, 'order', '9', '2020-07-22 19:47:07'),
(6, 'Your order with the delivery man', 19, 'order', '9', '2020-07-22 19:47:14'),
(7, 'Your order has been Delivered', 19, 'order', '9', '2020-07-22 19:47:27'),
(8, 'Your order Approved', 19, 'order', '11', '2020-07-22 19:49:00'),
(9, 'Your order under processing', 19, 'order', '11', '2020-07-22 19:49:04'),
(10, 'Your order has been Delivered', 19, 'order', '11', '2020-07-22 19:49:15'),
(11, '', 0, '', '', '2020-07-22 22:53:17'),
(12, 'Your order Approved', 24, 'order', '16', '2020-07-26 09:10:41'),
(13, 'Your order under processing', 24, 'order', '16', '2020-07-26 09:10:57'),
(14, 'Your order has been Delivered', 24, 'order', '16', '2020-07-26 09:11:06'),
(15, 'Your order Approved', 24, 'order', '18', '2020-07-26 09:22:11'),
(16, 'تم الرد علي الشكوى أو الإقتراح', 24, 'reply', '2', '2020-07-26 12:44:07'),
(17, 'Your order Approved', 26, 'order', '19', '2020-08-09 08:19:18'),
(18, 'Your order with the delivery man', 26, 'order', '19', '2020-08-09 08:19:33'),
(19, 'Your order Cancelled', 26, 'order', '19', '2020-08-09 08:19:46'),
(20, 'Your order Approved', 25, 'order', '17', '2020-08-09 08:19:55'),
(21, 'Your order under processing', 25, 'order', '17', '2020-08-09 08:20:08'),
(22, 'Your order has been Delivered', 25, 'order', '17', '2020-08-09 08:20:17');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `cart_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `client_id` int(11) NOT NULL,
  `client_address_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `branch_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `total_price` float NOT NULL,
  `charge_cost` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `discount_percentage` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `discount_value` float DEFAULT 0,
  `vat` float NOT NULL,
  `vat_percentage` float NOT NULL DEFAULT 0,
  `net_price` float NOT NULL,
  `order_status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order_follow` int(11) NOT NULL,
  `payment` varchar(255) CHARACTER SET utf8 NOT NULL,
  `deliver_id` int(11) NOT NULL DEFAULT 1,
  `mobile_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `del` int(11) NOT NULL DEFAULT 0,
  `date_del` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `cart_id`, `client_id`, `client_address_id`, `branch_id`, `total_price`, `charge_cost`, `discount_percentage`, `discount_value`, `vat`, `vat_percentage`, `net_price`, `order_status`, `order_follow`, `payment`, `deliver_id`, `mobile_type`, `del`, `date_del`, `date`) VALUES
(1, '1', 15, '', '2', 1.5, '0', '0', 0, 0, 0, 1.5, '0', 0, 'cash', 3, 'ios', 0, NULL, '2020-07-19 13:07:43'),
(2, '2', 15, '5', '2', 0.8, '0', '10', 0.08, 0.036, 5, 0.756, '0', 0, 'cash', 1, 'ios', 0, NULL, '2020-07-19 13:28:31'),
(3, '3,4', 15, '5', '2', 6.4, '1.000', '10', 0.64, 0.288, 5, 7.048, '1', 2, 'cash', 1, 'ios', 0, NULL, '2020-07-19 13:31:51'),
(4, '6', 15, '', '2', 1.5, '0', '10', 0.15, 0.068, 5, 1.418, '0', 0, 'cash', 2, 'ios', 0, NULL, '2020-07-21 13:51:32'),
(5, '8', 18, '', '2', 4, '0', '10', 0.4, 0.18, 5, 3.78, '0', 0, 'cash', 2, 'android', 0, NULL, '2020-07-21 17:03:02'),
(6, '13,21', 18, '6', '2', 3.5, '0', '10', 0.35, 0.158, 5, 3.308, '1', 3, 'cash', 1, 'android', 0, NULL, '2020-07-21 17:23:38'),
(7, '22', 18, '', '2', 0.8, '0', '10', 0.08, 0.036, 5, 0.756, '0', 0, 'cash', 2, 'android', 0, NULL, '2020-07-21 18:47:47'),
(8, '24', 18, '', '2', 0.8, '0', '10', 0.08, 0.036, 5, 0.756, '0', 0, 'cash', 2, 'android', 0, NULL, '2020-07-21 18:54:29'),
(9, '25', 19, '7', '2', 4, '0', '10', 0.4, 0.18, 5, 3.78, '1', 3, 'cash', 1, 'android', 0, NULL, '2020-07-22 22:46:42'),
(10, '26', 19, '7', '2', 1.5, '0', '10', 0.15, 0.068, 5, 1.418, '0', 0, 'cash', 1, 'android', 0, NULL, '2020-07-22 22:48:15'),
(11, '27', 19, '', '2', 1.5, '0', '10', 0.15, 0.068, 5, 1.418, '1', 3, 'cash', 2, 'android', 0, NULL, '2020-07-22 22:48:43'),
(12, '33', 1, '', '2', 1.5, '0', '10', 0.15, 0.0675, 5, 1.418, '0', 0, 'cash', 2, 'Web', 0, NULL, '2020-07-25 18:53:30'),
(13, '34,36', 1, '', '2', 2.75, '0', '10', 0.275, 0.12375, 5, 2.599, '0', 0, 'cash', 2, 'Web', 0, NULL, '2020-07-25 20:25:36'),
(14, '34,35,36', 22, '9', '2', 8.75, '1.000', '10', 0.875, 0.39375, 5, 8.269, '0', 0, 'cash', 1, 'Web', 0, NULL, '2020-07-25 20:26:34'),
(15, '41', 24, '', '2', 2.5, '0', '10', 0.25, 0.113, 5, 2.363, '1', 1, 'cash', 2, 'ios', 0, NULL, '2020-07-26 12:08:42'),
(16, '42', 24, '', '2', 6, '0', '10', 0.6, 0.27, 5, 5.67, '1', 3, 'cash', 3, 'ios', 0, NULL, '2020-07-26 12:09:16'),
(17, '44', 25, '', '2', 1.8, '0', '10', 0.18, 0.081, 5, 1.701, '1', 3, 'cash', 2, 'ios', 0, NULL, '2020-07-26 12:14:03'),
(18, '45,46,47,48', 24, '11', '2', 11.5, '1', '10', 1.15, 0.518, 5, 11.868, '1', 1, 'cash', 1, 'ios', 1, '2020-07-26', '2020-07-26 12:20:48'),
(19, '61', 26, '13', '2', 10, '0.5', '0', 0, 0.5, 5, 11, '2', 0, 'cash', 1, 'ios', 0, NULL, '2020-08-09 11:18:49'),
(20, '89', 30, '', '2', 1.5, '0', '0', 0, 0.075, 5, 1.575, '1', 1, 'cash', 2, 'Web', 0, NULL, '2020-09-17 08:58:00'),
(21, '93', 30, '', '2', 5.4, '0', '0', 0, 0.27, 5, 5.67, '0', 0, 'cash', 2, 'android', 0, NULL, '2020-09-20 15:52:39');

-- --------------------------------------------------------

--
-- Table structure for table `order_delete_reason`
--

CREATE TABLE `order_delete_reason` (
  `id` int(11) NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `delete_reason` varchar(255) NOT NULL,
  `date_added` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_delete_reason`
--

INSERT INTO `order_delete_reason` (`id`, `order_id`, `delete_reason`, `date_added`) VALUES
(1, '10', 'test', '2020-07-22 19:49:39'),
(2, '10', 'test', '2020-07-22 19:49:53'),
(3, '14', 'test', '2020-07-26 08:49:17'),
(4, '14', 'test', '2020-07-26 08:49:20'),
(5, '13', 'test', '2020-07-26 08:49:20'),
(6, '13', 'test', '2020-07-26 08:49:23'),
(7, '14', 'test', '2020-07-26 08:49:23'),
(8, '12', 'test', '2020-07-26 08:49:23'),
(9, '13', 'test', '2020-07-26 08:49:26'),
(10, '14', 'test', '2020-07-26 08:49:26'),
(11, '12', 'test', '2020-07-26 08:49:26'),
(12, '10', 'test', '2020-07-26 08:49:26'),
(13, '14', 'test', '2020-07-26 08:49:28'),
(14, '13', 'test', '2020-07-26 08:49:28'),
(15, '12', 'test', '2020-07-26 08:49:28'),
(16, '10', 'test', '2020-07-26 08:49:28'),
(17, '8', 'test', '2020-07-26 08:49:29'),
(18, '14', 'test', '2020-07-26 08:49:31'),
(19, '10', 'test', '2020-07-26 08:49:31'),
(20, '7', 'test', '2020-07-26 08:49:31'),
(21, '13', 'test', '2020-07-26 08:49:31'),
(22, '8', 'test', '2020-07-26 08:49:31'),
(23, '12', 'test', '2020-07-26 08:49:31'),
(24, '12', 'test', '2020-07-26 08:49:33'),
(25, '8', 'test', '2020-07-26 08:49:33'),
(26, '13', 'test', '2020-07-26 08:49:33'),
(27, '14', 'test', '2020-07-26 08:49:33'),
(28, '10', 'test', '2020-07-26 08:49:33'),
(29, '7', 'test', '2020-07-26 08:49:33'),
(30, '5', 'test', '2020-07-26 08:49:33'),
(31, '12', 'test', '2020-07-26 08:49:36'),
(32, '14', 'test', '2020-07-26 08:49:36'),
(33, '13', 'test', '2020-07-26 08:49:36'),
(34, '10', 'test', '2020-07-26 08:49:36'),
(35, '8', 'test', '2020-07-26 08:49:36'),
(36, '7', 'test', '2020-07-26 08:49:36'),
(37, '5', 'test', '2020-07-26 08:49:36'),
(38, '4', 'test', '2020-07-26 08:49:36'),
(39, '14', 'test', '2020-07-26 08:49:38'),
(40, '8', 'test', '2020-07-26 08:49:38'),
(41, '13', 'test', '2020-07-26 08:49:38'),
(42, '12', 'test', '2020-07-26 08:49:38'),
(43, '7', 'test', '2020-07-26 08:49:38'),
(44, '10', 'test', '2020-07-26 08:49:38'),
(45, '5', 'test', '2020-07-26 08:49:38'),
(46, '4', 'test', '2020-07-26 08:49:38'),
(47, '3', 'test', '2020-07-26 08:49:38'),
(48, '13', 'test', '2020-07-26 08:49:41'),
(49, '8', 'test', '2020-07-26 08:49:41'),
(50, '10', 'test', '2020-07-26 08:49:41'),
(51, '7', 'test', '2020-07-26 08:49:41'),
(52, '14', 'test', '2020-07-26 08:49:41'),
(53, '12', 'test', '2020-07-26 08:49:41'),
(54, '5', 'test', '2020-07-26 08:49:41'),
(55, '4', 'test', '2020-07-26 08:49:41'),
(56, '3', 'test', '2020-07-26 08:49:41'),
(57, '2', 'test', '2020-07-26 08:49:41'),
(58, '8', 'test', '2020-07-26 08:49:45'),
(59, '13', 'test', '2020-07-26 08:49:45'),
(60, '10', 'test', '2020-07-26 08:49:45'),
(61, '7', 'test', '2020-07-26 08:49:45'),
(62, '14', 'test', '2020-07-26 08:49:45'),
(63, '12', 'test', '2020-07-26 08:49:45'),
(64, '5', 'test', '2020-07-26 08:49:45'),
(65, '4', 'test', '2020-07-26 08:49:45'),
(66, '1', 'test', '2020-07-26 08:49:45'),
(67, '3', 'test', '2020-07-26 08:49:45'),
(68, '2', 'test', '2020-07-26 08:49:45'),
(69, '1', 'test', '2020-07-26 09:07:06'),
(70, '2', 'test', '2020-07-26 09:07:11'),
(71, '1', 'test', '2020-07-26 09:07:11'),
(72, '1', 'test', '2020-07-26 09:07:20'),
(73, '3', 'test', '2020-07-26 09:07:20'),
(74, '2', 'test', '2020-07-26 09:07:20'),
(75, '2', 'test', '2020-07-26 09:07:23'),
(76, '3', 'test', '2020-07-26 09:07:23'),
(77, '4', 'test', '2020-07-26 09:07:23'),
(78, '1', 'test', '2020-07-26 09:07:23'),
(79, '1', 'test', '2020-07-26 09:07:26'),
(80, '3', 'test', '2020-07-26 09:07:26'),
(81, '7', 'test', '2020-07-26 09:07:26'),
(82, '4', 'test', '2020-07-26 09:07:26'),
(83, '2', 'test', '2020-07-26 09:07:26'),
(84, '2', 'test', '2020-07-26 09:07:28'),
(85, '1', 'test', '2020-07-26 09:07:28'),
(86, '4', 'test', '2020-07-26 09:07:28'),
(87, '3', 'test', '2020-07-26 09:07:28'),
(88, '5', 'test', '2020-07-26 09:07:28'),
(89, '7', 'test', '2020-07-26 09:07:28'),
(90, '14', 'test', '2020-07-26 09:07:40'),
(91, '18', 'test', '2020-07-26 10:12:32'),
(92, '18', 'test', '2020-07-26 10:29:14');

-- --------------------------------------------------------

--
-- Table structure for table `our_team`
--

CREATE TABLE `our_team` (
  `id` int(11) NOT NULL,
  `name_en` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `name_ar` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `position_en` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `position_ar` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `date_added` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `our_team`
--

INSERT INTO `our_team` (`id`, `name_en`, `name_ar`, `position_en`, `position_ar`, `image`, `date_added`) VALUES
(51, 'Abd Elftah', 'عبد الفتاح', 'Business Development Director', 'مدير تطوير الأعمال', 'http://www.promosbh.com/newsite/system/api/uploads/our_team/51/six.jpg', '2020-10-09 21:13:41'),
(52, 'Kamal AbdElatif', 'كامل عبد اللطيف', 'Business Development Director', 'مدير تطوير الأعمال', 'http://www.promosbh.com/newsite/system/api/uploads/our_team/52/five.jpg', '2020-10-09 21:14:20'),
(53, 'Safi Issa', 'صافي عيسى', 'Business Development Director', 'مدير تطوير الأعمال', 'http://www.promosbh.com/newsite/system/api/uploads/our_team/53/one.jpg', '2020-10-09 21:14:50'),
(54, 'ُMarowa Roshdy', 'مروه رشدي', 'Business Development Director', 'مدير تطوير الأعمال', 'http://www.promosbh.com/newsite/system/api/uploads/our_team/54/two.jpg', '2020-10-09 21:15:12'),
(55, 'Sara Saleh', 'ساره صالح', 'Business Development Director', 'مدير تطوير الأعمال', 'http://www.promosbh.com/newsite/system/api/uploads/our_team/55/eight.jpg', '2020-10-09 21:15:48'),
(56, 'Mohamed Nawar', 'محمد نوار', 'Business Development Director', 'مدير تطوير الأعمال', 'http://www.promosbh.com/newsite/system/api/uploads/our_team/56/four.jpg', '2020-10-09 21:16:19');

-- --------------------------------------------------------

--
-- Table structure for table `parent_categories`
--

CREATE TABLE `parent_categories` (
  `parent_category_id` int(11) NOT NULL,
  `parent_category_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parent_category_desc` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `parent_category_name_ar` varchar(255) CHARACTER SET utf8 NOT NULL,
  `parent_category_desc_ar` text CHARACTER SET utf8 NOT NULL,
  `parent_category_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '  ',
  `display` int(255) NOT NULL DEFAULT 1,
  `arrangement` int(11) NOT NULL DEFAULT 1,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `parent_categories`
--

INSERT INTO `parent_categories` (`parent_category_id`, `parent_category_name`, `parent_category_desc`, `parent_category_name_ar`, `parent_category_desc_ar`, `parent_category_image`, `display`, `arrangement`, `date`) VALUES
(22, 'PRINTING', 'Printing all publications, notebooks, flyers, banners and many more.', 'طباعه', 'طباعة جميع المطبوعات والدفاتر والنشرات واللافتات وغيرها الكثير.', 'http://www.promosbh.com/newsite/system/api/uploads/parent_category/22/1602923018.jpg', 1, 1, '2020-10-09 23:52:07'),
(23, 'SMS Messages', 'Fast and flexible packages to reach all target groups.', 'رسائل SMS', 'حزم سريعة ومرنة للوصول إلى جميع الفئات المستهدفة.', 'http://www.promosbh.com/newsite/system/api/uploads/parent_category/23/1602923003.jpg', 1, 2, '2020-10-09 23:53:23'),
(24, 'MARKETING', 'Be the best among the competitors and develop a distinguished marketing strategy to ensure increased sales.', 'تسويق', 'كن الأفضل بين المنافسين وقم بتطوير إستراتيجية تسويق مميزة لضمان زيادة المبيعات.', 'http://www.promosbh.com/newsite/system/api/uploads/parent_category/24/1602922971.jpg', 1, 3, '2020-10-09 23:54:18'),
(25, 'MOTION GRAPHIC', 'We have a team with a high level of skills that translates your thoughts into vivid and attractive images.', 'السوم المتحركة', 'لدينا فريق على مستوى عال من المهارات يترجم أفكارك إلى صور حية وجذابة.', 'http://www.promosbh.com/newsite/system/api/uploads/parent_category/25/1602922961.jpg', 1, 4, '2020-10-09 23:55:33'),
(26, 'SOCIAL MEDIA', 'Be distinguished with the social media accounts management service.', 'وسائل الاعلام الاجتماعية', 'تميز بخدمة إدارة حسابات التواصل الاجتماعي.', 'http://www.promosbh.com/newsite/system/api/uploads/parent_category/26/1602922948.jpg', 1, 5, '2020-10-10 00:00:25'),
(27, 'BRANDING', 'Designing business identities for institutions, bodies and companies.', 'العلامات التجارية', 'تصميم الهويات التجارية للمؤسسات والهيئات والشركات.', 'http://www.promosbh.com/newsite/system/api/uploads/parent_category/27/1602922937.jpg', 1, 6, '2020-10-10 00:01:33'),
(28, 'ANIMATION', 'We embody what goes on in your minds touches reality Creatively.', 'الرسوم المتحركه', 'نجسد ما يدور في أذهانكم ويلمس الواقع بشكل خلاق.', 'http://www.promosbh.com/newsite/system/api/uploads/parent_category/28/1602922920.jpg', 1, 7, '2020-10-10 00:02:27'),
(29, 'PHOTOGRAPHY', 'Modern and advanced equipment and a creative team ready to shoot all events and products.', 'التصوير', 'معدات حديثة ومتطورة وفريق مبدع جاهز لتصوير جميع الفعاليات والمنتجات.', 'http://www.promosbh.com/newsite/system/api/uploads/parent_category/29/1602922906.jpg', 1, 8, '2020-10-10 00:03:27'),
(30, 'VIDEO PRODUCTION', 'The latest technology and the most skilled photographers, unrivaled services, using the latest various photographic equipment.', 'انتاج الفيديو', 'أحدث التقنيات وأمهر المصورين ، خدمات لا تضاهى ، باستخدام أحدث معدات التصوير المختلفة.', 'http://www.promosbh.com/newsite/system/api/uploads/parent_category/30/1602923081.jpg', 1, 9, '2020-10-10 00:04:08'),
(31, 'Commercial identity design', 'We design your logo and brand identity in a professional way to ensure that it will properly and properly reflect your brand for all your customers and audiences.', 'تصميم الهويه التجاريه', 'نصمم لك شعارك وهويتك التجارية بطريقة محترفة تضمن لك انها ستعكس علامتك التجارية بشكل مناسب و صحيح لكل عملائك و جمهورك.', 'http://www.promosbh.com/newsite/system/api/uploads/parent_category/31/1602923322.jpg', 1, 10, '2020-10-17 11:28:42'),
(32, 'WEB DESIGN', 'It is time to manage your project and business over the Internet, send us the requirements of your site or application and we will develop it as it should be suitable for your business.', 'تصميم وبرمجة المواقع', 'حان الوقت لأدارة مشروعك و اعمالك عبر الانترنت, ارسل لنا متطلبات موقعك او تطبيقك و نحن سنطوره كما ينبغي ليكون مناسب لعملك.', 'http://www.promosbh.com/newsite/system/api/uploads/parent_category/32/1602923400.jpg', 1, 11, '2020-10-17 11:29:59'),
(33, 'Desktop applications', 'Sometimes, working without internet is not an option for you, desktop applications exist and are needed for this reason, we are ready to create desktop applications that will suit your business needs, just ask about them.', 'تطبيقات سطح المكتب', 'في بعض الاوقات العمل بدون انترنت ليس خيارا لك, تطبيقات سطح المكتب موجودة و هناك حاجة لها لهذا السبب , فنحن مستعدين لأبتكار تطبيقات لسطح المكتب التي ستناسب احتياجات عملك, فقط اسأل عنها.', 'http://www.promosbh.com/newsite/system/api/uploads/parent_category/33/1602923453.jpg', 1, 12, '2020-10-17 11:30:52'),
(34, 'mobile applications', 'Smart phone applications are the most widespread technology in the whole world, so if you have an innovative and new idea that will contribute to helping people, do not hesitate to turn it into the application they deserve.', 'تطبيقات الجوال', 'تطبيقات الهواتف الذكية هي التكنولوجيا الاكثر انتشارا في العالم كله, فأذا كان لديك فكرة مبتكرة و جديدة ستساهم في مساعدة الناس لا تتردد في تحويلها الى التطبيق التي تستحقه.', 'http://www.promosbh.com/newsite/system/api/uploads/parent_category/34/1602924264.jpg', 1, 13, '2020-10-17 11:44:24'),
(35, 'Hosting and servers', 'No website can achieve success without strong online hosting, and we offer you many hosting plans that suit various projects and businesses and are also powerful enough to host your own site.', 'الاستضافه والسيرفرات', 'لا يمكن لأي موقع تحقيق نجاح بدون استضافة قوية على الانترنت , و نحن نقدم لك العديد من خطط الاستضافة التي تناسب مختلف المشاريع و الاعمال و ايضا تكون قوية بما يكفي لأستضافة موقعك الخاص.', 'http://www.promosbh.com/newsite/system/api/uploads/parent_category/35/1602924380.jpg', 1, 14, '2020-10-17 11:46:19'),
(36, 'Technical support', 'Your site is your home, but on the Internet, so we provide full care for your site 24 hours a day, seven days a week.', 'الدعم الفني', 'موقعك هو منزلك ولكن على الانترنت لذلك نحن نوفر عناية كاملة لموقعك خلال 24 ساعة على مدار الأسبوع.', 'http://www.promosbh.com/newsite/system/api/uploads/parent_category/36/1602924590.jpg', 1, 15, '2020-10-17 11:49:49'),
(37, 'workshops', 'We always believe in spreading knowledge for everyone in the field of information technology. We decided to provide specialized training courses that will benefit all those interested in various technical fields.', 'ورش العمل', 'نحن نؤمن دائما بنشر المعرفة للجميع في مجال تكنولوجيا المعلومات, قررنا ان نقدم دورات تدريبية متخصصة ستفيد جميع المهتمين بمختلف المجالات التقنية.', 'http://www.promosbh.com/newsite/system/api/uploads/parent_category/37/1602924668.jpg', 1, 16, '2020-10-17 11:51:07'),
(38, 'Voice over', 'It provided a wide range of voice forms more abundant between commercial advertisements, whether on television, for radio or those that are published on social media sites, documentary works that deliver cultural or knowledge', 'فويس اوفر', 'قدم طيف واسعا من أشكال الفويس أوفر ما بين إعلانات التجارية سواء التليفزيونية أو للراديو أو تلك التي يتم نشرها عبر مواقع التواصل الاجتماعي، والأعمال الوثائقية التي توصل رسائل ثقافية أو معرفية لجماهير محددة، وأعمال الدبلجة أو التمثيل، والأعمال الأدبية مثل الكتب أو غيرها من الوثائق، وأعمال الرد الآلي، كما نضم مجموعة من المعلقين المحترفين بلهجات أو لغات مختلفة، نوفر لك كافة حلول الخدمة التي تحتاج إليها من كتابة النص أو السكريبت هذا بجانب خدمات التصميم المحترفة التي نوفرها لك عند الحاجة، نضمن لك عمل صوتي عالي الجودة من خلال الكتابة الإبداعية المتقنة والمعلق الصوتي الموهوب وإمكانيات الخدمة من التجهيزات والمعدات الاحترافية.', 'http://www.promosbh.com/newsite/system/api/uploads/parent_category/38/1602925191.jpg', 1, 17, '2020-10-17 11:59:51'),
(39, 'Google ADS', 'Google Adwords ads are one of the most important global Google products, which work greatly to make the most of your e-marketing plan. It offers you a set of distinct options that enable you to reach target customers with min', 'اعلانات جوجل', 'اعلانات جوجل ادورد هي واحدة من أهم منتجات جوجل العالمية، والتي تعمل وبشكل كبير على تحقيق أقصى استفادة ممكنة من خطة التسويق الالكتروني الخاصة بك. حيث تقدم لك مجموعة من الاختيارات المتميزة التي تمكنك من الوصول للعملاء المستهدفين بأقل جهد وتكلفة ممكنة. من ضمن تلك الاختيارات:', 'http://www.promosbh.com/newsite/system/api/uploads/parent_category/39/1602925377.jpg', 1, 18, '2020-10-17 12:02:57');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `client_id` varchar(255) CHARACTER SET utf8 NOT NULL,
  `order_id` varchar(255) CHARACTER SET utf8 NOT NULL,
  `payment_id` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `value` varchar(255) CHARACTER SET utf8 NOT NULL,
  `result` varchar(255) CHARACTER SET utf8 NOT NULL,
  `payment_type` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `date` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `client_id`, `order_id`, `payment_id`, `value`, `result`, `payment_type`, `date`) VALUES
(12, '1', '1212', 'SESSION0002757526074N81065783H1', 'a92674a6748641bb', '', 'credit', '2020-08-17 15:35:58'),
(13, '', '21', '', '', 'success', 'credit', '2020-08-17 15:35:58'),
(14, '1', '1212', 'SESSION0002518324156H41811980F1', 'e72d50a6795c4f72', '', 'credit', '2020-08-17 15:39:31'),
(15, '1', '1212', 'SESSION0002326396922N93507828E5', 'ad2024af1c484314', '', 'credit', '2020-08-17 15:39:34'),
(16, '1', '1212', 'SESSION0002605888275I20596017J1', '8b21abf3151a4529', '', 'credit', '2020-08-17 15:39:44'),
(17, '1', '121012', 'SESSION0002552287665H43816280H5', 'e0a395843b1646ee', 'success', 'credit', '2020-08-17 15:39:51'),
(18, '1', '127712', 'SESSION0002894906087I44998386I0', '0fa3fcdb85d24cc0', 'success', 'credit', '2020-08-17 15:43:14'),
(19, '1', '121412', 'SESSION0002476966322K03460766E2', '7ba622e1115e43e2', '', 'credit', '2020-08-17 15:45:25'),
(20, '', '21', '', '', 'success', 'credit', '2020-08-20 00:12:11'),
(21, '1', '8952599098', 'SESSION0002832956802L5285391L25', 'bd1eab339cf04127', '', 'credit', '2020-09-16 00:39:59'),
(22, '1', '8952599098', 'SESSION0002466272397M9909746N30', 'adb8ceac4c8f46e7', '', 'credit', '2020-09-16 00:41:21'),
(23, '1', '7893725876', 'SESSION0002402881128G9413453L94', '0d1f47d663694ab1', '', 'credit', '2020-09-16 00:46:27'),
(24, '1', '8404948295', 'SESSION0002647600604K4225005K50', '66fc4da8f69a418d', '', 'credit', '2020-09-16 00:51:33'),
(25, '1', '8543934402', 'SESSION0002515728719E4546177E14', 'b256f680606449ca', '', 'credit', '2020-09-16 00:54:37'),
(26, '15', 'Im3d25t6', 'SESSION0002161774939J7452928E09', '759334842e2b4247', '', 'credit', '2020-09-16 15:01:41'),
(27, '15', 'BjIvn3RW', 'SESSION0002332591506L1435774J46', '9aea90ccedd746f5', '', 'credit', '2020-09-16 15:03:56'),
(28, '15', 'uWeJAiuK', 'SESSION0002237097520G3624777E29', 'dd7111ba626445bf', '', 'credit', '2020-09-16 15:05:36'),
(29, '15', 'kxNazK07', 'SESSION0002158769661E5504930G68', '4754b3df07c345c5', '', 'credit', '2020-09-16 15:25:26'),
(30, '15', '4hcCNTD6', 'SESSION0002628864637F1823490I79', 'd723e739579a4275', '', 'credit', '2020-09-16 15:27:31'),
(31, '1', '21', '', '', '', 'credit', '2020-09-16 16:47:29'),
(32, '1', '21', '', '', '', 'credit', '2020-09-16 16:49:29'),
(33, '1', '21', '', '', '', 'credit', '2020-09-16 16:49:53'),
(34, '1', '21', '', '', '', 'credit', '2020-09-16 16:50:50'),
(35, '1', '21', '', '', '', 'credit', '2020-09-16 16:52:17'),
(36, '15', '21', '', '', '', 'credit', '2020-09-16 17:00:33'),
(37, '15', '21', '', '', '', 'credit', '2020-09-16 17:02:09'),
(38, '15', '21', '', '', '', 'credit', '2020-09-16 17:03:46'),
(39, '1', '21', '', '', '', 'credit', '2020-09-16 17:06:39'),
(40, '1', '21', '', '', '', 'credit', '2020-09-16 17:18:00'),
(41, '1', '21', '', '', '', 'credit', '2020-09-16 18:10:12'),
(42, '15', '21', '', '', '', 'credit', '2020-09-17 16:07:26'),
(43, '15', '21', '', '', '', 'credit', '2020-09-17 16:08:46'),
(44, '15', '21', '', '', '', 'credit', '2020-09-17 16:08:58'),
(45, '15', '21', '', '', '', 'credit', '2020-09-17 16:09:00'),
(46, '15', '21', '', '', '', 'credit', '2020-09-17 16:09:42'),
(47, '15', '21', '', '', '', 'credit', '2020-09-17 16:10:35'),
(48, '15', '21', '', '', '', 'credit', '2020-09-17 16:10:47'),
(49, '15', '21', '', '', '', 'credit', '2020-09-17 16:10:55'),
(50, '15', '21', '', '', '', 'credit', '2020-09-17 16:11:19'),
(51, '15', '21', '', '', '', 'credit', '2020-09-17 16:11:29'),
(52, '15', '21', '', '', '', 'credit', '2020-09-17 16:11:50'),
(53, '15', '21', '', '', '', 'credit', '2020-09-17 16:12:14'),
(54, '15', '21', '', '', '', 'credit', '2020-09-17 16:13:26'),
(55, '15', '21', '', '', '', 'credit', '2020-09-17 16:13:39'),
(56, '15', '21', '', '', '', 'credit', '2020-09-17 16:14:28'),
(57, '15', '21', '', '', '', 'credit', '2020-09-17 16:14:36'),
(58, '15', '21', '', '', '', 'credit', '2020-09-17 16:14:39'),
(59, '15', '21', '', '', '', 'credit', '2020-09-17 16:14:41'),
(60, '15', '21', '', '', '', 'credit', '2020-09-17 16:15:04'),
(61, '15', '21', '', '', '', 'credit', '2020-09-17 16:15:07'),
(62, '15', '21', '', '', 'success', 'credit', '2020-09-17 16:15:30'),
(63, '15', '21', '', '', 'success', 'credit', '2020-09-17 16:15:52'),
(64, '15', '21', '', '', '', 'credit', '2020-09-17 16:16:05'),
(65, '15', '21', '', '', '', 'credit', '2020-09-17 16:16:15'),
(66, '15', '21', '', '', '', 'credit', '2020-09-17 16:16:33'),
(67, '15', '21', '', '', '', 'credit', '2020-09-17 16:16:59'),
(68, '15', '21', '', '', '', 'credit', '2020-09-17 16:17:25'),
(69, '15', '21', '', '', '', 'credit', '2020-09-17 16:17:36'),
(70, '15', '21', '', '', '', 'credit', '2020-09-17 16:17:47'),
(71, '15', '21', '', '', '', 'credit', '2020-09-17 16:18:33'),
(72, '15', '21', '', '', '', 'credit', '2020-09-17 16:20:51'),
(73, '15', '21', '', '', '', 'credit', '2020-09-17 16:20:55'),
(74, '15', '21', '', '', '', 'credit', '2020-09-17 16:21:52'),
(75, '15', '21', '', '', '', 'credit', '2020-09-17 16:22:06'),
(76, '15', '21', '', '', '', 'credit', '2020-09-17 16:22:31'),
(77, '15', '21', '', '', '', 'credit', '2020-09-17 16:22:41'),
(78, '15', '21', '', '', '', 'credit', '2020-09-17 16:23:59'),
(79, '', '21', '', '', '', 'credit', '2020-09-19 12:28:50');

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` int(11) NOT NULL,
  `name_ar` text NOT NULL,
  `name_en` text NOT NULL,
  `display` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payment_methods`
--

INSERT INTO `payment_methods` (`id`, `name_ar`, `name_en`, `display`) VALUES
(1, 'كاش', 'Cash', 1),
(2, 'ديبت كارد', 'Debit Card', 1),
(3, 'كريدت كارد', 'Credit Card', 1);

-- --------------------------------------------------------

--
-- Table structure for table `project_location`
--

CREATE TABLE `project_location` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `lat` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `long` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `date` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `regions`
--

CREATE TABLE `regions` (
  `region_id` int(11) NOT NULL,
  `region_name_ar` varchar(255) NOT NULL,
  `region_name_en` varchar(255) NOT NULL,
  `charge` varchar(255) NOT NULL,
  `min_order` varchar(255) NOT NULL,
  `order_period` varchar(255) NOT NULL,
  `display` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `regions`
--

INSERT INTO `regions` (`region_id`, `region_name_ar`, `region_name_en`, `charge`, `min_order`, `order_period`, `display`) VALUES
(1, 'العكر', ' Al Eker', '0', '3.000', '45', 1),
(3, 'القدم', 'Al Qadam', '0', '4.000', '45', 1),
(4, 'القرية', 'Al Quriah', '0', '7.000', '', 1),
(5, 'القضيبية', 'Qudaibiya', '0', '3.000', '45', 1),
(6, 'قلالي', 'Qalali', '0', '10', '', 1),
(7, 'القلعة', 'Al Qalah', '0', '4', '60', 1),
(8, 'كرانة', 'Karranah', '0', '4.000', '60', 1),
(9, 'الحجر', 'Al Hajar', '0', '5.000', '60', 1),
(10, 'كرباباد', 'Karbabad', '0', '5', '60', 1),
(11, 'كرزكان', 'Karzakan', '0', '4.000', '45دقيقة', 1),
(12, 'الماحوز', 'Mahooz', '0', '3.000', '45', 1),
(13, 'المالكية', 'Malkiah', '0', '2.000', '45دقيقة', 1),
(14, 'مدينة حمد من دوار 1 إلى دوار 10', 'Madinat Hamad From R 1 to R 10', '0', '3.000', '45دقيقة', 1),
(15, 'مدينة زايد', 'Zayed Town', '0', '3.000', '45', 1),
(16, 'مدينة عيسي', 'Isa Town', '0', '3', '45', 1),
(17, 'المحرق', 'Al Muharraq', '0', '10', '', 1),
(18, 'مقابة', 'Maqabah', '0', '4.000', '60', 1),
(19, 'المقشع', 'Al Maqsha', '0', '4.000', '60', 1),
(20, 'المنامة', 'Manama', '0', '5.000', '45', 1),
(21, 'النبيه صالح', 'Nabih Saleh', '0', '3.000', '45', 1),
(22, 'النعيم', 'Alnaim', '0', '3.000', '45', 1),
(23, 'النويدرات', 'Nuwaidrat', '0', '2.000', '30', 1),
(24, 'الهملة', 'Al Hamala', '0', '10.000', '60', 1),
(25, 'البلاد القديم', 'Bilad Al Qadeem', '0', '2.000', '45', 1),
(26, 'الكورة', 'Kawarah', '0', '2.000', '30', 1),
(27, 'سلماباد', 'Salmabad', '0', '2.000', '45', 1),
(28, 'أبو صيبع', 'Abu Saiba', '0', '4.000', '45', 1),
(29, 'أبوقوة', 'Bu Quwah', '0', '6', '45', 1),
(30, 'أم الحصم', 'Umm Al Hassam', '0', '3.000', '45', 1),
(31, 'المصلي', 'Al Musalla', '0', '2.000', '45', 1),
(32, 'توبلي', 'Tubli', '0', '2.000', '30', 1),
(33, 'باربار', 'Barbar', '0', '7.000', '', 1),
(34, 'البديع', 'Budaiya', '0', '4.000', '50', 1),
(35, 'البسيتين', 'Busaiten', '0', '7.000', '', 1),
(36, 'بوكوارة', 'Bu Kowarah', '0', '3.000', '45', 1),
(37, 'البحير', 'Al Bahair', '0', '3.000', '45', 1),
(38, 'بني جمرة', 'Bani Jamra', '0', '4.000', '60', 1),
(39, 'بوري', 'Buri', '0', '10.000', '60', 1),
(40, 'جبلة حبشي', 'Jeblat Hebshi', '0', '4.000', '45', 1),
(41, 'جد الحاج', 'Jid Al Haj', '0', '5', '60', 1),
(42, 'جد حفص', 'Jidhafs', '0', '3.000', '45', 1),
(43, 'جد علي', 'Jid Ali', '0', '2.000', '30', 1),
(44, 'جرداب', 'Jurdab', '0', '2.000', '45', 1),
(46, 'الجسرة', 'Aljasrah', '0', '7.000', '', 1),
(47, 'الجفير', 'AlJuffair', '0', '4.000', '45', 1),
(48, 'الجنبية', 'ُEljanabiya', '0', '6.000', '50', 1),
(49, 'جنوسان', 'Jannusan', '0', '4', '45', 1),
(50, 'جو', 'Jaw', '0', '10', '', 1),
(51, 'الحد', 'AL Hidd', '0', '6', '60 ', 1),
(52, 'الحجيات', 'Alhajiyat', '0', '2.000', '45', 1),
(53, 'حلة العبد الصالح', 'Hillat Abdul Saleh', '0', '3', '45', 1),
(54, 'الحورة', 'Al Hoora', '0', '4.000', '50', 1),
(55, 'الخميس', 'Khamis', '0', '2.000', '45', 1),
(56, 'دار كليب', 'Dar Kulaib', '0', '1.000', '40', 1),
(57, 'المنطقة الدبلوماسية', 'Diplomatic Area', '0', '20.000', '60', 1),
(58, 'الدراز', 'Diraz', '0', '5.000', '60', 1),
(59, 'دمستان', 'Dimstan', '0', '5.000', '60', 1),
(60, 'الدير', 'Aldair', '0', '7', '', 1),
(61, 'الدية', 'Daih', '0', '3.000', '45', 1),
(62, 'رأس رمان', 'Ras Rumman', '0', '3.000', '45', 1),
(63, 'الرفاع(الشرقي)', 'East Riffa', '0', '2.000', '45', 1),
(64, 'الرفاع(الغربي)', 'West Riffa', '0', '3.000', '45', 1),
(65, 'الزلاق', 'Al zallaq', '0', '1.500', '45دقيقة', 1),
(66, 'الزنج', 'Zinj', '0', '2.000', '45', 1),
(67, 'السقيه', 'AL SAGYAH', '0', '2.000', '60', 1),
(68, 'سار', 'Saar', '0', '5', '45', 1),
(69, 'سترة', 'sitra', '0', '2.000', '45', 1),
(70, 'سماهيج', 'Samahej', '0', '10', '', 1),
(71, 'السنابس', 'Sanabis', '0', '20', '60', 1),
(72, 'سند', 'Sanad', '0', '15.000', '60', 1),
(73, 'السهلة(الشمالية والجنوبية)', 'Sehla', '0', '5.000', '45', 1),
(74, 'ضاحية السيف', 'seef', '0', '20.000', '45', 1),
(75, 'الشاخورة', 'Shakhurah', '0', '4', '45', 1),
(76, 'شهركان', 'Sharakan', '0', '1.000', '45دقيقة', 1),
(77, 'جامعة البحرين ', 'univrsty of bahrain', '0', '2.500', '45', 1),
(78, 'الصالحيه', 'Salihiya', '0', '2.000', '45', 1),
(79, 'صدد', 'Sadad', '0', '2.000', '45', 1),
(80, 'عالي', 'Aali', '0', '10.000', '45', 1),
(81, 'العدلية', 'Adliya', '0', '2.000', '30', 1),
(82, 'عذاري', 'AZARY', '0', '3', '45', 1),
(83, 'عراد', 'Arad', '0', '0', '', 1),
(84, 'عسكر', 'askr', '0', '0', '45دقيقة', 1),
(85, 'مدينة حمد من دوار 11 إلى دوار 22', 'Madinat Hamad From R 11 to R 22', '0', '1.500', '45دقيقة', 1),
(86, 'اللوزي', 'Al lozy', '0', '5.000', '45دقيقة', 1);

-- --------------------------------------------------------

--
-- Table structure for table `removes`
--

CREATE TABLE `removes` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `title_ar` varchar(255) NOT NULL,
  `parent_category_id` int(11) NOT NULL,
  `date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `service_id` int(11) NOT NULL,
  `washer_id` int(11) DEFAULT NULL,
  `service_name_en` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `service_name_ar` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `service_price` int(11) DEFAULT NULL,
  `display` int(255) DEFAULT 1,
  `date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`service_id`, `washer_id`, `service_name_en`, `service_name_ar`, `service_price`, `display`, `date`) VALUES
(1, 1, 'washing', 'غسيل ', 20, 1, '2020-11-01 10:20:07'),
(2, 1, 'burnish', 'تلميع', 20, 1, '2020-11-01 10:20:07'),
(3, 1, 'Polish', 'بوليش', 20, 1, '2020-11-01 10:20:07'),
(4, 1, 'Thorough cleaning', 'تنظيف شامل', 20, 1, '2020-11-01 10:20:07'),
(5, 1, 'Engine cleaning', 'تنظيف المحرك', 456123, 1, '2020-11-01 10:20:07'),
(7, 3, 'Rhea Blackwell', 'Brock Schmidt', 1000, 0, '2020-11-04 11:21:05');

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `android_version` varchar(255) NOT NULL,
  `ios_version` varchar(255) NOT NULL,
  `ios_link` varchar(255) NOT NULL,
  `footer_caption` text CHARACTER SET utf8 NOT NULL,
  `footer_caption_en` text CHARACTER SET utf8 NOT NULL,
  `lang` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `let` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `android_version`, `ios_version`, `ios_link`, `footer_caption`, `footer_caption_en`, `lang`, `let`) VALUES
(1, '3456', '5759', '8990', '© حقوق الطبع والنشر © 2020 جميع الحقوق محفوظة Promo', '© Copyright © 2020 All Right Reserved by Promo', '50.5297815', '26.2362237');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `image` varchar(255) CHARACTER SET utf8 NOT NULL,
  `link` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `date_added` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `image`, `link`, `date_added`) VALUES
(1, 'http://fastcleanbh.com/system/api/uploads/slider/1/colorful-beach-view-wallpaper-10917_L.jpg', 'Libero dolorum qui q 123', '2020-10-27 16:07:09');

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` int(11) NOT NULL,
  `email` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `date_added` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscription_type`
--

CREATE TABLE `subscription_type` (
  `id` int(11) NOT NULL,
  `subscription_name_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subscription_name_ar` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  `display` int(255) NOT NULL DEFAULT 1,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subscription_type`
--

INSERT INTO `subscription_type` (`id`, `subscription_name_en`, `subscription_name_ar`, `display`, `date`) VALUES
(2, 'Monthly subscription', 'الاشتراك الشهري', 1, '2020-11-08 16:44:46'),
(3, 'One subscription', 'اشتراك لمره واحده', 1, '2020-11-08 16:45:09');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `sub_category_id` int(11) NOT NULL,
  `sub_category_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sub_category_name_ar` varchar(255) CHARACTER SET utf8 NOT NULL,
  `sub_category_desc` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sub_category_desc_ar` text CHARACTER SET utf8 NOT NULL,
  `sub_category_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '  ',
  `sub_category_icon` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `parent_category_id` int(11) NOT NULL,
  `display` int(255) NOT NULL DEFAULT 1,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`sub_category_id`, `sub_category_name`, `sub_category_name_ar`, `sub_category_desc`, `sub_category_desc_ar`, `sub_category_image`, `sub_category_icon`, `parent_category_id`, `display`, `date`) VALUES
(112, 'PRINTING', 'طباعة', 'Printing all publications, notebooks, flyers, banners and many more.', 'طباعة جميع المطبوعات والدفاتر والنشرات واللافتات وغيرها الكثير.', 'http://www.promosbh.com/newsite/system/api/uploads/sub_category/112/1602762490.jpg', 'http://www.promosbh.com/newsite/system/api/uploads/sub_category/112/1602678700.jpg', 22, 1, '2020-10-12 13:45:11'),
(113, 'SMS Messages', 'رسائل SMS', 'Fast and flexible packages to reach all target groups.', 'حزم سريعة ومرنة للوصول إلى جميع الفئات المستهدفة.', 'http://www.promosbh.com/newsite/system/api/uploads/sub_category/113/1602762511.jpg', 'http://www.promosbh.com/newsite/system/api/uploads/sub_category/113/1602678774.jpg', 23, 1, '2020-10-12 13:45:57'),
(114, 'MARKETING', 'تسويق', 'Be the best among the competitors and develop a distinguished marketing strategy to ensure increased sales.', 'كن الأفضل بين المنافسين وقم بتطوير إستراتيجية تسويق مميزة لضمان زيادة المبيعات.', 'http://www.promosbh.com/newsite/system/api/uploads/sub_category/114/1602762531.jpg', 'http://www.promosbh.com/newsite/system/api/uploads/sub_category/114/1602922701.jpg', 24, 1, '2020-10-12 13:46:38'),
(115, 'MOTION GRAPHIC', 'الرسوم المتحركة', 'We have a team with a high level of skills that translates your thoughts into vivid and attractive images.', 'لدينا فريق على مستوى عال من المهارات يترجم أفكارك إلى صور حية وجذابة.', 'http://www.promosbh.com/newsite/system/api/uploads/sub_category/115/1602762570.jpg', 'http://www.promosbh.com/newsite/system/api/uploads/sub_category/115/1602922649.jpg', 25, 1, '2020-10-12 13:47:34'),
(116, 'SOCIAL MEDIA', 'وسائل الاعلام الاجتماعية', 'Be distinguished with the social media accounts management service.', 'تميز بخدمة إدارة حسابات التواصل الاجتماعي.', 'http://www.promosbh.com/newsite/system/api/uploads/sub_category/116/1602762594.jpg', 'http://www.promosbh.com/newsite/system/api/uploads/sub_category/116/1602922626.jpg', 26, 1, '2020-10-12 13:48:16'),
(117, 'BRANDING', 'العلامات التجارية', 'Designing business identities for institutions, bodies and companies.', 'تصميم الهويات التجارية للمؤسسات والهيئات والشركات.', 'http://www.promosbh.com/newsite/system/api/uploads/sub_category/117/1602679241.jpg', 'http://www.promosbh.com/newsite/system/api/uploads/sub_category/117/1602777373.jpg', 27, 1, '2020-10-12 13:49:04'),
(118, 'ANIMATION', 'الرسوم المتحركه', 'We embody what goes on in your minds touches reality Creatively.', 'معدات حديثة ومتطورة وفريق مبدع جاهز لتصوير جميع الفعاليات والمنتجات.', 'http://www.promosbh.com/newsite/system/api/uploads/sub_category/118/1602762701.jpg', 'http://www.promosbh.com/newsite/system/api/uploads/sub_category/118/1602777310.jpg', 28, 1, '2020-10-12 13:49:55'),
(119, 'PHOTOGRAPHY', 'التصوير', 'Modern and advanced equipment and a creative team ready to shoot all events and products.', 'معدات حديثة ومتطورة وفريق مبدع جاهز لتصوير جميع الفعاليات والمنتجات.', 'http://www.promosbh.com/newsite/system/api/uploads/sub_category/119/1602762720.jpg', 'http://www.promosbh.com/newsite/system/api/uploads/sub_category/119/1602774343.jpg', 29, 1, '2020-10-12 13:51:42'),
(120, 'VIDEO PRODUCTION', 'انتاج الفيديو', 'The latest technology and the most skilled photographers, unrivaled services, using the latest various photographic equipment.', 'أحدث التقنيات وأمهر المصورين ، خدمات لا تضاهى ، باستخدام أحدث معدات التصوير المختلفة.', 'http://www.promosbh.com/newsite/system/api/uploads/sub_category/120/1602762734.jpg', 'http://www.promosbh.com/newsite/system/api/uploads/sub_category/120/1602923133.jpg', 30, 1, '2020-10-12 13:53:19'),
(125, 'Desktop applications', 'تطبيقات سطح المكتب', 'Sometimes, working without internet is not an option for you, desktop applications exist and are needed for this reason, we are ready to create desktop applications that will suit your business needs, just ask about them.', 'في بعض الاوقات العمل بدون انترنت ليس خيارا لك, تطبيقات سطح المكتب موجودة و هناك حاجة لها لهذا السبب , فنحن مستعدين لأبتكار تطبيقات لسطح المكتب التي ستناسب احتياجات عملك, فقط اسأل عنها.', 'http://www.promosbh.com/newsite/system/api/uploads/sub_category/125/1602923844.jpg', 'http://www.promosbh.com/newsite/system/api/uploads/sub_category/125/1602923833.jpg', 33, 1, '2020-10-17 11:31:58'),
(126, 'WEB DESIGN', 'تصميم وبرمجة المواقع', 'It is time to manage your project and business over the Internet, send us the requirements of your site or application and we will develop it as it should be suitable for your business.', 'حان الوقت لأدارة مشروعك و اعمالك عبر الانترنت, ارسل لنا متطلبات موقعك او تطبيقك و نحن سنطوره كما ينبغي ليكون مناسب لعملك.', 'http://www.promosbh.com/newsite/system/api/uploads/sub_category/126/تصميم وبرمجة المواقع.jpg', 'http://www.promosbh.com/newsite/system/api/uploads/sub_category/126/تصميم المواقع.png', 32, 1, '2020-10-17 11:33:25'),
(127, 'Commercial identity design', 'تصميم الهويه التجاريه', 'We design your logo and brand identity in a professional way to ensure that it will properly and properly reflect your brand for all your customers and audiences.', 'نصمم لك شعارك وهويتك التجارية بطريقة محترفة تضمن لك انها ستعكس علامتك التجارية بشكل مناسب و صحيح لكل عملائك و جمهورك.', 'http://www.promosbh.com/newsite/system/api/uploads/sub_category/127/تصميم الهوية التجارية.jpg', 'http://www.promosbh.com/newsite/system/api/uploads/sub_category/127/هوية التجارية.png', 31, 1, '2020-10-17 11:36:24'),
(128, 'mobile applications', 'تطبيقات الجوال', 'Smart phone applications are the most widespread technology in the whole world, so if you have an innovative and new idea that will contribute to helping people, do not hesitate to turn it into the application they deserve.', 'تطبيقات الهواتف الذكية هي التكنولوجيا الاكثر انتشارا في العالم كله, فأذا كان لديك فكرة مبتكرة و جديدة ستساهم في مساعدة الناس لا تتردد في تحويلها الى التطبيق التي تستحقه.', 'http://www.promosbh.com/newsite/system/api/uploads/sub_category/128/1602925547.jpg', 'http://www.promosbh.com/newsite/system/api/uploads/sub_category/128/تطبيقات موبايل.png', 34, 1, '2020-10-17 11:44:28'),
(129, 'Hosting and servers', 'الاستضافه والسيرفرات', 'No website can achieve success without strong online hosting, and we offer you many hosting plans that suit various projects and businesses and are also powerful enough to host your own site.', 'لا يمكن لأي موقع تحقيق نجاح بدون استضافة قوية على الانترنت , و نحن نقدم لك العديد من خطط الاستضافة التي تناسب مختلف المشاريع و الاعمال و ايضا تكون قوية بما يكفي لأستضافة موقعك الخاص.', 'http://www.promosbh.com/newsite/system/api/uploads/sub_category/129/1602925568.jpg', 'http://www.promosbh.com/newsite/system/api/uploads/sub_category/129/الاستضافة والسيرفرات.png', 35, 1, '2020-10-17 11:46:57'),
(130, 'Technical support', 'الدعم الفني', 'Your site is your home, but on the Internet, so we provide full care for your site 24 hours a day, seven days a week.', 'موقعك هو منزلك ولكن على الانترنت لذلك نحن نوفر عناية كاملة لموقعك خلال 24 ساعة على مدار الأسبوع.', 'http://www.promosbh.com/newsite/system/api/uploads/sub_category/130/1602925592.jpg', 'http://www.promosbh.com/newsite/system/api/uploads/sub_category/130/الدعم الفني.png', 36, 1, '2020-10-17 11:49:56'),
(131, 'workshops', 'ورش العمل', 'We always believe in spreading knowledge for everyone in the field of information technology. We decided to provide specialized training courses that will benefit all those interested in various technical fields.', 'نحن نؤمن دائما بنشر المعرفة للجميع في مجال تكنولوجيا المعلومات, قررنا ان نقدم دورات تدريبية متخصصة ستفيد جميع المهتمين بمختلف المجالات التقنية.', 'http://www.promosbh.com/newsite/system/api/uploads/sub_category/131/1602925611.jpg', 'http://www.promosbh.com/newsite/system/api/uploads/sub_category/131/ورش عمل.png', 22, 1, '2020-10-17 11:51:02'),
(132, 'Voice over', 'فويس اوفر', 'provided a wide range of voice forms more abundant between commercial advertisements, whether on television, for radio or those that are published on social media sites, documentary works that deliver cultural or knowledge', 'نقدم مجموعة واسعة من الأشكال الصوتية أكثر وفرة بين الإعلانات التجارية ، سواء على التلفزيون أو الإذاعة أو تلك التي يتم نشرها على مواقع التواصل الاجتماعي ، والأعمال الوثائقية التي تنقل الثقافة أو المعرفة', 'http://www.promosbh.com/newsite/system/api/uploads/sub_category/132/1602925772.jpg', 'http://www.promosbh.com/newsite/system/api/uploads/sub_category/132/1602925657.jpg', 22, 1, '2020-10-17 12:04:35'),
(133, 'Google ADS', 'اعلانات جوجل', 'Google Adwords ads are one of the most important global Google products, which work greatly to make the most of your e-marketing plan. It offers you a set of distinct options that enable you to reach target customers with min', 'اعلانات جوجل ادورد هي واحدة من أهم منتجات جوجل العالمية، والتي تعمل وبشكل كبير على تحقيق أقصى استفادة ممكنة من خطة التسويق الالكتروني الخاصة بك. حيث تقدم لك مجموعة من الاختيارات المتميزة التي تمكنك من الوصول للعملاء المستهدفين بأقل جهد وتكلفة ممكنة. من ضمن تلك الاختيارات:', 'http://www.promosbh.com/newsite/system/api/uploads/sub_category/133/1602925794.jpg', 'http://www.promosbh.com/newsite/system/api/uploads/sub_category/133/جوجل ads.png', 39, 1, '2020-10-17 12:05:11');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories_addition_prices`
--

CREATE TABLE `sub_categories_addition_prices` (
  `sub_category_addition_price_id` int(11) NOT NULL,
  `sub_category_addition_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sub_category_addition_name_ar` varchar(255) CHARACTER SET utf8 NOT NULL,
  `sub_category_addition_price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parent_category_id` int(11) NOT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories_size_prices`
--

CREATE TABLE `sub_categories_size_prices` (
  `sub_category_size_price_id` int(11) NOT NULL,
  `sub_category_size_name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `sub_category_size_name_ar` varchar(255) CHARACTER SET utf8 NOT NULL,
  `sub_category_size_price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sub_category_id` int(11) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sub_categories_size_prices`
--

INSERT INTO `sub_categories_size_prices` (`sub_category_size_price_id`, `sub_category_size_name`, `sub_category_size_name_ar`, `sub_category_size_price`, `sub_category_id`, `date`) VALUES
(1, '400 GM', '400 GM', '3', 1, '2020-06-20 17:51:15'),
(2, '180 GM', '180 GM', '1.5', 1, '2020-06-20 17:51:15'),
(3, '250 GM', '250 GM', '1.5', 1, '2020-06-20 17:51:15'),
(4, '125 GM', '125 GM', '0.9', 1, '2020-06-20 17:51:15'),
(5, '180 GM', '180 GM', '1.5', 2, '2020-06-20 17:51:15'),
(6, '180 GM', '180 GM', '1.5', 3, '2020-06-20 17:51:15'),
(7, '250 GM', '250 GM', '2', 4, '2020-06-20 17:51:15'),
(8, '250 GM', '250 GM', '1.5', 5, '2020-06-20 17:51:15'),
(9, '150 GM', '150 GM', '4', 6, '2020-06-20 17:51:15'),
(10, '500 GM', '500 GM', '1', 7, '2020-06-20 17:51:15'),
(11, '750 GM', '750 GM', '1.5', 7, '2020-06-20 17:51:15'),
(12, '1 KG', '1 KG', '1.8', 7, '2020-06-20 17:51:15'),
(13, '500 GM', '500 GM', '1', 8, '2020-06-20 17:51:15'),
(14, '750 GM', '750 GM', '1.5', 8, '2020-06-20 17:51:15'),
(15, '1 KG', '1 KG', '1.8', 8, '2020-06-20 17:51:15'),
(16, '500 GM', '500 GM', '1', 9, '2020-06-20 17:51:15'),
(17, '750 GM', '750 GM', '1.5', 9, '2020-06-20 17:51:15'),
(18, '1 KG', '1 KG', '1.8', 9, '2020-06-20 17:51:15'),
(19, '500 GM', '500 GM', '3', 10, '2020-06-20 17:51:15'),
(20, '750 GM', '750 GM', '4', 10, '2020-06-20 17:51:15'),
(21, '1 KG', '1 KG', '5', 10, '2020-06-20 17:51:15'),
(22, '500 GM', '500 GM', '1.2', 11, '2020-06-20 17:51:15'),
(23, '750 GM', '750 GM', '1.8', 11, '2020-06-20 17:51:15'),
(24, '1 KG', '1 KG', '2.2', 11, '2020-06-20 17:51:15'),
(25, '500 GM', '500 GM', '1', 12, '2020-06-20 17:51:15'),
(26, '750 GM', '750 GM', '1.5', 12, '2020-06-20 17:51:15'),
(27, '1 KG', '1 KG', '1.8', 12, '2020-06-20 17:51:15'),
(28, '500 GM', '500 GM', '1', 13, '2020-06-20 17:51:15'),
(29, '750 GM', '750 GM', '1.5', 13, '2020-06-20 17:51:15'),
(30, '1 KG', '1 KG', '1.8', 13, '2020-06-20 17:51:15'),
(31, '500 GM', '500 GM', '1', 14, '2020-06-20 17:51:15'),
(32, '750 GM', '750 GM', '1.5', 14, '2020-06-20 17:51:15'),
(33, '1 KG', '1 KG', '1.8', 14, '2020-06-20 17:51:15'),
(34, '500 GM', '500 GM', '1', 15, '2020-06-20 17:51:15'),
(35, '750 GM', '750 GM', '1.5', 15, '2020-06-20 17:51:15'),
(36, '1 KG', '1 KG', '1.8', 15, '2020-06-20 17:51:15'),
(37, '500 GM', '500 GM', '1.25', 16, '2020-06-20 17:51:15'),
(38, '750 GM', '750 GM', '1.75', 16, '2020-06-20 17:51:15'),
(39, '1 KG', '1 KG', '2', 16, '2020-06-20 17:51:15'),
(40, '500 GM', '500 GM', '1', 17, '2020-06-20 17:51:15'),
(41, '750 GM', '750 GM', '1.5', 17, '2020-06-20 17:51:16'),
(42, '1 KG', '1 KG', '1.8', 17, '2020-06-20 17:51:16'),
(43, '400 GM', '400 GM', '0.9', 18, '2020-06-20 17:51:16'),
(44, '400 GM', '400 GM', '0.9', 19, '2020-06-20 17:51:16'),
(45, '400 GM', '400 GM', '0.9', 20, '2020-06-20 17:51:16'),
(46, '400 GM', '400 GM', '0.8', 21, '2020-06-20 17:51:16'),
(47, '400 GM', '400 GM', '0.8', 22, '2020-06-20 17:51:16'),
(48, '300 GM', '300 GM', '2', 23, '2020-06-20 17:51:16'),
(49, '300 GM', '300 GM', '2', 24, '2020-06-20 17:51:16'),
(50, '300 GM', '300 GM', '2', 25, '2020-06-20 17:51:16'),
(51, '300 GM', '300 GM', '2', 26, '2020-06-20 17:51:16'),
(52, '300 GM', '300 GM', '2', 10, '2020-06-20 17:51:16'),
(53, '300 GM', '300 GM', '2', 14, '2020-06-20 17:51:16'),
(54, '300 GM', '300 GM', '2', 27, '2020-06-20 17:51:16'),
(55, '300 GM', '300 GM', '2', 28, '2020-06-20 17:51:16'),
(56, '495 GMS', '495 GMS', '2.5', 29, '2020-06-20 17:51:16'),
(57, '495 GMS', '495 GMS', '2.5', 30, '2020-06-20 17:51:16'),
(58, '495 GMS', '495 GMS', '2.5', 31, '2020-06-20 17:51:16'),
(59, '495 GMS', '495 GMS', '2.5', 14, '2020-06-20 17:51:16'),
(60, '495 GMS', '495 GMS', '2.5', 26, '2020-06-20 17:51:16'),
(61, '495 GMS', '495 GMS', '2.5', 32, '2020-06-20 17:51:16'),
(62, '495 GMS', '495 GMS', '2.5', 33, '2020-06-20 17:51:16'),
(63, '495 GMS', '495 GMS', '2.5', 34, '2020-06-20 17:51:16'),
(64, '180 GM', '180 GM', '1.5', 35, '2020-06-20 17:51:16'),
(65, '180 GM', '180 GM', '1.5', 36, '2020-06-20 17:51:16'),
(66, '180 GM', '180 GM', '1.5', 37, '2020-06-20 17:51:16'),
(67, '180 GM', '180 GM', '1.5', 38, '2020-06-20 17:51:16'),
(68, '180 GM', '180 GM', '1.5', 39, '2020-06-20 17:51:16'),
(70, '1 KG', '1 KG', '1.5', 41, '2020-06-20 17:51:16'),
(71, '750 GM', '750 GM', '2.5', 42, '2020-06-20 17:51:16'),
(72, '750 GM', '750 GM', '1.5', 43, '2020-06-20 17:51:16'),
(73, '750 GM', '750 GM', '1.5', 44, '2020-06-20 17:51:16'),
(74, '750 GM', '750 GM', '4', 45, '2020-06-20 17:51:16'),
(75, '750 GM', '750 GM', '2.5', 46, '2020-06-20 17:51:16'),
(76, '500g', '500g', '2.5', 47, '2020-06-20 17:51:16'),
(77, '250g', '250g', '1.25', 47, '2020-06-20 17:51:16'),
(78, '500g', '500g', '1.25', 48, '2020-06-20 17:51:16'),
(79, '250g', '250g', '0.625', 48, '2020-06-20 17:51:16'),
(80, '500g', '500g', '2.5', 49, '2020-06-20 17:51:16'),
(81, '250g', '250g', '1.25', 49, '2020-06-20 17:51:16'),
(82, '1 KG', '1 KG', '5', 50, '2020-06-20 17:51:16'),
(83, '500g', '500g', '2.5', 50, '2020-06-20 17:51:16'),
(84, '250g', '250g', '1.25', 50, '2020-06-20 17:51:16'),
(85, '1 KG', '1 KG', '8', 51, '2020-06-20 17:51:16'),
(86, '500g', '500g', '4', 51, '2020-06-20 17:51:16'),
(87, '250g', '250g', '2', 51, '2020-06-20 17:51:16'),
(88, '1 KG', '1 KG', '5', 52, '2020-06-20 17:51:16'),
(89, '500g', '500g', '2.5', 52, '2020-06-20 17:51:16'),
(90, '250g', '250g', '1.25', 52, '2020-06-20 17:51:16'),
(91, '1 KG', '1 KG', '5', 53, '2020-06-20 17:51:16'),
(92, '500g', '500g', '2.5', 53, '2020-06-20 17:51:16'),
(93, '250g', '250g', '1.25', 53, '2020-06-20 17:51:16'),
(94, '1 KG', '1 KG', '5', 54, '2020-06-20 17:51:16'),
(95, '500g', '500g', '2.5', 54, '2020-06-20 17:51:16'),
(96, '250g', '250g', '1.25', 54, '2020-06-20 17:51:16'),
(97, '1 KG', '1 KG', '11', 55, '2020-06-20 17:51:16'),
(98, '500g', '500g', '5.5', 55, '2020-06-20 17:51:17'),
(99, '250g', '250g', '2.75', 55, '2020-06-20 17:51:17'),
(100, '1 KG', '1 KG', '5', 56, '2020-06-20 17:51:17'),
(101, '500g', '500g', '2.5', 56, '2020-06-20 17:51:17'),
(102, '250g', '250g', '1.25', 56, '2020-06-20 17:51:17'),
(103, '1 KG', '1 KG', '5', 57, '2020-06-20 17:51:17'),
(104, '500g', '500g', '2.5', 57, '2020-06-20 17:51:17'),
(105, '250g', '250g', '1.25', 57, '2020-06-20 17:51:17'),
(106, '1 KG', '1 KG', '4', 58, '2020-06-20 17:51:17'),
(107, '500g', '500g', '2', 58, '2020-06-20 17:51:17'),
(108, '250g', '250g', '1', 58, '2020-06-20 17:51:17'),
(109, '1 KG', '1 KG', '5', 59, '2020-06-20 17:51:17'),
(110, '500g', '500g', '2.5', 59, '2020-06-20 17:51:17'),
(111, '250g', '250g', '1.25', 59, '2020-06-20 17:51:17'),
(112, '1 KG', '1 KG', '5', 60, '2020-06-20 17:51:17'),
(113, '500g', '500g', '2.5', 60, '2020-06-20 17:51:17'),
(114, '250g', '250g', '1.25', 60, '2020-06-20 17:51:17'),
(115, '1 KG', '1 KG', '10', 61, '2020-06-20 17:51:17'),
(116, '500g', '500g', '5', 61, '2020-06-20 17:51:17'),
(117, '250g', '250g', '2.5', 61, '2020-06-20 17:51:17'),
(118, '1 KG', '1 KG', '10', 62, '2020-06-20 17:51:17'),
(119, '500g', '500g', '5', 62, '2020-06-20 17:51:17'),
(120, '250g', '250g', '2.5', 62, '2020-06-20 17:51:17'),
(121, '1 KG', '1 KG', '10', 63, '2020-06-20 17:51:17'),
(122, '500g', '500g', '5', 63, '2020-06-20 17:51:17'),
(123, '250g', '250g', '2.5', 63, '2020-06-20 17:51:17'),
(124, '1 KG', '1 KG', '20', 64, '2020-06-20 17:51:17'),
(125, '500g', '500g', '10', 64, '2020-06-20 17:51:17'),
(126, '250g', '250g', '5', 64, '2020-06-20 17:51:17'),
(127, '1 KG', '1 KG', '8', 65, '2020-06-20 17:51:17'),
(128, '500g', '500g', '4', 65, '2020-06-20 17:51:17'),
(129, '250g', '250g', '2', 65, '2020-06-20 17:51:17'),
(130, '1 KG', '1 KG', '8', 66, '2020-06-20 17:51:17'),
(131, '500g', '500g', '4', 66, '2020-06-20 17:51:17'),
(132, '250g', '250g', '2', 66, '2020-06-20 17:51:17'),
(133, '1 KG', '1 KG', '5', 67, '2020-06-20 17:51:17'),
(134, '500g', '500g', '2.5', 67, '2020-06-20 17:51:17'),
(135, '250g', '250g', '1.25', 67, '2020-06-20 17:51:17'),
(136, '1 KG', '1 KG', '9', 68, '2020-06-20 17:51:17'),
(137, '500g', '500g', '4.5', 68, '2020-06-20 17:51:17'),
(138, '250g', '250g', '2.25', 68, '2020-06-20 17:51:17'),
(139, '1 KG', '1 KG', '4', 69, '2020-06-20 17:51:17'),
(140, '500g', '500g', '2', 69, '2020-06-20 17:51:17'),
(141, '250g', '250g', '1', 69, '2020-06-20 17:51:17'),
(142, '1 KG', '1 KG', '5', 70, '2020-06-20 17:51:17'),
(143, '500g', '500g', '2.5', 70, '2020-06-20 17:51:17'),
(144, '250g', '250g', '1.25', 70, '2020-06-20 17:51:17'),
(145, '1 KG', '1 KG', '11', 71, '2020-06-20 17:51:17'),
(146, '500g', '500g', '5.5', 71, '2020-06-20 17:51:17'),
(147, '250g', '250g', '2.75', 71, '2020-06-20 17:51:17'),
(148, '1 KG', '1 KG', '8', 72, '2020-06-20 17:51:17'),
(149, '500g', '500g', '4', 72, '2020-06-20 17:51:17'),
(150, '250g', '250g', '2', 72, '2020-06-20 17:51:17'),
(151, '1 KG', '1 KG', '10', 73, '2020-06-20 17:51:17'),
(152, '500g', '500g', '5', 73, '2020-06-20 17:51:17'),
(153, '250g', '250g', '2.5', 73, '2020-06-20 17:51:17'),
(154, '1 KG', '1 KG', '15', 74, '2020-06-20 17:51:17'),
(155, '500g', '500g', '7.5', 74, '2020-06-20 17:51:18'),
(156, '250g', '250g', '3.75', 74, '2020-06-20 17:51:18'),
(157, '1 KG', '1 KG', '12', 75, '2020-06-20 17:51:18'),
(158, '500g', '500g', '6', 75, '2020-06-20 17:51:18'),
(159, '250g', '250g', '3', 75, '2020-06-20 17:51:18'),
(160, '1 KG', '1 KG', '15', 76, '2020-06-20 17:51:18'),
(161, '500g', '500g', '7.5', 76, '2020-06-20 17:51:18'),
(162, '250g', '250g', '3.75', 76, '2020-06-20 17:51:18'),
(163, '1 KG', '1 KG', '15', 77, '2020-06-20 17:51:18'),
(164, '500g', '500g', '7.5', 77, '2020-06-20 17:51:18'),
(165, '250g', '250g', '3.75', 77, '2020-06-20 17:51:18'),
(166, '1 KG', '1 KG', '10', 78, '2020-06-20 17:51:18'),
(167, '500g', '500g', '5', 78, '2020-06-20 17:51:18'),
(168, '250g', '250g', '2.5', 78, '2020-06-20 17:51:18'),
(169, '1 KG', '1 KG', '20', 79, '2020-06-20 17:51:18'),
(170, '500g', '500g', '10', 79, '2020-06-20 17:51:18'),
(171, '250g', '250g', '5', 79, '2020-06-20 17:51:18'),
(172, '1 KG', '1 KG', '10', 80, '2020-06-20 17:51:18'),
(173, '500g', '500g', '5', 80, '2020-06-20 17:51:18'),
(174, '250g', '250g', '2.5', 80, '2020-06-20 17:51:18'),
(175, '1 KG', '1 KG', '10', 81, '2020-06-20 17:51:18'),
(176, '500g', '500g', '5', 81, '2020-06-20 17:51:18'),
(177, '250g', '250g', '2.5', 81, '2020-06-20 17:51:18'),
(178, '1 KG', '1 KG', '12', 82, '2020-06-20 17:51:18'),
(179, '500g', '500g', '6', 82, '2020-06-20 17:51:18'),
(180, '250g', '250g', '3', 82, '2020-06-20 17:51:18'),
(181, '1 KG', '1 KG', '9', 83, '2020-06-20 17:51:18'),
(182, '500g', '500g', '4.5', 83, '2020-06-20 17:51:18'),
(183, '250g', '250g', '2.25', 83, '2020-06-20 17:51:18'),
(184, '1 KG', '1 KG', '5', 84, '2020-06-20 17:51:18'),
(185, '500g', '500g', '2.5', 84, '2020-06-20 17:51:18'),
(186, '250g', '250g', '1.25', 84, '2020-06-20 17:51:18'),
(187, '1 KG', '1 KG', '5', 85, '2020-06-20 17:51:18'),
(188, '500g', '500g', '2.5', 85, '2020-06-20 17:51:18'),
(189, '250g', '250g', '1.25', 85, '2020-06-20 17:51:18'),
(190, '1 KG', '1 KG', '4', 86, '2020-06-20 17:51:18'),
(191, '500g', '500g', '2', 86, '2020-06-20 17:51:18'),
(192, '250g', '250g', '1', 86, '2020-06-20 17:51:18'),
(193, '1 KG', '1 KG', '5', 87, '2020-06-20 17:51:18'),
(194, '500g', '500g', '2.5', 87, '2020-06-20 17:51:18'),
(195, '250g', '250g', '1.25', 87, '2020-06-20 17:51:18'),
(196, '1 KG', '1 KG', '8.000', 88, '2020-06-20 17:51:18'),
(197, '500g', '500g', '4.000', 88, '2020-06-20 17:51:18'),
(198, '250g', '250g', '1.99', 88, '2020-06-20 17:51:18'),
(199, '1 KG', '1 KG', '9', 89, '2020-06-20 17:51:18'),
(200, '500g', '500g', '4.5', 89, '2020-06-20 17:51:18'),
(201, '250g', '250g', '2.25', 89, '2020-06-20 17:51:18'),
(202, '1 KG', '1 KG', '6', 90, '2020-06-20 17:51:18'),
(203, '500g', '500g', '3', 90, '2020-06-20 17:51:18'),
(204, '250g', '250g', '1.5', 90, '2020-06-20 17:51:18'),
(205, '1 KG', '1 KG', '7', 91, '2020-06-20 17:51:18'),
(206, '500g', '500g', '3.5', 91, '2020-06-20 17:51:18'),
(207, '250g', '250g', '1.75', 91, '2020-06-20 17:51:18'),
(208, '1 KG', '1 KG', '8', 92, '2020-06-20 17:51:18'),
(209, '500g', '500g', '4', 92, '2020-06-20 17:51:19'),
(210, '250g', '250g', '2', 92, '2020-06-20 17:51:19'),
(211, '1 KG', '1 KG', '9', 93, '2020-06-20 17:51:19'),
(212, '500g', '500g', '4.5', 93, '2020-06-20 17:51:19'),
(213, '250g', '250g', '2.25', 93, '2020-06-20 17:51:19'),
(214, '1 KG', '1 KG', '7', 94, '2020-06-20 17:51:19'),
(215, '500g', '500g', '3.5', 94, '2020-06-20 17:51:19'),
(216, '250g', '250g', '1.75', 94, '2020-06-20 17:51:19'),
(217, '1 KG', '1 KG', '8', 95, '2020-06-20 17:51:19'),
(218, '500g', '500g', '4', 96, '2020-06-20 17:51:19'),
(219, '250g', '250g', '2', 96, '2020-06-20 17:51:19'),
(220, '1 KG', '1 KG', '6', 97, '2020-06-20 17:51:19'),
(221, '500g', '500g', '3', 97, '2020-06-20 17:51:19'),
(222, '250g', '250g', '1.5', 97, '2020-06-20 17:51:19'),
(223, '1 KG', '1 KG', '6', 98, '2020-06-20 17:51:19'),
(224, '500g', '500g', '3', 98, '2020-06-20 17:51:19'),
(225, '250g', '250g', '1.5', 98, '2020-06-20 17:51:19'),
(226, '1 KG', '1 KG', '3', 99, '2020-06-20 17:51:19'),
(227, '500g', '500g', '1.5', 99, '2020-06-20 17:51:19'),
(228, '250g', '250g', '0.75', 99, '2020-06-20 17:51:19'),
(229, '1 KG', '1 KG', '12', 100, '2020-06-20 17:51:19'),
(230, '500g', '500g', '6', 100, '2020-06-20 17:51:19'),
(231, '250g', '250g', '3', 100, '2020-06-20 17:51:19'),
(232, 'large', 'large ar', '2.000', 102, '2020-09-10 16:30:44'),
(234, '495 GMS', '495 جرام', '2.500', 101, '2020-09-17 12:20:43');

-- --------------------------------------------------------

--
-- Table structure for table `sub_category_comments`
--

CREATE TABLE `sub_category_comments` (
  `comment_id` int(11) NOT NULL,
  `client_id` varchar(255) NOT NULL,
  `sub_category_id` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `rate` varchar(255) NOT NULL,
  `viewed` int(11) NOT NULL,
  `date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sub_category_comments`
--

INSERT INTO `sub_category_comments` (`comment_id`, `client_id`, `sub_category_id`, `comment`, `rate`, `viewed`, `date`) VALUES
(5, '18', '6', 'Gooddd', '4', 0, '2020-07-21 17:58:17'),
(6, '18', '5', 'Great', '3', 0, '2020-07-21 18:48:52'),
(7, '18', '2', 'Greattt', '4', 0, '2020-07-21 18:54:44');

-- --------------------------------------------------------

--
-- Table structure for table `support`
--

CREATE TABLE `support` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `title_en` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `number` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `support`
--

INSERT INTO `support` (`id`, `title`, `title_en`, `number`) VALUES
(1, 'في حالة وجود أي مشكلة فنية في التطبيق برجاء الإتصال على الرقم التالي', 'In case of any technical problem in the application please contact the following number', '33405497');

-- --------------------------------------------------------

--
-- Table structure for table `terms_conditions`
--

CREATE TABLE `terms_conditions` (
  `id` int(11) NOT NULL,
  `type` int(11) NOT NULL COMMENT 'depit=>1 & credit=>2',
  `name_ar` text CHARACTER SET utf8 NOT NULL,
  `name_en` text CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `terms_conditions`
--

INSERT INTO `terms_conditions` (`id`, `type`, `name_ar`, `name_en`) VALUES
(1, 1, 'الرجاء قراءة  شروط الاستخدام و إخلاء المسؤلية بعناية قبل استخدام بطاقة الإئتمان.\r\n\r\n-يجب أن تكون بطاقات الإئتمان/السحب الآلي المستخدمة للسداد على موقع عرنجوش أو تطبيقاته ملك المستخدم.\r\n- كل عملية سداد تتم بعد التحقق من صلاحية البطاقة و مستخدمها من قبل الشركة المسئولة عن تشغيل بوابة الدفع الالكتروني\r\n• يلتزم العميل عند استلامه للطلب بالسداد النقدى لاى رسوم مستحقة عن اية اضافات ( خاصة او عامه) لم تكن مضافة وقت اتمام عملية الشراء .\r\n\r\n للعميل الحق في الغاء الطلب إذا تاخر التوصيل أكثر من الوقت المحدد للتوصيل والمذكور على صفحة معلومات المطعم في موقع عرنجوش .وسوف يتم إعادة القيمة المدفوعة إلى حساب العميل ، بعد التحقق من سبب التأخير .\r\n\r\n• للعميل الحق في الغاء الطلب إذا تاخر التوصيل أكثر من الوقت المحدد للتوصيل والمذكور على صفحة معلومات المطعم في موقع عرنجوش. وسوف يتم إعادة القيمة المدفوعة إلى حساب العميل ،بعد التحقق من سبب التأخير .\r\n• للعميل الحق في الغاء الطلب بدون سبب بحد أقصى 45 دقيقة من اتمام عملية الشراء .\r\n\r\n• تستغرق اجراءات استرداد العميل لاي مبالغ مستحقة له حسب الانظمة المتبعة داخل البنك التي تعود اليه البطاقة وبمدة اقصاها 21 يوم عمل ، في حال التاخير عن رد المبلغ الى الحساب على العميل مراجعة بنكه ، وسوف نقوم بارسال بريد الكتروني يتضمن نسخه من أشعار الاسترجاع الصادر من بوابة الدفع الالكتروني حتى يتمكن العميل من المتابعة في حال تأخر بنكه .\r\n\r\n • العملاء الذين يستخدمون خدمة بوابة الدفع الالكتروني يجب أن تكون ارقام هواتف العميل محدثة وصالحة .\r\n\r\n • اذا لم يتوفر صنف معين من الطلب الذي قام به العميل ، يحق للعميل استبداله بصنف اخر بموافقة العميل والمطعم او يحق له الغاء الطلب وانشاء طلب اخر عن طريق موقع عرنجوش او تطبيقاته ، وسوف يتم رد القيمة المدفوعه للطلب الملغي الى حساب العميل خلال المدة المذكورة في البند السادس .\r\n\r\n• يقر العميل بقبول جميع شروط و أحكام الخدمة في حال استخدامها .', 'Please read the following terms of use and disclaimers carefully before using Credit Card:\r\n\r\n- Credit/Debit Cards used in placing orders through the online payment gateway facility on Arangosh website or applications must belong to the user.\r\n\r\n- All transactions are being processed after on online payment gateway service provider\'s validation process.\r\n\r\n-The customer is liable to pay cash on delivery to the driver in case the \"Special Request\" or \"General Request\" may requires extra charges required by restaurants.<br/>.\r\n\r\n-You may cancel the order if the delivery time exceeded the restaurant delivery promise time highlighted in the restaurant info section, your paid amount will be refunded back to your account, and after validating the delay reason.\r\n\r\n-The customer order cancellation is limited to a maximum time of 45 minutes of placing the order.\r\n\r\n-The customer refund procedure depend on the charge back process of customer\'s bank with maximum period of 21 working days, and then the customer has to follow on with his bank in case any delay in crediting his account back with the amount previously paid by him. Arangosh will be sending an email to the customer that contains a printout of the refund advice printed from online payment gateway as reference in case the customer wants to revise the bank with.\r\n- Customers using the online payment facility are requested to be available on their respective contact numbers.\r\n\r\n-If customer faces the inconvenience of a missing item informed by restaurant, both parties (restaurant and customer) can agree on a substitute item. In any other case, the customer can cancel his order and place a new order via Arangosh platforms, in this case the full amount of his canceled order will be refunded as mentioned above in item no. 6\r\n\r\n- The customer is entirely liable for placing an order using the Credit Cards facility after carefully reading all the terms & conditions');

-- --------------------------------------------------------

--
-- Table structure for table `testimonial`
--

CREATE TABLE `testimonial` (
  `id` int(11) NOT NULL,
  `image` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `date_added` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `testimonial`
--

INSERT INTO `testimonial` (`id`, `image`, `date_added`) VALUES
(65, 'http://www.promosbh.com/newsite/system/api/uploads/testimonial/65/1.png', '2020-10-13 12:04:57'),
(66, 'http://www.promosbh.com/newsite/system/api/uploads/testimonial/66/2.png', '2020-10-13 12:05:02'),
(67, 'http://www.promosbh.com/newsite/system/api/uploads/testimonial/67/3.png', '2020-10-13 12:05:06'),
(68, 'http://www.promosbh.com/newsite/system/api/uploads/testimonial/68/4.png', '2020-10-13 12:05:21'),
(69, 'http://www.promosbh.com/newsite/system/api/uploads/testimonial/69/5.png', '2020-10-13 12:05:24'),
(70, 'http://www.promosbh.com/newsite/system/api/uploads/testimonial/70/6.png', '2020-10-13 12:05:28'),
(71, 'http://www.promosbh.com/newsite/system/api/uploads/testimonial/71/7.png', '2020-10-13 12:05:32'),
(72, 'http://www.promosbh.com/newsite/system/api/uploads/testimonial/72/8.png', '2020-10-13 12:06:13'),
(73, 'http://www.promosbh.com/newsite/system/api/uploads/testimonial/73/9.png', '2020-10-13 12:06:18'),
(74, 'http://www.promosbh.com/newsite/system/api/uploads/testimonial/74/10.png', '2020-10-13 12:06:21'),
(75, 'http://www.promosbh.com/newsite/system/api/uploads/testimonial/75/11.png', '2020-10-13 12:06:26'),
(76, 'http://www.promosbh.com/newsite/system/api/uploads/testimonial/76/12.png', '2020-10-13 12:06:30'),
(78, 'http://www.promosbh.com/newsite/system/api/uploads/testimonial/78/13.png', '2020-10-13 12:08:08'),
(79, 'http://www.promosbh.com/newsite/system/api/uploads/testimonial/79/14.png', '2020-10-13 12:08:14'),
(80, 'http://www.promosbh.com/newsite/system/api/uploads/testimonial/80/15.png', '2020-10-13 12:08:19'),
(81, 'http://www.promosbh.com/newsite/system/api/uploads/testimonial/81/16.png', '2020-10-13 12:08:54'),
(82, 'http://www.promosbh.com/newsite/system/api/uploads/testimonial/82/17.png', '2020-10-13 12:09:00'),
(83, 'http://www.promosbh.com/newsite/system/api/uploads/testimonial/83/18.png', '2020-10-13 12:09:32'),
(84, 'http://www.promosbh.com/newsite/system/api/uploads/testimonial/84/19.png', '2020-10-13 12:09:36'),
(85, 'http://www.promosbh.com/newsite/system/api/uploads/testimonial/85/20.png', '2020-10-13 12:09:41'),
(86, 'http://www.promosbh.com/newsite/system/api/uploads/testimonial/86/21.png', '2020-10-13 12:09:46'),
(87, 'http://www.promosbh.com/newsite/system/api/uploads/testimonial/87/22.png', '2020-10-13 12:10:08'),
(88, 'http://www.promosbh.com/newsite/system/api/uploads/testimonial/88/23.png', '2020-10-13 12:10:13'),
(89, 'http://www.promosbh.com/newsite/system/api/uploads/testimonial/89/24.png', '2020-10-13 12:10:18'),
(90, 'http://www.promosbh.com/newsite/system/api/uploads/testimonial/90/25.png', '2020-10-13 12:10:24'),
(91, 'http://www.promosbh.com/newsite/system/api/uploads/testimonial/91/26.png', '2020-10-13 12:10:50'),
(92, 'http://www.promosbh.com/newsite/system/api/uploads/testimonial/92/27.png', '2020-10-13 12:10:56'),
(93, 'http://www.promosbh.com/newsite/system/api/uploads/testimonial/93/28.png', '2020-10-13 12:11:02'),
(94, 'http://www.promosbh.com/newsite/system/api/uploads/testimonial/94/29.png', '2020-10-13 12:11:06'),
(95, 'http://www.promosbh.com/newsite/system/api/uploads/testimonial/95/30.png', '2020-10-13 12:11:11'),
(96, 'http://www.promosbh.com/newsite/system/api/uploads/testimonial/96/26.png', '2020-10-13 12:11:33'),
(97, 'http://www.promosbh.com/newsite/system/api/uploads/testimonial/97/27.png', '2020-10-13 12:11:39'),
(98, 'http://www.promosbh.com/newsite/system/api/uploads/testimonial/98/33.png', '2020-10-13 12:11:59'),
(99, 'http://www.promosbh.com/newsite/system/api/uploads/testimonial/99/34.png', '2020-10-13 12:12:04'),
(100, 'http://www.promosbh.com/newsite/system/api/uploads/testimonial/100/35.png', '2020-10-13 12:12:09'),
(101, 'http://www.promosbh.com/newsite/system/api/uploads/testimonial/101/36.png', '2020-10-13 12:12:13'),
(102, 'http://www.promosbh.com/newsite/system/api/uploads/testimonial/102/37.png', '2020-10-13 12:12:19');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_type` tinyint(2) NOT NULL,
  `orders` int(11) NOT NULL,
  `users` int(11) NOT NULL,
  `clients` int(11) NOT NULL,
  `statics` int(11) NOT NULL,
  `problems` int(11) NOT NULL,
  `comments` int(11) NOT NULL,
  `reports` int(11) NOT NULL,
  `about` int(11) NOT NULL,
  `regions` int(11) NOT NULL,
  `messages` int(11) NOT NULL,
  `dishs` int(11) NOT NULL,
  `adds_and_removes` int(11) NOT NULL,
  `cat_and_sub` int(11) NOT NULL,
  `date_added` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_password`, `user_email`, `user_phone`, `user_image`, `user_type`, `orders`, `users`, `clients`, `statics`, `problems`, `comments`, `reports`, `about`, `regions`, `messages`, `dishs`, `adds_and_removes`, `cat_and_sub`, `date_added`) VALUES
(1, 'admin', '123456emcan', 'admin@gmail.com', '01200320004', '78-785827_user-profile-avatar-login-account-male-user-icon.png', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2020-10-11');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_type`
--

CREATE TABLE `vehicle_type` (
  `id` int(11) NOT NULL,
  `vehicle_name_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vehicle_name_ar` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  `display` int(255) NOT NULL DEFAULT 1,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vehicle_type`
--

INSERT INTO `vehicle_type` (`id`, `vehicle_name_en`, `vehicle_name_ar`, `display`, `date`) VALUES
(1, 'salon', 'صالون', 1, '2020-11-08 13:58:06'),
(2, 'Jeep 5 seats', 'جييب 5 مقاعد', 1, '2020-11-08 13:59:30'),
(3, 'Jeep 7 seats', 'جييب 7 مقاعد', 1, '2020-11-08 13:59:56'),
(4, 'sickle', 'سيكل', 1, '2020-11-08 14:00:18');

-- --------------------------------------------------------

--
-- Table structure for table `washers`
--

CREATE TABLE `washers` (
  `washer_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `washer_name_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `washer_name_ar` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `washer_desc_en` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `washer_desc_ar` text CHARACTER SET utf8 DEFAULT NULL,
  `washer_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT '  ',
  `display` int(11) DEFAULT 1,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `washers`
--

INSERT INTO `washers` (`washer_id`, `category_id`, `washer_name_en`, `washer_name_ar`, `washer_desc_en`, `washer_desc_ar`, `washer_image`, `display`, `date`) VALUES
(1, 1, 'East Laundry', 'مغسلة الشرق', 'All car wash supplies, direct bright polishing and workshops under one roof', 'كل مستلزمات مغاسل السيارات التلميع الساطع المباشر والورش تحت سقف واحد ', 'http://fastcleanbh.com/system/api/uploads/Washers/1/2018_6_5_14_59_28_727.jpg\r\n', 1, '2020-11-01 12:20:07'),
(2, 1, 'Colette Avila', 'Meghan Francis', 'Maxime doloremque quasi ullam lorem sit ipsum velit odio veritatis dolores ipsa beatae repudiandae consectetur', 'Velit quisquam tempora veritatis at pariatur Nobis ut sed esse tempore et temporibus molestiae labore omnis repudiandae maiores', 'http://fastcleanbh.com/system/api/uploads/Washers/2/about-us.jpg', 1, '2020-11-04 13:20:06'),
(3, 3, 'Sophia Burt', 'Joy Holt', 'Ipsum itaque quod sed ducimus quia lorem', 'Sunt ut qui saepe qui minus qui eum sunt nulla aute cupiditate voluptas dolor ut error quis a aut repudiandae', 'http://fastcleanbh.com/system/api/uploads/Washers/3/bahrain manama-2.jpg', 1, '2020-11-04 13:21:05');

-- --------------------------------------------------------

--
-- Table structure for table `washer_address`
--

CREATE TABLE `washer_address` (
  `id` int(11) NOT NULL,
  `washer_id` int(11) NOT NULL,
  `address_en` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `address_ar` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `lat` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `long` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `date` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `washer_address`
--

INSERT INTO `washer_address` (`id`, `washer_id`, `address_en`, `address_ar`, `lat`, `long`, `date`) VALUES
(1, 1, 'Street 889 next to Ali Elementary School', 'شارع 889 بجوار مدرسة عالي الابتدائيه', '26.088917', '50.555722', '2020-11-02 13:22:35');

-- --------------------------------------------------------

--
-- Table structure for table `washer_contact`
--

CREATE TABLE `washer_contact` (
  `id` int(11) NOT NULL,
  `washer_id` int(11) NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `whats_app` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `facebook` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `instagram` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `twitter` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `date` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `washer_contact`
--

INSERT INTO `washer_contact` (`id`, `washer_id`, `phone`, `whats_app`, `facebook`, `instagram`, `twitter`, `date`) VALUES
(1, 1, '999 888884', '999 888884', 'www.facebook.com', 'www.instagram.com', 'www.twitter.com', '2020-11-02 15:46:24');

-- --------------------------------------------------------

--
-- Table structure for table `washer_images`
--

CREATE TABLE `washer_images` (
  `id` int(11) NOT NULL,
  `washer_id` int(11) DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `date_added` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `washer_images`
--

INSERT INTO `washer_images` (`id`, `washer_id`, `image`, `date_added`) VALUES
(2, 1, 'http://fastcleanbh.com/system/api/uploads/Washer_images/2/Bahrain-Manama.png', '2020-11-02 09:56:25'),
(3, 1, 'http://fastcleanbh.com/system/api/uploads/Washer_images/3/project.png', '2020-11-02 09:56:25'),
(4, 1, 'http://fastcleanbh.com/system/api/uploads/Washer_images/4/Rectangle 13 copy.png', '2020-11-02 09:56:25'),
(5, 1, 'http://fastcleanbh.com/system/api/uploads/Washer_images/5/sercives.png', '2020-11-02 09:56:25'),
(6, 1, 'http://fastcleanbh.com/system/api/uploads/Washer_images/6/share (1).png', '2020-11-02 09:56:25'),
(7, 1, 'http://fastcleanbh.com/system/api/uploads/Washer_images/7/sms (2).png', '2020-11-02 09:56:25');

-- --------------------------------------------------------

--
-- Table structure for table `work_time`
--

CREATE TABLE `work_time` (
  `id` int(11) NOT NULL,
  `washer_id` int(11) NOT NULL,
  `day_en` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `day_ar` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `from` time DEFAULT NULL,
  `to` time DEFAULT NULL,
  `date` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `work_time`
--

INSERT INTO `work_time` (`id`, `washer_id`, `day_en`, `day_ar`, `from`, `to`, `date`) VALUES
(1, 1, 'Saturday ', 'السبت', '11:00:00', '21:00:00', '2020-11-03 10:57:06'),
(2, 1, 'Sunday', 'الاحد', '11:00:00', '21:00:00', '2020-11-03 10:57:26'),
(3, 1, 'monday', 'الاثنين', '11:00:00', '21:00:00', '2020-11-03 10:57:55'),
(4, 1, 'Tuesday', 'الثلاثاء', '11:00:00', '21:00:00', '2020-11-03 10:58:33'),
(5, 1, 'Wednesday', 'الاربعاء', '11:00:00', '21:00:00', '2020-11-03 10:58:52'),
(6, 1, 'Thursday', 'الخميس', '11:00:00', '21:00:00', '2020-11-03 10:59:15'),
(7, 1, 'Friday', 'الجمعه', '11:00:00', '00:00:00', '2020-11-03 10:59:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `branches_regions`
--
ALTER TABLE `branches_regions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`client_id`);

--
-- Indexes for table `client_addresses`
--
ALTER TABLE `client_addresses`
  ADD PRIMARY KEY (`client_address_id`);

--
-- Indexes for table `client_fav`
--
ALTER TABLE `client_fav`
  ADD PRIMARY KEY (`fav_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `complaints`
--
ALTER TABLE `complaints`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaint_images`
--
ALTER TABLE `complaint_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_links`
--
ALTER TABLE `contact_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivered_way`
--
ALTER TABLE `delivered_way`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `devices`
--
ALTER TABLE `devices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `device_token`
--
ALTER TABLE `device_token`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dish_of_day`
--
ALTER TABLE `dish_of_day`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `latest`
--
ALTER TABLE `latest`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages_type`
--
ALTER TABLE `messages_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `most_request_sub`
--
ALTER TABLE `most_request_sub`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `order_delete_reason`
--
ALTER TABLE `order_delete_reason`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `our_team`
--
ALTER TABLE `our_team`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parent_categories`
--
ALTER TABLE `parent_categories`
  ADD PRIMARY KEY (`parent_category_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `regions`
--
ALTER TABLE `regions`
  ADD PRIMARY KEY (`region_id`);

--
-- Indexes for table `removes`
--
ALTER TABLE `removes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`service_id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscription_type`
--
ALTER TABLE `subscription_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`sub_category_id`);

--
-- Indexes for table `sub_categories_addition_prices`
--
ALTER TABLE `sub_categories_addition_prices`
  ADD PRIMARY KEY (`sub_category_addition_price_id`);

--
-- Indexes for table `sub_categories_size_prices`
--
ALTER TABLE `sub_categories_size_prices`
  ADD PRIMARY KEY (`sub_category_size_price_id`);

--
-- Indexes for table `sub_category_comments`
--
ALTER TABLE `sub_category_comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `support`
--
ALTER TABLE `support`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `terms_conditions`
--
ALTER TABLE `terms_conditions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonial`
--
ALTER TABLE `testimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `vehicle_type`
--
ALTER TABLE `vehicle_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `washers`
--
ALTER TABLE `washers`
  ADD PRIMARY KEY (`washer_id`);

--
-- Indexes for table `washer_address`
--
ALTER TABLE `washer_address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `washer_contact`
--
ALTER TABLE `washer_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `washer_images`
--
ALTER TABLE `washer_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `work_time`
--
ALTER TABLE `work_time`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `branches_regions`
--
ALTER TABLE `branches_regions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `client_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `client_addresses`
--
ALTER TABLE `client_addresses`
  MODIFY `client_address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `client_fav`
--
ALTER TABLE `client_fav`
  MODIFY `fav_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `complaints`
--
ALTER TABLE `complaints`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `complaint_images`
--
ALTER TABLE `complaint_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contact_links`
--
ALTER TABLE `contact_links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `devices`
--
ALTER TABLE `devices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `device_token`
--
ALTER TABLE `device_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=270;

--
-- AUTO_INCREMENT for table `dish_of_day`
--
ALTER TABLE `dish_of_day`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `latest`
--
ALTER TABLE `latest`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `messages_type`
--
ALTER TABLE `messages_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `most_request_sub`
--
ALTER TABLE `most_request_sub`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `order_delete_reason`
--
ALTER TABLE `order_delete_reason`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `our_team`
--
ALTER TABLE `our_team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `parent_categories`
--
ALTER TABLE `parent_categories`
  MODIFY `parent_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `regions`
--
ALTER TABLE `regions`
  MODIFY `region_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `removes`
--
ALTER TABLE `removes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscription_type`
--
ALTER TABLE `subscription_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `sub_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT for table `sub_categories_addition_prices`
--
ALTER TABLE `sub_categories_addition_prices`
  MODIFY `sub_category_addition_price_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `testimonial`
--
ALTER TABLE `testimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `vehicle_type`
--
ALTER TABLE `vehicle_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `washers`
--
ALTER TABLE `washers`
  MODIFY `washer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `washer_address`
--
ALTER TABLE `washer_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `washer_contact`
--
ALTER TABLE `washer_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `washer_images`
--
ALTER TABLE `washer_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `work_time`
--
ALTER TABLE `work_time`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
