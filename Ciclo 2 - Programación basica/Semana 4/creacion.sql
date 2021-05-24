CREATE SCHEMA IF NOT EXISTS redflix;
USE redflix;

-- Tabla de directores
CREATE TABLE IF NOT EXISTS directores (
    id_director INT NOT NULL,
    nombre VARCHAR(30) NOT NULL,
    apellido VARCHAR(30) NOT NULL,
    nacionalidad VARCHAR(45) NOT NULL,
    PRIMARY KEY (id_director)
);

-- Tabla de peliculas
CREATE TABLE IF NOT EXISTS peliculas (
    id_pelicula INT NOT NULL AUTO_INCREMENT,
    titulo VARCHAR(100) NOT NULL,
    resumen VARCHAR(1000) NOT NULL,
    anio YEAR NOT NULL,
    id_director INT NOT NULL,
    PRIMARY KEY (id_pelicula),
    FOREIGN KEY (id_director)
        REFERENCES directores (id_director)
);
    
-- Tabla de series
CREATE TABLE IF NOT EXISTS series (
    id_serie INT NOT NULL AUTO_INCREMENT,
    titulo VARCHAR(100) NOT NULL,
    num_temporadas INT NOT NULL DEFAULT 1,
    num_capitulos INT NOT NULL,
    PRIMARY KEY (id_serie)
);

-- Tabla de contenidos
CREATE TABLE IF NOT EXISTS contenidos (
    id_contenido INT NOT NULL AUTO_INCREMENT,
    id_pelicula INT DEFAULT NULL,
    id_serie INT DEFAULT NULL,
    PRIMARY KEY (id_contenido),
    FOREIGN KEY (id_pelicula)
        REFERENCES peliculas (id_pelicula),
    FOREIGN KEY (id_serie)
        REFERENCES series (id_serie)
);

-- Tabla de usuarios
CREATE TABLE IF NOT EXISTS usuarios (
    alias VARCHAR(60) NOT NULL,
    nombre VARCHAR(30) NOT NULL,
    apellido VARCHAR(30) NOT NULL,
    email VARCHAR(100) NOT NULL,
    celular VARCHAR(10) DEFAULT NULL,
    contraseña VARCHAR(50) NOT NULL,
    fecha_nacimiento DATE DEFAULT NULL,
    PRIMARY KEY (alias)
);

-- Tabla de transmisiones
CREATE TABLE IF NOT EXISTS transmisiones (
    alias_usuario VARCHAR(60) NOT NULL,
    id_contenido INT NOT NULL,
    fecha DATETIME NOT NULL,
    PRIMARY KEY (alias_usuario , id_contenido , fecha)
);


