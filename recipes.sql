CREATE DATABASE `recipe`;


CREATE TABLE `recipe`.`categories` (
  `id_category` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`id_category`)
);

CREATE TABLE `recipe`.`pastry` (
  `id_pastry` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `description` VARCHAR(45) NULL,
  `id_ingredients` LONGTEXT NOT NULL,
  `image_url` MEDIUMTEXT NULL,
  `page_url` MEDIUMTEXT NULL,
  `time` VARCHAR(45) NULL,
  `id_category` VARCHAR(45) NOT NULL,  
  PRIMARY KEY (`id_pastry`) ,
  FOREIGN KEY (id_category)
        REFERENCES categories (id_category)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

CREATE TABLE `recipe`.`ingredients` (
  `id_ingredient` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`id_ingredient`)
);

CREATE TABLE `recipe`.`pastryingredients` (
  `id_pastry` INT NOT NULL,
  `id_category` INT NOT NULL,
  `weight` VARCHAR(45) NULL,
  FOREIGN KEY (id_meal)
        REFERENCES pastry (id_pastry)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
  FOREIGN KEY (id_ingredient)
        REFERENCES ingredients (id_ingredient)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);
