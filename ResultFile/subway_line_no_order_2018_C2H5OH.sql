-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 2018-01-17 12:36:14
-- 服务器版本： 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `group3`
--

-- --------------------------------------------------------

--
-- 表的结构 `subwaylinename`
--

DROP TABLE IF EXISTS `subwaylinename`;
CREATE TABLE IF NOT EXISTS `subwaylinename` (
  `linename` varchar(80) NOT NULL,
  `first` varchar(10) NOT NULL,
  `last` varchar(10) NOT NULL,
  `company` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `subwaylinename`
--

INSERT INTO `subwaylinename` (`linename`, `first`, `last`, `company`) VALUES
('地铁1号线(苹果园-四惠东)', '05:10', '23:30', '北京市地铁运营有限公司'),
('地铁1号线(四惠东-苹果园)', '05:05', '23:30', '北京市地铁运营有限公司'),
('地铁2号线(外环(西直门-西直门))', '05:10', '22:15', '北京市地铁运营有限公司'),
('地铁2号线(内环(积水潭-积水潭))', '05:04', '22:14', '北京市地铁运营有限公司'),
('地铁4号线大兴线(天宫院-安河桥北)', '05:30', '22:38', '北京京港地铁有限公司'),
('地铁4号线大兴线(安河桥北-天宫院)', '05:00', '22:20', '北京京港地铁有限公司'),
('地铁5号线(宋家庄-天通苑北)', '05:20', '23:11', '北京市地铁运营有限公司'),
('地铁5号线(天通苑北-宋家庄)', '05:00', '22:48', '北京市地铁运营有限公司'),
('地铁6号线(海淀五路居-潞城)', '05:23', '22:40', '北京市地铁运营有限公司'),
('地铁6号线(潞城-海淀五路居)', '05:50', '22:49', '北京市地铁运营有限公司'),
('地铁7号线(焦化厂-北京西站)', '05:10', '22:25', '北京市地铁运营有限公司'),
('地铁7号线(北京西站-焦化厂)', '05:30', '23:15', '北京市地铁运营有限公司'),
('地铁8号线(朱辛庄-南锣鼓巷)', '05:10', '22:05', '北京市地铁运营有限公司'),
('地铁8号线(南锣鼓巷-朱辛庄)', '05:30', '23:00', '北京市地铁运营有限公司'),
('地铁9号线(郭公庄-国家图书馆)', '05:20', '22:40', '北京市地铁运营有限公司'),
('地铁9号线(国家图书馆-郭公庄)', '05:59', '23:19', '北京市地铁运营有限公司'),
('地铁10号线(内环(车道沟-车道沟))', '04:47', '22:25', '北京市地铁运营有限公司'),
('地铁10号线(外环(巴沟-巴沟))', '04:49', '22:35', '北京市地铁运营有限公司'),
('地铁13号线(东直门-西直门)', '05:35', '22:42', '北京市地铁运营有限公司'),
('地铁13号线(西直门-东直门)', '05:35', '22:42', '北京市地铁运营有限公司'),
('地铁14号线西段(西局-张郭庄)', '05:45', '22:10', '北京京港地铁有限公司'),
('地铁14号线东段(善各庄-北京南站)', '05:00', '22:30', '北京京港地铁有限公司'),
('地铁14号线西段(张郭庄-西局)', '05:30', '22:10', '北京京港地铁有限公司'),
('地铁14号线东段(北京南站-善各庄)', '05:30', '22:40', '北京京港地铁有限公司'),
('地铁15号线(清华东路西口-俸伯)', '05:42', '23:15', '北京市地铁运营有限公司'),
('地铁15号线(俸伯-清华东路西口)', '05:30', '22:11', '北京市地铁运营有限公司'),
('地铁16号线(西苑-北安河)', '06:00', '22:55', '北京京港地铁有限公司'),
('地铁16号线(北安河-西苑)', '05:25', '22:30', '北京京港地铁有限公司'),
('八通线(四惠-土桥)', '06:00', '23:40', '北京市地铁运营有限公司'),
('八通线(土桥-四惠)', '05:20', '23:00', '北京市地铁运营有限公司'),
('地铁昌平线(昌平西山口-西二旗)', '05:45', '22:50', '北京市地铁运营有限公司'),
('地铁昌平线(西二旗-昌平西山口)', '05:50', '23:35', '北京市地铁运营有限公司'),
('亦庄线(宋家庄-次渠)', '06:00', '23:20', '北京市地铁运营有限公司'),
('亦庄线(次渠-宋家庄)', '05:23', '22:43', '北京市地铁运营有限公司'),
('房山线(郭公庄-阎村东)', '05:58', '23:25', '北京市地铁运营有限公司'),
('房山线(阎村东-郭公庄)', '05:15', '22:23', '北京市地铁运营有限公司'),
('地铁s1线(石厂-金安桥)', '06:00', '20:35', '北京市地铁运营有限公司'),
('地铁s1线(金安桥-石厂)', '06:25', '21:00', '北京市地铁运营有限公司'),
('机场线(东直门-东直门)', '06:00', '22:30', '北京市地铁运营有限公司'),
('地铁燕房线(阎村东-燕山)', '05:05', '22:30', '北京市地铁运营有限公司'),
('地铁燕房线(燕山-阎村东)', '05:30', '22:55', '北京市地铁运营有限公司'),
('西郊线(香山-巴沟)', '06:00', '23:00', '北京公交集团'),
('西郊线(巴沟-香山)', '05:30', '22:30', '北京公交集团');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
