-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema beersdb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `beersdb` ;

-- -----------------------------------------------------
-- Schema beersdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `beersdb` DEFAULT CHARACTER SET utf8 ;
USE `beersdb` ;

-- -----------------------------------------------------
-- Table `beers`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `beers` ;

CREATE TABLE IF NOT EXISTS `beers` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(120) NOT NULL,
  `brewery` VARCHAR(120) NULL DEFAULT 'Brewery',
  `style` VARCHAR(120) NOT NULL,
  `abv` DECIMAL(4,2) NULL DEFAULT NULL,
  `country` VARCHAR(120) NULL DEFAULT 'United States of America',
  `logo_url` VARCHAR(200) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 13
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
