-- SUPERMANUALDECODIGOBARBARO --

-- ATAJOS DE TECLADO --

-- EJECUTAR CONSURTAS --


-- DATABASE --
CREATE DATABASE IF NOT EXISTS nombre_de_database; -- CREA UNA BASE DE DATOS CON EL NOMBRE INDICADO

SHOW DATABASES; -- MUESTRA LAS BASES DE DATOS EXISTENTES

USE nombre_de_database;



-- TABLA --
CREATE TABLE IF NOT EXISTS nombre_de_tabla( -- CREA UNA TABLA SI NO EXISTE CON EL NOMBRE INDICADO
-- CONTENIDO DE TABLA --
id_columna INT AUTO_INCREMENT, -- INT O INTEGER SOPORTA DATOS DE TIPO: (0,1), (255), (6000), (61.23)

nombre_de_columna_1 FLOAT (999), -- FLOAT SOPORTA DATOS DE TIPO: (61.23)

nombre_de_columna_2 VARCHAR (999), -- VARCHAR SOPORTA DATOS DE TIPO: (PALABRAS)

-- LLAVES --

PRIMARY KEY (id_columna),
FOREIGN KEY (nombre_de_columna_2) REFERENCES USER (id_columna)
);

SHOW CREATE TABLE nombre_de_tabla; -- MUESTRA LAS TABLAS YA CREADAS



-- INSERCION DE DATOS --
INSERT INTO nombre_de_tabla (nombre_de_columna_1, nombre_de_columna_2) VALUES (datos_de_columna_1, datos_de_columna_2); -- INSERTAR DATOS DE COLUMNAS ASIGNADOS
-- EJEMPLO:
INSERT INTO nombre_de_tabla MODIFY COLUMN id_columna INT AUTO_INCREMENT;

INSERT INTO nombre_de_tabla (NAME, nombre_de_columna_1, nombre_de_columna_2) -- INSERTAR VARIOS DATOS EN VARIAS COLUMNAS
VALUES
	("aña", 2, "año"),
    ("aña", 2, "año");
    



-- ALTERACION DE DATOS --
ALTER TABLE nombre_de_tabla MODIFY COLUMN nombre_de_columna + su tipo de dato + la alteracion que se quiera hacer ; -- ALTERA DATOS YA EXISTENTES DE COLUMNAS

SHOW CREATE TABLE nombre_de_tabla; -- MUESTRA LAS COLUMNAS DE LA TABLA INDICADA

SELECT * FROM nombre_de_tabla WHERE id_columna = 1; -- BUSCARA LA COLUMNA QUE TENGA EL VALOR ASIGNADO

SELECT * FROM nombre_de_tabla WHERE nombre_de_columna_1 = "AÑA" AND nombre_de_columna_2 = "EÑE"; -- BUSCARA LAS COLUMNAS QUE TENGAN LOS VALORES ASIGNADOS



-- FILTROS --
SELECT * FROM nombre_de_tabla; -- MUESTRA LA TABLA CON EL NOMBRE INDICADO

SELECT * FROM nombre_de_tabla WHERE id_columna = 1; -- MUESTRA LA TABLA Y LA COLUMNA CON EL VALOR Y EL NOMBRE INDICADO

SELECT * FROM USER LIMIT 1; -- MUESTRA A LOS DATOS PERO LIMITADO A QUE SOLO MUESTRE LA CANTIDAD DE INDICADA

SELECT * FROM USER WHERE nombre_de_tabla LIKE "%palabra%"; -- MOSTRARA LOS DATOS QUE INCLUYAN PALABRA

SELECT * FROM USER WHERE nombre_de_tabla LIKE "%palabra"; -- MOSTRARA LOS DATOS QUE INCLUYAN PALABRA AL FINAL

SELECT * FROM USER WHERE nombre_de_tabla LIKE "palabra%"; -- MOSTRARA LOS DATOS QUE INCLUYAN PALABRA AL PRINCIPIO


-- LEFT, RIGHT, INNER, CROSS, JOIN --
SELECT (alias de columna 1) . (nombre_columna) FROM (nombre_de_tabla) (alias de columana 2) FROM (nombre_de_tabla 1) (alias de tabla 2) (LEFT JOIN) (nombre de tabla 2) ON (alias y nombre de columna) = (alias y nombre de columan 2)

SELECT u.id, u.name, p.marca FROM user u LEFT JOIN products p ON u.id = p.id;

SELECT u.id, u.email FROM USER u LEFT JOIN nombre_de_tabla;


-- CAMBIAR DATOS --
UPDATE nombre_de_tabla SET nombre_de_columna = "aña" WHERE id_columna = 1; -- CAMBIA LOS VALORES DE LA COLUMNA CON LOS DATOS INDICADOS

RENAME TABLE nombre_de_tabla TO nombre_tabla; -- CAMBIARA EL NOMBRE DE LA TABLA


-- ELIMINAR --
DELETE FROM nombre_de_tabla WHERE id_columna = 3; -- ELIMINA LAS COLUMNAS 



-- NUMERICOS --
SELECT * FROM USER WHERE nombre_de_tabla > 15; -- MOSTRARA LOS USUARIOS QUE TENGAN LA EDAD MAYOR A 15

SELECT * FROM USER WHERE nombre_de_tabla BETWEEN 15 AND 30; -- MOSTRARA LOS USUARIOS QUE TENGAN ENTRE 15 Y 30 AÑOS

SELECT * FROM USER WHERE nombre_de_tabla > 20 OR email = "caca@gmail.com"; -- MOSTRARA LOS USUARIOS QUE TENAN MAS DE 20 O TENGA EL EMIAL INDICADO

SELECT * FROM USER ORDER BY nombre_de_tabla ASC; -- MOSTRARA LOS VALORES DE FORMA ASCENDENTE

SELECT * FROM USER OREDR BY nombre_de_tabla DESC; -- MOSTRARA LOS VALORES DE FORMA DESCENDENTE

SELECT COUNT(*) FROM nombre_de_tabla; -- MOSTRARA EL NUMERO DE TABLAS QUE EXISTEN

-- != DIFERENTE

