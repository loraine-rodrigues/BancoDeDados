-- CRUD DE FUNCIONÁRIOS


-- Procedure buscar funcionarios por cd--
USE `dpto_projeto`;
DROP procedure IF EXISTS `buscarDependente`;

DELIMITER $$
USE `dpto_projeto`$$
CREATE PROCEDURE `buscarDependente` ()
BEGIN
    SELECT * FROM dependente;
END$$

DELIMITER ;

-- Procedure excluir funcionario por cpf
USE `dpto_projeto`;
DROP procedure IF EXISTS `excluirDependente`;

DELIMITER $$
USE `dpto_projeto`$$
CREATE PROCEDURE `excluirDependente` (IN cd int(11))
BEGIN
SET foreign_key_checks = 0;
DELETE FROM dependente WHERE cd_dependente = cd;

SET foreign_key_checks = 1;  

SET foreign_key_checks = 0;  
DELETE FROM func_dependente WHERE cd_dependente = cd;

SET foreign_key_checks = 1;  

	
END$$

DELIMITER ;

-- Procedure atualizar funcionario por cpf
USE `dpto_projeto`;
DROP procedure IF EXISTS `atualizarDependente`;

DELIMITER $$
USE `dpto_projeto`$$
CREATE PROCEDURE `atualizarDependente` (IN cd int(11), IN nome varchar(50), IN parentesco varchar(60))
BEGIN
	UPDATE dependente
		SET
			nm_dependente	= nome,
            nm_parentesco 	= parentesco
           
            
		WHERE
			cd_dependente = cd;
END$$

-- Procedure de inserir funcionario
USE `dpto_projeto`;
DROP procedure IF EXISTS `inserirDependente`;

DELIMITER $$
USE `dpto_projeto`$$
CREATE PROCEDURE `inserirDependente`  (IN cd int(11), IN nome varchar(50), IN parentesco varchar(60))
BEGIN
	INSERT INTO dependente (cd_dependente, nm_dependente, nm_parentesco)
		values (cd, nome, parentesco); 
END$$

DELIMITER ;