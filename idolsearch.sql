-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 
-- サーバのバージョン： 10.3.16-MariaDB
-- PHP のバージョン: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `idolsearch`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `appearance`
--

CREATE TABLE `appearance` (
  `appearance_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `idol_id` int(11) NOT NULL,
  `time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `appearance`
--

INSERT INTO `appearance` (`appearance_id`, `event_id`, `idol_id`, `time`) VALUES
(1, 1, 1, '19:00:00'),
(2, 1, 2, '19:00:00'),
(3, 2, 1, NULL),
(7, 2, 3, NULL),
(8, 2, 2, NULL);

-- --------------------------------------------------------

--
-- テーブルの構造 `event`
--

CREATE TABLE `event` (
  `event_id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `name_kana` varchar(256) NOT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `event`
--

INSERT INTO `event` (`event_id`, `name`, `name_kana`, `date`) VALUES
(1, 'イベント１', 'イベント１', '2019-06-15'),
(2, 'イベント２', 'イベント２', '2019-06-16');

-- --------------------------------------------------------

--
-- テーブルの構造 `idol`
--

CREATE TABLE `idol` (
  `idol_id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `name_kana` varchar(256) NOT NULL,
  `company` varchar(256) DEFAULT NULL,
  `debut` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `idol`
--

INSERT INTO `idol` (`idol_id`, `name`, `name_kana`, `company`, `debut`) VALUES
(1, 'AKB48', 'エーケービー４８', 'AKS', '2005-12-08'),
(2, 'SKE48', 'エスケーイー４８', 'SKE', NULL),
(3, 'モーニング娘。', 'モーニングムスメ。', 'アップフロントプロモーション', NULL);

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `appearance`
--
ALTER TABLE `appearance`
  ADD PRIMARY KEY (`appearance_id`);

--
-- テーブルのインデックス `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`event_id`);

--
-- テーブルのインデックス `idol`
--
ALTER TABLE `idol`
  ADD PRIMARY KEY (`idol_id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- ダンプしたテーブルのAUTO_INCREMENT
--

--
-- テーブルのAUTO_INCREMENT `appearance`
--
ALTER TABLE `appearance`
  MODIFY `appearance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- テーブルのAUTO_INCREMENT `event`
--
ALTER TABLE `event`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- テーブルのAUTO_INCREMENT `idol`
--
ALTER TABLE `idol`
  MODIFY `idol_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
