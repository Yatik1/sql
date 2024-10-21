use classicmodels;

DROP DATABASE student_data;

use classicmodels;

create table offices (
	officeCode varchar(10) NOT NULL,
    city varchar(50) NOT NULL,
    phone varchar(10) NOT NULL,
    address1 varchar(50) NOT NULL,
    address2 varchar(50),
    state varchar(20),
    country varchar(20) NOT NULL,
    postalCode varchar(20) NOT NULL,
    territory varchar(10),
    PRIMARY KEY (officeCode)
);

desc offices;

show tables;

desc offices;

INSERT INTO offices 

(officeCode,city,phone,address1,address2,state,country,postalCode,territory) VALUES 

('1','San Francisco','+165045','100 Market Street','Suite 300','CA','USA','94080','NA'),

('2','Boston','+1215837 ','1550 Court Place','Suite 102','MA','USA','02107','NA'),

('3','NYC','+1212555','523 East 53rd Street','apt. 5A','NY','USA','10022','NA'),

('4','Paris','+3314723','43 Rue Jouffroy D\'abbans',NULL,NULL,'France','75017','EMEA'),

('5','Tokyo','+8133224','4-1 Kioicho',NULL,'Chiyoda-Ku','Japan','102-8578','Japan'),

('6','Sydney','+6129264','5-11 Wentworth Avenue','Floor #2',NULL,'Australia','NSW 2010','APAC'),

('7','London','+44207877','25 Old Broad Street','Level 7',NULL,'UK','EC2N 1HN','EMEA');

SELECT * FROM offices;

Delete from offices where officeCode="8";

SELECT officeCode, phone, country from offices;

CREATE TABLE employees (
	employeeNumber int(11) NOT NULL,
    lastName varchar(20) NOT NULL,
    firstName varchar(20) NOT NULL,
    extension varchar(10) NOT NULL,
    email varchar(100) NOT NULL,
    officeCode varchar(10) NOT NULL,
    reportsTo int(11) DEFAULT NULL,
    jobTitle varchar(20) NOT NULL,
    PRIMARY KEY (employeeNumber),
    FOREIGN KEY (reportsTo) references employees (employeeNumber),
    FOREIGN KEY (officeCode) references offices (officeCode)
);

-- DROP TABLE employees; 

desc employees;


INSERT INTO employees VALUES (
	1002, "Murphy", "Dane", "x5800", "dmurphy@classicmodels.com","1",NULL,"President" 
);

INSERT INTO employees VALUES 
(1056,'Patterson','Mary','x4611','mpatterso@classicmodelcars.com','1',1002,'VP Sales'),
(1076,'Firrelli','Jeff','x9273','jfirrelli@classicmodelcars.com','1',1002,'VP Marketing'),
(1088,'Patterson','William','x4871','wpatterson@classicmodelcars.com','6',1056,'Sales Manager (APAC)'),
(1102,'Bondur','Gerard','x5408','gbondur@classicmodelcars.com','4',1056,'Sale Manager (EMEA)'),
(1143,'Bow','Anthony','x5428','abow@classicmodelcars.com','1',1056,'Sales Manager (NA)'),
(1165,'Jennings','Leslie','x3291','ljennings@classicmodelcars.com','1',1143,'Sales Rep'),
(1166,'Thompson','Leslie','x4065','lthompson@classicmodelcars.com','1',1143,'Sales Rep'),
(1188,'Firrelli','Julie','x2173','jfirrelli@classicmodelcars.com','2',1143,'Sales Rep'),
(1216,'Patterson','Steve','x4334','spatterson@classicmodelcars.com','2',1143,'Sales Rep'),
(1286,'Tseng','Foon Yue','x2248','ftseng@classicmodelcars.com','3',1143,'Sales Rep'),
(1323,'Vanauf','George','x4102','gvanauf@classicmodelcars.com','3',1143,'Sales Rep'),
(1337,'Bondur','Loui','x6493','lbondur@classicmodelcars.com','4',1102,'Sales Rep'),
(1370,'Hernandez','Gerard','x2028','ghernande@classicmodelcars.com','4',1102,'Sales Rep'),
(1401,'Castillo','Pamela','x2759','pcastillo@classicmodelcars.com','4',1102,'Sales Rep'),
(1501,'Bott','Larry','x2311','lbott@classicmodelcars.com','7',1102,'Sales Rep'),
(1504,'Jones','Barry','x102','bjones@classicmodelcars.com','7',1102,'Sales Rep'),
(1611,'Fixter','Andy','x101','afixter@classicmodelcars.com','6',1088,'Sales Rep'),
(1612,'Marsh','Peter','x102','pmarsh@classicmodelcars.com','6',1088,'Sales Rep'),
(1619,'King','Tom','x103','tking@classicmodelcars.com','6',1088,'Sales Rep'),
(1621,'Nishi','Mami','x101','mnishi@classicmodelcars.com','5',1056,'Sales Rep'),
(1625,'Kato','Yoshimi','x102','ykato@classicmodelcars.com','5',1621,'Sales Rep'),
(1702,'Gerard','Martin','x2312','mgerard@classicmodelcars.com','4',1102,'Sales Rep');


Select * from employees;

