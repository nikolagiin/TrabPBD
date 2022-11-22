-- Cria a base de dados Companhia
CREATE DATABASE Advocacia;

-- Coloca a base de dados advocacia em uso
USE Advocacia;

-- Cria a tabela advogado (Nicolas)
CREATE TABLE ADVOGADO (
	id			INT(20)				NOT NULL,
	OAB			VARCHAR(15)			NOT NULL UNIQUE, 
	RAMO		CHAR(9)				NOT NULL, 
	NOME		VARCHAR(60)			NOT NULL, 
	TELEFONE	VARCHAR(20)					,
	EMAIL		VARCHAR(50)					,
	ENDERECO	CHAR(40)					,
    CNPJ		CHAR(20)					
);

-- Adiciona a chave primaria da tabela advogado (Nicolas)
ALTER TABLE ADVOGADO ADD PRIMARY KEY (OAB);

-- Nicolas

CREATE TABLE PESSOAS (
	id			INT(20)				NOT NULL,
	CPF			VARCHAR(20)			NOT NULL UNIQUE, 
	NOME		VARCHAR(60)			NOT NULL, 
	CEP			CHAR(10)					, 
	TELEFONE	VARCHAR(20)					,
	EMAIL		VARCHAR(50)					,
    PRIMARY KEY(CPF)
);


-- Nicolas

CREATE TABLE AUTOR (
	id			INT(20)				NOT NULL,
	CPFAUTOR	VARCHAR(20)			NOT NULL UNIQUE, 
	NOME		VARCHAR(60)			NOT NULL, 
	CEP			CHAR(10)					, 
	TELEFONE	VARCHAR(20)					,
	EMAIL		VARCHAR(50)					,
    PRIMARY KEY (CPF),
    FOREIGN KEY  (CPFAUTOR) REFERENCES PESSOAS(CPF)
);

ALTER TABLE AUTOR ADD PRIMARY KEY (CPFAUTOR);

-- Nicolas

CREATE TABLE REU (
	id			INT(20)				NOT NULL,
	CPFREU		VARCHAR(20)			NOT NULL UNIQUE, 
	NOME		VARCHAR(60)			NOT NULL, 
	CEP			CHAR(10)					, 
	TELEFONE	VARCHAR(20)					,
	EMAIL		VARCHAR(50)					,
    PRIMARY KEY (CPF),
    FOREIGN KEY  (CPFREU) REFERENCES PESSOAS(CPF)
);

ALTER TABLE REU ADD PRIMARY KEY (CPFREU);

-- Nicolas
CREATE TABLE JUIZ (
	id			INT(20)				NOT NULL,
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
    
    

-- Insere o primeiro registro na tabela empregado (Nicolas)
INSERT INTO ADVOGADO (OAB, RAMO, NOME, TELEFONE, EMAIL, ENDERECO) VALUES
	('RS112233T', 'Homicidio', 'Roberto Boquia', '(53) 9 5566-9988', 'correioEletronicoDoRoberto@correio.com', 'Av. Porquinho, 666', '12.666.777/0001-42');

-- Insere o primeiro registro na tabela departamento (Nicolas)
INSERT INTO JUIZ VALUES
	('111.222.333-44', 'Gerivaldo Nunes', '11223-456', '(55) 9 8888-4444', 'gerivaldoronaldo@endereco.com');

-- Altera departamento para receber como valore default 
-- ALTER TABLE DEPARTAMENTO ALTER NSSGER SET DEFAULT '888665555';

-- Altera departamento para receber nomes unicos em dnome
-- ALTER TABLE DEPARTAMENTO ADD CONSTRAINT DEPARTAMENTO_NOME UNIQUE (DNOME);

-- Cria a tabela locais_depto
CREATE TABLE LOCAIS_DEPTO (
	DNUMERO			INT			NOT NULL, 		
	DLOCALIZACAO	VARCHAR(15)	NOT NULL, 
PRIMARY KEY (DNUMERO, DLOCALIZACAO),
FOREIGN KEY (DNUMERO) REFERENCES DEPARTAMENTO (DNUMERO) ON DELETE CASCADE
);

-- Altera projeto para receber nomes unicos em pnome
ALTER TABLE PROJETO ADD CONSTRAINT PROJETO_NOME UNIQUE (PNOME);

-- Cria a tabela trabalha_em
CREATE TABLE TRABALHA_EM (
	NSSEMP		CHAR(9)			NOT NULL, 
	PNRO		INT				NOT NULL, 
	HORAS		DECIMAL(3, 1)	NOT NULL, 
PRIMARY KEY (NSSEMP, PNRO), 
FOREIGN KEY (NSSEMP) REFERENCES EMPREGADO (NSS) ON DELETE CASCADE, 
FOREIGN KEY (PNRO) REFERENCES PROJETO (PNUMERO) ON DELETE CASCADE
);

-- Altera na tabela trabalha_em para horas receber valores nulos
ALTER TABLE TRABALHA_EM MODIFY HORAS DECIMAL(3,1) NULL;

-- Cria a tabela dependente
CREATE TABLE DEPENDENTE(
	NSSEMP			CHAR(9)		NOT NULL, 
	NOMEDEPENDENTE	VARCHAR(15)	NOT NULL, 
	SEXO			CHAR				, 
	DATANIV			DATE				, 
	RELACAO			VARCHAR(8)			, 
PRIMARY KEY (NSSEMP, NOMEDEPENDENTE), 
FOREIGN KEY (NSSEMP) REFERENCES EMPREGADO (NSS)
);

-- Mostra as tabelas criadas
SHOW TABLES;

-- Mostra a descrição da tabela empregado
DESCRIBE EMPREGADO;

-- Mostra a descrição da tabela departamento
DESCRIBE DEPARTAMENTO;

-- Mostra a descrição da tabela locais_depto
DESCRIBE LOCAIS_DEPTO;

-- Mostra a descrição da tabela projeto
DESCRIBE PROJETO;

-- Mostra a descrição da tabela trabalha_em
DESCRIBE TRABALHA_EM;

-- Mostra a descrição da tabela dependente
DESCRIBE DEPENDENTE;

