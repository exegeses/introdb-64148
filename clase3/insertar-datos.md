# Insertar datos en SQL

> Hay 3 maneras de insertar datos en SQL

## Sintáxis usando **SET**

> Sintáxis:

    INSERT INTO nombreTabla  
      SET  
            nombreColumna = valor,
            nombreColumna = valor,
            nombreColumna = valor;

> Ejemplo práctico: 

    INSERT INTO billeteras  
      SET
            nombre = 'Ledger Nano S',  
            precio = 16000,  
            stock  = 30;


## Sintáxis completa ( se mencionan las columnas )

> Sintáxis: 

    INSERT INTO nombreTabla  
        ( nombreCol2, nombreCol3, nombrecol5 )  
      VALUES  
        ( valor2, valor3, valor5 );

> Ejemplo práctico:

    INSERT INTO billeteras  
        ( nombre, precio, stock )  
    VALUES  
        ( 'Trezor One', 19500, 30 );


## Sintáxis simplificada ( NO se mencionan las columnas )

> Sintáxis:

    INSERT INTO nombreTabla  
      VALUES  
        ( valor1, valor2, valor3, valor4 );

> Ejemplo práctico:

    INSERT INTO billeteras  
      VALUES  
        ( DEFAULT, 'Trezor T', 78000, 20 );