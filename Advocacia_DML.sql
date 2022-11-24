INSERT INTO ADVOGADO -- OAB tem valor unico
	VALUES ('UF000000A', 'R1', 'Jorginho', 'M', 'Pereira', '(53) 9 1111-2222', 'correiodoJorge@borrachinha.com', 'Av. Bonita Eh Tu, S2'),
		   ('RS089723C', 'R2', 'Roberto', NULL, 'Silva', '(52) 93211-5469', 'emaildele@testo.com', 'Rua da Planta, 4820'),
           ('SP231423F', 'R3', 'Antônio', 'G', 'Ferreira', '55975642314', 'eletronicocorreio@invertido.com', 'Rua de Asfalto, 98'),
           ('MG322241H', 'R4', 'Little', NULL, 'Pants', NULL, 'toolittlepants@jeans.com', 'Bainha de Calça, 382'),
           ('RJ762084X', NULL, 'Alexândi', NULL, 'ROLÊS', '53 95439-2147', NULL, 'Rua da Ceva, 1231'),
           ('AM231425H', 'R5', 'Stevan', 'C', 'Kavoz', NULL, NULL, 'Kotchovisk, 9823');
           

INSERT INTO RAMO
	VALUES ('R1', 'Homicidio'),
		   ('R2', 'Direito Digital'),
           ('R3', 'Compliance'),
           ('R4', 'Causas Pequenas'),
           ('R5', 'Arbitragem');
           


INSERT INTO PESSOAS -- CPF tem valor unico e é referenciado por AUTOR, REU, JUIZ, TEM e JULGAM
	VALUES ('000.111.222-42', 'Joana', NULL, 'Silva', '22233-888', NULL, NULL, 'Rua de Senhorinha, 666'),
		   ('111.222.333-44', 'Joao', 'S', 'Silva', '99988-666', '(55) 9 8543-6952', 'minieletrocorreio@dominio.com', 'Rua de Senhorinha, 666'),
	       ('222.111.333-32', 'Seu', NULL, 'Pereira','23145-000', NULL, 'email@fazeroq.ne', 'Av. da Catuaba, 38'),
           ('564.258.963-65', 'Rogério', 'A', 'Pestilento', '58769-639', '26 9 8754-9696', NULL, 'Rua da Brincaidera, 222'),
           ('90237630095', 'Jorge', NULL, 'Rubber', NULL, '69984745623', 'jorgedaborracharia@email.com', 'Rubber Street, 111'),
           ('526.050.590-57', 'Deividi', 'B', 'Binario', '87985-987', '(00) 99832-2312', 'deividi01000010@codigo.com', 'Matrix, 124');
    
    
INSERT INTO AUTOR -- CPFAUTOR referencia PESSOAS(CPF)
	VALUES ('111.222.333-44', 'Joao', 'S', 'Silva', '99088-229', '(55) 9 8543-6952', 'minieletrocorreio@dominio.com', 'Rua de Senhorinha, 666'),
		   ('564.258.963-65', 'Rogério', 'A', 'Pestilento', '58769-639', '26 9 8754-9696', NULL, 'Rua da Brincaidera, 222');
    
    

INSERT INTO REU -- CPFREU referencia PESSOAS(CPF)
	VALUES ('000.111.222-42', 'Joana', NULL, 'Silva', '22233-888', NULL, NULL, 'Rua de Senhorinha, 666'),
		   ('526.050.590-57', 'Deividi', 'B', 'Binario', '87985-987', '(00) 99832-2312', 'deividi01000010@codigo.com', 'Matrix, 124');


INSERT INTO JUIZ  -- CPFJUIZ referencia PESSOAS(CPF)
	VALUES ('222.111.333-32', 'Seu', NULL, 'Pereira', '88223-123', NULL, 'email@fazeroq.ne', 'Av. da Catuaba, 38'),
		   ('90237630095', 'Jorge', NULL, 'Rubber', NULL, '69984745623', 'jorgedaborracharia@email.com', 'Rubber Street, 111');
           
UPDATE PESSOAS SET EMAIL='joaninha@bela.com' WHERE CPF='000.111.222-42';
UPDATE PESSOAS SET TELEFONE='(55) 9 8754-9999' WHERE CPF='222.111.333-32';

UPDATE REU SET EMAIL='joaninha@bela.com' WHERE CPFREU='000.111.222-42';
UPDATE JUIZ SET TELEFONE='(55) 9 8754-9999' WHERE CPFJUIZ='222.111.333-32';

INSERT INTO CASO
	VALUES ('6272515-42.2022.2.00.6713', '90237630095', '2012', 'Joana', 'Comarca PBD', 'Tribunal Regional');
    
UPDATE CASO SET ANO='2012' WHERE NPROCESSO='6272515-42.2022.2.00.6713';

INSERT INTO TEM 
	VALUES ('111.222.333-44');
    
INSERT INTO JULGAM
	VALUES ('222.111.333-32', '19/08/2000', 'Morte');
    
UPDATE JULGAM SET DIAMESANO='2000-08-19' WHERE CPF='222.111.333-32';

INSERT INTO TRABALHA_EM
	VALUES('AM231425H', '6272515-42.2022.2.00.6713');


SELECT * FROM ADVOGADO AS A;
SELECT * FROM PESSOAS;
SELECT * FROM AUTOR;
SELECT * FROM REU;
SELECT * FROM JUIZ;
SELECT * FROM RAMO AS R;
SELECT * FROM CASO;
SELECT * FROM TEM;
SELECT * FROM JULGAM;
SELECT * FROM TRABALHA_EM;

SELECT A.PNOME, R.RAMO FROM ADVOGADO AS A CROSS JOIN RAMO AS R;
SELECT J.CPFJUIZ, P.PNOME FROM JUIZ AS J INNER JOIN PESSOAS AS P ON (J.CPFJUIZ = P.CPF);
SELECT A.PNOME, R.RAMO FROM ADVOGADO AS A LEFT OUTER JOIN RAMO AS R ON (A.IDRAMO = R.ID);
SELECT A.PNOME, R.RAMO FROM ADVOGADO AS A RIGHT OUTER JOIN RAMO AS R ON (A.IDRAMO = R.ID);
SELECT A.IDRAMO, R.RAMO FROM ADVOGADO AS A FULL OUTER JOIN RAMO AS R ON (A.IDRAMO = R.ID);
