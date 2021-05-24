SELECT c.id_contenido AS 'Contenido', 
		p.titulo AS 'Pelicula',
        s.titulo AS 'Serie'
FROM contenidos c
	LEFT JOIN peliculas p ON p.id_pelicula = c.id_pelicula
	LEFT JOIN series s ON s.id_serie = c.id_serie;