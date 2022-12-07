use master;

Drop Database If Exists Bootcamp;

Create Database Bootcamp;

use Bootcamp;

Create Table Students 
(StudentId Int Not Null primary Key Identity(1,1),
FirstName Varchar(30) not null,
 LastName Varchar(60) not null, 
 City Varchar(60) not NULL, 
 StateCode char(2) not null,
 Phone varchar(60) not null UNIQUE,
Email varchar(100) null,
DateOfBirth Date not null,
);

Create Table GraduationRequirements 
( Id int not null primary Key Identity(1,1),
StudentId int not null foreign key References Students(StudentId), 
Topic varchar(60) not null,
Score int null Check (Score >= 0 and score <=120),
DateTaken Date null
);

Insert Students(Firstname, Lastname, City, Statecode, Phone, Email, DateofBirth)
Values ('Caleb', 'Butcher', 'Dayton', 'OH', '(937)-520-6157', 'Cbutch999@gmail.com', '04-22-1999'),
('Jack', 'Bean', 'Mason', 'OH', '(937)-123-4567', 'JackBean@gmail.com', '01-01-2001'),
('Karl', 'Towns', 'Dayton', 'OH','(937)-222-2222', 'KarlTowns@gmail.com', '02-02-2002'),
('Sam', 'Smith', 'Dayton', 'OH', '(937)-333-3333', 'SamSmith@gmail.com', '03-03-2003'),
('James', 'Jackson', 'Mason', 'OH', '(937)-444-4444', 'JamesJackson@gmail.com', '04-04-2004'),
('Ian', 'Anderson', 'Mason', 'OH', '(937)-555-5555', 'IanAnderson@gmail.com', '05-05-2005'),
('Billy', 'Baker', 'Pittsburg', 'PA', '(937)-777-7777', 'BillyBaker@gmail.com', '06-06-2006'),
('Josh', 'Johnson', 'Columbus', 'OH', '(614)-888-8888', 'JoshJohnson@gmail.com', '07-07-2007')


Insert GraduationRequirements
(StudentId, Topic) 
VALUES
(1, 'Git/GitHub'),
(1, 'SQL'),
(1, 'C#'),
(1, 'JavaScript'),
(1, 'Angular'),
(1, 'CapStone'),
(2, 'Git/GitHub'),
(2, 'SQL'),
(2, 'C#'),
(2, 'JavaScript'),
(2, 'Angular'),
(2, 'CapStone'),
(3, 'Git/GitHub'),
(3, 'SQL'),
(3, 'C#'),
(3, 'JavaScript'),
(3, 'Angular'),
(3, 'CapStone'),
(4, 'Git/GitHub'),
(4, 'SQL'),
(4, 'C#'),
(4, 'JavaScript'),
(4, 'Angular'),
(4, 'CapStone'),
(5, 'Git/GitHub'),
(5, 'SQL'),
(5, 'C#'),
(5, 'JavaScript'),
(5, 'Angular'),
(5, 'CapStone'),
(6, 'Git/GitHub'),
(6, 'SQL'),
(6, 'C#'),
(6, 'JavaScript'),
(6, 'Angular'),
(6, 'CapStone'),
(7, 'Git/GitHub'),
(7, 'SQL'),
(7, 'C#'),
(7, 'JavaScript'),
(7, 'Angular'),
(7, 'CapStone'),
(8, 'Git/GitHub'),
(8, 'SQL'),
(8, 'C#'),
(8, 'JavaScript'),
(8, 'Angular'),
(8, 'CapStone') 
;