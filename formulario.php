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

    <form>
        <div id="radio">
            <input type="radio" id="advo" name="selecao" value="Advogado" checked>
            <label for="selecao" >teste</label>
            <input type="radio" id="juiz" name="selecao" value="Juiz">
            <label for="selecao">juiz</label>
            <input type="radio" id="reu" name="selecao" value="Réu">
            <label for="selecao">réu</label>
        </div>
        
        <label for="nome" class="elemento">Nome</label>
        <br>
        <input type="text" id="nome" name="nome" placeholder="Fulano">
        <br>
        <label for="sobrenome" class="elemento">Sobrenome</label>
        <br>
        <input type="text" id="sobrenome" name="sobrenome" placeholder="DeTal">
        <br>
        <label for="email" class="elemento">Email</label>
        <br>
        <input type="email" id="email" name="email" placeholder="correioeletronico@fulanodetal.com">
        <br>
        <label for="telefone" class="elemento">Telefone</label>
        <br>
        <input type="tel" id="telefone" name="telefone" placeholder="(XX) X XXXX-XXXX">
        <br>
        <input type="submit" value="Enviar">
    </form>
</body>
</html>