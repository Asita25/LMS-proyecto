CREATE DATABASE LMS_MINI;

USE LMS_MINI;

CREATE TABLE roles(
id_rol INT AUTO_INCREMENT PRIMARY KEY,
nombre_rol VARCHAR(50) NOT NULL
);

CREATE TABLE usuarios(
id_usuario INT AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(100) NOT NULL,
correo VARCHAR(100) UNIQUE NOT NULL,
clave VARCHAR(255) NOT NULL,
id_rol INT,
FOREIGN KEY(id_rol)
REFERENCES roles(id_rol)
);

CREATE TABLE cursos(
id_curso INT AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(150),
descripcion TEXT,
fecha_creacion DATE
);

CREATE TABLE inscripciones(
id_inscripcion INT AUTO_INCREMENT PRIMARY KEY,
id_usuario INT,
id_curso INT,

FOREIGN KEY(id_usuario)
REFERENCES usuarios(id_usuario),

FOREIGN KEY(id_curso)
REFERENCES cursos(id_curso)
);

CREATE TABLE modulos(
id_modulo INT AUTO_INCREMENT PRIMARY KEY,
titulo VARCHAR(150),
contenido TEXT,
id_curso INT,

FOREIGN KEY(id_curso)
REFERENCES cursos(id_curso)
);

CREATE TABLE tareas(
id_tarea INT AUTO_INCREMENT PRIMARY KEY,
titulo VARCHAR(100),
descripcion TEXT,
fecha_entrega DATE,
id_modulo INT,

FOREIGN KEY(id_modulo)
REFERENCES modulos(id_modulo)
);

CREATE TABLE evaluaciones(
id_evaluacion INT AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(100),
puntaje_total DECIMAL(5,2),
id_modulo INT,

FOREIGN KEY(id_modulo)
REFERENCES modulos(id_modulo)
);

CREATE TABLE notas(
id_nota INT AUTO_INCREMENT PRIMARY KEY,
id_usuario INT,
id_evaluacion INT,
calificacion DECIMAL(5,2),

FOREIGN KEY(id_usuario)
REFERENCES usuarios(id_usuario),

FOREIGN KEY(id_evaluacion)
REFERENCES evaluaciones(id_evaluacion)
);

