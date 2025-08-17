/*
Atividade Prática
Discente: Mateus Alencar Ferreira
Polo: Juazeiro (2)
Tutor: Nicholas Moura
*/

-- Código SQL da consulta 2

SELECT nomep,
	   dt_nasc
FROM clinica.paciente

WHERE nomep LIKE "MARIA%" 

ORDER BY dt_nasc ;

-- Fim do Código SQL da consulta 2
