-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 22, 2022 at 07:44 AM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yummy`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer_cart`
--

DROP TABLE IF EXISTS `customer_cart`;
CREATE TABLE IF NOT EXISTS `customer_cart` (
  `Payment` varchar(100) DEFAULT NULL,
  `Cart_ID` varchar(100) NOT NULL,
  `customer_email` varchar(100) NOT NULL,
  `Dish_hotel_name` varchar(100) NOT NULL,
  `Dish_name` varchar(100) NOT NULL,
  `Dish_price` varchar(100) NOT NULL,
  `dish_quantity` varchar(100) NOT NULL,
  PRIMARY KEY (`Cart_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_cart`
--

INSERT INTO `customer_cart` (`Payment`, `Cart_ID`, `customer_email`, `Dish_hotel_name`, `Dish_name`, `Dish_price`, `dish_quantity`) VALUES
('PAY20138', 'CRT89702', '2001KARTHI.M@gmail.com', 'Arya_bhavan', 'HyderbadiBiriyani', '119', '1');

-- --------------------------------------------------------

--
-- Table structure for table `customer_orders`
--

DROP TABLE IF EXISTS `customer_orders`;
CREATE TABLE IF NOT EXISTS `customer_orders` (
  `Payment_id` varchar(100) NOT NULL,
  `customer_email` varchar(100) NOT NULL,
  `Total_items` varchar(100) NOT NULL,
  `Dish_names` varchar(1000) NOT NULL,
  `total_seats` varchar(100) NOT NULL,
  `Hotel_name` varchar(100) NOT NULL,
  `Date/time` varchar(100) NOT NULL,
  `total_amount_paid` varchar(100) NOT NULL,
  `payment_details` varchar(100) NOT NULL,
  `Date` varchar(100) NOT NULL,
  PRIMARY KEY (`Payment_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer_payment`
--

DROP TABLE IF EXISTS `customer_payment`;
CREATE TABLE IF NOT EXISTS `customer_payment` (
  `Payment_ID` varchar(100) NOT NULL,
  `customer_email` varchar(100) NOT NULL,
  `Total_items` varchar(100) NOT NULL,
  `Total_payment` varchar(100) NOT NULL,
  `Payment_type` varchar(100) NOT NULL,
  `Other_details` varchar(100) NOT NULL,
  PRIMARY KEY (`Payment_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_payment`
--

INSERT INTO `customer_payment` (`Payment_ID`, `customer_email`, `Total_items`, `Total_payment`, `Payment_type`, `Other_details`) VALUES
('PAY95892', '2001KARTHI.M@gmail.com', '1', '89', 'UPI', 'UPI ID : karthikeyan@ybl Time : 21-04-2022 14:12 pm'),
('PAY10329', '2001KARTHI.M@gmail.com', '2', '248', 'UPI', 'UPI ID : karthikeyan@ybl Time : 21-04-2022 14:03 pm');

-- --------------------------------------------------------

--
-- Table structure for table `customer_registration_details`
--

DROP TABLE IF EXISTS `customer_registration_details`;
CREATE TABLE IF NOT EXISTS `customer_registration_details` (
  `Firstname` varchar(100) NOT NULL,
  `Lastname` varchar(100) NOT NULL,
  `phone_number` varchar(100) NOT NULL,
  `Date_of_birth` varchar(100) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Pincode` varchar(100) NOT NULL,
  `EmailID` varchar(100) NOT NULL,
  `User_Password` varchar(100) NOT NULL,
  PRIMARY KEY (`EmailID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_registration_details`
--

INSERT INTO `customer_registration_details` (`Firstname`, `Lastname`, `phone_number`, `Date_of_birth`, `Address`, `Pincode`, `EmailID`, `User_Password`) VALUES
('Karthi', 'M', '6301457870', '2022-04-18', 'Indian Bank, Gangadhara Nellore, Andhra Pradesh, India', '517125', '2001KARTHI.M@gmail.com', '20012020');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
