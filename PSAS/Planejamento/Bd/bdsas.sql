-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 20, 2014 at 02:08 PM
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
-- Table structure for table `acessos`
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `cidades`
--

CREATE TABLE IF NOT EXISTS `cidades` (
`codCidade` int(10) unsigned NOT NULL,
  `codUf` int(10) unsigned DEFAULT NULL,
  `nome` varchar(200) DEFAULT NULL,
  `datacreate` datetime DEFAULT NULL,
  `userCreate` varchar(30) DEFAULT NULL,
  `dataAlter` datetime DEFAULT NULL,
  `userAlter` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `fornecedores`
--

CREATE TABLE IF NOT EXISTS `fornecedores` (
`codFornecedores` int(10) unsigned NOT NULL,
  `codTipoFornecedor` int(10) unsigned NOT NULL,
  `codPessoa` int(10) unsigned DEFAULT NULL,
  `codTipo` int(10) unsigned DEFAULT NULL,
  `nomeFantasia` varchar(150) DEFAULT NULL,
  `datacreate` datetime DEFAULT NULL,
  `userCreate` varchar(30) DEFAULT NULL,
  `dataAlter` datetime DEFAULT NULL,
  `userAlter` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `niveisuser`
--

CREATE TABLE IF NOT EXISTS `niveisuser` (
`codNiveisUser` int(10) unsigned NOT NULL,
  `descricao` varchar(30) DEFAULT NULL,
  `datacreate` datetime DEFAULT NULL,
  `userCreate` varchar(30) DEFAULT NULL,
  `dataAlter` datetime DEFAULT NULL,
  `userAlter` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pessoas`
--

CREATE TABLE IF NOT EXISTS `pessoas` (
`codPessoa` int(10) unsigned NOT NULL,
  `codTipoPessoa` int(10) unsigned NOT NULL,
  `codCidade` int(10) unsigned NOT NULL,
  `nome` varchar(180) DEFAULT NULL,
  `codProfissao` int(10) unsigned DEFAULT NULL,
  `datacreate` datetime DEFAULT NULL,
  `userCreate` varchar(30) DEFAULT NULL,
  `dataAlter` datetime DEFAULT NULL,
  `userAlter` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tipofornecedor`
--

CREATE TABLE IF NOT EXISTS `tipofornecedor` (
`codTipoFornecedor` int(10) unsigned NOT NULL,
  `descricao` varchar(50) DEFAULT NULL,
  `datacreate` datetime DEFAULT NULL,
  `userCreate` varchar(30) DEFAULT NULL,
  `dataAlter` datetime DEFAULT NULL,
  `userAlter` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tipopessoa`
--

CREATE TABLE IF NOT EXISTS `tipopessoa` (
`codTipoPessoa` int(10) unsigned NOT NULL,
  `descricao` varchar(50) DEFAULT NULL,
  `dataCreate` datetime DEFAULT NULL,
  `userCreate` varchar(30) DEFAULT NULL,
  `dataAlater` datetime DEFAULT NULL,
  `userAlter` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tipoutilitario`
--

CREATE TABLE IF NOT EXISTS `tipoutilitario` (
`codTipoUtilitario` int(10) unsigned NOT NULL,
  `descricao` varchar(60) DEFAULT NULL,
  `datacreate` datetime DEFAULT NULL,
  `userCreate` varchar(30) DEFAULT NULL,
  `dataAlter` datetime DEFAULT NULL,
  `userAlter` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `uf`
--

CREATE TABLE IF NOT EXISTS `uf` (
`codUf` int(10) unsigned NOT NULL,
  `uf` varchar(5) DEFAULT NULL,
  `estado` varchar(200) DEFAULT NULL,
  `brasil` varchar(50) DEFAULT NULL,
  `datacreate` datetime DEFAULT NULL,
  `userCreate` varchar(30) DEFAULT NULL,
  `dataAlter` datetime DEFAULT NULL,
  `userAlter` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
`codUsuario` int(10) unsigned NOT NULL,
  `codPessoa` int(10) unsigned DEFAULT NULL,
  `codNivel` int(10) unsigned DEFAULT NULL,
  `datacreate` datetime DEFAULT NULL,
  `userCreate` varchar(30) DEFAULT NULL,
  `dataAlter` datetime DEFAULT NULL,
  `userAlter` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `utilitarios`
--

CREATE TABLE IF NOT EXISTS `utilitarios` (
`codUtilitario` int(10) unsigned NOT NULL,
  `codTipoUtilitario` int(10) unsigned DEFAULT NULL,
  `descricao` varchar(60) DEFAULT NULL,
  `datacreate` datetime DEFAULT NULL,
  `userCreate` varchar(30) DEFAULT NULL,
  `dataAlter` datetime DEFAULT NULL,
  `userAlter` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acessos`
--
ALTER TABLE `acessos`
 ADD PRIMARY KEY (`codAcesso`), ADD KEY `codUsuario` (`codUsuario`), ADD KEY `codNiveisUser` (`codNiveisUser`);

--
-- Indexes for table `cidades`
--
ALTER TABLE `cidades`
 ADD PRIMARY KEY (`codCidade`), ADD KEY `codUf` (`codUf`);

--
-- Indexes for table `fornecedores`
--
ALTER TABLE `fornecedores`
 ADD PRIMARY KEY (`codFornecedores`), ADD KEY `codTipoFornecedor` (`codTipoFornecedor`), ADD KEY `codPessoa` (`codPessoa`), ADD KEY `codTipo` (`codTipo`);

--
-- Indexes for table `niveisuser`
--
ALTER TABLE `niveisuser`
 ADD PRIMARY KEY (`codNiveisUser`);

--
-- Indexes for table `pessoas`
--
ALTER TABLE `pessoas`
 ADD PRIMARY KEY (`codPessoa`), ADD KEY `codTipoPessoa` (`codTipoPessoa`), ADD KEY `codCidade` (`codCidade`), ADD KEY `codProfissao` (`codProfissao`);

--
-- Indexes for table `tipofornecedor`
--
ALTER TABLE `tipofornecedor`
 ADD PRIMARY KEY (`codTipoFornecedor`);

--
-- Indexes for table `tipopessoa`
--
ALTER TABLE `tipopessoa`
 ADD PRIMARY KEY (`codTipoPessoa`);

--
-- Indexes for table `tipoutilitario`
--
ALTER TABLE `tipoutilitario`
 ADD PRIMARY KEY (`codTipoUtilitario`);

--
-- Indexes for table `uf`
--
ALTER TABLE `uf`
 ADD PRIMARY KEY (`codUf`), ADD KEY `uf` (`uf`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
 ADD PRIMARY KEY (`codUsuario`), ADD UNIQUE KEY `codPessoa` (`codPessoa`), ADD KEY `codPessoa_2` (`codPessoa`), ADD KEY `codPessoa_3` (`codPessoa`), ADD KEY `codNivel` (`codNivel`);

--
-- Indexes for table `utilitarios`
--
ALTER TABLE `utilitarios`
 ADD PRIMARY KEY (`codUtilitario`), ADD KEY `codTipoUtilitario` (`codTipoUtilitario`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acessos`
--
ALTER TABLE `acessos`
MODIFY `codAcesso` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cidades`
--
ALTER TABLE `cidades`
MODIFY `codCidade` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `fornecedores`
--
ALTER TABLE `fornecedores`
MODIFY `codFornecedores` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `niveisuser`
--
ALTER TABLE `niveisuser`
MODIFY `codNiveisUser` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pessoas`
--
ALTER TABLE `pessoas`
MODIFY `codPessoa` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tipofornecedor`
--
ALTER TABLE `tipofornecedor`
MODIFY `codTipoFornecedor` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tipopessoa`
--
ALTER TABLE `tipopessoa`
MODIFY `codTipoPessoa` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tipoutilitario`
--
ALTER TABLE `tipoutilitario`
MODIFY `codTipoUtilitario` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `uf`
--
ALTER TABLE `uf`
MODIFY `codUf` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
MODIFY `codUsuario` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `utilitarios`
--
ALTER TABLE `utilitarios`
MODIFY `codUtilitario` int(10) unsigned NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
