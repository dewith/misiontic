-- TABLAS PRIMARIAS 
-- Directores
INSERT INTO directores VALUES (101, "Hayo","Miyazaki", "japones");
INSERT INTO directores VALUES (102, "Joss", "Whedon", "estadounidense");
INSERT INTO directores VALUES (103, "Christopher", "Nolan", "estadounidense");
INSERT INTO directores VALUES (104, "Bong", "Joon-ho", "coreano");
INSERT INTO directores VALUES (105, "Vincent", "Ward", "neozelandes");

-- Usuarios
INSERT INTO usuarios VALUES ("lucky", "Pedro", "Perez", "pperez@gmail.com", 3105678029, "qhubopues", "1999-06-20");
INSERT INTO usuarios VALUES ("malopez", "Maria", "Lopez", "mlopez@gmail.com", 3008096542, "1234contraseña", "1995-02-02");
INSERT INTO usuarios VALUES ("diva", "Ana", "Diaz", "adiaz@gmail.com", 3164568900, "arcoiris2000", "2000-01-23");
INSERT INTO usuarios VALUES ("dreamer", "Luis", "Rojas", "lrojas@gmail.com", 3205559870, "martinytoby", "1999-03-01");
INSERT INTO usuarios VALUES ("ninja", "Andres", "Cruz", "acruz@gmail.com", 3114290373, "1234578", "1992-11-04");
INSERT INTO usuarios VALUES ("neon", "Nelson", "Ruiz", "nruiz@gmail.com", 3156728787, "1997nelson", "1997-10-09");

-- Series
INSERT INTO series VALUES (NULL, "The walking dead", 11, 153);
INSERT INTO series VALUES (NULL, "Viaje a las estrellas: la serie original", 3, 80);
INSERT INTO series VALUES (NULL, "Glow", 3, 30);
INSERT INTO series VALUES (NULL, "La casa de papel", 4, 31);
INSERT INTO series VALUES (NULL, "Friends", 10, 236);
INSERT INTO series VALUES (NULL, "Arrow", 8, 170);
INSERT INTO series VALUES (NULL, "The big bang theory", 12, 279);

-- Peliculas
INSERT INTO peliculas VALUES (NULL, "Los Vengadores", "Pelicula de superheroes basada en Marvel Comics. Nick Fury director de SHIELD recluta a Tony Stark, Steve Rogers, Bruce Banner y Thor para forma un equipo y evitar que Loki, hermano de Thor, se apodere de la tierra.", 1990, 102);
INSERT INTO peliculas VALUES (NULL, "Interestelar", "Pelicula de ciencia ficción, donde la humanidad lucha por sobrevivir. La pelicula cuenta una historia de un grupo de astronautas que viajan a traves de un agujero de gusano en busca de un nuevo hogar.", 2014, 103);
INSERT INTO peliculas VALUES (NULL, "El viaje de Chihiro", "Pelicula de animación japonesa. Es la historia de una niña de 12 años, quien se ve atrapada por un mundo mágico y sobrenatural, teniendo como misión buscar su libertad y la de sus padres y regresar al mundo real.", 2001, 101);
INSERT INTO peliculas VALUES (NULL, "Parasitos", "Pelicula de drama, suspenso y humor negro. Toca temas como las diferencias sociales y vulnerabilidad del espiritu humano.", 2019, 104);
INSERT INTO peliculas VALUES (NULL, "Mas alla de los sueños", "Pelicula de drama, narra una historia trágica de una familia, donde el padre va en busca de sus esposa al mas allá para recuperarla.", 1998, 105);

-- Contenidos
INSERT INTO contenidos VALUES (NULL, 1, DEFAULT); -- Los Vengadores
INSERT INTO contenidos VALUES (NULL, 2, DEFAULT); -- Interestelar
INSERT INTO contenidos VALUES (NULL, 3, DEFAULT); -- Chihiro
INSERT INTO contenidos VALUES (NULL, 4, DEFAULT); -- Parasitos
INSERT INTO contenidos VALUES (NULL, 5, DEFAULT); -- Mas all de los sueños
INSERT INTO contenidos VALUES (NULL, DEFAULT, 1); -- TWD
INSERT INTO contenidos VALUES (NULL, DEFAULT, 2); -- Viaje a las estrellas
INSERT INTO contenidos VALUES (NULL, DEFAULT, 3); -- Glow
INSERT INTO contenidos VALUES (NULL, DEFAULT, 4); -- La casa de papel
INSERT INTO contenidos VALUES (NULL, DEFAULT, 5); -- Friends
INSERT INTO contenidos VALUES (NULL, DEFAULT, 6); -- Arrow
INSERT INTO contenidos VALUES (NULL, DEFAULT, 7); -- The Big Bang Thoery

-- Transmisiones
INSERT INTO transmisiones VALUES ("lucky", 1, "2017-10-25 20:00:00");
INSERT INTO transmisiones VALUES ("lucky", 4,  "2019-03-15 18:30:00");
INSERT INTO transmisiones VALUES ("lucky", 9,  "2019-05-20 20:30:00");
INSERT INTO transmisiones VALUES ("malopez", 1,  "2018-05-20 20:30:00");
INSERT INTO transmisiones VALUES ("malopez", 9,  "2020-01-20 20:30:00");
INSERT INTO transmisiones VALUES ("diva", 2,  "2019-05-20 20:30:00");
INSERT INTO transmisiones VALUES ("diva", 3,  "2018-06-22 21:30:00");
INSERT INTO transmisiones VALUES ("diva", 6,  "2020-03-17 15:30:20");
INSERT INTO transmisiones VALUES ("dreamer", 6,  "2020-03-17 15:30:20");
INSERT INTO transmisiones VALUES ("dreamer", 7,  "2020-04-10 18:30:20");
INSERT INTO transmisiones VALUES ("ninja", 8,  "2020-02-17 20:30:20");
INSERT INTO transmisiones VALUES ("ninja", 9,  "2020-02-20 16:30:20");
INSERT INTO transmisiones VALUES ("ninja", 11,  "2020-03-27 18:30:20");
INSERT INTO transmisiones VALUES ("rose", 10,  "2020-03-20 21:30:20");
INSERT INTO transmisiones VALUES ("green", 2,  "2020-01-10 17:30:20");
INSERT INTO transmisiones VALUES ("green", 4,  "2020-02-15 20:30:20");
INSERT INTO transmisiones VALUES ("green", 5,  "2020-03-17 18:30:20");





