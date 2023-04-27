CREATE TABLE funcionario (
    codigo INT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    sexo CHAR(1),
    dt_nasc DATE,
    salario DECIMAL(10,2),
    cod_depto INT,
    FOREIGN KEY (cod_depto) REFERENCES departamento(codigo)
);

CREATE TABLE departamento (
    codigo INT PRIMARY KEY,
    descricao VARCHAR(255) NOT NULL,
    cod_gerente INT,
    FOREIGN KEY (cod_gerente) REFERENCES funcionario(codigo)
);

CREATE TABLE projeto (
    codigo INT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    descricao TEXT,
    cod_depto INT,
    cod_responsavel INT,
    data_inicio DATE,
    data_fim DATE,
    FOREIGN KEY (cod_depto) REFERENCES departamento(codigo),
    FOREIGN KEY (cod_responsavel) REFERENCES funcionario(codigo)
);

CREATE TABLE atividade (
    codigo INT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    descricao TEXT,
    cod_responsavel INT,
    data_inicio DATE,
    data_fim DATE,
    FOREIGN KEY (cod_responsavel) REFERENCES funcionario(codigo)
);

CREATE TABLE atividade_projeto (
    cod_projeto INT,
    cod_atividade INT,
    PRIMARY KEY (cod_projeto, cod_atividade),
    FOREIGN KEY (cod_projeto) REFERENCES projeto(codigo),
    FOREIGN KEY (cod_atividade) REFERENCES atividade(codigo)
);
