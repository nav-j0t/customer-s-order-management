
CREATE TABLE Customers (
  customerID varchar(5) ,
  name varchar(255) default NULL,
  phone varchar(100) default NULL,
  email varchar(255) default NULL,
  age int, 
  
  address varchar(255) default NULL,
  PRIMARY KEY (customerID));

INSERT INTO Customers (customerID,name,phone,email,age,address)
VALUES ('c1','Evan Rios','574-153-4892','fringilla@aol.org',19,'163 Sed St.');
INSERT INTO Customers (customerID,name,phone,email,age,address)
VALUES ('c2','Anthony Herman','272-160-5145','magna.suspendisse@protonmail.com',21,'4882 In Rd.');
INSERT INTO Customers (customerID,name,phone,email,age,address)
VALUES ('c3','Lucius Neal','158-122-0853','scelerisque.scelerisque@yahoo.net',33,'464-7598 Elit. Av.');
INSERT INTO Customers (customerID,name,phone,email,age,address)
VALUES ('c4','Serena Fitzpatrick','269-811-0324','fermentum.risus@google.edu',54,'Ap #598-8886 Suspendisse Road');
INSERT INTO Customers (customerID,name,phone,email,age,address)
VALUES ('c5','Scarlet Chen','916-591-3714','nascetur.ridiculus.mus@icloud.ca',35,'Ap #643-4291 Fusce Rd.');
INSERT INTO Customers (customerID,name,phone,email,age,address)
VALUES ('c6','Hunter Roberts','316-783-5105','nulla@outlook.couk',63,'P.O. Box 254, 7907 Tincidunt St.');
INSERT INTO Customers (customerID,name,phone,email,age,address)
VALUES ('c7','Boris Serrano','363-292-5725','eu.sem@icloud.com',19,'998-8394 Malesuada Rd.');
INSERT INTO Customers (customerID,name,phone,email,age,address)
VALUES ('c8','Lynn Stokes','696-143-8562','praesent.eu@icloud.org',32,'Ap #642-6119 Eu Ave');
INSERT INTO Customers (customerID,name,phone,email,age,address)
VALUES ('c9','Kim Garcia','712-782-5813','amet@aol.org',21,'Ap #223-6571 Quisque St.');
INSERT INTO Customers (customerID,name,phone,email,age,address)
VALUES ('c10','Tana Tanner','318-535-8226','ante.ipsum.primis@protonmail.edu',45,'P.O. Box 160, 9504 Aenean St.');


CREATE TABLE Orders (
  orderID varchar(5),
  customerID varchar(5),
  order_date varchar(50),
  status varchar(20),
  paymentID varchar(5),
  PRIMARY KEY (orderID),
  FOREIGN KEY (customerID) REFERENCES Customers(customerID)
  );

INSERT INTO Orders (orderID,customerID,order_date,status,paymentID)
VALUES ('o1','c1','25 May 2022','shipped','p1');
INSERT INTO Orders (orderID,customerID,order_date,status,paymentID)
VALUES ('o2','c4','23 Sep 2021','processing','p4');
INSERT INTO Orders (orderID,customerID,order_date,status,paymentID)
VALUES ('o3','c3','4 Mar 2021','ordered','p5');
INSERT INTO Orders (orderID,customerID,order_date,status,paymentID)
VALUES ('o4','c7','8 Aug 2020','ordered','p3');
INSERT INTO Orders (orderID,customerID,order_date,status,paymentID)
VALUES ('o5','c8','30 Jun 2022','processing','p7');
INSERT INTO Orders (orderID,customerID,order_date,status,paymentID)
VALUES ('o6','c9','29 Jul 2020','shipped','p8');
INSERT INTO Orders (orderID,customerID,order_date,status,paymentID)
VALUES ('o7','c5','11 Dec 2021','shipped','p9');
INSERT INTO Orders (orderID,customerID,order_date,status,paymentID)
VALUES ('o8','c6','5 Sep 2020','processing','p4');
INSERT INTO Orders (orderID,customerID,order_date,status,paymentID)
VALUES ('o9','c3','29 Mar 2022','processing','p6');
INSERT INTO Orders (orderID,customerID,order_date,status,paymentID)
VALUES ('o10','c3','24 Aug 2022','ordered','p2');


CREATE TABLE PaymentMethod (
  paymentID varchar(5),
  card_num varchar(255),
  card_type varchar(255),
  customerID varchar(5),
  PRIMARY KEY (paymentID),
  FOREIGN KEY (customerID) REFERENCES Customers(customerID)
);

INSERT INTO PaymentMethod (paymentID,card_num,card_type,customerID)
VALUES ('p1','4539 9445 8346 6858','visa','c1');
INSERT INTO PaymentMethod (paymentID,card_num,card_type,customerID)
VALUES ('p2','4264 5648 9636 3757','mastercard','c4');
INSERT INTO PaymentMethod (paymentID,card_num,card_type,customerID)
VALUES ('p3','4716 4799 6247 6694','mastercard','c3');
INSERT INTO PaymentMethod (paymentID,card_num,card_type,customerID)
VALUES ('p4','4556 5255 2535 7244','visa','c5');
INSERT INTO PaymentMethod (paymentID,card_num,card_type,customerID)
VALUES ('p5','4916 7963 2653 7459','visa','c7');
INSERT INTO PaymentMethod (paymentID,card_num,card_type,customerID)
VALUES ('p6','4485 3918 6458 8980','mastercard','c8');
INSERT INTO PaymentMethod (paymentID,card_num,card_type,customerID)
VALUES ('p7','4539 3494 4238 2637','visa','c3');
INSERT INTO PaymentMethod (paymentID,card_num,card_type,customerID)
VALUES ('p8','4716 6689 2227 8337','mastercard','c2');
INSERT INTO PaymentMethod (paymentID,card_num,card_type,customerID)
VALUES ('p9','4716 7314 7722 9681','mastercard','c1');
INSERT INTO PaymentMethod (paymentID,card_num,card_type,customerID)
VALUES ('p10','4532 4484 7351 6258','visa','c5');


CREATE TABLE Inventory (
  inventoryID varchar(5),
  productID varchar(10),
  store varchar(5),
  quantity varchar(5),
  supplierID varchar(5),
  PRIMARY KEY (inventoryID)
);

INSERT INTO Inventory (inventoryID,productID,store,quantity,supplierID)
VALUES ('i1','pro1',6793,'372','s1');
INSERT INTO Inventory (inventoryID,productID,store,quantity,supplierID)
VALUES ('i2','pro2',5870,'339','s4');
INSERT INTO Inventory (inventoryID,productID,store,quantity,supplierID)
VALUES ('i3','pro6',8154,'151','s6');
INSERT INTO Inventory (inventoryID,productID,store,quantity,supplierID)
VALUES ('i4','pro8',6163,'502','s3');
INSERT INTO Inventory (inventoryID,productID,store,quantity,supplierID)
VALUES ('i5','pro4',8769,'321','s7');
INSERT INTO Inventory (inventoryID,productID,store,quantity,supplierID)
VALUES ('i6','pro2',7344,'948','s9');
INSERT INTO Inventory (inventoryID,productID,store,quantity,supplierID)
VALUES ('i7','pr03',5045,'482','s10');
INSERT INTO Inventory (inventoryID,productID,store,quantity,supplierID)
VALUES ('i8','pro10',6095,'374','s6');
INSERT INTO Inventory (inventoryID,productID,store,quantity,supplierID)
VALUES ('i9','pro9',1578,'966','s7');
INSERT INTO Inventory (inventoryID,productID,store,quantity,supplierID)
VALUES ('i10','pro1',2741,'447','s4');


CREATE TABLE Shipments (
  orderID varchar(5),
  shipdate varchar(50));

INSERT INTO Shipments (orderID,shipdate)
VALUES ('o1','24 Mar 2022');
INSERT INTO Shipments (orderID,shipdate)
VALUES ('o2','25 Oct 2020');
INSERT INTO Shipments (orderID,shipdate)
VALUES ('o3','26 Oct 2022');
INSERT INTO Shipments (orderID,shipdate)
VALUES ('o4','21 Aug 2022');
INSERT INTO Shipments (orderID,shipdate)
VALUES ('o5','11 Nov 2022');
INSERT INTO Shipments (orderID,shipdate)
VALUES ('6','4 Apr 2022');
INSERT INTO Shipments (orderID,shipdate)
VALUES ('o7','28 Sep 2021');
INSERT INTO Shipments (orderID,shipdate)
VALUES ('o8','20 Sep 2022');
INSERT INTO Shipments (orderID,shipdate)
VALUES ('o9','27 Jan 2021');
INSERT INTO Shipments (orderID,shipdate)
VALUES ('o10','1 Aug 2021');


CREATE TABLE Products (
  productID varchar(5),
  productname varchar(50),
  price varchar(50),
  effective_date varchar(255),
  PRIMARY KEY (productID));

INSERT INTO Products (productID,productname,price,effective_date)
VALUES ('pro1','iphone 12',55,'13 Nov 2022');
INSERT INTO Products (productID,productname,price,effective_date)
VALUES ('pro2','trimmer',88,'23 Oct 2021');
INSERT INTO Products (productID,productname,price,effective_date)
VALUES ('pro3','12V LED',22,'18 Dec 2021');
INSERT INTO Products (productID,productname,price,effective_date)
VALUES ('pro4','Christmas tree',65,'14 Aug 2022');
INSERT INTO Products (productID,productname,price,effective_date)
VALUES ('pro5','Bulbs',30,'18 Jun 2021');
INSERT INTO Products (productID,productname,price,effective_date)
VALUES ('pro6','TV',99,'18 Mar 2022');
INSERT INTO Products (productID,productname,price,effective_date)
VALUES ('pro7','knife',89,'16 Aug 2022');
INSERT INTO Products (productID,productname,price,effective_date)
VALUES ('pro8','vent',93,'23 Jun 2021');
INSERT INTO Products (productID,productname,price,effective_date)
VALUES ('pro9','Bag',36,'24 Feb 2022');
INSERT INTO Products (productID,productname,price,effective_date)
VALUES ('pro10','Table',90,'12 Feb 2022');

CREATE TABLE Suppliers (
  supplierID varchar(5),
  suppliername varchar2(255) ,
  PRIMARY KEY (supplierID));

INSERT INTO Suppliers (supplierID,suppliername)
VALUES ('s1','Florence Harris');
INSERT INTO Suppliers (supplierID,suppliername)
VALUES ('s2','Branden Phillips');
INSERT INTO Suppliers (supplierID,suppliername)
VALUES ('s3','Ebony Snider');
INSERT INTO Suppliers (supplierID,suppliername)
VALUES ('s4','Ulysses Hayden');
INSERT INTO Suppliers (supplierID,suppliername)
VALUES ('s5','Ali Walter');
INSERT INTO Suppliers (supplierID,suppliername)
VALUES ('s6','Maya Snow');
INSERT INTO Suppliers (supplierID,suppliername)
VALUES ('s7','Amena Murphy');
INSERT INTO Suppliers (supplierID,suppliername)
VALUES ('s8','Hilary Coffey');
INSERT INTO Suppliers (supplierID,suppliername)
VALUES ('s9','Wyoming Tran');
INSERT INTO Suppliers (supplierID,suppliername)
VALUES ('s10','Brandon Smith');


