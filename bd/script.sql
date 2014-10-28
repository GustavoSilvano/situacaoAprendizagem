SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`usuario` (
  `idusuario` INT NOT NULL,
  `nome` VARCHAR(45) NULL,
  `idade` INT NULL,
  PRIMARY KEY (`idusuario`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`artigo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`artigo` (
  `idartigo` INT NOT NULL,
  `titulo` VARCHAR(45) NULL,
  `conteudo` VARCHAR(45) NULL,
  `usuario_idusuario` INT NOT NULL,
  PRIMARY KEY (`idartigo`),
  INDEX `fk_artigo_usuario_idx` (`usuario_idusuario` ASC),
  CONSTRAINT `fk_artigo_usuario`
    FOREIGN KEY (`usuario_idusuario`)
    REFERENCES `mydb`.`usuario` (`idusuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`fotos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`fotos` (
  `idfotos` INT NOT NULL,
  `nome` VARCHAR(45) NULL,
  `artigo_idartigo` INT NOT NULL,
  PRIMARY KEY (`idfotos`),
  INDEX `fk_fotos_artigo1_idx` (`artigo_idartigo` ASC),
  CONSTRAINT `fk_fotos_artigo1`
    FOREIGN KEY (`artigo_idartigo`)
    REFERENCES `mydb`.`artigo` (`idartigo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`comentario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`comentario` (
  `comentario` INT NOT NULL,
  `table1col` VARCHAR(45) NULL,
  `autor` VARCHAR(45) NULL,
  `data` VARCHAR(45) NULL,
  `table1col1` VARCHAR(45) NULL,
  `usuario_idusuario` INT NOT NULL,
  PRIMARY KEY (`comentario`),
  INDEX `fk_comentario_usuario1_idx` (`usuario_idusuario` ASC),
  CONSTRAINT `fk_comentario_usuario1`
    FOREIGN KEY (`usuario_idusuario`)
    REFERENCES `mydb`.`usuario` (`idusuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
