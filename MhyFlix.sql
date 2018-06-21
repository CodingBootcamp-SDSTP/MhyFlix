DROP DATABASE IF EXISTS `mhyflix`;
CREATE DATABASE IF NOT EXISTS `mhyflix`;
USE `mhyflix`;

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
	`username` VARCHAR(64) NOT NULL,
	`password` VARCHAR(64) NOT NULL,
	`type` INT(11) UNSIGNED NOT NULL,
	`status` SET('active','inactive') NOT NULL DEFAULT 'active',
	PRIMARY KEY (`id`),
	FOREIGN KEY (`type`) REFERENCES `account_type`(`id`)
);

-- User Information
CREATE TABLE IF NOT EXISTS `user_info` ( 
	`id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
	`acc_id` INT(11) UNSIGNED NOT NULL,
	`firstName` VARCHAR(128) NOT NULL,
	`middleName` VARCHAR(64) NOT NULL,
	`lastName` VARCHAR(64) NOT NULL,
	`age` INT(3) NOT NULL,
	`birthday` DATE NOT NULL,
	`email` VARCHAR(255) NOT NULL,
	`bio` VARCHAR(255) NOT NULL,
	PRIMARY KEY (`id`),
	FOREIGN KEY (`acc_id`) REFERENCES `user_account`(`id`)
);

-- Video access type privileges
CREATE TABLE IF NOT EXISTS `video_access` (
	`id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
	`access_type`  VARCHAR(128),
	`description`  TINYTEXT NOT NULL,
	PRIMARY KEY (`id`)
);

-- Initial value
INSERT INTO `video_access`(`access_type`,`description`) VALUES ('User Access', 'Accounts in a user level privilege'), ('Restricted Access', 'Accounts with VIP privilege level'), ('Administrative Access', 'Accounts with access to videos in the respository');

-- Video File type
CREATE TABLE IF NOT EXISTS `file_type` (
	`id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
	`type` VARCHAR(32) NOT NULL,
	`status` SET ('active', 'inactive') NOT NULL DEFAULT 'active',
	PRIMARY KEY (`id`)
);

-- Initial value
INSERT INTO `file_type` (`type`) VALUES ('.mp4'), ('.avi'), ('.mkv');

-- Video information, access types and content
CREATE TABLE IF NOT EXISTS `videos` (
	`id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(255) NOT NULL,
	`fileTypeId` INT(11) UNSIGNED NOT NULL,
	`description` TEXT NOT NULL,
	`dateUpload`  DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`accessType` INT(11) UNSIGNED NOT NULL,
	`path` VARCHAR(255),
	PRIMARY KEY (`id`),
	FOREIGN KEY (`accessType`) REFERENCES `video_access`(`id`),
	FOREIGN KEY (`fileTypeId`) REFERENCES `file_type`(`id`)
);

-- Video sub category
CREATE TABLE `video_sub_category` (
	`id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
	`subName` VARCHAR(128) NOT NULL,
	`entries` INT(4) NOT NULL DEFAULT '1',
	`createdData` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY (`id`)
);

-- Video category
CREATE TABLE `video_category` (
	`id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
	`categoryType` VARCHAR(64) NOT NULL,
	`status` SET ('active', 'inactive') NOT NULL DEFAULT 'active',
	PRIMARY KEY (`id`)
);

-- Initial value
INSERT INTO `video_category` (`categoryType`) VALUES ('Anime'), ('Korean Drama'), ('American Movies');

-- Video genre
CREATE TABLE `video_genre` (
	`id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
	`genre` VARCHAR(168),
	`status` SET ('active', 'inactive') NOT NULL DEFAULT 'active',
	PRIMARY KEY (`id`)
);

-- Initial value
INSERT INTO `video_genre` (`genre`) VALUES ('action'), ('thrill'), ('comedy');

-- Video info
CREATE TABLE `video_info` (
	`id` INT(11) NOT NULL AUTO_INCREMENT,
	`categoryType` INT(11) UNSIGNED NOT NULL,
	`videoId` INT(11) UNSIGNED NOT NULL,
	`subCategoryName` INT(11) UNSIGNED NOT NULL,
	PRIMARY KEY (`id`),
	FOREIGN KEY (`categoryType`) REFERENCES `video_category`(`id`),
	FOREIGN KEY (`videoId`) REFERENCES `videos`(`id`),
	FOREIGN KEY (`subCategoryName`) REFERENCES `video_sub_category`(`id`)
);

-- video with multiple genre
CREATE TABLE `video_set_genre` (
	`id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
	`videoId` INT(11) UNSIGNED NOT NULL,
	`genreId` INT(11) UNSIGNED NOT NULL,
	PRIMARY KEY (`id`),
	FOREIGN KEY (`videoId`) REFERENCES `videos`(`id`),
	FOREIGN KEY (`genreId`) REFERENCES `video_genre`(`id`)
);

-- Video rating and review
CREATE TABLE IF NOT EXISTS `video_rating` (
	`id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
	`videoId` INT(11) UNSIGNED NOT NULL,
	`review` VARCHAR(255) NOT NULL,
	`rating` INT(2) NOT NULL,
	`datePosted` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`status` SET ('active','inactive') NOT NULL DEFAULT 'active',
	PRIMARY KEY(`id`),
	FOREIGN KEY (`videoId`) REFERENCES `videos`(`id`)
);