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
        id tinyint unsigned auto_increment primary key not null,
        nombre varchar(30) unique not null,
        precio float(9,2) unsigned not null,
        stock tinyint unsigned not null
    );

## Borrar tablas

> Para borrar una tabla utilizamos el comando
> **DROP TABLE** 

> Sintáxis: 
    
    DROP TABLE nombretabla;

> Ejemplo práctico: 

    DROP TABLE billeteras;

