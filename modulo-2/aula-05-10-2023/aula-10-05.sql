DROP DATABASE IF EXISTS Escola;
CREATE DATABASE IF NOT EXISTS Escola;
USE Escola;

CREATE TABLE Alunos  (
	idAluno int not null AUTO_INCREMENT, # auto_increment vai aumentar sozinho
	nomeAluno varchar(30) not null,
	endereco varchar(50) not null,
	email varchar(40) null,
	PRIMARY KEY (idAluno)
);


INSERT INTO Alunos 
values(null, 'Astrogildo', 'Rua XIII', 'eu@ele.com'),
(null, 'Berisvaldo', 'Av. 3', 'tu@nos.com'),
(null, 'Gumercindo', 'Rua Azul', null),
(null, 'Pafuncia', 'Rua Azul', 'go@go.edu'),
(null, 'Tiburcio', 'Av. Brasil', null),
(null, 'Robervaldo', 'Av. Peru', 'el@cabron');

DELETE FROM Alunos
WHERE idAluno = '6';

DELETE FROM Alunos
WHERE endereco = 'Rua Azul';

DELETE FROM Alunos
WHERE idAluno < '3';

DELETE FROM Alunos 
WHERE idAluno BETWEEN '2' AND '5';

INSERT INTO Alunos 
values(null, 'Astrogildo', 'Rua XIII', 'eu@ele.com'),
(null, 'Berisvaldo', 'Av. 3', 'tu@nos.com'),
(null, 'Gumercindo', 'Rua Azul', null),
(null, 'Pafuncia', 'Rua Azul', 'go@go.edu'),
(null, 'Tiburcio', 'Av. Brasil', null),
(null, 'Robervaldo', 'Av. Peru', 'el@cabron');

DELETE FROM Alunos;

INSERT INTO Alunos 
values(null, 'Astrogildo', 'Rua XIII', 'eu@ele.com'),
(null, 'Berisvaldo', 'Av. 3', 'tu@nos.com'),
(null, 'Gumercindo', 'Rua Azul', null),
(null, 'Pafuncia', 'Rua Azul', 'go@go.edu'),
(null, 'Tiburcio', 'Av. Brasil', null),
(null, 'Robervaldo', 'Av. Peru', 'el@cabron');

UPDATE Alunos
SET email = 'guma@bol.com'
WHERE idAluno = '15';

UPDATE Alunos
SET nomeAluno = 'Valdo', endereco = 'X'
WHERE idAluno = '18';

# DEFAULT dá um valor predefinido a uma coluna
 ALTER TABLE Alunos
    -> ADD COLUMN status INT NOT NULL DEFAULT 1;

# mostra alunos com status desativado
 UPDATE Alunos
    -> SET status = 0
    -> WHERE idAluno = 16;