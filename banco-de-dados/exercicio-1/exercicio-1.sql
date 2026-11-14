CREATE TABLE cursos (
  id INT PRIMARY KEY,
  nome_curso VARCHAR(100)
);

CREATE TABLE alunos (
  id INT PRIMARY KEY,
  nome VARCHAR(100),
  email VARCHAR(100),
  curso_id INT,
  FOREIGN KEY (curso_id) REFERENCES cursos(id)
);

INSERT INTO cursos (id, nome_curso) VALUES
(1, 'Engenharia de Telecomunicações'),
(2, 'Ciência de Dados'),
(3, 'Desenvolvimento de Jogos');

INSERT INTO alunos (id, nome, email, curso_id) VALUES
(1, 'Duana Aquino', 'duana@gmail.com', 3),
(2, 'João Silva', 'joao@outlook.com', 2),
(3, 'Maria Elisa', 'maria@gmail.com', 1),
(4, 'Pedro Santos', 'pedro@outlook.com', 1);

SELECT * FROM alunos;

INSERT INTO alunos (id, nome, email, curso_id) VALUES (5, 'Aluno Teste', 'teste@email.com', 99);