-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 15-Jan-2015 às 16:10
-- Versão do servidor: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bdsas`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `pastorais`
--

CREATE TABLE IF NOT EXISTS `pastorais` (
`codPastoral` int(10) unsigned NOT NULL,
  `codProprietario` int(10) unsigned DEFAULT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `datacreate` datetime DEFAULT CURRENT_TIMESTAMP,
  `userCreate` varchar(30) DEFAULT 'MASTER',
  `dataAlter` datetime DEFAULT CURRENT_TIMESTAMP,
  `userAlter` varchar(30) DEFAULT 'MASTER'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Extraindo dados da tabela `pastorais`
--

INSERT INTO `pastorais` (`codPastoral`, `codProprietario`, `nome`, `datacreate`, `userCreate`, `dataAlter`, `userAlter`) VALUES
(1, 1, 'PASTORAL DA CATEQUESE', '2015-01-14 00:00:00', 'MASTER', '2015-01-14 00:00:00', 'MASTES'),
(2, 1, 'PASTORAL DA SAÚDE', '2015-01-14 00:00:00', 'MASTER', '2015-01-14 00:00:00', 'MASTER'),
(3, 1, 'PASTORAL DA LITURGIA', '2015-01-14 00:00:00', 'MASTER', '2015-01-14 00:00:00', 'MASTES'),
(4, 1, 'PASTORAL DA FAMILIA', '2015-01-14 00:00:00', 'MASTER', '2015-01-14 00:00:00', 'MASTER'),
(5, 1, 'PASTORAL DA DIZIMO', '2015-01-14 00:00:00', 'MASTER', '2015-01-14 00:00:00', 'MASTER'),
(6, 1, 'PASTORAL DA CAPELINHA', '2015-01-15 13:10:36', 'MASTER', '2015-01-15 13:10:36', 'MASTER'),
(7, 1, 'PASTORAL DA CAPELINHA', '2015-01-15 13:10:38', 'MASTER', '2015-01-15 13:10:38', 'MASTER');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pastorais`
--
ALTER TABLE `pastorais`
 ADD PRIMARY KEY (`codPastoral`), ADD KEY `codProprietario` (`codProprietario`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pastorais`
--
ALTER TABLE `pastorais`
MODIFY `codPastoral` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
