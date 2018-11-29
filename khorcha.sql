-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2018 at 10:18 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `khorcha`
--

-- --------------------------------------------------------

--
-- Table structure for table `basics`
--

CREATE TABLE `basics` (
  `basic_id` int(10) UNSIGNED NOT NULL,
  `basic_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `basic_details` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `basic_logo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `basic_status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `expense_id` int(10) UNSIGNED NOT NULL,
  `expcate_id` int(11) NOT NULL,
  `expense_details` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expense_amount` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expense_date` date NOT NULL,
  `creator_id` int(11) NOT NULL,
  `expense_status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`expense_id`, `expcate_id`, `expense_details`, `expense_amount`, `expense_date`, `creator_id`, `expense_status`, `created_at`, `updated_at`) VALUES
(1, 1, 'House Rent for January', '20000.00', '2018-01-15', 1, 1, '2018-01-24 09:18:53', NULL),
(2, 2, 'Buy Mobile', '35000', '2018-01-20', 1, 1, '2018-01-24 09:19:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `expense_categories`
--

CREATE TABLE `expense_categories` (
  `expcate_id` int(10) UNSIGNED NOT NULL,
  `expcate_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expcate_remarks` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expcate_creator` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expcate_status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expense_categories`
--

INSERT INTO `expense_categories` (`expcate_id`, `expcate_name`, `expcate_remarks`, `expcate_creator`, `expcate_status`, `created_at`, `updated_at`) VALUES
(1, 'House Rent', '', '1', 1, '2018-01-24 09:15:56', NULL),
(2, 'Shopping', '', '1', 1, '2018-01-24 09:16:03', NULL),
(3, 'Pocket Money', '', '1', 1, '2018-01-24 09:16:23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `incomes`
--

CREATE TABLE `incomes` (
  `income_id` int(10) UNSIGNED NOT NULL,
  `incate_id` int(11) NOT NULL,
  `income_details` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `income_amount` int(11) NOT NULL,
  `income_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `creator_id` int(11) NOT NULL,
  `income_status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `incomes`
--

INSERT INTO `incomes` (`income_id`, `incate_id`, `income_details`, `income_amount`, `income_date`, `creator_id`, `income_status`, `created_at`, `updated_at`) VALUES
(1, 2, 'Website Development', 45000, '2018-01-27 05:13:42', 1, 1, '2018-01-24 09:16:51', NULL),
(2, 3, 'Domain & Hosting Sell ', 5000, '2018-02-22 18:00:00', 1, 1, '2018-01-24 09:17:20', NULL),
(3, 1, 'January Sallery', 23000, '2018-02-22 18:00:00', 1, 1, '2018-01-24 09:17:55', NULL),
(4, 3, 'Domain & Hosting Sell ', 1000, '2018-01-23 18:00:00', 1, 1, '2018-01-24 09:18:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `income_categories`
--

CREATE TABLE `income_categories` (
  `incate_id` int(10) UNSIGNED NOT NULL,
  `incate_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `incate_remarks` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `incate_creator` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `incate_status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `income_categories`
--

INSERT INTO `income_categories` (`incate_id`, `incate_name`, `incate_remarks`, `incate_creator`, `incate_status`, `created_at`, `updated_at`) VALUES
(1, 'Sallery', '', '1', 1, '2018-01-24 09:15:01', NULL),
(2, 'Consultancy', '', '1', 1, '2018-01-24 09:15:09', NULL),
(3, 'Domain Hosting Sales', '', '1', 1, '2018-01-24 09:15:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `loaners`
--

CREATE TABLE `loaners` (
  `loaner_id` int(10) UNSIGNED NOT NULL,
  `loaner_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `loaner_phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `loaner_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `loaner_remarks` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `loaner_status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `loaners`
--

INSERT INTO `loaners` (`loaner_id`, `loaner_name`, `loaner_phone`, `loaner_email`, `loaner_remarks`, `loaner_status`, `created_at`, `updated_at`) VALUES
(1, 'Shahin Alom', '01725-191028', 'shahin@gmail.com', '', 1, '2018-01-20 07:51:19', NULL),
(2, 'Tahsan Ahamed', '01922332233', 'tahsan@gmail.com', 'etrete etret ret e', 1, '2018-01-22 06:06:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `loan_givens`
--

CREATE TABLE `loan_givens` (
  `loan_given_id` int(10) UNSIGNED NOT NULL,
  `loaner_id` int(11) NOT NULL,
  `loan_given_amount` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `loan_given_date` date NOT NULL,
  `loan_given_replay_date` date NOT NULL,
  `loan_given_remarks` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `loan_given_status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `loan_givens`
--

INSERT INTO `loan_givens` (`loan_given_id`, `loaner_id`, `loan_given_amount`, `loan_given_date`, `loan_given_replay_date`, `loan_given_remarks`, `loan_given_status`, `created_at`, `updated_at`) VALUES
(1, 1, '11000', '2018-01-23', '2018-01-25', 'asasa aasasas ', 1, '2018-01-22 09:45:48', NULL),
(2, 2, '2200', '2018-01-23', '2018-01-25', 'asasa aasasas ', 1, '2018-01-22 09:47:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `loan_paids`
--

CREATE TABLE `loan_paids` (
  `loan_paid_id` int(10) UNSIGNED NOT NULL,
  `loaner_id` int(11) NOT NULL,
  `loan_paid_amount` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `loan_paid_date` date NOT NULL,
  `loan_paid_replay_date` date DEFAULT NULL,
  `loan_paid_remarks` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `loan_paid_status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `loan_paids`
--

INSERT INTO `loan_paids` (`loan_paid_id`, `loaner_id`, `loan_paid_amount`, `loan_paid_date`, `loan_paid_replay_date`, `loan_paid_remarks`, `loan_paid_status`, `created_at`, `updated_at`) VALUES
(1, 1, '1500', '2018-01-23', '2018-01-26', 'asasasa', 1, '2018-01-22 09:16:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `loan_payments`
--

CREATE TABLE `loan_payments` (
  `loan_payment_id` int(10) UNSIGNED NOT NULL,
  `loaner_id` int(11) NOT NULL,
  `loan_payment_amount` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `loan_payment_date` date NOT NULL,
  `loan_payment_replay_date` date DEFAULT NULL,
  `loan_payment_remarks` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `loan_payment_status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `loan_payments`
--

INSERT INTO `loan_payments` (`loan_payment_id`, `loaner_id`, `loan_payment_amount`, `loan_payment_date`, `loan_payment_replay_date`, `loan_payment_remarks`, `loan_payment_status`, `created_at`, `updated_at`) VALUES
(1, 1, '10000', '2018-01-09', '2018-01-31', 'qw qwqw qwq ', 1, '2018-01-22 10:14:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `loan_receiveds`
--

CREATE TABLE `loan_receiveds` (
  `loan_rec_id` int(10) UNSIGNED NOT NULL,
  `loaner_id` int(11) NOT NULL,
  `loan_rec_amount` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `loan_rec_date` date NOT NULL,
  `loan_replay_date` date NOT NULL,
  `loan_remarks` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `loan_rec_status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `loan_receiveds`
--

INSERT INTO `loan_receiveds` (`loan_rec_id`, `loaner_id`, `loan_rec_amount`, `loan_rec_date`, `loan_replay_date`, `loan_remarks`, `loan_rec_status`, `created_at`, `updated_at`) VALUES
(1, 1, '111', '2018-01-10', '2018-01-10', 'Test Remarks', 1, '2018-01-22 05:56:04', NULL),
(2, 1, '5000', '2018-01-02', '2018-01-22', 'sasasasaas as asa s', 1, '2018-01-22 06:06:04', NULL),
(3, 2, '7000', '2018-01-17', '2018-01-15', 'asasasa', 1, '2018-01-22 06:07:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_10_18_090249_create_income_categories_table', 1),
(4, '2017_10_19_052444_create_incomes_table', 1),
(5, '2017_10_24_070838_create_expenses_table', 1),
(6, '2017_10_24_072018_create_expense_categories_table', 1),
(7, '2017_11_04_031546_create_basics_table', 1),
(8, '2017_11_13_050824_create_loaners_table', 1),
(9, '2018_01_20_065138_create_loan_receiveds_table', 1),
(10, '2018_01_20_072741_create_loan_paids_table', 1),
(11, '2018_01_22_040526_create_loan_givens_table', 2),
(12, '2018_01_22_041222_create_loan_payments_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `role` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `status`, `role`, `photo`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Saidul Islam Uzzal', 'uzzalbd.cit@gmail.com', '$2y$10$LiDYxyq1.6TRHwVmVK71d.q6Rxv0p6LK0QTHv0jmbT.Leas344Y/2', 1, NULL, NULL, NULL, '2018-01-20 01:42:32', '2018-01-20 01:42:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `basics`
--
ALTER TABLE `basics`
  ADD PRIMARY KEY (`basic_id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`expense_id`);

--
-- Indexes for table `expense_categories`
--
ALTER TABLE `expense_categories`
  ADD PRIMARY KEY (`expcate_id`);

--
-- Indexes for table `incomes`
--
ALTER TABLE `incomes`
  ADD PRIMARY KEY (`income_id`);

--
-- Indexes for table `income_categories`
--
ALTER TABLE `income_categories`
  ADD PRIMARY KEY (`incate_id`);

--
-- Indexes for table `loaners`
--
ALTER TABLE `loaners`
  ADD PRIMARY KEY (`loaner_id`),
  ADD UNIQUE KEY `loaners_loaner_phone_unique` (`loaner_phone`);

--
-- Indexes for table `loan_givens`
--
ALTER TABLE `loan_givens`
  ADD PRIMARY KEY (`loan_given_id`);

--
-- Indexes for table `loan_paids`
--
ALTER TABLE `loan_paids`
  ADD PRIMARY KEY (`loan_paid_id`);

--
-- Indexes for table `loan_payments`
--
ALTER TABLE `loan_payments`
  ADD PRIMARY KEY (`loan_payment_id`);

--
-- Indexes for table `loan_receiveds`
--
ALTER TABLE `loan_receiveds`
  ADD PRIMARY KEY (`loan_rec_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `basics`
--
ALTER TABLE `basics`
  MODIFY `basic_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `expense_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `expense_categories`
--
ALTER TABLE `expense_categories`
  MODIFY `expcate_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `incomes`
--
ALTER TABLE `incomes`
  MODIFY `income_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `income_categories`
--
ALTER TABLE `income_categories`
  MODIFY `incate_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `loaners`
--
ALTER TABLE `loaners`
  MODIFY `loaner_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `loan_givens`
--
ALTER TABLE `loan_givens`
  MODIFY `loan_given_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `loan_paids`
--
ALTER TABLE `loan_paids`
  MODIFY `loan_paid_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `loan_payments`
--
ALTER TABLE `loan_payments`
  MODIFY `loan_payment_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `loan_receiveds`
--
ALTER TABLE `loan_receiveds`
  MODIFY `loan_rec_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
