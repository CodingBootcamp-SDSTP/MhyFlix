CREATE DATABASE IF NOT EXISTS `mhyflix`;
USE `mhyflix`;

-- User Information
CREATE TABLE IF NOT EXISTS `user_info` ( 
	`id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
	`firstName` VARCHAR(128) NOT NULL,
	`middleName` VARCHAR(64) NOT NULL,
	`lastName` VARCHAR(64) NOT NULL,
	`age` INT(3) NOT NULL,
	`birthday` DATE NOT NULL,
	`email` VARCHAR(255) NOT NULL,
	`bio` VARCHAR(255) NOT NULL,
	PRIMARY KEY (`id`)
);

-- Account type for user
CREATE TABLE IF NOT EXISTS `account_type` (
	`id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
	`userType` VARCHAR(64) NOT NULL,
	PRIMARY KEY(`id`)
);

-- Initial value for the account type table
INSERT INTO `account_type`(`userType`) VALUES ('Administrator'), ('User'), ('VIP');

-- User Account
CREATE TABLE IF NOT EXISTS `user_account` ( 
	`id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
	`userId` INT(11) UNSIGNED NOT NULL,
	`username` VARCHAR(64) NOT NULL,
	`password` VARCHAR(64) NOT NULL,
	`type` INT(11) UNSIGNED NOT NULL,
	`status` SET('active','inactive') NOT NULL DEFAULT 'active',
	PRIMARY KEY (`id`),
	FOREIGN KEY (`userId`) REFERENCES `user_info`(`id`),
	FOREIGN KEY (`type`) REFERENCES `account_type`(`id`)
);

-- Video acess type privileges
CREATE TABLE IF NOT EXISTS `video_access` (
	`id` INT(11) NOT NULL AUTO_INCREMENT,
	`access_type`  VARCHAR(128),
	`description`  TINYTEXT NOT NULL,
	PRIMARY KEY (`id`)
);

-- Initial value
INSERT INTO `video_access`(`access_type`,`description`) VALUES ('User Access', 'Accounts in a user level privilege'), ('Restricted Access', 'Accounts with VIP privilege level'), ('Administrative Access', 'Accounts with access to videos in the respository');

-- Video information, access types and content
CREATE TABLE IF NOT EXISTS `videos` (
	`id` INT(11) NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(255) NOT NULL,
	`fileType` VARCHAR(16) NOT NULL,
	`description` TEXT NOT NULL,
	`dateUpload`  DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`accessType` INT(11) NOT NULL,
	PRIMARY KEY(`id`),
	FOREIGN KEY (`accessType`) REFERENCES `video_access`(`id`)
);

-- Video rating and review
CREATE TABLE IF NOT EXISTS `video_rating` (
	`id` INT(11) NOT NULL AUTO_INCREMENT,
	`videoId` INT(11) NOT NULL,
	`review` VARCHAR(255) NOT NULL,
	`rating` INT(2) NOT NULL,
	`status` SET('active','inactive') NOT NULL DEFAULT 'active',
	PRIMARY KEY(`id`),
	FOREIGN KEY (`videoId`) REFERENCES `videos`(`id`)
);