-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 15, 2022 at 08:53 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hcpms`
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
(2, 'admin', 'admin', 'Administrator', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `birthing`
--

CREATE TABLE `birthing` (
  `birth_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(10) NOT NULL,
  `chief_complaint` varchar(100) NOT NULL,
  `history` varchar(100) NOT NULL,
  `lmp` varchar(15) NOT NULL,
  `edc` varchar(15) NOT NULL,
  `aog` varchar(15) NOT NULL,
  `G` varchar(15) NOT NULL,
  `P` varchar(15) NOT NULL,
  `1` varchar(15) NOT NULL,
  `2` varchar(15) NOT NULL,
  `3` varchar(15) NOT NULL,
  `4` varchar(15) NOT NULL,
  `bp1` varchar(15) NOT NULL,
  `bp2` varchar(15) NOT NULL,
  `pr` varchar(15) NOT NULL,
  `rr` varchar(15) NOT NULL,
  `T` varchar(15) NOT NULL,
  `head_neck` varchar(15) NOT NULL,
  `chest` varchar(15) NOT NULL,
  `heart` varchar(15) NOT NULL,
  `abdomen` varchar(15) NOT NULL,
  `fhb` varchar(15) NOT NULL,
  `loc` varchar(15) NOT NULL,
  `extremities` varchar(15) NOT NULL,
  `vulva` varchar(15) NOT NULL,
  `vagina` varchar(15) NOT NULL,
  `cervix` varchar(15) NOT NULL,
  `uterus` varchar(15) NOT NULL,
  `bow` varchar(15) NOT NULL,
  `presentation` varchar(15) NOT NULL,
  `vaginal_discharge` varchar(15) NOT NULL,
  `staff` varchar(30) NOT NULL,
  `itr_no` varchar(4) NOT NULL,
  `user_id` varchar(11) NOT NULL,
  `month` varchar(10) NOT NULL,
  `year` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `birthing`
--

INSERT INTO `birthing` (`birth_id`, `date`, `time`, `chief_complaint`, `history`, `lmp`, `edc`, `aog`, `G`, `P`, `1`, `2`, `3`, `4`, `bp1`, `bp2`, `pr`, `rr`, `T`, `head_neck`, `chest`, `heart`, `abdomen`, `fhb`, `loc`, `extremities`, `vulva`, `vagina`, `cervix`, `uterus`, `bow`, `presentation`, `vaginal_discharge`, `staff`, `itr_no`, `user_id`, `month`, `year`) VALUES
(1, '2022-02-08', '12:34', 'pregnancy pains', 'n/a', '67', '32', '32', '26', '3q2289', '389', '3222332', '', '', '90', '83', '5:2', '9', '37', 'fine', 'fine', 'good condition', 'normal', '11', 'n/a', 'n/a', 'normal', 'normal', 'normal', 'normal', 'normal', 'clear', 'none', 'shaddy', '0004', '2', 'Feb', '2022'),
(2, '2022-02-09', '03:04', 'pregnancy pains', 'second birthing', '67', '32', '32', '26', '23', '122', '', '', '', '90', '83', '5:3', '9', '37', 'fine', 'fine', 'normal', 'normal', '11', 'n/a', 'n/a', 'normal', 'normal', 'normal', 'normal', 'normal', 'clear', 'none', 'shaddy', '055', '2', 'Jan', '2022');

-- --------------------------------------------------------

--
-- Table structure for table `complaints`
--

CREATE TABLE `complaints` (
  `com_id` int(50) NOT NULL,
  `date` varchar(20) NOT NULL,
  `complaints` varchar(255) NOT NULL,
  `remark` varchar(255) NOT NULL,
  `itr_no` varchar(50) NOT NULL,
  `section` varchar(20) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complaints`
--

INSERT INTO `complaints` (`com_id`, `date`, `complaints`, `remark`, `itr_no`, `section`, `status`) VALUES
(1, '02/14/2022', 'Back pain', 'Kindly do an x-ray', '0001', 'Xray', 'Done'),
(2, '02/14/2022', 'Toothache', 'Check for cavity', '0001', 'Dental', 'Done'),
(3, '02/14/2022', 'malaria like symptoms', 'do blood test', '0001', 'Hematology', 'Done'),
(4, '02/14/2022', 'malaria like symptoms', 'do blood test', '0010', 'Hematology', 'Done'),
(5, '02/14/2022', 'tooth ache', '', '0010', 'Dental', 'Pending'),
(6, '02/14/2022', 'pregnancy pains', 'refer to maternity', '0004', 'Maternity', 'Done'),
(7, '02/14/2022', 'head aches\r\ncoughs\r\nhigh fever\r\npain in the knees\r\n', 'see hermatologist', '055', 'Hematology', 'Done'),
(8, '02/14/2022', 'headache\r\n', 'expectant ', '055', 'Prenatal', 'Pending'),
(9, '02/14/2022', 'pain in the abdomen', 'expectant', '055', 'Maternity', 'Done'),
(10, '02/14/2022', 'broken arm', 'xray', '0047', 'Xray', 'Done'),
(11, '02/14/2022', 'imobile arm', 'needs therapy', '0047', 'Rehabilitation', 'Pending'),
(12, '02/14/2022', 'pain in the lower abdomen', 'check for food poisoning', '0027', 'Fecalysis', 'Done'),
(13, '02/14/2022', 'pain in abdomen\r\ndehydration', 'check for food poisoning', '0027', 'Urinalysis', 'Pending'),
(14, '02/14/2022', 'pain in abdomen', 'check for food poisoning', '0027', 'Hematology', 'Done'),
(15, '02/14/2022', 'hallucinations', 'see phycologist', '0015', 'Rehabilitation', 'Done'),
(16, '02/14/2022', 'hallucinations', 'check for substance abuse', '0015', 'Urinalysis', 'Done'),
(17, '02/14/2022', 'pregnancy pains', 'refer to prenatal check up', '0004', 'Prenatal', 'Done'),
(18, '02/14/2022', 'difficulty in breathing \r\nfever', 'chech fo Covid', '0003', 'Sputum', 'Done'),
(19, '02/14/2022', 'breathing issues', 'check for covid', '0001', 'Sputum', 'Done'),
(20, '02/14/2022', 'breathing issues', 'check Covid', '0002', 'Sputum', 'Done'),
(21, '02/14/2022', '', 'check for covid', '0004', 'Sputum', 'Done'),
(22, '02/14/2022', '', 'check for covid', '0010', 'Sputum', 'Done'),
(23, '02/14/2022', 'heart ache', 'covid check up', '0023', 'Sputum', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `dental`
--

CREATE TABLE `dental` (
  `dental_no` int(11) NOT NULL,
  `date` date NOT NULL,
  `dentist` varchar(30) NOT NULL,
  `tooth` int(3) NOT NULL,
  `itr_no` varchar(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `month` varchar(10) NOT NULL,
  `year` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dental`
--

INSERT INTO `dental` (`dental_no`, `date`, `dentist`, `tooth`, `itr_no`, `user_id`, `month`, `year`) VALUES
(1, '2022-02-14', 'Dr. Michael  Wahiga', 31, '0001', 4, 'Feb', '2022');

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
(1, '2022-02-14', 'BRENDA', 'white', 'fair', '25', '76', '70', 'yes', 'n/a', 'high', 'high', 'available', 'fair', 'n/a', 'n/a', 'has typhoid', '2022-02-14', 'brenda', 'brenda', '0027', 1, 'Feb', '2022');

-- --------------------------------------------------------

--
-- Table structure for table `hematology`
--

CREATE TABLE `hematology` (
  `hem_id` int(11) NOT NULL,
  `date_requested` date NOT NULL,
  `requested_by` varchar(30) NOT NULL,
  `hemoglobin` varchar(15) NOT NULL,
  `hematocrit` varchar(15) NOT NULL,
  `RBC_count` varchar(15) NOT NULL,
  `WBC_count` varchar(15) NOT NULL,
  `platelet` varchar(15) NOT NULL,
  `bleeding_time` varchar(15) NOT NULL,
  `clotting_time` varchar(15) NOT NULL,
  `neutrophil` varchar(15) NOT NULL,
  `segmenters` varchar(15) NOT NULL,
  `stabs` varchar(15) NOT NULL,
  `lymphocytes` varchar(15) NOT NULL,
  `monocyte` varchar(15) NOT NULL,
  `eosinophil` varchar(15) NOT NULL,
  `basophil` varchar(15) NOT NULL,
  `total` varchar(15) NOT NULL,
  `ABO_group` varchar(15) NOT NULL,
  `Rh_group` varchar(15) NOT NULL,
  `remarks` varchar(100) NOT NULL,
  `pathologist` varchar(30) NOT NULL,
  `medical_technologist` varchar(30) NOT NULL,
  `itr_no` varchar(50) NOT NULL,
  `user_id` int(50) NOT NULL,
  `month` varchar(20) NOT NULL,
  `year` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hematology`
--

INSERT INTO `hematology` (`hem_id`, `date_requested`, `requested_by`, `hemoglobin`, `hematocrit`, `RBC_count`, `WBC_count`, `platelet`, `bleeding_time`, `clotting_time`, `neutrophil`, `segmenters`, `stabs`, `lymphocytes`, `monocyte`, `eosinophil`, `basophil`, `total`, `ABO_group`, `Rh_group`, `remarks`, `pathologist`, `medical_technologist`, `itr_no`, `user_id`, `month`, `year`) VALUES
(1, '2022-01-14', 'brian', '130-150', '37-47', '5.3', '4.7', '160', '2', '3', '55', '3', '2', '27', '7', '2', '1', '12', 'A', '+', 'malaria confirmed', 'brian', 'brian', '0001', 3, 'Jan', '2022'),
(2, '2021-01-08', 'brian', '130-150', '37-47', '5.3', '4.7', '160', '2', '3', '55', '3', '2', '27', '7', '2', '1', '12', 'A', '+', 'NO malaria\r\nless white blood cells\r\nhigh viral load', 'brian', 'brian', '0010', 3, 'Jan', '2021'),
(3, '2022-01-03', 'brian', '130-150', '37-47', '5.3', '4.7', '160', '2', '3', '55', '3', '2', '27', '7', '2', '1', '12', 'O', '+', 'no blood poisoning', 'brian', 'brian', '0027', 3, 'Jan', '2022'),
(4, '2022-02-14', 'brian', '130-150', '37-47', '5.3', '4.7', '160', '2', '3', '55', '3', '2', '27', '7', '2', '1', '12', 'O', '-', 'less oxygen in blood\r\nfew white sells', 'brian', 'brian', '055', 3, 'Feb', '2022');

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
  `age` int(3) NOT NULL,
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

--
-- Dumping data for table `itr`
--

INSERT INTO `itr` (`itr_no`, `family_no`, `phil_health_no`, `firstname`, `middlename`, `lastname`, `birthdate`, `age`, `address`, `civil_status`, `gender`, `BP`, `TEMP`, `PR`, `RR`, `WT`, `HT`) VALUES
('0001', '', '', 'Isa', '', 'Jeremy', '02/12/1999', 23, 'Syokimau, Nairobi', 'Single', 'Male', '90/60', '36&deg;C', '5:1', '9', '50kg', '150'),
('0002', '', '', 'Shadrack', '', 'James', '01/15/1997', 25, 'Kabete, Nairobi', 'Single', 'Male', '92/60', '35&deg;C', '4:2', '8', '60kg', '165'),
('0003', '', '', 'Rachel ', '', 'Pilmo', '04/01/2010', 12, 'Siaya, Siaya', 'Single', 'Female', '90/60', '35&deg;C', '5:2', '7', '35kg', '120'),
('0004', '', '', 'Seli', '', 'Margaret', '06/26/1992', 30, 'Voi, Taita Taveta', 'Married', 'Female', '90/60', '37&deg;C', '5:1', '8', '80kg', '160'),
('0010', '', '', 'Singh', '', 'Juragh', '06/15/1991', 31, 'Parklands, Nairobi', 'Married', 'Male', '92/60', '39&deg;C', '4:3', '9', '80kg', '185'),
('0015', '', '', 'Wairimu', '', 'Muthoni', '11/16/2000', 22, 'Kirinyaga', 'Single', 'Female', '93/61', '36&deg;C', '5:2', '6', '60kg', '160'),
('0023', '', '', 'Wayne', '', 'Rooney', '01/16/2000', 33, 'Voi, Taita Taveta', 'Single', 'Male', '90/60', '36&deg;C', '5:2', '8', '56kg', '165'),
('0027', '', '', 'Diana', '', 'Wafula', '07/12/2002', 20, 'Kakamega, Kakamega', 'Married', 'Female', '90/60', '35&deg;C', '5:3', '6', '130kg', '150'),
('0047', '', '', 'Otis', '', 'Jacob', '04/11/1985', 37, 'Langas, Eldoret', 'Married', 'Male', '92/60', '35&deg;C', '5:2', '8', '87kg', '169'),
('0094', '', '', 'romelu', '', 'bolingoli', '05/04/2004', 18, 'Kakamega, Kakamega', 'Single', 'Male', '93/61', '34&deg;C', '4:2', '8', '67kg', '167'),
('055', '', '', 'Sharon', '', 'brian', '04/15/2000', 34, 'Kabete, Nairobi', 'Married', 'Female', '92/60', '35&deg;C', '5:3', '9', '76kg', '160'),
('111', '', '', 'kai', '', 'havertz', '06/01/1999', 0, 'Siaya, Siaya', 'Married', 'Male', '90/60', '37&deg;C', '5:1', '7', '77kg', '165'),
('3456', '', '43567ijnjk', 'kennedy', '', 'cavani', '02/20/1980', 42, 'Parklands, Nairobi', 'Married', 'Male', '93/61', '36&deg;C', '4:3', '8', '74kg', '165'),
('67', '', '', 'hudson ', '', 'odoi', '06/12/1994', 29, 'Kakamega, Kakamega', 'Single', 'Male', '93/61', '34&deg;C', '4:3', '6', '45kg', '120');

-- --------------------------------------------------------

--
-- Table structure for table `maternity_patient`
--

CREATE TABLE `maternity_patient` (
  `patient_id` int(50) NOT NULL,
  `case_no` varchar(20) NOT NULL,
  `nhts` varchar(30) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `philhealth` varchar(30) NOT NULL,
  `pat_firstname` varchar(30) NOT NULL,
  `pat_middlename` varchar(30) NOT NULL,
  `pat_lastname` varchar(30) NOT NULL,
  `age` int(10) NOT NULL,
  `religion` varchar(30) NOT NULL,
  `address` varchar(30) NOT NULL,
  `occupation` varchar(30) NOT NULL,
  `date_of_birth` varchar(20) NOT NULL,
  `date_of_admission` varchar(20) NOT NULL,
  `time_of_admission` varchar(20) NOT NULL,
  `spouse_firstname` varchar(30) NOT NULL,
  `spouse_middlename` varchar(30) NOT NULL,
  `spouse_lastname` varchar(30) NOT NULL,
  `spouse_age` int(10) NOT NULL,
  `spouse_religion` varchar(30) NOT NULL,
  `spouse_occupation` varchar(30) NOT NULL,
  `G` varchar(20) NOT NULL,
  `T` varchar(20) NOT NULL,
  `A` varchar(20) NOT NULL,
  `L` varchar(20) NOT NULL,
  `lmp` varchar(20) NOT NULL,
  `edc` varchar(20) NOT NULL,
  `aog` varchar(20) NOT NULL,
  `fetal_position` varchar(20) NOT NULL,
  `fh` varchar(20) NOT NULL,
  `fhb` varchar(20) NOT NULL,
  `loc` varchar(20) NOT NULL,
  `admitting_diagnose` varchar(100) NOT NULL,
  `midwife` varchar(50) NOT NULL,
  `date_of_delivery` varchar(20) NOT NULL,
  `time` varchar(10) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `wt` varchar(10) NOT NULL,
  `baby_firstname` varchar(30) NOT NULL,
  `baby_middlename` varchar(30) NOT NULL,
  `baby_lastname` varchar(30) NOT NULL,
  `hepa` varchar(30) NOT NULL,
  `bcg` varchar(30) NOT NULL,
  `nbs` varchar(30) NOT NULL,
  `date_of_discharge` varchar(30) NOT NULL,
  `time_of_discharge` varchar(30) NOT NULL,
  `final_diagnosis` varchar(100) NOT NULL,
  `disposition_on_charge` varchar(50) NOT NULL,
  `itr_no` varchar(50) NOT NULL,
  `user_id` int(50) NOT NULL,
  `month` varchar(20) NOT NULL,
  `year` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `prenatal`
--

CREATE TABLE `prenatal` (
  `prenatal_no` int(11) NOT NULL,
  `date` date NOT NULL,
  `chief_complaint` varchar(100) NOT NULL,
  `attending_physician` varchar(30) NOT NULL,
  `lmp` varchar(20) NOT NULL,
  `ga_by_lmp` varchar(20) NOT NULL,
  `edc_by_lmp` varchar(20) NOT NULL,
  `fhr` varchar(20) NOT NULL,
  `ga_by_sonar` varchar(20) NOT NULL,
  `edc_by_utz` varchar(20) NOT NULL,
  `pregnancy_age` varchar(20) NOT NULL,
  `biparietal_diameter` varchar(20) NOT NULL,
  `biparietal_eq` varchar(20) NOT NULL,
  `head_circumference` varchar(20) NOT NULL,
  `head_circumference_eq` varchar(20) NOT NULL,
  `abdominal_circumference` varchar(20) NOT NULL,
  `abdominal_circumference_eq` varchar(20) NOT NULL,
  `femoral_length` varchar(20) NOT NULL,
  `femoral_length_eq` varchar(20) NOT NULL,
  `crown_rump_length` varchar(20) NOT NULL,
  `crown_rump_length_eq` varchar(20) NOT NULL,
  `mean_gest_sac_diameter` varchar(20) NOT NULL,
  `mean_gest_sac_diameter_eq` varchar(20) NOT NULL,
  `average_fetal_weight` varchar(20) NOT NULL,
  `gestation` varchar(20) NOT NULL,
  `presentation_lie` varchar(20) NOT NULL,
  `amniotic_fluid` varchar(20) NOT NULL,
  `placenta_location` varchar(20) NOT NULL,
  `previa` varchar(20) NOT NULL,
  `placenta_grade` varchar(20) NOT NULL,
  `fetal_activity` varchar(20) NOT NULL,
  `comments` varchar(100) NOT NULL,
  `radiologist` varchar(30) NOT NULL,
  `itr_no` varchar(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `month` varchar(10) NOT NULL,
  `year` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prenatal`
--

INSERT INTO `prenatal` (`prenatal_no`, `date`, `chief_complaint`, `attending_physician`, `lmp`, `ga_by_lmp`, `edc_by_lmp`, `fhr`, `ga_by_sonar`, `edc_by_utz`, `pregnancy_age`, `biparietal_diameter`, `biparietal_eq`, `head_circumference`, `head_circumference_eq`, `abdominal_circumference`, `abdominal_circumference_eq`, `femoral_length`, `femoral_length_eq`, `crown_rump_length`, `crown_rump_length_eq`, `mean_gest_sac_diameter`, `mean_gest_sac_diameter_eq`, `average_fetal_weight`, `gestation`, `presentation_lie`, `amniotic_fluid`, `placenta_location`, `previa`, `placenta_grade`, `fetal_activity`, `comments`, `radiologist`, `itr_no`, `user_id`, `month`, `year`) VALUES
(1, '2022-01-06', 'pregnancy pain', 'shaddy', '67', 'yes', 'available', '677', 'yes', '', '8 months', '08', '8', '13', '8', '11', '8', '10', '8', '5', '8', '9', '8', '2kg', 'Single', 'Variable', 'Normal', 'Anterior', 'Complete', '', 'heart', 'baby fine ', 'Sam', '0004', 2, 'Jan', '2022');

-- --------------------------------------------------------

--
-- Table structure for table `radiological`
--

CREATE TABLE `radiological` (
  `rad_id` int(11) NOT NULL,
  `case_no` varchar(12) NOT NULL,
  `referred_by` varchar(30) NOT NULL,
  `clinical_impression` varchar(100) NOT NULL,
  `room_bed_no` varchar(11) NOT NULL,
  `type_of_examination` varchar(30) NOT NULL,
  `date_taken` date NOT NULL,
  `radiologist` varchar(30) NOT NULL,
  `itr_no` varchar(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `month` varchar(10) NOT NULL,
  `year` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `radiological`
--

INSERT INTO `radiological` (`rad_id`, `case_no`, `referred_by`, `clinical_impression`, `room_bed_no`, `type_of_examination`, `date_taken`, `radiologist`, `itr_no`, `user_id`, `month`, `year`) VALUES
(1, '20', 'No', 'Lumbo-Sacral-AP and Lateral', '', 'Back', '2022-02-14', 'Sam', '0001', 5, 'Feb', '2022'),
(2, '12', 'No', 'Forearm-AP and Lateral', 'n/a', 'arm', '2022-02-14', 'Sam', '0047', 5, 'Jan', '2022');

-- --------------------------------------------------------

--
-- Table structure for table `rehabilitation`
--

CREATE TABLE `rehabilitation` (
  `rehab_id` int(11) NOT NULL,
  `diagnosis` varchar(50) NOT NULL,
  `type_of_disability` varchar(50) NOT NULL,
  `subjective` varchar(100) NOT NULL,
  `objective` varchar(100) NOT NULL,
  `assessment` varchar(100) NOT NULL,
  `plan` varchar(100) NOT NULL,
  `date` varchar(10) NOT NULL,
  `itr_no` varchar(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `month` varchar(10) NOT NULL,
  `year` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rehabilitation`
--

INSERT INTO `rehabilitation` (`rehab_id`, `diagnosis`, `type_of_disability`, `subjective`, `objective`, `assessment`, `plan`, `date`, `itr_no`, `user_id`, `month`, `year`) VALUES
(1, 'substance abuse', 'addiction', 'on substitute drus', '3 moths rehabilitation', 'violence observed', 'N/A', '02/14/2022', '0015', 6, 'Feb', '2022');

-- --------------------------------------------------------

--
-- Table structure for table `sputum`
--

CREATE TABLE `sputum` (
  `sputum_id` int(11) NOT NULL,
  `name_of_collection_unit` varchar(30) NOT NULL,
  `date_of_submission` date NOT NULL,
  `disease_classification` varchar(30) NOT NULL,
  `site` varchar(30) NOT NULL,
  `reason_for_examination` varchar(30) NOT NULL,
  `case_no` varchar(30) NOT NULL,
  `specimen1` varchar(30) NOT NULL,
  `specimen2` varchar(30) NOT NULL,
  `specimen3` varchar(30) NOT NULL,
  `date_of_collection1` date NOT NULL,
  `date_of_collection2` date NOT NULL,
  `date_of_collection3` date NOT NULL,
  `specimen_collector` varchar(30) NOT NULL,
  `remarks` varchar(100) NOT NULL,
  `lab_serial_no1` varchar(20) NOT NULL,
  `lab_serial_no2` varchar(20) NOT NULL,
  `lab_serial_no3` varchar(20) NOT NULL,
  `specimen_1` varchar(20) NOT NULL,
  `specimen_2` varchar(20) NOT NULL,
  `specimen_3` varchar(20) NOT NULL,
  `visual_appearance1` varchar(20) NOT NULL,
  `visual_appearance2` varchar(20) NOT NULL,
  `visual_appearance3` varchar(20) NOT NULL,
  `reading` varchar(20) NOT NULL,
  `date_of_examination` date NOT NULL,
  `examined_by` varchar(30) NOT NULL,
  `itr_no` varchar(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `month` varchar(10) NOT NULL,
  `year` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sputum`
--

INSERT INTO `sputum` (`sputum_id`, `name_of_collection_unit`, `date_of_submission`, `disease_classification`, `site`, `reason_for_examination`, `case_no`, `specimen1`, `specimen2`, `specimen3`, `date_of_collection1`, `date_of_collection2`, `date_of_collection3`, `specimen_collector`, `remarks`, `lab_serial_no1`, `lab_serial_no2`, `lab_serial_no3`, `specimen_1`, `specimen_2`, `specimen_3`, `visual_appearance1`, `visual_appearance2`, `visual_appearance3`, `reading`, `date_of_examination`, `examined_by`, `itr_no`, `user_id`, `month`, `year`) VALUES
(1, 'covid test', '2022-02-14', '', 'N/A', 'Others', '20', 'nose', 'throat', '', '2022-01-01', '2022-01-01', '1970-01-01', '3576890hi', 'not enough sputum', '534ejk', '4556', '', 'throat', 'nose', '', 'colored', 'clear', '', '20.003 g', '2022-01-02', 'yator', '0001', 7, 'Jan', '2022'),
(2, 'covid test', '2022-02-14', '', 'N/A', 'Others', 'covid', 'nose', 'throat', '', '2022-02-01', '2022-02-01', '1970-01-01', '3576890hi', 'blood in sample', '534ejk', '4556', '', 'throat', 'nose', '', 'colored', 'clear', '', '0.003 g', '2022-02-03', 'yator', '0002', 7, 'Feb', '2022'),
(3, 'covid test', '2022-02-14', '', 'siaya medi centre', '', 'covid', 'nose', 'throat', '', '2022-02-01', '2022-02-02', '1970-01-01', '3590SARS', 'N/A', '534SAR', '4556SAR', '', 'throat', 'nose', '', 'colored', 'clear', '', '0.006 g', '2022-01-05', 'yator', '0003', 7, 'Feb', '2022'),
(4, 'covid test', '2022-02-14', '', 'VOI MEDI CENTRE', 'Others', 'covid', 'nose', 'throat', '', '2022-01-12', '2022-01-14', '1970-01-01', '3590SARS', 'N/A', '534SAR', '4556SAR', '', 'throat', 'nose', '', 'colored', 'clear', '', '0.003 g', '2022-01-13', 'yator', '0004', 7, 'Feb', '2022'),
(5, 'covid test', '2022-02-14', '', 'N/A', 'Others', 'covidSARS', 'nose', 'throat', '', '2022-02-02', '2022-02-02', '1970-01-01', '3590SARS', 'N/A', '534SARS', '4556SARS', '', 'throat', 'nose', '', 'clear', 'clear', '', '', '2022-02-03', 'yator', '0010', 7, 'Feb', '2022');

-- --------------------------------------------------------

--
-- Table structure for table `urinalysis`
--

CREATE TABLE `urinalysis` (
  `urinalysis_id` int(11) NOT NULL,
  `date_of_request` varchar(20) NOT NULL,
  `color` varchar(15) NOT NULL,
  `transparency` varchar(15) NOT NULL,
  `specific_gravity` varchar(15) NOT NULL,
  `ph` varchar(15) NOT NULL,
  `sugar` varchar(15) NOT NULL,
  `protein` varchar(15) NOT NULL,
  `pregnancy_test` varchar(15) NOT NULL,
  `pus_cells` varchar(15) NOT NULL,
  `rbc` varchar(15) NOT NULL,
  `cast` varchar(15) NOT NULL,
  `urates` varchar(15) NOT NULL,
  `uric_acid` varchar(15) NOT NULL,
  `cal_ox` varchar(15) NOT NULL,
  `epith_cells` varchar(15) NOT NULL,
  `mucus_threads` varchar(15) NOT NULL,
  `others` varchar(15) NOT NULL,
  `pathologist` varchar(30) NOT NULL,
  `medical_technologist` varchar(30) NOT NULL,
  `itr_no` varchar(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `month` varchar(10) NOT NULL,
  `year` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `urinalysis`
--

INSERT INTO `urinalysis` (`urinalysis_id`, `date_of_request`, `color`, `transparency`, `specific_gravity`, `ph`, `sugar`, `protein`, `pregnancy_test`, `pus_cells`, `rbc`, `cast`, `urates`, `uric_acid`, `cal_ox`, `epith_cells`, `mucus_threads`, `others`, `pathologist`, `medical_technologist`, `itr_no`, `user_id`, `month`, `year`) VALUES
(1, '02/14/2022', 'yellow', 'vague', '0.4', '7', '20', '15', 'negative', 'n/a', 'n/a', 'n/a', 'few observed', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'sibebe', 'sibebe', '0015', 8, 'Feb', '2022');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(12) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `middlename` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `section` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `firstname`, `middlename`, `lastname`, `section`) VALUES
(1, 'Brenda', '123', 'Bresh', '', 'Andy', 'Fecalysis'),
(2, 'Shaddy', '123', 'Shaddy', '', 'Shadrack', 'Maternity'),
(3, 'Brian', '123', 'Brian', '', 'Brayo', 'Hematology'),
(4, 'Sharon', '123', 'Sharon', '', 'Alison', 'Dental'),
(5, 'Colloh', '123', 'Colloh', '', 'Ckay', 'Xray'),
(6, 'Mercy', '123', 'Mercy', '', 'Jelagat', 'Rehabilitation'),
(7, 'Yator', '123', 'Yator', '', 'Drew', 'Sputum'),
(8, 'Sibebe', '123', 'Sibebe', '', 'Jones', 'Urinalysis');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `birthing`
--
ALTER TABLE `birthing`
  ADD PRIMARY KEY (`birth_id`);

--
-- Indexes for table `complaints`
--
ALTER TABLE `complaints`
  ADD PRIMARY KEY (`com_id`);

--
-- Indexes for table `dental`
--
ALTER TABLE `dental`
  ADD PRIMARY KEY (`dental_no`);

--
-- Indexes for table `fecalisys`
--
ALTER TABLE `fecalisys`
  ADD PRIMARY KEY (`fecalisys_id`);

--
-- Indexes for table `hematology`
--
ALTER TABLE `hematology`
  ADD PRIMARY KEY (`hem_id`);

--
-- Indexes for table `itr`
--
ALTER TABLE `itr`
  ADD PRIMARY KEY (`itr_no`),
  ADD UNIQUE KEY `itr_no` (`itr_no`);

--
-- Indexes for table `maternity_patient`
--
ALTER TABLE `maternity_patient`
  ADD PRIMARY KEY (`patient_id`);

--
-- Indexes for table `prenatal`
--
ALTER TABLE `prenatal`
  ADD PRIMARY KEY (`prenatal_no`);

--
-- Indexes for table `radiological`
--
ALTER TABLE `radiological`
  ADD PRIMARY KEY (`rad_id`);

--
-- Indexes for table `rehabilitation`
--
ALTER TABLE `rehabilitation`
  ADD PRIMARY KEY (`rehab_id`);

--
-- Indexes for table `sputum`
--
ALTER TABLE `sputum`
  ADD PRIMARY KEY (`sputum_id`);

--
-- Indexes for table `urinalysis`
--
ALTER TABLE `urinalysis`
  ADD PRIMARY KEY (`urinalysis_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `birthing`
--
ALTER TABLE `birthing`
  MODIFY `birth_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `complaints`
--
ALTER TABLE `complaints`
  MODIFY `com_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `dental`
--
ALTER TABLE `dental`
  MODIFY `dental_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `fecalisys`
--
ALTER TABLE `fecalisys`
  MODIFY `fecalisys_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hematology`
--
ALTER TABLE `hematology`
  MODIFY `hem_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `maternity_patient`
--
ALTER TABLE `maternity_patient`
  MODIFY `patient_id` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prenatal`
--
ALTER TABLE `prenatal`
  MODIFY `prenatal_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `radiological`
--
ALTER TABLE `radiological`
  MODIFY `rad_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `rehabilitation`
--
ALTER TABLE `rehabilitation`
  MODIFY `rehab_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sputum`
--
ALTER TABLE `sputum`
  MODIFY `sputum_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `urinalysis`
--
ALTER TABLE `urinalysis`
  MODIFY `urinalysis_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
