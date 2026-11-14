SELECT alunos.nome, cursos.nome_curso 
FROM alunos
INNER JOIN cursos ON alunos.curso_id = cursos.id
WHERE cursos.nome_curso = 'Desenvolvimento de Jogos';


UPDATE alunos SET curso_id = 2 WHERE id = 3;

SELECT alunos.nome, cursos.nome_curso 
FROM alunos
INNER JOIN cursos ON alunos.curso_id = cursos.id
WHERE alunos.id = 3;

INSERT INTO cursos (id, nome_curso) VALUES (4, 'Marketing Digital');
INSERT INTO cursos (id, nome_curso) VALUES (10, 'Marketing Digital');

SELECT cursos.nome_curso 
FROM cursos
LEFT JOIN alunos ON cursos.id = alunos.curso_id
WHERE alunos.id IS NULL;