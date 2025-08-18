/*
Discente: Mateus Alencar Ferreira
Polo: Juazeiro (2)
Tutor: Nicholas Moura
*/

-- Código SQL da consulta 3


SELECT nomem FROM clinica.medico

WHERE sexo = 'M' AND dt_nasc BETWEEN '1970-01-01' AND '1979-12-31'

ORDER BY nomem;

-- Fim do Código SQL da consulta 3

-- Código SQL da consulta 3 (Alternativo, com YEAR)

SELECT nomem FROM clinica.medico

WHERE sexo = 'M' AND (YEAR(dt_nasc) BETWEEN 1970 AND 1979)

ORDER BY nomem;

-- Fim do Código SQL da consulta 3 (Alternativo, com YEAR)
