
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

