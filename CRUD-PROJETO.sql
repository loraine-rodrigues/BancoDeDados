-- CRUD DE FUNCIONÁRIOS


-- Procedure buscar funcionarios por cd--
USE `dpto_projeto`;
DROP procedure IF EXISTS `buscarProjeto`;

DELIMITER $$
USE `dpto_projeto`$$
CREATE PROCEDURE `buscarProjeto` ()
BEGIN
	SELECT * FROM projeto;
END$$

DELIMITER ;


USE `dpto_projeto`;
DROP procedure IF EXISTS `inserirProjeto`;

DELIMITER $$
USE `dpto_projeto`$$
CREATE PROCEDURE `inserirProjeto` (IN codigo int(11), IN projeto varchar(60), IN tipo varchar(25), IN verba varchar(25), IN cd_cpf_func int(11))
BEGIN
	INSERT INTO projeto (cd_projeto, nm_projeto, nm_tipo, nm_verbba,cd_cpf_func) 
		VALUES (codigo,projeto, tipo, verba,cd_cpf_func);
END$$

DELIMITER $$
USE `dpto_projeto`$$
CREATE PROCEDURE `atualizarProjeto` (IN cd int(11), IN projeto varchar(50), IN tipo varchar(60), IN verbba varchar(25), IN cd_cpf_func int(11))
BEGIN
	UPDATE projeto
		SET
			nm_projeto	= projeto,
            nm_tipo 	= tipo,
            nm_verbba	= verbba,
            cd_cpf_func		= cd_cpf_func
            
		WHERE
			cd_projeto = cd;
END$$
DELIMITER $$
USE `dpto_projeto`$$
CREATE PROCEDURE `excluirProjeto` (IN cd int(11))
BEGIN
SET foreign_key_checks = 0;
DELETE FROM projeto WHERE cd_projeto = cd;

SET foreign_key_checks = 1;  

SET foreign_key_checks = 0;  
DELETE FROM func_projeto WHERE cd_func = cd;

SET foreign_key_checks = 1;  
	
END$$

drop procedure excluirProjeto;