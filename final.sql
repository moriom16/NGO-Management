-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2022 at 07:44 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `final`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(12) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `middlename` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `username`, `password`, `firstname`, `middlename`, `lastname`) VALUES
(2, 'hello', '1234', 'Administrator', '', ''),
(3, 'humayra', 'humayra', 'humayra', '', 'mony');

-- --------------------------------------------------------

--
-- Table structure for table `assign`
--

CREATE TABLE `assign` (
  `id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `post` varchar(512) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `title`, `post`, `image`) VALUES
(2, 'Stepping up hand hygiene: How to make hand hygiene more accessible and inclusive', 'Evidence shows that regular and thorough handwashing can lead to better health outcomes for all, and organisations have been working for years to promote this key behaviour globally. Despite that, the habit of handwashing with soap still remains unpractic', 'img/360_F_375036897_1R0GY0PnsBMeg9fuWRtld4AqHxDqaAeR.jpg'),
(3, 'This year’s World Youth Skills Day is about “reimagining Youth Skills Post-Pandemic”. Snapshot: 30 ways BRAC supports girl children', 'Girl children often discontinue education when they are married early, because of peer pressure from their new in-laws and lack of time, as a result of being occupied with domestic duties such as household chores and raising children. 1.7 million girl stu', 'img/girl.jpg'),
(4, '50 years of serving Bangladesh: Community healthcare to pandemic response', 'BRAC is currently the hub of the world’s largest non-government network of community health workers. Across Bangladesh, this network of 50,000 women are taking essential healthcare to the doorsteps of families and reaching the last mile, standing by 80 mi', 'img/health.jpg'),
(5, 'An early focus on wellbeing pays off for a lifetime', 'Childrens’ wellbeing is connected to their learning, and their ability to nurture meaningful relationships in their early years. Children’s brains are extremely active in the early years, and the connections they make become the building blocks of their future. A good foundation makes a difference through adulthood.', 'img/img1.jpg'),
(6, 'Why we need to upskill women workers in Bangladesh’s apparel sector', 'Why we need to upskill women workers in Bangladesh’s apparel sector', 'img/womens.jpg'),
(7, 'Why we need to upskill women workers in Bangladesh’s apparel sector', 'The decreasing number of women workers can be attributed to a number of factors, but key among those are a lack of decent working conditions and a lack of adequate skill development. The industry has not ensured equal opportunities in supervisory roles, which has led to men holding the majority of supervisory positions.', 'img/womens.jpg'),
(8, 'Stepping up hand hygiene: How to make hand hygiene more accessible and inclusive', 'We are aiming to install 1,000 public handwashing stations across Bangladesh, mostly in crowded locations such as mosques, markets, schools and bus stands, as part of our commitment to providing people with more access to hygiene facilities.\r\nEvidence shows that regular and thorough handwashing can lead to better health outcomes for all, and organisations have been working for years to promote this key behaviour globally. Despite that, the habit of handwashing with soap still remains unpractic', 'img/360_F_375036897_1R0GY0PnsBMeg9fuWRtld4AqHxDqaAeR.jpg'),
(9, 'dfg', 'vfdv', 'img/worker dashboard (1).jpg');

-- --------------------------------------------------------

--
-- Table structure for table `blood_donor_info`
--

CREATE TABLE `blood_donor_info` (
  `b_d_id` int(11) NOT NULL,
  `blood_doner_first_name` varchar(30) NOT NULL,
  `blood_doner_last_name` varchar(30) NOT NULL,
  `blood_doner_phone` int(11) NOT NULL,
  `blood_g` varchar(5) NOT NULL,
  `blood_doner_add` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blood_donor_info`
--

INSERT INTO `blood_donor_info` (`b_d_id`, `blood_doner_first_name`, `blood_doner_last_name`, `blood_doner_phone`, `blood_g`, `blood_doner_add`) VALUES
(1, 'Efat', 'khan', 51848584, ' A+', 'barishal, bangladesh.'),
(2, 'Rimon', 'Rahman', 17816455, ' O-', 'barishal, bangladesh.'),
(3, 'sohanur', 'Rahman', 54841515, ' O-', 'barishal, bangladesh.'),
(4, 'Shoeb', 'khan', 1785411, ' O+', 'Barishal, bangladesh.'),
(5, 'kfjdshf', 'kdkjdj', 223432, ' A+', 'cjddj@djd.com'),
(6, 'kjdf', 'sjkhdkj', 33339837, ' B+', 'dkj@hdh.com'),
(7, 'nusrat', 'any', 1764789546, ' B+', 'mirpur'),
(8, 'Nusrat', 'Amy', 2356, ' B+', 'tila');

-- --------------------------------------------------------

--
-- Table structure for table `borrowers`
--

CREATE TABLE `borrowers` (
  `id` int(30) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `middlename` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `contact_no` varchar(30) NOT NULL,
  `address` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `tax_id` varchar(50) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `borrowers`
--

INSERT INTO `borrowers` (`id`, `firstname`, `middlename`, `lastname`, `contact_no`, `address`, `email`, `tax_id`, `date_created`) VALUES
(1, 'John', 'C', 'Smith', '+16554 454654', 'Sample address', 'jsmith@sample.com', '789845-23', 0);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_name`) VALUES
(6, 'Main Course'),
(7, 'Pasta'),
(9, 'Dessert'),
(10, 'Rice');

-- --------------------------------------------------------

--
-- Table structure for table `child`
--

CREATE TABLE `child` (
  `name` varchar(255) NOT NULL,
  `age` int(11) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `itr` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `mname` varchar(255) NOT NULL,
  `birthday` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `child`
--

INSERT INTO `child` (`name`, `age`, `gender`, `address`, `date`, `id`, `itr`, `fname`, `mname`, `birthday`) VALUES
('MoriomJahan', 8, 'Female', 'moulovibazir', '05032016', 21, 12345, '', '', ''),
('mubassirakhanom', 8, 'Female', 'Bianibazir', '02022016', 22, 1234, '', '', ''),
('DipuAhmed', 10, 'Female', 'Bianibazir', '07052012', 23, 23, '', '', ''),
('NipulZaman', 12, 'Male', 'bianibazir', '08032010', 24, 1234, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `events_id` int(11) DEFAULT NULL,
  `post` varchar(255) NOT NULL,
  `comment` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `events_id`, `post`, `comment`) VALUES
(1, 1, 'hi', 'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available'),
(2, 2, 'hlw', 'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available');

-- --------------------------------------------------------

--
-- Table structure for table `donor_info`
--

CREATE TABLE `donor_info` (
  `d_id` int(11) NOT NULL,
  `donor_first_name` varchar(15) NOT NULL,
  `donor_last_name` varchar(15) NOT NULL,
  `donor_phone` int(11) NOT NULL,
  `transaction_method` varchar(15) NOT NULL,
  `donation_amount` int(11) NOT NULL,
  `transaction_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donor_info`
--

INSERT INTO `donor_info` (`d_id`, `donor_first_name`, `donor_last_name`, `donor_phone`, `transaction_method`, `donation_amount`, `transaction_id`) VALUES
(1, 'Fahad', 'Khan', 5484848, 'Nagad', 5000, 'sdf5sdf8d'),
(2, 'Efat', 'Khan', 1718470578, 'Bkash', 1000, 'adfasf45'),
(3, 'sifat', 'al sium', 51848485, 'Bkash', 10000, 'sdf1s54d'),
(4, 'sejad', 'khan', 51584878, 'Nagad', 2000, 'sdfsd5s'),
(5, 'Nahian', 'Rahman', 2147483647, 'Nagad', 50000, 'njf65efsddf'),
(6, 'arif', 'sium', 215845, 'Nagad', 10000, 'adfadfa4545'),
(7, 'Rahat ', 'Khan', 21874851, 'Nagad', 5000, 'njf65efsd'),
(8, 'Piash', 'taluddar', 178151515, 'Bkash', 500, '8374723dfs'),
(9, 'dfsf', 'dffdfds', 4534534, 'Nagad', 444, '2324343'),
(10, 'dfsf', 'dffdfds', 4534534, 'Nagad', 444, '2324343'),
(11, 'dfd', 'dfds', 453543445, 'Bkash', 45435, 'rtrt'),
(12, 'amy', 'jahan', 43546, 'Bkash', 2, '567890'),
(13, 'humu', 'jahan', 167657866, 'Bkash', 50, '564367'),
(14, 'amy', 'jahan', 534645, 'Bkash', 54754, '564367');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `venue` text NOT NULL,
  `status` text NOT NULL,
  `co` text NOT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `co_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `description`, `date`, `time`, `venue`, `status`, `co`, `admin_id`, `co_id`) VALUES
(1, 'Youth Transforming bootcamp', 'The exchange meeting’s theme for this year is “Youth Transforming Conflict”. The notion of conflict is here understood in a very broad sense.  ', '2022-07-14', '18:00:00', 'Dhaka', 'High Priority', 'Smith', 0, NULL),
(2, 'Blood Donation Campaign', '“Donating blood is an act of solidarity. Join the effort and save lives” to draw attention to the roles that voluntary blood donations play in saving lives and enhancing solidarity within communities. ', '2022-08-17', '17:30:00', 'Sylhet', 'High Priority', 'Adel', 0, NULL),
(6, 'women enterprenurship', 'lorem ipsum', '2022-08-12', '13:00:00', 'Dhaka', 'High Priority', 'John', 0, NULL),
(7, 'qweqweqw', 'qweqwdwqdqwd', '2022-08-17', '05:00:00', 'dqwedqed', 'Low Priority', 'John', 0, NULL),
(8, 'title', 'description', '2022-08-09', '15:18:00', 'Sylhet', 'High Priority', 'John', 0, NULL),
(10, 'vnvnvbm', 'vghhft rthrttjtyjt', '2022-11-23', '14:09:00', 'testevent', 'High Priority', 'John', 0, NULL),
(11, 'mzxbcmxbcmbv', 'gfgsfigiufyisyfisyfkhkadoiaudioayfiu', '2022-11-09', '13:32:00', 'Sylhet', 'Midium Priority', 'Smith', 0, NULL),
(12, 'whatever', 'nkjdfghkdfh', '2022-12-12', '00:08:00', '2DhakaUpdated', 'High Priority', 'John', 2, NULL),
(13, 'whatever', 'ugigigihi', '2022-12-28', '04:05:00', '2DhakaUpdated', 'High Priority', 'Adel', 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `e_id` int(11) NOT NULL,
  `expenses_type` varchar(15) NOT NULL,
  `staff_first_name` varchar(15) NOT NULL,
  `staff_last_name` varchar(15) NOT NULL,
  `staff_phone` varchar(15) NOT NULL,
  `staff_post` varchar(15) NOT NULL,
  `e_amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fecalisys`
--

CREATE TABLE `fecalisys` (
  `fecalisys_id` int(11) NOT NULL,
  `date_of_request` date NOT NULL,
  `requested_by` varchar(30) NOT NULL,
  `color` varchar(15) NOT NULL,
  `consistency` varchar(15) NOT NULL,
  `pus_cells` varchar(15) NOT NULL,
  `RBC` varchar(15) NOT NULL,
  `fat_globules` varchar(15) NOT NULL,
  `occult_blood` varchar(15) NOT NULL,
  `others_chem` varchar(15) NOT NULL,
  `ova` varchar(15) NOT NULL,
  `larva` varchar(15) NOT NULL,
  `adult_forms` varchar(15) NOT NULL,
  `cyst` varchar(15) NOT NULL,
  `trophozoites` varchar(15) NOT NULL,
  `others_pro` varchar(15) NOT NULL,
  `remarks` varchar(100) NOT NULL,
  `date_reported` date NOT NULL,
  `pathologist` varchar(30) NOT NULL,
  `medical_technologist` varchar(30) NOT NULL,
  `itr_no` varchar(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `month` varchar(10) NOT NULL,
  `year` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fecalisys`
--

INSERT INTO `fecalisys` (`fecalisys_id`, `date_of_request`, `requested_by`, `color`, `consistency`, `pus_cells`, `RBC`, `fat_globules`, `occult_blood`, `others_chem`, `ova`, `larva`, `adult_forms`, `cyst`, `trophozoites`, `others_pro`, `remarks`, `date_reported`, `pathologist`, `medical_technologist`, `itr_no`, `user_id`, `month`, `year`) VALUES
(1, '2022-06-01', 'adlsddf', 'dfgfh', 'dfgh', 'ghbjvgbh', 'dfgh', 'ftgyh', 'drftg', 'tygh', 'rftgyhj', 'fdghj', 'rftgh', 'fghj', 'fdgh', 'ertyuidrftgh', 'frsghdgbd', '2022-06-15', 'rytug', 'tfeyhjwkl', 'tryui', 33456, 'tdfghjk', 'srwfhgj');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `img` varchar(255) NOT NULL,
  `caption` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `img`, `caption`) VALUES
(7, '360_F_375036897_1R0GY0PnsBMeg9fuWRtld4AqHxDqaAeR.jpg', 'Save Child'),
(9, 'download.jpg', 'sponsor a child'),
(10, '360_F_375036897_1R0GY0PnsBMeg9fuWRtld4AqHxDqaAeR.jpg', 'save child'),
(11, '360_F_375036897_1R0GY0PnsBMeg9fuWRtld4AqHxDqaAeR.jpg', 'Save Child'),
(15, 'Screenshot 2022-06-06 005741.png', 'Empowerment'),
(16, '360_F_375036897_1R0GY0PnsBMeg9fuWRtld4AqHxDqaAeR.jpg', 'Child health');

-- --------------------------------------------------------

--
-- Table structure for table `hospital_facility_donar_info`
--

CREATE TABLE `hospital_facility_donar_info` (
  `h_d_id` int(11) NOT NULL,
  `hospital_facility_donar_first_name` varchar(15) NOT NULL,
  `hospital_facility_donar_last_name` varchar(15) NOT NULL,
  `hospital_facility_donar_org` varchar(50) NOT NULL,
  `hospital_facility_donar_phone` varchar(15) NOT NULL,
  `hospital_equipment_name_and_quantity` varchar(150) NOT NULL,
  `hospital_facility_donar_add` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hospital_facility_donar_info`
--

INSERT INTO `hospital_facility_donar_info` (`h_d_id`, `hospital_facility_donar_first_name`, `hospital_facility_donar_last_name`, `hospital_facility_donar_org`, `hospital_facility_donar_phone`, `hospital_equipment_name_and_quantity`, `hospital_facility_donar_add`) VALUES
(1, 'Efat', 'Khan', 'Khan production', ' 01545125889', 'x-ray (2)', 'Barishal, Bangladesh'),
(2, 'Tanvir', 'bin Johir', '', ' 05184851', 'oxigen-(100)', 'Barishal, Bangladesh'),
(3, 'ff', 'ff', 'ff', ' 545', 'fdsfds', 'dffg@ff.com');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `item_id` int(11) NOT NULL,
  `item_name` varchar(250) NOT NULL,
  `item_code` varchar(250) NOT NULL,
  `item_description` text NOT NULL,
  `item_price` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`item_id`, `item_name`, `item_code`, `item_description`, `item_price`) VALUES
(13, 'Rice', '50', 'kg', '500'),
(14, 'Drinking water', '100', 'bottle', '10'),
(15, 'Blankets', '50', 'piece', '200'),
(16, 'Winter hat', '50', 'piece', '50'),
(17, 'Winter gloves', '20', 'piece', '20'),
(18, 'Winter socks', '20', 'piece', '30'),
(19, 'Winter Tent', '10', 'piece', '100');

-- --------------------------------------------------------

--
-- Table structure for table `itr`
--

CREATE TABLE `itr` (
  `itr_no` varchar(4) NOT NULL,
  `family_no` varchar(6) NOT NULL,
  `phil_health_no` varchar(11) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `middlename` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `birthdate` varchar(20) NOT NULL,
  `age` int(11) NOT NULL,
  `address` varchar(30) NOT NULL,
  `civil_status` varchar(10) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `BP` varchar(10) NOT NULL,
  `TEMP` varchar(10) NOT NULL,
  `PR` varchar(10) NOT NULL,
  `RR` varchar(10) NOT NULL,
  `WT` varchar(10) NOT NULL,
  `HT` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `loan_list`
--

CREATE TABLE `loan_list` (
  `id` int(30) NOT NULL,
  `ref_no` varchar(50) NOT NULL,
  `loan_type_id` int(30) NOT NULL,
  `borrower_id` int(30) NOT NULL,
  `purpose` text NOT NULL,
  `amount` double NOT NULL,
  `plan_id` int(30) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0= request, 1= confrimed,2=released,3=complteted,4=denied\r\n',
  `date_released` datetime NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loan_list`
--

INSERT INTO `loan_list` (`id`, `ref_no`, `loan_type_id`, `borrower_id`, `purpose`, `amount`, `plan_id`, `status`, `date_released`, `date_created`) VALUES
(3, '81409630', 1, 1, 'Sample Only', 100000, 1, 2, '2020-09-26 09:06:00', '2020-09-26 15:06:29');

-- --------------------------------------------------------

--
-- Table structure for table `loan_plan`
--

CREATE TABLE `loan_plan` (
  `id` int(30) NOT NULL,
  `months` int(11) NOT NULL,
  `interest_percentage` float NOT NULL,
  `penalty_rate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loan_plan`
--

INSERT INTO `loan_plan` (`id`, `months`, `interest_percentage`, `penalty_rate`) VALUES
(1, 36, 8, 3),
(2, 24, 5, 2),
(3, 27, 6, 2);

-- --------------------------------------------------------

--
-- Table structure for table `loan_schedules`
--

CREATE TABLE `loan_schedules` (
  `id` int(30) NOT NULL,
  `loan_id` int(30) NOT NULL,
  `date_due` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loan_schedules`
--

INSERT INTO `loan_schedules` (`id`, `loan_id`, `date_due`) VALUES
(2, 3, '2020-10-26'),
(3, 3, '2020-11-26'),
(4, 3, '2020-12-26'),
(5, 3, '2021-01-26'),
(6, 3, '2021-02-26'),
(7, 3, '2021-03-26'),
(8, 3, '2021-04-26'),
(9, 3, '2021-05-26'),
(10, 3, '2021-06-26'),
(11, 3, '2021-07-26'),
(12, 3, '2021-08-26'),
(13, 3, '2021-09-26'),
(14, 3, '2021-10-26'),
(15, 3, '2021-11-26'),
(16, 3, '2021-12-26'),
(17, 3, '2022-01-26'),
(18, 3, '2022-02-26'),
(19, 3, '2022-03-26'),
(20, 3, '2022-04-26'),
(21, 3, '2022-05-26'),
(22, 3, '2022-06-26'),
(23, 3, '2022-07-26'),
(24, 3, '2022-08-26'),
(25, 3, '2022-09-26'),
(26, 3, '2022-10-26'),
(27, 3, '2022-11-26'),
(28, 3, '2022-12-26'),
(29, 3, '2023-01-26'),
(30, 3, '2023-02-26'),
(31, 3, '2023-03-26'),
(32, 3, '2023-04-26'),
(33, 3, '2023-05-26'),
(34, 3, '2023-06-26'),
(35, 3, '2023-07-26'),
(36, 3, '2023-08-26'),
(37, 3, '2023-09-26');

-- --------------------------------------------------------

--
-- Table structure for table `loan_types`
--

CREATE TABLE `loan_types` (
  `id` int(30) NOT NULL,
  `type_name` text NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loan_types`
--

INSERT INTO `loan_types` (`id`, `type_name`, `description`) VALUES
(1, 'Small Business', 'Small Business Loans'),
(2, 'Mortgages', 'Mortgages'),
(3, 'Personal Loans', 'Personal Loans'),
(4, 'Home Loan', 'Home loan');

-- --------------------------------------------------------

--
-- Table structure for table `medicin_doner_info`
--

CREATE TABLE `medicin_doner_info` (
  `m_d_id` int(11) NOT NULL,
  `medicin_doner_first_name` varchar(20) NOT NULL,
  `medicin_doner_last_name` varchar(20) NOT NULL,
  `medicin_doner_org` varchar(50) NOT NULL,
  `medicin_doner_phone` int(11) NOT NULL,
  `medicin_name_and_quantity` varchar(150) NOT NULL,
  `medicin_doner_add` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medicin_doner_info`
--

INSERT INTO `medicin_doner_info` (`m_d_id`, `medicin_doner_first_name`, `medicin_doner_last_name`, `medicin_doner_org`, `medicin_doner_phone`, `medicin_name_and_quantity`, `medicin_doner_add`) VALUES
(1, 'Efat ', 'khan', 'Khan Production', 548485412, 'Napa 500-(10000), Aslor 120-(10000)', 'Dhaka, Bangladesh'),
(2, 'Piash', 'Taluddar', 'frame Photographi', 5184851, 'Or salain-(1000)', 'Dhaka, Bangladesh'),
(3, 'dfd', 'df', 'fdf', 34355345, 'xvxcvxf', 'fd@efr.c');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `m_name` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `m_name`, `category`) VALUES
(11, 'vuna Khichuri', 'Breakfast'),
(12, 'Dal + Rice + Chicken curry ', 'Launch'),
(13, 'Dal + Rice + Egg curry', 'Dinner'),
(15, 'Tea + Biscuit/Bread ', 'Snacks');

-- --------------------------------------------------------

--
-- Table structure for table `msg`
--

CREATE TABLE `msg` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `msg`
--

INSERT INTO `msg` (`id`, `name`, `email`, `text`, `time`) VALUES
(1, 'abc', 'abc@gmail.com', 'Lorem Ipsum is simply dummy text', '2022-08-05 20:02:27'),
(2, 'abcde', 'tasniam16@gmail.com', 'when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '2022-08-05 20:02:27'),
(3, 'abc', 'abc@gmail.com', 'always thought about women and children first when coming up with designs for its many programmes', '2022-08-05 20:02:27'),
(4, 'abcde', 'abcde@gmail.com', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '2022-08-05 20:02:27');

-- --------------------------------------------------------

--
-- Table structure for table `old`
--

CREATE TABLE `old` (
  `itr` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `age` int(11) NOT NULL,
  `gender` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `gaddress` varchar(255) NOT NULL,
  `gnumber` int(11) NOT NULL,
  `health` varchar(255) NOT NULL,
  `date` varchar(200) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `old`
--

INSERT INTO `old` (`itr`, `name`, `age`, `gender`, `address`, `gaddress`, `gnumber`, `health`, `date`, `id`) VALUES
(1, 'NoorjahanBibi', 0, 72, 'bianibazir', 'bianibazir', 1734678910, 'Female', '15111950', 2),
(2, 'MoriomJahan', 0, 70, 'Bianibazir', 'Jikigonj', 1732678910, 'Female', '13091952', 3),
(3, 'AbedaAkter', 0, 60, 'moulovibazir', 'Moulovibazir', 1746462573, 'Female', '12071957', 4),
(4, 'UmmeyZannat', 0, 42, 'moulovibazir', 'Moulovibazir', 1815406654, 'Female', '15121960', 5),
(5, 'swadhingoush', 0, 45, 'sylhet', 'sylhet', 1615406654, 'Male', '04041955', 6),
(6, 'Abdur Rahim', 0, 47, 'sylhet', 'sylhet', 1832678950, 'Male', '07081959', 7);

-- --------------------------------------------------------

--
-- Table structure for table `pay`
--

CREATE TABLE `pay` (
  `acc` int(11) NOT NULL,
  `p_date` date NOT NULL,
  `deposit` int(50) NOT NULL,
  `u_deposit` int(50) NOT NULL,
  `t_deposit` int(50) NOT NULL,
  `t_pay_deposit` int(50) NOT NULL,
  `due` int(50) NOT NULL,
  `s_deposit` int(50) NOT NULL,
  `t_s_deposit` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pay`
--

INSERT INTO `pay` (`acc`, `p_date`, `deposit`, `u_deposit`, `t_deposit`, `t_pay_deposit`, `due`, `s_deposit`, `t_s_deposit`) VALUES
(8375937, '2022-11-02', 3000, 2000, 9000, 12000, 5000, 2000, 5000),
(9475097, '2022-11-01', 500, 1000, 2000, 2000, 1000, 1000, 1000),
(32749898, '2022-12-02', 2000, 0, 2000, 15000, 5000, 1000, 1000),
(37497939, '2022-12-10', 5000, 2000, 8000, 10000, 5000, 8000, 100000),
(48759834, '2022-11-01', 500, 0, 1000, 1500, 1000, 0, 0),
(83793259, '2022-12-01', 5000, 0, 6000, 6000, 2000, 2000, 8000),
(85793587, '2022-12-15', 5000, 1000, 6000, 6000, 5000, 1000, 1000),
(987654321, '2022-11-09', 2000, 0, 2000, 2000, 1000, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(30) NOT NULL,
  `loan_id` int(30) NOT NULL,
  `payee` text NOT NULL,
  `amount` float NOT NULL DEFAULT 0,
  `penalty_amount` float NOT NULL DEFAULT 0,
  `overdue` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=no , 1 = yes',
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `loan_id`, `payee`, `amount`, `penalty_amount`, `overdue`, `date_created`) VALUES
(2, 3, 'Smith, John C', 3000, 0, 0, '2020-09-26 15:51:01');

-- --------------------------------------------------------

--
-- Table structure for table `reg`
--

CREATE TABLE `reg` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `usertype` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg`
--

INSERT INTO `reg` (`id`, `name`, `address`, `email`, `password`, `usertype`) VALUES
(1, 'humu', 'moulovibazir', 'humayrashirinmoni@gmail.com', 'humu', 'user'),
(2, 'asd', 'moulovibazir', 'humayrashirinmoni@gmail.com', 'humu', 'volunteer'),
(3, 'abc', '98 pollobi', 'tasniam16@gmail.com', '689798', 'manager');

-- --------------------------------------------------------

--
-- Table structure for table `staff_info`
--

CREATE TABLE `staff_info` (
  `s_id` int(11) NOT NULL,
  `staff_first_name` varchar(15) NOT NULL,
  `staff_last_name` varchar(15) NOT NULL,
  `staff_phone` varchar(15) NOT NULL,
  `staff_email` varchar(40) NOT NULL,
  `staff_post` varchar(15) NOT NULL,
  `staff_salary` int(11) NOT NULL,
  `staff_add` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `street`
--

CREATE TABLE `street` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `dob` varchar(100) NOT NULL,
  `location` varchar(210) NOT NULL,
  `gender` varchar(110) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `street`
--

INSERT INTO `street` (`id`, `name`, `dob`, `location`, `gender`, `status`) VALUES
(1, 'Tasnia', '2022-07-13', 'Sylhet', 'female', 1),
(2, 'Tasnia', '2022-07-13', 'Sylhet', 'female', 1),
(6, 'Tasnia', '2022-07-13', 'Sylhet', 'female', 1),
(7, 'abcde', '2022-11-25', 'Sylhet', 'female', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_items`
--

CREATE TABLE `tbl_order_items` (
  `order_items_id` int(11) NOT NULL,
  `order_id` varchar(150) NOT NULL,
  `item_name` varchar(250) NOT NULL,
  `item_quantity` int(11) NOT NULL,
  `item_unit` varchar(30) NOT NULL,
  `item_cost` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_order_items`
--

INSERT INTO `tbl_order_items` (`order_items_id`, `order_id`, `item_name`, `item_quantity`, `item_unit`, `item_cost`) VALUES
(8, '6380f97e69692', 'cat', 2, 'Bags', '2'),
(9, '6380fb7dacc8c', 'rice', 5, 'Kg', '300'),
(10, '6380fc3d27980', 'flour', 10, 'Kg', '200'),
(11, '6380fc3d27980', 'Oil', 2, 'Gallon', '300'),
(12, '6380fc3d27980', 'Egg', 9, 'Dozens', '120'),
(13, '6380fc3d27980', 'Vegetable', 4, 'Kg', '30'),
(14, '6380fc3d27980', 'Water', 10, 'Bottle', '90'),
(15, '6380fc3d27980', 'paper', 2, 'Rolls', '50'),
(16, '6380fc3d27980', 'Biscuit', 4, 'Packet', '20'),
(17, '6381d6461b4da', 'cat', 2, 'Piece', '10'),
(18, '6381d6752faaf', 'chilli', 1, 'Bags', '5'),
(19, '6381dbf09e983', 'cattle', 5, 'Dozens', '10'),
(20, '6381dc529d510', 'cattle', 5, 'Dozens', '10'),
(21, '6381e1ba8f8d7', 'rice', 5, 'Bottle', '10'),
(22, '63846664dec93', 'cat', 5, 'Bags', '10'),
(23, '63846eca234ca', 'cat', 5, 'Piece', '10'),
(24, '6395b8b4b22b5', 'cat', 5, 'Bags', '10'),
(25, '6395b8b6b4e11', 'cat', 5, 'Bags', '10'),
(26, '6395b8b7c2573', 'cat', 5, 'Bags', '10');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_unit`
--

CREATE TABLE `tbl_unit` (
  `unit_id` int(11) NOT NULL,
  `unit_name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_unit`
--

INSERT INTO `tbl_unit` (`unit_id`, `unit_name`) VALUES
(1, 'Bags'),
(2, 'Piece'),
(3, 'Box'),
(4, 'Dozens'),
(5, 'Feet'),
(6, 'Gallon'),
(7, 'Grams'),
(8, 'Inch'),
(9, 'Kg'),
(10, 'Liters'),
(11, 'Meter'),
(12, 'Nos'),
(13, 'Packet'),
(14, 'Rolls'),
(15, 'Bottle');

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `id` int(11) NOT NULL,
  `v_user_id` varchar(50) NOT NULL,
  `v_response` varchar(255) NOT NULL,
  `status` text DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`id`, `v_user_id`, `v_response`, `status`) VALUES
(1, '', '', '1'),
(2, '', '', '1'),
(3, '', '', '1'),
(4, '', '', '1'),
(5, '', '', '1'),
(6, '', '', '1'),
(7, '', '', '1'),
(8, '6', '', '1'),
(9, '17', '', '1'),
(10, '', '', '1'),
(11, '', '', '1'),
(12, '', '', '1'),
(13, '', '', '1'),
(14, '', '', '1'),
(15, '', '', '1'),
(16, 'Array', 'Array', '1');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `first_name` varchar(200) NOT NULL,
  `last_name` varchar(200) NOT NULL,
  `address` varchar(255) NOT NULL,
  `contact` int(11) NOT NULL,
  `account` int(11) NOT NULL,
  `tax_id` int(11) NOT NULL,
  `nid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `first_name`, `last_name`, `address`, `contact`, `account`, `tax_id`, `nid`) VALUES
(1, 'John', 'Smith', 'versity gate', 83749879, 91827388, 928487, 1355554),
(5, 'Peterson', 'Parker', 'akhalia', 82748788, 98277263, 984798, 1345466),
(7, 'Rock', 'Madison', '77 subidbazar,sylhet', 89374886, 98278968, 871263, 1343545),
(8, 'Titan', 'Edge', '91 pollobi,sylhet', 19748739, 98172389, 938789, 1345789);

-- --------------------------------------------------------

--
-- Table structure for table `volunteer_info`
--

CREATE TABLE `volunteer_info` (
  `v_id` int(11) NOT NULL,
  `v_first_name` varchar(50) NOT NULL,
  `v_last_name` varchar(50) NOT NULL,
  `v_phone` int(25) NOT NULL,
  `v_add` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `volunteer_info`
--

INSERT INTO `volunteer_info` (`v_id`, `v_first_name`, `v_last_name`, `v_phone`, `v_add`) VALUES
(1, 'Efat', 'khan', 2184854, 'Barishal,Bangladesh.'),
(2, 'saki', 'hasan', 2147483647, 'Dhaka, Bangladesh'),
(6, 'Teri', 'Dactyl', 93749797, 'Sylhet'),
(7, 'Patty ', 'Olive ', 457636746, 'Sylhet'),
(8, 'Olive ', 'Aida ', 938478762, 'Sylhet'),
(9, 'Aida ', 'Bugg', 938758637, 'Sylhet'),
(10, 'Maureen ', 'Teri ', 938798363, 'Sylhet'),
(11, 'Teri ', 'Grater', 923874893, 'Sylhet'),
(12, 'Grater', 'Percy ', 927487363, 'Sylhet'),
(13, 'Percy ', 'Jack ', 93874983, 'Sylhet'),
(14, 'Jack ', 'Vere', 92874863, 'Sylhet'),
(15, 'Vere', 'Aranda', 29837486, 'Sylhet'),
(16, 'Aranda', 'John ', 29749626, 'Sylhet'),
(17, 'John ', 'df', 98124643, 'Sylhet');

-- --------------------------------------------------------

--
-- Table structure for table `worker_info`
--

CREATE TABLE `worker_info` (
  `id` int(11) NOT NULL,
  `worker_first_name` varchar(15) NOT NULL,
  `worker_lase_name` varchar(15) NOT NULL,
  `worker_phone` varchar(15) NOT NULL,
  `worker_salary` int(11) NOT NULL,
  `worker_add` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `assign`
--
ALTER TABLE `assign`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blood_donor_info`
--
ALTER TABLE `blood_donor_info`
  ADD PRIMARY KEY (`b_d_id`);

--
-- Indexes for table `borrowers`
--
ALTER TABLE `borrowers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `loan_list`
--
ALTER TABLE `loan_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loan_plan`
--
ALTER TABLE `loan_plan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loan_schedules`
--
ALTER TABLE `loan_schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loan_types`
--
ALTER TABLE `loan_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `msg`
--
ALTER TABLE `msg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pay`
--
ALTER TABLE `pay`
  ADD PRIMARY KEY (`acc`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `street`
--
ALTER TABLE `street`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order_items`
--
ALTER TABLE `tbl_order_items`
  ADD PRIMARY KEY (`order_items_id`);

--
-- Indexes for table `tbl_unit`
--
ALTER TABLE `tbl_unit`
  ADD PRIMARY KEY (`unit_id`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `volunteer_info`
--
ALTER TABLE `volunteer_info`
  ADD PRIMARY KEY (`v_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assign`
--
ALTER TABLE `assign`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `loan_list`
--
ALTER TABLE `loan_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `loan_plan`
--
ALTER TABLE `loan_plan`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `loan_types`
--
ALTER TABLE `loan_types`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `msg`
--
ALTER TABLE `msg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pay`
--
ALTER TABLE `pay`
  MODIFY `acc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=987654322;

--
-- AUTO_INCREMENT for table `street`
--
ALTER TABLE `street`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_order_items`
--
ALTER TABLE `tbl_order_items`
  MODIFY `order_items_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tbl_unit`
--
ALTER TABLE `tbl_unit`
  MODIFY `unit_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `volunteer_info`
--
ALTER TABLE `volunteer_info`
  MODIFY `v_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
