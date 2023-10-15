use HospitalDB

Create table Patient1(
Patient_ID INT NOT NULL,
Patient_Name VARCHAR(100),
Patient_Age INT,
Patient_Address VARCHAR(100),
Patient_Gender VARCHAR(100),
Disease VARCHAR(100)
);

-- add column to the table

Alter Table Patient1
Add doctor_ID INT NULL

-- drop column from the table

Alter table Patient1
Drop column Patient_Gender

-- add primary key

Alter Table Patient1
Add constraint Patient1_PK
Primary Key(Patient_ID)

Create Table Doctor(

Doctor_ID INT NOT NULL,
Doctor_Name VARCHAR(100),
Doctor_Age VARCHAR(100),
Doctor_Gender VARCHAR(100),
Doctor_Address VARCHAR(100),

Constraint Doctor_PK Primary Key (Doctor_ID)
);


Create Table Room(
Room_no VARCHAR(50) NOT NULL,
Room_type VARCHAR(100),
Room_Status VARCHAR(100),

Constraint Room_PK Primary Key (Room_no)

);

Alter Table Patient1
Add constraint Patient_Doc_FK1
foreign Key (Doctor_ID) references Doctor (Doctor_ID);

Create Table Check_IN_OUT(
Patient_ID INT Not NULL,
Room_no VARCHAR(50),
join_data datetime,
Leave_date datetime,

constraint Patient_IN_FK
Foreign Key (Patient_ID) references Patient1 (Patient_ID),

constraint Room_IN_FK_FK
Foreign key (Room_no) references Room (Room_no)

);

--insert data in doctor table
Insert Into Doctor
values(1, 'Saira', 26, 'Female', ' Toronto'),
(2, 'Mark', 34, 'Male', ' Toronto'),
(3, 'Diana', 54, 'Female', ' Toronto'),
(4, 'Emy', 65, 'Female', ' Toronto'),
(5, 'David', 17, 'Male', ' Toronto');

Insert into Patient1 
Values (1, 'Harry',20, 'Toronto', 'flu', 3),
(2, 'Jack',30, 'Toronto', 'COVID19', 2),
(3, 'William',25, 'Toronto', 'Virus C', 5),
(4, 'joe',25, 'Toronto', 'heart disease', 4);


Insert into Room
Values(1, 'Premium', 'empty'),
(2, 'Suite', 'reserved'),
(3, 'Sharing room', 'empty'),
(4, 'Premium', 'empty'),
(5, 'Day care', 'reserved'),
(6, 'Premium', 'empty');


Insert into Check_IN_OUT
Values(1, 2, '2020 - 1 -20', '

