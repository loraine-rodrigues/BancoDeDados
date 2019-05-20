-- CRUD DE DPTO

-- Procedure buscar todos os funcionarios
USE `dpto_projeto`;
DROP procedure IF EXISTS `buscarDPTO`;

DELIMITER $$
USE `dpto_projeto`$$
CREATE PROCEDURE `buscarDPTO` ()
BEGIN
	SELECT * FROM dpto;
END$$

DELIMITER ;


USE `dpto_projeto`;
DROP procedure IF EXISTS `excluirFuncionario`;

DELIMITER $$
USE `dpto_projeto`$$
CREATE PROCEDURE `excluirDPTO` (IN cd int(11))
BEGIN
	DELETE FROM dpto WHERE cd_dpto= cd;
END$$

DELIMITER ;

-- Procedure atualizar
USE `dpto_projeto`;
DROP procedure IF EXISTS `atualizarDPTO`;

DELIMITER $$
USE `dpto_projeto`$$
CREATE PROCEDURE `atualizarDPTO` (IN cd char(11), IN dpto varchar(50), IN localizacao varchar(60))
BEGIN
	UPDATE dpto
		SET
			nm_dpto	= dpto,
            nm_localizacao 	= localizacao
           
            
		WHERE
			cd_dpto = cd;
END$$

-- Procedure de inserir funcionario
USE `dpto_projeto`;
DROP procedure IF EXISTS `inserirDPTO`;

DELIMITER $$
USE `dpto_projeto`$$
CREATE PROCEDURE `inserirDPTO` (IN cd char(11), IN dpto varchar(50), IN localizacao varchar(60))
BEGIN
	INSERT INTO dpto (cd_dpto, nm_dpto, nm_localizacao)
		values (cd, dpto, localizacao); 
END$$

DELIMITER ;