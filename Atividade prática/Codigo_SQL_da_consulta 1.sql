/*
Atividade Prática
Discente: Mateus Alencar Ferreira
Polo: Juazeiro (2)
Tutor: Nicholas Moura
*/

-- Código SQL da consulta 1

SELECT * FROM clinica.consulta

WHERE valor_consulta > 200.00 AND dt_consulta BETWEEN "2018-01-01" AND "2020-12-31"

ORDER BY dt_consulta DESC;

-- Fim do Código SQL da consulta 1



