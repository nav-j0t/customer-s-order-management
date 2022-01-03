# customer-s-order-management
This was my hands on project for Database Management and is done using 3 different technologies. SQL, Oracle Database Servers and docke


Proposal:
This project is about the management of the customer orders, their information and 
In this project we’ll be having orders, adding, inserting orders into the “Orders” table. 
Payment’s methods managing order’s status in terms of shipment and expected date.
Finding suppliers and the products with no suppliers
Credit card information and mode of payment.


TABLES REQUIRED:

Customers [customerID, name, phone_num, email, age, address]

Orders [orderID, customerID, order_date, status, paymentID]
ss
PaymentMethod [paymentID, card_num, card_type, customerID]

Inventory [productID, store, quantity, supplierID, inventoryID]

Shipments [orderID, shipment_date]

Products [productID, name, price, effective_date]

Suppliers [supplierID, suppliername]

ASSUMPTIONS: 
1.	In this database it is considered that it is not necessary for every product to have their own different suppliers. because some of the products in the database are not having suppliers and that’s okay.
2.	Moreover I believe that there is no customer aged under 19 but if there is any they might still be having their own payment method.
3.	And in this database all the primary keys of the tables have capital “ID” at the end for example order ID customer ID product ID payment ID and all that.

ENTITY RELATIONSHIP:

Based on these tables we created above, in the “required table” we have different table names, each starting with a capital letter. 
And I the primary keys are represented by underlining the attribute, moreover all the foreign keys are represented by highlighting the attributes with red colour

 


QUERIES USED:

As we know that we always need queries to fetch data, so the very first query we are going to use would be to check how my customers we have in our system yet. 

So, if we check the script of the whole project the very first 7 statements are used to build tables in the database. 

Query 1 -->

Now, the very first command that we will use is to count how many customers we have in our business cycle or business cycle we would say. For that we’ll use a SQL query to count the number of customers. this query that we used to check how many customers we have will be saved in statement number eight of the script.

SELECT COUNT(DISTINCT customerID)
FROM Customers;

The output we get from this query is ten, that means we have 10 customers in our database in “Customers” table.

Query 2 -->

So as we had 1-7 statements for creating the tables in a database then we had the eighth statement to check how many customers we have and then the next thing is going to be the query that will help us check how many others we have. and it will also tell us about the status of the orders as if their processed if they're shaped or if they're just ordered yet.

SELECT orderID "ORDER ID", customerID "Customer ID" , order_date "ORDER DATE" , status "STATUS OF ORDER" , paymentID "PAYMENT ID USED"
FROM Orders;

 

This is how the result looks like we can see that we have order ID's starting with “o” and the customer ID starting with “c” and at the end we have the payment ID which is starting with letter “p”. 

From the table above here, I mean the output here we cannot see which customer was ordering that order.

Query 3 -->

So, in this next statement or next SQL query we will join the customer tables in such a way that we going to be replacing the customer ID with the actual customers name, so we can have a look Which customer it was ordered by. And this we will drive in customer table with the order table.

SELECT o.orderID "ORDER ID", c.name "CUSTOMER NAME" , o.order_date "ORDER DATE" , o.status "STATUS OF ORDER" , o.paymentID "PAYMENT ID USED"
FROM Orders o
JOIN Customers c ON c.customerID = o.customerID;

And the results would look like this in the table below

 

Query 4 -->

Selecting all the customers with valid payment method and grouping them according to their payment type or type of card used.

SELECT p.paymentid, c.name, p.card_type
FROM paymentmethod p 
JOIN customers c on c.customerID = p.customerid
ORDER BY card_type DESC;


 


Query 5 -->

Next is going to be the shipping status of all the orders we are going to create three different tables each with different shipment status along with the possible fulfilment date.

SELECT c.name ,o.orderID, c.address "Shipping Address", s.shipdate "Shipment Date"
FROM Orders o
JOIN Customers c ON o.customerID = c.customerID
JOIN Shipments s ON s.orderID = o.orderID
ORDER BY c.name;


 

Query 6 -->

And now we’ll find the customer who has placed the maximum number of orders


SELECT * FROM (
    SELECT customerID, COUNT(*)
    FROM Orders 
    GROUP BY customerID
    ORDER BY COUNT(*) DESC
) WHERE ROWNUM = 1;

 
So, this way we’ll get the out of the customerID who has maximum orders

Query 7 -->

This Query is going to be working more on the inventory and the product area. For example, earlier we had queries that were working with customer orders and shipment date, now we have a query that will be working with inventory items and the suppliers for those items

so end example we will be finding data about a particular product for example “iphone 12”. So, we will find how many of these products are available and what is the price of those.

SELECT  inventoryid, inventory.productid, quantity, price, productname, supplierid FROM inventory
JOIN products ON inventory.productid=products.productid
WHERE productname = 'iphone 12';

 
Query 8 -->

So to find the total number of quantity available we had to sum up the column saying quantity, and the summing up the product of quantity and price to get the total worth for the “iphone 12”

SELECT SUM(inventory.quantity) "Total Available quantity", SUM(inventory.quantity * products.price) "Total price worth"
FROM inventory 
JOIN products ON inventory.productID = products.productid
WHERE inventory.productid IN (
    SELECT productid 
    FROM products
    WHERE productname = 'iphone 12'
    );

 


Query 9 -->

This query is used to fetch all the products that we have no suppliers.




SELECT  supplierid ,p.productID, p.productname, price, effective_date
FROM inventory i 
RIGHT OUTER JOIN products p ON i.productid=p.productid
WHERE supplierID IS NULL
ORDER BY p.productid;


 

so this way we know what kind of product we need to find more suppliers for !



Query 10 -->

Finally we’ll have the query to find the payment method for orders, this will have different customers and the order placed by corresponding customers, the type of payment method used and at last the status of the order if its shipped, processed or just newly ordered

SELECT c.name, c.age, pm.card_type, o.orderID, status
FROM Customers c
JOIN PaymentMethod pm ON c.customerID = pm.customerID
JOIN Orders o ON o.customerID = c.customerID
ORDER BY c.name

 
 
