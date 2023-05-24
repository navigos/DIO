-- Create table
CREATE TABLE pessoas (
	id INT NOT NULL PRIMARY KEY AUTOINCREMENT,
	nome VARCHAR(20),
	nascimento DATE
)

-- Entering data
INSERT INTO pessoa (nome, nascimento) VALUES ('Jose', '2002-02-22');


-- Select table pessoas
SELECT * FROM  `pessoas` WHERE 1

-- 

