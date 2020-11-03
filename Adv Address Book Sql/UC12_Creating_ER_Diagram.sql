--UC12 Creating Entities 
use addressBookService;
drop table address_book;
--Creating contact Details Table
create table ContactDetails
(FirstName varchar(30) not null,
LastName varchar(30) not null,
PhoneNumber varchar(10) not null,
Email varchar(50) not null,
Primary key(FirstName,LastName)
);
alter table contactdetails
add constraint Len_Phone check(len(PhoneNumber) = 10)

Insert into contactdetails values
('Mukhesh','Attuluri','8978496720','mkh@gmail.com'),
('Ram','Bantu','7206326427','ram@gmail.com'),
('Ravi','Prasad','8295144269','ravi@gmail.com'),
('Sai','kiran','8523697411','sai@gmail.com');
--Creating AddressDetails Table
create table AddressDetails
(FirstName varchar(30) not null,
LastName varchar(30) not null, 
Area varchar(20) not null,
City varchar(20) not null,
State varchar(20) not null,
Country varchar(20) not null,
Primary key(FirstName,LastName),
 foreign key (FirstName,LastName) references Contactdetails(FirstName,LastName));

 Insert into Addressdetails values
('Mukhesh','Attuluri','Vemakotavari street','Parvathipuram','Andhra Pradesh','India'),
('Ram','Bantu','Bank Colony','Hyd','Telangana','India'),
('Ravi','Prasad','ITDA','Bobbili','Andhra Pradesh','India'),
('Sai','kiran','SteelPlant','Vizag','Andhra Pradesh','India');
--Creating table Which contain addressbook name and contact type
create table BookNameContactType
( Contactid int not null identity(1,1),
AddressBookName varchar(60) not null,
ContactType varchar(60) not null,
unique(AddressBookName, ContactType),
primary key(Contactid)
)
insert into BookNameContactType values
('Mukhesh','Friend'),('Ravi','family'),('School','Friend'),('Dinesh','relative')
--This table relates person with contact type 
create table ContactTypeMap
(FirstName varchar(30) not null,
LastName varchar(30) not null,
NameTypeid int not null foreign key references BookNameContactType(ContactId),
Foreign key(FirstName, LastName) references contactdetails( FirstName,LastName),
unique(FirstName,LastName,NameTypeid)
)
Insert into ContactTypeMap values
('Mukhesh','Attuluri',3),
('Ram','Bantu',1),
('Ravi','Prasad',2),
('Sai','kiran',4);
