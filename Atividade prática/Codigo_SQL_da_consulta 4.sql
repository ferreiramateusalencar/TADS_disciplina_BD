/*
Atividade Prática
Discente: Mateus Alencar Ferreira
Polo: Juazeiro (2)
Tutor: Nicholas Moura
*/

-- Código SQL da consulta 4

SELECT nomep, 
	   dt_nasc, 
       sexo 
FROM clinica.paciente

WHERE problema LIKE "Cardiaco"

ORDER BY nomep ;

-- Fim do Código SQL da consulta 2