-- Faça uma consulta que selecione o código  e descrição do projeto cujo gerente do departamento que ele faz parte ganhe mais que a média dos outros gerentes de departamento.

SELECT p.codigo, p.descricao
FROM projeto p
INNER JOIN departamento d ON p.cod_depto = d.codigo
INNER JOIN funcionario f ON d.cod_gerente = f.codigo
WHERE f.salario > (
  SELECT AVG(f2.salario)
  FROM funcionario f2
  INNER JOIN departamento d2 ON f2.codigo = d2.cod_gerente
  WHERE d2.codigo <> d.codigo -- exclui o departamento atual da subconsulta
);
