-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 01, 2023 at 08:32 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `medbudd`
--

-- --------------------------------------------------------

--
-- Table structure for table `admininfo`
--

CREATE TABLE `admininfo` (
  `ad_id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` text NOT NULL,
  `company` varchar(255) NOT NULL,
  `headquarter` text NOT NULL,
  `country` text NOT NULL,
  `password` varchar(255) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admininfo`
--

INSERT INTO `admininfo` (`ad_id`, `first_name`, `last_name`, `email`, `company`, `headquarter`, `country`, `password`, `date`) VALUES
(1, 'AdminOne', 'Pharma', 'abc@gmail.com', 'Flakso', 'Nashik', 'India', '$2y$10$eClrEmvU2LN.b5pZVtFpOecrPevzQzPXfHJ9.cdz3ETz9JvP1Rpn6', '2023-05-02 11:06:17'),
(2, 'AdminTwo', 'Pharma', 'def@gmail.com', 'Flenmark', 'Nashik', 'India', '$2y$10$d/hiNtEOsmC/At5gcLOU2u.g3bldkTO3qXOr6GhCOO0LCAo7V1py6', '2023-05-02 11:06:52'),
(3, 'Ganesh', 'Gaitonde', 'ganeshgaitonde@gmail.com', 'Whos Pharma.', 'Mumbai', 'India', 'ganeshgaitonde', '2023-04-25 17:04:32'),
(11, 'Aditya', 'Patil', 'aditya@gmail.com', 'Baigan', 'Nashik', 'India', '$2y$10$EDZoycwgVaiY8zswXnLuXuKu6oBupuFSsmgRny6zi5dtNJM4lUh12', '2023-05-02 10:50:23'),
(12, 'Shraddha', 'Kapoor', 'sk@gmail.com', 'Crocin', 'Nashik', 'India', '$2y$10$4GjjeYHSFYM.BQhvsSeeq.Zcp/u1QbxNhneZ/Ka/cgexOEK2HTjdC', '2023-05-02 10:55:44'),
(13, 'Mohit', 'Mishra', 'mohit@gmail.com', 'Baigan', 'Nashik', 'India', '$2y$10$WVPhg4xLv4.SYStAlnRLPOHTJQDiYjcq55a3P4oSxQLlWiKOwqOm2', '2023-05-02 11:05:20'),
(18, 'Ana De', 'Armas', 'anadearmas@gmail.com', 'Kipla', 'Havana', 'Cuba', '$2y$10$DqE23d3FZbiB9H/MkdjoeudD0y9ub6bmFPHvNnThhE9Usjjn6QlC6', '2023-05-02 11:51:14'),
(19, 'Shraddha', 'Shukla', 'ssk@gmail.com', 'Yes Pharma', 'Nashik', 'India', '$2y$10$ROkatJhM8PKGzISJOSt00Om9xh7K9fc/TWaRymUUcVeJ5jwEqi6bu', '2023-05-02 20:16:27');

-- --------------------------------------------------------

--
-- Table structure for table `assigned`
--

CREATE TABLE `assigned` (
  `mr_id` int(11) NOT NULL,
  `p_name` varchar(255) NOT NULL,
  `mrp` double NOT NULL,
  `unit_target` int(11) NOT NULL DEFAULT 0,
  `unit_achieved` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `assigned`
--

INSERT INTO `assigned` (`mr_id`, `p_name`, `mrp`, `unit_target`, `unit_achieved`) VALUES
(101, 'Crocin 650 mg', 35, 10, 0),
(101, 'Dolo 650 mg', 150, 20, 0),
(101, 'Cofsils Naturals Cough Syrup Bottle 100 Ml', 69.7, 20, 0),
(101, 'Zecuf Cough Syrup 100ml', 106.25, 13, 0),
(101, 'Volini Spray', 50, 20, 0),
(102, 'Crocin 650 mg', 35, 10, 0),
(102, 'Dolo 650 mg', 150, 20, 0),
(102, 'Cofsils Naturals Cough Syrup Bottle 100 Ml', 69.7, 10, 0),
(102, 'Zecuf Cough Syrup 100ml', 106.25, 20, 0),
(102, 'Volini Spray', 50, 10, 0),
(102, 'Crocin 650 mg', 35, 10, 0),
(103, 'Crocin 650 mg', 35, 10, 0),
(103, 'Dolo 650 mg', 150, 11, 0),
(103, 'Cofsils Naturals Cough Syrup Bottle 100 Ml', 69.7, 12, 0),
(103, 'Zecuf Cough Syrup 100ml', 106.25, 13, 0),
(103, 'Volini Spray', 50, 14, 0);

-- --------------------------------------------------------

--
-- Table structure for table `assignedcomplete`
--

CREATE TABLE `assignedcomplete` (
  `mr_id` int(20) NOT NULL,
  `pname` varchar(50) NOT NULL,
  `unit` int(10) NOT NULL,
  `totalprice` int(10) NOT NULL,
  `soldto` varchar(50) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `assignedcomplete`
--

INSERT INTO `assignedcomplete` (`mr_id`, `pname`, `unit`, `totalprice`, `soldto`, `date`) VALUES
(102, 'WE', 12, 234, 'EDA', '2023-05-01');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `fname` text NOT NULL,
  `lname` text NOT NULL,
  `email` varchar(101) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`fname`, `lname`, `email`, `subject`, `message`, `date`) VALUES
('Aditya', 'Patil', 'adityap@gmail.com', 'Checking the Connection', 'Hello', '2023-05-10 15:50:08'),
('Shraddha', 'Kapoor', 'sk@gmail.com', 'Again Checking', 'Check', '2023-05-10 17:35:16'),
('Testing', 'One', 'test@gmail.com', 'Checking Connection', 'Check for connection', '2023-05-11 05:14:00'),
('Aditya', 'Patil', 'adityap@gmail.com', 'Checking the Connection', 'Check Connection', '2023-05-11 06:44:58'),
('', '', '', '', '', '2023-05-29 17:22:22');

-- --------------------------------------------------------

--
-- Table structure for table `medical_reg`
--

CREATE TABLE `medical_reg` (
  `shopid` int(11) NOT NULL,
  `Medical Name` varchar(50) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `GST NO` varchar(50) NOT NULL,
  `GST CERTIFICATE` varchar(50) NOT NULL,
  `Medical License` varchar(50) NOT NULL,
  `D pharma degree` varchar(50) NOT NULL,
  `Experience` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `medical_reg`
--

INSERT INTO `medical_reg` (`shopid`, `Medical Name`, `Address`, `GST NO`, `GST CERTIFICATE`, `Medical License`, `D pharma degree`, `Experience`) VALUES
(1, 'Ganesh Pharmacy', 'indira nagar nashik', '647A243097', '567A243097', '127A243097', '067A243097', 12),
(7, 'GP pharma', 'Nashik', 'hanklcbnakj779', 'abkclklah2348093482', 'nnqkjfbkq7124894', '1nfqlknklq4149808', 2001),
(8, 'Maharashtra pharma', 'Pathardi Road', 'cnklankla890r7820', 'ncklnaklcq414097831', 'nafklnkfqhw473180947', 'naklbnfkqjh12749717', 2017),
(9, 'Maruti pharma', 'Ashwin nagar', 'nacjkab789725', 'njkqnakfjhq214890178', 'cjaikhfqhh28345903185', 'ahjfoiahkh4379817801', 2004),
(10, 'MSS', 'Somewhere', '12312331', '132131', '3123', '13123', 321);

-- --------------------------------------------------------

--
-- Table structure for table `medical_registration`
--

CREATE TABLE `medical_registration` (
  `shop_id` int(11) NOT NULL,
  `medical_name` text NOT NULL,
  `address` varchar(512) NOT NULL,
  `gst_reg_no` varchar(255) NOT NULL,
  `gst_certificate` blob NOT NULL,
  `medical_license` blob NOT NULL,
  `dpharma_certificate` blob NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `medical_registration`
--

INSERT INTO `medical_registration` (`shop_id`, `medical_name`, `address`, `gst_reg_no`, `gst_certificate`, `medical_license`, `dpharma_certificate`, `date`) VALUES
(1, 'Maruti Pharmaceuticals', 'Indira Nagar, Nashik', '1234567890', 0x6773742e6a7067, 0x6773742e6a7067, 0x6773742e6a7067, '2023-01-01'),
(2, 'Ganesh Pharmacy', 'Nashik', '1346798520', 0x6773742e6a7067, 0x6773742e6a7067, 0x6773742e6a7067, '2023-02-01'),
(3, 'GP Pharma', 'Rajiv Nagar, Nashik', '7894561230', 0x6773742e6a7067, 0x6773742e6a7067, 0x6773742e6a7067, '2023-01-15'),
(4, 'Maharashtra Pharma', 'Pathardi Phata', '1478523690', 0x6773742e6a7067, 0x6773742e6a7067, 0x6773742e6a7067, '2023-02-15'),
(5, 'Gayatri Medical', 'Kishor Nagar', '9874561235', 0x6773742e6a7067, 0x6773742e6a7067, 0x6773742e6a7067, '2023-03-01');

-- --------------------------------------------------------

--
-- Table structure for table `mrsignup`
--

CREATE TABLE `mrsignup` (
  `username` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mrsignup`
--

INSERT INTO `mrsignup` (`username`, `Email`, `Password`) VALUES
('mclancjank', '0', 'mmdmd789'),
('anurag_dubey', '0', 'anu3467'),
('anurag_dubey', 'anuragdubey920@gmail.com', 'anu3467'),
('anurag_dubey', 'anuragdubey920@gmail.com', 'anu3467'),
('Ganesh', 'ganeshbhaugaitonde@gmail.com', '445566777');

-- --------------------------------------------------------

--
-- Table structure for table `mr_app_info`
--

CREATE TABLE `mr_app_info` (
  `mr_id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `state` text NOT NULL,
  `headquarter` text NOT NULL,
  `pan_no` varchar(20) NOT NULL,
  `region` text NOT NULL,
  `aadhar_number` bigint(20) NOT NULL,
  `id` blob NOT NULL,
  `password` varchar(255) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mr_app_info`
--

INSERT INTO `mr_app_info` (`mr_id`, `first_name`, `last_name`, `email`, `state`, `headquarter`, `pan_no`, `region`, `aadhar_number`, `id`, `password`, `date`) VALUES
(101, 'Aditya', 'Patil', 'adityap@gmail.com', 'Maharashtra', 'Nashik', 'ABCD1234', 'Nashik', 123456781111, 0x64756d6d792d6161646861722e6a7067, '$2y$10$k83XgppCvfvjuJitAontdey9McxoWAip.rbhRtYaxiL9AIPKb6ice', '2023-05-02 16:23:42'),
(102, 'Anurag', 'Dube', 'anuragd@gmail.com', 'Maharashtra', 'Nashik', 'ABCD5678', 'Malegaon', 987654321110, 0x64756d6d792d6161646861722e6a7067, '$2y$10$DuKT1z/9HqnQfsIX4JG9zeSjzXzSGTXrdYJQWD2zN0vSLNy8XwYw6', '2023-05-02 16:26:14'),
(103, 'Rahul', 'Yadav', 'rahuly@gmail.com', 'Maharashtra', 'Nashik', 'ABCD1011', 'Niphad', 134679976431, 0x64756d6d792d6161646861722e6a7067, '$2y$10$lWYj1fskjA5BaKteijvbMe4gu1fplbRRLkfP37PodGPWcoRQ2UH06', '2023-05-02 16:31:18'),
(104, 'Shiladh', 'Shinde', 'shailadh@gmail.com', 'Maharashtra', 'Nashik', 'ABCD1213', 'Chandwad', 147963258000, 0x64756d6d792d6161646861722e6a7067, '$2y$10$FgVC9rDlERrJd729znp1OOApfDOsaRGV0EM6sDYtut4hQUdU9jaAK', '2023-05-02 16:32:35'),
(105, 'Suresh', 'Bhide', 'sureshb@gmail.com', 'Maharashtra', 'Mumbai', 'DEFG1234', 'Ratnagiri', 11112222, 0x64756d6d792d6161646861722e6a7067, '$2y$10$dO7R0T2FfyGgwMQoD/4cC.BO4tCaNXBu5gKWH0V2F.W2nE6CdIeQ.', '2023-05-02 16:33:30'),
(110, 'Prakash', 'Pawar', 'prakashpawar@gmail.com', 'Maharashtra', 'Nashik', 'ABCD0000', 'Igatpuri', 11110000, 0x64756d6d792d6161646861722e6a7067, '$2y$10$9A13bmjKIEhY33r00yHCYOsBOTYddbtCMwUzWdSMDkrSm5M5DxdbS', '2023-05-24 19:13:55'),
(111, 'Mukesh', 'Kumar', 'mkkumar@gmail.com', 'Maharashtra', 'Nashik', 'ABCD7777', 'Manmad', 777711117777, 0x64756d6d792d6161646861722e6a7067, '$2y$10$e6jE53e0/a2hY4NC06gceu5116gXwWYy51.I3zyfyTwELP0XhrsLS', '2023-05-30 23:38:22'),
(112, 'Hritik', 'Roshan', 'hr@gmail.com', 'Maharashtra', 'Nashik', 'ABCD1212', 'Igatpuri', 11117777, 0x64756d6d792d6161646861722e6a7067, '$2y$10$gYxE7bHGSM7bncSPprtedOJjWNccD.WsFeJ2z4y9MMa/MoLkYcPau', '2023-06-01 23:37:30');

-- --------------------------------------------------------

--
-- Table structure for table `mr_data`
--

CREATE TABLE `mr_data` (
  `mr_id` int(11) NOT NULL,
  `m_id` int(11) NOT NULL,
  `mr_name` varchar(255) NOT NULL,
  `region` varchar(255) NOT NULL,
  `unit_target` int(11) NOT NULL,
  `unit_achieved` int(11) NOT NULL,
  `achieved` double NOT NULL,
  `target` double NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mr_data`
--

INSERT INTO `mr_data` (`mr_id`, `m_id`, `mr_name`, `region`, `unit_target`, `unit_achieved`, `achieved`, `target`, `status`) VALUES
(101, 1, 'Aditya', 'Nashik', 5, 0, 3000, 10000, 'Available'),
(102, 1, 'Anurag', 'Malegaon', 5, 0, 3500, 10000, 'Available'),
(103, 1, 'Rahul', 'Niphad', 5, 0, 3000, 10000, 'Available'),
(104, 1, 'Shailadh', 'Chandwad', 5, 0, 4000, 10000, 'Available'),
(105, 2, 'Suresh', 'Ratnagiri', 5, 0, 9000, 10000, 'Available'),
(110, 1, 'Prakash', 'Igatpuri', 0, 0, 0, 0, 'Available'),
(111, 1, 'Mukesh', 'Manmad', 0, 0, 0, 0, 'Available'),
(112, 1, 'Hritik', 'Igatpuri', 0, 0, 0, 0, 'Available');

-- --------------------------------------------------------

--
-- Table structure for table `orderscomplete`
--

CREATE TABLE `orderscomplete` (
  `mr_id` int(20) NOT NULL,
  `pname` varchar(50) NOT NULL,
  `totalprice` int(10) NOT NULL,
  `unit` int(10) NOT NULL,
  `shopname` varchar(50) NOT NULL,
  `region` varchar(30) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `mrname` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orderscomplete`
--

INSERT INTO `orderscomplete` (`mr_id`, `pname`, `totalprice`, `unit`, `shopname`, `region`, `date`, `mrname`) VALUES
(102, 'Crocin 650 mg', 123, 10, 'something', 'nat now', '2023-05-05', 'qw'),
(101, 'Cofsils Naturals Cough Syrup Bottle 100 Ml', 0, 10, 'Ganesh Pharmacy', 'Nashik', '2023-05-11', 'abc'),
(101, 'Cofsils Naturals Cough Syrup Bottle 100 Ml', 0, 10, 'Ganesh Pharmacy', 'Nashik', '2023-05-11', 'abc'),
(101, 'Cofsils Naturals Cough Syrup Bottle 100 Ml', 20, 10, 'Ganesh Pharmacy', 'Nashik', '2023-05-11', 'abc'),
(102, 'Crocin 650 mg', 0, 10, 'ABC Medical', 'Malegaon', '2023-05-11', 'Anurag Dube'),
(102, 'Crocin 650 mg', 0, 10, 'ABC Medical', 'Malegaon', '2023-05-11', 'Anurag Dube'),
(102, 'Crocin 650 mg', 0, 10, 'ABC Medical', 'Malegaon', '2023-05-11', 'Anurag Dube');

-- --------------------------------------------------------

--
-- Table structure for table `orderstaken`
--

CREATE TABLE `orderstaken` (
  `p_name` varchar(255) NOT NULL,
  `mrp` double NOT NULL,
  `quantity` int(11) NOT NULL,
  `region` varchar(255) NOT NULL,
  `shop_name` varchar(255) NOT NULL,
  `mr_id` int(11) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orderstaken`
--

INSERT INTO `orderstaken` (`p_name`, `mrp`, `quantity`, `region`, `shop_name`, `mr_id`, `date`) VALUES
('Zecuf Cough Syrup 100ml', 106.25, 10, 'Igatpuri', 'Gayatri Medical', 110, '2023-06-01'),
('Crocin 650 mg', 35, 10, 'Igatpuri', 'Gayatri Medical', 110, '2023-06-01'),
('Volini Spray', 50, 10, 'Igatpuri', 'Gayatri Medical', 110, '2023-06-01'),
('Zecuf Cough Syrup 100ml', 106.25, 5, 'Igatpuri', 'Gayatri Medical', 110, '2023-06-01'),
('Crocin 650 mg', 35, 11, 'Nashik', 'Ganesh Pharmacy', 101, '2023-06-01'),
('Dolo 650 mg', 150, 12, 'Nashik', 'Ganesh Pharmacy', 101, '2023-06-01'),
('Cofsils Naturals Cough Syrup Bottle 100 Ml', 69.7, 13, 'Nashik', 'Ganesh Pharmacy', 101, '2023-06-01'),
('Zecuf Cough Syrup 100ml', 106.25, 14, 'Nashik', 'Ganesh Pharmacy', 101, '2023-06-01'),
('Volini Spray', 50, 15, 'Nashik', 'Ganesh Pharmacy', 101, '2023-06-01'),
('Crocin 650 mg', 35, 11, 'Manmad', 'Ganesh Pharmacy', 111, '2023-06-01'),
('Dolo 650 mg', 150, 12, 'Manmad', 'Ganesh Pharmacy', 111, '2023-06-01'),
('Cofsils Naturals Cough Syrup Bottle 100 Ml', 69.7, 13, 'Manmad', 'Ganesh Pharmacy', 111, '2023-06-01'),
('Zecuf Cough Syrup 100ml', 106.25, 14, 'Manmad', 'Ganesh Pharmacy', 111, '2023-06-01'),
('Volini Spray', 50, 15, 'Manmad', 'Ganesh Pharmacy', 111, '2023-06-01'),
('Crocin 650 mg', 35, 5, 'Malegaon', 'Select Medical', 102, '2023-06-01'),
('Dolo 650 mg', 150, 10, 'Malegaon', 'Select Medical', 102, '2023-06-01'),
('Cofsils Naturals Cough Syrup Bottle 100 Ml', 69.7, 5, 'Malegaon', 'Select Medical', 102, '2023-06-01'),
('Zecuf Cough Syrup 100ml', 106.25, 10, 'Malegaon', 'Select Medical', 102, '2023-06-01'),
('Volini Spray', 50, 15, 'Malegaon', 'Select Medical', 102, '2023-06-01'),
('Crocin 650 mg', 35, 5, 'Niphad', 'Select Medical', 103, '2023-06-01'),
('Dolo 650 mg', 150, 5, 'Niphad', 'Select Medical', 103, '2023-06-01'),
('Cofsils Naturals Cough Syrup Bottle 100 Ml', 69.7, 5, 'Niphad', 'Select Medical', 103, '2023-06-01'),
('Zecuf Cough Syrup 100ml', 106.25, 5, 'Niphad', 'Select Medical', 103, '2023-06-01'),
('Volini Spray', 50, 5, 'Niphad', 'Select Medical', 103, '2023-06-01'),
('Crocin 650 mg', 35, 10, 'Niphad', 'Select Medical', 103, '2023-06-01'),
('Crocin 650 mg', 35, 10, 'Niphad', 'Maruti Pharmaceuticals', 103, '2023-06-01'),
('Volini Spray', 50, 20, 'Niphad', 'Select Medical', 103, '2023-06-01');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `p_id` int(11) NOT NULL,
  `p_name` varchar(255) NOT NULL,
  `mrp` double NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`p_id`, `p_name`, `mrp`, `quantity`) VALUES
(1, 'Crocin 650 mg', 35, 100),
(2, 'Dolo 650 mg', 150, 25),
(3, 'Cofsils Naturals Cough Syrup Bottle 100 Ml', 69.7, 20),
(4, 'Zecuf Cough Syrup 100ml', 106.25, 10),
(5, 'Volini Spray', 50, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admininfo`
--
ALTER TABLE `admininfo`
  ADD PRIMARY KEY (`ad_id`),
  ADD UNIQUE KEY `email` (`email`) USING HASH;

--
-- Indexes for table `medical_reg`
--
ALTER TABLE `medical_reg`
  ADD PRIMARY KEY (`shopid`);

--
-- Indexes for table `medical_registration`
--
ALTER TABLE `medical_registration`
  ADD PRIMARY KEY (`shop_id`),
  ADD UNIQUE KEY `gst_reg_no` (`gst_reg_no`);

--
-- Indexes for table `mr_app_info`
--
ALTER TABLE `mr_app_info`
  ADD PRIMARY KEY (`mr_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `aadhar_number` (`aadhar_number`),
  ADD UNIQUE KEY `pan_no` (`pan_no`);

--
-- Indexes for table `mr_data`
--
ALTER TABLE `mr_data`
  ADD PRIMARY KEY (`mr_id`),
  ADD KEY `m_id` (`m_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`p_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admininfo`
--
ALTER TABLE `admininfo`
  MODIFY `ad_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `medical_reg`
--
ALTER TABLE `medical_reg`
  MODIFY `shopid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `medical_registration`
--
ALTER TABLE `medical_registration`
  MODIFY `shop_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `mr_app_info`
--
ALTER TABLE `mr_app_info`
  MODIFY `mr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
