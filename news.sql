-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2016-06-28 10:39:36
-- 服务器版本： 10.1.13-MariaDB
-- PHP Version: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `baiduNews`
--

-- --------------------------------------------------------

--
-- 表的结构 `news`
--

CREATE TABLE `news` (
  `newsId` int(11) NOT NULL,
  `newsTitle` varchar(100) CHARACTER SET utf8 NOT NULL,
  `newsImage` varchar(200) CHARACTER SET utf8 NOT NULL,
  `newsContent` text CHARACTER SET utf8 NOT NULL,
  `date` date NOT NULL,
  `type` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `news`
--

INSERT INTO `news` (`newsId`, `newsTitle`, `newsImage`, `newsContent`, `date`, `type`) VALUES
(1, '中俄联合声明：协作推进信息网络空间发展', 'http://g.hiphotos.baidu.com/news/q%3D100/sign=bd861f740123dd542773a368e108b3df/a5c27d1ed21b0ef46d40fb4ed5c451da81cb3e71.jpg', '中华人民共和国主席和俄罗斯联邦总统关于协作推进信息网络空间发展的联合声明。', '2016-06-23', 1),
(6, '中俄联合声明：协作推进信息网络空间发展', 'http://g.hiphotos.baidu.com/news/q%3D100/sign=bd861f740123dd542773a368e108b3df/a5c27d1ed21b0ef46d40fb4ed5c451da81cb3e71.jpg', '中华人民共和国主席和俄罗斯联邦总统关于协作推进信息网络空间发展的联合声明。', '2016-06-23', 2),
(7, '中俄联合声明：协作推进信息网络空间发展', 'http://g.hiphotos.baidu.com/news/q%3D100/sign=bd861f740123dd542773a368e108b3df/a5c27d1ed21b0ef46d40fb4ed5c451da81cb3e71.jpg', '中华人民共和国主席和俄罗斯联邦总统关于协作推进信息网络空间发展的联合声明。', '2016-06-23', 1),
(8, '中俄联合声明：协作推进信息网络空间发展', 'http://g.hiphotos.baidu.com/news/q%3D100/sign=bd861f740123dd542773a368e108b3df/a5c27d1ed21b0ef46d40fb4ed5c451da81cb3e71.jpg', '中华人民共和国主席和俄罗斯联邦总统关于协作推进信息网络空间发展的联合声明。', '2016-06-23', 2),
(9, '中俄联合声明：协作推进信息网络空间发展', 'http://g.hiphotos.baidu.com/news/q%3D100/sign=bd861f740123dd542773a368e108b3df/a5c27d1ed21b0ef46d40fb4ed5c451da81cb3e71.jpg', '中华人民共和国主席和俄罗斯联邦总统关于协作推进信息网络空间发展的联合声明。', '2016-06-23', 2),
(10, '中俄联合声明：协作推进信息网络空间发展', 'http://g.hiphotos.baidu.com/news/q%3D100/sign=bd861f740123dd542773a368e108b3df/a5c27d1ed21b0ef46d40fb4ed5c451da81cb3e71.jpg', '中华人民共和国主席和俄罗斯联邦总统关于协作推进信息网络空间发展的联合声明。', '2016-06-10', 1),
(11, '中俄联合声明：协作推进信息网络空间发展', 'http://g.hiphotos.baidu.com/news/q%3D100/sign=bd861f740123dd542773a368e108b3df/a5c27d1ed21b0ef46d40fb4ed5c451da81cb3e71.jpg', '中华人民共和国主席和俄罗斯联邦总统关于协作推进信息网络空间发展的联合声明。', '2016-06-10', 2),
(12, '中俄联合声明：协作推进信息网络空间发展', 'http://g.hiphotos.baidu.com/news/q%3D100/sign=bd861f740123dd542773a368e108b3df/a5c27d1ed21b0ef46d40fb4ed5c451da81cb3e71.jpg', '中华人民共和国主席和俄罗斯联邦总统关于协作推进信息网络空间发展的联合声明。', '2016-06-23', 1),
(13, '中俄联合声明：协作推进信息网络空间发展', 'http://g.hiphotos.baidu.com/news/q%3D100/sign=bd861f740123dd542773a368e108b3df/a5c27d1ed21b0ef46d40fb4ed5c451da81cb3e71.jpg', '中华人民共和国主席和俄罗斯联邦总统关于协作推进信息网络空间发展的联合声明。', '2016-06-23', 1),
(14, '中俄联合声明：协作推进信息网络空间发展', 'http://g.hiphotos.baidu.com/news/q%3D100/sign=bd861f740123dd542773a368e108b3df/a5c27d1ed21b0ef46d40fb4ed5c451da81cb3e71.jpg', '中华人民共和国主席和俄罗斯联邦总统关于协作推进信息网络空间发展的联合声明。', '2016-06-23', 2),
(15, '中俄联合声明：协作推进信息网络空间发展', 'http://g.hiphotos.baidu.com/news/q%3D100/sign=bd861f740123dd542773a368e108b3df/a5c27d1ed21b0ef46d40fb4ed5c451da81cb3e71.jpg', '中华人民共和国主席和俄罗斯联邦总统关于协作推进信息网络空间发展的联合声明。', '2016-06-23', 1),
(16, '中俄联合声明：协作推进信息网络空间发展', 'http://g.hiphotos.baidu.com/news/q%3D100/sign=bd861f740123dd542773a368e108b3df/a5c27d1ed21b0ef46d40fb4ed5c451da81cb3e71.jpg', '中华人民共和国主席和俄罗斯联邦总统关于协作推进信息网络空间发展的联合声明。', '2016-06-23', 2),
(17, '中俄联合声明：协作推进信息网络空间发展', 'http://g.hiphotos.baidu.com/news/q%3D100/sign=bd861f740123dd542773a368e108b3df/a5c27d1ed21b0ef46d40fb4ed5c451da81cb3e71.jpg', '中华人民共和国主席和俄罗斯联邦总统关于协作推进信息网络空间发展的联合声明。', '2016-06-23', 3),
(18, '中俄联合声明：协作推进信息网络空间发展', 'http://g.hiphotos.baidu.com/news/q%3D100/sign=bd861f740123dd542773a368e108b3df/a5c27d1ed21b0ef46d40fb4ed5c451da81cb3e71.jpg', '中华人民共和国主席和俄罗斯联邦总统关于协作推进信息网络空间发展的联合声明。', '2016-06-23', 3),
(19, '中俄联合声明：协作推进信息网络空间发展', 'http://g.hiphotos.baidu.com/news/q%3D100/sign=bd861f740123dd542773a368e108b3df/a5c27d1ed21b0ef46d40fb4ed5c451da81cb3e71.jpg', '中华人民共和国主席和俄罗斯联邦总统关于协作推进信息网络空间发展的联合声明。', '2016-06-23', 1),
(20, '中俄联合声明：协作推进信息网络空间发展', 'http://g.hiphotos.baidu.com/news/q%3D100/sign=bd861f740123dd542773a368e108b3df/a5c27d1ed21b0ef46d40fb4ed5c451da81cb3e71.jpg', '中华人民共和国主席和俄罗斯联邦总统关于协作推进信息网络空间发展的联合声明。', '2016-06-23', 1),
(21, '中俄联合声明：协作推进信息网络空间发展', 'http://g.hiphotos.baidu.com/news/q%3D100/sign=bd861f740123dd542773a368e108b3df/a5c27d1ed21b0ef46d40fb4ed5c451da81cb3e71.jpg', '中华人民共和国主席和俄罗斯联邦总统关于协作推进信息网络空间发展的联合声明。', '2016-06-23', 3),
(22, '中俄联合声明：协作推进信息网络空间发展', 'http://g.hiphotos.baidu.com/news/q%3D100/sign=bd861f740123dd542773a368e108b3df/a5c27d1ed21b0ef46d40fb4ed5c451da81cb3e71.jpg', '中华人民共和国主席和俄罗斯联邦总统关于协作推进信息网络空间发展的联合声明。', '2016-06-23', 3),
(23, '中俄联合声明：协作推进信息网络空间发展', 'http://g.hiphotos.baidu.com/news/q%3D100/sign=bd861f740123dd542773a368e108b3df/a5c27d1ed21b0ef46d40fb4ed5c451da81cb3e71.jpg', '中华人民共和国主席和俄罗斯联邦总统关于协作推进信息网络空间发展的联合声明。', '2016-06-23', 2),
(24, '中俄联合声明：协作推进信息网络空间发展', 'http://g.hiphotos.baidu.com/news/q%3D100/sign=bd861f740123dd542773a368e108b3df/a5c27d1ed21b0ef46d40fb4ed5c451da81cb3e71.jpg', '中华人民共和国主席和俄罗斯联邦总统关于协作推进信息网络空间发展的联合声明。', '2016-06-23', 2),
(25, '中俄联合声明：协作推进信息网络空间发展', 'http://g.hiphotos.baidu.com/news/q%3D100/sign=bd861f740123dd542773a368e108b3df/a5c27d1ed21b0ef46d40fb4ed5c451da81cb3e71.jpg', '中华人民共和国主席和俄罗斯联邦总统关于协作推进信息网络空间发展的联合声明。', '2016-06-23', 4),
(26, '中俄联合声明：协作推进信息网络空间发展', 'http://g.hiphotos.baidu.com/news/q%3D100/sign=bd861f740123dd542773a368e108b3df/a5c27d1ed21b0ef46d40fb4ed5c451da81cb3e71.jpg', '中华人民共和国主席和俄罗斯联邦总统关于协作推进信息网络空间发展的联合声明。', '2016-06-23', 4),
(27, '中俄联合声明：协作推进信息网络空间发展', 'http://g.hiphotos.baidu.com/news/q%3D100/sign=bd861f740123dd542773a368e108b3df/a5c27d1ed21b0ef46d40fb4ed5c451da81cb3e71.jpg', '中华人民共和国主席和俄罗斯联邦总统关于协作推进信息网络空间发展的联合声明。', '2016-06-23', 4),
(28, '中俄联合声明：协作推进信息网络空间发展', 'http://g.hiphotos.baidu.com/news/q%3D100/sign=bd861f740123dd542773a368e108b3df/a5c27d1ed21b0ef46d40fb4ed5c451da81cb3e71.jpg', '中华人民共和国主席和俄罗斯联邦总统关于协作推进信息网络空间发展的联合声明。', '2016-06-23', 4),
(29, '中俄联合声明：协作推进信息网络空间发展', 'http://g.hiphotos.baidu.com/news/q%3D100/sign=bd861f740123dd542773a368e108b3df/a5c27d1ed21b0ef46d40fb4ed5c451da81cb3e71.jpg', '中华人民共和国主席和俄罗斯联邦总统关于协作推进信息网络空间发展的联合声明。', '2016-06-23', 4),
(30, '中俄联合声明：协作推进信息网络空间发展', 'http://g.hiphotos.baidu.com/news/q%3D100/sign=bd861f740123dd542773a368e108b3df/a5c27d1ed21b0ef46d40fb4ed5c451da81cb3e71.jpg', '中华人民共和国主席和俄罗斯联邦总统关于协作推进信息网络空间发展的联合声明。', '2016-06-23', 5),
(31, '中俄联合声明：协作推进信息网络空间发展', 'http://g.hiphotos.baidu.com/news/q%3D100/sign=bd861f740123dd542773a368e108b3df/a5c27d1ed21b0ef46d40fb4ed5c451da81cb3e71.jpg', '中华人民共和国主席和俄罗斯联邦总统关于协作推进信息网络空间发展的联合声明。', '2016-06-23', 5),
(32, '中俄联合声明：协作推进信息网络空间发展', 'http://g.hiphotos.baidu.com/news/q%3D100/sign=bd861f740123dd542773a368e108b3df/a5c27d1ed21b0ef46d40fb4ed5c451da81cb3e71.jpg', '中华人民共和国主席和俄罗斯联邦总统关于协作推进信息网络空间发展的联合声明。', '2016-06-23', 5),
(33, '中俄联合声明：协作推进信息网络空间发展', 'http://g.hiphotos.baidu.com/news/q%3D100/sign=bd861f740123dd542773a368e108b3df/a5c27d1ed21b0ef46d40fb4ed5c451da81cb3e71.jpg', '中华人民共和国主席和俄罗斯联邦总统关于协作推进信息网络空间发展的联合声明。', '2016-06-23', 5),
(34, '中俄联合声明：协作推进信息网络空间发展', 'http://g.hiphotos.baidu.com/news/q%3D100/sign=bd861f740123dd542773a368e108b3df/a5c27d1ed21b0ef46d40fb4ed5c451da81cb3e71.jpg', '中华人民共和国主席和俄罗斯联邦总统关于协作推进信息网络空间发展的联合声明。', '2016-06-23', 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`newsId`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `news`
--
ALTER TABLE `news`
  MODIFY `newsId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
