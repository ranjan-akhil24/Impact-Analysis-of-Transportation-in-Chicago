-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema scooter_project
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema scooter_project
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `scooter_project` DEFAULT CHARACTER SET utf16 ;
USE `scooter_project` ;

-- -----------------------------------------------------
-- Table `scooter_project`.`CommunityArea`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `scooter_project`.`CommunityArea` (
  `AreaNumber` INT(11) NOT NULL,
  `CommunityName` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`AreaNumber`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf16;


-- -----------------------------------------------------
-- Table `scooter_project`.`Divvy_Station`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `scooter_project`.`Divvy_Station` (
  `CommunityName` VARCHAR(45) NULL DEFAULT NULL,
  `Station_ID` INT(11) NOT NULL,
  `Station_Name` VARCHAR(45) NULL DEFAULT NULL,
  `AreaNumber` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`Station_ID`),
  INDEX `AreaNumber` (`AreaNumber` ASC) VISIBLE,
  CONSTRAINT `Divvy_Station_ibfk_1`
    FOREIGN KEY (`AreaNumber`)
    REFERENCES `scooter_project`.`CommunityArea` (`AreaNumber`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf16;


-- -----------------------------------------------------
-- Table `scooter_project`.`Divvy_Ridership`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `scooter_project`.`Divvy_Ridership` (
  `trip_id` VARCHAR(100) NOT NULL,
  `start_time` VARCHAR(45) NULL DEFAULT NULL,
  `stop_time` DATETIME NULL DEFAULT NULL,
  `trip_duration` INT(11) NULL DEFAULT NULL,
  `trip_cost` FLOAT NULL DEFAULT NULL,
  `From_Station_ID` INT(11) NULL DEFAULT NULL,
  `From_Area_Number` VARCHAR(45) NULL DEFAULT NULL,
  `From_Station_Name` VARCHAR(45) NULL DEFAULT NULL,
  `To_Station_ID` INT(11) NULL DEFAULT NULL,
  `To_Area_Number` VARCHAR(45) NULL DEFAULT NULL,
  `To_Station_Name` VARCHAR(45) NULL DEFAULT NULL,
  `From_Location` VARCHAR(45) NULL DEFAULT NULL,
  `To_Location` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`trip_id`),
  INDEX `From_Station_ID` (`From_Station_ID` ASC) VISIBLE,
  INDEX `To_Station_ID` (`To_Station_ID` ASC) VISIBLE,
  CONSTRAINT `Divvy_Ridership_ibfk_1`
    FOREIGN KEY (`From_Station_ID`)
    REFERENCES `scooter_project`.`Divvy_Station` (`Station_ID`),
  CONSTRAINT `Divvy_Ridership_ibfk_2`
    FOREIGN KEY (`To_Station_ID`)
    REFERENCES `scooter_project`.`Divvy_Station` (`Station_ID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf16;


-- -----------------------------------------------------
-- Table `scooter_project`.`Final`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `scooter_project`.`Final` (
  `ID` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `Trip_ID` VARCHAR(45) NULL DEFAULT NULL,
  `Start_Time` DATETIME NULL DEFAULT NULL,
  `Stop_Time` DATETIME NULL DEFAULT NULL,
  `Trip_Duration` INT(11) NULL DEFAULT NULL,
  `Trip_Cost` FLOAT NULL DEFAULT NULL,
  `From_Area_Number` VARCHAR(45) NULL DEFAULT NULL,
  `To_Area_Number` VARCHAR(45) NULL DEFAULT NULL,
  `Ride_Type` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`ID`),
  INDEX `my_unique_index_name` (`ID` ASC) VISIBLE,
  INDEX `From_Area_Number` (`From_Area_Number` ASC) VISIBLE,
  INDEX `To_Area_Number` (`To_Area_Number` ASC) VISIBLE)
ENGINE = InnoDB
AUTO_INCREMENT = 7972832
DEFAULT CHARACTER SET = utf16;


-- -----------------------------------------------------
-- Table `scooter_project`.`L_Ridership`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `scooter_project`.`L_Ridership` (
  `stationname` VARCHAR(45) CHARACTER SET 'utf16' NULL DEFAULT NULL,
  `station_id` INT(11) NULL DEFAULT NULL,
  `date` DATE NULL DEFAULT NULL,
  `rides` INT(11) NULL DEFAULT NULL,
  `CommunityName` VARCHAR(45) CHARACTER SET 'utf16' NULL DEFAULT NULL,
  `AreaNumber` INT(11) NULL DEFAULT NULL,
  INDEX `AreaNumber` (`AreaNumber` ASC) VISIBLE,
  CONSTRAINT `L_Ridership_ibfk_1`
    FOREIGN KEY (`AreaNumber`)
    REFERENCES `scooter_project`.`CommunityArea` (`AreaNumber`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `scooter_project`.`Scooter_Ridership`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `scooter_project`.`Scooter_Ridership` (
  `trip_id` VARCHAR(100) NOT NULL,
  `start_time` DATETIME NULL DEFAULT NULL,
  `end_time` DATETIME NULL DEFAULT NULL,
  `trip_distance` INT(11) NULL DEFAULT NULL,
  `trip_miles` FLOAT NULL DEFAULT NULL,
  `trip_cost` FLOAT NULL DEFAULT NULL,
  `trip_duration` INT(11) NULL DEFAULT NULL,
  `start_commmunity_area_number` INT(11) NULL DEFAULT NULL,
  `end_community_area_number` INT(11) NULL DEFAULT NULL,
  `start_centroid_location` VARCHAR(100) NULL DEFAULT NULL,
  `end_centroid_location` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`trip_id`),
  INDEX `start_commmunity_area_number` (`start_commmunity_area_number` ASC) VISIBLE,
  INDEX `end_comunnity_area_number` (`end_community_area_number` ASC) VISIBLE,
  CONSTRAINT `Scooter_Ridership_ibfk_1`
    FOREIGN KEY (`start_commmunity_area_number`)
    REFERENCES `scooter_project`.`CommunityArea` (`AreaNumber`),
  CONSTRAINT `Scooter_Ridership_ibfk_2`
    FOREIGN KEY (`end_community_area_number`)
    REFERENCES `scooter_project`.`CommunityArea` (`AreaNumber`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf16;


-- -----------------------------------------------------
-- Table `scooter_project`.`Taxi_Ridership`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `scooter_project`.`Taxi_Ridership` (
  `trip_id` VARCHAR(100) NOT NULL,
  `trip_start_timestamp` DATETIME NULL DEFAULT NULL,
  `trip_end_timestamp` DATETIME NULL DEFAULT NULL,
  `trip_seconds` INT(11) NULL DEFAULT NULL,
  `trip_miles` INT(11) NULL DEFAULT NULL,
  `pickup_community_area` INT(11) NULL DEFAULT NULL,
  `dropoff_community_area` INT(11) NULL DEFAULT NULL,
  `fare` FLOAT NULL DEFAULT NULL,
  `tips` FLOAT NULL DEFAULT NULL,
  `extras` FLOAT NULL DEFAULT NULL,
  `trip_total` FLOAT NULL DEFAULT NULL,
  `compay` VARCHAR(45) NULL DEFAULT NULL,
  `pickup_centroid_location` VARCHAR(100) NULL DEFAULT NULL,
  `dropoff_centroid_location` VARCHAR(100) NULL DEFAULT NULL,
  `tolls` FLOAT NULL DEFAULT NULL,
  PRIMARY KEY (`trip_id`),
  INDEX `dropoff_community_area` (`dropoff_community_area` ASC) VISIBLE,
  INDEX `pickup_community_area` (`pickup_community_area` ASC) VISIBLE,
  CONSTRAINT `Taxi_Ridership_ibfk_1`
    FOREIGN KEY (`dropoff_community_area`)
    REFERENCES `scooter_project`.`CommunityArea` (`AreaNumber`),
  CONSTRAINT `Taxi_Ridership_ibfk_2`
    FOREIGN KEY (`pickup_community_area`)
    REFERENCES `scooter_project`.`CommunityArea` (`AreaNumber`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf16;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
