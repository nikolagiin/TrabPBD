<?php    
    
$dbhost = "localhost";
$dbuser = "root";
$dbpass = "";
$db = "advocacia";

$conn = mysqli_connect($dbhost, $dbuser, $dbpass, $db);

if(isset($_POST['submit'])){

    if(!empty($_POST['oab']) && !empty($_POST['ramo']) && !empty($_POST['nome']) && !empty($_POST['email']) && !empty($_POST['telefone']) && !empty($_POST['endereco']) && !empty($_POST['cnpj'])){
        $oab = $_POST['oab'] ;
        $ramo = $_POST['ramo'] ;
        $nome = $_POST['nome'] ;
        $email = $_POST['email'] ;
        $telefone = $_POST['telefone'] ;
        $endereco = $_POST['endereco'] ;
        $cnpj = $_POST['cnpj'] ;

        $query = "insert into advogado(oab, ramo, nome, telefone, email, endereco, cnpj) values('$oab', '$ramo', '$nome', '$telefone', '$email', '$endereco', '$cnpj')" ;

        $run = mysqli_query($conn, $query) or die("Connect failed: %s\n". $conn -> error);

        if($run){
            echo "Formulário enviado CARALHO";
        }
        else{
            echo "NÃO FOI PORRA VAI SE FUDEEEEE";
        }
        }
        else{
            echo "PREENCHE TUDO PORRA";
        }
}
?>