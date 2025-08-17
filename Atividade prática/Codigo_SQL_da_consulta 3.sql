/*
Atividade Prática
Discente: Mateus Alencar Ferreira
Polo: Juazeiro (2)
Tutor: Nicholas Moura
*/

-- Código SQL da consulta 3

SELECT nomem,
	   especialidade
FROM clinica.medico

WHERE especialidade LIKE "%ista"

ORDER BY nomem;

-- Fim do Código SQL da consulta 2