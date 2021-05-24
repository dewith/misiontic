CREATE TABLE IF NOT EXISTS series (
    id_serie INT NOT NULL,
    titulo VARCHAR(100) NOT NULL,
    num_temporadas INT NOT NULL,
    num_capitulos INT NOT NULL,
    PRIMARY KEY (id_serie)
);
INSERT INTO series VALUES (1, "The walking dead", 11, 153);
INSERT INTO series VALUES (2, "Viaje a las estrellas: la serie original", 3, 80);
INSERT INTO series VALUES (3, "Glow", 3, 30);
INSERT INTO series VALUES (4, "La casa de papel", 4, 31);
INSERT INTO series VALUES (5, "Friends", 10, 236);
INSERT INTO series VALUES (6, "Arrow", 8, 170);
INSERT INTO series VALUES (7, "The big bang theory", 12, 279);
INSERT INTO series VALUES (8, "Vikingos", 6, 79);