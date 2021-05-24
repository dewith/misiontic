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
INSERT INTO usuarios VALUES ("lucky", "Pedro", "Perez", "pperez@gmail.com", "3105678029", "qhubopues", "1999-06-20");
INSERT INTO usuarios VALUES ("malopez", "Maria", "Lopez", "mlopez@gmail.com", "3008096542", "1234contraseña", "1995-02-02");
INSERT INTO usuarios VALUES ("diva", "Ana", "Diaz", "adiaz@gmail.com", "3164568900", "arcoiris2000", "2000-01-23");
INSERT INTO usuarios VALUES ("dreamer", "Luis", "Rojas", "lrojas@gmail.com", "3205559870", "martinytoby", "1999-03-01");
INSERT INTO usuarios VALUES ("ninja", "Andres", "Cruz", "acruz@gmail.com", "3114290373", "1234578", "1992-11-04");
INSERT INTO usuarios VALUES ("neon", "Nelson", "Ruiz", "nruiz@gmail.com", "3156728787", "1997nelson", "1997-10-09");
INSERT INTO usuarios VALUES ("rose", "Claudia", "Mendez", "cmendez@gmail.com", "3183502433", "0213cdmf", "1997-02-28");
INSERT INTO usuarios VALUES ("green", "Jorge", "Rodriguez", "jrodrigez@gmail.com", "3505607890", "Barcelona1995", "1995-05-09");
