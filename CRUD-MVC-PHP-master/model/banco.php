<?php

require_once("../init.php");
class Banco{

    protected $mysqli;

    public function __construct(){
        $this->conexao();
    }

    private function conexao(){
        $this->mysqli = new mysqli(BD_SERVIDOR, BD_USUARIO , BD_SENHA, BD_BANCO);
    }

    public function setDepartamento($nome,$localizacao){
        $stmt = $this->mysqli->prepare("INSERT INTO dpto (`nm_dpto`, `nm_localizacao`) VALUES (?,?)");
        $stmt->bind_param("sssss",$nome,$localizacao);
         if( $stmt->execute() == TRUE){
            return true ;
        }else{
            return false;
        }

    }

    public function getDepartamento(){
        $result = $this->mysqli->query("SELECT * FROM departamento");
        while($row = $result->fetch_array(MYSQLI_ASSOC)){
            $array[] = $row;
        }
        return $array;

    }

    public function deleteLivro($id){
        if($this->mysqli->query("DELETE FROM `livros` WHERE `nome` = '".$id."';")== TRUE){
            return true;
        }else{
            return false;
        }

    }
    public function pesquisaLivro($id){
        $result = $this->mysqli->query("SELECT * FROM livros WHERE nome='$id'");
        return $result->fetch_array(MYSQLI_ASSOC);

    }
    public function updateLivro($nome,$autor,$quantidade,$preco,$flag,$data,$id){
        $stmt = $this->mysqli->prepare("UPDATE `livros` SET `nome` = ?, `autor`=?, `quantidade`=?, `preco`=?, `flag`=?,`data` = ? WHERE `nome` = ?");
        $stmt->bind_param("sssssss",$nome,$autor,$quantidade,$preco,$flag,$data,$id);
        if($stmt->execute()==TRUE){
            return true;
        }else{
            return false;
        }
    }
}
?>
