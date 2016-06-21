/***************************************************************************
inicio do script de criacao das tabelas 

tabela referente ao ponte aerea
***************************************************************************/

create table ponte_aerea(
  id_ponte_aerea integer,
  id_aeroporto_origem integer null,
  id_aeroporto_destino integer null,
  distancia integer null,
  qtd_escalas integer null,
  id_aeroporto_escala integer 
);

/***************************************************************************
tabela referente ao usuario
***************************************************************************/

create table usuario (
  cpf varchar(13),
  rg varchar(15) null,
  nome varchar(100) null,
  sexo char(1) null,
  cep varchar(10) null,
  endereco varchar(200) null,
  telefone varchar(10) null,
  celular varchar(11) null,
  cidade varchar(50) null,
  estado char(2) null,
  data_nascimento date null,
  senha varchar(150) not null
);

/***************************************************************************
tabela referente ao passageiro
***************************************************************************/

create table passageiro (
  idpassageiro integer unsigned,
  cpf varchar(13) null,
  idade integer unsigned null,
  sexo char(1) null,
  necessidades_especiais char(1) null 
);

/***************************************************************************
tabela referente ao voo
***************************************************************************/

create table voo (
  id_voo varchar(10) ,
  companhia varchar(30) null,
  aeronave varchar(30) null,
  qtd_pessoas integer unsigned null  
);

/***************************************************************************
tabela referente ao aeroporto 
***************************************************************************/

create table aeroporto (
  id_aeroporto integer unsigned,
  endereco varchar(100) null,
  cidade varchar(50) null,
  pais varchar(50) null 
);

/***************************************************************************
tabela referente ao venda
***************************************************************************/

create table venda (
  id_venda integer,
  id_ponte_aerea integer,
  passageiro_idpassageiro integer unsigned not null,
  usuario_cpf varchar(13) not null,
  data_venda date null,
  qtd_passagens integer unsigned null,
  valor double null
);

/***************************************************************************
alter table para adicionar as constraints
***************************************************************************/

-- ponte aerea	
alter table ponte_aerea add constraint primary key(id_ponte_aerea);

-- usuario
alter table usuario add constraint primary key(cpf);

-- passageiro 

alter table passageiro add constraint primary key(idpassageiro);

-- voo
alter table voo add constraint primary key(id_voo); 

      
-- aeroporto 
alter table aeroporto add constraint primary key(id_aeroporto);
  


-- venda
alter table venda add constraint pk_venda
 primary key(id_venda);

alter table venda add constraint fk_venda_usuario foreign key(usuario_cpf)
    references usuario(cpf);
      
alter table venda add constraint fk_venda_passageiro  foreign key(passageiro_idpassageiro)
    references passageiro(idpassageiro);
      
alter table venda add constraint fk_venda_ponte foreign key(id_ponte_aerea)
    references ponte_aerea(id_ponte_aerea);
/***************************************************************************
fim das constraints

fim do script 
***************************************************************************/


