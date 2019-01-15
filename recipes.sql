DROP DATABASE `recipe`;
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
  `image_url` MEDIUMTEXT NULL,
  `page_url` MEDIUMTEXT NULL,
  `time` VARCHAR(45) NULL,
  `id_category` INT NOT NULL,  
  PRIMARY KEY (`id_pastry`)
);

ALTER TABLE pastry ADD CONSTRAINT FK_pastry_id_category FOREIGN KEY (id_category)
        REFERENCES categories (id_category)
        ON DELETE CASCADE ON UPDATE CASCADE;

CREATE TABLE `recipe`.`ingredients` (
  `id_ingredient` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`id_ingredient`)
);

CREATE TABLE `recipe`.`pastryingredients` (
  `id_pastry` INT NOT NULL,
  `id_ingredient` INT NOT NULL,
  `weight` VARCHAR(45) NULL
);

ALTER TABLE pastryingredients 
ADD CONSTRAINT FK_pastryingredients_id_pastry
FOREIGN KEY (id_pastry) REFERENCES pastry (id_pastry) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT FK_pastryingredients_id_ingredient
FOREIGN KEY (id_ingredient) REFERENCES ingredients (id_ingredient) ON DELETE CASCADE ON UPDATE CASCADE;
        
INSERT INTO `recipe`.`categories` (`name`) VALUES ('Buns');
INSERT INTO `recipe`.`categories` (`name`) VALUES ('Cookie');
