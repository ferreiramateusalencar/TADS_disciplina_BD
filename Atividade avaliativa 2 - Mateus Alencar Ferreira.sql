/*
Discente: Mateus Alencar Ferreira
Polo: Juazeiro (2)
Tutor: Nicholas Moura
*/

-- Código SQL da consulta 1

SELECT codc,
	   codp,
       dt_consulta,
       valor_consulta
 FROM clinica.consulta
 
WHERE codm IN ('1', '2')

ORDER BY codc

-- Fim do Código SQL da consulta 1


-- Código SQL da consulta 2

SELECT codc, 
	   codm,
       codp
FROM clinica.consulta

WHERE dt_consulta BETWEEN '2017-06-10' AND '2017-07-10'

-- Fim do Código SQL da consulta 2

-- Código SQL da consulta 3


SELECT nomem FROM clinica.medico

WHERE sexo = 'M' AND dt_nasc BETWEEN '1970-01-01' AND '1979-12-31'

ORDER BY nomem


-- Fim do Código SQL da consulta 3

-- Código SQL da consulta 4

SELECT nomem,
	   especialidade,
       dt_nasc 
FROM clinica.medico

WHERE especialidade LIKE "Neuro%"

-- Fim do Código SQL da consulta 4

-- Código SQL da consulta 5

SELECT *
FROM clinica.paciente

WHERE problema ="Cardiaco" AND sexo = 'M'

ORDER BY nomep

-- Fim do Código SQL da consulta 5

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
