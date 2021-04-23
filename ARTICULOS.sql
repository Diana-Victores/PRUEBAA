CREATE SCHEMA IF NOT EXISTS `RegistroArticulo` DEFAULT CHARACTER SET utf8 ;
USE `RegistroArticulo` ;

-- -----------------------------------------------------
-- Table `RegistroArticulo`.`tbl_articulos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `RegistroArticulo`.`tbl_articulos` (
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
