-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 21, 2015 at 03:10 PM
-- Server version: 5.6.21
-- PHP Version: 5.5.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `aa2000`
--

-- --------------------------------------------------------

--
-- Table structure for table `asset_archive`
--

CREATE TABLE IF NOT EXISTS `asset_archive` (
  `productID` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` int(20) NOT NULL,
  `image` varchar(50) NOT NULL,
  `details` text NOT NULL,
  `quantity` int(20) NOT NULL,
  `date_created` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `asset_depreciation`
--

CREATE TABLE IF NOT EXISTS `asset_depreciation` (
  `item_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `salvage_val` int(11) NOT NULL,
  `years` int(11) NOT NULL,
  `depmed` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `asset_depreciation`
--

INSERT INTO `asset_depreciation` (`item_id`, `price`, `salvage_val`, `years`, `depmed`) VALUES
(1, 20000, 500, 5, 2),
(2, 15000, 200, 5, 1),
(3, 1500, 200, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `audit_trail`
--

CREATE TABLE IF NOT EXISTS `audit_trail` (
`KeyID` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `User` varchar(50) NOT NULL,
  `Date_time` varchar(50) NOT NULL,
  `Outcome` varchar(20) NOT NULL,
  `Detail` varchar(250) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `audit_trail`
--

INSERT INTO `audit_trail` (`KeyID`, `ID`, `User`, `Date_time`, `Outcome`, `Detail`) VALUES
(1, 4, 'DAVIS_SERVER', 'September 7, 2015 3:49:pm  ', 'Deleted', 'CustomerID 1 Name Richmon Sabello Message was deleted!'),
(2, 4, 'DAVIS_SERVER', 'September 7, 2015 3:49:pm  ', 'Deleted', 'CustomerID 3 Name Julius Felicen Message was deleted!'),
(3, 4, 'DAVIS_SERVER', 'September 7, 2015 3:49:pm  ', 'Deleted', 'CustomerID 4 Name Leo Aranzamendez Message was deleted!'),
(4, 4, 'DAVIS_SERVER', 'September 15, 2015 6:06:pm  ', 'Inserted', 'Announcement = JRU New Announcement was created');

-- --------------------------------------------------------

--
-- Table structure for table `backup_dbname`
--

CREATE TABLE IF NOT EXISTS `backup_dbname` (
  `ID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE IF NOT EXISTS `comment` (
`Num` int(11) NOT NULL,
  `announcementID` int(11) NOT NULL,
  `Comment` varchar(500) NOT NULL,
  `CustomerID` int(11) NOT NULL,
  `date_posted` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE IF NOT EXISTS `customers` (
`CustomerID` int(11) NOT NULL,
  `Firstname` char(50) NOT NULL,
  `Middle_name` char(50) NOT NULL,
  `Lastname` char(50) NOT NULL,
  `Birthday` date NOT NULL,
  `Address` varchar(100) NOT NULL,
  `City` varchar(50) NOT NULL,
  `Contact_number` varchar(50) NOT NULL,
  `Gender` char(11) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Date_created` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`CustomerID`, `Firstname`, `Middle_name`, `Lastname`, `Birthday`, `Address`, `City`, `Contact_number`, `Gender`, `Email`, `Password`, `Date_created`, `status`) VALUES
(1, 'Richmon', 'Bardon', 'Sabello', '1995-09-15', '522A Sen. Neptali Gonzales St. San Jose, Sitio IV, Mandaluyong City', 'Mandaluyong City', '09434138521', 'Male', 'sabellorichmon@yahoo.com', '11a00f3677902d1dec0aeccacc16d464', 'August 5, 2015 11:34:pm  ', 'active'),
(2, 'Benjie', 'Ilano', 'Alfanta', '1995-11-30', 'Pureza st. sta mesa manila', 'Manila City', '09364987102', 'Male', 'benjiealfanta@yahoo.com', 'a432fa61bf0d91ad0c3d2b26ae8ace94', 'August 5, 2015 11:35:pm  ', 'active'),
(3, 'Julius', 'Dela pena', 'Felicen', '1995-07-31', 'Flood way black 1', 'Taytay Rizal', '09109223103', 'Male', 'juliusfelicen@yahoo.com', 'fb154fdee061037d6f6bcec2eecfe688', 'August 12, 2015 4:07:pm  ', 'active'),
(4, 'Leo', 'Bonife', 'Aranzamendez', '1995-09-29', '369 Wayan,Palali', 'Manila City', '09364987102', 'Male', 'itchigo.aranzamendez@yahoo.com', '8eef495e2875ec79e82dd886e58f26bd', 'August 12, 2015 4:08:pm  ', 'active'),
(5, 'Allan', 'Carada', 'Aparis', '1974-12-27', '17 edsa', 'Mandaluyong City', '5715693', 'Male', 'aa2000ent@gmail.com', 'dfc91587736b342423abefd7a2328de4', 'August 26, 2015 2:14:pm  ', 'active'),
(6, 'Raffy', 'Bardon', 'Sabello', '1985-02-03', '522A Sen. Neptali Gonzales St. San Jose, Sitio IV, Mandaluyong City', 'Mandaluyong City', '09364987102', 'Male', 'sabellorap@yahoo.com', '25f9e794323b453885f5181f1b624d0b', 'September 16, 2015 12:56:am  ', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `customer_archive`
--

CREATE TABLE IF NOT EXISTS `customer_archive` (
  `CustomerID` int(11) NOT NULL,
  `Firstname` char(50) NOT NULL,
  `Middle_name` char(50) NOT NULL,
  `Lastname` char(50) NOT NULL,
  `Birthday` date NOT NULL,
  `Address` varchar(100) NOT NULL,
  `City` varchar(50) NOT NULL,
  `Contact_number` varchar(50) NOT NULL,
  `Gender` char(11) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Date_created` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dep_method`
--

CREATE TABLE IF NOT EXISTS `dep_method` (
  `methodID` int(11) NOT NULL,
  `dep_method` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dep_method`
--

INSERT INTO `dep_method` (`methodID`, `dep_method`) VALUES
(1, 'Straight Line Depreciation'),
(2, 'Double Declining Balance Depreciation');

-- --------------------------------------------------------

--
-- Table structure for table `item_category`
--

CREATE TABLE IF NOT EXISTS `item_category` (
  `category_id` int(10) NOT NULL,
  `item_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item_category`
--

INSERT INTO `item_category` (`category_id`, `item_name`) VALUES
(1, 'Office Machine'),
(2, 'Computer Accessories'),
(3, 'Furniture'),
(4, 'Filing & Storage'),
(5, 'Office Supplies');

-- --------------------------------------------------------

--
-- Table structure for table `loginout_history`
--

CREATE TABLE IF NOT EXISTS `loginout_history` (
`Primary` int(11) NOT NULL,
  `CustomerID` int(11) NOT NULL,
  `User` varchar(50) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Time_in` varchar(50) NOT NULL,
  `Time_out` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loginout_history`
--

INSERT INTO `loginout_history` (`Primary`, `CustomerID`, `User`, `Name`, `Time_in`, `Time_out`) VALUES
(1, 1, 'sabellorichmon@yahoo.com', 'Richmon', 'September 7, 2015 5:26:pm  ', 'September 16, 2015 12:55:am  '),
(2, 1, 'sabellorichmon@yahoo.com', 'Richmon', 'September 11, 2015 1:52:pm  ', 'September 16, 2015 12:55:am  '),
(3, 1, 'sabellorichmon@yahoo.com', 'Richmon', 'September 11, 2015 2:07:pm  ', 'September 16, 2015 12:55:am  '),
(4, 1, 'sabellorichmon@yahoo.com', 'Richmon', 'September 13, 2015 10:41:pm  ', 'September 16, 2015 12:55:am  '),
(5, 1, 'sabellorichmon@yahoo.com', 'Richmon', 'September 14, 2015 11:11:am  ', 'September 16, 2015 12:55:am  '),
(6, 1, 'sabellorichmon@yahoo.com', 'Richmon', 'September 14, 2015 1:56:pm  ', 'September 16, 2015 12:55:am  '),
(7, 1, 'sabellorichmon@yahoo.com', 'Richmon', 'September 15, 2015 3:11:pm  ', 'September 16, 2015 12:55:am  '),
(8, 1, 'sabellorichmon@yahoo.com', 'Richmon', 'September 15, 2015 4:14:pm  ', 'September 16, 2015 12:55:am  '),
(9, 1, 'sabellorichmon@yahoo.com', 'Richmon', 'September 15, 2015 6:05:pm  ', 'September 16, 2015 12:55:am  '),
(10, 1, 'sabellorichmon@yahoo.com', 'Richmon', 'September 15, 2015 6:06:pm  ', 'September 16, 2015 12:55:am  '),
(11, 1, 'sabellorichmon@yahoo.com', 'Richmon', 'September 15, 2015 10:18:pm  ', 'September 16, 2015 12:55:am  '),
(12, 1, 'sabellorichmon@yahoo.com', 'Richmon', 'September 15, 2015 11:09:pm  ', 'September 16, 2015 12:55:am  '),
(13, 1, 'sabellorichmon@yahoo.com', 'Richmon', 'September 16, 2015 12:55:am  ', 'September 16, 2015 12:55:am  '),
(14, 1, 'sabellorichmon@yahoo.com', 'Richmon', 'September 16, 2015 12:55:am  ', 'September 16, 2015 12:55:am  '),
(15, 6, 'sabellorap@yahoo.com', 'Raffy', 'September 16, 2015 1:26:am  ', 'September 16, 2015 1:30:am  '),
(16, 6, 'sabellorap@yahoo.com', 'Raffy', 'September 16, 2015 1:30:am  ', 'September 16, 2015 1:30:am  ');

-- --------------------------------------------------------

--
-- Table structure for table `loginout_serverhistory`
--

CREATE TABLE IF NOT EXISTS `loginout_serverhistory` (
`Primary` int(11) NOT NULL,
  `AdminID` int(11) NOT NULL,
  `User` varchar(50) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Time_in` varchar(50) NOT NULL,
  `Time_out` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loginout_serverhistory`
--

INSERT INTO `loginout_serverhistory` (`Primary`, `AdminID`, `User`, `Name`, `Time_in`, `Time_out`) VALUES
(1, 3, 'JULIUS_ADS', 'Julius  Felicen', 'September 7, 2015 6:31:pm  ', 'September 11, 2015 2:30:pm '),
(2, 2, 'LEO_AS', 'Leo Aranzamendez', 'September 7, 2015 6:34:pm  ', 'September 13, 2015 10:25:pm '),
(3, 2, 'LEO_AS', 'Leo Aranzamendez', 'September 7, 2015 6:34:pm  ', 'September 13, 2015 10:25:pm '),
(4, 1, 'BENJIE_OOS', 'Benjie I. Alfanta', 'September 7, 2015 6:35:pm  ', 'September 15, 2015 11:08:pm '),
(5, 3, 'JULIUS_ADS', 'Julius  Felicen', 'September 11, 2015 2:29:pm  ', 'September 11, 2015 2:30:pm '),
(6, 2, 'LEO_AS', 'Leo Aranzamendez', 'September 11, 2015 2:30:pm  ', 'September 13, 2015 10:25:pm '),
(7, 1, 'BENJIE_OOS', 'Benjie I. Alfanta', 'September 11, 2015 2:31:pm  ', 'September 15, 2015 11:08:pm '),
(8, 2, 'LEO_AS', 'Leo Aranzamendez', 'September 13, 2015 10:16:pm  ', 'September 13, 2015 10:25:pm '),
(9, 1, 'BENJIE_OOS', 'Benjie I. Alfanta', 'September 14, 2015 1:55:pm  ', 'September 15, 2015 11:08:pm '),
(10, 1, 'BENJIE_OOS', 'Benjie I. Alfanta', 'September 15, 2015 11:07:pm  ', 'September 15, 2015 11:08:pm ');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE IF NOT EXISTS `message` (
`ID` int(11) NOT NULL,
  `CustomerID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Subject` varchar(20) NOT NULL,
  `Message` varchar(1000) NOT NULL,
  `Date_created` varchar(50) NOT NULL,
  `Status` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`ID`, `CustomerID`, `Name`, `Email`, `Subject`, `Message`, `Date_created`, `Status`) VALUES
(1, 1, 'Richmon Sabello', 'sabellorichmon@yahoo.com', 'wqe`s', 'sdasdasda', 'September 15, 2015 9:21:pm  ', 'Seen');

-- --------------------------------------------------------

--
-- Table structure for table `notif`
--

CREATE TABLE IF NOT EXISTS `notif` (
  `notifID` int(11) NOT NULL,
  `orderID` int(11) NOT NULL,
  `status` varchar(50) NOT NULL,
  `date_ordered` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notif`
--

INSERT INTO `notif` (`notifID`, `orderID`, `status`, `date_ordered`) VALUES
(1, 1, 'Seen', '2015-09-15');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `OrderID` int(11) NOT NULL,
  `customerID` int(11) NOT NULL,
  `total` varchar(30) NOT NULL,
  `orderdate` date NOT NULL,
  `Date_paid` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `deliverystatus` varchar(50) NOT NULL,
  `Transaction_code` varchar(50) NOT NULL,
  `tax` int(11) NOT NULL,
  `shipping_address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`OrderID`, `customerID`, `total`, `orderdate`, `Date_paid`, `status`, `deliverystatus`, `Transaction_code`, `tax`, `shipping_address`) VALUES
(1, 1, '8000', '2015-09-15', 'September 15, 2015 4:16:pm  ', 'Confirmed', 'Delivered', 'AA0011', 960, '522 San jose sitio 4  Mandaluyong City');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE IF NOT EXISTS `order_details` (
  `CustomerID` int(10) NOT NULL,
  `Quantity` int(10) NOT NULL,
  `ProductID` int(10) NOT NULL,
  `Total` int(10) NOT NULL,
  `Total_qty` varchar(50) NOT NULL,
  `OrderID` varchar(10) NOT NULL,
  `Orderdetailsid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`CustomerID`, `Quantity`, `ProductID`, `Total`, `Total_qty`, `OrderID`, `Orderdetailsid`) VALUES
(1, 1, 1, 8000, '95', '1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE IF NOT EXISTS `purchases` (
`id` int(10) NOT NULL,
  `trasaction_id` varchar(600) NOT NULL,
  `payer_fname` varchar(300) NOT NULL,
  `payer_lname` varchar(300) NOT NULL,
  `payer_address` varchar(300) NOT NULL,
  `payer_city` varchar(300) NOT NULL,
  `payer_country` varchar(300) NOT NULL,
  `payer_email` text NOT NULL,
  `posted_date` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=74 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reply_message`
--

CREATE TABLE IF NOT EXISTS `reply_message` (
`Primary_key` int(11) NOT NULL,
  `CustomerID` int(11) NOT NULL,
  `Recipient` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `From_admin` varchar(50) NOT NULL,
  `Message` varchar(1000) NOT NULL,
  `Date_created` varchar(50) NOT NULL,
  `Status` varchar(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reply_message`
--

INSERT INTO `reply_message` (`Primary_key`, `CustomerID`, `Recipient`, `Email`, `From_admin`, `Message`, `Date_created`, `Status`) VALUES
(1, 1, 'Richmon Sabello', 'sabellorichmon@yahoo.com', 'Richmon Davis B. Sabello', 'thank you', 'September 15, 2015 9:22:pm  ', 'Seen');

-- --------------------------------------------------------

--
-- Table structure for table `sent_messages`
--

CREATE TABLE IF NOT EXISTS `sent_messages` (
`ID` int(11) NOT NULL,
  `CustomerID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Subject` varchar(20) NOT NULL,
  `Message` varchar(1000) NOT NULL,
  `Date_created` varchar(50) NOT NULL,
  `Status` varchar(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sent_messages`
--

INSERT INTO `sent_messages` (`ID`, `CustomerID`, `Name`, `Email`, `Subject`, `Message`, `Date_created`, `Status`) VALUES
(1, 1, 'Richmon Sabello', 'sabellorichmon@yahoo.com', 'wqe`s', 'sdasdasda', 'September 15, 2015 9:21:pm  ', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_announcement`
--

CREATE TABLE IF NOT EXISTS `tb_announcement` (
  `announcementID` int(11) NOT NULL,
  `detail` text NOT NULL,
  `date` datetime NOT NULL,
  `name` varchar(50) NOT NULL,
  `place` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL,
  `status` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_announcement`
--

INSERT INTO `tb_announcement` (`announcementID`, `detail`, `date`, `name`, `place`, `image`, `status`) VALUES
(1, 'Price Php 1,000 only', '2015-07-16 00:30:00', 'PROMO FOR The Day', 'MANDALUYONG', 'upload/4.JPG', 'Seen'),
(2, 'PRomo', '2015-07-16 18:00:00', 'PROMO FOR The Day', 'JRU121231', 'upload/5.JPG', 'Seen'),
(3, 'asdasdasdas', '2015-09-15 18:05:00', 'JRU', 'JRU', 'upload/11.JPG', 'Seen');

-- --------------------------------------------------------

--
-- Table structure for table `tb_equipment`
--

CREATE TABLE IF NOT EXISTS `tb_equipment` (
  `item_id` int(11) NOT NULL,
  `item_code` text NOT NULL,
  `item_name` varchar(500) NOT NULL,
  `brand_name` varchar(250) NOT NULL,
  `price` int(11) NOT NULL,
  `employee_id` varchar(250) NOT NULL,
  `item_category` int(30) NOT NULL,
  `status` varchar(30) NOT NULL,
  `supplier_id` varchar(250) NOT NULL,
  `date_post` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_equipment`
--

INSERT INTO `tb_equipment` (`item_id`, `item_code`, `item_name`, `brand_name`, `price`, `employee_id`, `item_category`, `status`, `supplier_id`, `date_post`) VALUES
(1, 'JHasdks6328HYd', 'Laptop', 'ASUS', 20000, 'Mark Dave ', 2, 'Damage', 'Deeco', '2015-09-13'),
(2, '43dsffc234htyet', 'Desktop', 'ACER', 15000, 'Rhea Dela Crus', 2, 'Good', 'Deeco', '2015-09-13');

-- --------------------------------------------------------

--
-- Table structure for table `tb_productreport`
--

CREATE TABLE IF NOT EXISTS `tb_productreport` (
`ProductID` int(11) NOT NULL,
  `Beg_qty` varchar(50) NOT NULL,
  `updated_qty` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_productreport`
--

INSERT INTO `tb_productreport` (`ProductID`, `Beg_qty`, `updated_qty`) VALUES
(1, '100', ''),
(2, '100', ''),
(3, '100', ''),
(4, '100', ''),
(5, '100', ''),
(6, '100', ''),
(7, '100', ''),
(8, '100', ''),
(9, '50', ''),
(10, '30', ''),
(11, '20', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_products`
--

CREATE TABLE IF NOT EXISTS `tb_products` (
`productID` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` int(20) NOT NULL,
  `image` varchar(200) NOT NULL,
  `details` text NOT NULL,
  `quantity` int(20) NOT NULL,
  `date_created` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_products`
--

INSERT INTO `tb_products` (`productID`, `name`, `price`, `image`, `details`, `quantity`, `date_created`) VALUES
(1, 'Professional Standard Box Camera ', 8000, 'products/1.JPG', 'Sensor Type: 1/3 Sony High Resolution CCD Chipset\r\n\r\n\r\n\r\nSystem of Signal: NTSC\r\n\r\n\r\n\r\nHorizontal Resolution: 420 TV Lines\r\n\r\n\r\n\r\nOperating Temp: -10? C-50?C\r\n\r\n\r\n\r\nIllumination: 1.0Lux @ F1.2\r\n\r\n\r\n\r\n', 95, 'August 5, 2015 11:34:pm '),
(2, 'CCD Sony 1/3 Dome Type Camera    ', 4365, 'products/2.JPG', 'Product Description\r\n\r\n\r\n\r\nCCD Sony 1/3 Dome Type Camera\r\n\r\n\r\n\r\n3.6 mm Lens \r\n\r\n\r\n\r\nSensor Type: 1/3 Sony CC Chipset\r\n\r\n\r\n\r\nSystem of Signal: NTSC\r\n\r\n\r\n\r\nHorizontal Resolution: 420 TV Lines\r\n\r\n\r\n\r\nOperation Temp: -10? C-50?C\r\n\r\n\r\n\r\nIllumination: 1Lux / 00.3Lux\r\n\r\n\r\n\r\n', 95, 'August 5, 2015 11:34:pm '),
(3, 'KD-DW36RD48 IP Outdoor N.V Camera Wired/ Wireless', 5200, 'products/3.JPG', 'Product Description\n\nKD-DW36RD48 IP Outdoor N.V Camera Wired/ Wireless\n\n1/3 Sony Super HAD II CCD, Color: 0.3Lux (480TVL); Color 0.1Lux\n\n(600TVL), 4/6/8mm fixed lens optional, IR\n\nDistance: 30m\n\nDimension: 173mm (L) x102mm (W) x93mm (H); N.W.:1.5kg\n\n', 99, 'August 5, 2015 11:34:pm '),
(4, 'KD-DP73XD22 With zoom camera ZCN-21Z22, 22x10 zoom', 10000, 'products/4.JPG', '  1. 7? IP low speed dome, indoor/outdoor\n\n  2. Manual Pan/tilt:6 /S,9?/S,12?/S,15?/S,Turn\n\n   Angle: Horizontal: 360? endless, Vertical: 90?\n\n  3. 64 preset, 1 tour groups \n\n  4. DC15V, 2A\n\n   KD-DP73XD22\n\n   With zoom camera ZCN-21Z22, 22x10 zoom, color 0.5Lux 580TVL, \n\n   B/W 0.02Lux 650TVL,\n\n', 100, 'August 5, 2015 11:34:pm '),
(5, '220X Day/Night Color CCD ZOOM Camera with 1/4 ?i', 15000, 'products/5.JPG', 'Type: Auto Focus power zoom camera\n\nImage sensor: 1/4 ?SONY COLOR CCD\n\nEffect Pixels: 768(H) x 494(V) /470TV Line\n\nMin. Illumination: 3Lux /1.6\n\nS/N Ration: 46dB (AGC OFF, fsc trap)\n\nLens: 22 X zoom, F/1.6 (W) 3.7(T) f=3.6 (w) 79.2(T)mm\n\nZoom: Optical 22X, Digital 10X\n\n', 100, 'August 5, 2015 11:34:pm '),
(6, 'Bullet Type Covert Camera', 1800, 'products/6.JPG', 'Bullet Type Covert Camera\r\nSensor Type: 1/3 Sony CCD Chipset\r\nSystem of Signal: NTSC\r\nHorizontal Resolution: 420 TV Lines\r\nOperating Temp: -10Â° C-50Â° C\r\nIllumination: 1Lux\r\n', 100, 'September 1, 2015 8:22:pm  '),
(7, 'Weatherproofed Camera with Infra-Red', 2800, 'products/7.JPG', 'Weatherproofed Camera with Infra-Red\r\nSensor Type: 1/3 Sony CCD Chipset\r\nSystem of Signal: NTSC\r\nHorizontal Resolution: 520 TV Lines\r\nOperating Temp: -10Â°C-50Â°C\r\nIllumination: 0.03Lux\r\nPower Supply: DC12V\r\nIR Distance: 50m', 100, 'September 1, 2015 11:40:pm  '),
(8, 'ACTI PTZD91', 2000, 'products/8.JPG', 'Product Type-	Mini Dome,\r\nMaximum Resolution: 1MP,\r\nApplication Environment:	Indoor,\r\nImage Sensor:	Progressive Scan CMOS,\r\nDay / Night: No', 100, 'September 2, 2015 12:33:am  '),
(9, 'VC IRD720P- ANALOG DOME TYPE CAMERA', 6000, 'products/9.JPG', '6MM Lens\r\nCMOS 800TVL chipset\r\n24pcs IR LED\r\nNTSC\r\nDC12V\r\nWithout osd Metal Case\r\nColor White', 50, 'September 2, 2015 12:40:am  '),
(10, 'VC IRW720P- ANALOG BULLET TYPE CAMERA', 5000, 'products/10.JPG', 'IR Waterproof with Bracket\r\nCMOS 800TVL\r\n6MM Lens\r\n24pcs IR LED\r\nNTSC\r\nDC 12V\r\nWithout osd\r\nWhite', 30, 'September 2, 2015 12:42:am  '),
(11, 'VCâ€D42S720-ANALOG BULLET TYPE CAMERA', 5500, 'products/11.JPG', 'NVP2431+OV9712 with OSD Cable\r\nIR LED: ï¿ 5X42PCS IR range: 40M\r\n8â€12mm CS Lens\r\nWater resistance: IP66\r\n3â€Axis cable builtâ€in bracket\r\nSize: 242W) x 84(H) x 86(D)mm\r\nWeight: 1.6KG', 19, 'September 2, 2015 12:52:am  ');

-- --------------------------------------------------------

--
-- Table structure for table `tb_sentmessage`
--

CREATE TABLE IF NOT EXISTS `tb_sentmessage` (
`Primary_key` int(11) NOT NULL,
  `CustomerID` int(11) NOT NULL,
  `Recipient` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `From_admin` varchar(50) NOT NULL,
  `Message` varchar(1000) NOT NULL,
  `Date_created` varchar(50) NOT NULL,
  `Status` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_sentmessage`
--

INSERT INTO `tb_sentmessage` (`Primary_key`, `CustomerID`, `Recipient`, `Email`, `From_admin`, `Message`, `Date_created`, `Status`) VALUES
(1, 1, 'Richmon Sabello', 'sabellorichmon@yahoo.com', 'Richmon Davis B. Sabello', 'thank you', 'September 15, 2015 9:22:pm  ', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE IF NOT EXISTS `tb_user` (
  `userID` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `utype` int(11) NOT NULL,
  `Employee` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`userID`, `username`, `password`, `utype`, `Employee`) VALUES
(1, 'BENJIE_OOS', 'e10adc3949ba59abbe56e057f20f883e', 3, 'Benjie I. Alfanta'),
(2, 'LEO_AS', 'e10adc3949ba59abbe56e057f20f883e', 2, 'Leo Aranzamendez'),
(3, 'JULIUS_ADS', 'e10adc3949ba59abbe56e057f20f883e', 1, 'Julius  Felicen'),
(4, 'DAVIS_SERVER', '11a00f3677902d1dec0aeccacc16d464', 4, 'Richmon Davis B. Sabello');

-- --------------------------------------------------------

--
-- Table structure for table `user_type`
--

CREATE TABLE IF NOT EXISTS `user_type` (
  `typeID` int(11) NOT NULL,
  `user_type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_type`
--

INSERT INTO `user_type` (`typeID`, `user_type`) VALUES
(1, 'ADVERTISING Admin'),
(2, 'ASSET Admin'),
(3, 'ONLINE ORDERING Admin'),
(4, 'SUPER Admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `asset_depreciation`
--
ALTER TABLE `asset_depreciation`
 ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `audit_trail`
--
ALTER TABLE `audit_trail`
 ADD PRIMARY KEY (`KeyID`);

--
-- Indexes for table `backup_dbname`
--
ALTER TABLE `backup_dbname`
 ADD PRIMARY KEY (`Name`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
 ADD PRIMARY KEY (`Num`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
 ADD PRIMARY KEY (`CustomerID`);

--
-- Indexes for table `customer_archive`
--
ALTER TABLE `customer_archive`
 ADD PRIMARY KEY (`CustomerID`);

--
-- Indexes for table `dep_method`
--
ALTER TABLE `dep_method`
 ADD PRIMARY KEY (`methodID`);

--
-- Indexes for table `item_category`
--
ALTER TABLE `item_category`
 ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `loginout_history`
--
ALTER TABLE `loginout_history`
 ADD PRIMARY KEY (`Primary`);

--
-- Indexes for table `loginout_serverhistory`
--
ALTER TABLE `loginout_serverhistory`
 ADD PRIMARY KEY (`Primary`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `notif`
--
ALTER TABLE `notif`
 ADD PRIMARY KEY (`notifID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
 ADD PRIMARY KEY (`OrderID`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
 ADD PRIMARY KEY (`Orderdetailsid`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reply_message`
--
ALTER TABLE `reply_message`
 ADD PRIMARY KEY (`Primary_key`);

--
-- Indexes for table `sent_messages`
--
ALTER TABLE `sent_messages`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tb_announcement`
--
ALTER TABLE `tb_announcement`
 ADD PRIMARY KEY (`announcementID`);

--
-- Indexes for table `tb_equipment`
--
ALTER TABLE `tb_equipment`
 ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `tb_productreport`
--
ALTER TABLE `tb_productreport`
 ADD PRIMARY KEY (`ProductID`);

--
-- Indexes for table `tb_products`
--
ALTER TABLE `tb_products`
 ADD PRIMARY KEY (`productID`);

--
-- Indexes for table `tb_sentmessage`
--
ALTER TABLE `tb_sentmessage`
 ADD PRIMARY KEY (`Primary_key`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
 ADD PRIMARY KEY (`userID`);

--
-- Indexes for table `user_type`
--
ALTER TABLE `user_type`
 ADD PRIMARY KEY (`typeID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `audit_trail`
--
ALTER TABLE `audit_trail`
MODIFY `KeyID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
MODIFY `Num` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
MODIFY `CustomerID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `loginout_history`
--
ALTER TABLE `loginout_history`
MODIFY `Primary` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `loginout_serverhistory`
--
ALTER TABLE `loginout_serverhistory`
MODIFY `Primary` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=74;
--
-- AUTO_INCREMENT for table `reply_message`
--
ALTER TABLE `reply_message`
MODIFY `Primary_key` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `sent_messages`
--
ALTER TABLE `sent_messages`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_productreport`
--
ALTER TABLE `tb_productreport`
MODIFY `ProductID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `tb_products`
--
ALTER TABLE `tb_products`
MODIFY `productID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `tb_sentmessage`
--
ALTER TABLE `tb_sentmessage`
MODIFY `Primary_key` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
