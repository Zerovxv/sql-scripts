use master;

Drop Database If Exists Bootcamp;

Create Database Bootcamp;


Create Table Students 
(StudentId Int Not Null primary Key Identity(1,1),
FirstName Varchar(30) not null,
 LastName Varchar(60) not null, 
 City Varchar(60) not NULL, 
 StateCode char(2) not null,
 Phone varchar(60) not null,
Email varchar(100) null,
DateOfBirth Date not null,
);