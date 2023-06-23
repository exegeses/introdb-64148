# Creación de tabla regiones

CREATE TABLE regiones
(
    idRegion tinyint unsigned auto_increment primary key not null,
    regNombre varchar(40) unique not null
);