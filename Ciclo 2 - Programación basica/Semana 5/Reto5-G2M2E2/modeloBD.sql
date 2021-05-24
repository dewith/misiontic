CREATE SCHEMA IF NOT EXISTS redflix46;
USE redflix46;

-- Creación de tablas
CREATE TABLE IF NOT EXISTS series (
    id_serie INT NOT NULL AUTO_INCREMENT,
    titulo VARCHAR(100) NOT NULL,
    num_temporadas INT NOT NULL,
    num_capitulos INT NOT NULL,
    PRIMARY KEY (id_serie)
);

CREATE TABLE IF NOT EXISTS peliculas (
    id_pelicula INT NOT NULL AUTO_INCREMENT,
    titulo VARCHAR(100) NOT NULL,
    resumen VARCHAR(1000) NOT NULL,
    anio YEAR NOT NULL,
    id_director INT NOT NULL,
    PRIMARY KEY (id_pelicula)
);

CREATE TABLE IF NOT EXISTS usuarios (
    alias VARCHAR(60) NOT NULL,
    nombre VARCHAR(30) NOT NULL,
    apellido VARCHAR(30) NOT NULL,
    email VARCHAR(100) NOT NULL,
    celular VARCHAR(10),
    contraseña VARCHAR(50) NOT NULL,
    fecha_nacimiento DATE,
    PRIMARY KEY (alias)
);


-- LLenado de tablas
INSERT INTO series VALUES (NULL, "The walking dead", 11, 153);
INSERT INTO series VALUES (NULL, "Viaje a las estrellas: la serie original", 3, 80);
INSERT INTO series VALUES (NULL, "Glow", 3, 30);
INSERT INTO series VALUES (NULL, "La casa de papel", 4, 31);
INSERT INTO series VALUES (NULL, "Friends", 10, 236);
INSERT INTO series VALUES (NULL, "Arrow", 8, 170);
INSERT INTO series VALUES (NULL, "The big bang theory", 12, 279);
INSERT INTO series VALUES (NULL, "Vikingos", 6, 79);

INSERT INTO peliculas VALUES (NULL, "Los Vengadores", "Pelicula de superheroes basada en Marvel Comics. Nick Fury director de SHIELD recluta a Tony Stark, Steve Rogers, Bruce Banner y Thor para forma un equipo y evitar que Loki, hermano de Thor, se apodere de la tierra.", 1990, 102);
INSERT INTO peliculas VALUES (NULL, "Interestelar", "Pelicula de ciencia ficción, donde la humanidad lucha por sobrevivir. La pelicula cuenta una historia de un grupo de astronautas que viajan a traves de un agujero de gusano en busca de un nuevo hogar.", 2014, 103);
INSERT INTO peliculas VALUES (NULL, "El viaje de Chihiro", "Pelicula de animación japonesa. Es la historia de una niña de 12 años, quien se ve atrapada por un mundo mágico y sobrenatural, teniendo como misión buscar su libertad y la de sus padres y regresar al mundo real.", 2001, 101);
INSERT INTO peliculas VALUES (NULL, "Parasitos", "Pelicula de drama, suspenso y humor negro. Toca temas como las diferencias sociales y vulnerabilidad del espiritu humano.", 2019, 104);
INSERT INTO peliculas VALUES (NULL, "Mas alla de los sueños", "Pelicula de drama, narra una historia trágica de una familia, donde el padre va en busca de sus esposa al mas allá para recuperarla.", 1998, 105);

INSERT INTO usuarios VALUES ("lucky", "Pedro", "Perez", "pperez@gmail.com", "3105678029", "qhubopues", "1999-06-20");
INSERT INTO usuarios VALUES ("malopez", "Maria", "Lopez", "mlopez@gmail.com", "3008096542", "1234contraseña", "1995-02-02");
INSERT INTO usuarios VALUES ("diva", "Ana", "Diaz", "adiaz@gmail.com", "3164568900", "arcoiris2000", "2000-01-23");
INSERT INTO usuarios VALUES ("dreamer", "Luis", "Rojas", "lrojas@gmail.com", "3205559870", "martinytoby", "1999-03-01");
INSERT INTO usuarios VALUES ("ninja", "Andres", "Cruz", "acruz@gmail.com", "3114290373", "1234578", "1992-11-04");
INSERT INTO usuarios VALUES ("neon", "Nelson", "Ruiz", "nruiz@gmail.com", "3156728787", "1997nelson", "1997-10-09");
INSERT INTO usuarios VALUES ("rose", "Claudia", "Mendez", "cmendez@gmail.com", "3183502433", "0213cdmf", "1997-02-28");
INSERT INTO usuarios VALUES ("green", "Jorge", "Rodriguez", "jrodrigez@gmail.com", "3505607890", "Barcelona1995", "1995-05-09");
