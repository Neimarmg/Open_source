-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 16-Dez-2014 às 15:31
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
-- Estrutura da tabela `cidades`
--

CREATE TABLE IF NOT EXISTS `cidades` (
`CODCIDADE` int(11) NOT NULL,
  `NOME` varchar(100) NOT NULL,
  `DATACRIACAO` datetime NOT NULL,
  `USERCRICACAO` varchar(50) NOT NULL,
  `DATAEDICAO` datetime DEFAULT NULL,
  `USEREDICAO` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `niveisuser`
--

CREATE TABLE IF NOT EXISTS `niveisuser` (
`CODNIVELUSER` int(11) NOT NULL,
  `NOME` varchar(100) NOT NULL,
  `DATACRIACAO` datetime NOT NULL,
  `USERCRICACAO` varchar(50) NOT NULL,
  `DATAEDICAO` datetime NOT NULL,
  `USEREDICAO` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipoutilitarios`
--

CREATE TABLE IF NOT EXISTS `tipoutilitarios` (
`CODTIPOUTILITARIO` int(11) NOT NULL,
  `NOME` varchar(100) NOT NULL,
  `DATACRIACAO` datetime NOT NULL,
  `USERCRICACAO` varchar(50) NOT NULL,
  `DATAEDICAO` datetime NOT NULL,
  `USEREDICAO` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
`CODUSER` int(11) NOT NULL,
  `NOME` varchar(100) NOT NULL,
  `DATACRIACAO` datetime NOT NULL,
  `USERCRICACAO` varchar(50) NOT NULL,
  `DATAEDICAO` datetime NOT NULL,
  `USEREDICAO` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cidades`
--
ALTER TABLE `cidades`
 ADD PRIMARY KEY (`CODCIDADE`);

--
-- Indexes for table `niveisuser`
--
ALTER TABLE `niveisuser`
 ADD PRIMARY KEY (`CODNIVELUSER`);

--
-- Indexes for table `tipoutilitarios`
--
ALTER TABLE `tipoutilitarios`
 ADD PRIMARY KEY (`CODTIPOUTILITARIO`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
 ADD PRIMARY KEY (`CODUSER`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cidades`
--
ALTER TABLE `cidades`
MODIFY `CODCIDADE` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `niveisuser`
--
ALTER TABLE `niveisuser`
MODIFY `CODNIVELUSER` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tipoutilitarios`
--
ALTER TABLE `tipoutilitarios`
MODIFY `CODTIPOUTILITARIO` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
MODIFY `CODUSER` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
