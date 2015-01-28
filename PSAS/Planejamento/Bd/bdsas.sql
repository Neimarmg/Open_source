-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 28-Jan-2015 às 15:33
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
-- Estrutura da tabela `cidades`
--

CREATE TABLE IF NOT EXISTS `cidades` (
`codCidade` int(10) unsigned NOT NULL,
  `codUf` int(10) unsigned DEFAULT NULL,
  `nome` varchar(200) DEFAULT NULL,
  `datacreate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `userCreate` varchar(30) DEFAULT 'MASTER',
  `dataAlter` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `userAlter` varchar(30) DEFAULT 'MASTER'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=38 ;

--
-- Extraindo dados da tabela `cidades`
--

INSERT INTO `cidades` (`codCidade`, `codUf`, `nome`, `datacreate`, `userCreate`, `dataAlter`, `userAlter`) VALUES
(1, 20, 'PORTO ALEGRE', '2015-01-11 00:00:00', 'MASTER', '2015-01-11 00:00:00', 'MASTER'),
(2, 20, 'CANOAS', '2015-01-11 00:00:00', 'MASTES', '2015-01-11 00:00:00', 'MASTER'),
(11, 20, 'BARRA DO RIBEIRO ', '2015-01-28 13:57:14', 'MASTER', '2015-01-28 13:57:14', 'MASTER'),
(12, 20, 'VIAMÃO', '2015-01-28 13:57:28', 'MASTER', '2015-01-28 13:57:28', 'MASTER'),
(13, 20, 'ALVORADA', '2015-01-28 13:57:41', 'MASTER', '2015-01-28 13:57:41', 'MASTER'),
(14, 20, 'ESTEIO', '2015-01-28 13:58:23', 'MASTER', '2015-01-28 13:58:23', 'MASTER'),
(15, 20, 'SAPUCÁIA', '2015-01-28 13:58:32', 'MASTER', '2015-01-28 13:58:32', 'MASTER'),
(16, 23, 'FLORIANOPOLIS', '2015-01-28 13:59:36', 'MASTER', '2015-01-28 13:59:36', 'MASTER'),
(17, 24, 'CAMPINAS', '2015-01-28 14:01:50', 'MASTER', '2015-01-28 14:01:50', 'MASTER'),
(18, 24, 'CAMPINAS', '2015-01-28 14:03:24', 'MASTER', '2015-01-28 14:03:24', 'MASTER'),
(37, 20, 'ENCANTADO', '2015-01-28 14:32:41', 'MASTER', '2015-01-28 14:32:41', 'MASTER');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cidades`
--
ALTER TABLE `cidades`
 ADD PRIMARY KEY (`codCidade`), ADD KEY `codUf` (`codUf`), ADD KEY `codCidade` (`codCidade`,`codUf`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cidades`
--
ALTER TABLE `cidades`
MODIFY `codCidade` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=38;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
