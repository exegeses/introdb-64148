# Consultas en SQL

> Para hacer consultas a un serever de compatibilidad SQL
> (MySQL, Oracle, PostGreSQL, IBM-DB2, SQL Server, etc)
> Tenemos varias palabras reservados.
> Aunque la más importante es la palabra **SELECT**

> Otras consultas

    SHOW TABLES;  

    DESCRIBE nombreTabla

## Consultas a SERVER
 > Si bien hay otras palabras reservadas, vamos a hacer hincapié
 > en la palabra **SELECT** 
 
> Ver la base de datos ACTIVA 

    SELECT DATABASE();  

> Consultar fecha actual  y además + 30 días

    SELECT CURDATE(), DATE_ADD( curdate(), INTERVAL 30 DAY )

## Consultas a tablas de de una base de datos

> Para generar consultas a tablas de una base de datos 
> vamos a utilizar la palabra **SELECT** y además vamos a especificar la tabla con la palabra **FROM** 

> Sintáxis:

    SELECT * FROM nombreTabla;  

> Ejemplo práctico:

    SELECT * FROM billeteras;  

> Si necesitamos especificar sólo algunas columnas debemos mencionarlas luego del **SELECT** 

> Sintáxis: 

    SELECT nombreColumna, nombreColumna2  
      FROM nombreTabla;

> Ejemplo práctico: 

    SELECT destNombre, destPrecio   
      FROM destinos;  

## Orden de los registros 

> Para ordenar los registros como resulktado de la connsulta
> utilizamos **ORDER BY** 

> Sintáxis:

    SELECT nombreColumna, nombreColumna2  
      FROM nombreTabla  
      ORDER BY nombreColumna;

> Ejemplo práctico:

    SELECT destNombre, destPrecio   
      FROM destinos  
      ORDER BY destNombre;  

    SELECT destNombre, destPrecio   
      FROM destinos  
      ORDER BY idRegion, destPrecio;  

## Filtrado de registros

> Filtrar registros significa que vamos atraer sólamente
> los registros que compran con una condición

> Para especificar una condiciónse utiliza la palabra 
> **WHERE**

> Ejemplo práctico: 
> Traer nombre y precio de los destinos
> con un precio que no supera los 8000

    SELECT destNombre, destPrecio   
    FROM destinos  
    WHERE destPrecio <= 8000; 

> Traer nombre y precio de los destinos
> con un precio entre 6500 y 8000

    SELECT destNombre, destPrecio  
    FROM destinos  
    WHERE destPrecio >= 6500  
    AND destPrecio <= 8000;  


> Traer nombre y precio de los destinos
> con un precio entre 6500 y 8000
> utilizando la palabra **BETWEEN**

    SELECT destNombre, destPrecio  
    FROM destinos  
    WHERE destPrecio BETWEEN 6500 AND 8000;


> Traer nombre y precio de los destinos
> de la regi´´on 5;

    SELECT destNombre, destPrecio  
    FROM destinos  
    WHERE idRegion = 5;  


> Traer nombre y precio de los destinos
> de la regi´´on 3 y además de la región 5

    SELECT destNombre, destPrecio  
    FROM destinos  
    WHERE idRegion = 3  
    OR idRegion = 5;  


    SELECT destNombre, destPrecio  
    FROM destinos  
    WHERE idRegion IN( 3, 5 );  



