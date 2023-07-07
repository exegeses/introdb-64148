# Creación de tablas catálogo

-- tabla marcas
create table marcas
(
    idMarca tinyint unsigned auto_increment primary key not null,
    mkNombre varchar(40) unique not null
);

-- tabla categorias
create table categorias
(
    idCategoria tinyint unsigned auto_increment primary key not null,
    catNombre varchar(40) unique not null
);

-- tabla productos
create table productos
(
    idProducto mediumint unsigned auto_increment primary key not null,
    prdNombre varchar(40) unique not null,
    prdPrecio float(8,2) unsigned not null,
    idMarca tinyint unsigned,
        foreign key (idMarca) references marcas (idMarca),
    idCategoria tinyint unsigned,
        foreign key (idCategoria) references categorias (idCategoria),
    prdDescripcion varchar(1000) not null,
    prdImagen varchar(45) not null,
    prdActivo boolean not null
);