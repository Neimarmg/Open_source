-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 29-Dez-2014 às 23:24
-- Versão do servidor: 5.5.39
-- PHP Version: 5.4.31

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
-- Estrutura da tabela `acessos`
--

CREATE TABLE IF NOT EXISTS `acessos` (
`codAcesso` int(10) unsigned NOT NULL,
  `codNiveisUser` int(10) unsigned NOT NULL,
  `codUsuario` int(10) unsigned NOT NULL,
  `usuario` varchar(30) DEFAULT NULL,
  `senha` varchar(6) DEFAULT NULL,
  `ativa` varchar(1) DEFAULT NULL COMMENT 'A= Ativo, I = Inativo',
  `datacreate` datetime DEFAULT NULL,
  `userCreate` varchar(30) DEFAULT NULL,
  `dataAlter` datetime DEFAULT NULL,
  `userAlter` varchar(30) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Extraindo dados da tabela `acessos`
--

INSERT INTO `acessos` (`codAcesso`, `codNiveisUser`, `codUsuario`, `usuario`, `senha`, `ativa`, `datacreate`, `userCreate`, `dataAlter`, `userAlter`) VALUES
(1, 1, 1, 'MASTER', '123', 'A', '2014-12-26 00:00:00', 'MASTER', '2014-12-26 00:00:00', 'MASTER'),
(2, 1, 1, 'MESTRE', '123', 'A', '2014-12-26 00:00:00', 'MASTER', '2014-12-26 00:00:00', 'MASTER');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acessos`
--
ALTER TABLE `acessos`
 ADD PRIMARY KEY (`codAcesso`), ADD KEY `codAcesso` (`codAcesso`), ADD KEY `codNiveisUser` (`codNiveisUser`), ADD KEY `codUsuario` (`codUsuario`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acessos`
--
ALTER TABLE `acessos`
MODIFY `codAcesso` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
