# Trabalho de Projeto de Banco de Dados


Advogado(Registro OAB, Ramo, Nome, Telefone, E-mail, Endereço, CNPJ)
	CNPJ referencia advocacia

Caso(NºProcesso, Ano, Réu, Comarca, Vara, CPFJuiz)
	idJuiz referencia CPFJuiz (CPF)

Trabalha(RegistroOAB, NºProcesso)
	RegistroOAB referencia Advogado
	NºProcesso referencia Caso

Pessoas(CPF, Nome, CEP, Telefone, E-mail)

Autor(CPFAutor, Nome, CEP, Telefone, E-mail)
	CPFAutor referencia Pessoas (CPF)

Réu(CPFRéu, Nome, CEP, Telefone, E-mail)
	CPFRéu referencia Pessoas (CPF)

Juiz(CPFJuiz, Nome, CEP, Telefone, E-mail)
	CPFJuiz  referencia Pessoas (CPF)

Julgam(CPF, Data, Sentença)
	CPF referencia Pessoas (CPF)

Tem(CPF)
	CPF referencia Pessoas
