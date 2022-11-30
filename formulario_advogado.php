<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inscrição de Advogado</title>
    <link rel="stylesheet" href="style_advo.css">
    <link rel="stylesheet" href="reset.css">
</head>

<body>
    <header>
        <div>
            <h1 id="marca">Advocacia Los Bacanos e Cia</h1>

            <nav>
                <ul>
                    <li><a href="formulario_casos.php">Cadastro de Casos</a></li>
                    <li><a href="formulario_pessoas.php">Cadastro de Pessoas</a></li>
                    <li><a href="formulario_juiz.php">Cadastro de Juiz</a></li>
                </ul>
            </nav>
        </div>
    </header>

    <form action="advogado.php" method="post">
        <div id="dados">
            <label for="oab" class="elemento">Registro OAB *</label>
            <input type="text" id="oab" name="oab" placeholder="UF000000A" required>
            <br>
            <h2 id="palavra">Selecione o Ramo</h2>

            <div id="radio">
                <input type="radio" id="homi" name="idramo" value="R1">
                <label for="homi" class="ramo">Homicidio</label>
                <input type="radio" id="dir" name="idramo" value="R2">
                <label for="dir" class="ramo">Direito Digital</label>
                <input type="radio" id="comp" name="idramo" value="R3">
                <label for="comp" class="ramo">Compliance</label>
                <br>
                <input type="radio" id="cau" name="idramo" value="R4">
                <label for="cau" class="ramo">Causas Pequenas</label>
                <input type="radio" id="arbi" name="idramo" value="R5">
                <label for="arbi" class="ramo">Arbitragem</label>
            </div>

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
            <label for="email" class="elemento">E-mail</label>
            <input type="email" id="email" name="email" placeholder="correioeletronico@fulanodetal.com">
            <br>
            <label for="telefone" class="elemento">Telefone</label>
            <input type="tel" id="telefone" name="telefone" placeholder="(XX) X XXXX-XXXX">
            <br>
            <label for="endereco" class="elemento">Endereço</label>
            <input type="text" id="endereco" name="endereco" placeholder="rua da senhora idosa, 666">
            <br>

            <p>* Obrigatório o Prenchimento</p>
            <button type="submit" name="submit-advo">Enviar Formulário</button>
        </div>
    </form>
</body>
</html>