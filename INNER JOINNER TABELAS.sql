CREATE TABLE Cidades (
id INT PRIMARY KEY ,
nome VARCHAR (60) NOT NULL,
populacao INT
);

CREATE TABLE Aluno (
id INT PRIMARY KEY,
nome VARCHAR (60) NOT NULL,
data_nasc DATE,
Cidade_id INT,

FOREIGN KEY (Cidade_id) REFERENCES Cidades(id)
); 