/*Procedimientos almacenados para Propietario*/
-- Create
DELIMITER $$
CREATE PROCEDURE SP_Create_PropietarioCopy()
BEGIN
    CREATE TABLE propietario_copy LIKE propietario;
END$$
DELIMITER ;
-- Update
DELIMITER $$
CREATE PROCEDURE SP_Update_SP_Delete_ProductoTablePropietario(
    IN prop_id INT, 
    IN new_nombre VARCHAR(50), 
    IN new_apellido VARCHAR(50), 
    IN new_direccion VARCHAR(100), 
    IN new_telefono VARCHAR(12), 
    IN new_email VARCHAR(100)
)
BEGIN
    UPDATE propietario
    SET nombre = new_nombre, 
        apellido = new_apellido, 
        direccion = new_direccion, 
        telefono = new_telefono, 
        email = new_email
    WHERE id = prop_id;
END$$
DELIMITER ;
-- Insert
DELIMITER $$
CREATE PROCEDURE SP_Insert_Propietario(
    IN prop_id INT, 
    IN prop_nombre VARCHAR(50), 
    IN prop_apellido VARCHAR(50), 
    IN prop_direccion VARCHAR(100), 
    IN prop_telefono VARCHAR(12), 
    IN prop_email VARCHAR(100)
)
BEGIN
    INSERT INTO propietario (id, nombre, apellido, direccion, telefono, email) 
    VALUES (prop_id, prop_nombre, prop_apellido, prop_direccion, prop_telefono, prop_email);
END$$
DELIMITER ;
-- Delete
DELIMITER $$
CREATE PROCEDURE SP_Delete_PropietarioTable()
BEGIN
    DROP TABLE propietario;
END$$
DELIMITER;

/*Procedimientos almacenados para Sucursal*/
-- create
DELIMITER $$
CREATE PROCEDURE SP_Create_SucursalCopy()
BEGIN
    CREATE TABLE sucursal_copy LIKE sucursal;
END$$
DELIMITER;
-- update
DELIMITER $$
CREATE PROCEDURE SP_Update_Sucursal(
    IN suc_id INT,
    IN new_nombre VARCHAR(25),
    IN new_direccion VARCHAR(100),
    IN new_telefono VARCHAR(12)
)
BEGIN
    UPDATE sucursal
    SET nombre = new_nombre,
        direccion = new_direccion,
        telefono = new_telefono
    WHERE id = suc_id;
END$$
DELIMITER;
-- insert
DELIMITER $$
CREATE PROCEDURE SP_Insert_Sucursal(
    IN suc_id INT,
    IN suc_nombre VARCHAR(25),
    IN suc_direccion VARCHAR(100),
    IN suc_telefono VARCHAR(12)
)
BEGIN
    INSERT INTO sucursal (id, nombre, direccion, telefono)
    VALUES (suc_id, suc_nombre, suc_direccion, suc_telefono);
END$$
DELIMITER;
-- delete
DELIMITER $$
CREATE PROCEDURE SP_Delete_SucursalTable()
BEGIN
    DROP TABLE sucursal;
END$$
DELIMITER ;

/*Procedimientos almacenados para Trabajadores*/
-- create
DELIMITER $$
CREATE PROCEDURE SP_Create_TrabajadoresCopy()
BEGIN
    CREATE TABLE trabajadores_copy LIKE trabajadores;
END$$
DELIMITER;
-- update
DELIMITER $$
CREATE PROCEDURE SP_Update_Trabajadores(
    IN trab_id INT,
    IN new_nombre VARCHAR(25),
    IN new_apellido VARCHAR(25),
    IN new_rut VARCHAR(12),
    IN new_direccion VARCHAR(100),
    IN new_telefono VARCHAR(12),
    IN new_email VARCHAR(60),
    IN new_fecha_ingreso DATE,
    IN new_puesto VARCHAR(50),
    IN new_fk_sucursal INT
)
BEGIN
    UPDATE trabajadores
    SET nombre = new_nombre,
        apellido = new_apellido,
        rut = new_rut,
        direccion = new_direccion,
        telefono = new_telefono,
        email = new_email,
        fecha_ingreso = new_fecha_ingreso,
        puesto = new_puesto,
        fk_sucursal = new_fk_sucursal
    WHERE id = trab_id;
END$$
DELIMITER;
-- insert
DELIMITER $$
CREATE PROCEDURE SP_Insert_Trabajadores(
    IN trab_id INT,
    IN trab_nombre VARCHAR(25),
    IN trab_apellido VARCHAR(25),
    IN trab_rut VARCHAR(12),
    IN trab_direccion VARCHAR(100),
    IN trab_telefono VARCHAR(12),
    IN trab_email VARCHAR(60),
    IN trab_fecha_ingreso DATE,
    IN trab_puesto VARCHAR(50),
    IN trab_fk_sucursal INT
)
BEGIN
    INSERT INTO trabajadores (id, nombre, apellido, rut, direccion, telefono, email, fecha_ingreso, puesto, fk_sucursal)
    VALUES (trab_id, trab_nombre, trab_apellido, trab_rut, trab_direccion, trab_telefono, trab_email, trab_fecha_ingreso, trab_puesto, trab_fk_sucursal);
END$$
DELIMITER;
-- delete
DELIMITER $$
CREATE PROCEDURE SP_Delete_TrabajadoresTable()
BEGIN
    DROP TABLE trabajadores;
END$$
DELIMITER;

/*Procedimientos almacenados para Venta*/
-- create
DELIMITER $$
CREATE PROCEDURE SP_Create_VentaCopy()
BEGIN
    CREATE TABLE venta_copy LIKE venta;
END$$
DELIMITER;
-- update
DELIMITER $$
CREATE PROCEDURE SP_Update_Venta(
    IN ven_id INT,
    IN new_fecha DATE,
    IN new_fk_cliente INT,
    IN new_fk_trabajador INT
)
BEGIN
    UPDATE venta
    SET fecha = new_fecha,
        fk_cliente = new_fk_cliente,
        fk_trabajador = new_fk_trabajador
    WHERE id = ven_id;
END$$
DELIMITER;
-- insert
DELIMITER $$
CREATE PROCEDURE SP_Insert_Venta(
    IN ven_id INT,
    IN ven_fecha DATE,
    IN ven_fk_cliente INT,
    IN ven_fk_trabajador INT
)
BEGIN
    INSERT INTO venta (id, fecha, fk_cliente, fk_trabajador)
    VALUES (ven_id, ven_fecha, ven_fk_cliente, ven_fk_trabajador);
END$$
DELIMITER;
-- delete
DELIMITER $$
CREATE PROCEDURE SP_Delete_VentaTable()
BEGIN
    DROP TABLE venta;
END$$
DELIMITER;

/*Procedimientos almacenados para Cliente*/
-- create
DELIMITER $$
CREATE PROCEDURE SP_Create_ClienteCopy()
BEGIN
    CREATE TABLE cliente_copy LIKE cliente;
END$$
DELIMITER;
-- update
DELIMITER $$
CREATE PROCEDURE SP_Update_Cliente(
    IN cli_id INT,
    IN new_nombre VARCHAR(25),
    IN new_apellido VARCHAR(25),
    IN new_rut VARCHAR(12),
    IN new_direccion VARCHAR(100),
    IN new_email VARCHAR(60),
    IN new_telefono VARCHAR(12)
)
BEGIN
    UPDATE cliente
    SET nombre = new_nombre,
        apellido = new_apellido,
        rut = new_rut,
        direccion = new_direccion,
        email = new_email,
        telefono = new_telefono
    WHERE id = cli_id;
END$$
DELIMITER;
-- insert
DELIMITER $$
CREATE PROCEDURE SP_Insert_Cliente(
    IN cli_id INT,
    IN cli_nombre VARCHAR(25),
    IN cli_apellido VARCHAR(25),
    IN cli_rut VARCHAR(12),
    IN cli_direccion VARCHAR(100),
    IN cli_email VARCHAR(60),
    IN cli_telefono VARCHAR(12)
)
BEGIN
    INSERT INTO cliente (id, nombre, apellido, rut, direccion, email, telefono)
    VALUES (cli_id, cli_nombre, cli_apellido, cli_rut, cli_direccion, cli_email, cli_telefono);
END$$
DELIMITER;
-- detele
DELIMITER $$
CREATE PROCEDURE SP_Delete_ClienteTable()
BEGIN
    DROP TABLE cliente;
END$$
DELIMITER;

/*Procedimientos almacenados para Producto*/
-- create
DELIMITER $$
CREATE PROCEDURE SP_Create_ProductoCopy()
BEGIN
    CREATE TABLE producto_copy LIKE producto;
END$$
DELIMITER;
-- update
DELIMITER $$
CREATE PROCEDURE SP_Update_Producto(
    IN prod_id INT,
    IN new_nombre_producto VARCHAR(100),
    IN new_detalle_producto VARCHAR(100),
    IN new_precio_unitario INT,
    IN new_cantidad_stock INT,
    IN new_fk_proveedor INT
)
BEGIN
    UPDATE producto
    SET nombre_producto = new_nombre_producto,
        detalle_producto = new_detalle_producto,
        precio_unitario = new_precio_unitario,
        cantidad_stock = new_cantidad_stock,
        fk_proveedor = new_fk_proveedor
    WHERE id = prod_id;
END$$
DELIMITER;
-- insert
DELIMITER $$
CREATE PROCEDURE SP_Insert_Producto(
    IN prod_id INT,
    IN prod_nombre_producto VARCHAR(100),
    IN prod_detalle_producto VARCHAR(100),
    IN prod_precio_unitario INT,
    IN prod_cantidad_stock INT,
    IN prod_fk_proveedor INT
)
BEGIN
    INSERT INTO producto (id, nombre_producto, detalle_producto, precio_unitario, cantidad_stock, fk_proveedor)
    VALUES (prod_id, prod_nombre_producto, prod_detalle_producto, prod_precio_unitario, prod_cantidad_stock, prod_fk_proveedor);
END$$
DELIMITER;
-- delete
DELIMITER $$
CREATE PROCEDURE SP_Delete_ProductoTable()
BEGIN
    DROP TABLE producto;
END$$
DELIMITER;

/*Procedimientos almacenados para Proveedor*/
-- create
DELIMITER $$
CREATE PROCEDURE SP_Create_ProveedorCopy()
BEGIN
    CREATE TABLE proveedor_copy LIKE proveedor;
END$$
DELIMITER;
-- update
DELIMITER $$
CREATE PROCEDURE SP_Update_Proveedor(
    IN prov_id INT,
    IN new_nombre VARCHAR(100),
    IN new_direccion VARCHAR(100),
    IN new_telefono VARCHAR(12),
    IN new_email VARCHAR(100)
)
BEGIN
    UPDATE proveedor
    SET nombre = new_nombre,
        direccion = new_direccion,
        telefono = new_telefono,
        email = new_email
    WHERE id = prov_id;
END$$
DELIMITER;
-- insert
DELIMITER $$
CREATE PROCEDURE SP_Insert_Proveedor(
    IN prov_id INT,
    IN prov_nombre VARCHAR(100),
    IN prov_direccion VARCHAR(100),
    IN prov_telefono VARCHAR(12),
    IN prov_email VARCHAR(100)
)
BEGIN
    INSERT INTO proveedor (id, nombre, direccion, telefono, email)
    VALUES (prov_id, prov_nombre, prov_direccion, prov_telefono, prov_email);
END$$
DELIMITER;
-- detele
DELIMITER $$
CREATE PROCEDURE SP_Delete_ProveedorTable()
BEGIN
    DROP TABLE proveedor;
END$$
DELIMITER ;

/*Procedimientos almacenados para Pedido*/
-- create
DELIMITER $$
CREATE PROCEDURE SP_Create_PedidoCopy()
BEGIN
    CREATE TABLE pedido_copy LIKE pedido;
END$$
DELIMITER;
-- update
DELIMITER $$
CREATE PROCEDURE SP_Update_Pedido(
    IN ped_id INT,
    IN new_fecha_pedido DATE,
    IN new_fk_cliente INT,
    IN new_fk_producto INT,
    IN new_cantidad INT
)
BEGIN
    UPDATE pedido
    SET fecha_pedido = new_fecha_pedido,
        fk_cliente = new_fk_cliente,
        fk_producto = new_fk_producto,
        cantidad = new_cantidad
    WHERE id = ped_id;
END$$
DELIMITER;
-- insert
DELIMITER $$
CREATE PROCEDURE SP_Insert_Pedido(
    IN ped_id INT,
    IN ped_fecha_pedido DATE,
    IN ped_fk_cliente INT,
    IN ped_fk_producto INT,
    IN ped_cantidad INT
)
BEGIN
    INSERT INTO pedido (id, fecha_pedido, fk_cliente, fk_producto, cantidad)
    VALUES (ped_id, ped_fecha_pedido, ped_fk_cliente, ped_fk_producto, ped_cantidad);
END$$
DELIMITER;
-- delete
DELIMITER $$
CREATE PROCEDURE SP_Delete_PedidoTable()
BEGIN
    DROP TABLE pedido;
END$$
DELIMITER ;

/* Procedimientos almacenados para Detalle_Venta */
-- create
DELIMITER $$
CREATE PROCEDURE SP_Create_DetalleVentaCopy()
BEGIN
    CREATE TABLE detalle_venta_copy LIKE detalle_venta;
END$$
DELIMITER;
-- update
DELIMITER $$
CREATE PROCEDURE SP_Update_DetalleVenta(
    IN detVen_id INT,
    IN new_cantidad SMALLINT,
    IN new_precio_unitario INT,
    IN new_total INT,
    IN new_id_venta INT,
    IN new_id_producto INT
)
BEGIN
    UPDATE detalle_venta
    SET cantidad = new_cantidad,
        precio_unitario = new_precio_unitario,
        total = new_total,
        id_venta = new_id_venta,
        id_producto = new_id_producto
    WHERE id = detVen_id;
END$$
DELIMITER;
-- insert
DELIMITER $$
CREATE PROCEDURE SP_Insert_DetalleVenta(
    IN detVen_cantidad SMALLINT,
    IN detVen_precio_unitario INT,
    IN detVen_total INT,
    IN detVen_id_venta INT,
    IN detVen_id_producto INT
)
BEGIN
    INSERT INTO detalle_venta (cantidad, precio_unitario, total, id_venta, id_producto)
    VALUES (detVen_cantidad, detVen_precio_unitario, detVen_total, detVen_id_venta, detVen_id_producto);
END$$
DELIMITER;
-- detele
DELIMITER $$
CREATE PROCEDURE SP_Delete_DetalleVenta(
    IN detVen_id INT
)
BEGIN
    DELETE FROM detalle_venta WHERE id = detVen_id;
END$$
DELIMITER ;

/* Procedimientos almacenados para Detalle_Pedido */

-- create
DELIMITER $$
CREATE PROCEDURE SP_Create_DetallePedidoCopy()
BEGIN
    CREATE TABLE detalle_pedido_copy LIKE detalle_pedido;
END$$
DELIMITER;
-- update
DELIMITER $$
CREATE PROCEDURE SP_Update_DetallePedido(
    IN detPed_id INT,
    IN new_fk_pedido INT,
    IN new_fk_producto INT,
    IN new_cantidad INT,
    IN new_precio_unitario INT
)
BEGIN
    UPDATE detalle_pedido
    SET fk_pedido = new_fk_pedido,
        fk_producto = new_fk_producto,
        cantidad = new_cantidad,
        precio_unitario = new_precio_unitario
    WHERE id = detPed_id;
END$$
DELIMITER;
-- insert
DELIMITER $$
CREATE PROCEDURE SP_Insert_DetallePedido(
    IN detPed_id INT,
    IN detPed_fk_pedido INT,
    IN detPed_fk_producto INT,
    IN detPed_cantidad INT,
    IN detPed_precio_unitario INT
)
BEGIN
    INSERT INTO detalle_pedido (id, fk_pedido, fk_producto, cantidad, precio_unitario)
    VALUES (detPed_id, detPed_fk_pedido, detPed_fk_producto, detPed_cantidad, detPed_precio_unitario);
END$$
DELIMITER;
-- delete
DELIMITER $$
CREATE PROCEDURE SP_Delete_DetallePedidoTable()
BEGIN
    DROP TABLE detalle_pedido;
END$$
DELIMITER ;

/* Procedimientos almacenados para Control_Stock */

-- create
DELIMITER $$
CREATE PROCEDURE SP_Create_ControlStockCopy()
BEGIN
    CREATE TABLE control_stock_copy LIKE control_stock;
END$$
DELIMITER;
-- update
DELIMITER $$
CREATE PROCEDURE SP_Update_ControlStock(
    IN cs_id INT,
    IN new_fecha_ingreso DATE,
    IN new_cantidad INT,
    IN new_fk_producto INT
)
BEGIN
    UPDATE control_stock
    SET fecha_ingreso = new_fecha_ingreso,
        cantidad = new_cantidad,
        fk_producto = new_fk_producto
    WHERE id = cs_id;
END$$
DELIMITER;
-- insert
DELIMITER $$
CREATE PROCEDURE SP_Insert_ControlStock(
    IN cs_fecha_ingreso DATE,
    IN cs_cantidad INT,
    IN cs_fk_producto INT
)
BEGIN
    INSERT INTO control_stock (fecha_ingreso, cantidad, fk_producto)
    VALUES (cs_fecha_ingreso, cs_cantidad, cs_fk_producto);
END$$
-- delete 
DELIMITER $$
CREATE PROCEDURE SP_Delete_ControlStock(IN cs_id INT)
BEGIN
    DELETE FROM control_stock WHERE id = cs_id;
END$$
DELIMITER ;

/* Procedimientos almacenados para Devolucion */
-- create
DELIMITER $$
CREATE PROCEDURE SP_Create_DevolucionCopy()
BEGIN
    CREATE TABLE devolucion_copy LIKE devolucion;
END$$
DELIMITER;
-- update
DELIMITER $$
CREATE PROCEDURE SP_Update_Devolucion(
    IN dev_id INT,
    IN new_fecha_devolucion DATE,
    IN new_motivo VARCHAR(100),
    IN new_fk_cliente INT,
    IN new_fk_venta INT
)
BEGIN
    UPDATE devolucion
    SET fecha_devolucion = new_fecha_devolucion,
        motivo = new_motivo,
        fk_cliente = new_fk_cliente,
        fk_venta = new_fk_venta
    WHERE id = dev_id;
END$$
DELIMITER;
-- insert
DELIMITER $$
CREATE PROCEDURE SP_Insert_Devolucion(
    IN dev_fecha_devolucion DATE,
    IN dev_motivo VARCHAR(100),
    IN dev_fk_cliente INT,
    IN dev_fk_venta INT
)
BEGIN
    INSERT INTO devolucion (fecha_devolucion, motivo, fk_cliente, fk_venta)
    VALUES (dev_fecha_devolucion, dev_motivo, dev_fk_cliente, dev_fk_venta);
END$$
DELIMITER;
-- delete
DELIMITER $$
CREATE PROCEDURE SP_Delete_Devolucion(IN dev_id INT)
BEGIN
    DELETE FROM devolucion WHERE id = dev_id;
END$$
DELIMITER ;

/* Procedimientos almacenados para Boleta */

-- create
DELIMITER $$
CREATE PROCEDURE SP_Create_BoletaCopy()
BEGIN
    CREATE TABLE boleta_copy LIKE boleta;
END$$
DELIMITER;
-- update
DELIMITER $$
CREATE PROCEDURE SP_Update_Boleta(
    IN b_id INT, 
    IN new_fk_producto VARCHAR(30), 
    IN new_fk_trabajador INT, 
    IN new_fecha_emision DATE, 
    IN new_total INT, 
    IN new_fk_venta INT
)
BEGIN
    UPDATE boleta
    SET fk_producto = new_fk_producto, 
        fk_trabajador = new_fk_trabajador, 
        fecha_emision = new_fecha_emision, 
        total = new_total, 
        fk_venta = new_fk_venta
    WHERE id = b_id;
END$$
DELIMITER;
-- insert
DELIMITER $$
CREATE PROCEDURE SP_Insert_Boleta(
    IN b_fk_producto VARCHAR(30), 
    IN b_fk_trabajador INT, 
    IN b_fecha_emision DATE, 
    IN b_total INT, 
    IN b_fk_venta INT
)
BEGIN
    INSERT INTO boleta (fk_producto, fk_trabajador, fecha_emision, total, fk_venta) 
    VALUES (b_fk_producto, b_fk_trabajador, b_fecha_emision, b_total, b_fk_venta);
END$$
DELIMITER;
-- delete
DELIMITER $$
CREATE PROCEDURE SP_Delete_Boleta(IN b_id INT)
BEGIN
    DELETE FROM boleta WHERE id = b_id;
END$$
DELIMITER ;