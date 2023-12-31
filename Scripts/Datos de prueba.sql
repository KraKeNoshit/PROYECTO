-- MODELO ENTIDADES RELACIONADAS --

-- DATABASE --
CREATE DATABASE IF NOT EXISTS MER;
SHOW DATABASES;
USE MER;

-- TABLAS --

-- DUEÑ@ / ADMINISTRADOR/A  --
CREATE TABLE IF NOT EXISTS Dueñ@ (
Nombre_Dueñ@ VARCHAR (50) PRIMARY KEY,
ID_Local AUTO_INCREMENT,
Nombre_local VARCHAR(50),
Apellido VARCHAR (50),
Contacto VARCHAR (50),
Direccion VARCHAR (100),
Telefono VARCHAR (12),
Email VARCHAR (60),
Horario DATE,
Fecha_ingreso DATE
);

-- SUCURSALES --
CREATE TABLE IF NOT EXISTS Sucursales (
ID_Sucursal INT AUTO_INCREMENT PRIMARY KEY,
Nombre VARCHAR(50) PRIMARY KEY,
Ubicacion VARCHAR(50),
Telefono VARCHAR(12),
Nombre_dueñ@ VARCHAR(50)
);

-- EMPLEADO --
CREATE TABLE IF NOT EXISTS Empleados (
ID_Empleado INT AUTO_INCREMENT PRIMARY KEY,
Nombre VARCHAR(50),
Apellido VARCHAR(50),
Direccion VARCHAR(100),
Telefono VARCHAR(12),
Email VARCHAR(60),
Horario DATE,
Fecha_ingreso DATE,
Puesto VARCHAR(50)
);

-- MATERIAL DE TRABAJO --
CREATE TABLE IF NOT EXISTS Equipo (
ID_Equipo INT AUTO_INCREMENT,
Nombre VARCHAR(50) PRIMARY KEY,
Descripcion VARCHAR(50),
Telefono VARCHAR(12),
Gmail VARCHAR(60)
);

-- PROVEEDOR --
CREATE TABLE IF NOT EXISTS Proveedor (
ID_Proveedor INT AUTO_INCREMENT,
Nombre VARCHAR(50),
Teleno VARCHAR(12),
Direccion VARCHAR(100),
Gmail VARCHAR(60)
);

-- STOCK --
CREATE TABLE IF NOT EXISTS Stock (
ID_Producto INT AUTO_INCREMENT PRIMARY KEY,
Nombre VARCHAR(50),
Descripcion VARCHAR(300),
Fecha_ingreso DATE,
Gmail VARCHAR(60),
Cantidad INT
);

-- PRODUCTO --
CREATE TABLE IF NOT EXISTS Producto (
ID_Libro INT AUTO_INCREMENT PRIMARY KEY,
Nombre_producto VARCHAR(50),
precio_unitario DECIMAL(8,2),
Cantidad_en_stock SMALLINT,
Cantidad INT
);

-- VENTA --
CREATE TABLE IF NOT EXISTS Venta (
ID_Venta INT AUTO_INCREMENT PRIMARY KEY,
ID_Producto INT AUTO_INCREMENT,
Nombre_cliente VARCHAR(50),
Fecha DATE,
Total DECIMAL(10,2)
);

-- DETALLE DE VENTA --
CREATE TABLE IF NOT EXISTS Detalle_venta (
ID_Venta INT AUTO_INCREMENT,
ID_Producto INT AUTO_INCREMENT,
ID_Empleado INT AUTO_INCREMENT,
Nombre_producto VARCHAR(50),
Fecha DATE,
Nombre_cliente VARCHAR(50),
Precio_unitario DECIMAL(8,2),
Total DECIMAL(10,2)
);

-- CLIENTE --
CREATE TABLE IF NOT EXISTS Cliente (
ID_Cliente INT AUTO_INCREMENT PRIMARY KEY,
ID_Devolucion DECIMAL(10,2),
Nombre_cliente VARCHAR(50),
Apellido VARCHAR(50),
Telefono VARCHAR(12),
Gmail VARCHAR(60)
);

-- GASTO --
CREATE TABLE IF NOT EXISTS Gasto (
ID_Gasto INT AUTO_INCREMENT PRIMARY KEY,
Monto DECIMAL(10,2),
Tipo VARCHAR(30),
Fecha DATE
);

-- BOLETA --
CREATE TABLE IF NOT EXISTS Boleta (
ID_Boleta INT AUTO_INCREMENT PRIMARY KEY,
ID_Venta INT AUTO_INCREMENT,
Fecha_emision DATETIME,
Total DECIMAL(10,2)
);

-- PEDIDO --
CREATE TABLE IF NOT EXISTS Pedido (
ID_Venta INT AUTO_INCREMENT,
ID_Cliente INT AUTO_INCREMENT,
Cliente VARCHAR(50),
Direccion VARCHAR(50),
Telefono VARCHAR(12)
);

-- GANANCIA --
CREATE TABLE IF NOT EXISTS Ganancia (
ID_Ganancia INT AUTO_INCREMENT PRIMARY KEY,
Monto DECIMAL(10,2),
Fecha DATE
);

-- GASTO --
CREATE TABLE IF NOT EXISTS Gasto (
ID_Gasto INT AUTO_INCREMENT PRIMARY KEY,
Monto DECIMAL(10,2),
Tipo VARCHAR (30),
Fecha DATE
);

-- DEVOLUCION --
CREATE TABLE IF NOT EXISTS devolucion (
ID_Devolucion INT AUTO_INCREMENT PRIMARY KEY,
ID_Cliente INT AUTO_INCREMENT,
Nombre_cliente VARCHAR(50),
Apellido VARCHAR(50),
Telefono VARCHAR(12),
Gmail VARCHAR(60),
Total_devolucion DECIMAL(10,2)
);

