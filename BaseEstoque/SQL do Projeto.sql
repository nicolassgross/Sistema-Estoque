CREATE TABLE USERS (
	ID INT NOT NULL,
	name VARCHAR(60) NOT NULL,
	password VARCHAR(30) NOT NULL,
	email VARCHAR(60) NOT NULL,
	PRIMARY KEY (ID)
);

CREATE GENERATOR GEN_USERS_ID;

CREATE OR ALTER TRIGGER USERS_BI FOR USERS
ACTIVE BEFORE INSERT POSITION 0
AS
BEGIN
 IF (NEW.ID IS NULL) THEN
   NEW.ID = GEN_ID(GEN_USERS_ID,1);
END;


INSERT INTO users (name, password, email)
VALUES 
	('Nicolas', 'nic', 'nicolas@bluware.com');
INSERT INTO users (name, password, email)
VALUES 
	('Bernardo', 'ber', 'bernardo@bluware.com');
INSERT INTO users (name, password, email)
VALUES 
	('Giovana', 'gio', 'giovana@bluware.com');
INSERT INTO users (name, password, email)
VALUES 
	('Julia', 'jul', 'julia@bluware.com');
INSERT INTO users (name, password, email)
VALUES 
	('Geraldo', 'ger', 'geraldo@bluware.com');
INSERT INTO users (name, password, email)
VALUES 
	('Marcos', 'mar', 'marcos@bluware.com');
INSERT INTO users (name, password, email)
VALUES 
	('Carlos', 'car', 'carlos@bluware.com');
	
GRANT ALL ON USERS TO BLUWARE WITH GRANT OPTION;

SELECT COUNT(*) CONTADOR FROM USERS WHERE NOME = :name  AND SENHA = :password ;

SELECT * FROM USERS WHERE NAME = :name AND PASSWORD = :password;
