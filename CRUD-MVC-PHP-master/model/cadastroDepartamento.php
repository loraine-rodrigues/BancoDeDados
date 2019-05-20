<?php
require_once("banco.php");

class Cadastro extends Banco {

    private $nome;
    private $localizacao;
   

    //Metodos Set
    public function setNome($string){
        $this->nome = $string;
    }
    public function setLocalizacao($string){
        $this->localizacao = $string;
    }
    
    //Metodos Get
    public function getNome(){
        return $this->nome;
    }
    public function getLocalizacao(){
        return $this->localizacao;
    }
    


    public function incluir(){
        return $this->setDepartamento($this->getNome(),$this->getLocalizacao());
    }
}
?>
