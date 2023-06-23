# Creación de tabla destinos

CREATE TABLE destinos
(
    idDestino tinyint unsigned auto_increment primary key not null,
    destNombre varchar(50) unique not null,
    idRegion tinyint unsigned not null,
    destPrecio float(8,2) unsigned not null,
    destAsientos tinyint unsigned not null,
    destDisponibles tinyint unsigned not null,
    destActivo boolean not null,
    foreign key (idRegion) references regiones (idRegion)
);