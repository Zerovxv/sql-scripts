use master;

Drop Database if exists PRSDataBase;

Create Database PRSDataBase

use PRSDataBase;

Create Table Users
(Id int not null primary key Identity(1, 1),
Username varchar(30) not null unique,
Password varchar(30) not null unique,
FirstName varchar(30) not null,
LastName varchar(30) not null,
Phone varchar(12) null,
Email varchar(255) NULL,
IsReviewer bit not null default 0,
IsAdmin bit not null default 0);



Create Table Vendors
(Id int not null primary key Identity(1, 1),
Code varchar(30) not null unique,
Name varchar(30) not null,
Address varchar(30) not NULL,
City varchar(30) not null,
State char(2) not null,
Zip char(5) not null,
Phone varchar(12) null,
Email varchar(255) null)



Create Table Products
(Id int not null primary key Identity(1, 1),
PartNbr Varchar(30) not null unique,
Name varchar(30) not null,
Price decimal(11,2) not null,
Unit varchar(30) not null default 'Each', 
PhotoPath varchar(255) null,
VendorId int not null foreign key References Vendors(ID))



Create Table Requests 
(Id int not null primary key Identity(1, 1),
Description Varchar(80) not null,
Justification varchar(80) not null,
RejectionReason varchar(80) null,
DeliveryMode varchar(20) not null default 'Pickup',
Status varchar(10) not null default 'New',
Total decimal(11,2) not null default 0,
UserId int not null foreign key References Users(Id))


Create Table RequestLines 
(Id int not null primary key Identity(1, 1),
RequestId int not null foreign key References Requests(Id),
ProductId int not null foreign key References Products(Id),
Quantity int not null default 1);


Insert Users(Username, Password, FirstName, LastName, IsReviewer, IsAdmin) 

Values
('SA', 'SA', 'Systems', 'Admin', 1, 1),
('RV', 'RV', 'Systems', 'Reviewer', 1, 0),
('US', 'US', 'Systems', 'User', 0, 0);

-- Add Vendors
Insert Vendors( Code, Name, Address, City, State, Zip) 

VALUES
('AMAZ', 'Amazon', '1 Amazon Way', 'Seattle', 'WA', '12345'),
('MSFT', 'Microsoft', '2 Microsoft Way', 'Redmond', 'WA', '67890'),
('BBUY', 'BestBuy', '3 BestBuy Way', 'Atlanta', 'GA', '29294');


Insert Products(PartNbr, Name, Price, VendorId)

VALUES

('Echo', 'Echo ST', 100,(Select Id From Vendors where code = 'AMAZ')),
('EchoDot', 'Echo Dot', 50,(Select Id From Vendors where code = 'AMAZ')),
('EchoShow', 'Echo Show', 150,(Select Id From Vendors where code = 'AMAZ')),
('EchoReach', 'Echo Reach', 200,(Select Id From Vendors where code = 'AMAZ'));

