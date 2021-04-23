CREATE SCHEMA IF NOT EXISTS `areacomercial` DEFAULT CHARACTER SET utf8 ;
USE `areacomercial` ;

-- -----------------------------------------------------
-- Table `areacomercial`.`tbl_articulos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `areacomercial`.`tbl_articulos` (
  `PK_id_articulo` INT NOT NULL ,
   `fecha_ingreso` VARCHAR(200) NOT NULL,
   
  `nombre_articulo` VARCHAR(45)NOT NULL,
  
  `talla_articuloXS` VARCHAR(45)NOT NULL,
  `talla_articuloS` VARCHAR(45)NOT NULL,
  `talla_articuloM` VARCHAR(45)NOT NULL,
  `talla_articuloL` VARCHAR(45)NOT NULL,
  `talla_articuloXL` VARCHAR(45)NOT NULL,
  
  `color_articulo` VARCHAR(45)NOT NULL,
  `nombre_proveedor` VARCHAR(200) NOT NULL,
  `existencia_articulo` VARCHAR(200) NOT NULL,
 
 PRIMARY KEY (`PK_id_articulo`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- --------------------------------------------------------COMPRAS--------------------------------------------
-- -----------------------------------------------------
-- Table `areacomercial`.`tbl_proveedor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `areacomercial`.`tbl_proveedor` (
  `PK_id_proveedor` INT NOT NULL ,
  `nombre_proveedor` VARCHAR(45)NOT NULL,
  `direccion_proveedor` VARCHAR(200) NOT NULL,
  `contacto_proveedor` VARCHAR(200) NOT NULL,
  `telefono_proveedor` VARCHAR(200) NOT NULL,
   `nit_proveedor` VARCHAR(200) NOT NULL,
  `email_proveedor` VARCHAR(200) NOT NULL,
   `estatus_proveedor` VARCHAR(200) NOT NULL,
 PRIMARY KEY (`PK_id_proveedor`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

-- -----------------------------------------------------
-- Table `areacomercial`.`tbl_producto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `areacomercial`.`tbl_producto` (
  `PK_id_producto` INT NOT NULL,
  `nombre_producto` VARCHAR(45) NoT NULL,
  `precio_producto` INT(200) NOT NULL,
  `descripcion_producto` VARCHAR(200) NOT NULL,
  `estatus_producto` VARCHAR(200) NOT NULL,
  PRIMARY KEY (`PK_id_producto`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

-- -----------------------------------------------------
-- Table `areacomercial`.`tbl_compra`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `areacomercial`.`tbl_compra` (
  `PK_id_proveedor` INT NOT NULL,
  `nombre_proveedor` VARCHAR(200) NOT NULL,
  `nit_proveedor` VARCHAR(200) NOT NULL,
  `PK_id_producto` INT NOT NULL,
  `precio_producto` INT(200) NOT NULL,
  `cantidad_producto` INT(200) NOT NULL,
  `total_monto`  INT(200) NOT NULL,
PRIMARY KEY (`PK_id_proveedor`,`PK_id_producto`),
CONSTRAINT `fk_tbl_proveedor1`
FOREIGN KEY (`PK_id_proveedor`)
REFERENCES `areacomercial`.`tbl_proveedor` (`PK_id_proveedor`),
CONSTRAINT `fk_tbl_producto1`
FOREIGN KEY (`PK_id_producto`)
REFERENCES `areacomercial`.`tbl_producto` (`PK_id_producto`))    
  
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;





-- ------------------------------------------------------VENTAS---------------------------------------------

CREATE TABLE  tbl_pedido_factura (
 id_cliente int (10)  NOT NULL,
 Cliente  VARCHAR(5)  NOT NULL,
Nit   int (25)  NOT NULL,
teléfono VARCHAR(25)  NOT NULL,
Id_producto  int (25)  NOT NULL,
Detalle VARCHAR(25)  NOT NULL,
Cantidad  int (25)  NOT NULL,
Precio_por_unidad  int (25)  NOT NULL,
TotalmoNto int (25)  ,
 PRIMARY KEY ( id_cliente)
);

CREATE TABLE  depositos (
Id_cliente INT NOT NULL AUTO_INCREMENT, 
Cliente  VARCHAR(5)  NOT NULL,
Monto  int (10)  NOT NULL,
Estatus  VARCHAR(5)  NOT NULL,
Id_producto int (5)  NOT NULL, 
Detalle VARCHAR(25)  NOT NULL,
Cantidad int (5)  NOT NULL, 
Precio_por_unidad int (5)  NOT NULL,
 PRIMARY KEY ( id_cliente)
)ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE  estatus_credito (
Id_cliente int (25)  NOT NULL,  
Fecha_inicial VARCHAR(25)  NOT NULL,
Fecha_final VARCHAR(25)  NOT NULL,
Nit int (25)  NOT NULL, 
Monto int (25)  NOT NULL, 
Estatus_Cliente VARCHAR(25)  NOT NULL, 
teléfono int (25)  NOT NULL, 
Id_producto int (25)  NOT NULL, 
Detalle VARCHAR(25)  NOT NULL,
Cantidad int (25)  NOT NULL, 
Precio_por_unidad int (25)  NOT NULL,
 PRIMARY KEY ( id_cliente)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE  solicitud (
Id_cliente int (25)  NOT NULL,  
Fecha_inicial VARCHAR(25)  NOT NULL,
Fecha_final VARCHAR(25)  NOT NULL,
Nit int (25)  NOT NULL, 
Monto int (25)  NOT NULL, 
Estatus_Cliente VARCHAR(25)  NOT NULL, 
teléfono int (25)  NOT NULL, 
Id_producto int (25)  NOT NULL, 
Detalle VARCHAR(25)  NOT NULL,
Cantidad int (25)  NOT NULL, 
Precio_por_unidad int (25)  NOT NULL,
 PRIMARY KEY ( id_cliente)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


CREATE TABLE  tbl_cliente (
Id_cliente INT NOT NULL AUTO_INCREMENT, 
cliente VARCHAR(25)  NOT NULL,  
Nit VARCHAR(25)  NOT NULL, 
Monto VARCHAR(25)  NOT NULL, 
Estatus_Cliente VARCHAR(25)  NOT NULL, 
telefono VARCHAR(25)  NOT NULL, 
producto VARCHAR(25)  NOT NULL,  
  PRIMARY KEY (Id_cliente)
  )
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;
 CREATE TABLE  tbl_acreedores (
Id_acreedores INT NOT NULL AUTO_INCREMENT, 
acreedores VARCHAR(25)  NOT NULL,  
Nit VARCHAR(25)  NOT NULL, 
Monto VARCHAR(25)  NOT NULL, 
Estatus_Cliente VARCHAR(25)  NOT NULL, 
telefono VARCHAR(25)  NOT NULL, 
producto VARCHAR(25)  NOT NULL,  
  PRIMARY KEY (Id_acreedores)
  )
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;