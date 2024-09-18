
-- Ejercicio  1: Encuentra el nombre de las pistas y los títulos de los álbumes a los que pertenecen.
select 	a."Title" as album ,
		t."Name" as pista
from "Album" a
inner join "Track" t
	on a."AlbumId" = t."AlbumId"
order by a."Title";	
	

-- Ejercicio 2: Lista los nombres de los artistas y los títulos de sus álbumes. Ordena los resultados por artista.
select 	art."Name" as artista,
		alb."Title" as album
from "Artist" art 
inner join "Album" alb
	on art."ArtistId" = alb."ArtistId" 
order by art."Name"; 

-- Ejercicio 3: Encuentra los nombres de los clientes y los totales de sus facturas. Extrae solo los 5 clientes con mayor total. 
select 	concat(c."FirstName", ' ',c."LastName") as cliente,
		sum(i."Total") as total_facturas
from "Customer" c 
full join "Invoice" i
	on c."CustomerId" = i."CustomerId" 
group by c."CustomerId" 
order by "total_facturas" 
limit 5;
	
-- Ejercicio 4: Lista los nombres de los empleados y los nombres de los clientes que les han sido asignados.
select	concat(e."FirstName", ' ',c."LastName") as empleado,
		concat(c."FirstName", ' ',c."LastName") as cliente
from "Employee" e 
inner join "Customer" c
	on e."EmployeeId" = c."SupportRepId"; 


-- Ejercicio 5: Muestra los ID de las facturas y los nombres de las pistas incluidas en esas facturas.
select	il."InvoiceId" as id_factura,
		t."Name" 
from "Track" t 
inner join "InvoiceLine" il
	on t."TrackId" = il."TrackId"; 

-- Ejercicio 6: Encuentra los nombres de los artistas y los géneros de sus pistas.
-- ***Género y artista no están conectados?***
select 	g."Name" as genero, 
		t."Composer" as compositor 
from "Genre" g 
inner join "Track" t
	on g."GenreId" = t."GenreId";

--  Ejercicio 7: Muestra los nombres de las pistas y el tipo de medio en el que están disponibles.
select 	mt."Name" as medio, 
		t."Name" as pista 
from "MediaType" mt 
inner join "Track" t
	on mt."MediaTypeId" = t."MediaTypeId";

-- Ejercicio 8: Encuentra todas las pistas y, si existen, muestra los nombres de los géneros a los que pertenecen. Incluye también las pistas que no tienen un género asignado.**
select 	g."Name" as genero, 
		t."Name" as pista 
from "Genre" g 
full join "Track" t
	on g."GenreId" = t."GenreId";

-- Ejercicio 9: Muestra todos los clientes y, si existen, muestra las facturas que han realizado. Incluye también los clientes que no tienen ninguna factura.
select 	concat(c."FirstName", ' ',c."LastName") as cliente,
		i."InvoiceId" as id_factura
from "Customer" c 
full join "Invoice" i
	on c."CustomerId" = i."CustomerId"
order by cliente;

-- Ejercico 10: Encuentra todos los álbumes y, si existen, muestra los nombres de los artistas que los crearon. Incluye también los álbumes que no tienen un artista asignado (aunque en este caso en la base de datos de Chinook, todos los álbumes tienen un artista asignado).
select 	art."Name" as artista,
		alb."Title" as album
from "Artist" art
full join "Album" alb
	on art."ArtistId" = alb."ArtistId" 
order by artista;


-- Ejercicio 11: Cuenta cuántas pistas hay en cada género. Ordena los generos en función del número de canciones de mayor a menor. 
select 	g."Name" as genero, 
		count(t."TrackId") as total_pistas
from "Genre" g 
left join "Track" t
	on g."GenreId" = t."GenreId"
group by genero
order by total_pistas desc ;

--  Ejercicio 12: Muestra los títulos de los álbumes y la duración total de todas las pistas en cada álbum.
select 	a."Title" as album,
		sum(t."Milliseconds") as duracion_total
from "Album" a 
full join "Track" t
on	a."AlbumId" = t."AlbumId" 
group by a."AlbumId" 
order by duracion_total desc;

-- Ejercicio 14: Encuentra los nombres de los clientes y el total gastado por cada uno.
select 	concat(c."FirstName", ' ',c."LastName") as cliente,
		sum(i."Total") as total_gastado
from "Customer" c 
full join "Invoice" i
	on c."CustomerId" = i."CustomerId" 
group by c."CustomerId" 
order by total_gastado desc;

-- Ejercicio 15: Encuentra todos los empleados y, si existen, muestra los nombres de los clientes que tienen asignados. Incluye también los empleados que no tienen clientes asignados.
select 	concat(e."FirstName", ' ',c."LastName") as empleado,
		concat(c."FirstName", ' ',c."LastName") as cliente
from "Employee" e 
full join "Customer" c
	on e."EmployeeId" = c."SupportRepId" 



