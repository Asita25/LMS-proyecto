
#Mostrar estudiantes inscritos
SELECT
u.nombre,
c.nombre AS curso
FROM usuarios u
INNER JOIN inscripciones i
ON u.id_usuario=i.id_usuario
INNER JOIN cursos c
ON c.id_curso=i.id_curso;

#Mostrar notas
SELECT
u.nombre,
e.nombre,
n.calificacion

FROM notas n

INNER JOIN usuarios u
ON n.id_usuario=u.id_usuario

INNER JOIN evaluaciones e
ON n.id_evaluacion=e.id_evaluacion;


