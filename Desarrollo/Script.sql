CREATE DATABASE Universidad_Mexica
GO
Use Universidad_Mexica
-- Creación de la tabla de Trabajos de Investigación
CREATE TABLE Trabajos_Investigacion (
    ID_Trabajo INT IDENTITY(1,1) PRIMARY KEY,
    Titulo NVARCHAR(255),
    Autor NVARCHAR(255),
    Fecha_Publicacion DATE,
    Resumen TEXT,
    Palabras_Clave TEXT,
    Tipo_Documento NVARCHAR(50),
    Grado_Academico NVARCHAR(50),
    Facultad NVARCHAR(255),
    Area_Conocimiento NVARCHAR(255)
);

-- Creación de la tabla de Autores
CREATE TABLE Autores (
    Matricula NVARCHAR(50) PRIMARY KEY,
    Nombre NVARCHAR(100),
    Apellido NVARCHAR(100),
    Correo_Electronico NVARCHAR(100)
);

-- Creación de la tabla de Facultades
CREATE TABLE Facultades (
    Facultad NVARCHAR(50) PRIMARY KEY,
    Nombre_Facultad NVARCHAR(255)
);

-- Creación de la tabla de Áreas de Conocimiento
CREATE TABLE Areas_Conocimiento (
    ID_Area INT IDENTITY(1,1) PRIMARY KEY,
    Nombre_Area NVARCHAR(255)
);

-- Creación de la tabla de Palabras Clave
CREATE TABLE Palabras_Clave (
    ID_Clave INT IDENTITY(1,1) PRIMARY KEY,
    Palabra_Clave NVARCHAR(100)
);

-- Ejemplo de inserción de datos
INSERT INTO Trabajos_Investigacion (Titulo, Autor, Fecha_Publicacion, Resumen, Palabras_Clave, Tipo_Documento, Grado_Academico, Facultad, Area_Conocimiento)
VALUES ('Innovación Tecnológica en Ingeniería', 'Juan Pérez', '2023-05-15', 'Este trabajo aborda...', 'Innovación, Tecnología', 'Tesis', 'Maestría', 'Ingeniería', 'Tecnología');

INSERT INTO Autores (Matricula, Nombre, Apellido, Correo_Electronico)
VALUES ('A12345', 'Juan', 'Pérez', 'juan.perez@universidadmexicana.edu');

INSERT INTO Facultades (Facultad, Nombre_Facultad)
VALUES ('Ingeniería', 'Facultad de Ingeniería');

INSERT INTO Areas_Conocimiento (Nombre_Area)
VALUES ('Tecnología');

INSERT INTO Palabras_Clave (Palabra_Clave)
VALUES ('Innovación');
