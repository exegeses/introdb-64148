# Creación y eliminación de tablas

## Creación de tablas

> Para crear una tabla utilizamos el comando 
> **CREATE TABLE** 

> Sintáxis: 

    CREATE TABLE nombre  
    (  
        nombreColumna tipoDato características,
        nombreColumna2 tipoDato características,
        nombreColumna3 tipoDato características
    );


> Ejemplo práctico: 

    CREATE TABLE billeteras
    (
        id tinyint unsigned,
        nombre varchar(30),
        precio float(9,2) unsigned,
        stock tinyint unsigned
    );