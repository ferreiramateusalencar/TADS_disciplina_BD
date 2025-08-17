/*
Discente: Mateus Alencar Ferreira
Polo: Juazeiro (2)
Tutor: Nicholas Moura
*/

-- Código SQL da consulta 6

SELECT problema FROM clinica.paciente

WHERE sexo = 'F' AND TIMESTAMPDIFF(YEAR, dt_nasc, CURDATE()) >= 50

ORDER BY problema;

-- Fim do Código SQL da consulta 6

-- Código SQL da consulta 6 (Alternativo, com criação de função)

DELIMITER $$

CREATE FUNCTION calcular_idade(data_nasc DATE)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE idade INT;
    SET idade = TIMESTAMPDIFF(YEAR, data_nasc, CURDATE());
    
    IF (DATE_FORMAT(CURDATE(), '%m%d') < DATE_FORMAT(data_nasc, '%m%d')) THEN
        SET idade = idade - 1;
    END IF;
    
    RETURN idade;
END$$

DELIMITER ;



SELECT problema FROM clinica.paciente

WHERE sexo = 'F' AND calcular_idade(dt_nasc) >= 50

-- Fim do Código SQL da consulta 6 (Alternativo, com criação de função)
