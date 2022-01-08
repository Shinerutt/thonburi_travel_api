-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: db:3306
-- Generation Time: Jan 08, 2022 at 10:02 AM
-- Server version: 5.7.36
-- PHP Version: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `places_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `adonis_schema`
--

CREATE TABLE `adonis_schema` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `batch` int(11) DEFAULT NULL,
  `migration_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `adonis_schema`
--

INSERT INTO `adonis_schema` (`id`, `name`, `batch`, `migration_time`) VALUES
(1, '1_users_schema', 1, '2021-12-29 07:09:17'),
(2, '2_places_schema', 1, '2021-12-29 07:09:17'),
(3, '3_review_schema', 1, '2021-12-29 07:09:17'),
(4, '4_favorites_schema', 1, '2021-12-29 07:09:17'),
(5, '5_recommended_place_schema', 1, '2021-12-29 07:09:17'),
(6, '6_recommended_place_detail_schema', 2, '2021-12-29 07:09:55'),
(7, '7_recommeded_trip_schema', 2, '2021-12-29 07:09:55'),
(8, '8_recommeded_trip_detail_schema', 2, '2021-12-29 07:09:55'),
(9, '9_vdo_schema', 2, '2021-12-29 07:09:55');

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `id` varchar(255) NOT NULL,
  `places_id` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `places`
--

CREATE TABLE `places` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `lng` double DEFAULT NULL,
  `detail` text,
  `img_places` text,
  `category` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `places`
--

INSERT INTO `places` (`id`, `name`, `lat`, `lng`, `detail`, `img_places`, `category`, `created_at`, `updated_at`) VALUES
('8254af5e-66a9-4a24-991d-121531936aff', 'Icon', 0.13, 0.13, '<h1>Icon</h1>\n<ul>\n<li>item 1</li>\n<li>item 2</li>\n<li>item 3</li>\n</ul>', '[\"https://firebasestorage.googleapis.com/v0/b/shinerut-3dfa4.appspot.com/o/landmark%2Flandmark.jpeg?alt=media&token=7548e77c-ce89-4394-95d4-c4bfcda9425e\",\"https://firebasestorage.googleapis.com/v0/b/shinerut-3dfa4.appspot.com/o/landmark%2Ficon2.jpeg?alt=media&token=4b98eae0-0021-4283-ba95-cd31c73a102c\"]', 'landmark', '2021-12-29 08:50:56', '2021-12-29 08:50:56'),
('f739af5a-a71e-4184-a870-d0a8e3d5bd52', 'wat arun', 0, 0, '<h1>Wat Arun</h1>\r\n<ul>\r\n<li>item 1</li>\r\n<li>item 2</li>\r\n<li>item 3</li>\r\n</ul>', '[\"https://firebasestorage.googleapis.com/v0/b/shinerut-3dfa4.appspot.com/o/temple%2Ftemple.jpeg?alt=media&token=d8de3b66-ad87-4263-a63a-de12dfaf5b3b\"]', 'temple', '2022-01-08 07:40:44', '2022-01-08 07:40:44'),
('f9464cba-5d46-4ac0-87a6-c66fe61e0d94', 'The Clock Out กรุงธนบุรี', 0, 0, '<h1>The Clock Out กรุงธนบุรี</h1>\r\n<ul>\r\n<li>item 1</li>\r\n<li>item 2</li>\r\n<li>item 3</li>\r\n</ul>', '[\"https://firebasestorage.googleapis.com/v0/b/shinerut-3dfa4.appspot.com/o/restaurant%2Frestaurant.jpeg?alt=media&token=8bd297f4-7f47-43f7-ad22-e528dab94357\"]', 'restaurant', '2022-01-08 07:44:44', '2022-01-08 07:44:44'),
('f9e1998f-024f-4d4b-bb09-995c9ed1d127', 'wanglang', 0, 0, '<h1>Wanglnag Market</h1>\r\n<ul>\r\n<li>item 1</li>\r\n<li>item 2</li>\r\n<li>item 3</li>\r\n</ul>', '[\"https://firebasestorage.googleapis.com/v0/b/shinerut-3dfa4.appspot.com/o/market%2Fmarket.jpeg?alt=media&token=1273ee5a-51ec-4d67-b7b6-4731394e150f\"]', 'market', '2022-01-08 07:33:14', '2022-01-08 07:33:14');

-- --------------------------------------------------------

--
-- Table structure for table `recommeded_trips`
--

CREATE TABLE `recommeded_trips` (
  `id` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `img_cover` text NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `recommeded_trip_details`
--

CREATE TABLE `recommeded_trip_details` (
  `id` varchar(255) NOT NULL,
  `ref_recommened` varchar(255) DEFAULT NULL,
  `img_place` varchar(255) DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `lng` double DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `recommended_places`
--

CREATE TABLE `recommended_places` (
  `id` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `img_cover` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `recommended_place_details`
--

CREATE TABLE `recommended_place_details` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `ref_recommended` varchar(255) DEFAULT NULL,
  `content` text,
  `img_places` text,
  `lat` double DEFAULT NULL,
  `lng` double DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` varchar(255) NOT NULL,
  `places_id` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `content` text,
  `rate` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `nick_name` varchar(255) DEFAULT NULL,
  `img_profile` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `first_name`, `last_name`, `nick_name`, `img_profile`, `created_at`, `updated_at`) VALUES
('03d24e46-8661-4bfd-8669-4fb079dc98ec', 'ikool009@hotmail.com', '$2a$10$SD7pFd/LWf6ccbOznbSP9.MpcbazIdEviaI1wL5VFQExj2K30vV6a', NULL, NULL, NULL, 'https://everydaynutrition.co.uk/wp-content/uploads/2015/01/default-user-avatar-300x300.png', '2021-12-29 15:47:14', '2021-12-29 15:47:14'),
('508e47fc-5612-482f-92df-2dc7adc4ea0a', 'abc3@hotmail.com', '$2a$10$WZnQja.ROZzZiZ63WbE80.OZNCz7Ka0Kfpr7mUWs10RC27fy465ne', 'firstname', 'lastname', 'ball', NULL, '2021-12-29 14:52:51', '2021-12-29 14:52:51'),
('645395f7-cc08-4fa6-a0f5-907e6af76666', 'abc1@hotmail.com', '$2a$10$Qwoqlu4nUTT1tn5OrV4lhO1FEqOVEOJImhi3vsqRaBRGGAtG0eF8O', 'firstname', 'lastname', 'ball', NULL, '2021-12-29 14:51:39', '2021-12-29 14:51:39'),
('78f31918-1bdc-4fbc-bd90-6808c11fa544', 'abc2@hotmail.com', '$2a$10$nHP.z3riH592VlZXGo0Kl.Dk60ezGJoaYVVJGoMwrmhyu0k9jt5ji', 'firstname', 'lastname', 'ball', NULL, '2021-12-29 14:52:18', '2021-12-29 14:52:18'),
('99d17f94-1e6e-45e6-9671-41be148e0772', 'abc98@hotmail.com', '$2a$10$CffbEE4fz1g1.F38VZ6JiuYC02yZ3mtRAff4dciSGDik4wQTLn3pO', 'firstname', 'lastname', 'ball', 'https://everydaynutrition.co.uk/wp-content/uploads/2015/01/default-user-avatar-300x300.png', '2021-12-29 15:04:00', '2021-12-29 15:04:00'),
('f7e1a883-7e32-4d3d-b746-7da0ab33cc7b', 'abc7@hotmail.com', '$2a$10$MfgcITyXFrcCibfMXbBR7.qksQ93A2amo/g8BSgCjEIRaWT0izd3i', 'firstname', 'lastname', 'ball', NULL, '2021-12-29 14:39:38', '2021-12-29 15:01:45'),
('fec6c92c-dda6-4fe9-89cd-3ce3f02c8701', 'ice.p@ebronco.co', '$2a$10$bEXSclPupMXt/jtqZ0aH1eJX9pURfnSed6sYWvDlPV2JTuiinKobK', NULL, NULL, NULL, 'https://everydaynutrition.co.uk/wp-content/uploads/2015/01/default-user-avatar-300x300.png', '2021-12-29 15:43:48', '2021-12-29 15:43:48');

-- --------------------------------------------------------

--
-- Table structure for table `vdos`
--

CREATE TABLE `vdos` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `img_cover` text,
  `vdo_link` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adonis_schema`
--
ALTER TABLE `adonis_schema`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `favorites_places_id_index` (`places_id`),
  ADD KEY `favorites_user_id_index` (`user_id`);

--
-- Indexes for table `places`
--
ALTER TABLE `places`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recommeded_trips`
--
ALTER TABLE `recommeded_trips`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `recommeded_trips_title_unique` (`title`);

--
-- Indexes for table `recommeded_trip_details`
--
ALTER TABLE `recommeded_trip_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `recommeded_trip_details_ref_recommened_index` (`ref_recommened`);

--
-- Indexes for table `recommended_places`
--
ALTER TABLE `recommended_places`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recommended_place_details`
--
ALTER TABLE `recommended_place_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `recommended_place_details_ref_recommended_index` (`ref_recommended`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_places_id_index` (`places_id`),
  ADD KEY `reviews_user_id_index` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `vdos`
--
ALTER TABLE `vdos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adonis_schema`
--
ALTER TABLE `adonis_schema`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `favorites`
--
ALTER TABLE `favorites`
  ADD CONSTRAINT `favorites_places_id_foreign` FOREIGN KEY (`places_id`) REFERENCES `places` (`id`),
  ADD CONSTRAINT `favorites_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `recommeded_trip_details`
--
ALTER TABLE `recommeded_trip_details`
  ADD CONSTRAINT `recommeded_trip_details_ref_recommened_foreign` FOREIGN KEY (`ref_recommened`) REFERENCES `recommeded_trips` (`id`);

--
-- Constraints for table `recommended_place_details`
--
ALTER TABLE `recommended_place_details`
  ADD CONSTRAINT `recommended_place_details_ref_recommended_foreign` FOREIGN KEY (`ref_recommended`) REFERENCES `recommended_places` (`id`);

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_places_id_foreign` FOREIGN KEY (`places_id`) REFERENCES `places` (`id`),
  ADD CONSTRAINT `reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
