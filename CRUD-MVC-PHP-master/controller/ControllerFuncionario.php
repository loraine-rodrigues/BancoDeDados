<?php
require_once("../model/cadastroFuncionario.php");
class cadastroController{

    private $cadastro;

    public function __construct(){
        $this->cadastro = new Cadastro();
        $this->incluir();
    }

    private function incluir(){
        $this->cadastro->setCPF($_POST['cpf']);
        $this->cadastro->setNomeFunc($_POST['nomeFunc']);
        $this->cadastro->setEndereco($_POST['endereco']);
        $this->cadastro->setTelefone($_POST['telefone']);
        $this->cadastro->setSalario($_POST['salario']);

       
        $result = $this->cadastro->incluir();
        if($result >= 1){
            echo "<script>alert('Registro incluído com sucesso!');document.location='../view/cadastroFunc.php'</script>";
        }else{
            echo "<script>alert('Erro ao gravar registro!, verifique se o livro não está duplicado');history.back()</script>";
        }
    }
}
new cadastroController();
