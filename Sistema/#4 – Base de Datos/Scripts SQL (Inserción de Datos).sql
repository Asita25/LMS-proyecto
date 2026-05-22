USE LMS_MINI;
INSERT INTO roles(nombre_rol)
VALUES
('Administrador'),
('Docente'),
('Estudiante');

INSERT INTO usuarios
(nombre,correo,clave,id_rol)
VALUES
('Carlos Lopez','carlos@gmail.com','1234',2),
('Ana Garcia','ana@gmail.com','1234',3),
('Mario Ruiz','mario@gmail.com','1234',3);

INSERT INTO cursos
(nombre,descripcion,fecha_creacion)
VALUES
('Base de Datos',
'Curso de MySQL',
CURDATE()),

('Programacion Web',
'Curso HTML CSS',
CURDATE());

INSERT INTO inscripciones
(id_usuario,id_curso)
VALUES
(2,1),
(3,1);

INSERT INTO modulos
(titulo,contenido,id_curso)
VALUES
('Introduccion',
'Contenido inicial',
1),

('Consultas SQL',
'Contenido avanzado',
1);
INSERT INTO tareas
(titulo,descripcion,fecha_entrega,id_modulo)
VALUES
(
'Tarea 1',
'Crear BD',
'2026-06-15',
1
);

INSERT INTO evaluaciones
(nombre,puntaje_total,id_modulo)
VALUES
(
'Parcial 1',
10,
1
);

INSERT INTO notas
(id_usuario,id_evaluacion,calificacion)
VALUES
(
2,
1,
8.75
);


