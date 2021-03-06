-- MySQL Script generated by MySQL Workbench
-- Fri Nov 20 12:19:35 2020
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema RedFlix
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema RedFlix
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `RedFlix` DEFAULT CHARACTER SET utf8 ;
USE `RedFlix` ;

-- -----------------------------------------------------
-- Table `RedFlix`.`Directores`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `RedFlix`.`Directores` (
  `id_director` INT(20) NOT NULL,
  `nombre` VARCHAR(30) NOT NULL,
  `apellido` VARCHAR(30) NOT NULL,
  `nacionalidad` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`id_director`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `RedFlix`.`Usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `RedFlix`.`Usuarios` (
  `alias` VARCHAR(40) NOT NULL,
  `nombre` VARCHAR(30) NOT NULL,
  `apellido` VARCHAR(30) NOT NULL,
  `email` VARCHAR(100) NOT NULL,
  `celular` INT(10) NULL,
  `contraseña` VARCHAR(50) NOT NULL,
  `fecha_nacimiento` DATETIME NOT NULL,
  PRIMARY KEY (`alias`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `RedFlix`.`Peliculas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `RedFlix`.`Peliculas` (
  `id_pelicula` INT(20) NOT NULL AUTO_INCREMENT,
  `titulo` VARCHAR(100) NOT NULL,
  `resumen` VARCHAR(1000) NOT NULL,
  `año` YEAR(4) NOT NULL,
  `id_director` INT(20) NOT NULL,
  PRIMARY KEY (`id_pelicula`),
  INDEX `fk_Peliculas_Directores_idx` (`id_director` ASC) VISIBLE,
  CONSTRAINT `fk_Peliculas_Directores`
    FOREIGN KEY (`id_director`)
    REFERENCES `RedFlix`.`Directores` (`id_director`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `RedFlix`.`Series`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `RedFlix`.`Series` (
  `id_serie` INT(20) NOT NULL AUTO_INCREMENT,
  `titulo` VARCHAR(100) NOT NULL,
  `num_temporadas` INT(2) NOT NULL DEFAULT 1,
  `num_capitulos` INT(4) NOT NULL,
  PRIMARY KEY (`id_serie`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `RedFlix`.`Contenidos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `RedFlix`.`Contenidos` (
  `id_contenido` INT(20) NOT NULL,
  `id_pelicula` INT(20) NULL,
  `id_serie` INT(20) NULL,
  PRIMARY KEY (`id_contenido`),
  INDEX `fk_Contenidos_Peliculas1_idx` (`id_pelicula` ASC) VISIBLE,
  INDEX `fk_Contenidos_Series1_idx` (`id_serie` ASC) VISIBLE,
  UNIQUE INDEX `id_pelicula_UNIQUE` (`id_pelicula` ASC) VISIBLE,
  UNIQUE INDEX `id_serie_UNIQUE` (`id_serie` ASC) VISIBLE,
  CONSTRAINT `fk_Contenidos_Peliculas1`
    FOREIGN KEY (`id_pelicula`)
    REFERENCES `RedFlix`.`Peliculas` (`id_pelicula`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Contenidos_Series1`
    FOREIGN KEY (`id_serie`)
    REFERENCES `RedFlix`.`Series` (`id_serie`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;



-- -----------------------------------------------------
-- Table `RedFlix`.`Transmisiones`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `RedFlix`.`Transmisiones` (
  `alias_usuario` VARCHAR(40) NOT NULL,
  `id_contenido` INT(20) NOT NULL,
  `fecha` DATETIME NOT NULL,
  PRIMARY KEY (`alias_usuario`, `id_contenido`, `fecha`),
  INDEX `fk_Usuarios_has_Contenidos_Contenidos1_idx` (`id_contenido` ASC) VISIBLE,
  INDEX `fk_Usuarios_has_Contenidos_Usuarios1_idx` (`alias_usuario` ASC) VISIBLE,
  CONSTRAINT `fk_Usuarios_has_Contenidos_Usuarios1`
    FOREIGN KEY (`alias_usuario`)
    REFERENCES `RedFlix`.`Usuarios` (`alias`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Usuarios_has_Contenidos_Contenidos1`
    FOREIGN KEY (`id_contenido`)
    REFERENCES `RedFlix`.`Contenidos` (`id_contenido`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
