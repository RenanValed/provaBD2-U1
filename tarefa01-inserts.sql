INSERT INTO funcionario (nome, sexo, dt_nasc, salario) VALUES
('João da Silva', 'M', '1990-01-01', 5000.00),
('Maria dos Santos', 'F', '1985-05-20', 7000.00),
('Pedro de Souza', 'M', '1993-11-12', 4500.00),
('Julia Oliveira', 'F', '1987-07-14', 8000.00),
('Lucas Gomes', 'M', '1995-03-25', 5500.00);

INSERT INTO departamento (descricao, cod_gerente) VALUES
('Departamento de Vendas', 1),
('Departamento de Marketing', 2),
('Departamento Financeiro', 3),
('Departamento de Recursos Humanos', 4),
('Departamento de TI', 5);

INSERT INTO projeto (nome, descricao, cod_depto, cod_responsavel, data_inicio, data_fim) VALUES 
('Projeto X', 'Sexshop online', 1, 1, '2023-05-01', '2023-08-31'),
('Projeto Y', 'Jogo do bicho online', 2, 2, '2023-06-01', '2023-10-31'),
('Projeto Z', 'Site freelancer', 3, 3, '2023-07-01', '2023-12-31'),
('Projeto A', 'Site de vendas de milhas', 4, 4, '2023-08-01', '2024-02-28'),
('Projeto B', 'Sistema de controle de ponto', 5, 5, '2023-09-01', '2024-01-31');

INSERT INTO atividade (codigo, nome, descricao, cod_responsavel, data_inicio, data_fim) VALUES 
(1, 'Atividade 1', 'Roteiro do video 1', 1, '2023-05-01', '2023-05-31'),
(2, 'Atividade 2', 'Edicao de VSL' , 2, '2023-06-01', '2023-06-30'),
(3, 'Atividade 3', 'Gravacao de cena 1', 3, '2023-07-01', '2023-07-31'),
(4, 'Atividade 4', 'Edicao de cartaz publicitario', 4, '2023-08-01', '2023-08-31'),
(5, 'Atividade 5', 'Calcular salario de funcionarios', 5, '2023-09-01', '2023-09-30');

