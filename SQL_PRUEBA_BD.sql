select libros.isbn, autor.nombre_autor, autor.apellido_autor 
from libros, autor,tipo_autor
where libros.pag >=300
and libros.cod_autor = autor.cod_autor
and libros.cod_tipo_autor = tipo_autor.codigo_tipo; 


select autores.nombre, autores.apellido from autores
where autores.fecha >= 1970;


select MAX(HISTORIAL_PRESTAMOS_LIBROS.ISBN), HISTORIAL_PRESTAMOS_LIBROS.ISBN 
from HISTORIAL_PRESTAMOS_LIBROS
GROUP BY HISTORIAL_PRESTAMOS_LIBROS.FECHA_TERMINO
ORDER BY HISTORIAL_PRESTAMOS_LIBROS.ISBN;



select sum(100) from historal_de_prestamos
where historial_de_prestamos.fecha_termino >= (select historial_de_prestamos.isbn from historial_de_prestamos
where historial_de_prestamos.fecha_termino > date();)









