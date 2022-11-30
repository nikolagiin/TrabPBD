<?php    
    
$dbhost = "localhost";
$dbuser = "root";
$dbpass = "";
$db = "advocacia";

$conn = mysqli_connect($dbhost, $dbuser, $dbpass, $db);

if(isset($_POST['submit-advo'])){

    if(!empty($_POST['oab']) && !empty($_POST['pnome']) && !empty($_POST['snome'])){
        $oab = $_POST['oab'] ;
        $ramo = $_POST['idramo'] ;
        $pnome = $_POST['pnome'] ;
        $mnome = $_POST['mnome'] ;
        $snome = $_POST['snome'] ;
        $email = $_POST['email'] ;
        $telefone = $_POST['telefone'] ;
        $endereco = $_POST['endereco'] ;

        $query = "INSERT INTO advogado(oab, idramo, pnome, mnome, snome, telefone, email, endereco) VALUES('$oab', '$ramo', '$pnome', '$mnome', '$snome', '$telefone', '$email', '$endereco')" ;

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