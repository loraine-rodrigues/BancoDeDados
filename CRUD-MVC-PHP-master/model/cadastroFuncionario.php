<?php
require_once("banco.php");

class Cadastro extends Banco {
    private $cpf;
    private $nomeFunc;
    private $endereco;
    private $telefone;
    private $salario;
   

    //Metodos Set
    public function setCPF($string){
        $this->cpf= $string;
    }
    public function setNomeFunc($string){
        $this->nomeFunc = $string;
    }
    public function setEndereco($string){
        $this->endereco= $string;
    }
    public function setTelefone($string){
        $this->telefone= $string;
    }
    public function setSalario($string){
        $this->salario= $string;
    }
    
    //Metodos Get
    public function getCPF(){
        return $this->cpf;
    }
    public function getNomeFunc(){
        return $this->nomeFunc;
    }
    public function getEnedereco(){
        return $this->endereco;
    }
    public function getTelefone(){
        return $this->telefone;
    }
    public function getSalario(){
        return $this->salario;
    }
    


    public function incluir(){
        return $this->setDepartamento($this->getCPF(),$this->getNomeFunc(),$this->getEnedereco(),$this->getTelefone(), $this->getSalario());
    }
}
?>
