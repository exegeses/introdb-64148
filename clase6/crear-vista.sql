# Una vista es "una consulta"
-- es una consulta que podemos almacenar
-- dentro de nuestra base de datos
## PARECE una tabla tamporal, pero no lo es

CREATE VIEW consulta_precio
AS
SELECT prdNombre AS Producto, prdPrecio AS 'Precio Contado',
       prdPrecio * 1.05 AS 'Precio Lista',
       mkNombre AS Marca, catNombre  as Categoría
FROM productos AS p
         JOIN marcas AS m
              ON p.idMarca = m.idMarca
         JOIN categorias AS c
              ON p.idCategoria = c.idCategoria;