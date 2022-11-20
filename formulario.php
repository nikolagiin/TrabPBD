<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inscrição do Caso</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="reset.css">
</head>

<body>
    <header>
        <div>
            <h1 id="marca">Advocacia Los Bacanos e Cia</h1>

            <nav>
                <ul>
                    <li><a href="#">Cadastro de Casos</a></li>
                    <li><a href="#">Cadastro de Advogado</a></li>
                    <li><a href="#">Cadastro de Juiz</a></li>
                </ul>
            </nav>
        </div>
    </header>

    <form action="advocacia.php" method="post">
        <div id="radio">
            <input type="radio" id="advo" name="selecao" value="Advogado" checked>
            <label for="selecao" >teste</label>
            <input type="radio" id="juiz" name="selecao" value="Juiz">
            <label for="selecao">juiz</label>
            <input type="radio" id="reu" name="selecao" value="Réu">
            <label for="selecao">réu</label>
        </div>
        
        <div id="dados">
            <label for="oab" class="elemento">Registro OAB</label>
            <br>
            <input type="text" id="oab" name="oab" placeholder="UF000000A">
            <br>
            <label for="ramo" class="elemento">Ramo</label>
            <br>
            <input type="text" id="ramo" name="ramo" placeholder="Homicidio">
            <br>
            <label for="nome" class="elemento">Nome</label>
            <br>
            <input type="text" id="nome" name="nome" placeholder="Fulano">
            <br>
            <label for="email" class="elemento">Email</label>
            <br>
            <input type="email" id="email" name="email" placeholder="correioeletronico@fulanodetal.com">
            <br>
            <label for="telefone" class="elemento">Telefone</label>
            <br>
            <input type="tel" id="telefone" name="telefone" placeholder="(XX) X XXXX-XXXX">
            <br>
            <label for="endereco" class="elemento">Endereço</label>
            <br>
            <input type="text" id="endereco" name="endereco" placeholder="rua do caralho voador, 666">
            <br>
            <label for="cnpj" class="elemento">CNPJ</label>
            <br>
            <input type="text" id="cnpj" name="cnpj" placeholder="000000.0000-11">
            <br>
            <input type="submit" name="submit" value="enviar">
        </div>
    </form>
</body>
</html>