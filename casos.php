<?php    
    
$dbhost = "localhost";
$dbuser = "root";
$dbpass = "";
$db = "advocacia";

$conn = mysqli_connect($dbhost, $dbuser, $dbpass, $db);

if(isset($_POST['submit-caso'])){

    if(!empty($_POST['nprocesso']) && !empty($_POST['idjuiz']) && !empty($_POST['ano']) && !empty($_POST['reu'])){
        $nprocesso = $_POST['nprocesso'] ;
        $idjuiz = $_POST['idjuiz'] ;
        $ano = $_POST['ano'] ;
        $reu = $_POST['reu'] ;
        $comarca = $_POST['comarca'] ;
        $vara = $_POST['vara'] ;

        $query = "INSERT INTO caso(nprocesso, idjuiz, ano, reu, comarca, vara) VALUES('$nprocesso', '$idjuiz', '$ano', '$reu', '$comarca', '$vara')" ;

        $run = mysqli_query($conn, $query) or die("Connect failed: %s\n". $conn -> error);

        if($run){
            echo "Formulário enviado";
        }
        else{
            echo "Erro";
        }
        }
}
?>