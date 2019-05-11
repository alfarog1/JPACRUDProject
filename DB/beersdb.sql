-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

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
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(120) NOT NULL,
  `brewery` VARCHAR(120) NULL DEFAULT 'Brewery',
  `style` VARCHAR(120) NOT NULL,
  `abv` DECIMAL(4,2) NULL,
  `country` VARCHAR(120) NULL DEFAULT 'United States of America',
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS beersuser@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'beersuser'@'localhost' IDENTIFIED BY 'student';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'beersuser'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `beers`
-- -----------------------------------------------------
START TRANSACTION;
USE `beersdb`;
INSERT INTO `beers` (`id`, `name`, `brewery`, `style`, `abv`, `country`) VALUES (1, 'Heineken', 'Heineken', 'Pale lager', 5.0, 'Netherlands');
INSERT INTO `beers` (`id`, `name`, `brewery`, `style`, `abv`, `country`) VALUES (2, 'Hoss', 'Great Divide', 'Rye lager', 6.2, 'United States of America');
INSERT INTO `beers` (`id`, `name`, `brewery`, `style`, `abv`, `country`) VALUES (3, 'Estrella Galicia', 'Estrella Galicia', 'Pale lager', 5.5, 'Spain');
INSERT INTO `beers` (`id`, `name`, `brewery`, `style`, `abv`, `country`) VALUES (4, 'Orange Avenue Wit', 'Coronado Brewing', 'Belgian Witbier', 5.2, 'United States of America');
INSERT INTO `beers` (`id`, `name`, `brewery`, `style`, `abv`, `country`) VALUES (5, 'Stella Artois', 'Anheuser-Busch InBev', 'Pilsner', 5.2, 'Belgium');
INSERT INTO `beers` (`id`, `name`, `brewery`, `style`, `abv`, `country`) VALUES (6, 'Spectra Perfecta', 'Founders Brewing', 'Kolsch', 5.9, 'United States of America');

COMMIT;

