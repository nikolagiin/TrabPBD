<?php    
    
$dbhost = "localhost";
$dbuser = "root";
$dbpass = "";
$db = "advocacia";

$conn = mysqli_connect($dbhost, $dbuser, $dbpass, $db);

if(isset($_POST['submit-pess'])){

    {
        $cpf = $_POST['cpf'] ;
        $pnome = $_POST['pnome'] ;
        $mnome = $_POST['mnome'] ;
        $snome = $_POST['snome'] ;
        $cep = $_POST['cep'] ;
        $email = $_POST['email'] ;
        $telefone = $_POST['telefone'] ;
        $endereco = $_POST['endereco'] ;
        $tipo = $_POST['tipo'] ;

        $query = "INSERT INTO pessoas(cpf, pnome, mnome, snome, cep, telefone, email, endereco) VALUES('$cpf', '$pnome', '$mnome', '$snome', '$cep', '$telefone', '$email', '$endereco')" ;

        $run = mysqli_query($conn, $query) or die("Connect failed: %s\n". $conn -> error);

        if($run){
            echo "Formulário enviado";
        }
        else{
            echo "Erro";
        }
    

        switch($tipo){
            case 1:

                $query_autor= "INSERT INTO autor(cpfautor, pnome, mnome, snome, cep, telefone, email, endereco) VALUES('$cpf', '$pnome', '$mnome', '$snome', '$cep', '$telefone', '$email', '$endereco')" ;

                $run_autor = mysqli_query($conn, $query_autor) or die("Connect failed: %s\n". $conn -> error);

                if($run_autor){
                    echo "\nTransferido para Autor";
                }
            break;
            
            case 2:

                $query_reu = "INSERT INTO reu(cpfreu, pnome, mnome, snome, cep, telefone, email, endereco) VALUES('$cpf', '$pnome', '$mnome', '$snome', '$cep', '$telefone', '$email', '$endereco')" ;
        

                $run_reu = mysqli_query($conn, $query_reu) or die("Connect failed: %s\n". $conn -> error);

                if($run_reu){
                    echo "\nTransferido para Réu";
                }
            break;

            case 3: 

                $query_juiz = "INSERT INTO juiz(cpfjuiz, pnome, mnome, snome, cep, telefone, email, endereco) VALUES('$cpf', '$pnome', '$mnome', '$snome', '$cep', '$telefone', '$email', '$endereco')" ;

                $run_juiz = mysqli_query($conn, $query_juiz) or die("Connect failed: %s\n". $conn -> error);

                if($run_juiz){
                    echo "\nTransferido para Juiz";
                }
            break;
        }
        
}
}
?>