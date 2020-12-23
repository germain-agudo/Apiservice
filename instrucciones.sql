
CREATE DATABASE restful CHARACTER SET utf8mb4 COLLATE UTF8MB4_general_ci;
USE restful;

CREATE TABLE producto(
id BIGINT NOT NULL AUTO_INCREMENT
, descripcion VARCHAR(100) NOT NULL
, categoria VARCHAR(50) NOT NULL
, precio_unitario DOUBLE NOT NULL
, existencia BIGINT NOT NULL
, CONSTRAINT pkProducto PRIMARY KEY(id)
)ENGINE=InnoDB;


INSERT INTO producto(
descripcion, categoria, precio_unitario, existencia)
VALUES
('Emperador sabor nuez 109g','Galletas','12', '9')
,('Nutri leche 1L','Leches','16.5', '12')
,('NIVEA MEN INVISIBLE','Desodorantes','55', '78')
,('kleen Bebe Absorsec','Pañales','4', '44');


SELECT * FROM producto;