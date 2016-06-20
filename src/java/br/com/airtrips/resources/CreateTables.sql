/***************************************************************************
Inicio do Script de Criacao das Tabelas 

Tabela referente ao Ponte Aerea
***************************************************************************/

CREATE TABLE PONTE_AEREA (
  ID_PONTE_AEREA INTEGER,
  ID_AEROPORTO_ORIGEM VARCHAR(50) NULL,
  ID_AEROPORTO_DESTINO VARCHAR(50) NULL,
  DISTANCIA DOUBLE NULL  
);

/***************************************************************************
Tabela referente ao Usuario
***************************************************************************/

CREATE TABLE USUARIO (
  CPF VARCHAR(13),
  RG VARCHAR(15) NULL,
  NOME VARCHAR(100) NULL,
  SEXO CHAR(1) NULL,
  CEP VARCHAR(10) NULL,
  ENDERECO VARCHAR(200) NULL,
  TELEFONE VARCHAR(10) NULL,
  CELULAR VARCHAR(11) NULL,
  CIDADE VARCHAR(50) NULL,
  ESTADO CHAR(2) NULL,
  DATA_NASCIMENTO DATE NULL,
  IDADE INTEGER UNSIGNED NULL,
  NOME_PAI VARCHAR(100) NULL,
  NOME_MAE VARCHAR(100) NULL  
);

/***************************************************************************
Tabela referente ao Passageiro
***************************************************************************/

CREATE TABLE PASSAGEIRO (
  idPASSAGEIRO INTEGER UNSIGNED,
  CPF VARCHAR(13) NULL,
  IDADE INTEGER UNSIGNED NULL,
  SEXO CHAR(1) NULL,
  NECESSIDADES_ESPECIAIS CHAR(1) NULL 
);

/***************************************************************************
Tabela referente ao Voo
***************************************************************************/

CREATE TABLE VOO (
  ID_VOO VARCHAR(10) ,
  COMPANHIA VARCHAR(30) NULL,
  AERONAVE VARCHAR(30) NULL,
  QTD_PESSOAS INTEGER UNSIGNED NULL  
);

/***************************************************************************
Tabela referente ao Aeroporto 
***************************************************************************/

CREATE TABLE AEROPORTO (
  ID_AEROPORTO INTEGER UNSIGNED,
  ID_PONTE_AEREA INTEGER UNSIGNED NOT NULL,
  ENDERECO VARCHAR(100) NULL,
  CIDADE VARCHAR(50) NULL,
  PAIS VARCHAR(50) NULL 
);

/***************************************************************************
Tabela referente ao Venda
***************************************************************************/

CREATE TABLE VENDA (
  ID_VENDA INTEGER UNSIGNED,
  ID_PONTE_AEREA INTEGER UNSIGNED,
  PASSAGEIRO_idPASSAGEIRO INTEGER UNSIGNED NOT NULL,
  USUARIO_CPF VARCHAR(13) NOT NULL,
  DATA_VENDA DATE NULL,
  QTD_PASSAGENS INTEGER UNSIGNED NULL,
  VALOR DOUBLE NULL
);

/***************************************************************************
Alter Table para adicionar as constraints
***************************************************************************/

-- Ponte Aerea	
ALTER TABLE ponte_aerea ADD CONSTRAINT PRIMARY KEY(ID_PONTE_AEREA);

-- Usuario
ALTER TABLE usuario ADD CONSTRAINT PRIMARY KEY(CPF);

-- passageiro 

ALTER TABLE passageiro ADD CONSTRAINT PRIMARY KEY(idPASSAGEIRO);

-- voo
ALTER TABLE voo ADD CONSTRAINT PRIMARY KEY(ID_VOO); 

      
-- aeroporto 
ALTER TABLE aeroporto ADD CONSTRAINT PRIMARY KEY(ID_AEROPORTO);
  


-- Venda
ALTER TABLE venda ADD CONSTRAINT Pk_venda
 PRIMARY KEY(ID_VENDA);

ALTER TABLE venda ADD CONSTRAINT  fk_venda_usuario FOREIGN KEY(USUARIO_CPF)
    REFERENCES USUARIO(CPF)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION;
      
ALTER TABLE venda ADD CONSTRAINT  fk_venda_passageiro  FOREIGN KEY(PASSAGEIRO_idPASSAGEIRO)
    REFERENCES PASSAGEIRO(idPASSAGEIRO)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION;
      
ALTER TABLE venda ADD CONSTRAINT  fk_venda_ponte FOREIGN KEY(ID_PONTE_AEREA)
    REFERENCES PONTE_AEREA(ID_PONTE_AEREA)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION;
/***************************************************************************
Fim das Constraints

Fim do Script 
***************************************************************************/

