<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inscrição de Pessoas</title>
    <link rel="stylesheet" href="style_pess.css">
    <link rel="stylesheet" href="reset.css">
</head>

<body>
    <header>
        <div>
            <h1 id="marca">Advocacia Los Bacanos e Cia</h1>

            <nav>
                <ul>
                    <li><a href="formulario_advogado.php">Cadastro de Advogado</a></li>
                    <li><a href="formulario_juiz.php">Cadastro de Juiz</a></li>
                    <li><a href="formulario_casos.php">Cadastro de Casos</a></li>
                </ul>
            </nav>
        </div>
    </header>

    <form action="pessoas.php" method="post">
        <div id="dados">
            <label for="cpf" class="elemento">CPF *</label>
            <input type="text" id="cpf" name="cpf" placeholder="000.111.222-33" required>
            <br>
            <label for="pnome" class="elemento">Primeiro nome *</label> 
            <input type="text" id="pnome" name="pnome" placeholder="Fulano" required>
            <br>
            <label for="mnome" class="elemento">Sigla do nome do meio</label>
            <input type="text" id="mnome" name="mnome" placeholder="D">
            <br>
            <label for="snome" class="elemento">Sobrenome *</label>
            <input type="text" id="snome" name="snome" placeholder="Tal" required>
            <br>
            <label for="cep" class="elemento">CEP</label>
            <input type="text" id="cep" name="cep" placeholder="00000-111">
            <br>
            <label for="email" class="elemento">E-mail</label>
            <input type="email" id="email" name="email" placeholder="correioeletronico@fulanodetal.com">
            <br>
            <label for="telefone" class="elemento">Telefone</label>
            <input type="tel" id="telefone" name="telefone" placeholder="(XX) X XXXX-XXXX">
            <br>
            <label for="endereco" class="elemento">Endereço</label>
            <input type="text" id="endereco" name="endereco" placeholder="rua da senhora idosa, 666">
            <br>

            <label for="tipo" class="elemento">Deseja se cadastrar como?</label>
            <div id="radio">
                <input type="radio" id="tipo" name="tipo" value="1">
                <label for="autor" class="tipo">Autor</label>
                <input type="radio" id="tipo" name="tipo" value="2">
                <label for="reu" class="tipo">Réu</label>
                <input type="radio" id="tipo" name="tipo" value="3">
                <label for="juiz" class="tipo">Juiz</label>
            </div>
            <br>
            <p>* Obrigório o Preenchimento</p>
            <button type="submit" name="submit-pess">Enviar Formulário</button>
        </div>
    </form>
</body>
</html>