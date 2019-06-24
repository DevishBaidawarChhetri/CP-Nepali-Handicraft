-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 23, 2019 at 05:00 PM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `00174648_devishbaidawarchhetri_cp`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `a_id` int(11) NOT NULL,
  `a_username` varchar(255) NOT NULL,
  `a_password` varchar(255) NOT NULL,
  `a_email` varchar(50) NOT NULL,
  `a_contact` bigint(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`a_id`, `a_username`, `a_password`, `a_email`, `a_contact`) VALUES
(1, 'admin', 'admin', 'admin@admin.com', 9843324021),
(3, 'deepak', 'deepak', 'deepak@gmail.com', 9876543234);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact`
--

CREATE TABLE `tbl_contact` (
  `c_id` int(11) NOT NULL,
  `c_name` varchar(50) NOT NULL,
  `c_email` varchar(50) NOT NULL,
  `c_subject` varchar(50) NOT NULL,
  `c_message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_contact`
--

INSERT INTO `tbl_contact` (`c_id`, `c_name`, `c_email`, `c_subject`, `c_message`) VALUES
(1, 'Devish Baidawar Chhetri', 'devish@gmail.com', 'Asking for delivery', 'Can I get facility of home delivery for the product that I have chose?'),
(2, 'Deepak Maharjan', 'deepakmaharjan10@gmail.com', 'Products Price', 'Can the price of product be reduced??? I am a regular customer. Please!');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_forum_comment`
--

CREATE TABLE `tbl_forum_comment` (
  `fc_id` int(11) NOT NULL,
  `u_name` varchar(50) NOT NULL,
  `fq_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_forum_comment`
--

INSERT INTO `tbl_forum_comment` (`fc_id`, `u_name`, `fq_id`, `comment`, `date`) VALUES
(1, 'Saugat', 1, 'Yes...I am very pleased with the product that I got from this online portal.', '2019-06-22'),
(4, 'Niyash', 2, 'This is test comment!', '2019-06-23');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_forum_question`
--

CREATE TABLE `tbl_forum_question` (
  `fq_id` int(11) NOT NULL,
  `u_name` varchar(255) NOT NULL,
  `question` text NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_forum_question`
--

INSERT INTO `tbl_forum_question` (`fq_id`, `u_name`, `question`, `date`) VALUES
(1, 'Devish', 'Is this the best place to find handicraft products???', '2019-06-22'),
(2, 'Devish', 'This is for test...', '2019-06-22');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `p_id` int(11) NOT NULL,
  `p_name` varchar(255) NOT NULL,
  `p_image` varchar(255) NOT NULL,
  `p_description` text NOT NULL,
  `p_price` double NOT NULL,
  `p_disprice` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`p_id`, `p_name`, `p_image`, `p_description`, `p_price`, `p_disprice`) VALUES
(1, 'Wooden Basket', '82601441.jpg', 'These are bamboo gift baskets which can be made in different shapes like square rectangular as well as round they come with handle and also can be made without handle too ideal as gift baskets during weddings and celebrations can be customized as per our customers requirement.', 2350, 2150),
(2, 'Hand Bag', '9874451.jpg', 'Splendidly designed handicraft bags are definite to gain the appreciation of everyone. Purple fabric, creme shoulder strap & floral designs- these all seize the eyes immediately.	', 2400, 2200),
(3, 'Stick House', '56402347.jpg', 'Ice Cream Stick House is made with the materials like colored popsicle sticks,simple popsicle sticks ,  glue, hot melting glue which are easily available at you house and nearby handicraft store.\r\n\r\nYou can use this popsicle stick house (ice cream stick house) as your school projects and make model house. With materials like popsicle stick and some origami paper make miniature house.', 500, 450),
(4, 'Handmade Lamp', '10469020.jpg', 'The Estelle lamp is a lamp made from the finest bamboo nets based on the traditional saloni(sieve) design. The light spreads through the bamboo nets and provide a calm and eclectic ambience. This can be used as a floor lamp or a table lamp depending on your preference and interiors.', 3000, 2500);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_register_user`
--

CREATE TABLE `tbl_register_user` (
  `u_id` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `e_mail` varchar(255) NOT NULL,
  `telephone` bigint(50) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(50) NOT NULL,
  `region` varchar(50) NOT NULL,
  `gender` enum('Male','Female','Other','') NOT NULL,
  `password` varchar(255) NOT NULL,
  `confirm_password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_register_user`
--

INSERT INTO `tbl_register_user` (`u_id`, `fname`, `lname`, `e_mail`, `telephone`, `address`, `city`, `country`, `region`, `gender`, `password`, `confirm_password`) VALUES
(1, 'Devish', 'Baidawar Chhetri', 'devish@gmail.com', 9843324021, 'Simako', 'Lalitpur', 'Nepal', 'Bagmati', 'Male', 'devish123', 'devish123'),
(2, 'Saujanya', 'Subedi', 'saugat@gmail.com', 9843324065, 'Mahalaxmisthan', 'Lalitpur', 'Nepal', 'Bagmati', 'Male', 'saugat', 'saugat'),
(3, 'Niyash', 'Baidawar Chhetri', 'niyash@gmail.com', 4564675, 'Kupondole', 'Kathmandu', 'Nepal', 'Bagmati', 'Male', 'niyash123', 'niyash123');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subscriber`
--

CREATE TABLE `tbl_subscriber` (
  `s_id` int(11) NOT NULL,
  `s_email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_subscriber`
--

INSERT INTO `tbl_subscriber` (`s_id`, `s_email`) VALUES
(1, 'saugat@gmail.com'),
(2, 'anish@gmail.com'),
(3, 'deepak@gmail.com'),
(5, 'niyash@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`a_id`),
  ADD UNIQUE KEY `a_username` (`a_username`);

--
-- Indexes for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `tbl_forum_comment`
--
ALTER TABLE `tbl_forum_comment`
  ADD PRIMARY KEY (`fc_id`);

--
-- Indexes for table `tbl_forum_question`
--
ALTER TABLE `tbl_forum_question`
  ADD PRIMARY KEY (`fq_id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `tbl_register_user`
--
ALTER TABLE `tbl_register_user`
  ADD PRIMARY KEY (`u_id`),
  ADD UNIQUE KEY `e_mail` (`e_mail`);

--
-- Indexes for table `tbl_subscriber`
--
ALTER TABLE `tbl_subscriber`
  ADD PRIMARY KEY (`s_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `a_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_forum_comment`
--
ALTER TABLE `tbl_forum_comment`
  MODIFY `fc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_forum_question`
--
ALTER TABLE `tbl_forum_question`
  MODIFY `fq_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_register_user`
--
ALTER TABLE `tbl_register_user`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_subscriber`
--
ALTER TABLE `tbl_subscriber`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
