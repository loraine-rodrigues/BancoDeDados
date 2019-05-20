<!DOCTYPE HTML>
<html>
<?php include("head.php") ?>

<body>
    <?php include("menu.php") ?>
    <div class="row">
        <form method="post" action="../controller/ControllerFuncionario.php" id="form" name="form" onsubmit="validar(document.form); return false;" class="col-10">
            <div class="form-group">
            <input class="form-control" type="text" id="cpf" name="cpf" placeholder="CPF" required>
                <input class="form-control" type="text" id="nomeFunc" name="nomeFunc" placeholder="Nome do Funcionário" required autofocus>
                <input class="form-control" type="text" id="endereco" name="endereco" placeholder="Endereço" required>
                <input class="form-control" type="text" id="telefone" name="telefone" placeholder="Telefone" required>
                <input class="form-control" type="text" id="salario" name="salario" placeholder="Salário" required>
    
            </div>
            <div class="form-group">
                <button type="submit" class="btn btn-success" id="cadastrar">Cadastrar</button>
            </div>
        </form>
    </div>

    <script language="javascript" type="text/javascript">
      
            formulario.submit();
        }

    </script>
</body>

</html>
