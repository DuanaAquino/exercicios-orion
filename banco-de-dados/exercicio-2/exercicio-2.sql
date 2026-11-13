SELECT alunos.nome, cursos.nome_curso
FROM alunos
INNER JOIN cursos ON alunos.curso_id = cursos.id;

SELECT alunos.nome, cursos.nome_curso
FROM alunos
INNER JOIN cursos ON alunos.curso_id = cursos.id
WHERE cursos.nome_curso = 'Desenvolvimento Web';

UPDATE alunos
SET curso_id = 2
WHERE id = 3;

SELECT cursos.nome_curso 
FROM cursos
LEFT JOIN alunos ON cursos.id = alunos.curso_id 
WHERE alunos.id IS NULL;