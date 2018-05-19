

CREATE TABLE Aluno (
matricula_A int NOT NULL PRIMARY KEY,
endereco varchar(50) NOT NULL,
nome varchar(50) NOT NULL,
telefone int(9) NOT NULL,
codigo_T int NOT NULL,
cnpj int NOT NULL
)

CREATE TABLE Turma (
codigo_T int NOT NULL PRIMARY KEY,
turno varchar(10) NOT NULL,
sala char(4) NOT NULL,
cnpj int NOT NULL
)

CREATE TABLE Disciplina (
codigo_D int PRIMARY KEY,
Nome varchar(50) NOT NULL,
ementa varchar NOT NULL,
carga_horaria char(4)
)

CREATE TABLE Professor (
matricula_P int NOT NULL,
cpf_p int(11) NOT NULL,
telefone int(9) NOT NULL,
nome varchar(50) NOT NULL,
PRIMARY KEY(matricula_P,cpf_p)
)

CREATE TABLE Escola (
cnpj int(14) NOT NULL PRIMARY KEY,
endereco varchar(50) NORL NULL,
nome varchar(50) NOT NULL,
telefone int(9)
)

CREATE TABLE turma_disciplina (
data_inicio date NOT NULL,
data_termino date NOT NULL,
codigo_D int NOT NULL,
codigo_T int NOT NULL,
FOREIGN KEY(codigo_D) REFERENCES Disciplina (codigo_D),
FOREIGN KEY(codigo_T) REFERENCES Turma (codigo_T)
)

CREATE TABLE Relação_3 (
matricula_P int NOT NULL,
cpf_p int(11) NOT NULL,
codigo_D int NOT NULL,
FOREIGN KEY(cpf_p,,) REFERENCES Professor (matricula_P,cpf_p),
FOREIGN KEY(codigo_D) REFERENCES Disciplina (codigo_D)
)

CREATE TABLE trabalha (
data_adimissao date NOT NULL,
matricula_P int NOT NULL,
cpf_p int(11) NOT NULL,
cnpj int(14) NOT NULL,
FOREIGN KEY(matricula_P,cpf_p) REFERENCES Professor (matricula_P,cpf_p)
)

ALTER TABLE Aluno ADD FOREIGN KEY(codigo_T) REFERENCES Turma (codigo_T)
ALTER TABLE Aluno ADD FOREIGN KEY(cnpj) REFERENCES Escola (cnpj)
ALTER TABLE Turma ADD FOREIGN KEY(cnpj) REFERENCES Escola (cnpj)
