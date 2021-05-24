-- 5.1 Mostrar la información del título de todas las películas y series ordenadas alfabéticamente.
SELECT 'Consulta 1';
SELECT 
    titulo
FROM
    peliculas 
UNION SELECT 
    titulo
FROM
    series
ORDER BY titulo ASC;

-- 5.2 Mostrar la información de las películas (título, resumen, año) que se han estrenado posteriormente al año 2000, ordenadas por título
SELECT 'Consulta 2';
SELECT 
    titulo, resumen, anio
FROM
    peliculas
WHERE
    anio > 2000
ORDER BY titulo ASC;

-- 5.3 Mostrar los títulos de películas dirigidas por el director Vincent Ward 
SELECT 'Consulta 3';
SELECT 
    p.titulo
FROM
    peliculas AS p
        INNER JOIN
    directores AS d ON p.id_director = d.id_director
        AND d.nombre = 'Vincent'
        AND d.apellido = 'Ward';

-- 5.4  Mostrar la información de las series y películas ( solo los títulos) que ha visto un usuario con alias "lucky", ordenadas por título
SELECT 'Consulta 4';
SELECT 
    tp.titulo AS Titulo
FROM
    transmisiones t
        JOIN
    contenidos c ON t.id_contenido = c.id_contenido
        JOIN
    peliculas p ON p.id_pelicula = c.id_pelicula
WHERE
    t.alias_usuario = 'lucky' 
UNION SELECT 
    t.id_contenido, s.titulo AS Titulo
FROM
    transmisiones t
        JOIN
    contenidos c ON t.id_contenido = c.id_contenido
        JOIN
    series s ON s.id_serie = c.id_serie
WHERE
    t.alias_usuario = 'lucky';

-- 5.5 Mostrar la información de los usuarios (alias y nombre y apellidos) que han visto la película "Interestelar" ordenados alfabéticamente
SELECT 'Consulta 5';
SELECT DISTINCT
    t.alias_usuario
FROM
    transmisiones t
        INNER JOIN
    contenidos c ON c.id_contenido = t.id_contenido
        AND c.id_contenido IN (SELECT 
            id_pelicula
        FROM
            peliculas
        WHERE
            titulo = 'Interestelar')
ORDER BY t.alias_usuario ASC;

-- 5.6 Mostrar cuantas películas se han estrenado después del año 2000
SELECT 'Consulta 6';
SELECT 
    COUNT(*)
FROM
    peliculas
WHERE
    anio > 2000;