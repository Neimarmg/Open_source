CREATE TABLE acessos (
  codAcesso INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  codUsuario INTEGER UNSIGNED NULL,
  usuario VARCHAR(30) NULL,
  senha VARCHAR(6) NULL,
  ativa BOOL NULL,
  PRIMARY KEY(codAcesso)
);

CREATE TABLE cidades (
  codCidades INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  codUf INTEGER UNSIGNED NULL,
  nome VARCHAR(200) NULL,
  PRIMARY KEY(codCidades)
);

CREATE TABLE niveisUser (
  codNiveisUser INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  descricao VARCHAR(30) NULL,
  PRIMARY KEY(codNiveisUser)
);

CREATE TABLE pessoas (
  codPessoa INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  codTipoPessoa INTEGER UNSIGNED NULL,
  codCidade INTEGER UNSIGNED NULL,
  nome VARCHAR(180) NULL,
  PRIMARY KEY(codPessoa)
);

CREATE TABLE TipoPessoa (
  codTipoPessoa INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  descricao VARCHAR(50) NULL,
  dataCreate DATETIME NULL,
  userCreate VARCHAR(30) NULL,
  dataAlater DATETIME NULL,
  userAlter VARCHAR(30) NULL,
  PRIMARY KEY(codTipoPessoa)
);

CREATE TABLE tipoUtilitario (
  codTipoUtilitario INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  descricao VARCHAR(60) NULL,
  PRIMARY KEY(codTipoUtilitario)
);

CREATE TABLE UF (
  codUf INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  uf VARCHAR(5) NULL,
  estado VARCHAR(200) NULL,
  brasil VARCHAR(50) NULL,
  PRIMARY KEY(codUf)
);

CREATE TABLE usuarios (
  codUsuarios INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  codPessoa INTEGER UNSIGNED NULL,
  codNivel INTEGER UNSIGNED NULL,
  datacreate DATETIME NULL,
  userCreate VARCHAR(30) NULL,
  dataAlter DATETIME NULL,
  userAlter VARCHAR(30) NULL,
  PRIMARY KEY(codUsuarios)
);

CREATE TABLE utilitarios (
  codUtilitarios INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  codTipoUtilitario INTEGER UNSIGNED NULL,
  descricao VARCHAR(60) NULL,
  PRIMARY KEY(codUtilitarios)
);


