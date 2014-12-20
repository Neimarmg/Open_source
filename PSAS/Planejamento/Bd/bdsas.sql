CREATE TABLE acessos (
  codAcesso INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  usuarios_niveisUser_codNiveisUser INTEGER UNSIGNED NOT NULL,
  usuarios_codUsuario INTEGER UNSIGNED NOT NULL,
  codUsuario INTEGER UNSIGNED NULL,
  usuario VARCHAR(30) NULL,
  senha VARCHAR(6) NULL,
  ativa BOOL NULL,
  PRIMARY KEY(codAcesso, usuarios_niveisUser_codNiveisUser, usuarios_codUsuario),
  INDEX acessos_FKIndex1(usuarios_codUsuario, usuarios_niveisUser_codNiveisUser)
);

CREATE TABLE cidades (
  codCidade INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  UF_codUf INTEGER UNSIGNED NOT NULL,
  codUf INTEGER UNSIGNED NULL,
  nome VARCHAR(200) NULL,
  PRIMARY KEY(codCidade, UF_codUf),
  INDEX cidades_FKIndex1(UF_codUf)
);

CREATE TABLE niveisUser (
  codNiveisUser INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  descricao VARCHAR(30) NULL,
  PRIMARY KEY(codNiveisUser)
);

CREATE TABLE pessoas (
  codPessoa INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  TipoPessoa_codTipoPessoa INTEGER UNSIGNED NOT NULL,
  cidades_UF_codUf INTEGER UNSIGNED NOT NULL,
  cidades_codCidade INTEGER UNSIGNED NOT NULL,
  codTipoPessoa INTEGER UNSIGNED NULL,
  codCidade INTEGER UNSIGNED NULL,
  nome VARCHAR(180) NULL,
  PRIMARY KEY(codPessoa, TipoPessoa_codTipoPessoa, cidades_UF_codUf, cidades_codCidade),
  INDEX pessoas_FKIndex1(TipoPessoa_codTipoPessoa),
  INDEX pessoas_FKIndex2(cidades_codCidade, cidades_UF_codUf)
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
  codUsuario INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  niveisUser_codNiveisUser INTEGER UNSIGNED NOT NULL,
  codPessoa INTEGER UNSIGNED NULL,
  codNivel INTEGER UNSIGNED NULL,
  datacreate DATETIME NULL,
  userCreate VARCHAR(30) NULL,
  dataAlter DATETIME NULL,
  userAlter VARCHAR(30) NULL,
  PRIMARY KEY(codUsuario, niveisUser_codNiveisUser),
  INDEX usuarios_FKIndex1(niveisUser_codNiveisUser)
);

CREATE TABLE utilitarios (
  codUtilitario INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  tipoUtilitario_codTipoUtilitario INTEGER UNSIGNED NOT NULL,
  codTipoUtilitario INTEGER UNSIGNED NULL,
  descricao VARCHAR(60) NULL,
  PRIMARY KEY(codUtilitario, tipoUtilitario_codTipoUtilitario),
  INDEX utilitarios_FKIndex1(tipoUtilitario_codTipoUtilitario)
);


