CREATE TABLE IF NOT EXISTS transmisiones (
    alias_usuario VARCHAR(60) NOT NULL,
    id_contenido INT NOT NULL,
    fecha DATETIME NOT NULL,
    PRIMARY KEY (alias_usuario , id_contenido , fecha),
    FOREIGN KEY (alias_usuario) REFERENCES usuarios (alias),
    FOREIGN KEY (id_contenido) REFERENCES contenidos (id_contenido)
);
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
