-- phpMyAdmin SQL Dump
-- version 4.7.8
-- https://www.phpmyadmin.net/
--
-- 主機: 127.0.0.1
-- 產生時間： 2018 年 03 月 14 日 11:36
-- 伺服器版本: 10.1.30-MariaDB
-- PHP 版本： 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `eshop`
--

-- --------------------------------------------------------

--
-- 資料表結構 `brands`
--

CREATE TABLE `brands` (
  `Id` int(11) NOT NULL,
  `Name` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 資料表的匯出資料 `brands`
--

INSERT INTO `brands` (`Id`, `Name`) VALUES
(1, 'LG'),
(2, 'Apple'),
(3, 'GUcci'),
(5, 'Nike'),
(6, 'Dolce and Gabbana'),
(7, 'GUcci'),
(9, 'mamen'),
(10, 'My isht'),
(11, 'Nike'),
(12, 'Nike Sports'),
(13, 'My isht'),
(14, 'Pantiesu'),
(15, 'ii'),
(16, 'sd');

-- --------------------------------------------------------

--
-- 資料表結構 `categories`
--

CREATE TABLE `categories` (
  `Id` int(11) NOT NULL,
  `Name` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 資料表的匯出資料 `categories`
--

INSERT INTO `categories` (`Id`, `Name`) VALUES
(1, 'Phone'),
(2, 'Monitor'),
(3, 'Computer'),
(4, 'Fan'),
(5, 'Display Card'),
(6, 'Smart Watch'),
(7, 'Game');

-- --------------------------------------------------------

--
-- 資料表結構 `customer_orders`
--

CREATE TABLE `customer_orders` (
  `Id` int(11) NOT NULL,
  `CartId` text NOT NULL,
  `ItemId` int(11) NOT NULL,
  `Name` text NOT NULL,
  `Image` text NOT NULL,
  `Price` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Total` int(11) NOT NULL,
  `DatePlaced` date NOT NULL,
  `CustomerId` int(11) NOT NULL,
  `Destination` text,
  `Fullname` varchar(200) NOT NULL,
  `Address1` varchar(200) NOT NULL,
  `Address2` varchar(100) NOT NULL,
  `Address3` varchar(100) NOT NULL,
  `Address4` varchar(100) NOT NULL,
  `Phonenumber` varchar(200) NOT NULL,
  `Status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 資料表的匯出資料 `customer_orders`
--

INSERT INTO `customer_orders` (`Id`, `CartId`, `ItemId`, `Name`, `Image`, `Price`, `Quantity`, `Total`, `DatePlaced`, `CustomerId`, `Destination`, `Fullname`, `Address1`, `Address2`, `Address3`, `Address4`, `Phonenumber`, `Status`) VALUES
(50, '20180228165538', 19, 'iPhone X 256GB', 'assets/uploads/769518.jpg', 9888, 1, 9888, '2018-02-28', 38, '1', '', '', '', '', '', '', 1),
(49, '20180228165138', 19, 'iPhone X 256GB', 'assets/uploads/769518.jpg', 9888, 1, 9888, '2018-02-28', 38, '1', '', '', '', '', '', '', 1),
(48, '20180228165038', 19, 'iPhone X 256GB', 'assets/uploads/769518.jpg', 9888, 1, 9888, '2018-02-28', 38, '1', '', 'Hong Kong', '', '', '', '', 1),
(45, '20180228160838', 19, 'iPhone X 256GB', 'assets/uploads/769518.jpg', 9888, 1, 9888, '2018-02-28', 38, '1', '', '', '', '', '', '', 1),
(46, '20180228160938', 19, 'iPhone X 256GB', 'assets/uploads/769518.jpg', 9888, 1, 9888, '2018-02-28', 38, '1', '', '', '', '', '', '', 1),
(47, '20180228160938', 20, 'LG 34UC97', 'assets/uploads/156575.jpg', 7990, 1, 7990, '2018-02-28', 38, '1', '', '', '', '', '', '', 1),
(51, '20180228180638', 19, 'iPhone X 256GB', 'assets/uploads/769518.jpg', 9888, 1, 9888, '2018-02-28', 38, '2', '', 'ds', 'we', 'q', 'e', '', 1),
(52, '20180228180738', 19, 'iPhone X 256GB', 'assets/uploads/769518.jpg', 9888, 1, 9888, '2018-02-28', 38, '2', '', 'abc', 'abc', 'abc', 'abc', '', 1),
(53, '20180228184938', 19, 'iPhone X 256GB', 'assets/uploads/769518.jpg', 9888, 1, 9888, '2018-02-28', 38, NULL, '', 'w', 'eee', 'r', 't', '', 1),
(54, '20180228185038', 19, 'iPhone X 256GB', 'assets/uploads/769518.jpg', 9888, 1, 9888, '2018-02-28', 38, NULL, '', '3', '4', '5', '6', '', 1),
(55, '20180228185537', 19, 'iPhone X 256GB', 'assets/uploads/769518.jpg', 9888, 3, 29664, '2018-02-28', 37, NULL, '', 'test', 'test', 'test', 'test', '', 1),
(56, '20180305104339', 19, 'iPhone X 256GB', 'assets/uploads/769518.jpg', 9888, 1, 9888, '2018-03-05', 39, NULL, '', 'abc', 'abc', 'abc', 'abc', '', 1),
(57, '20180306121039', 20, 'LG 34UC97', 'assets/uploads/156575.jpg', 7990, 4, 31960, '2018-03-06', 39, NULL, 'AABC', 'aa', 'bb', 'cc', 'dd', '+85212345678', 1),
(58, '20180306121039', 20, 'LG 34UC97', 'assets/uploads/156575.jpg', 7990, 2, 15980, '2018-03-06', 39, NULL, '123', '1122', '1133', '22331', '12323', '+85212345656', 1),
(59, '20180307063239', 19, 'iPhone X 256GB', 'assets/uploads/769518.jpg', 9888, 4, 39552, '2018-03-07', 39, NULL, 'T', 'AA', 'BB', 'CC', 'DD', '+85212345678', 1),
(60, '20180307081538', 19, 'iPhone X 256GB', 'assets/uploads/769518.jpg', 9888, 1, 9888, '2018-03-07', 38, NULL, 'A', 'a', 'a', 'a', 'a', '+85221133445', 1),
(61, '20180314063933', 19, 'iPhone X 256GB', 'assets/uploads/769518.jpg', 9888, 1, 9888, '2018-03-14', 33, NULL, 'Customer', '123', 'Ha ha St', 'HK', 'HK', '+85212312344', 1);

-- --------------------------------------------------------

--
-- 資料表結構 `deliverycarts`
--

CREATE TABLE `deliverycarts` (
  `Id` int(11) NOT NULL,
  `CartId` text NOT NULL,
  `DeliveryCost` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 資料表的匯出資料 `deliverycarts`
--

INSERT INTO `deliverycarts` (`Id`, `CartId`, `DeliveryCost`) VALUES
(1, '2017070517191', 400),
(2, '2017070517201', 200),
(3, '2017070517221', 200),
(4, '2017070517281', 150),
(5, '2017070517311', 200),
(6, '2017070517311', 200),
(7, '20180213171032', 400),
(8, '20180213171032', 400),
(9, '20180213212831', 400),
(10, '20180213212931', 400),
(11, '20180221171331', 400),
(12, '20180221173531', 400),
(13, '20180227150237', 200),
(14, '20180227150437', 200),
(15, '20180227150537', 200),
(16, '20180227151337', 200),
(17, '20180227154738', 200),
(18, '20180227154738', 200),
(19, '20180227155238', 200),
(20, '20180227155538', 200),
(21, '20180227155538', 200),
(22, '20180227161238', 200),
(23, '20180227161738', 200),
(24, '20180227161938', 200),
(25, '20180227162138', 200),
(26, '20180227202938', 150),
(27, '20180228133838', 200),
(28, '20180228133838', 200),
(29, '20180228135938', 200),
(30, '20180228142938', 200),
(31, '20180228143538', 200),
(32, '20180228143538', 200),
(33, '20180228143738', 250),
(34, '20180228143738', 250),
(35, '20180228143838', 200),
(36, '20180228143838', 200),
(37, '20180228155438', 200),
(38, '20180228155638', 150),
(39, '20180228155838', 200),
(40, '20180228160138', 200),
(41, '20180228160538', 200),
(42, '20180228160838', 200),
(43, '20180228160938', 200),
(44, '20180228160938', 200),
(45, '20180228165038', 200),
(46, '20180228165138', 200),
(47, '20180228165538', 200),
(48, '20180228180638', 150),
(49, '20180228180738', 150);

-- --------------------------------------------------------

--
-- 資料表結構 `deliverypoints`
--

CREATE TABLE `deliverypoints` (
  `Id` int(11) NOT NULL,
  `Name` text NOT NULL,
  `Amount` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 資料表的匯出資料 `deliverypoints`
--

INSERT INTO `deliverypoints` (`Id`, `Name`, `Amount`) VALUES
(1, 'Hong Kong Island', 200),
(2, 'Kowloon', 150),
(3, 'New Territories', 250);

-- --------------------------------------------------------

--
-- 資料表結構 `ordersup`
--

CREATE TABLE `ordersup` (
  `id` int(11) NOT NULL,
  `company_name` varchar(20) NOT NULL,
  `contact_person` varchar(30) NOT NULL,
  `contact_number` varchar(15) NOT NULL,
  `address` varchar(100) NOT NULL,
  `product_id` int(5) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `quantity` int(5) NOT NULL,
  `orderdatetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 資料表的匯出資料 `ordersup`
--

INSERT INTO `ordersup` (`id`, `company_name`, `contact_person`, `contact_number`, `address`, `product_id`, `product_name`, `quantity`, `orderdatetime`) VALUES
(1, 'eshopABC', 'Theresa Emmie', '57864393', 'Murray Road Multi-storey Carpark Building, 2 Murray Road, ADMIRALTY, HONG KONG', 19, 'iPhone X 256G', 2, '2018-03-07 09:18:24'),
(2, 'eshopABC', 'August Larkin', '96763110', '3/F, Elegance Court, 212 Castle Peak Road , CHEUNG SHA WAN, KOWLOON', 20, 'LG 34UC97', 1, '2018-03-07 09:38:57'),
(3, 'eshopABC', 'Ron Leigh', '90430779', '53, Tung O, CROOKED ISLAND, NEW TERRITORIES', 20, 'LG 34UC97', 1, '2018-03-07 09:40:04'),
(4, 'eshopABC', 'Wayne Fred', '58469526', '16/F, The Hong Kong And China Gas Company Limited, 363 Java Road, QUARRY BAY, HONG KONG', 19, 'iPhone X 256G', 2, '2018-03-07 09:40:06'),
(5, 'eshopABC', 'Linda Joule', '96594344', 'Flat 1, 6/F, Sun Fung House, 2 Argyle Street, MONG KOK, KOWLOON', 19, 'iPhone X 256G', 2, '2018-03-07 09:40:09'),
(6, 'eshopABC', 'Winfred Sam', '99443702', 'Flat A, 8/F, Gallant House, 100 Argyle Street, HO MAN TIN, KOWLOON', 19, 'iPhone X 256G', 3, '2018-03-07 09:40:48'),
(7, 'eshopABC', 'Todd Mansfield', '98403226', 'Flat 1306, 13/F, South China Industrial Building, 1 Chun Pin Street, KWAI CHUNG, NEW TERRITORIES', 20, 'LG 34UC97', 1, '2018-03-07 09:42:37'),
(8, 'eshopABC', 'Andy Carrie', '61958442', 'Room G1, 1/F, Block G, Deepdene, 55 Island Road, DEEP WATER BAY, HONG KONG', 20, 'LG 34UC97', 1, '2018-03-07 09:44:03'),
(9, 'eshopABC', 'Mandel Browning', '53766300', 'Room 1716, 17/F, Ying Fu House, Choi Ying Estate, NGAU TAU KOK, KOWLOON', 19, 'iPhone X 256G', 3, '2018-03-07 07:47:45'),
(10, 'eshopABC', 'Vivian Smollett', '65937443', '2/F, Nam Wah Factory Building, 40 Bedford Road, TAI KOK TSUI, KOWLOON', 19, 'iPhone X 256G', 3, '2018-03-07 07:49:38');

-- --------------------------------------------------------

--
-- 資料表結構 `profilemaster`
--

CREATE TABLE `profilemaster` (
  `Id` int(11) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `PhoneNumber` varchar(200) NOT NULL,
  `IdNumber` int(11) NOT NULL,
  `Password` varchar(200) NOT NULL,
  `Role` varchar(200) NOT NULL,
  `Status` varchar(200) NOT NULL,
  `tokenCode` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 資料表的匯出資料 `profilemaster`
--

INSERT INTO `profilemaster` (`Id`, `Name`, `Email`, `PhoneNumber`, `IdNumber`, `Password`, `Role`, `Status`, `tokenCode`) VALUES
(1, 'Abucheri Derrick', 'derrickwitness@gmail.com', '(254) 070-196463', 0, '$2y$10$rsSX6LnhI1tojLPEvyyVI.9hWErWxUXwkqyfrL/DMNTSJQyT2mtve', '1', 'Y', 'cc99fcd05b753beda3d123d255ac59d4'),
(25, 'Sarah Cheminingwa', 'cheminingwa@gmail.com', '(254) 711-755788', 0, '$2y$10$rsSX6LnhI1tojLPEvyyVI.9hWErWxUXwkqyfrL/DMNTSJQyT2mtve', '2', 'Y', 'c29f1997098ad28d20c5021375175660'),
(26, 'William Odianga', 'william@gmail.com', '(254) 711-755788', 0, '$2y$10$rsSX6LnhI1tojLPEvyyVI.9hWErWxUXwkqyfrL/DMNTSJQyT2mtve', '3', 'Y', 'f5b156fa63b20bc1f689dd5db109f370'),
(29, 'Attache Profile', 'Attache@gmail.com', '(254) 711-755788', 0, '$2y$10$rsSX6LnhI1tojLPEvyyVI.9hWErWxUXwkqyfrL/DMNTSJQyT2mtve', '5', 'Y', 'f5b156fa63b20bc1f689dd5db109f370'),
(30, 'poon wai lok', 'bean23242556@gmail.com', '+254769334767', 123456, '$2y$10$Dl3zmAjorosk0.ePDPpBiupudPbhiTJC5pIlgMkS7GQJts8K5J8nC', '2', 'Y', '99e592199f33f9190f4dd199931af41a'),
(31, 'ABC', 'ABC@gmail.com', '+852712345611', 0, '$2y$10$5k1zbCRRcrpvJf2KWRXGj.AmU8txgVxQXgor/0SNabBF.kPrm92bK', '2', 'Y', '490f11a6354f2e112ba30b315ba01a70'),
(32, 'ABCABC', 'oln95369@miauj.com', '+852712345611', 0, '$2y$10$4pPqtTbj3Qhtk0DeYIJQkOP.IcZqxN6pW1dKOPBOwNYicP2yd5FqS', '2', 'Y', 'c7e25f8bf7c7d050dc2a0363fe30f24b'),
(33, 'Raymond', 'raymond@gmail.com', '+85261696837', 61696837, '$2y$10$U9ejlRJHv0BzNOwyOglQteQV8TOlwiHgGNYLfsBZawV4r94hWI7PO', '2', 'Y', 'c79d59e35319251628c5c4e7be890333'),
(34, 'Hi', 'mrz77282@ckoie.com', '+85212345678', 0, '$2y$10$.YvkqGwpKSSs1CKyaHRz2uRH8DtIqfpcD7wYC1HEhf82.jK2rHA6a', '2', 'Y', 'e4f9a6116fee2ac83ca4d23fc1e8a8bb'),
(35, 'Hi2', 'dew61093@loapq.com', '+85212345678', 0, '$2y$10$8oDeFZiIj1wOJk5YGiDUs.vy64FK3q2mxyXKDdE4Qr2JBRRgAMYyW', '2', 'Y', '2caaf260a2328b37f8380909fd70fc37'),
(36, 'Hi3', 'djb011055@ckoie.com', '+85212345678', 0, '$2y$10$oWPda5v90ky6OrWvV33XsOcv/h3CmPzvzb9VIqPvxg6J8VjtO5LQ6', '2', 'Y', 'c0fb9ddf014fd1220b4dd4f831d1d058'),
(37, 'Hi3', 'car99578@loapq.com', '+85212345678', 0, '$2y$10$C96lSq4dV6uLJIdSKKAS8e0GhcsR4GQeoix8LNdeKh5EaE94TlXrG', '2', 'Y', '28d63db41eeb840eb3a1cbc7fb43435d'),
(38, 'Andy', 'andy@andy.com', '85212345678', 0, '$2y$10$JT1iC8visPCFKJX641jlpOrFLvW4HM9FR89wQ7AMlL/J.6O.PY.wq', '2', 'Y', '1eb6f2aedfed83b8a3f213a7f95bfbc8'),
(39, 'testing2', 'aabbcc@gmail.com', '+85212345678', 0, '$2y$10$MBYxI20.jX6VP.tjATK8xeORLyQLAOwp0Z7QDAdOwHaix6kK9/jyu', '2', 'Y', '851589abdd19af2f9e6bed54897ffa90'),
(40, 'aaabbbccc', 'aaabbbccc@gmail.com', '+85212345678', 0, '$2y$10$WHQVy1/ccV8QSEtbX5.AN.DAW4nV5QDqMhEkyr6Oqx9Ot0vFefX8i', '2', 'Y', '73a93c1dde5a44d52b8bf0699d4ec28b'),
(41, 'OnlineRetailer', 'wf@wf.com', '+85212345678', 0, '$2y$10$3r8NYQm7YdnqLZkKcjz6reohzAMF6Yg0RskyMy8UVEzHS3glM.IBy', '2', 'Y', 'b2fc427c761507961bfc5acbc3992e6d');

-- --------------------------------------------------------

--
-- 資料表結構 `shop_items`
--

CREATE TABLE `shop_items` (
  `Id` int(11) NOT NULL,
  `Category` int(11) NOT NULL,
  `Brand` int(11) NOT NULL,
  `Name` text NOT NULL,
  `Image` text NOT NULL,
  `Colour` text NOT NULL,
  `Description` text NOT NULL,
  `Price` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `SetAsNew` int(11) NOT NULL,
  `FeaturedItem` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 資料表的匯出資料 `shop_items`
--

INSERT INTO `shop_items` (`Id`, `Category`, `Brand`, `Name`, `Image`, `Colour`, `Description`, `Price`, `Quantity`, `SetAsNew`, `FeaturedItem`) VALUES
(20, 2, 1, 'LG 34UC97', '156575.jpg', 'Black', 'Curved IPS panel powers ultra-wide LG monitor', 7990, 7, 2, 2),
(19, 1, 2, 'iPhone X 256GB', '769518.jpg', 'White', 'This is a iphone X', 9888, 7, 1, 1);

-- --------------------------------------------------------

--
-- 資料表結構 `user_add`
--

CREATE TABLE `user_add` (
  `id` int(11) NOT NULL,
  `address` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 已匯出資料表的索引
--

--
-- 資料表索引 `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`Id`);

--
-- 資料表索引 `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`Id`);

--
-- 資料表索引 `customer_orders`
--
ALTER TABLE `customer_orders`
  ADD PRIMARY KEY (`Id`);

--
-- 資料表索引 `deliverycarts`
--
ALTER TABLE `deliverycarts`
  ADD PRIMARY KEY (`Id`);

--
-- 資料表索引 `deliverypoints`
--
ALTER TABLE `deliverypoints`
  ADD PRIMARY KEY (`Id`);

--
-- 資料表索引 `ordersup`
--
ALTER TABLE `ordersup`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `profilemaster`
--
ALTER TABLE `profilemaster`
  ADD PRIMARY KEY (`Id`);

--
-- 資料表索引 `shop_items`
--
ALTER TABLE `shop_items`
  ADD PRIMARY KEY (`Id`);

--
-- 資料表索引 `user_add`
--
ALTER TABLE `user_add`
  ADD PRIMARY KEY (`id`);

--
-- 在匯出的資料表使用 AUTO_INCREMENT
--

--
-- 使用資料表 AUTO_INCREMENT `brands`
--
ALTER TABLE `brands`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- 使用資料表 AUTO_INCREMENT `categories`
--
ALTER TABLE `categories`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- 使用資料表 AUTO_INCREMENT `customer_orders`
--
ALTER TABLE `customer_orders`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- 使用資料表 AUTO_INCREMENT `deliverycarts`
--
ALTER TABLE `deliverycarts`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- 使用資料表 AUTO_INCREMENT `deliverypoints`
--
ALTER TABLE `deliverypoints`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用資料表 AUTO_INCREMENT `ordersup`
--
ALTER TABLE `ordersup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- 使用資料表 AUTO_INCREMENT `profilemaster`
--
ALTER TABLE `profilemaster`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- 使用資料表 AUTO_INCREMENT `shop_items`
--
ALTER TABLE `shop_items`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- 使用資料表 AUTO_INCREMENT `user_add`
--
ALTER TABLE `user_add`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
