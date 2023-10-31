# INNER-JOIN-E-ALIASES
## Nesta ativdade iremos criar duas tabelas onde uma delas se chama cidade e a outra alunos, e uma aplicação de residencia interna;
### 1) Crie duas tabelas conforme o modelo apresentado nos slides 61 e 62, no material da AULA 7;
```SQL
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
```
### 2) Insira os valores conforme os slides;
```SQL
insert into cidades values (1, 'Arraial dos Tucanos', 42632);
insert into cidades values (2, 'Springfield', 13820);
insert into cidades values (3, 'Hill Valley', 19138);
insert into cidades values (4, 'Coruscant', 27383);
insert into cidades values (5, 'Minas Tirith', 31394);

insert into aluno values (1, 'Immanuel Kant', '1724-04-22', 4);
insert into aluno values (2, 'Alan Turing', '1912-06-23', 3);
insert into aluno values (3, 'George Boole', '2002-01-01', 1);
insert into aluno values (4, 'Lynn Margulis', '1991-08-12', 3);
insert into aluno values (5, 'Nicola Tesla', '2090-01-08', null);
insert into aluno values (6, 'Ada Lovelace', '1978-05-28', 4);
insert into aluno values (7, 'Claude Shannon', '1982-10-15', 3);
insert into aluno values (8, 'Charles Darwin', '2010-02-06', null);
insert into aluno values (9, 'Marie Curie', '2007-07-12', 3);
insert into aluno values (10, 'Carl Sagan', '2000-11-20', 1);
insert into aluno values (11, 'Tim Berners-Lee', '1982-09-12', 1);
insert into aluno values (12, 'Richard Feynman', '1973-12-05', 4);

select * from aluno;
```
### 3) Aplique o exemplo sobre inner join dado no slide 67, do material indicado acima;
```SQL
select * from aluno
inner join cidades
on Cidade_id = aluno.Cidade_id;
```
![image](https://github.com/GabrielChagasAlves/INNER-JOIN-E-ALIASES/assets/125607847/cdf3c95d-93aa-47fd-9e13-6544a5841720)
