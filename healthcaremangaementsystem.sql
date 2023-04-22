-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2023 at 12:03 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `healthcaremangaementsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(50) NOT NULL,
  `password` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('abc', 1234),
('abc', 1234);

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `AppointmentID` int(11) DEFAULT NULL,
  `Problem` varchar(50) DEFAULT NULL,
  `PatientId` int(11) DEFAULT NULL,
  `DoctorName` varchar(20) DEFAULT NULL,
  `DoctorID` int(11) DEFAULT NULL,
  `DoctorType` varchar(20) DEFAULT NULL,
  `Qualification` varchar(20) DEFAULT NULL,
  `DoctorFees` int(11) DEFAULT NULL,
  `PaymentStatus` varchar(33) DEFAULT NULL,
  `Appointment_Status` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`AppointmentID`, `Problem`, `PatientId`, `DoctorName`, `DoctorID`, `DoctorType`, `Qualification`, `DoctorFees`, `PaymentStatus`, `Appointment_Status`) VALUES
(1, 'Fever', 22, 'Gaurav', 20, 'Heart', 'MBBS', 400, 'Payed', 'Pending'),
(2, 'L', 19, 'Kallesh', 21, 'Lungs', 'MBBS', 1000, 'Payed', 'Completed');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `DoctorID` int(11) NOT NULL,
  `First_Name` varchar(30) DEFAULT NULL,
  `Last_Name` varchar(30) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `ContactNumber` varchar(11) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `Entry_Charge` int(11) DEFAULT NULL,
  `Qualification` varchar(50) DEFAULT NULL,
  `Doctor_Type` varchar(50) DEFAULT NULL,
  `Email_Id` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`DoctorID`, `First_Name`, `Last_Name`, `Gender`, `ContactNumber`, `Age`, `Entry_Charge`, `Qualification`, `Doctor_Type`, `Email_Id`) VALUES
(1, 'Vivek', 'Bhardwaj', 'M', '9243668213', 32, 400, 'MD', 'Ear', 'bhardwajvivek@gmail.com'),
(2, 'Vinod', 'Gupta', 'M', '9382674321', 42, 300, 'BDS', 'Lungs', 'vinod24gupta@gmail.com'),
(3, 'Ashish', 'Arora', 'M', '8213264251', 47, 200, 'BHMS', 'Eye', 'arorashish5871@gmail.com'),
(4, 'Poonam', 'Mishra', 'F', '7782934712', 27, 700, 'MD', 'Kidney', 'punamishra@gmail.com'),
(5, 'Madhu', 'Srivastva', 'F', '9982675837', 33, 500, 'MD', 'Heart', 'srivastvamadhu@gmail.com'),
(6, 'Anoop', 'Faujdar', 'M', '9788855387', 58, 550, 'MBBS', 'Lungs', 'anoopfauji@gmail.com'),
(7, 'Ankita', 'Khandelwal', 'F', '9985671358', 36, 300, 'BAMS', 'General_Physicist', 'khandelwalankita@gmail.com'),
(8, 'Abhishek', 'Agarwal', 'M', '8763505789', 25, 200, 'Phd', 'Kidney', 'abhishekagarwal25@gmail.com'),
(9, 'Piyush', 'Gupta', 'M', '7855671213', 52, 400, 'MBBS', 'Heart', 'piyushgupta562@gmail.com'),
(10, 'Priyanka', 'Jangid', 'F', '8005628135', 68, 600, 'BDS', 'Lungs', 'prinyanka456jangid@gmail.com'),
(11, 'Deepak', 'Sharma', 'M', '9505745565', 38, 250, 'MS', 'General_Physicist', 'dipakshramtalks@gmail.com'),
(12, 'Prakash', 'Yadav', 'M', '9460812415', 47, 350, 'BAMS', 'Eye', 'yadavprakash79@gmail.com'),
(13, 'Harish', 'Chauhan', 'M', '9855762432', 54, 450, 'PhD', 'Ear', 'harishchauhanstarts@gmail.com'),
(14, 'Seema', 'Patodi', 'F', '9651404283', 63, 500, 'BHMS', 'Bone', 'meseemapatodi@gmail.com'),
(15, 'Mukesh', 'Saxena', 'M', '9887635723', 69, 450, 'BUMS', 'Bone', 'saxenamukesh@gmail.com'),
(16, 'Ashok', 'Gupta', 'M', '9988735721', 29, 300, 'BDS', 'Ear', 'ashokgupta@gmail.com'),
(17, 'Ashish', 'Maheshwari', 'M', '7082172315', 35, 300, 'MBBS', 'Heart', 'maheswariashish@gmail.com'),
(18, 'Neelam', 'rao', 'F', '9652385745', 39, 350, 'MD', 'Kidney', 'raoneelam46@gmail.com'),
(19, 'Priyanka', 'Sharma', 'F', '8857638923', 24, 250, 'BDS', 'Lungs', 'priyanka24sharma@gmail.com'),
(20, 'Gaurav', 'Tripathi', 'M', '8112857382', 40, 400, 'MBBS', 'Heart', 'gaurav00tripathi@gmail.com'),
(21, 'Kallesh', 'D', 'M', '7676654809', 21, 1000, 'MBBS', 'Lungs', 'R');

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `PatientID` int(11) NOT NULL,
  `First_Name` varchar(30) DEFAULT NULL,
  `Last_Name` varchar(30) DEFAULT NULL,
  `Gender` varchar(5) DEFAULT NULL,
  `ContactNumber` varchar(11) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `EmailID` varchar(30) DEFAULT NULL,
  `BloodGroup` varchar(5) DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`PatientID`, `First_Name`, `Last_Name`, `Gender`, `ContactNumber`, `Age`, `EmailID`, `BloodGroup`, `Address`) VALUES
(1, 'Sanjay', 'Gosavi', 'M', '9828698648', 28, 'sanjay24gosavi@gmail.com', 'B+', 'D-402 Anand Nagar M.I. road Delhi'),
(2, 'Anand', 'Sharma', 'M', '9858688788', 30, 'anand54sharma@gmail.com', 'B+', 'E-002 Tilak Nagar New Delhi'),
(3, 'Subhash', 'Garg', 'M', '9667479292', 34, 'gargsubash1703@gmail.com', 'A+', 'Basant Vihar Pune'),
(4, 'Priya', 'Khandelwal', 'F', '8005629518', 28, 'sanjay24gosavi@gmail.com', 'B-', 'PlotNo. 104 Subhash chowk Chandigarh'),
(5, 'Pritam', 'Yadav', 'M', '9828652524', 18, 'letsmailprit02@gmail.com', 'AB+', 'C-03 Vaishali Nagar Jaipur'),
(6, 'Sanju', 'Sharma', 'M', '9279264253', 42, 'sansharma8@gmail.com', 'B-', 'Gopal Nagar Bharatpur'),
(7, 'Tejaswani', 'Goswami', 'F', '8005263213', 32, 'goswamiteja@gmail.com', 'A-', 'Prasad Dham Mumbai'),
(8, 'Sumit', 'Bhardwaj', 'M', '8214358648', 46, 'sumit4566bhardwaj@gmail.com', 'O+', 'Surya Path Roorki'),
(9, 'Kavita', 'Jain', 'F', '9825426363', 15, 'jain78kavi@gmail.com', 'AB+', 'Gaurav Path M.I. road Delhi'),
(10, 'Yogesh', 'Sihra', 'M', '9828565642', 28, 'yogeshshira28@gmail.com', 'AB-', 'Durgapur road Kolkatta'),
(11, 'Bhanu', 'Pratap', 'M', '8052674312', 68, 'bahnupratap@gmail.com', 'O+', 'vivekanand street Malipura'),
(12, 'Sonam', 'Tiwari', 'F', '9797465823', 18, 'sonamtiwari423@gmail.com', 'A+', 'E-03 Tonk Phatak Jaipur'),
(13, 'Neha', 'Mehta', 'F', '7073165498', 24, 'mehtaneha556@gmail.com', 'AB-', 'rani chawk jalandhar'),
(14, 'Roop', 'Devi', 'F', '8302567823', 56, 'roopdevima@gmail.com', 'B-', 'Chandni chawak Delhi'),
(15, 'Yash', 'Chaudary', 'M', '9886756678', 36, 'chaudaryash011@gmail.com', 'AB+', 'Rashi Mansion Indore'),
(16, 'Suraj', 'Yadav', 'M', '8308576312', 24, 'itssuraj@gmail.com', 'A+', 'Usha vihar bhilwada'),
(17, 'Arjun', 'Sethi', 'M', '7782385721', 42, 'arjun11sethi@gmail.com', 'B+', ' Flat no.33 Behind Uday Street Bhopal'),
(18, 'Priya', 'Goyal', 'F', '8857283942', 32, 'angelpriya@gmail.com', 'A-', 'Bajri Mandi Gandhi Path Kota'),
(19, 'Aanvi', 'Singhal', 'F', '9815215367', 12, 'aanvisinghal100@gmail.com', 'B-', 'Chhatrapati Shivaji Mansion Mumbai'),
(20, 'Rohit', 'Singh', 'M', '8358032156', 27, 'rohitsingh124@gmail.com', 'O+', 'Ganesh Vihar Mudrai'),
(22, 'ABC', 'ABC', 'M', '7', 21, 'K', 'O+', 'O');

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `RepId` int(11) NOT NULL,
  `appid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `doci` int(11) NOT NULL,
  `MedicinePrescribed` varchar(56) NOT NULL,
  `DoctorsComment` varchar(65) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`RepId`, `appid`, `pid`, `doci`, `MedicinePrescribed`, `DoctorsComment`) VALUES
(1, 2, 19, 21, 'LLLLL', 'LLLLL');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userID` int(11) NOT NULL,
  `userType` varchar(100) NOT NULL,
  `Password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userID`, `userType`, `Password`) VALUES
(1, 'Doctor', 'One'),
(1, 'Patient', 'One'),
(2, 'Doctor', 'Two'),
(2, 'Patient', 'Two'),
(3, 'Doctor', 'Three'),
(3, 'Patient', 'Three'),
(4, 'Doctor', 'Four'),
(4, 'Patient', 'Four'),
(5, 'Doctor', 'Five'),
(5, 'Patient', 'Five'),
(6, 'Doctor', 'Six'),
(6, 'Patient', 'Six'),
(7, 'Doctor', 'Seven'),
(7, 'Patient', 'Seven'),
(8, 'Doctor', 'Eight'),
(8, 'Patient', 'Eight'),
(9, 'Doctor', 'Nine'),
(9, 'Patient', 'Nine'),
(10, 'Doctor', 'Ten'),
(10, 'Patient', 'Ten'),
(11, 'Doctor', 'Eleven'),
(11, 'Patient', 'Eleven'),
(12, 'Doctor', 'Twelve'),
(12, 'Patient', 'Twelve'),
(13, 'Doctor', 'Thirteen'),
(13, 'Patient', 'Thirteen'),
(14, 'Doctor', 'Fourteen'),
(14, 'Patient', 'Fourteen'),
(15, 'Doctor', 'Fifteen'),
(15, 'Patient', 'Fifteen'),
(16, 'Doctor', 'Sixteen'),
(16, 'Patient', 'Sixteen'),
(17, 'Doctor', 'Seventeen'),
(17, 'Patient', 'Seventeen'),
(18, 'Doctor', 'Eighteen'),
(18, 'Patient', 'Eighteen'),
(19, 'Doctor', 'Nineteen'),
(19, 'Patient', 'Nineteen'),
(20, 'Doctor', 'Twenty'),
(20, 'Patient', 'Twenty'),
(21, 'Doctor', 'Kall@2003'),
(22, 'Patient', '1234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD KEY `FK_p` (`PatientId`),
  ADD KEY `FK_docid` (`DoctorID`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`DoctorID`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`PatientID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userID`,`userType`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointments`
--
ALTER TABLE `appointments`
  ADD CONSTRAINT `FK_docid` FOREIGN KEY (`DoctorID`) REFERENCES `doctors` (`DoctorID`),
  ADD CONSTRAINT `FK_p` FOREIGN KEY (`PatientId`) REFERENCES `patients` (`PatientID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
