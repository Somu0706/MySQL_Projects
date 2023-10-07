create database BMS_DB;
-- Customer_person_Info
USE BMS_DB;

CREATE TABLE CUSTOMER_PERSONAL_INFO
(
CUSTOMER_ID varchar(5),
CUSTOMER_NAME varchar(30),
DATE_OF_BIRTH DATE,
GUAEDIAN_NAME vaRCHAR(30),
ADDRESS varchar(50),
CONTACT_NO BIGINT(10),
MAIL_ID varchar(30),
GENDER CHAR(1),
MARITAL_STATUS VARCHAR(10),
IDENTIFICATION_DOC_TYPE VARCHAR(20),
ID_DOC_NO VARCHAR(20),
CITIZENSHIP VARCHAR(10),
constraint CUST_PERS_INFO_PK primary key(CUSTOMER_ID));

INSERT INTO CUSTOMER_PERSONAL_INFO (CUSTOMER_ID, CUSTOMER_NAME, DATE_OF_BIRTH, GUAEDIAN_NAME, ADDRESS, CONTACT_NO, MAIL_ID, GENDER, MARITAL_STATUS, IDENTIFICATION_DOC_TYPE, ID_DOC_NO, CITIZENSHIP)
VALUES
    ('C001', 'John Doe', '1990-05-15', 'Jane Doe', '123 Main Street', 1234567890, 'john.doe@example.com', 'M', 'Single', 'Passport', 'P123456', 'USA'),
    ('C002', 'Jane Smith', '1985-08-20', 'John Smith', '456 Elm Street', 9876543210, 'jane.smith@example.com', 'F', 'Married', 'Driver License', 'D789012', 'USA'),
    ('C003', 'David Johnson', '1978-03-10', 'Emily Johnson', '789 Oak Avenue', 5551234567, 'david.johnson@example.com', 'M', 'Married', 'Passport', 'P654321', 'USA'),
    ('C004', 'Sarah Brown', '1992-11-25', 'Michael Brown', '321 Pine Road', 9876543210, 'sarah.brown@example.com', 'F', 'Single', 'Driver License', 'D345678', 'USA'),
    ('C005', 'Michael Davis', '1980-07-01', 'Emily Davis', '567 Cedar Lane', 5559876543, 'michael.davis@example.com', 'M', 'Married', 'Passport', 'P987654', 'USA'),
    ('C006', 'Emily Wilson', '1995-02-18', 'Jacob Wilson', '987 Birch Street', 1234567890, 'emily.wilson@example.com', 'F', 'Single', 'Driver License', 'D012345', 'USA'),
    ('C007', 'Daniel Martinez', '1984-09-05', 'Sophia Martinez', '654 Maple Avenue', 5551234567, 'daniel.martinez@example.com', 'M', 'Married', 'Passport', 'P543210', 'USA'),
    ('C008', 'Olivia Taylor', '1998-06-12', 'William Taylor', '234 Oak Street', 9876543210, 'olivia.taylor@example.com', 'F', 'Single', 'Driver License', 'D567890', 'USA'),
    ('C009', 'Jacob Clark', '1976-12-28', 'Emma Clark', '432 Elm Avenue', 5559876543, 'jacob.clark@example.com', 'M', 'Married', 'Passport', 'P456789', 'USA'),
    ('C010', 'Sophia Adams', '1991-04-30', 'David Adams', '876 Pine Lane', 1234567890, 'sophia.adams@example.com', 'F', 'Single', 'Driver License', 'D901234', 'USA');

select * from CUSTOMER_PERSONAL_INFO;
-- CUSTOMER_REFERENCE_INFO

CREATE TABLE  CUSTOMER_REFERENCE_INFO
(
 CUSTOMER_ID VARCHAR(5),
 REFERENCE_ACC_NAME VARCHAR(20),
 REFERENCE_ACC_NO BIGINT(16),
 REFERENCE_ACC_ADDRESS VARCHAR(50),
RELATION VARCHAR(25),
constraint CUST_REF_INFO_PK PRIMARY KEY (CUSTOMER_ID)
);

 
INSERT INTO CUSTOMER_REFERENCE_INFO (CUSTOMER_ID, REFERENCE_ACC_NAME, REFERENCE_ACC_NO, REFERENCE_ACC_ADDRESS, RELATION)VALUES
    ('C001', 'John Smith', 1234567890123456, '123 Main Street', 'Friend'),
    ('C002', 'Jane Johnson', 2345678901234567, '456 Elm Street', 'Sibling'),
    ('C003', 'David Davis', 3456789012345678, '789 Oak Avenue', 'Colleague'),
    ('C004', 'Sarah Brown', 4567890123456789, '321 Pine Road', 'Cousin'),
    ('C005', 'Michael Wilson', 5678901234567890, '567 Cedar Lane', 'Friend'),
    ('C006', 'Emily Taylor', 6789012345678901, '987 Birch Street', 'Neighbor'),
    ('C007', 'Daniel Clark', 7890123456789012, '654 Maple Avenue', 'Friend'),
    ('C008', 'Olivia Adams', 8901234567890123, '234 Oak Street', 'Colleague'),
    ('C009', 'Jacob Martinez', 9012345678901234, '432 Elm Avenue', 'Sibling'),
    ('C010', 'Sophia Anderson', 1234567890123456, '876 Pine Lane', 'Friend');
 
  select * from CUSTOMER_REFERENCE_INFO;
  
 CREATE TABLE BANK_INFO
 (
 
 IFSC_CODE varchar(15),
 BANK_NAME varchar(25),
 BRANCH_NAME VARCHAR(25),
 constraint BANK_INFO_PK primary key(IFSC_CODE)
 );
 
 insert into bank_info values('HDVL0012','HDFC','VALASARAVANKKAM');
insert into BANK_INFo values('SBITNO0123','SBI','TNAGAR');
insert into BANK_INFO values('ICITN0232','ICICI','TNAGAR');
insert into BANK_INFO values('ICIPG0242','ICICI','PERUNGUDI');
insert into BANK_INFO values('SBISD0113','SBI','SAIDAPET');

select * from BANK_INFO;
 -- ACCOUNT_INFO
 
 
 CREATE TABLE ACCOUNT_INFO (
 ACCOUNT_NO BIGINT(16),
 CUSTOMER_ID VARCHAR(5),
 ACCOUNT_TYPE varchar(10),
 REGISTRATION_DATE DATE ,
 ACTIVATION_DATE DATE,
 IFSC_CODE VARCHAR(10),
 INTEREST DECIMAL(7,2),
 CONSTRAINT ACC_INFO_PK PRIMARY KEY(ACCOUNT_NO));

 INSERT INTO ACCOUNT_INFO (ACCOUNT_NO, CUSTOMER_ID, ACCOUNT_TYPE, REGISTRATION_DATE, ACTIVATION_DATE, IFSC_CODE, INTEREST)VALUES
    (1234567890123456, 'C001', 'Savings', '2022-01-01', '2022-01-05', 'ABC123', 2.5),
    (2345678901234567, 'C002', 'Current', '2022-02-01', '2022-02-05', 'DEF456', 1.8),
    (3456789012345678, 'C003', 'Savings', '2022-03-01', '2022-03-05', 'GHI789', 3.0),
    (4567890123456789, 'C004', 'Fixed Deposit', '2022-04-01', '2022-04-05', 'JKL012', 4.5);
    

show tables;