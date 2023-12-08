/*CREATE TABLE USER 
(
    UserID int,
    name varchar(50),
    PRIMARY KEY (`UserID`)
);*/
/*ALTER TABLE USER ADD PRIMARY KEY (UserID);*/

/*CREATE TABLE PARTS
(
	SerialNumber int,
    brand varchar(50),
    price varchar(50),
    PartType varchar(50)
);*/
/*ALTER TABLE PARTS ADD PRIMARY KEY (SerialNumber);*/
/*CREATE TABLE STORAGE_DRIVE
(
	SerialNumber int,
    SD_Type varchar(50),
    Capacity varchar(50)
);*/

/*ALTER TABLE USER
DROP PRIMARY KEY;*/


/*CREATE TABLE MOTHERBOARD
(
	SerialNumber int,
    num_sata int,
    num_ram int
);*/

/*CREATE TABLE CPU
(
	SerialNumber int,
    num_cores int,
    num_threads int
);*/

/*CREATE TABLE POWER_SUPPLY
(
	SerialNumber int,
    wattage int
);*/

/*CREATE TABLE GPU
(
	SerialNumber int,
    memory int,
    clock_speed int
);*/

/*CREATE TABLE COOLING_FAN
(
	SerialNumber int,
    RPM int
);*/

/*CREATE TABLE RAM
(
	SerialNumber int,
    RAM_type varchar(50),
    capactiy varchar(50)
);*/

/*CREATE TABLE USER_BUILD
(
	Build_ID int,
    UserID int,
    Build_parts varchar(50)
);*/

/*CREATE TABLE BUILD_PARTS
(
	BuildPart_ID int,
    Build_ID int,
    SerialNumber int
);*/

/*CREATE TABLE PRICE_RANGE
(
	PriceRange_ID int,
    UserID int,
    price varchar(50)
);*/

/*CREATE TABLE USER_SEARCH_PARTS
(
	UserID int,
    SerialNumber int
);*/

/*CREATE TABLE PRICE_BUILD_PARTS
(
	PriceBuild_ID int,
    SerialNumber int
);*/


/* This is for doing the Primary Key and Foreign Keys */

/*ALTER TABLE PARTS
ADD FOREIGN KEY (SerialNumber) REFERENCES STORAGE_DRIVE(SerialNumber);*/

/*ALTER TABLE PARTS
DROP PRIMARY KEY;*/

/*ALTER TABLE MOTHERBOARD
ADD FOREIGN KEY (SerialNumber) REFERENCES PARTS(SerialNumber);*/

/*ALTER TABLE CPU
ADD FOREIGN KEY (SerialNumber) REFERENCES PARTS(SerialNumber);*/

/*ALTER TABLE POWER_SUPPLY
ADD FOREIGN KEY (SerialNumber) REFERENCES PARTS(SerialNumber);*/

/*ALTER TABLE GPU
ADD FOREIGN KEY (SerialNumber) REFERENCES PARTS(SerialNumber);*/

/*ALTER TABLE COOLING_FAN
ADD FOREIGN KEY (SerialNumber) REFERENCES PARTS(SerialNumber);*/

/*ALTER TABLE RAM
ADD FOREIGN KEY (SerialNumber) REFERENCES PARTS(SerialNumber);*/

/*ALTER TABLE USER_BUILD
ADD FOREIGN KEY (UserID) REFERENCES USER(UserID);*/

/*ALTER TABLE BUILD_PARTS
ADD FOREIGN KEY (SerialNumber) REFERENCES PARTS(SerialNumber);*/

/*ALTER TABLE BUILD_PARTS
ADD FOREIGN KEY (Build_ID) REFERENCES USER_BUILD(Build_ID);*/ /*had to modify primary key for userbuild*/

/*ALTER TABLE PRICE_RANGE
ADD Build_ID int;*/

/*ALTER TABLE PRICE_RANGE
ADD FOREIGN KEY (Build_ID) REFERENCES USER_BUILD(Build_ID);*/

/*CREATE TABLE PRICE_BUILDS (
    PriceBuild_ID INT PRIMARY KEY,
    Price DECIMAL(10, 2),
    UserID INT,
    FOREIGN KEY (UserID) REFERENCES USER(UserID)
);*/ /*I apparently didn't add this, but have now*/

/*ALTER TABLE USER_SEARCH_PARTS
ADD FOREIGN KEY (UserID) REFERENCES USER(UserID);*/

/*ALTER TABLE PRICE_BUILD_PARTS
ADD FOREIGN KEY (PriceBuild_ID) REFERENCES PRICE_BUILDS(PriceBuild_ID);*/

/*ALTER TABLE PRICE_BUILD_PARTS
ADD FOREIGN KEY (SerialNumber) REFERENCES PARTS(SerialNumber);*/

/*NOW INSERTING DATA FROM HERE*/

/*INSERT INTO USER (UserID, name)
VALUES
    (1, 'Alice Johnson'),
    (2, 'Bob Smith'),
    (3, 'Charlie Brown'),
    (4, 'David Wilson'),
    (5, 'Emma Davis'),
    (6, 'Frank White'),
    (7, 'Grace Taylor'),
    (8, 'Helen Adams'),
    (9, 'Isaac Clark'),
    (10, 'Julia Roberts');*/
    
SET GLOBAL FOREIGN_KEY_CHECKS=0;

/*PARTS INSERT DATA DONE, DID IT IN SQL CLIENT*/

/*STORAGE_DRIVER INSERT DONE
INSERT INTO STORAGE_DRIVE (SerialNumber, SD_Type, Capacity)
VALUES
    (11, 'SSD', 256),
    (12, 'HDD', 1000),
    (13, 'SSD', 512),
    (14, 'HDD', 2000),
    (15, 'SSD', 128),
    (16, 'HDD', 4000),
    (17, 'SSD', 256),
    (18, 'HDD', 1000),
    (19, 'SSD', 512),
    (20, 'HDD', 2000);*/
    
/*MOTHERBOARD INSERT DATA DONE, DID IT IN SQL CLIENT*/

/*CPU INSERT DATA DONE, DID IT IN SQL CLIENT*/

/*POWER_SUPPLY INSERT DATA DONE, DID IT IN SQL CLIENT*/

/*GPU INSERT DATA DONE, DID IT IN SQL CLIENT*/

/*COOLING_FAN INSERT DATA DONE, DID IT IN SQL CLIENT*/

/*RAM INSERT DATA DONE, DID IT IN SQL CLIENT*/

/*USER_BUILD INSERT DONE
INSERT INTO USER_BUILD (Build_ID, UserID, Build_Parts)
VALUES
    (1, 1, 'User1 Build 1'),
    (2, 2, 'User2 Build 2'),
    (3, 3, 'User3 Build 3'),
    (4, 4, 'User4 Build 4'),
    (5, 5, 'User5 Build 5'),
    (6, 6, 'User6 Build 6'),
    (7, 7, 'User7 Build 7'),
    (8, 8, 'User8 Build 8'),
    (9, 9, 'User9 Build 9'),
    (10, 10, 'User10 Build 10'); */
    
/*PRICE_RANGE DATA INSERT DONE, NOTE COLUMN HAS 4 AND THIS HAS 3, WE MAY HAVE TO TALK ABOUT THIS
INSERT INTO PRICE_RANGE (PriceRange_ID, Build_ID, price)
VALUES
    (1, 1, 'Low'),
    (2, 2, 'Medium'),
    (3, 3, 'High'),
    (4, 4, 'Medium'),
    (5, 5, 'High'),
    (6, 6, 'Low'),
    (7, 7, 'Medium'),
    (8, 8, 'High'),
    (9, 9, 'Medium'),
    (10, 10, 'Low');*/

/*USER_SEARCH_PARTS INSERT DONE    
INSERT INTO USER_SEARCH_PARTS (UserID, SerialNumber)
VALUES
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5),
    (6, 6),
    (7, 7),
    (8, 8),
    (9, 9),
    (10, 10);*/
    
/*PRICE_BUILD_PARTS INSERT DATA DONE, DID IT IN SQL CLIENT*/
SET GLOBAL FOREIGN_KEY_CHECKS=0;

/*DATE: 10/19/2023 DATA FOR BUILD_PARTS HAVE BEEN ENTERED
INSERT INTO BUILD_PARTS (BuildPart_ID, Build_ID, SerialNumber)
VALUES
    (1, 1, 1),
    (2, 2, 2),
    (3, 3, 3),
    (4, 4, 4),
    (5, 5, 5),
    (6, 6, 6),
    (7, 7, 7),
    (8, 8, 8),
    (9, 9, 9),
    (10, 10, 10); */
/*^THIS REACTIVES ALL FOREIGN KEYS AGAIN*/

SET GLOBAL FOREIGN_KEY_CHECKS=0;