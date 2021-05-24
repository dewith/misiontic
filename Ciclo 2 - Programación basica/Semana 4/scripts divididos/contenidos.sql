CREATE TABLE IF NOT EXISTS contenidos (
    id_contenido INT NOT NULL,
    id_pelicula INT,
    id_serie INT,
    PRIMARY KEY (id_contenido),
    FOREIGN KEY (id_pelicula) REFERENCES peliculas (id_pelicula),
    FOREIGN KEY (id_serie) REFERENCES series (id_serie)
);
INSERT INTO contenidos VALUES (1, 1, NULL); -- Los Vengadores
INSERT INTO contenidos VALUES (2, 2, NULL); -- Interestelar
INSERT INTO contenidos VALUES (3, 3, NULL); -- Chihiro
INSERT INTO contenidos VALUES (4, 4, NULL); -- Parasitos
INSERT INTO contenidos VALUES (5, 5, NULL); -- Mas all de los sueños
INSERT INTO contenidos VALUES (6, NULL, 1); -- TWD
INSERT INTO contenidos VALUES (7, NULL, 2); -- Viaje a las estrellas
INSERT INTO contenidos VALUES (8, NULL, 3); -- Glow
INSERT INTO contenidos VALUES (9, NULL, 4); -- La casa de papel
INSERT INTO contenidos VALUES (10, NULL, 5); -- Friends
INSERT INTO contenidos VALUES (11, NULL, 6); -- Arrow
INSERT INTO contenidos VALUES (12, NULL, 7); -- The Big Bang Thoery
INSERT INTO contenidos VALUES (13, NULL, 8); -- Vikingos
