<!DOCTYPE HTML>
<html>
<?php include("head.php") ?>

<body>
    <?php include("menu.php") ?>
    <div class="row">
        <form method="post" action="../controller/ControllerCadDep.php" id="form" name="form" onsubmit="validar(document.form); return false;" class="col-10">
            <div class="form-group">
                <input class="form-control" type="text" id="nome" name="nome" placeholder="Nome do Departamento" required autofocus>
                <input class="form-control" type="text" id="localizacao" name="localizacao" placeholder="Localização" required>
    
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
