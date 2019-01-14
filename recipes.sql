CREATE DATABASE `recipe`;


CREATE TABLE `recipe`.`pastry` (
  `id_pastry` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `description` VARCHAR(45) NULL,
  `id_ingredients` LONGTEXT NOT NULL,
  `image_url` MEDIUMTEXT NULL,
  `page_url` MEDIUMTEXT NULL,
  `time` VARCHAR(45) NULL,
  `id_category` VARCHAR(45) NOT NULL,  
  PRIMARY KEY (`id_pastry`));

CREATE TABLE `recipe`.`ingredients` (
  `id_ingredient` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`id_ingredient`)
);

CREATE TABLE `recipe`.`categories` (
  `id_category` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`id_category`)  
);

CREATE TABLE `recipe`.`pastryingredients` (
  `id_pastry` INT NOT NULL,
  `id_category` INT NOT NULL,
  `weight` VARCHAR(45) NULL
);
