-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema seguridad
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema seguridad
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `ModuloCompra` DEFAULT CHARACTER SET utf8 ;
USE `ModuloCompra` ;

-- -----------------------------------------------------
-- Table `ModuloCompra`.`tbl_proveedor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ModuloCompra`.`tbl_proveedor` (
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
-- Table `ModuloCompra`.`tbl_producto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ModuloCompra`.`tbl_producto` (
  `PK_id_producto` INT NOT NULL,
  `nombre_producto` VARCHAR(45) NoT NULL,
  `precio_producto` INT(200) NOT NULL,
  `descripcion_producto` VARCHAR(200) NOT NULL,
  `estatus_producto` VARCHAR(200) NOT NULL,
  PRIMARY KEY (`PK_id_producto`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

-- -----------------------------------------------------
-- Table `ModuloCompra`.`tbl_compras`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ModuloCompra`.`tbl_compra` (
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
REFERENCES `ModuloCompra`.`tbl_proveedor` (`PK_id_proveedor`),
CONSTRAINT `fk_tbl_producto1`
FOREIGN KEY (`PK_id_producto`)
REFERENCES `ModuloCompra`.`tbl_producto` (`PK_id_producto`))    
  
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;
