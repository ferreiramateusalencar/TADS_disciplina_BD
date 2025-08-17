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


-- Código SQL da consulta 3


SELECT nomem FROM clinica.medico

WHERE sexo = 'M' AND dt_nasc BETWEEN '1970-01-01' AND '1979-12-31'

ORDER BY nomem


-- Fim do Código SQL da consulta 3