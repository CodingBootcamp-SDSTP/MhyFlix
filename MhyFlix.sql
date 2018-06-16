CREATE DATABASE MhyFlix;
USE MhyFlix;

CREATE TABLE userAccounts(
	id INT AUTO_INCREMENT,
	fname VARCHAR(128), 
	lname VARCHAR(128), 
	privilegeType INT NOT NULL,
	PRIMARY KEY(id)
);
