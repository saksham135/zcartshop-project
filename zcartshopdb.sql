-- phpMyAdmin SQL Dump
-- version 5.3.0-dev+20220826.811789df3c
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 29, 2023 at 04:21 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zcartshopdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(2, 'Adminstrator'),
(1, 'Manager');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_group_permissions`
--

INSERT INTO `auth_group_permissions` (`id`, `group_id`, `permission_id`) VALUES
(2, 1, 12),
(1, 1, 16),
(3, 2, 1),
(4, 2, 2),
(5, 2, 3),
(6, 2, 4),
(7, 2, 12),
(8, 2, 16),
(9, 2, 17),
(10, 2, 18),
(11, 2, 19),
(12, 2, 20),
(13, 2, 21),
(14, 2, 22),
(15, 2, 23),
(16, 2, 24);

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add category', 7, 'add_category'),
(26, 'Can change category', 7, 'change_category'),
(27, 'Can delete category', 7, 'delete_category'),
(28, 'Can view category', 7, 'view_category'),
(29, 'Can add subcategory', 8, 'add_subcategory'),
(30, 'Can change subcategory', 8, 'change_subcategory'),
(31, 'Can delete subcategory', 8, 'delete_subcategory'),
(32, 'Can view subcategory', 8, 'view_subcategory'),
(33, 'Can add product', 9, 'add_product'),
(34, 'Can change product', 9, 'change_product'),
(35, 'Can delete product', 9, 'delete_product'),
(36, 'Can view product', 9, 'view_product'),
(37, 'Can add brand', 10, 'add_brand'),
(38, 'Can change brand', 10, 'change_brand'),
(39, 'Can delete brand', 10, 'delete_brand'),
(40, 'Can view brand', 10, 'view_brand'),
(41, 'Can add cart', 11, 'add_cart'),
(42, 'Can change cart', 11, 'change_cart'),
(43, 'Can delete cart', 11, 'delete_cart'),
(44, 'Can view cart', 11, 'view_cart'),
(45, 'Can add order', 12, 'add_order'),
(46, 'Can change order', 12, 'change_order'),
(47, 'Can delete order', 12, 'delete_order'),
(48, 'Can view order', 12, 'view_order'),
(49, 'Can add order details', 13, 'add_orderdetails'),
(50, 'Can change order details', 13, 'change_orderdetails'),
(51, 'Can delete order details', 13, 'delete_orderdetails'),
(52, 'Can view order details', 13, 'view_orderdetails'),
(53, 'Can add profile', 14, 'add_profile'),
(54, 'Can change profile', 14, 'change_profile'),
(55, 'Can delete profile', 14, 'delete_profile'),
(56, 'Can view profile', 14, 'view_profile'),
(57, 'Can add shop by catgory', 15, 'add_shopbycatgory'),
(58, 'Can change shop by catgory', 15, 'change_shopbycatgory'),
(59, 'Can delete shop by catgory', 15, 'delete_shopbycatgory'),
(60, 'Can view shop by catgory', 15, 'view_shopbycatgory');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$600000$2IcG8cQsr4a31GWgKfH4cH$iBgH4HXHRZhqW8pMAKnkHz9pDkovIkZ0ekNOVpCR3IM=', '2023-09-28 15:59:35.804587', 1, 'sam25', '', '', 'bhatiasaksham659@gmail.com', 1, 1, '2023-08-17 07:17:47.655484'),
(2, 'pbkdf2_sha256$600000$zRqcR0xN1uiis5uMlOoRCN$TjnMf827H554xiklM1i62sgrRu84/n6zctqgyTFRAt0=', NULL, 0, 'Myadmin12', '', '', '', 1, 1, '2023-08-17 07:19:15.000000'),
(3, 'pbkdf2_sha256$600000$YNX980wxfUnt2SToDXJ6kl$vLecUxi5XXqq/IaTqFehh/h/q6qt7t+Kau0uKOO5w9E=', '2023-09-28 16:02:53.272546', 0, 'saksham12', '', '', 'mrsam2504@gmail.com', 0, 1, '2023-08-24 15:03:30.487536'),
(4, 'pbkdf2_sha256$600000$dbsLbuXlOgKfnGEpGAgJ7E$KS1mORSqx5GdGcmdgoQonN+mwmVaoGTz48VoTEvR5Og=', '2023-08-27 08:06:06.291111', 0, 'hitika32', '', '', 'hitika32@gmail.com', 0, 1, '2023-08-27 08:05:54.797302'),
(5, 'pbkdf2_sha256$600000$z4kPyo4X2RJ5peMKk4kopl$8lQYAp9y9CilfLk/dD8mv2+WIY7Fs+m6mCnUzg1RfEQ=', '2023-09-19 19:06:09.645878', 0, 'abhi32', '', '', 'sam21@gmail.com', 0, 1, '2023-09-19 19:05:59.418824'),
(6, 'pbkdf2_sha256$600000$tUUgj2wfTMb0dgoyxQP3L1$5PTZX0WSTPHzj3ftxeHBWQcjkBPEt6l2a7cy6LVZ/uE=', '2023-09-28 16:07:52.572766', 0, 'kiran24', '', '', 'kiran123@gmail.com', 0, 1, '2023-09-28 16:07:46.424055');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user_groups`
--

INSERT INTO `auth_user_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `clothesapp_brand`
--

CREATE TABLE `clothesapp_brand` (
  `id` bigint(20) NOT NULL,
  `brand_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `clothesapp_brand`
--

INSERT INTO `clothesapp_brand` (`id`, `brand_name`) VALUES
(1, 'Levis'),
(2, 'Peter England'),
(3, 'Pepe'),
(4, 'Van Heusen'),
(5, 'Puma'),
(6, 'Roadster'),
(7, 'Adidas'),
(8, 'Noise'),
(9, 'Titan'),
(10, 'Timex'),
(11, 'Apple');

-- --------------------------------------------------------

--
-- Table structure for table `clothesapp_cart`
--

CREATE TABLE `clothesapp_cart` (
  `id` bigint(20) NOT NULL,
  `price` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `total_cost` int(11) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `username_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `clothesapp_category`
--

CREATE TABLE `clothesapp_category` (
  `id` bigint(20) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `product_type_category_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `clothesapp_category`
--

INSERT INTO `clothesapp_category` (`id`, `category_name`, `product_type_category_id`) VALUES
(3, 'Casual wear', 1),
(4, 'Formal wear', 1),
(5, 'Sportswear', 1),
(7, 'Mobiles', 2),
(8, 'Watches', 2),
(10, 'Casual Shoes', 3),
(11, 'Formal Shoes', 3);

-- --------------------------------------------------------

--
-- Table structure for table `clothesapp_order`
--

CREATE TABLE `clothesapp_order` (
  `id` bigint(20) NOT NULL,
  `order_date` datetime(6) NOT NULL,
  `shipping_charges` int(11) NOT NULL,
  `grand_total` int(11) NOT NULL,
  `payment_method` varchar(16) NOT NULL,
  `address` longtext NOT NULL,
  `phone` int(11) NOT NULL,
  `zip` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username_id` int(11) NOT NULL,
  `order_status` varchar(15) DEFAULT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `clothesapp_order`
--

INSERT INTO `clothesapp_order` (`id`, `order_date`, `shipping_charges`, `grand_total`, `payment_method`, `address`, `phone`, `zip`, `email`, `username_id`, `order_status`, `name`) VALUES
(1, '2023-09-10 16:25:47.515198', 0, 4800, 'cod', 'H.NO.W.T.15 BASTI SHEIKH', 2147483647, 144002, 'bhatiasaksham659@gmail.com', 1, 'received', 'Saksham Bhatia'),
(2, '2023-09-12 18:48:36.325668', 0, 4500, 'gpay', 'H.NO.W.T.15', 2147483647, 144002, 'mrsam2504@gmail.com', 3, 'received', 'Kiran'),
(3, '2023-09-12 19:09:23.912667', 100, 1700, 'cod', 'Jalandhar', 2147483647, 1440001, 'hitika32@gmail.com', 3, 'received', 'Ashok'),
(4, '2023-09-18 18:40:44.251719', 0, 4500, 'paytm', 'H.NO.W.T.15 BASTI SHEIKH', 921606651, 14003, 'bhatiasaksham659@gmail.com', 3, 'received', 'Hitika'),
(5, '2023-09-28 13:47:05.787765', 100, 2500, 'paytm', 'H.NO.W.T.15 BASTI SHEIKH', 12345566, 144002, 'bhatiasaksham659@gmail.com', 3, 'received', 'Saksham Bhatia'),
(6, '2023-09-28 16:14:52.703996', 100, 2300, 'cod', 'H.NO.W.T.15 BASTI SHEIKH', 2147483647, 14001, 'bhatiak840@gmail.com', 6, 'received', 'Kiran'),
(7, '2023-09-29 01:59:48.758950', 0, 4500, 'gpay', 'H.NO.W.T.15 BASTI SHEIKH', 2147483647, 13001, 'bhatiasakhsam659@gmail.com', 6, 'received', 'Ashok');

-- --------------------------------------------------------

--
-- Table structure for table `clothesapp_orderdetails`
--

CREATE TABLE `clothesapp_orderdetails` (
  `id` bigint(20) NOT NULL,
  `pid_id` bigint(20) NOT NULL,
  `price` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `total_cost` int(11) NOT NULL,
  `order_no_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `clothesapp_orderdetails`
--

INSERT INTO `clothesapp_orderdetails` (`id`, `pid_id`, `price`, `qty`, `total_cost`, `order_no_id`) VALUES
(1, 6, 1200, 4, 4800, 1),
(2, 5, 1500, 3, 4500, 2),
(3, 3, 800, 2, 1600, 3),
(4, 5, 1500, 3, 4500, 4),
(5, 9, 800, 3, 2400, 5),
(6, 11, 1100, 2, 2200, 6),
(7, 10, 1500, 3, 4500, 7);

-- --------------------------------------------------------

--
-- Table structure for table `clothesapp_product`
--

CREATE TABLE `clothesapp_product` (
  `id` bigint(20) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `subcategory_id` bigint(20) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `description` longtext DEFAULT NULL,
  `discounted_price` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `brand_name_id` bigint(20) DEFAULT NULL,
  `for_gender` varchar(7) DEFAULT NULL,
  `for_size` varchar(1) DEFAULT NULL,
  `product_dimensions` varchar(100) NOT NULL,
  `Packer` longtext NOT NULL,
  `product_image1` varchar(100) DEFAULT NULL,
  `featured` tinyint(1) NOT NULL,
  `manufacturing_date` date DEFAULT NULL,
  `entry_datetime` datetime(6) DEFAULT NULL,
  `site_url` varchar(200) DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `product_image2` varchar(100) DEFAULT NULL,
  `product_image3` varchar(100) DEFAULT NULL,
  `additional_description` longtext DEFAULT NULL,
  `product_type_category_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `clothesapp_product`
--

INSERT INTO `clothesapp_product` (`id`, `product_name`, `category_id`, `subcategory_id`, `Quantity`, `description`, `discounted_price`, `price`, `brand_name_id`, `for_gender`, `for_size`, `product_dimensions`, `Packer`, `product_image1`, `featured`, `manufacturing_date`, `entry_datetime`, `site_url`, `update_time`, `product_image2`, `product_image3`, `additional_description`, `product_type_category_id`) VALUES
(1, 'Peter England T-Shirt', 3, 2, 3, '<p><strong>The Lifestyle Co Women Beautiful Charcoal Typography New Age Tshirt</strong></p>', 1200, 1800, 2, 'female', 'm', '27 x 25 x 3 cm; 190 Grams', 'Bewakoof Brands;4Th Floor; Kerom Building;Plot No; A-112,Wagle Estate;Thane;Mumbai;400604', 'product_pics/ptf1.png', 1, '2023-08-21', NULL, NULL, '2023-09-05 17:02:04.532144', 'product_pics/ptf2.png', 'product_pics/ptf3.png', '', NULL),
(2, 'Van Heusen Men Suit', 4, 8, 10, '<p>Fomal Men Wear Suit&#39;s</p>', 1500, 2500, 4, 'male', 'l', '27 x 25 x 3 cm; 190 Grams', 'Van', 'product_pics/venhuesen1.png', 0, '2023-08-21', NULL, NULL, '2023-08-31 15:14:37.971704', 'product_pics/venhusen2.png', 'product_pics/venhusen3.png', NULL, NULL),
(3, 'Peter England Short\'s', 5, 1, 4, '<p>**100% cotton Based</p>', 800, 1500, 2, 'male', 'l', '27 x 25 x 3 cm; 190 Grams', 'Peter England!!', 'product_pics/peterenglandshort1.png', 1, '2023-08-20', '2023-08-20 17:12:28.000000', NULL, '2023-08-31 15:09:51.613248', 'product_pics/peterenglandshort2.png', 'product_pics/peterenglandshort3.png', NULL, NULL),
(4, 'Levi\'s Women Jeans', 3, 5, 20, '<p>*50% Cotton Based!!!</p>', 1800, 2500, 1, 'female', 'm', '27 x 25 x 3 cm; 190 Grams', 'Levis!!!', 'product_pics/leviswomenjean1.png', 1, '2023-08-21', '2023-08-21 15:32:43.012443', NULL, '2023-08-31 15:12:17.166631', 'product_pics/leviswomenjean2.png', 'product_pics/leviswomenjean3.png', NULL, NULL),
(5, 'Women Black Slim Fit Trousers', 4, 11, 5, '<p><strong>100% Original Products</strong></p>\r\n\r\n<p><strong>Pay on delivery might be available</strong></p>\r\n\r\n<p><strong>Easy 14 days returns and exchanges</strong></p>\r\n\r\n<p><strong>Try &amp; Buy might be available</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h4><strong>PRODUCT DETAILS&nbsp;</strong></h4>\r\n\r\n<p>Black solid mid-rise formal trousers, has a hook and bar closure, two pockets on the front and two mock pockets at the back</p>\r\n\r\n<h4><strong>Size &amp; Fit</strong></h4>\r\n\r\n<p>The model (height 5&#39;8&quot;) is wearing a size 28</p>\r\n\r\n<h4><strong>Material &amp; Care</strong></h4>\r\n\r\n<p>65% polyester, 35% rayon<br />\r\nMachine-wash</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>Waist Rise</p>\r\n\r\n			<p>Mid-Rise</p>\r\n			</td>\r\n			<td>\r\n			<p>Length</p>\r\n\r\n			<p>Regular</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Fit</p>\r\n\r\n			<p>Regular Fit</p>\r\n			</td>\r\n			<td>\r\n			<p>Print or Pattern Type</p>\r\n\r\n			<p>Solid</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Weave Type</p>\r\n\r\n			<p>Woven</p>\r\n			</td>\r\n			<td>\r\n			<p>Fly Type</p>\r\n\r\n			<p>Zip</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>', 1500, 3000, 3, 'female', 's', '27 x 25 x 3 cm; 190 Grams', 'Pepe!!', 'product_pics/womentrouserpepe1.png', 1, '2023-08-21', '2023-08-21 15:35:22.257479', NULL, '2023-08-28 17:17:56.408108', 'product_pics/womentrouserpepe2.png', 'product_pics/womentrouserpepe3.png', NULL, NULL),
(6, 'Levi\'s Women Skirts', 3, 4, 15, '<h1>Dark Wash 5 Pocket Denim Pencil Skirt</h1>\r\n\r\n<p><em>8907744201279</em></p>\r\n\r\n<p><u><em>Regular priceRs.<s> 2,299.00&nbsp;</s>Sale priceRs. 1,724.00&nbsp;Save 25%</em></u></p>\r\n\r\n<p><em>Tax included.</em></p>\r\n\r\n<p><em>Dark Wash 5 Pocket Denim Pencil Skirt</em></p>\r\n\r\n<p><br />\r\n<em>Color: Navy</em></p>\r\n\r\n<p><em>Composition: 99% Cotton 1% Spandex</em></p>\r\n\r\n<p><em>Wash Care: Machine Wash</em></p>\r\n\r\n<p><em>Your orders will be shipped within 7-10 days.</em></p>', 1200, 1500, 1, 'female', 'm', '27 x 25 x 3 cm; 190 Grams', 'Levis!!', 'product_pics/levisowmenskirt1.png', 0, '2023-08-22', '2023-08-22 15:22:28.023592', NULL, '2023-08-28 17:13:21.401776', 'product_pics/levisowmenskirt2.png', 'product_pics/levisowmenskirt3.png', NULL, NULL),
(7, 'Peter England Shirt', 3, 6, 15, '<p><em><strong>100% Original Products</strong></em></p>\r\n\r\n<p><em><strong>Pay on delivery might be available</strong></em></p>\r\n\r\n<p><em><strong>Easy 14 days returns and exchanges</strong></em></p>\r\n\r\n<p><em><strong>Try &amp; Buy might be available</strong></em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h4><u><strong>PRODUCT DETAILS&nbsp;</strong></u></h4>\r\n\r\n<p><em>Red solid opaque formal shirt ,has a spread collar, button placket, 1 patch pocket, long regular sleeves, curved hem</em></p>\r\n\r\n<h4><u><strong>Size &amp; Fit</strong></u></h4>\r\n\r\n<p><em>Fit: Regular Fit</em><br />\r\nThe model (height 6&#39;) is wearing a size 40</p>\r\n\r\n<h4><u><strong>Material &amp; Care</strong></u></h4>\r\n\r\n<p><em>60% Cotton and 40% Polyester<br />\r\nMachine wash</em></p>\r\n\r\n<h4><strong><u>Specifications</u></strong></h4>\r\n\r\n<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>Sleeve Length</p>\r\n\r\n			<p>Long Sleeves</p>\r\n			</td>\r\n			<td>\r\n			<p>Collar</p>\r\n\r\n			<p>Spread Collar</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Fit</p>\r\n\r\n			<p>Regular Fit</p>\r\n			</td>\r\n			<td>\r\n			<p>Print or Pattern Type</p>\r\n\r\n			<p>Solid</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Occasion</p>\r\n\r\n			<p>Formal</p>\r\n			</td>\r\n			<td>\r\n			<p>Length</p>\r\n\r\n			<p>Regular</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>', 1900, 2500, 2, 'male', 'l', '27 x 25 x 3 cm; 190 Grams', 'Peter England Shirt!1', 'product_pics/peterenglandshirt1.png', 1, '2023-08-22', '2023-08-22 15:44:26.744339', NULL, '2023-08-28 17:07:01.304831', 'product_pics/peterenglandshirt2.png', 'product_pics/peterenglandshirt3.png', NULL, NULL),
(8, 'ALDO', 10, 15, 15, '<p><strong>100% Original Products</strong></p>\r\n\r\n<p><strong>Pay on delivery might be available</strong></p>\r\n\r\n<p><strong>Easy 10 days returns and exchanges</strong></p>\r\n\r\n<p><strong>Try &amp; Buy might be available</strong></p>', 3500, 7499, 5, 'male', 'm', '24*7', 'Puma', 'product_pics/shoes1.png', 1, '2023-09-28', '2023-09-28 13:31:01.955703', 'http://puma.com', '2023-09-28 13:53:34.927433', 'product_pics/s2.png', 'product_pics/s3.png', '', 3),
(9, 'Bersache Sports Walking Gym sneakers Trekking Hiking Shoe With High Quality Sole Sneakers For Men', 10, 16, 10, '<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Color</td>\r\n			<td><br />\r\n			Blue</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Outer material</p>\r\n			</td>\r\n			<td><br />\r\n			Fabric</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Model name</td>\r\n			<td><br />\r\n			PUK3501GS Stylish Smart Daily Occasional Comfortable Cushioned Shoes</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>', 800, 1500, 6, 'female', 'l', '28**7', '', 'product_pics/sp1.png', 0, '2023-09-28', '2023-09-28 13:43:29.933077', NULL, '2023-09-28 13:53:04.927252', 'product_pics/sp2.png', 'product_pics/sp3.png', '', 3),
(10, 'Noise Watches', 8, 18, 20, '<p><strong>100% Original Products</strong></p>\r\n\r\n<p><strong>Pay on delivery might be available</strong></p>\r\n\r\n<p><strong>Items like innerwear, socks, certain accessories and some high-value fragile items do not come under our return policy</strong></p>', 1500, 1800, 8, 'male', 's', '24*7', '', 'product_pics/dw1.png', 1, '2023-09-28', '2023-09-28 15:43:14.201420', NULL, '2023-09-28 15:43:14.201420', 'product_pics/dw2.png', 'product_pics/dw3.png', '', 2),
(11, 'DressBerry Women Mauve Analogue Watch', 8, 17, 25, '<p><em><strong>100% Original Products</strong></em></p>\r\n\r\n<p><em><strong>Pay on delivery might be available</strong></em></p>\r\n\r\n<p><em><strong>Easy 14 days returns and exchanges</strong></em></p>\r\n\r\n<p><em><strong>Try &amp; Buy might be available</strong></em></p>', 1100, 1900, 9, 'female', 'm', '23*19', '', 'product_pics/ww1.png', 0, '2023-09-28', '2023-09-28 15:47:13.218720', NULL, '2023-09-28 15:47:13.218720', 'product_pics/ww2.png', 'product_pics/ww3.png', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `clothesapp_profile`
--

CREATE TABLE `clothesapp_profile` (
  `id` bigint(20) NOT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `gender` varchar(6) NOT NULL,
  `birth_date` date DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `clothesapp_profile`
--

INSERT INTO `clothesapp_profile` (`id`, `phone`, `gender`, `birth_date`, `user_id`) VALUES
(1, 8146938734, 'male', '2003-01-25', 1),
(3, 1234556789, 'male', '2003-09-20', 5),
(4, 9216066651, 'male', '2004-01-25', 3),
(5, 9056318734, 'female', '1969-02-02', 6);

-- --------------------------------------------------------

--
-- Table structure for table `clothesapp_shopbycatgory`
--

CREATE TABLE `clothesapp_shopbycatgory` (
  `id` bigint(20) NOT NULL,
  `product_type_category` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `clothesapp_shopbycatgory`
--

INSERT INTO `clothesapp_shopbycatgory` (`id`, `product_type_category`) VALUES
(1, 'Clothes'),
(2, 'Electronics'),
(3, 'Shoes');

-- --------------------------------------------------------

--
-- Table structure for table `clothesapp_subcategory`
--

CREATE TABLE `clothesapp_subcategory` (
  `id` bigint(20) NOT NULL,
  `subcategory_name` varchar(100) NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `product_type_category_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `clothesapp_subcategory`
--

INSERT INTO `clothesapp_subcategory` (`id`, `subcategory_name`, `category_id`, `product_type_category_id`) VALUES
(1, 'Shorts', 3, NULL),
(2, 'T-Shirt\'s', 3, NULL),
(3, 'Tops', 3, NULL),
(4, 'Skirt\'s', 3, NULL),
(5, 'Jeans', 3, NULL),
(6, 'Shirts', 3, NULL),
(7, 'Trouser\'s', 3, NULL),
(8, 'Suit\'s', 4, NULL),
(9, 'Gown\'s', 4, NULL),
(10, 'Plain Shirt\'s', 4, NULL),
(11, 'Formal Trouser\'s', 4, NULL),
(12, 'Tracksuits', 5, NULL),
(13, 'Cycling Jerseys', 5, NULL),
(14, 'Running Vest', 5, NULL),
(15, 'Sneakers', 3, 3),
(16, 'Walking Gym', 3, 3),
(17, 'Analogue Watches', 8, 2),
(18, 'Digital Watches', 8, 2);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-08-17 07:19:16.569464', '2', 'Myadmin12', 1, '[{\"added\": {}}]', 4, 1),
(2, '2023-08-17 07:19:21.481274', '2', 'Myadmin12', 2, '[]', 4, 1),
(3, '2023-08-17 07:19:51.577858', '1', 'Manager', 1, '[{\"added\": {}}]', 3, 1),
(4, '2023-08-17 07:20:20.038904', '2', 'Adminstrator', 1, '[{\"added\": {}}]', 3, 1),
(5, '2023-08-17 07:20:31.818875', '2', 'Myadmin12', 2, '[{\"changed\": {\"fields\": [\"Staff status\", \"Groups\"]}}]', 4, 1),
(6, '2023-08-17 07:28:36.619629', '1', 'Category object (1)', 1, '[{\"added\": {}}]', 7, 1),
(7, '2023-08-17 07:28:45.784827', '2', 'Category object (2)', 1, '[{\"added\": {}}]', 7, 1),
(8, '2023-08-17 07:30:11.419145', '2', 'Category object (2)', 3, '', 7, 1),
(9, '2023-08-17 07:30:11.447268', '1', 'Category object (1)', 3, '', 7, 1),
(10, '2023-08-17 07:30:33.692197', '3', 'Category object (3)', 1, '[{\"added\": {}}]', 7, 1),
(11, '2023-08-17 07:30:44.512918', '4', 'Category object (4)', 1, '[{\"added\": {}}]', 7, 1),
(12, '2023-08-17 07:30:56.503496', '5', 'Category object (5)', 1, '[{\"added\": {}}]', 7, 1),
(13, '2023-08-17 08:39:49.603900', '6', 'Suits', 1, '[{\"added\": {}}]', 7, 1),
(14, '2023-08-17 08:52:15.559136', '1', 'Shorts', 1, '[{\"added\": {}}]', 8, 1),
(15, '2023-08-17 08:52:26.579691', '2', 'T-Shirt\'s', 1, '[{\"added\": {}}]', 8, 1),
(16, '2023-08-17 08:52:48.070039', '3', 'Tops', 1, '[{\"added\": {}}]', 8, 1),
(17, '2023-08-17 08:52:56.634516', '4', 'Skirt\'s', 1, '[{\"added\": {}}]', 8, 1),
(18, '2023-08-17 08:53:23.391701', '5', 'Jeans', 1, '[{\"added\": {}}]', 8, 1),
(19, '2023-08-17 08:53:29.483707', '6', 'Shirts', 1, '[{\"added\": {}}]', 8, 1),
(20, '2023-08-17 08:53:39.473656', '7', 'Trouser\'s', 1, '[{\"added\": {}}]', 8, 1),
(21, '2023-08-17 08:54:11.976701', '6', 'Suits', 3, '', 7, 1),
(22, '2023-08-17 08:54:26.678712', '8', 'Suit\'s', 1, '[{\"added\": {}}]', 8, 1),
(23, '2023-08-17 08:54:36.457415', '9', 'Gown\'s', 1, '[{\"added\": {}}]', 8, 1),
(24, '2023-08-17 08:54:53.443337', '10', 'Plain Shirt\'s', 1, '[{\"added\": {}}]', 8, 1),
(25, '2023-08-17 08:55:08.073529', '11', 'Formal Trouser\'s', 1, '[{\"added\": {}}]', 8, 1),
(26, '2023-08-17 08:55:32.992839', '12', 'Tracksuits', 1, '[{\"added\": {}}]', 8, 1),
(27, '2023-08-17 08:55:55.364063', '13', 'Cycling Jerseys', 1, '[{\"added\": {}}]', 8, 1),
(28, '2023-08-17 08:56:04.443285', '14', 'Running Vest', 1, '[{\"added\": {}}]', 8, 1),
(29, '2023-08-17 09:27:35.660682', '1', 'Peter England T-Shirt', 1, '[{\"added\": {}}]', 9, 1),
(30, '2023-08-19 07:53:04.837263', '1', 'Levis', 1, '[{\"added\": {}}]', 10, 1),
(31, '2023-08-19 07:53:08.932469', '2', 'Peter England', 1, '[{\"added\": {}}]', 10, 1),
(32, '2023-08-19 07:53:12.473962', '3', 'Pepe', 1, '[{\"added\": {}}]', 10, 1),
(33, '2023-08-19 07:53:16.188423', '4', 'Van Heusen', 1, '[{\"added\": {}}]', 10, 1),
(34, '2023-08-19 07:53:23.089978', '1', 'Peter England T-Shirt', 2, '[{\"changed\": {\"fields\": [\"Brand name\"]}}]', 9, 1),
(35, '2023-08-19 08:08:27.397482', '1', 'Peter England T-Shirt', 2, '[{\"changed\": {\"fields\": [\"For gender\"]}}]', 9, 1),
(36, '2023-08-19 08:10:36.200386', '1', 'Peter England T-Shirt', 2, '[{\"changed\": {\"fields\": [\"For size\"]}}]', 9, 1),
(37, '2023-08-19 08:20:55.131201', '1', 'Peter England T-Shirt', 2, '[{\"changed\": {\"fields\": [\"Product dimensions\"]}}]', 9, 1),
(38, '2023-08-19 08:23:51.946262', '1', 'Peter England T-Shirt', 2, '[{\"changed\": {\"fields\": [\"Packer\"]}}]', 9, 1),
(39, '2023-08-19 08:44:32.800425', '2', 'Van Heusen Men Suit', 1, '[{\"added\": {}}]', 9, 1),
(40, '2023-08-19 09:25:28.647662', '3', 'Peter England Short\'s', 1, '[{\"added\": {}}]', 9, 1),
(41, '2023-08-20 15:03:52.401903', '1', 'Peter England T-Shirt', 2, '[{\"changed\": {\"fields\": [\"Product image\"]}}]', 9, 1),
(42, '2023-08-20 17:09:40.731689', '3', 'Peter England Short\'s', 2, '[{\"changed\": {\"fields\": [\"Featured\", \"Manufacturing date\"]}}]', 9, 1),
(43, '2023-08-20 17:12:29.898288', '3', 'Peter England Short\'s', 2, '[{\"changed\": {\"fields\": [\"Entry datetime\"]}}]', 9, 1),
(44, '2023-08-21 15:30:33.805426', '3', 'Peter England Short\'s', 2, '[{\"changed\": {\"fields\": [\"Product image\"]}}]', 9, 1),
(45, '2023-08-21 15:32:43.015436', '4', 'Levi\'s Women Jeans', 1, '[{\"added\": {}}]', 9, 1),
(46, '2023-08-21 15:35:22.259537', '5', 'Women Black Slim Fit Trousers', 1, '[{\"added\": {}}]', 9, 1),
(47, '2023-08-21 16:06:24.325747', '4', 'Levi\'s Women Jeans', 2, '[{\"changed\": {\"fields\": [\"Product image\"]}}]', 9, 1),
(48, '2023-08-21 16:10:20.481909', '1', 'Peter England T-Shirt', 2, '[{\"changed\": {\"fields\": [\"Product image\"]}}]', 9, 1),
(49, '2023-08-21 16:16:24.503998', '1', 'Peter England T-Shirt', 2, '[{\"changed\": {\"fields\": [\"Product image\", \"Featured\", \"Manufacturing date\"]}}]', 9, 1),
(50, '2023-08-21 16:17:31.983340', '2', 'Van Heusen Men Suit', 2, '[{\"changed\": {\"fields\": [\"Product image\", \"Featured\", \"Manufacturing date\"]}}]', 9, 1),
(51, '2023-08-22 15:18:52.305804', '5', 'Women Black Slim Fit Trousers', 2, '[{\"changed\": {\"fields\": [\"Featured\"]}}]', 9, 1),
(52, '2023-08-22 15:19:05.204784', '3', 'Peter England Short\'s', 2, '[{\"changed\": {\"fields\": [\"Featured\"]}}]', 9, 1),
(53, '2023-08-22 15:22:28.028577', '6', 'Levi\'s Women Skirts', 1, '[{\"added\": {}}]', 9, 1),
(54, '2023-08-22 15:38:29.205410', '4', 'Levi\'s Women Jeans', 2, '[{\"changed\": {\"fields\": [\"Featured\"]}}]', 9, 1),
(55, '2023-08-22 15:38:37.121405', '2', 'Van Heusen Men Suit', 2, '[{\"changed\": {\"fields\": [\"Featured\"]}}]', 9, 1),
(56, '2023-08-22 15:38:44.130650', '1', 'Peter England T-Shirt', 2, '[{\"changed\": {\"fields\": [\"Featured\"]}}]', 9, 1),
(57, '2023-08-22 15:44:26.780640', '7', 'Peter England Shirt', 1, '[{\"added\": {}}]', 9, 1),
(58, '2023-08-22 16:04:33.476516', '7', 'Peter England Shirt', 2, '[{\"changed\": {\"fields\": [\"Featured\"]}}]', 9, 1),
(59, '2023-08-22 16:04:37.560042', '5', 'Women Black Slim Fit Trousers', 2, '[{\"changed\": {\"fields\": [\"Featured\"]}}]', 9, 1),
(60, '2023-08-22 16:04:40.805972', '3', 'Peter England Short\'s', 2, '[{\"changed\": {\"fields\": [\"Featured\"]}}]', 9, 1),
(61, '2023-08-22 16:04:44.358352', '1', 'Peter England T-Shirt', 2, '[{\"changed\": {\"fields\": [\"Featured\"]}}]', 9, 1),
(62, '2023-08-28 17:03:12.374745', '7', 'Peter England Shirt', 2, '[{\"changed\": {\"fields\": [\"Description\", \"Product image\"]}}]', 9, 1),
(63, '2023-08-28 17:07:01.309825', '7', 'Peter England Shirt', 2, '[{\"changed\": {\"fields\": [\"Product image1\", \"Product image2\", \"Product image3\"]}}]', 9, 1),
(64, '2023-08-28 17:09:48.509866', '6', 'Levi\'s Women Skirts', 2, '[{\"changed\": {\"fields\": [\"Description\", \"Product image1\"]}}]', 9, 1),
(65, '2023-08-28 17:13:21.408390', '6', 'Levi\'s Women Skirts', 2, '[{\"changed\": {\"fields\": [\"Description\", \"Product image1\", \"Product image2\", \"Product image3\"]}}]', 9, 1),
(66, '2023-08-28 17:16:24.295537', '5', 'Women Black Slim Fit Trousers', 2, '[{\"changed\": {\"fields\": [\"Description\", \"Product image1\"]}}]', 9, 1),
(67, '2023-08-28 17:17:56.411892', '5', 'Women Black Slim Fit Trousers', 2, '[{\"changed\": {\"fields\": [\"Product image1\", \"Product image2\", \"Product image3\"]}}]', 9, 1),
(68, '2023-08-31 15:08:59.707749', '3', 'Peter England Short\'s', 2, '[{\"changed\": {\"fields\": [\"Description\", \"Product image1\"]}}]', 9, 1),
(69, '2023-08-31 15:09:26.993540', '3', 'Peter England Short\'s', 2, '[{\"changed\": {\"fields\": [\"Product image1\", \"Product image2\", \"Product image3\", \"Featured\"]}}]', 9, 1),
(70, '2023-08-31 15:09:51.617668', '3', 'Peter England Short\'s', 2, '[{\"changed\": {\"fields\": [\"Featured\"]}}]', 9, 1),
(71, '2023-08-31 15:11:56.715741', '4', 'Levi\'s Women Jeans', 2, '[{\"changed\": {\"fields\": [\"Description\", \"Product image1\"]}}]', 9, 1),
(72, '2023-08-31 15:12:17.170623', '4', 'Levi\'s Women Jeans', 2, '[{\"changed\": {\"fields\": [\"Product image1\", \"Product image2\", \"Product image3\", \"Featured\"]}}]', 9, 1),
(73, '2023-08-31 15:12:39.971364', '2', 'Van Heusen Men Suit', 2, '[{\"changed\": {\"fields\": [\"Description\", \"Product image1\"]}}]', 9, 1),
(74, '2023-08-31 15:14:37.975665', '2', 'Van Heusen Men Suit', 2, '[{\"changed\": {\"fields\": [\"Product image1\", \"Product image2\", \"Product image3\"]}}]', 9, 1),
(75, '2023-08-31 15:15:27.499968', '1', 'Peter England T-Shirt', 2, '[{\"changed\": {\"fields\": [\"For gender\", \"Description\", \"Product image1\"]}}]', 9, 1),
(76, '2023-08-31 15:17:11.821294', '1', 'Peter England T-Shirt', 2, '[{\"changed\": {\"fields\": [\"Brand name\", \"Product image1\", \"Product image2\", \"Product image3\"]}}]', 9, 1),
(77, '2023-08-31 15:41:41.068131', '1', 'Peter England T-Shirt', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 9, 1),
(78, '2023-08-31 15:44:54.966456', '1', 'Peter England T-Shirt', 2, '[{\"changed\": {\"fields\": [\"Additional description\"]}}]', 9, 1),
(79, '2023-08-31 15:45:20.521675', '1', 'Peter England T-Shirt', 2, '[{\"changed\": {\"fields\": [\"Additional description\"]}}]', 9, 1),
(80, '2023-09-05 17:02:04.542708', '1', 'Peter England T-Shirt', 2, '[{\"changed\": {\"fields\": [\"Quantity\"]}}]', 9, 1),
(81, '2023-09-12 18:40:05.222095', '1', '1', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 12, 1),
(82, '2023-09-19 19:10:35.397667', '3', 'abhi32', 1, '[{\"added\": {}}]', 14, 1),
(83, '2023-09-19 19:11:08.736919', '4', 'saksham12', 1, '[{\"added\": {}}]', 14, 1),
(84, '2023-09-28 08:55:48.887973', '1', 'Clothes', 1, '[{\"added\": {}}]', 15, 1),
(85, '2023-09-28 08:55:59.145312', '2', 'Electronics', 1, '[{\"added\": {}}]', 15, 1),
(86, '2023-09-28 08:59:09.099924', '5', 'Sportswear', 2, '[{\"changed\": {\"fields\": [\"Product type category\"]}}]', 7, 1),
(87, '2023-09-28 08:59:13.309071', '4', 'Formal wear', 2, '[{\"changed\": {\"fields\": [\"Product type category\"]}}]', 7, 1),
(88, '2023-09-28 08:59:16.972538', '3', 'Casual wear', 2, '[{\"changed\": {\"fields\": [\"Product type category\"]}}]', 7, 1),
(89, '2023-09-28 09:03:49.109489', '7', 'Mobiles', 1, '[{\"added\": {}}]', 7, 1),
(90, '2023-09-28 09:04:05.695158', '8', 'Watches', 1, '[{\"added\": {}}]', 7, 1),
(91, '2023-09-28 09:05:24.184097', '3', 'Shoes', 1, '[{\"added\": {}}]', 15, 1),
(92, '2023-09-28 09:05:34.274560', '9', 'Sneakers', 1, '[{\"added\": {}}]', 7, 1),
(93, '2023-09-28 13:19:29.754746', '9', 'Sneakers', 3, '', 7, 1),
(94, '2023-09-28 13:19:54.220103', '10', 'Casual Shoes', 1, '[{\"added\": {}}]', 7, 1),
(95, '2023-09-28 13:20:08.743692', '11', 'Formal Shoes', 1, '[{\"added\": {}}]', 7, 1),
(96, '2023-09-28 13:20:25.508254', '12', 'Flip Flops', 1, '[{\"added\": {}}]', 7, 1),
(97, '2023-09-28 13:20:46.439174', '13', 'Sports Scandal', 1, '[{\"added\": {}}]', 7, 1),
(98, '2023-09-28 13:21:06.901358', '5', 'Puma', 1, '[{\"added\": {}}]', 10, 1),
(99, '2023-09-28 13:21:24.655194', '6', 'Roadster', 1, '[{\"added\": {}}]', 10, 1),
(100, '2023-09-28 13:21:42.158290', '7', 'Adidas', 1, '[{\"added\": {}}]', 10, 1),
(101, '2023-09-28 13:30:51.502970', '15', 'Sneakers', 1, '[{\"added\": {}}]', 8, 1),
(102, '2023-09-28 13:31:01.964382', '8', 'ALDO', 1, '[{\"added\": {}}]', 9, 1),
(103, '2023-09-28 13:36:37.714926', '8', 'ALDO', 2, '[{\"changed\": {\"fields\": [\"Product image1\", \"Product image2\", \"Product image3\"]}}]', 9, 1),
(104, '2023-09-28 13:37:54.887072', '16', 'Walking Gym', 1, '[{\"added\": {}}]', 8, 1),
(105, '2023-09-28 13:43:29.940059', '9', 'Bersache Sports Walking Gym sneakers Trekking Hiking Shoe With High Quality Sole Sneakers For Men', 1, '[{\"added\": {}}]', 9, 1),
(106, '2023-09-28 13:53:04.933797', '9', 'Bersache Sports Walking Gym sneakers Trekking Hiking Shoe With High Quality Sole Sneakers For Men', 2, '[{\"changed\": {\"fields\": [\"Category\"]}}]', 9, 1),
(107, '2023-09-28 13:53:34.931310', '8', 'ALDO', 2, '[{\"changed\": {\"fields\": [\"Category\"]}}]', 9, 1),
(108, '2023-09-28 13:53:59.734360', '12', 'Flip Flops', 3, '', 7, 1),
(109, '2023-09-28 13:54:10.920687', '13', 'Sports Scandal', 3, '', 7, 1),
(110, '2023-09-28 13:55:57.069874', '14', 'Analogue Watches', 1, '[{\"added\": {}}]', 7, 1),
(111, '2023-09-28 13:56:09.117119', '15', 'Digital Shoes', 1, '[{\"added\": {}}]', 7, 1),
(112, '2023-09-28 13:56:50.098086', '15', 'Digital Shoes', 3, '', 7, 1),
(113, '2023-09-28 13:56:54.110483', '14', 'Analogue Watches', 3, '', 7, 1),
(114, '2023-09-28 13:57:22.736008', '17', 'Analogue Watches', 1, '[{\"added\": {}}]', 8, 1),
(115, '2023-09-28 13:57:49.728540', '18', 'Digital Watches', 1, '[{\"added\": {}}]', 8, 1),
(116, '2023-09-28 15:28:40.509561', '8', 'Noise', 1, '[{\"added\": {}}]', 10, 1),
(117, '2023-09-28 15:28:45.619385', '9', 'Titan', 1, '[{\"added\": {}}]', 10, 1),
(118, '2023-09-28 15:28:50.324388', '10', 'Timex', 1, '[{\"added\": {}}]', 10, 1),
(119, '2023-09-28 15:28:54.113385', '11', 'Apple', 1, '[{\"added\": {}}]', 10, 1),
(120, '2023-09-28 15:43:14.206472', '10', 'Noise Watches', 1, '[{\"added\": {}}]', 9, 1),
(121, '2023-09-28 15:47:13.221710', '11', 'DressBerry Women Mauve Analogue Watch', 1, '[{\"added\": {}}]', 9, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(10, 'clothesapp', 'brand'),
(11, 'clothesapp', 'cart'),
(7, 'clothesapp', 'category'),
(12, 'clothesapp', 'order'),
(13, 'clothesapp', 'orderdetails'),
(9, 'clothesapp', 'product'),
(14, 'clothesapp', 'profile'),
(15, 'clothesapp', 'shopbycatgory'),
(8, 'clothesapp', 'subcategory'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-08-17 07:16:51.617497'),
(2, 'auth', '0001_initial', '2023-08-17 07:16:52.407262'),
(3, 'admin', '0001_initial', '2023-08-17 07:16:52.608199'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-08-17 07:16:52.618170'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-08-17 07:16:52.629841'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-08-17 07:16:52.716562'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-08-17 07:16:52.774689'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-08-17 07:16:52.811589'),
(9, 'auth', '0004_alter_user_username_opts', '2023-08-17 07:16:52.824564'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-08-17 07:16:52.888136'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-08-17 07:16:52.891138'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-08-17 07:16:52.901485'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-08-17 07:16:52.930408'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-08-17 07:16:52.963234'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-08-17 07:16:52.995147'),
(16, 'auth', '0011_update_proxy_permissions', '2023-08-17 07:16:53.005918'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-08-17 07:16:53.052788'),
(18, 'sessions', '0001_initial', '2023-08-17 07:16:53.122601'),
(19, 'clothesapp', '0001_initial', '2023-08-17 07:25:05.590734'),
(20, 'clothesapp', '0002_subcategory', '2023-08-17 08:49:40.749666'),
(21, 'clothesapp', '0003_product', '2023-08-17 08:59:27.207802'),
(22, 'clothesapp', '0004_product_quantity_product_description_and_more', '2023-08-17 09:25:35.615785'),
(23, 'clothesapp', '0005_alter_product_description', '2023-08-17 09:26:24.566560'),
(24, 'clothesapp', '0006_brand_alter_product_description_product_brand_name', '2023-08-19 07:52:26.731257'),
(25, 'clothesapp', '0007_product_for_gender', '2023-08-19 08:08:10.984712'),
(26, 'clothesapp', '0008_product_for_size', '2023-08-19 08:10:14.740247'),
(27, 'clothesapp', '0009_alter_product_for_size', '2023-08-19 08:11:00.952364'),
(28, 'clothesapp', '0010_product_product_dimensions', '2023-08-19 08:19:16.632841'),
(29, 'clothesapp', '0011_alter_product_product_dimensions', '2023-08-19 08:21:18.283843'),
(30, 'clothesapp', '0012_product_packer', '2023-08-19 08:22:59.012655'),
(31, 'clothesapp', '0013_rename_category_id_product_category_and_more', '2023-08-19 08:42:26.688631'),
(32, 'clothesapp', '0014_alter_product_for_gender', '2023-08-19 15:19:02.917661'),
(33, 'clothesapp', '0015_product_product_image', '2023-08-20 14:46:40.021967'),
(34, 'clothesapp', '0016_product_featured_product_manufacturing_date_and_more', '2023-08-20 17:08:36.074404'),
(35, 'clothesapp', '0017_product_entry_datetime', '2023-08-20 17:10:45.147751'),
(36, 'clothesapp', '0018_product_site_url_product_update_time_and_more', '2023-08-20 17:14:27.214828'),
(37, 'clothesapp', '0019_alter_product_description', '2023-08-28 16:56:00.039221'),
(38, 'clothesapp', '0020_rename_product_image_product_product_image1_and_more', '2023-08-28 17:03:54.855350'),
(39, 'clothesapp', '0021_product_addi_description', '2023-08-31 15:37:09.866215'),
(40, 'clothesapp', '0022_rename_addi_description_product_additional_description', '2023-08-31 15:38:00.253631'),
(41, 'clothesapp', '0023_cart', '2023-09-02 16:58:19.259667'),
(42, 'clothesapp', '0024_order_orderdetails', '2023-09-10 14:36:22.790673'),
(43, 'clothesapp', '0025_order_order_status', '2023-09-12 18:39:05.617610'),
(44, 'clothesapp', '0026_order_name', '2023-09-12 18:39:05.646594'),
(45, 'clothesapp', '0027_alter_order_name', '2023-09-12 18:39:05.661561'),
(46, 'clothesapp', '0028_alter_orderdetails_pid', '2023-09-16 18:50:58.714368'),
(47, 'clothesapp', '0029_profile', '2023-09-19 18:28:30.984142'),
(48, 'clothesapp', '0030_shopbycatgory', '2023-09-28 08:53:05.461172'),
(49, 'clothesapp', '0031_category_product_type_category', '2023-09-28 08:58:50.418800'),
(50, 'clothesapp', '0032_product_product_type_category', '2023-09-28 09:01:50.097846'),
(51, 'clothesapp', '0033_subcategory_product_type_category', '2023-09-28 09:02:53.604969');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('2jhydw25kabinc0l1vc5hwbdholpqa35', '.eJxVjMEOgyAQRP-Fc0NEFpAee-83mF1Zqm3FRPTQNP33QuLFOc57M18xf_bMa8KZxVVknFsjLqLHfRv7CvoplF6dO8LhxamC8MT0WOSwpG2dSFZFHjTL-xL4fTvc08GIeSzrtoleIaHytvURiEznPHYNWSAwusR4x6oJ4BicttpBHDrHkYB0iFb8_rHkPjA:1qexdK:rgQYF5tHf_MUEwfVU4ucKwz89n6CP7NQStvbytSqSyk', '2023-09-23 13:04:18.021650'),
('8mk2yjb0ge1s3umt77mbyg8ivawd8w4i', '.eJxVj80SgjAMhN-lZ6fTltAWj959BiZpgyBalJ8D4_juUocLt2y-zc7mI57rMvGY8MniLPpuxGRAnESNy9zWGdVd3Ig97ghDzymDeMd0G2QY0jx2JLNF7nSS1yHy47J7DwEtTu127U1JgchSQDSOTeWIi1iACwCVjaAUceNLAMfONsjWI3hwHk3prNF6C339-2mVx7EL-Q1dqizf87qJQnx_DMBINA:1qm2mX:4cYx8Ul2m_RNNDvPWgo6RlmOTAgK0QZ9tvmKiBuMqo8', '2023-10-13 01:59:05.805431'),
('z95vg255hw2iwd60c711hein82grazpb', 'eyJteXVzZXJuYW1lIjoic2FtMjUifQ:1qcTiv:pice9EtibKuZvg-twJ-xS6-zktyMBbM6Vusyyj25dt4', '2023-09-16 16:43:49.734868'),
('zajxxvcb7mzn795ia820miw7spfbeovr', '.eJxVjDsOwjAQRO_iGll2vP5R0ucM1q4_OIAcKU4qxN1JpBQw5bw382YBt7WGreclTIldmWSX344wPnM7QHpgu888zm1dJuKHwk_a-Tin_Lqd7t9BxV739SCKl0govRl8ASLtrEcnyACBVnu0t1mKBDaDVUZZKNHZXAhIpWLY5wvF_DdU:1qWXGt:Mp3tR2zsTt9eKXxkHETIUwm2k5tFtCSoYL8GpmW7G0Q', '2023-08-31 07:18:19.938801');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `clothesapp_brand`
--
ALTER TABLE `clothesapp_brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clothesapp_cart`
--
ALTER TABLE `clothesapp_cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clothesapp_cart_product_id_fccccc51_fk_clothesapp_product_id` (`product_id`),
  ADD KEY `clothesapp_cart_username_id_b783b745_fk_auth_user_id` (`username_id`);

--
-- Indexes for table `clothesapp_category`
--
ALTER TABLE `clothesapp_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clothesapp_category_product_type_categor_038ff088_fk_clothesap` (`product_type_category_id`);

--
-- Indexes for table `clothesapp_order`
--
ALTER TABLE `clothesapp_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clothesapp_order_username_id_06bfc3a6_fk_auth_user_id` (`username_id`);

--
-- Indexes for table `clothesapp_orderdetails`
--
ALTER TABLE `clothesapp_orderdetails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clothesapp_orderdeta_order_no_id_8d054bb3_fk_clothesap` (`order_no_id`),
  ADD KEY `clothesapp_orderdetails_pid_id_83eeb118` (`pid_id`);

--
-- Indexes for table `clothesapp_product`
--
ALTER TABLE `clothesapp_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clothesapp_product_brand_name_id_2bbcbfde_fk_clothesapp_brand_id` (`brand_name_id`),
  ADD KEY `clothesapp_product_category_id_f763622d_fk_clothesap` (`category_id`),
  ADD KEY `clothesapp_product_subcategory_id_bcb87ef9_fk_clothesap` (`subcategory_id`),
  ADD KEY `clothesapp_product_product_type_categor_0f725636_fk_clothesap` (`product_type_category_id`);

--
-- Indexes for table `clothesapp_profile`
--
ALTER TABLE `clothesapp_profile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `clothesapp_shopbycatgory`
--
ALTER TABLE `clothesapp_shopbycatgory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clothesapp_subcategory`
--
ALTER TABLE `clothesapp_subcategory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clothesapp_subcatego_category_id_1cb139f5_fk_clothesap` (`category_id`),
  ADD KEY `clothesapp_subcatego_product_type_categor_2f1bdf18_fk_clothesap` (`product_type_category_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `clothesapp_brand`
--
ALTER TABLE `clothesapp_brand`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `clothesapp_cart`
--
ALTER TABLE `clothesapp_cart`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `clothesapp_category`
--
ALTER TABLE `clothesapp_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `clothesapp_order`
--
ALTER TABLE `clothesapp_order`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `clothesapp_orderdetails`
--
ALTER TABLE `clothesapp_orderdetails`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `clothesapp_product`
--
ALTER TABLE `clothesapp_product`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `clothesapp_profile`
--
ALTER TABLE `clothesapp_profile`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `clothesapp_shopbycatgory`
--
ALTER TABLE `clothesapp_shopbycatgory`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `clothesapp_subcategory`
--
ALTER TABLE `clothesapp_subcategory`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `clothesapp_cart`
--
ALTER TABLE `clothesapp_cart`
  ADD CONSTRAINT `clothesapp_cart_product_id_fccccc51_fk_clothesapp_product_id` FOREIGN KEY (`product_id`) REFERENCES `clothesapp_product` (`id`),
  ADD CONSTRAINT `clothesapp_cart_username_id_b783b745_fk_auth_user_id` FOREIGN KEY (`username_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `clothesapp_category`
--
ALTER TABLE `clothesapp_category`
  ADD CONSTRAINT `clothesapp_category_product_type_categor_038ff088_fk_clothesap` FOREIGN KEY (`product_type_category_id`) REFERENCES `clothesapp_shopbycatgory` (`id`);

--
-- Constraints for table `clothesapp_order`
--
ALTER TABLE `clothesapp_order`
  ADD CONSTRAINT `clothesapp_order_username_id_06bfc3a6_fk_auth_user_id` FOREIGN KEY (`username_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `clothesapp_orderdetails`
--
ALTER TABLE `clothesapp_orderdetails`
  ADD CONSTRAINT `clothesapp_orderdeta_order_no_id_8d054bb3_fk_clothesap` FOREIGN KEY (`order_no_id`) REFERENCES `clothesapp_order` (`id`),
  ADD CONSTRAINT `clothesapp_orderdetails_pid_id_83eeb118_fk_clothesapp_product_id` FOREIGN KEY (`pid_id`) REFERENCES `clothesapp_product` (`id`);

--
-- Constraints for table `clothesapp_product`
--
ALTER TABLE `clothesapp_product`
  ADD CONSTRAINT `clothesapp_product_brand_name_id_2bbcbfde_fk_clothesapp_brand_id` FOREIGN KEY (`brand_name_id`) REFERENCES `clothesapp_brand` (`id`),
  ADD CONSTRAINT `clothesapp_product_category_id_f763622d_fk_clothesap` FOREIGN KEY (`category_id`) REFERENCES `clothesapp_category` (`id`),
  ADD CONSTRAINT `clothesapp_product_product_type_categor_0f725636_fk_clothesap` FOREIGN KEY (`product_type_category_id`) REFERENCES `clothesapp_shopbycatgory` (`id`),
  ADD CONSTRAINT `clothesapp_product_subcategory_id_bcb87ef9_fk_clothesap` FOREIGN KEY (`subcategory_id`) REFERENCES `clothesapp_subcategory` (`id`);

--
-- Constraints for table `clothesapp_profile`
--
ALTER TABLE `clothesapp_profile`
  ADD CONSTRAINT `clothesapp_profile_user_id_40e8212a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `clothesapp_subcategory`
--
ALTER TABLE `clothesapp_subcategory`
  ADD CONSTRAINT `clothesapp_subcatego_category_id_1cb139f5_fk_clothesap` FOREIGN KEY (`category_id`) REFERENCES `clothesapp_category` (`id`),
  ADD CONSTRAINT `clothesapp_subcatego_product_type_categor_2f1bdf18_fk_clothesap` FOREIGN KEY (`product_type_category_id`) REFERENCES `clothesapp_shopbycatgory` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
