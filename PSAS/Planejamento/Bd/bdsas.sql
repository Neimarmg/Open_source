-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 27-Dez-2014 às 22:42
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Extraindo dados da tabela `acessos`
--

INSERT INTO `acessos` (`codAcesso`, `codNiveisUser`, `codUsuario`, `usuario`, `senha`, `ativa`, `datacreate`, `userCreate`, `dataAlter`, `userAlter`) VALUES
(1, 1, 1, 'MASTER', '123', 'A', '2014-12-26 00:00:00', 'MASTER', '2014-12-26 00:00:00', 'MASTER'),
(1, 1, 1, 'MASTER', '123', 'A', '2014-12-26 00:00:00', 'MASTER', '2014-12-26 00:00:00', 'MASTER');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cidades`
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
-- Estrutura da tabela `contatos`
--

CREATE TABLE IF NOT EXISTS `contatos` (
`codContatos` int(10) unsigned NOT NULL,
  `codPessoa` int(10) unsigned DEFAULT NULL,
  `codFornecedor` int(11) DEFAULT NULL,
  `codTipo` int(10) unsigned DEFAULT NULL,
  `codOperadora` int(10) unsigned DEFAULT NULL,
  `foneConvencional` varchar(12) DEFAULT NULL,
  `celular` int(12) unsigned DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `obs` text,
  `datacreate` datetime DEFAULT NULL,
  `userCreate` varchar(30) DEFAULT NULL,
  `dataAlter` datetime DEFAULT NULL,
  `userAlter` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cursos`
--

CREATE TABLE IF NOT EXISTS `cursos` (
`codCurso` int(10) unsigned NOT NULL,
  `nome` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `enderecos`
--

CREATE TABLE IF NOT EXISTS `enderecos` (
`codEndereco` int(10) unsigned NOT NULL,
  `codPessoa` int(10) unsigned NOT NULL,
  `codFornecedor` int(10) unsigned DEFAULT NULL,
  `codTipo` int(10) unsigned DEFAULT NULL,
  `rua` varchar(200) DEFAULT NULL,
  `nro` int(10) unsigned DEFAULT NULL,
  `compl` varchar(20) DEFAULT NULL,
  `bairro` varchar(50) DEFAULT NULL,
  `codCidade` int(10) unsigned DEFAULT NULL,
  `cep` varchar(11) DEFAULT NULL,
  `datacreate` datetime DEFAULT NULL,
  `userCreate` varchar(30) DEFAULT NULL,
  `dataAlter` datetime DEFAULT NULL,
  `userAlter` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `fornecedores`
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
-- Estrutura da tabela `matriculas`
--

CREATE TABLE IF NOT EXISTS `matriculas` (
`codMatricula` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `niveisuser`
--

CREATE TABLE IF NOT EXISTS `niveisuser` (
`codNiveisUser` int(10) unsigned NOT NULL,
  `descricao` varchar(30) DEFAULT NULL,
  `datacreate` datetime DEFAULT NULL,
  `userCreate` varchar(30) DEFAULT NULL,
  `dataAlter` datetime DEFAULT NULL,
  `userAlter` varchar(30) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Extraindo dados da tabela `niveisuser`
--

INSERT INTO `niveisuser` (`codNiveisUser`, `descricao`, `datacreate`, `userCreate`, `dataAlter`, `userAlter`) VALUES
(1, 'ADMISTRADOR MASTER', '2014-12-26 00:00:00', 'MASTER', '2014-12-26 00:00:00', 'MASTER'),
(2, 'MESTRE', '2014-12-26 00:00:00', 'MASTER', '2014-12-26 00:00:00', 'MASTER'),
(3, 'DIREÇÃO', '2014-12-26 00:00:00', 'MASTER', '2014-12-26 00:00:00', 'MASTER'),
(4, 'USUÁRIO COMUM', '2014-12-26 00:00:00', 'MASTER', '2014-12-26 00:00:00', 'MASTER'),
(6, 'PÚBLICO', '2014-12-26 00:00:00', 'MASTER', '2014-12-26 00:00:00', 'MASTER'),
(7, 'CORDENADORES', '2014-12-26 00:00:00', 'MASTER', '2014-12-26 00:00:00', 'MASTER');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pessoas`
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
-- Estrutura da tabela `tipofornecedor`
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
-- Estrutura da tabela `tipopessoa`
--

CREATE TABLE IF NOT EXISTS `tipopessoa` (
`codTipoPessoa` int(10) unsigned NOT NULL,
  `descricao` varchar(50) DEFAULT NULL,
  `dataCreate` datetime DEFAULT NULL,
  `userCreate` varchar(30) DEFAULT NULL,
  `dataAlater` datetime DEFAULT NULL,
  `userAlter` varchar(30) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Extraindo dados da tabela `tipopessoa`
--

INSERT INTO `tipopessoa` (`codTipoPessoa`, `descricao`, `dataCreate`, `userCreate`, `dataAlater`, `userAlter`) VALUES
(1, 'ALUNO', '2014-12-26 00:00:00', 'MASTER', '2014-12-26 00:00:00', 'MASTER'),
(2, 'FORNECEDOR', '2014-12-26 00:00:00', 'MASTER', '2014-12-26 00:00:00', 'MASTER'),
(3, 'FUNCIONÁRIO', '2014-12-26 00:00:00', 'MASTER', '2014-12-26 00:00:00', 'MASTER'),
(4, 'PROFESSOR', '2014-12-27 00:00:00', 'MASTER', '2014-12-27 00:00:00', 'MASTER'),
(5, 'MUNITOR', '2014-12-27 00:00:00', 'MASTER', '2014-12-27 00:00:00', 'MASTER'),
(6, 'VOLUNTÁRIO', '2014-12-27 00:00:00', 'MASTER', '2014-12-27 00:00:00', 'MASTER'),
(7, 'ARTISTA', '2014-12-27 00:00:00', 'MASTER', '2014-12-27 00:00:00', 'MASTER'),
(8, 'CATEQUISTA', '2014-12-27 00:00:00', 'MASTER', '2014-12-27 00:00:00', 'MASTER');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipoutilitario`
--

CREATE TABLE IF NOT EXISTS `tipoutilitario` (
`codTipoUtilitario` int(10) unsigned NOT NULL,
  `descricao` varchar(60) DEFAULT NULL,
  `datacreate` datetime DEFAULT NULL,
  `userCreate` varchar(30) DEFAULT NULL,
  `dataAlter` datetime DEFAULT NULL,
  `userAlter` varchar(30) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Extraindo dados da tabela `tipoutilitario`
--

INSERT INTO `tipoutilitario` (`codTipoUtilitario`, `descricao`, `datacreate`, `userCreate`, `dataAlter`, `userAlter`) VALUES
(1, 'OPERADORAS', '2014-12-26 00:00:00', 'MASTER', '2014-12-26 00:00:00', 'MASTER'),
(2, 'CONTATOS', '2014-12-26 00:00:00', 'MASTER', '2014-12-26 00:00:00', 'MASTER'),
(3, 'TIPO ENDEREÇO', '2014-12-26 00:00:00', 'MASTER', '2014-12-26 00:00:00', 'MASTER');

-- --------------------------------------------------------

--
-- Estrutura da tabela `turmas`
--

CREATE TABLE IF NOT EXISTS `turmas` (
`codTurma` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `uf`
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
-- Estrutura da tabela `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
`codUsuario` int(10) unsigned NOT NULL,
  `codPessoa` int(10) unsigned DEFAULT NULL,
  `codNivel` int(10) unsigned DEFAULT NULL,
  `usuario` varchar(25) DEFAULT NULL,
  `datacreate` datetime DEFAULT NULL,
  `userCreate` varchar(30) DEFAULT NULL,
  `dataAlter` datetime DEFAULT NULL,
  `userAlter` varchar(30) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`codUsuario`, `codPessoa`, `codNivel`, `usuario`, `datacreate`, `userCreate`, `dataAlter`, `userAlter`) VALUES
(1, 0, 1, 'MASTER', '2014-12-26 00:00:00', 'MASTER', '2014-12-26 00:00:00', 'MASTER');

-- --------------------------------------------------------

--
-- Estrutura da tabela `utilitarios`
--

CREATE TABLE IF NOT EXISTS `utilitarios` (
`codUtilitario` int(10) unsigned NOT NULL,
  `codTipoUtilitario` int(10) unsigned DEFAULT NULL,
  `descricao` varchar(60) DEFAULT NULL,
  `datacreate` datetime DEFAULT NULL,
  `userCreate` varchar(30) DEFAULT NULL,
  `dataAlter` datetime DEFAULT NULL,
  `userAlter` varchar(30) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Extraindo dados da tabela `utilitarios`
--

INSERT INTO `utilitarios` (`codUtilitario`, `codTipoUtilitario`, `descricao`, `datacreate`, `userCreate`, `dataAlter`, `userAlter`) VALUES
(1, 1, 'CLARO', '2014-12-26 00:00:00', 'MASTER', '2014-12-26 00:00:00', 'MASTER'),
(2, 1, 'VIVO', '2014-12-26 00:00:00', 'MASTER', '2014-12-26 00:00:00', 'MASTER'),
(3, 1, 'TIM', '2014-12-26 00:00:00', 'MASTER', '2014-12-26 00:00:00', 'MASTER'),
(4, 1, 'OI', '2014-12-26 00:00:00', 'MASTER', '2014-12-26 00:00:00', 'MASTER'),
(5, 1, 'TIM', '2014-12-26 00:00:00', 'MASTER', '2014-12-26 00:00:00', 'MASTER'),
(6, 2, 'RESÍDENCIAL', '2014-12-26 00:00:00', 'MASTER', '2014-12-26 00:00:00', 'MASTER'),
(7, 2, 'PESSOAL', '2014-12-26 00:00:00', 'MASTER', '2014-12-26 00:00:00', 'MASTER'),
(8, 2, 'COMERCIAL', '2014-12-26 00:00:00', 'MASTER', '2014-12-26 00:00:00', 'MASTER'),
(10, 2, 'TRABALHO', '2014-12-26 00:00:00', 'MASTER', '2014-12-26 00:00:00', 'MASTER'),
(11, 2, 'TEMPORÁRIO', '2014-12-26 00:00:00', 'MASTER', '2014-12-26 00:00:00', 'MASTER'),
(13, 2, 'CASA DOS AVÓS', '2014-12-26 00:00:00', 'MASTER', '2014-12-26 00:00:00', 'MASTER'),
(14, 2, 'CASA DO PAI', '2014-12-26 00:00:00', 'MASTER', '2014-12-26 00:00:00', 'MASTER'),
(15, 2, 'CASA DA MÃE', '2014-12-26 00:00:00', 'MASTER', '2014-12-26 00:00:00', 'MASTER'),
(16, 2, 'COLÉGIO', '2014-12-26 00:00:00', 'MASTER', '2014-12-26 00:00:00', 'MASTER'),
(17, 2, 'MOSTEIRO', '2014-12-26 00:00:00', 'MASTER', '2014-12-26 00:00:00', 'MASTER'),
(18, 2, 'ALBERGUE', '2014-12-26 00:00:00', 'MASTER', '2014-12-26 00:00:00', 'MASTER'),
(19, 2, 'CONVENTO', '2014-12-26 00:00:00', 'MASTER', '2014-12-26 00:00:00', 'MASTER'),
(20, 3, 'DOMICILHAR', '2014-12-26 00:00:00', 'MASTER', '2014-12-26 00:00:00', 'MASTER'),
(21, 3, 'EMPREGO', '2014-12-26 00:00:00', 'MASTER', '2014-12-26 00:00:00', 'MASTER'),
(22, 3, 'PRAIA', '2014-12-26 00:00:00', 'MASTER', '2014-12-26 00:00:00', 'MASTER'),
(23, 3, 'COMERCIAL', '2014-12-26 00:00:00', 'MASTER', '2014-12-26 00:00:00', 'MASTER');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acessos`
--
ALTER TABLE `acessos`
 ADD KEY `codAcesso` (`codAcesso`), ADD KEY `codNiveisUser` (`codNiveisUser`), ADD KEY `codUsuario` (`codUsuario`);

--
-- Indexes for table `cidades`
--
ALTER TABLE `cidades`
 ADD PRIMARY KEY (`codCidade`), ADD KEY `codUf` (`codUf`), ADD KEY `codCidade` (`codCidade`,`codUf`);

--
-- Indexes for table `contatos`
--
ALTER TABLE `contatos`
 ADD PRIMARY KEY (`codContatos`), ADD KEY `codPessoa` (`codPessoa`), ADD KEY `codContatos` (`codContatos`), ADD KEY `codTipo` (`codTipo`), ADD KEY `codFornecedor` (`codFornecedor`);

--
-- Indexes for table `cursos`
--
ALTER TABLE `cursos`
 ADD PRIMARY KEY (`codCurso`);

--
-- Indexes for table `enderecos`
--
ALTER TABLE `enderecos`
 ADD PRIMARY KEY (`codEndereco`), ADD KEY `codPessoa` (`codPessoa`), ADD KEY `codFornecedor` (`codFornecedor`), ADD KEY `codTipo` (`codTipo`), ADD KEY `codCidade` (`codCidade`);

--
-- Indexes for table `fornecedores`
--
ALTER TABLE `fornecedores`
 ADD PRIMARY KEY (`codFornecedores`), ADD KEY `codTipoFornecedor` (`codTipoFornecedor`), ADD KEY `codPessoa` (`codPessoa`), ADD KEY `codTipo` (`codTipo`);

--
-- Indexes for table `matriculas`
--
ALTER TABLE `matriculas`
 ADD PRIMARY KEY (`codMatricula`);

--
-- Indexes for table `niveisuser`
--
ALTER TABLE `niveisuser`
 ADD PRIMARY KEY (`codNiveisUser`), ADD KEY `codNiveisUser` (`codNiveisUser`);

--
-- Indexes for table `pessoas`
--
ALTER TABLE `pessoas`
 ADD PRIMARY KEY (`codPessoa`), ADD KEY `codTipoPessoa` (`codTipoPessoa`), ADD KEY `codCidade` (`codCidade`), ADD KEY `codProfissao` (`codProfissao`);

--
-- Indexes for table `tipofornecedor`
--
ALTER TABLE `tipofornecedor`
 ADD PRIMARY KEY (`codTipoFornecedor`), ADD KEY `codTipoFornecedor` (`codTipoFornecedor`);

--
-- Indexes for table `tipopessoa`
--
ALTER TABLE `tipopessoa`
 ADD PRIMARY KEY (`codTipoPessoa`);

--
-- Indexes for table `tipoutilitario`
--
ALTER TABLE `tipoutilitario`
 ADD PRIMARY KEY (`codTipoUtilitario`), ADD KEY `codTipoUtilitario` (`codTipoUtilitario`);

--
-- Indexes for table `turmas`
--
ALTER TABLE `turmas`
 ADD PRIMARY KEY (`codTurma`);

--
-- Indexes for table `uf`
--
ALTER TABLE `uf`
 ADD PRIMARY KEY (`codUf`), ADD KEY `codUf` (`codUf`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
 ADD PRIMARY KEY (`codUsuario`), ADD KEY `codPessoa` (`codPessoa`), ADD KEY `codNivel` (`codNivel`);

--
-- Indexes for table `utilitarios`
--
ALTER TABLE `utilitarios`
 ADD PRIMARY KEY (`codUtilitario`), ADD KEY `codTipoUtilitario` (`codTipoUtilitario`), ADD KEY `codUtilitario` (`codUtilitario`,`codTipoUtilitario`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acessos`
--
ALTER TABLE `acessos`
MODIFY `codAcesso` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cidades`
--
ALTER TABLE `cidades`
MODIFY `codCidade` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `contatos`
--
ALTER TABLE `contatos`
MODIFY `codContatos` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cursos`
--
ALTER TABLE `cursos`
MODIFY `codCurso` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `enderecos`
--
ALTER TABLE `enderecos`
MODIFY `codEndereco` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `fornecedores`
--
ALTER TABLE `fornecedores`
MODIFY `codFornecedores` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `matriculas`
--
ALTER TABLE `matriculas`
MODIFY `codMatricula` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `niveisuser`
--
ALTER TABLE `niveisuser`
MODIFY `codNiveisUser` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
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
MODIFY `codTipoPessoa` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tipoutilitario`
--
ALTER TABLE `tipoutilitario`
MODIFY `codTipoUtilitario` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `turmas`
--
ALTER TABLE `turmas`
MODIFY `codTurma` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `uf`
--
ALTER TABLE `uf`
MODIFY `codUf` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
MODIFY `codUsuario` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `utilitarios`
--
ALTER TABLE `utilitarios`
MODIFY `codUtilitario` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
