-- Faça uma consulta que selecione o nome dos projetos e o nome dos funcionários responsáveis por esses projetos,
-- a quantidade de atividades do projeto e a quantidade de responsáveis pelas atividades 
-- (os responsáveis por atividades só devem ser contados uma única vez no projeto). Crie e use views na consulta.

-- View para obter a quantidade de atividades em cada projeto
CREATE VIEW qtd_atividades_projeto AS
SELECT cod_projeto, COUNT(*) AS qtd_atividades
FROM atividade_projeto
GROUP BY cod_projeto;

-- View para obter a quantidade de responsáveis pelas atividades em cada projeto
CREATE VIEW qtd_responsaveis_projeto AS
SELECT ap.cod_projeto, COUNT(DISTINCT a.cod_responsavel) AS qtd_responsaveis
FROM atividade_projeto ap
INNER JOIN atividade a ON ap.cod_atividade = a.codigo
GROUP BY ap.cod_projeto;

-- Consulta para obter as informações
SELECT p.nome AS projeto, f.nome AS responsavel, qap.qtd_atividades, qrp.qtd_responsaveis
FROM projeto p
LEFT JOIN funcionario f ON p.cod_responsavel = f.codigo
LEFT JOIN qtd_atividades_projeto qap ON p.codigo = qap.cod_projeto
LEFT JOIN qtd_responsaveis_projeto qrp ON p.codigo = qrp.cod_projeto;


