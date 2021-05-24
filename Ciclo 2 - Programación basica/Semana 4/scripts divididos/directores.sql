CREATE TABLE IF NOT EXISTS directores (
    id_director INT NOT NULL,
    nombre VARCHAR(30) NOT NULL,
    apellido VARCHAR(30) NOT NULL,
    nacionalidad VARCHAR(45) NOT NULL,
    PRIMARY KEY (id_director)
);
INSERT INTO directores VALUES (101, "Hayo","Miyazaki", "japones");
INSERT INTO directores VALUES (102, "Joss", "Whedon", "estadounidense");
INSERT INTO directores VALUES (103, "Christopher", "Nolan", "estadounidense");
INSERT INTO directores VALUES (104, "Bong", "Joon-ho", "coreano");
INSERT INTO directores VALUES (105, "Vincent", "Ward", "neozelandes");

