/***************************************************************************
Inicio do Script de Criacao das Tabelas 

Tabela referente ao Usuario 
***************************************************************************/
create table user (
    CPF int,
    first_name varchar(50) not null,
    last_name varchar(50) not null,
    adress varchar(200) not null,
    number_house int,
    adds_adress varchar(100),
    zip_code int(8) not null,
    state varchar(100),
    city varchar(100),
    email varchar(50) not null,
    data_nascimento date not null,
    RG int not null,
    credit_card int
)  ENGINE=innodb;

/***************************************************************************
Tabela referente ao Pedido 
***************************************************************************/
create table sale (
    ID_sale int,
    quantity int not null,
    total float not null
)  ENGINE=innodb;

/***************************************************************************
Tabela referente ao detalhamento da Pedido 
***************************************************************************/
create table sale_details (
    ID_sale_details int,
    ID_sale int,
    code_of_flighty varchar(10),
    departure varchar(100),
    departure_time datetime,
    arrival varchar(100),
    arrival_time datetime,
    seat_number int,
    first_name varchar(50),
    last_name varchar(50),
    age int
)  ENGINE=innodb;

/***************************************************************************
Tabela referente ao Voo 
***************************************************************************/
create table flighty (
    CODE_of_flighty varchar(10),
    departure varchar(100),
    arrival varchar(100),
    travel_time time,
    qtd_seat int
)  ENGINE=innodb;

/***************************************************************************
Tabela referente ao Aviao 
***************************************************************************/
create table plane (
    ID_plane int,
    model varchar(15)
)  ENGINE=innodb;
/***************************************************************************
Fim da Criacao de Tabelas 

Alter Table para adicionar as constraints
***************************************************************************/
-- Table User 
ALTER TABLE user ADD CONSTRAINT Pk_user 
PRIMARY KEY (CPF);

-- Table Sale
ALTER TABLE sale ADD CONSTRAINT Pk_sale
PRIMARY KEY (ID_sale);
-- adicionando campo auto increment no ID do pedido de passagem 
ALTER TABLE sale CHANGE ID_sale ID_sale INT AUTO_INCREMENT;


-- Table Sale
ALTER TABLE sale_details ADD CONSTRAINT Pk_sale_details
PRIMARY KEY (ID_sale_details);
ALTER TABLE sale_details ADD CONSTRAINT Fk_sale_details_Sale
FOREIGN KEY (ID_sale) REFERENCES sale (ID_sale);
-- adicionando campo auto increment no id do detalhamento da lista
ALTER TABLE sale_details CHANGE ID_sale_details ID_sale_details INT AUTO_INCREMENT;


-- Table flighty
ALTER TABLE flighty ADD CONSTRAINT Pk_flighty
PRIMARY KEY (CODE_of_flighty);

-- Table plane
ALTER TABLE plane ADD CONSTRAINT Pk_plane
PRIMARY KEY (ID_plane);


/***************************************************************************
Fim das Constraints

Fim do Script 
***************************************************************************/