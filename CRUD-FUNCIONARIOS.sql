-- CRUD DE FUNCIONÁRIOS

-- Procedure buscar todos os funcionarios
USE `dpto_projeto`;
DROP procedure IF EXISTS `buscarFuncionarios`;

DELIMITER $$
USE `dpto_projeto`$$
CREATE PROCEDURE `buscarFuncionarios` ()
BEGIN
	SELECT * FROM func;
END$$

DELIMITER ;

-- Procedure buscar funcionarios por cpf--
USE `dpto_projeto`;
DROP procedure IF EXISTS `buscarFuncionario`;

DELIMITER $$
USE `dpto_projeto`$$
CREATE PROCEDURE `buscarFuncionario` (IN cd char(11))
BEGIN
    SELECT * FROM func WHERE cd_func = cd;
END$$

DELIMITER ;

-- Procedure excluir funcionario por cpf
USE `dpto_projeto`;
DROP procedure IF EXISTS `excluirFuncionario`;

DELIMITER $$
USE `dpto_projeto`$$
CREATE PROCEDURE `excluirFuncionario` (IN cd char(11))
BEGIN
	DELETE FROM func WHERE cd_func = cd;
END$$

DELIMITER ;

-- Procedure atualizar funcionario por cpf
USE `dpto_projeto`;
DROP procedure IF EXISTS `atualizarFuncionario`;

DELIMITER $$
USE `dpto_projeto`$$
CREATE PROCEDURE `atualizarFuncionario` (IN cd char(11), IN nome varchar(50), IN endereco varchar(60), IN telefone char(11), IN salario decimal(9,2))
BEGIN
	UPDATE func
		SET
			nm_func	= nome,
            nm_endereco 	= endereco,
            cd_telefone		= telefone,
            vl_salario		= salario
            
		WHERE
			cd_func = cd;
END$$

-- Procedure de inserir funcionario
USE `dpto_projeto`;
DROP procedure IF EXISTS `inserirFuncionario`;

DELIMITER $$
USE `dpto_projeto`$$
CREATE PROCEDURE `inserirFuncionario` (IN cd char(11), IN nome varchar(50), IN endereco varchar(60), IN telefone char(11), IN salario decimal(9,2))
BEGIN
	INSERT INTO func (cd_func, nm_func, nm_endereco, cd_telefone, vl_salario)
		values (cd, nome, endereco, telefone, salario); 
END$$

DELIMITER ;