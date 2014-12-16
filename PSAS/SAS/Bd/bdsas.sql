-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2014 at 01:02 PM
-- Server version: 5.6.20
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
-- Table structure for table `cidades`
--

CREATE TABLE IF NOT EXISTS `cidades` (
	`codCidade` int(11) NOT NULL,
	`DATACRIACAO` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`USERCRICACAO` varchar(50) NOT NULL,
	`DATAEDICAO` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`USEREDICAO` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `niveisusuarios`
--

CREATE TABLE IF NOT EXISTS `niveisusuarios` (
	`codNivelUsuario` int(11) NOT NULL,
	`DATACRIACAO` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`USERCRICACAO` varchar(50) NOT NULL,
	`DATAEDICAO` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`USEREDICAO` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tipoutilitario`
--

CREATE TABLE IF NOT EXISTS `tipoutilitario` (
	`codTipoUtilitario` int(11) NOT NULL,
	`DESC` varchar(100) NOT NULL,
	`DATACRIACAO` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`USERCRICACAO` varchar(50) NOT NULL,
	`DATAEDICAO` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`USEREDICAO` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
	`codUsuario` int(11) NOT NULL,
	`DATACRIACAO` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`USERCRICACAO` varchar(50) NOT NULL,
	`DATAEDICAO` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`USEREDICAO` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cidades`
--
ALTER TABLE `cidades`
 ADD PRIMARY KEY (`codCidade`);

--
-- Indexes for table `niveisusuarios`
--
ALTER TABLE `niveisusuarios`
 ADD PRIMARY KEY (`codNivelUsuario`);

--
-- Indexes for table `tipoutilitario`
--
ALTER TABLE `tipoutilitario`
 ADD PRIMARY KEY (`codTipoUtilitario`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
 ADD PRIMARY KEY (`codUsuario`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cidades`
--
ALTER TABLE `cidades`
MODIFY `codCidade` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `niveisusuarios`
--
ALTER TABLE `niveisusuarios`
MODIFY `codNivelUsuario` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tipoutilitario`
--
ALTER TABLE `tipoutilitario`
MODIFY `codTipoUtilitario` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
MODIFY `codUsuario` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
