-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 30, 2018 at 01:38 PM
-- Server version: 5.6.34-log
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospitaldatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `admitpatient_room`
--

CREATE TABLE `admitpatient_room` (
  `PatientID` int(10) NOT NULL,
  `Disease` varchar(50) DEFAULT NULL,
  `AdmitDate` date DEFAULT NULL,
  `RoomNo` int(5) NOT NULL,
  `DoctorID` int(10) NOT NULL,
  `AP_Remarks` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admitpatient_room`
--

INSERT INTO `admitpatient_room` (`PatientID`, `Disease`, `AdmitDate`, `RoomNo`, `DoctorID`, `AP_Remarks`) VALUES
(1, 'Grip', '2014-03-21', 1, 1, 'Yuksek Ates'),
(2, 'Kanser', '2018-04-15', 3, 1, 'Kanser'),
(3, 'Kalp agrisi', '2018-04-15', 1, 1, ''),
(12, 'Bas agrisi', '2015-01-20', 2, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `bill_room`
--

CREATE TABLE `bill_room` (
  `DischargeID` int(5) DEFAULT NULL,
  `BillingDate` date DEFAULT NULL,
  `RoomCharges` int(10) DEFAULT NULL,
  `ServiceCharges` int(10) DEFAULT NULL,
  `PaymentMode` varchar(20) DEFAULT NULL,
  `PaymentModeDetails` varchar(100) DEFAULT NULL,
  `TotalCharges` int(10) DEFAULT NULL,
  `NoOfDays` int(5) DEFAULT NULL,
  `TotalRoomCharges` int(10) DEFAULT NULL,
  `BillNo` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bill_room`
--

INSERT INTO `bill_room` (`DischargeID`, `BillingDate`, `RoomCharges`, `ServiceCharges`, `PaymentMode`, `PaymentModeDetails`, `TotalCharges`, `NoOfDays`, `TotalRoomCharges`, `BillNo`) VALUES
(1, '2015-01-12', 5000, 500, 'by Cash', 'Payment done successfully!', 1485500, 297, 1485000, '120150112'),
(12, '2015-01-20', 2500, 500, 'by Credit Card', 'NA', 500, 0, 0, '1220150120'),
(3, '2018-04-15', 5000, 20000, 'by Credit Card', '', 20000, 0, 0, '320180415');

-- --------------------------------------------------------

--
-- Table structure for table `dischargepatient_room`
--

CREATE TABLE `dischargepatient_room` (
  `AdmitID` int(20) DEFAULT NULL,
  `DischargeDate` date DEFAULT NULL,
  `DP_Remarks` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dischargepatient_room`
--

INSERT INTO `dischargepatient_room` (`AdmitID`, `DischargeDate`, `DP_Remarks`) VALUES
(1, '2015-01-12', 'Patient recovered successfully!'),
(12, '2015-01-20', 'Patient is stable'),
(3, '2018-04-15', 'Patient operated');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `DoctorID` int(10) NOT NULL,
  `Doctorname` varchar(20) DEFAULT NULL,
  `FatherName` varchar(20) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `ContacNo` varchar(11) DEFAULT NULL,
  `Qualifications` varchar(50) DEFAULT NULL,
  `Gender` varchar(1) DEFAULT NULL,
  `BloodGroup` varchar(5) DEFAULT NULL,
  `DateOfJoining` date DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`DoctorID`, `Doctorname`, `FatherName`, `Email`, `ContacNo`, `Qualifications`, `Gender`, `BloodGroup`, `DateOfJoining`, `Address`) VALUES
(1, 'Acar Acarel', 'Mustafa Acarerl', 'aCay123@gmail.com ', '9880876532', 'Gogus Hastaliklari', 'M', 'A+', '2014-03-20', 'ATAKUM/SAMSUN'),
(3, 'Yasin Ege', 'Reha', 'ya@gmail.com', '533232', 'YOK', 'M', 'O+', '2016-03-02', 'Samsun'),
(55, 'Yasin', 'Ege', 'yasn.@gmail.com', '52342342', 'Dahiliye', 'M', 'O+', '2016-02-02', 'SAMSUN');

-- --------------------------------------------------------

--
-- Table structure for table `patientregistration`
--

CREATE TABLE `patientregistration` (
  `PatientID` int(10) NOT NULL,
  `PatientName` varchar(20) DEFAULT NULL,
  `FatherName` varchar(20) DEFAULT NULL,
  `Email` varchar(30) DEFAULT NULL,
  `ContactNo` varchar(11) DEFAULT NULL,
  `Age` int(2) DEFAULT NULL,
  `Remarks` varchar(100) DEFAULT NULL,
  `Gen` varchar(1) DEFAULT NULL,
  `BG` varchar(3) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patientregistration`
--

INSERT INTO `patientregistration` (`PatientID`, `PatientName`, `FatherName`, `Email`, `ContactNo`, `Age`, `Remarks`, `Gen`, `BG`, `Address`) VALUES
(1, 'Ayse Yilmaz', 'Hasan Yilmaz', 'ayseyilmaz5@gmail.com', '123132', 18, 'Grip\n', 'M', 'B+', 'ANKARA/KIZILAY YED??EH?TLER MAHALLES?'),
(2, 'Metin Korkmaz', 'Fatih Korkmaz', 'bilinmiyor', '8095678932', 20, 'Kalp A?r?s?', 'M', 'B+', 'ISPARTA/DAVRAZ'),
(3, 'MUSTAFA KAYA', 'Mehmet', 'mustafa98@gmail.com', '8095678456', 25, 'bilinmiyor', 'F', 'AB+', 'Bilinmiyor'),
(4, 'Merve Korkmaz', 'Hasan Korkmaz', 'mervek.@gmail.com', '12334512', 26, 'Kanser Hastas?', 'M', 'B+', 'Samsun/ilkadim'),
(12, 'Mert', 'Turan', 'mert@gmail.com', '123123321', 18, 'ACIL HASTA', 'M', 'O+', 'MERT ADRESS');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `name` varchar(20) DEFAULT NULL,
  `user_name` varchar(20) NOT NULL,
  `password` varchar(20) DEFAULT NULL,
  `email_id` varchar(30) DEFAULT NULL,
  `contact_no` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`name`, `user_name`, `password`, `email_id`, `contact_no`) VALUES
('AcarAcarel', 'adminacar', 'adminacar', 'acar@gmail.com', 55555),
('Yasin Ege', 'adminy', 'adminy', 'yas@gmail.com', 123312),
('VeriTabani', 'veritabani', 'veritabani', 'veri@gmail.com', 1235);

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `RoomNo` int(5) NOT NULL,
  `RoomType` varchar(10) DEFAULT NULL,
  `RoomCharges` int(10) DEFAULT NULL,
  `RoomStatus` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`RoomNo`, `RoomType`, `RoomCharges`, `RoomStatus`) VALUES
(1, 'Genel', 5000, 'Bos'),
(2, 'Genel', 2500, 'Bos'),
(3, 'OzelOda', 10000, 'DOLU'),
(5, 'Genel', 555, 'BOS'),
(15, 'Genel', 50, 'bos'),
(555, 'OzelOda', 555, 'Vacant');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `ServiceName` varchar(20) DEFAULT NULL,
  `ServiceDate` date DEFAULT NULL,
  `PatientID` int(10) DEFAULT NULL,
  `ServiceCharges` int(10) DEFAULT NULL,
  `ServiceID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`ServiceName`, `ServiceDate`, `PatientID`, `ServiceCharges`, `ServiceID`) VALUES
('Dahiliye', '2014-09-22', 1, 500, 16),
('Gogus Hastaliklari', '2015-01-20', 12, 500, 17),
('Göz Cerrahisi', '2018-04-15', 2, 15000, 18),
('Fizik Tedavi', '2018-04-15', 3, 20000, 19);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_name` varchar(20) NOT NULL,
  `password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_name`, `password`) VALUES
('acar', 'acar'),
('admin', 'admin'),
('adminacar', 'adminacar2'),
('adminy', 'adminy'),
('veritabani', 'veritabani');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admitpatient_room`
--
ALTER TABLE `admitpatient_room`
  ADD PRIMARY KEY (`PatientID`),
  ADD KEY `RoomNo` (`RoomNo`),
  ADD KEY `DoctorID` (`DoctorID`);

--
-- Indexes for table `bill_room`
--
ALTER TABLE `bill_room`
  ADD PRIMARY KEY (`BillNo`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`DoctorID`);

--
-- Indexes for table `patientregistration`
--
ALTER TABLE `patientregistration`
  ADD PRIMARY KEY (`PatientID`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`user_name`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`RoomNo`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`ServiceID`),
  ADD KEY `PatientID` (`PatientID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `ServiceID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `admitpatient_room`
--
ALTER TABLE `admitpatient_room`
  ADD CONSTRAINT `admitpatient_room_ibfk_1` FOREIGN KEY (`RoomNo`) REFERENCES `room` (`RoomNo`),
  ADD CONSTRAINT `admitpatient_room_ibfk_2` FOREIGN KEY (`DoctorID`) REFERENCES `doctor` (`DoctorID`);

--
-- Constraints for table `services`
--
ALTER TABLE `services`
  ADD CONSTRAINT `services_ibfk_1` FOREIGN KEY (`PatientID`) REFERENCES `patientregistration` (`PatientID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
