-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema cupcake
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema cupcake
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `cupcake` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
-- -----------------------------------------------------
-- Schema cupcake_test
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema cupcake_test
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `cupcake_test` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `cupcake` ;

-- -----------------------------------------------------
-- Table `cupcake`.`user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cupcake`.`user` (
  `userID` INT NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(320) NOT NULL,
  `password` VARCHAR(127) NOT NULL,
  `role` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`userID`),
  UNIQUE INDEX `username_UNIQUE` (`username` ASC) VISIBLE)
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `cupcake`.`account`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cupcake`.`account` (
  `accountID` INT NOT NULL AUTO_INCREMENT,
  `balance` DOUBLE NOT NULL,
  `userID` INT NOT NULL,
  PRIMARY KEY (`accountID`, `userID`),
  INDEX `fk_account_user1_idx` (`userID` ASC) VISIBLE,
  CONSTRAINT `fk_account_user1`
    FOREIGN KEY (`userID`)
    REFERENCES `cupcake`.`user` (`userID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `cupcake`.`admin`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cupcake`.`admin` (
  `adminID` INT NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(320) NOT NULL,
  `password` VARCHAR(127) NOT NULL,
  PRIMARY KEY (`adminID`),
  UNIQUE INDEX `username_UNIQUE` (`username` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `cupcake`.`bottom`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cupcake`.`bottom` (
  `bottomID` INT NOT NULL AUTO_INCREMENT,
  `bottom` VARCHAR(45) NOT NULL,
  `bottomPrice` DOUBLE NOT NULL,
  PRIMARY KEY (`bottomID`))
ENGINE = InnoDB
AUTO_INCREMENT = 6
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `cupcake`.`topping`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cupcake`.`topping` (
  `toppingID` INT NOT NULL AUTO_INCREMENT,
  `topping` VARCHAR(45) NOT NULL,
  `toppingPrice` DOUBLE NOT NULL,
  PRIMARY KEY (`toppingID`))
ENGINE = InnoDB
AUTO_INCREMENT = 10
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `cupcake`.`cupcake`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cupcake`.`cupcake` (
  `cupcakeID` INT NOT NULL AUTO_INCREMENT,
  `toppingID` INT NOT NULL,
  `bottomID` INT NOT NULL,
  PRIMARY KEY (`cupcakeID`),
  INDEX `fk_cupcake_topping_idx` (`toppingID` ASC) VISIBLE,
  INDEX `fk_cupcake_bottom1_idx` (`bottomID` ASC) VISIBLE,
  CONSTRAINT `fk_cupcake_bottom1`
    FOREIGN KEY (`bottomID`)
    REFERENCES `cupcake`.`bottom` (`bottomID`),
  CONSTRAINT `fk_cupcake_topping`
    FOREIGN KEY (`toppingID`)
    REFERENCES `cupcake`.`topping` (`toppingID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `cupcake`.`shoppingcart`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cupcake`.`shoppingcart` (
  `shoppingcartID` INT NOT NULL AUTO_INCREMENT,
  `cupcakeID` INT NOT NULL,
  `totalPrice` DOUBLE NOT NULL,
  `userID` INT NOT NULL,
  PRIMARY KEY (`shoppingcartID`, `userID`),
  INDEX `fk_shoppingcart_cupcake1_idx` (`cupcakeID` ASC) VISIBLE,
  INDEX `fk_shoppingcart_user1_idx` (`userID` ASC) VISIBLE,
  CONSTRAINT `fk_shoppingcart_cupcake1`
    FOREIGN KEY (`cupcakeID`)
    REFERENCES `cupcake`.`cupcake` (`cupcakeID`),
  CONSTRAINT `fk_shoppingcart_user1`
    FOREIGN KEY (`userID`)
    REFERENCES `cupcake`.`user` (`userID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `cupcake`.`order`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cupcake`.`order` (
  `orderID` INT NOT NULL AUTO_INCREMENT,
  `shoppingcartID` INT NOT NULL,
  `accountID` INT NOT NULL,
  `created` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`orderID`),
  INDEX `fk_order_account1_idx` (`accountID` ASC) VISIBLE,
  INDEX `fk_order_shoppingcart1_idx` (`shoppingcartID` ASC) VISIBLE,
  CONSTRAINT `fk_order_account1`
    FOREIGN KEY (`accountID`)
    REFERENCES `cupcake`.`account` (`accountID`),
  CONSTRAINT `fk_order_shoppingcart1`
    FOREIGN KEY (`shoppingcartID`)
    REFERENCES `cupcake`.`shoppingcart` (`shoppingcartID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

USE `cupcake_test` ;

-- -----------------------------------------------------
-- Table `cupcake_test`.`user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cupcake_test`.`user` (
  `userID` INT NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(320) NOT NULL,
  `password` VARCHAR(127) NOT NULL,
  PRIMARY KEY (`userID`),
  UNIQUE INDEX `username_UNIQUE` (`username` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `cupcake_test`.`account`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cupcake_test`.`account` (
  `accountID` INT NOT NULL AUTO_INCREMENT,
  `balance` DOUBLE NOT NULL,
  `userID` INT NOT NULL,
  PRIMARY KEY (`accountID`, `userID`),
  INDEX `fk_account_user1_idx` (`userID` ASC) VISIBLE,
  CONSTRAINT `fk_account_user1`
    FOREIGN KEY (`userID`)
    REFERENCES `cupcake`.`user` (`userID`),
  CONSTRAINT `fk_account_user2`
    FOREIGN KEY (`userID`)
    REFERENCES `cupcake_test`.`user` (`userID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `cupcake_test`.`admin`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cupcake_test`.`admin` (
  `adminID` INT NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(320) NOT NULL,
  `password` VARCHAR(127) NOT NULL,
  PRIMARY KEY (`adminID`),
  UNIQUE INDEX `username_UNIQUE` (`username` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `cupcake_test`.`bottom`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cupcake_test`.`bottom` (
  `bottomID` INT NOT NULL AUTO_INCREMENT,
  `bottom` VARCHAR(45) NOT NULL,
  `bottomPrice` DOUBLE NOT NULL,
  PRIMARY KEY (`bottomID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `cupcake_test`.`topping`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cupcake_test`.`topping` (
  `toppingID` INT NOT NULL AUTO_INCREMENT,
  `topping` VARCHAR(45) NOT NULL,
  `toppingPrice` DOUBLE NOT NULL,
  PRIMARY KEY (`toppingID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `cupcake_test`.`cupcake`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cupcake_test`.`cupcake` (
  `cupcakeID` INT NOT NULL AUTO_INCREMENT,
  `toppingID` INT NOT NULL,
  `bottomID` INT NOT NULL,
  PRIMARY KEY (`cupcakeID`),
  INDEX `fk_cupcake_topping_idx` (`toppingID` ASC) VISIBLE,
  INDEX `fk_cupcake_bottom1_idx` (`bottomID` ASC) VISIBLE,
  CONSTRAINT `fk_cupcake_bottom1`
    FOREIGN KEY (`bottomID`)
    REFERENCES `cupcake`.`bottom` (`bottomID`),
  CONSTRAINT `fk_cupcake_topping`
    FOREIGN KEY (`toppingID`)
    REFERENCES `cupcake`.`topping` (`toppingID`),
  CONSTRAINT `fk_cupcake_topping1`
    FOREIGN KEY (`toppingID`)
    REFERENCES `cupcake_test`.`topping` (`toppingID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_cupcake_bottom2`
    FOREIGN KEY (`bottomID`)
    REFERENCES `cupcake_test`.`bottom` (`bottomID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `cupcake_test`.`shoppingcart`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cupcake_test`.`shoppingcart` (
  `shoppingcartID` INT NOT NULL AUTO_INCREMENT,
  `cupcakeID` INT NOT NULL,
  `totalPrice` DOUBLE NOT NULL,
  `userID` INT NOT NULL,
  PRIMARY KEY (`shoppingcartID`, `userID`),
  INDEX `fk_shoppingcart_cupcake1_idx` (`cupcakeID` ASC) VISIBLE,
  INDEX `fk_shoppingcart_user1_idx` (`userID` ASC) VISIBLE,
  CONSTRAINT `fk_shoppingcart_cupcake1`
    FOREIGN KEY (`cupcakeID`)
    REFERENCES `cupcake`.`cupcake` (`cupcakeID`),
  CONSTRAINT `fk_shoppingcart_user1`
    FOREIGN KEY (`userID`)
    REFERENCES `cupcake`.`user` (`userID`),
  CONSTRAINT `fk_shoppingcart_cupcake2`
    FOREIGN KEY (`cupcakeID`)
    REFERENCES `cupcake_test`.`cupcake` (`cupcakeID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_shoppingcart_user2`
    FOREIGN KEY (`userID`)
    REFERENCES `cupcake_test`.`user` (`userID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `cupcake_test`.`order`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cupcake_test`.`order` (
  `orderID` INT NOT NULL AUTO_INCREMENT,
  `shoppingcartID` INT NOT NULL,
  `accountID` INT NOT NULL,
  PRIMARY KEY (`orderID`),
  INDEX `fk_order_account1_idx` (`accountID` ASC) VISIBLE,
  INDEX `fk_order_shoppingcart1_idx` (`shoppingcartID` ASC) VISIBLE,
  CONSTRAINT `fk_order_account1`
    FOREIGN KEY (`accountID`)
    REFERENCES `cupcake`.`account` (`accountID`),
  CONSTRAINT `fk_order_shoppingcart1`
    FOREIGN KEY (`shoppingcartID`)
    REFERENCES `cupcake`.`shoppingcart` (`shoppingcartID`),
  CONSTRAINT `fk_order_shoppingcart2`
    FOREIGN KEY (`shoppingcartID`)
    REFERENCES `cupcake_test`.`shoppingcart` (`shoppingcartID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_order_account2`
    FOREIGN KEY (`accountID`)
    REFERENCES `cupcake_test`.`account` (`userID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
