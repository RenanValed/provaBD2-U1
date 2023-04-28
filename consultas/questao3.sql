--Faça uma consulta que selecione o nome e a data de nascimento dos funcionários com idade superior a 21 anos que não são gerentes.
SELECT nome, dt_nasc
FROM funcionario
WHERE AGE(current_date, dt_nasc) > INTERVAL '21 years' AND codigo NOT IN (SELECT cod_gerente FROM departamento)
