-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 05, 2017 at 10:46 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_law_firm`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `account_id` varchar(15) NOT NULL,
  `client_id` varchar(15) DEFAULT NULL,
  `case_id` varchar(15) DEFAULT NULL,
  `amount` int(15) DEFAULT NULL,
  `date_saved` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `case1`
--

CREATE TABLE `case1` (
  `case_id` varchar(15) NOT NULL,
  `case_name` varchar(200) NOT NULL,
  `client_id` varchar(15) NOT NULL,
  `course_of_action` varchar(500) NOT NULL,
  `court_to_appeal` varchar(50) NOT NULL,
  `date_risen` date NOT NULL,
  `date_submitted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `client_instruction` varchar(200) NOT NULL,
  `type` varchar(50) NOT NULL,
  `lawyer_id` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `case1`
--

INSERT INTO `case1` (`case_id`, `case_name`, `client_id`, `course_of_action`, `court_to_appeal`, `date_risen`, `date_submitted`, `client_instruction`, `type`, `lawyer_id`) VALUES
('CSE1', 'MAdai ya Ardi', 'CL2', 'Upokonywaji wa kiwanja', 'Mwanzo', '2017-05-10', '2017-05-20 21:37:47', 'Nahitaji Ardi yangu', 'Madai', 'LAWYER4'),
('CSE2', 'Uhaini', 'CL2', 'grdfsg', 'dgertger', '1997-12-23', '2017-05-15 00:06:44', 'hjdghd', 'null', 'LAWYER2'),
('CSE3', 'Utoro shuleni', 'CL3', 'Mwanafunzi hakuhudhuria vipindi katika wiki nzima', 'Mahakama ya mwanzo', '2014-12-23', '2017-04-19 21:00:00', 'Afukuzwe shule', 'null', 'LAWYER12'),
('CSE4', 'Upokonyaji wa ardhi', 'CL4', 'Mshitakiwa amedhurumu ardhi ya watoto wa marehemu', 'Mahakama ya mwanzo', '2017-05-20', '2017-05-23 21:00:00', 'Apokonywwe', 'null', 'LAWYER4'),
('CSE5', 'Wizi wa kompyuta', 'CL2', 'shdjkgfbsdhkjfs', 'Mwanzo', '2017-05-03', '2017-05-21 04:10:43', 'dsggdrzsfdfs', 'Madai', 'LAWYER10'),
('CSE6', 'Uhamiaji haramu', 'CL2', 'Mtuhumiwa alivuka mipaka bila ruhusa', 'Mwanzo', '2017-05-02', '2017-05-23 22:50:17', 'Mtuhumiwa afutiwe uraia', 'Civil', 'LAWYER12'),
('CSE7', 'Udanganyifu katika mitihani', 'CL2', 'Mwanafunzi aliiba mitihani na kugawanya kwa wenzake', 'Mahakama ya mwanzo', '2017-05-20', '2017-05-23 21:00:00', 'Mwanafunzi asimamishwe masomo', 'null', 'LAWYER9');

-- --------------------------------------------------------

--
-- Table structure for table `case_progress`
--

CREATE TABLE `case_progress` (
  `id` int(15) NOT NULL,
  `case_id` varchar(15) DEFAULT NULL,
  `client_id` varchar(15) DEFAULT NULL,
  `process_date` date DEFAULT NULL,
  `court_id` varchar(15) DEFAULT NULL,
  `progress` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `case_progress`
--

INSERT INTO `case_progress` (`id`, `case_id`, `client_id`, `process_date`, `court_id`, `progress`) VALUES
(12, 'CSE2', 'CL2', '2017-05-03', 'CRT1', 'Owned the Case'),
(13, 'CSE1', 'CL2', '1994-10-23', 'CRT1', 'eafesfwe'),
(19, 'CSE2', 'CL2', '2014-12-23', 'CRT2', 'erwwetr'),
(20, 'CSE1', 'CL2', '1978-02-12', 'CRT1', 'abcdefghij'),
(21, 'CSE1', 'CL2', '2014-12-23', 'CRT1', 'DSFGRDEFRGS'),
(22, 'CSE5', 'CL3', '2014-12-23', 'CRT2', 'Wereva'),
(25, 'CSE2', 'CL2', '1967-03-12', 'CRT1', 'dftgdfyhrtfgyhy'),
(27, 'CSE3', 'CL1', '2017-05-20', 'CRT3', 'Shughuli iliendelea mpaka usiku wa manane'),
(28, 'CSE7', 'CL10', '2017-05-27', 'CRT1', 'Kesi iliahirishwa mpaka wakti mwingine ushahidi utakapokamilika'),
(29, 'CSE3', 'CL1', '1994-10-23', 'CRT2', 'Abc abc abc abcb abc abc bacb abc abc abc abc abc abc '),
(31, 'CSE3', 'CL1', '2017-06-23', 'CRT3', 'hjksd skdjlh sakehbdewa aklhbfeaw alkhbfe  a'),
(32, 'CSE1', 'CL2', '2017-05-30', 'CRT2', 'aj/bfh baislkufhew asiluhkfer adsilufher adso;plghfer dfslkhger aslikugfe'),
(33, 'CSE3', 'CL1', '2017-06-01', 'CRT2', 'bjsdhg sajkhgbfas asiluh aikljhbfedsf sakifjb dfskljbd dflkjbgd'),
(34, 'CSE3', 'CL1', '2017-05-31', 'CRT1', 'sojksalfn skasjfners fskldjnf kljnf skljfs slkjnf');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `client_id` varchar(15) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile_no` varchar(20) NOT NULL,
  `address` varchar(200) NOT NULL,
  `next_of_kin` varchar(250) NOT NULL,
  `dob` date NOT NULL,
  `password` varchar(20) DEFAULT NULL,
  `password2` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`client_id`, `first_name`, `last_name`, `gender`, `email`, `mobile_no`, `address`, `next_of_kin`, `dob`, `password`, `password2`) VALUES
('CL1', 'Elia', 'Kilawe', 'on', 'elikilawe@gmail.com', '765268371', 'Dar es Salaam', 'Joseph Prosper', '2017-05-16', '123456', '123456'),
('CL10', 'Angel ', 'Mallya', 'on', 'anmalya', '(076) 253-7283', 'Dar es Salaam', 'Joseph Prosper', '1992-07-17', '12345', '123456'),
('CL2', 'Manase', 'Mwinuka', 'on', 'manase@yk.com', '13243425', 'Makambako', 'Edrick Mwinuka', '1998-04-30', '123456', '123456'),
('CL3', 'Winnie', 'Justine', 'on', 'wijustine@gmail.com', '3241445', 'Arusha', 'Faraja Mwngalu', '1978-02-12', '123456', '123456'),
('CL4', 'Lunodzo', 'Mwinuka', 'on', 'lunomwinuka@gmail.com', '765268312', 'Ilembula Njombe', 'Justine Mwinuka', '1994-10-12', '123456', '123456'),
('CL6', 'Sia', 'Lema', 'on', 'silema@mustudent.ac.tz', '734264628', 'Arusha, Karatu', 'Valentino Lema', '2017-05-20', '123456', '123456'),
('CL7', 'Mackrina', 'Rwiza', 'on', 'lunomwinuka', '(076) 526-8371', 'Misenyi, Kagera', 'Jacob Rwiza', '1998-04-30', '123456', '123456'),
('CL8', 'Ntonsite ', 'Mwamlima', 'on', 'ntmwamlima@mustudent.ac.tz', '(076) 787-9854', 'Forest, Mbeya', 'Mdogo Mwamlima', '1992-02-07', '123456', '123456'),
('CL9', 'Lawrance ', 'Massanja', 'on', 'lamassanja@mustudent.ac.tz', '(075) 469-0090', 'Nzega, Tabora', 'Rose Massanja', '1994-03-04', '123456', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `court`
--

CREATE TABLE `court` (
  `court_id` varchar(15) NOT NULL,
  `court_name` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `level` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `court`
--

INSERT INTO `court` (`court_id`, `court_name`, `address`, `level`) VALUES
('CRT1', 'Mahakama ya Mwanzo - Mzumbe', 'Mahakamani - Mzumbe', 'Mwanzo'),
('CRT2', 'Mahakama ya Rufaa', 'Morogoro Manispaa', 'Rufaa'),
('CRT3', 'Mahakama Kuu', 'Dar es Salaam', 'Kuu'),
('CRT4', 'Mahakama ya Rufaa', 'Iringa, Miyomboni', 'Rufaa'),
('CRT5 ', 'Mahakama ya Rufaa', 'Singida', 'Rufaa'),
('CRT6', 'Mahakama ya Mwanzo', 'Wangingombe Njombe', 'Mwanzo');

-- --------------------------------------------------------

--
-- Table structure for table `document`
--

CREATE TABLE `document` (
  `document_id` varchar(15) NOT NULL,
  `lawyer_id` varchar(15) NOT NULL,
  `name` varchar(100) NOT NULL,
  `file` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lawyer`
--

CREATE TABLE `lawyer` (
  `lawyer_id` varchar(15) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile_no` varchar(20) NOT NULL,
  `address` varchar(200) NOT NULL,
  `level_of_education` varchar(250) NOT NULL,
  `dob` date NOT NULL,
  `system_level` varchar(20) DEFAULT NULL,
  `password` varchar(50) NOT NULL,
  `password2` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lawyer`
--

INSERT INTO `lawyer` (`lawyer_id`, `first_name`, `last_name`, `gender`, `email`, `mobile_no`, `address`, `level_of_education`, `dob`, `system_level`, `password`, `password2`) VALUES
('LAWYER1', 'Edrick', 'Mwinuka', 'M', 'lunomwinuka@gmail.com', '764356273', 'Mbeya', 'Bachelor', '2017-04-27', 'middle', '', ''),
('LAWYER10', 'Daria', 'John', 'on', 'gdhgj@jhd.com', '90283903', 'Arusha', 'Degree', '1994-10-23', 'Admin', '12345', 'password2'),
('LAWYER12', 'Joseph', 'Prosper', 'on', 'joseph@gmail.com', '076578689', 'Dar es Salaam', 'Degree', '1994-10-23', 'Admin', '123456', '123456'),
('LAWYER2', 'Justine', 'Mwinuka', 'Male', 'justinemwinuka@gmail.com', '0765268371', 'Ilembula Njombe', 'Degree', '1967-03-12', 'Admin', '12345', '12345'),
('LAWYER20', 'Loyani', 'Kisula', 'on', 'loyanie20@gmail.com', '123456678', 'Nyegezi, Mwanza', 'Bachelor', '1994-07-12', 'Lawyer', '123456', '123456'),
('LAWYER21', 'Witness', 'Jasper', 'on', 'wijasper@mustudent.ac.tz', '0786543256', 'Dar es Salaam', 'Degree', '1994-10-23', 'Lawyer', '123456', '123456'),
('LAWYER3', 'Manase', 'Mwinuka', 'Male', 'manasemwinuka@gmail.com', '0787653467', 'Makambako', 'Certificate', '1998-04-30', 'User', '12345', '12345'),
('LAWYER4', 'Frida', 'Akonai', 'Male', 'firifrida@MZUMBE.AC.TZ', '9087243907', 'ABC', 'Bachelor', '1994-12-30', 'User', '12345', '12345'),
('LAWYER5', 'Lunodzo', 'Mwinuka', 'Male', 'lunomwihuka@gmail.com', '089849328', 'Njombe', 'Degree', '2017-05-11', 'Admin', '12345', '12345'),
('LAWYER6', 'Zakay', 'Maben', 'Male', 'maaemwnuka@gmail.com', '0483984399', 'Makambak', 'Certificate', '1998-04-30', 'User', '12345', '12345'),
('LAWYER7', 'Jacob', 'Mwera', 'Male', 'jav@gmail.com', '89734983', 'jhiksdfg', 'Degree', '1964-03-04', 'Admin', '12345', '12345'),
('LAWYER8', 'Fatuma', 'Ally', 'Female', 'ftally@mzumbe.com', '908703948', 'Dodoma', 'Degree', '2017-05-17', 'User', '12345', '12345'),
('LAWYER9', 'Aneth', 'Mdongala', 'Female', 'anethmdo@gmail.com', '9873984', 'Ilembula', 'Diploma', '2017-05-09', 'Admin', '12345', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `qualification`
--

CREATE TABLE `qualification` (
  `qualification_id` varchar(15) NOT NULL,
  `title` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qualification_details`
--

CREATE TABLE `qualification_details` (
  `id` int(15) NOT NULL,
  `lawyer_id` varchar(15) DEFAULT NULL,
  `qualification_id` varchar(15) DEFAULT NULL,
  `date_granted` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `schedule_id` int(10) NOT NULL,
  `schedule_name` varchar(200) DEFAULT NULL,
  `location` varchar(200) DEFAULT NULL,
  `date_schedule` date DEFAULT NULL,
  `requirement` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`schedule_id`, `schedule_name`, `location`, `date_schedule`, `requirement`) VALUES
(7, 'Meet RC', 'Morogoro Regional', '2017-05-27', 'LAptop'),
(8, 'Drop Case', '', '1967-03-12', 'All vibebeo'),
(9, 'Establish Case', 'Mahakamani', '2017-05-04', 'Bible'),
(10, 'Draft Constitution', 'Office', '2014-12-23', 'Katiba kuu'),
(11, 'Drop Case', ' Dar es Salaam', '2014-12-23', 'shahidi mkuu'),
(12, 'matrix', 'mzumbe', '2017-05-27', 'abc'),
(13, 'hgdfgtrfg', 'hgbnvchg', '2002-04-09', 'jghfytf');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `transaction_id` varchar(15) NOT NULL,
  `purpose` varchar(50) DEFAULT NULL,
  `lawyer_id` varchar(15) DEFAULT NULL,
  `amount` int(15) DEFAULT NULL,
  `trans_date` date DEFAULT NULL,
  `remainder` int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `witness`
--

CREATE TABLE `witness` (
  `id` int(10) NOT NULL,
  `client_id` varchar(15) DEFAULT NULL,
  `case_id` varchar(15) DEFAULT NULL,
  `details` varchar(200) DEFAULT NULL,
  `date_explained` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`account_id`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `case_id` (`case_id`);

--
-- Indexes for table `case1`
--
ALTER TABLE `case1`
  ADD PRIMARY KEY (`case_id`),
  ADD KEY `case1_ibfk_1` (`client_id`),
  ADD KEY `lawyer_id` (`lawyer_id`);

--
-- Indexes for table `case_progress`
--
ALTER TABLE `case_progress`
  ADD PRIMARY KEY (`id`),
  ADD KEY `court_id` (`court_id`),
  ADD KEY `case_id` (`case_id`),
  ADD KEY `client_id` (`client_id`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`client_id`);

--
-- Indexes for table `court`
--
ALTER TABLE `court`
  ADD PRIMARY KEY (`court_id`);

--
-- Indexes for table `document`
--
ALTER TABLE `document`
  ADD PRIMARY KEY (`document_id`);

--
-- Indexes for table `lawyer`
--
ALTER TABLE `lawyer`
  ADD PRIMARY KEY (`lawyer_id`);

--
-- Indexes for table `qualification`
--
ALTER TABLE `qualification`
  ADD PRIMARY KEY (`qualification_id`);

--
-- Indexes for table `qualification_details`
--
ALTER TABLE `qualification_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lawyer_id` (`lawyer_id`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`schedule_id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`transaction_id`),
  ADD KEY `lawyer_id` (`lawyer_id`);

--
-- Indexes for table `witness`
--
ALTER TABLE `witness`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `case_progress`
--
ALTER TABLE `case_progress`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `qualification_details`
--
ALTER TABLE `qualification_details`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `schedule_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `witness`
--
ALTER TABLE `witness`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `account`
--
ALTER TABLE `account`
  ADD CONSTRAINT `account_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `client` (`client_id`),
  ADD CONSTRAINT `account_ibfk_2` FOREIGN KEY (`case_id`) REFERENCES `case1` (`case_id`);

--
-- Constraints for table `case1`
--
ALTER TABLE `case1`
  ADD CONSTRAINT `case1_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `client` (`client_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `case1_ibfk_2` FOREIGN KEY (`lawyer_id`) REFERENCES `lawyer` (`lawyer_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `case_progress`
--
ALTER TABLE `case_progress`
  ADD CONSTRAINT `case_progress_ibfk_1` FOREIGN KEY (`court_id`) REFERENCES `court` (`court_id`),
  ADD CONSTRAINT `case_progress_ibfk_2` FOREIGN KEY (`case_id`) REFERENCES `case1` (`case_id`),
  ADD CONSTRAINT `case_progress_ibfk_3` FOREIGN KEY (`client_id`) REFERENCES `client` (`client_id`);

--
-- Constraints for table `qualification_details`
--
ALTER TABLE `qualification_details`
  ADD CONSTRAINT `qualification_details_ibfk_1` FOREIGN KEY (`lawyer_id`) REFERENCES `lawyer` (`lawyer_id`);

--
-- Constraints for table `transaction`
--
ALTER TABLE `transaction`
  ADD CONSTRAINT `transaction_ibfk_1` FOREIGN KEY (`lawyer_id`) REFERENCES `lawyer` (`lawyer_id`);

--
-- Constraints for table `witness`
--
ALTER TABLE `witness`
  ADD CONSTRAINT `witness_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `client` (`client_id`),
  ADD CONSTRAINT `witness_ibfk_2` FOREIGN KEY (`client_id`) REFERENCES `client` (`client_id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
