-- Cria a base de dados Companhia
CREATE DATABASE AdvocaciaWORK;

-- Coloca a base de dados advocacia em uso
USE AdvocaciaWORK;

-- Cria a tabela advogado (Nicolas)
CREATE TABLE ADVOGADO (
	id			INT(20)				NOT NULL AUTO_INCREMENT,
	OAB			VARCHAR(15)			NOT NULL UNIQUE, 
	RAMO		CHAR(9)				NOT NULL, 
	NOME		VARCHAR(60)			NOT NULL, 
	TELEFONE	VARCHAR(20)					,
	EMAIL		VARCHAR(50)					,
	ENDERECO	CHAR(40)					,
    CNPJ		CHAR(20)					,
	PRIMARY KEY (OAB)
);

CREATE TABLE PESSOAS (
	id			INT(20)				NOT NULL AUTO_INCREMENT,
	CPF			VARCHAR(20)			NOT NULL UNIQUE, 
	NOME		VARCHAR(60)			NOT NULL, 
	CEP			CHAR(10)					, 
	TELEFONE	VARCHAR(20)					,
	EMAIL		VARCHAR(50)					,
    PRIMARY KEY(CPF)
);

CREATE TABLE AUTOR (
	id			INT(20)				NOT NULL AUTO_INCREMENT,
	CPFAUTOR	VARCHAR(20)			NOT NULL UNIQUE, 
	NOME		VARCHAR(60)			NOT NULL, 
	CEP			CHAR(10)					, 
	TELEFONE	VARCHAR(20)					,
	EMAIL		VARCHAR(50)					,
    PRIMARY KEY (CPFAUTOR)
);

ALTER TABLE AUTOR ADD FOREIGN KEY  (CPFAUTOR) REFERENCES PESSOAS(CPF);

CREATE TABLE REU (
	id			INT(20)				NOT NULL AUTO_INCREMENT,
	CPFREU		VARCHAR(20)			NOT NULL UNIQUE, 
	NOME		VARCHAR(60)			NOT NULL, 
	CEP			CHAR(10)					, 
	TELEFONE	VARCHAR(20)					,
	EMAIL		VARCHAR(50)					,
    PRIMARY KEY (CPFREU)
);

ALTER TABLE REU ADD FOREIGN KEY (CPFREU) REFERENCES PESSOAS(CPF);

-- Nicolas
CREATE TABLE JUIZ (
	id			INT(20)				NOT NULL AUTO_INCREMENT,
	CPFJUIZ		VARCHAR(20)			NOT NULL UNIQUE, 
	NOME		VARCHAR(60)			NOT NULL, 
	CEP			CHAR(10)					, 
	TELEFONE	VARCHAR(20)					,
	EMAIL		VARCHAR(50)					,
    PRIMARY KEY(CPFJUIZ),
    FOREIGN KEY (CPFJUIZ) REFERENCES PESSOAS(CPF)
);

-- Cria a tabela caso (Nicolas)
CREATE TABLE CASO (
	NPROCESSO	CHAR(30)		NOT NULL,  -- possui caracteres especiais
	ANO			INT(4)			NOT NULL, 
	REU			VARCHAR(50)		NOT NULL, 
	COMARCA		CHAR(35)				,
    VARA		VARCHAR(40)				,
PRIMARY KEY (NPROCESSO)					
);

CREATE TABLE TEM(
	CPF		VARCHAR(20),
    PRIMARY KEY (CPF),
    FOREIGN KEY  (CPF) REFERENCES PESSOAS(CPF)
    );
    
CREATE TABLE JULGAM(
	CPF			VARCHAR(20) ,
    DIAMESANO	DATE		,
    SENTECA		VARCHAR(50) ,
    PRIMARY KEY (CPF),
    FOREIGN KEY (CPF) REFERENCES PESSOAS(CPF)
);

CREATE TABLE TRABALHA_EM(
	REGISTRO_OAB	VARCHAR(15) NOT NULL	,
    NPROCESSO		CHAR(30) 	NOT NULL	,
    PRIMARY KEY (REGISTRO_OAB, NPROCESSO)	,
    FOREIGN KEY (REGISTRO_OAB) REFERENCES ADVOGADO(OAB),
    FOREIGN KEY (NPROCESSO) REFERENCES CASO(NPROCESSO)
);
    

-- Insere o primeiro registro na tabela empregado (Nicolas)
INSERT INTO ADVOGADO (OAB, RAMO, NOME, TELEFONE, EMAIL, ENDERECO, CNPJ) VALUES
	('RS112233T', 'Homicidio', 'Roberto Boquia', '(53) 9 5566-9988', 'correioEletronicoDoRoberto@correio.com', 'Av. Porquinho, 666', '12.666.777/0001-42');

-- Insere o primeiro registro na tabela departamento (Nicolas)
INSERT INTO PESSOAS (CPF, NOME, CEP, EMAIL, TELEFONE) VALUES
	('111.222.333-44', 'Gerivaldo Nunes', '11223-456', 'gerivaldoronaldo@endereco.com', '(55) 9 8888-4444');
    
INSERT INTO JUIZ (CPFJUIZ, NOME, CEP, TELEFONE, EMAIL) VALUES
	('111.222.333-44', 'Gerivaldo Nunes', '11223-456', '(55) 9 8888-4444', 'gerivaldoronaldo@endereco.com');
    


-- Mostra as tabelas criadas
SHOW TABLES;

-- Mostra a descrição da tabela empregado
DESCRIBE ADVOGADO;

-- Mostra a descrição da tabela pessoas
DESCRIBE PESSOAS;

-- Mostra a descrição da tabela autor
DESCRIBE AUTOR;

-- Mostra a descrição da tabela réu
DESCRIBE REU;

-- Mostra a descrição da tabela juiz
DESCRIBE JUIZ;

-- Mostra a descrição da tabela trabalha_em
DESCRIBE TRABALHA_EM;

-- Mostra a descrição da tabela dependente
DESCRIBE TEM;