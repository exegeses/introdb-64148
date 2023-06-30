# Modificación de datos de una tabla

> Para la modificación de datos ( registros )
> de una tabla utilizamos el comando 
> **UPDATE**

> Sintáxis: 

    UPDATE nombreTabla  
      SET 
            nombreColumna = valor,
            nombreColumna = valor  
    WHERE  colPrimaryKey = valorID;

> Ejemplo práctico: 

    UPDATE billeteras  
      SET  
            precio = 16500
    WHERE id = 1;


> Ejemplo práctico: 
> Modificar los precios de TODOS los productos 
> por un precio con un incremento del 5%


    UPDATE billeteras  
      SET  
            precio = precio * 1.05;

