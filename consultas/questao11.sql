--Faça uma consulta que selecione o nome do projeto, o nome do departamento do projeto, o nome do funcionário responsável pelo projeto, 
--o nome do departamento do funcionário responsável, mas apenas os projetos que o responsável é de outro departamento.

SELECT p.nome AS nome_projeto, d1.descricao AS departamento_projeto, 
       f.nome AS nome_responsavel, d2.descricao AS departamento_responsavel
FROM projeto p 
INNER JOIN departamento d1 ON p.cod_depto = d1.codigo 
INNER JOIN funcionario f ON p.cod_responsavel = f.codigo 
INNER JOIN departamento d2 ON f.cod_depto = d2.codigo 
WHERE f.cod_depto <> p.cod_depto;
 