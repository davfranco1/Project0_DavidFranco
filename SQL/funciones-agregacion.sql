
/* MIN y MAX */

-- Ejercicio 1: Encontrar la duración mínima de las pistas en milisegundos.
select min("Milliseconds")
from "Track";

-- Ejercicio 2: Encontrar la duración máxima de las pistas en milisegundos.
select max("Milliseconds")
from "Track";

-- Ejercicio 3: Encontrar el precio mínimo de las pistas.
select min("UnitPrice")
from "Track";   

-- Ejercicio 4: Encontrar el precio máximo de las pistas.
select max("UnitPrice")
from "Track";  

-- Ejercicio 5: Encontrar la fecha mínima de la factura.
select min("InvoiceDate")
from "Invoice";     

-- Ejercicio 6: Encontrar la fecha máxima de la factura.
select max("InvoiceDate")
from "Invoice";   


/* COUNT y SUM */

-- Ejercicio 7: Contar el número total de pistas.
select count("TrackId")
from "Track";   

-- Ejercicio 8: Contar el número de clientes en Brasil.
select count("Country")
from "Customer"
where "Country" = 'Brazil';   

-- Ejercicio 9: Sumar la duración total de todas las pistas en milisegundos.
select sum("Milliseconds")
from "Track";   

-- Ejercicio 10: Contar el número de empleados con el título 'Sales Support Agent'.
select count("Title") 
from "Employee"
where "Title" = 'Sales Support Agent';    

-- Ejercicio 11: Sumar el total de las cantidades en las facturas.
select sum("Total")
from "Invoice" i 

/* AVG, STDDEV, VARIANCE */

-- Ejercicio 12: Calcular la duración media de las pistas en milisegundos.
select round(avg("Milliseconds")) as "promedio"
from "Track";    

-- Ejercicio 13: Calcular el precio medio de las pistas.
select round(avg("UnitPrice"), 2) as "promedio"
from "Track";      

-- Ejercicio 14: Calcular la desviación estándar de la duración de las pistas.
select round(stddev("Milliseconds"), 2) as "desv. estándar"
from "Track";

-- Ejercicio 15: Calcular la varianza de la duración de las pistas.
select round(variance("Milliseconds")) as "varianza"
from "Track";

-- Ejercicio 16: Calcular la desviación estándar del precio de las pistas.
select round(stddev("UnitPrice"), 2) as "desv. estándar"
from "Track";

/* CONCAT */

-- Ejercicio 17: Concatenar el nombre y el apellido de los clientes.
select concat("FirstName",' ',"LastName")  as "Nombre_cliente"
from "Customer" c 

