-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2017 at 06:02 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `moviedb`


-- --------------------------------------------------------

--
-- Table structure for table `movielist`
--

CREATE TABLE `movielist` (
  `movieId` int(11) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Genre` varchar(25) DEFAULT NULL,
  `Director` varchar(255) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `imdb` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movielist`
--

INSERT INTO `movielist` (`movieId`, `Name`, `Genre`, `Director`, `Description`, `image`, `imdb`) VALUES
(1, 'Bigil', 'Action', 'Atlee Kumar', 'Bigil is a Indian Tamil language sports action film written and directed by Atlee and produced by Kalpathi S.Aghoram under the banner AGS Entertainment.The film starts Vijay and Nayanathara in leading role.The film has music composed by A.R.Rahman.', '01.jpg', '8'),
(2, 'Pailwaan', 'Action', 'S.Krishna', ' Pailwaan is an emotional roller coaster of desi grown wrestler who realizes the purpose of his life and goes about fulfilling it.A grapping narrative of a sports genre story story with action & drama forms the crux of the movie Pailwaan.', '02.jpg', '6.5'),
(3, 'Charlie', 'Drama', 'Martin Prakkat', 'Charlie is a Indian Malayalam language romantic drama film directed by Martin Prakkat and written by Prakkat and Unni R. Produced by Prakkat,Joju George and Shebin Becker, the film stars Dulquer Salmaan and Parvathy. The music is coposed by Gopi Sundar.', '03.jpg', '8.9'),
(4, 'Rakshasudu', 'Crime', 'Ramesh Varma', 'Rakshasudu is a Indian Telugu language psychological thriller film directed by Ramesh Vrama. The film featuews Bellankonda Sreenivas and Anupama Parameswaran in the lead roles and it is the office remake of the Tamil film Ratchasan.The music is composed b', '04.jpg', '8.4');

-- --------------------------------------------------------

--
-- Table structure for table `showorder`
--

CREATE TABLE `showorder` (
  `showOrderId` int(11) NOT NULL,
  `date` varchar(255) NOT NULL,
  `timeslot` varchar(255) NOT NULL,
  `theater` varchar(255) NOT NULL,
  `movieName` varchar(255) NOT NULL,
  `seat` varchar(255) NOT NULL,
  'bookedseat' varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `showorder`
--

INSERT INTO `showorder` (`showOrderId`, `date`, `timeslot`, `theater`, `movieName`, `seat`, 'bookedseat') VALUES
(1, '2019-10-30', '11.00', 'Mayura Theater', 'Bigil', '45', '5'),
(2, '2019-10-31', '5.00', 'Inox movies', 'Pailwaan', '43', '2'),
(3, '2019-10-01', '2.00', 'Cineplex', 'Charlie', '57','3',),
(4, '2019-10-16', '8.00', 'Cineplex', 'Bigil', '49', '1'),
(5, '2019-10-23', '11.00', 'Bharath Cinemas', 'Pailwaan', '60', '10'),
(6, '2019-10-17', '2.00', 'Bharath Cinemas', 'Bigil', '65', '5'),
(7, '2019-11-16', '11.00', 'Aruna Theater', 'Bigil', '63', '7');

-- --------------------------------------------------------

--
-- Table structure for table `theater`
--

CREATE TABLE `theater` (
  `theaterId` int(11) NOT NULL,
  `theaterName` varchar(255) DEFAULT NULL,
  `seat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `theater`
--

INSERT INTO `theater` (`theaterId`, `theaterName`, `seat`) VALUES
(1, 'Mayura Theater', 50),
(2, 'Inox movies', 45),
(3, 'Cineplex', 60),
(4, 'Bharath Cinemas', 70),
(5, 'Aruna Theater', 75);

-- --------------------------------------------------------

--
-- Table structure for table `timeslot`
--

CREATE TABLE `timeslot` (
  `timeslotId` int(11) NOT NULL,
  `time` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `timeslot`
--

INSERT INTO `timeslot` (`timeslotId`, `time`) VALUES
(1, '11.00'),
(2, '2.00'),
(3, '5.00'),
(4, '8.00'),
(5, '9.00');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userId` int(11) NOT NULL,
  `userName` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userId`, `userName`, `password`, `status`) VALUES
(1, 'admin', 'admin', 101),
(3, 'user', 'user', 202);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `movielist`
--
ALTER TABLE `movielist`
  ADD PRIMARY KEY (`movieId`);

--
-- Indexes for table `showorder`
--
ALTER TABLE `showorder`
  ADD PRIMARY KEY (`showOrderId`);

--
-- Indexes for table `theater`
--
ALTER TABLE `theater`
  ADD PRIMARY KEY (`theaterId`);

--
-- Indexes for table `timeslot`
--
ALTER TABLE `timeslot`
  ADD PRIMARY KEY (`timeslotId`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `movielist`
--
ALTER TABLE `movielist`
  MODIFY `movieId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `showorder`
--
ALTER TABLE `showorder`
  MODIFY `showOrderId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `theater`
--
ALTER TABLE `theater`
  MODIFY `theaterId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `timeslot`
--
ALTER TABLE `timeslot`
  MODIFY `timeslotId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
