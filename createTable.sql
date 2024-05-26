create database DBMSproject;
use DBMSproject;

-- Customer Table
Create Table Customer
(
CustomerID varchar(8) Primary key,
Fname varchar(10),
Lname varchar(10),
Age int,
Constraint C1 Check(CustomerID Like "C%")
);
desc Customer;

-- PhoneNo Table
Create Table PhoneNO
(
PhoneNoID varchar(8) Primary key,
PhoneNo bigint not null,
CustomerID varchar(8),
constraint PN1 foreign key(CustomerID) references Customer(CustomerID),
constraint PN2 Check(PhoneNOID like "PN%"),
constraint PN3 check(PhoneNo between 0000000000 and 9999999999)
);
desc PhoneNo;

-- Address Table
Create Table Address
(
AddressID varchar(8) Primary key,
HouseNo varchar(8),
Street varchar(20),
City varchar(10),
Pincode int,
CustomerID varchar(8),
Constraint AD1 Check(AddressID Like "AD%"),
Constraint AD2 Foreign key(CustomerID) References Customer(CustomerID)
);
desc Address;

-- Payment Table
Create Table Payment
(
PaymentID varchar(8) Primary key,
PaymentDate Date,
PaymentType varchar(15),
Constraint PT1 check (PaymentID like 'PT%')
);
desc Payment;

-- Employee Table
Create Table Employee
(
EmployeeID varchar(8) primary key,
Name varchar(20),
Salary int,
Age int,
Gender varchar(8),
constraint Emp1 check (EmployeeID like 'EMP%')
);
desc Employee;

-- Order
Create Table Orders1
(
OrderID varchar(8) Primary key,
OrderDate date,
OrderTime time,
OrderStatus varchar(10),
CustomerID varchar(8),
PaymentID varchar(8),
DeliveryID varchar(8),
EmployeeID varchar(8),
Constraint O1 check(OrderID like "O%"),
Constraint O2 foreign key(CustomerID) references Customer(CustomerID),
Constraint O3 foreign key(PaymentID) references Payment(PaymentID),
Constraint O4 foreign key(DeliveryID) references Delivery(DeliveryID),
Constraint O5 foreign key(EmployeeID) references Employee(EmployeeID)
);
desc Orders1;

-- OrderDetails
Create Table Cart
(
CartID varchar(9) Primary key,
Quantity int,
OrderID varchar(8),
constraint CT1 check(CartID like "CT%"),
constraint CT2 foreign key(OrderID) references Orders1(OrderID)
);
desc Cart;

-- Pizza Table;
Create Table Pizza
(
PizzaID varchar(8) primary key,
PizzaName varchar(30),
PizzaSize varchar(10),
Price decimal(8,2),
constraint P1 check (PizzaID like 'P%S' or PizzaID like 'P%M' or PizzaID like 'P%L')
);
desc Pizza;

-- PizzaOrderDetail Table;
Create Table PizzaOrderDetails
(
PizzaOrderDetailsID varchar(9) Primary key,
CartID varchar(8),
PizzaID varchar(8),
constraint POD1 check(PizzaOrderDetailsID like "POD%"),
constraint POD2 foreign key(CartID) references Cart(CartID),
constraint POD3 foreign key(PizzaID) references Pizza(PizzaID)
);
desc PizzaOrderDetails;

-- Delivery Table
Create Table Delivery
(
DeliveryID varchar(8) primary key,
DepartureTime time,
ArrivalTime time,
DeliveryStatus varchar(15),
constraint D1 check(DeliveryID like 'DL%'),
DeliveryManID varchar(8),
constraint D2 foreign key(DeliveryManID) references DeliveryMan(DeliveryManID)
);
desc Delivery;

-- Delivery Man table
Create Table DeliveryMan
(
DeliveryManID varchar(8) primary key,
Name varchar(20),
Age int,
Salary int,
constraint DM1 check(DeliveryManID like 'DM%')
);
desc DeliveryMan;
show tables;

-- Feedback Table
Create Table Feedback
(
FeedbackID varchar(8) primary key,
Rating integer,
OrderId varchar(8),
constraint FD1 foreign key(OrderID) references Orders1(OrderID),
constraint FD2 check(FeedbackID like 'F%')
);
desc Feedback;