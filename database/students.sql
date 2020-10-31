-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 31, 2020 at 05:40 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `student_life`
--

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `email`, `phone`, `department`, `created_at`, `updated_at`) VALUES
(1, 'Payton Kiehn', 'parisian.timmothy@example.com', '383-994-7132 x70372', 'Bangla', '2020-10-30 11:11:35', '2020-10-30 11:11:35'),
(2, 'Giovani Casper', 'demarco.vandervort@example.net', '1-584-220-4149 x42617', 'IBA', '2020-10-30 11:11:35', '2020-10-30 11:11:35'),
(3, 'Prof. Sierra Schroeder DDS', 'rico79@example.com', '721-850-2114', 'IBA', '2020-10-30 11:11:35', '2020-10-30 11:11:35'),
(4, 'Reggie Zulauf', 'howe.albertha@example.net', '782-629-1547 x569', 'English', '2020-10-30 11:11:52', '2020-10-30 11:11:52'),
(5, 'Dr. Ubaldo O\'Keefe DVM', 'schowalter.hazel@example.com', '(285) 848-7031 x6349', 'Math', '2020-10-30 11:11:52', '2020-10-30 11:11:52'),
(6, 'Delphia Bins', 'cassie.king@example.com', '1-616-456-4282', 'English', '2020-10-30 11:11:52', '2020-10-30 11:11:52'),
(7, 'Enola Heidenreich', 'thalia.zemlak@example.org', '(875) 384-5656', 'Marketing', '2020-10-30 11:11:58', '2020-10-30 11:11:58'),
(8, 'Michale Herzog', 'wilhelm32@example.org', '1-915-452-1604 x71199', 'Math', '2020-10-30 11:11:58', '2020-10-30 11:11:58'),
(9, 'Taya Gottlieb', 'corbin15@example.org', '1-610-947-1391', 'Marketing', '2020-10-30 11:11:59', '2020-10-30 11:11:59'),
(10, 'Amari Schmeler', 'queen68@example.net', '+1-748-648-0968', 'Bangla', '2020-10-30 11:12:12', '2020-10-30 11:12:12'),
(11, 'Mellie Bogisich', 'antonietta50@example.com', '718-980-7676 x959', 'Bangla', '2020-10-30 11:12:12', '2020-10-30 11:12:12'),
(12, 'Mr. Niko Kautzer DDS', 'lilian.baumbach@example.net', '(770) 870-5427 x9590', 'Bangla', '2020-10-30 11:12:12', '2020-10-30 11:12:12'),
(13, 'Mr. Ignatius Cronin', 'klocko.dessie@example.org', '(316) 779-6813', 'Math', '2020-10-30 11:12:12', '2020-10-30 11:12:12'),
(14, 'Raymond Larkin', 'garth.barrows@example.com', '1-675-588-5988 x5790', 'Marketing', '2020-10-30 11:12:12', '2020-10-30 11:12:12'),
(15, 'Dr. Eli Kshlerin', 'bergstrom.agustina@example.org', '364-205-9937', 'Marketing', '2020-10-30 11:12:12', '2020-10-30 11:12:12'),
(16, 'Miss Zelda Cronin IV', 'elijah.emard@example.net', '598-672-7365', 'CSE', '2020-10-30 11:12:12', '2020-10-30 11:12:12'),
(17, 'Santos Christiansen', 'cartwright.amir@example.com', '(868) 919-6198 x93542', 'BBA', '2020-10-30 11:12:12', '2020-10-30 11:12:12'),
(18, 'Terrance Bernier', 'greenfelder.lelah@example.net', '407.687.9158 x349', 'Bangla', '2020-10-30 11:12:12', '2020-10-30 11:12:12'),
(19, 'Ashton Blick', 'icie.mckenzie@example.org', '(278) 726-1551 x86859', 'IBA', '2020-10-30 11:12:12', '2020-10-30 11:12:12'),
(20, 'Thea Fritsch', 'isaias.feil@example.org', '1-328-347-2718 x875', 'English', '2020-10-30 11:12:12', '2020-10-30 11:12:12'),
(21, 'Aryanna Leffler Jr.', 'katelynn.watsica@example.net', '+1-775-700-1181', 'Bangla', '2020-10-30 11:12:12', '2020-10-30 11:12:12'),
(22, 'Magdalena Prosacco DDS', 'hbalistreri@example.net', '1-817-294-2256', 'IBA', '2020-10-30 11:12:12', '2020-10-30 11:12:12'),
(23, 'Mohammad Turcotte', 'mose87@example.org', '1-513-759-8722 x5154', 'CSE', '2020-10-30 11:12:12', '2020-10-30 11:12:12'),
(24, 'Taya Gusikowski', 'seamus.padberg@example.net', '+12706541269', 'BBA', '2020-10-30 11:12:12', '2020-10-30 11:12:12'),
(25, 'Mr. Colby Metz', 'runte.ryder@example.org', '(327) 616-0996 x885', 'Marketing', '2020-10-30 11:12:13', '2020-10-30 11:12:13'),
(26, 'Mandy Kuhn III', 'meggie39@example.net', '(748) 489-4364 x0045', 'Marketing', '2020-10-30 11:12:13', '2020-10-30 11:12:13'),
(27, 'Audra Orn', 'bayer.clemmie@example.net', '363-643-7217 x2871', 'English', '2020-10-30 11:12:13', '2020-10-30 11:12:13'),
(28, 'Dolly Heller', 'baron.bogan@example.com', '+1.454.301.8331', 'English', '2020-10-30 11:12:13', '2020-10-30 11:12:13'),
(29, 'Mae Romaguera', 'kiehn.connor@example.com', '1-214-951-3543 x425', 'Math', '2020-10-30 11:12:13', '2020-10-30 11:12:13'),
(30, 'Elisha Becker', 'pgoldner@example.org', '828-882-3646 x83921', 'English', '2020-10-30 11:12:13', '2020-10-30 11:12:13'),
(31, 'Miss Elna Jerde', 'olga.kilback@example.net', '851.979.9539 x0547', 'English', '2020-10-30 11:12:13', '2020-10-30 11:12:13'),
(32, 'Irwin Baumbach', 'phudson@example.net', '+1-693-338-3350', 'Marketing', '2020-10-30 11:12:13', '2020-10-30 11:12:13'),
(33, 'Assunta Medhurst', 'gudrun88@example.net', '873-509-7416 x6947', 'Bangla', '2020-10-30 11:12:13', '2020-10-30 11:12:13'),
(34, 'Prof. Sage Wisozk', 'uhansen@example.com', '+1-574-362-3399', 'Bangla', '2020-10-30 11:12:13', '2020-10-30 11:12:13'),
(35, 'Kamren Casper III', 'wkoch@example.com', '1-695-293-9464 x9880', 'IBA', '2020-10-30 11:12:13', '2020-10-30 11:12:13'),
(36, 'Tamia Towne PhD', 'kcarter@example.org', '968.405.5046 x98928', 'Bangla', '2020-10-30 11:12:13', '2020-10-30 11:12:13'),
(37, 'Jamir Medhurst', 'hbergstrom@example.net', '(578) 425-6454', 'Marketing', '2020-10-30 11:12:13', '2020-10-30 11:12:13'),
(38, 'Kacie Schneider', 'franecki.christopher@example.org', '+1 (536) 773-7136', 'IBA', '2020-10-30 11:12:13', '2020-10-30 11:12:13'),
(39, 'Dr. Hayley Hermann', 'timothy.ward@example.com', '395.506.1026 x44455', 'Math', '2020-10-30 11:12:13', '2020-10-30 11:12:13'),
(40, 'Emerald Yundt', 'delia.yundt@example.com', '867-840-8723 x076', 'Marketing', '2020-10-30 11:12:13', '2020-10-30 11:12:13'),
(41, 'Miss Angelita Bergnaum', 'charlotte34@example.com', '778-985-8080 x462', 'CSE', '2020-10-30 11:12:14', '2020-10-30 11:12:14'),
(42, 'Bernhard Kshlerin', 'mia.pollich@example.com', '858-563-1484', 'CSE', '2020-10-30 11:12:14', '2020-10-30 11:12:14'),
(43, 'Jared Schmitt DDS', 'tsporer@example.org', '(668) 319-7418', 'BBA', '2020-10-30 11:12:14', '2020-10-30 11:12:14'),
(44, 'Prof. Keeley Ziemann', 'friedrich.moore@example.org', '506.250.8561', 'English', '2020-10-30 11:12:14', '2020-10-30 11:12:14'),
(45, 'Juvenal Reichert', 'houston.rath@example.net', '204-368-3107', 'CSE', '2020-10-30 11:12:14', '2020-10-30 11:12:14'),
(46, 'Reyna McCullough', 'cormier.maye@example.org', '1-746-949-2925', 'English', '2020-10-30 11:12:14', '2020-10-30 11:12:14'),
(47, 'Jeremy Batz DVM', 'alexandre.fadel@example.org', '(592) 505-5179 x075', 'IBA', '2020-10-30 11:12:14', '2020-10-30 11:12:14'),
(48, 'Prof. Buster Gerhold', 'ibauch@example.com', '384.897.8156', 'Bangla', '2020-10-30 11:12:14', '2020-10-30 11:12:14'),
(49, 'Prof. Ewell O\'Conner', 'eschowalter@example.org', '729.431.2457 x4805', 'CSE', '2020-10-30 11:12:14', '2020-10-30 11:12:14'),
(50, 'Miss Pink Kuhn', 'roberto84@example.org', '239.669.4923 x659', 'English', '2020-10-30 11:12:14', '2020-10-30 11:12:14'),
(51, 'Dr. Kaden Gusikowski', 'jaren26@example.com', '(934) 287-1907 x5779', 'Bangla', '2020-10-30 11:12:14', '2020-10-30 11:12:14'),
(52, 'Al Blanda', 'oberbrunner.ernestine@example.com', '1-253-952-0942 x9862', 'Math', '2020-10-30 11:12:14', '2020-10-30 11:12:14'),
(53, 'Mr. Nicholaus Lehner Jr.', 'dhyatt@example.net', '1-529-566-3256', 'Bangla', '2020-10-30 11:12:14', '2020-10-30 11:12:14'),
(54, 'Ms. Eleanora O\'Connell', 'lyda.smitham@example.org', '1-990-735-1452 x598', 'CSE', '2020-10-30 11:12:14', '2020-10-30 11:12:14'),
(55, 'Shemar Tremblay DDS', 'santos.pollich@example.net', '+1-475-456-0202', 'BBA', '2020-10-30 11:12:14', '2020-10-30 11:12:14'),
(56, 'Remington Brown', 'crona.damian@example.net', '718.880.5860 x48499', 'English', '2020-10-30 11:12:14', '2020-10-30 11:12:14'),
(57, 'Garrick Fahey', 'edmond.ward@example.org', '489.781.6384 x52055', 'IBA', '2020-10-30 11:12:14', '2020-10-30 11:12:14'),
(58, 'Dr. Rosalind Mayer', 'kutch.kieran@example.net', '561.397.2979', 'Math', '2020-10-30 11:12:14', '2020-10-30 11:12:14'),
(59, 'Barry Altenwerth', 'sydney94@example.com', '(781) 555-8442 x17162', 'Marketing', '2020-10-30 11:12:14', '2020-10-30 11:12:14'),
(60, 'Janet Nader', 'conn.parker@example.net', '1-527-939-5149', 'Marketing', '2020-10-30 11:12:14', '2020-10-30 11:12:14'),
(61, 'Ms. Millie Rowe MD', 'elsie.johnson@example.net', '1-385-520-3826 x984', 'CSE', '2020-10-30 11:12:14', '2020-10-30 11:12:14'),
(62, 'Prof. Karley Heller III', 'sarai62@example.net', '212-235-0839', 'Math', '2020-10-30 11:12:15', '2020-10-30 11:12:15'),
(63, 'Dr. Easter Mosciski', 'dibbert.colt@example.net', '+1.906.258.2658', 'English', '2020-10-30 11:12:15', '2020-10-30 11:12:15'),
(64, 'Ernest Weber', 'eliza.johns@example.net', '385-425-9910 x203', 'IBA', '2020-10-30 11:12:15', '2020-10-30 11:12:15'),
(65, 'Laurine Barrows I', 'kayleigh81@example.net', '1-341-389-6648 x75522', 'CSE', '2020-10-30 11:12:15', '2020-10-30 11:12:15'),
(66, 'Makenzie Dare IV', 'klocko.gwendolyn@example.net', '1-464-265-0841 x73618', 'CSE', '2020-10-30 11:12:15', '2020-10-30 11:12:15'),
(67, 'Dr. Immanuel Ullrich DVM', 'edmond29@example.net', '1-959-595-5336 x681', 'CSE', '2020-10-30 11:12:15', '2020-10-30 11:12:15'),
(68, 'Paolo Daugherty', 'kunde.tomas@example.org', '376-864-4821 x231', 'English', '2020-10-30 11:12:15', '2020-10-30 11:12:15'),
(69, 'Prof. Wava Schamberger PhD', 'deckow.everett@example.com', '+19767742681', 'IBA', '2020-10-30 11:12:15', '2020-10-30 11:12:15'),
(70, 'Darby Crona', 'haleigh.shanahan@example.com', '(737) 644-3225 x04067', 'IBA', '2020-10-30 11:12:15', '2020-10-30 11:12:15'),
(71, 'Nelle Denesik PhD', 'krista90@example.net', '(432) 973-8262 x584', 'Marketing', '2020-10-30 11:12:15', '2020-10-30 11:12:15'),
(72, 'Ms. Alycia Batz V', 'jackson41@example.org', '1-581-598-4491 x1918', 'Marketing', '2020-10-30 11:12:15', '2020-10-30 11:12:15'),
(73, 'Ms. Katharina Collins PhD', 'laurence02@example.org', '1-905-819-6699', 'BBA', '2020-10-30 11:12:15', '2020-10-30 11:12:15'),
(74, 'Dr. Margie Bradtke', 'pfeest@example.org', '1-625-933-8508', 'BBA', '2020-10-30 11:12:15', '2020-10-30 11:12:15'),
(75, 'Violette Casper', 'jake.hand@example.org', '328.421.2440', 'CSE', '2020-10-30 11:12:16', '2020-10-30 11:12:16'),
(76, 'Dell Jones III', 'waters.larry@example.net', '834.280.4114', 'English', '2020-10-30 11:12:16', '2020-10-30 11:12:16'),
(77, 'Rosalinda Roob Sr.', 'wpacocha@example.com', '351-389-3031', 'IBA', '2020-10-30 11:12:16', '2020-10-30 11:12:16'),
(78, 'Dr. Luis Nienow Sr.', 'maritza.bernier@example.net', '549.476.3201 x85021', 'CSE', '2020-10-30 11:12:16', '2020-10-30 11:12:16'),
(79, 'Maryam Orn', 'quigley.shaun@example.org', '1-769-234-0533', 'Bangla', '2020-10-30 11:12:16', '2020-10-30 11:12:16'),
(80, 'safwan', 'safwan@gmail.com', '01943837962', 'CSE', '2020-10-31 10:36:58', '2020-10-31 10:36:58'),
(81, 'Safwan 123', 'Safwan13@gameil.com', '01943837962', 'dhaka', '2020-10-31 10:38:52', '2020-10-31 10:38:52'),
(82, 'Safwanhassan', 'Safwanhassan@gmail.com', '01943837962', 'IUB', '2020-10-31 10:40:09', '2020-10-31 10:40:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
