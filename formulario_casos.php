<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inscrição do Caso</title>
    <link rel="stylesheet" href="style_caso.css">
    <link rel="stylesheet" href="reset.css">
</head>

<body>
    <header>
        <div>
            <h1 id="marca">Advocacia Los Bacanos e Cia</h1>

            <nav>
                <ul>
                    <li><a href="formulario_pessoas.php">Cadastro de Pessoas</a></li>
                    <li><a href="formulario_advogado.php">Cadastro de Advogado</a></li>
                    <li><a href="formulario_juiz.php">Cadastro de Juiz</a></li>
                </ul>
            </nav>
        </div>
    </header>

    <form action="casos.php" method="post">
        
        <div id="dados">
            <label for="nprocesso" class="elemento">Número do Processo *</label>
            <input type="text" id="nprocesso" name="nprocesso" placeholder="NNNNNNN-DD.AAAA.J.TR.OOOO" required>
            <br>
            <label for="idjuiz" class="elemento">CPF do Juiz *</label>
            <input type="text" id="idjuiz" name="idjuiz" placeholder="000.111.222-33" required>
            <br>
            <label for="ano" class="elemento">Ano do Processo *</label>
            <input type="text" id="ano" name="ano" placeholder="2022" required>
            <br>
            <label for="reu" class="elemento">Primeiro nome do Réu *</label>
            <input type="text" id="reu" name="reu" placeholder="Fulano" required>
            <br>
            <label for="comarca" class="elemento">Comarca</label>
            <input type="text" id="comarca" name="comarca" placeholder="Comarca Aquela">
            <br>
            <label for="vara" class="elemento">Vara</label>
            <input type="text" id="vara" name="vara" placeholder="Tribunal do Sul">
            <br>

            <p>* Obrigatório o Prenchimento</p>
            <button type="submit" name="submit-caso">Enviar Formulário</button>
        </div>
    </form>
</body>
</html>