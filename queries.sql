/* Query to check how many customers we have in out whole business circle or we can just call customers */

SELECT COUNT(DISTINCT customerID)
FROM Customers;


/*  we will be checking about the orders whom they are ordered by and which payment id was used  and what was the order date */

SELECT orderID "ORDER ID", customerID "Customer ID" , order_date "ORDER DATE" , status "STATUS OF ORDER" , paymentID "PAYMENT ID USED"
FROM Orders;


/*  query used to replace customerID with customer's name  using JOIN */

SELECT o.orderID "ORDER ID", c.name "CUSTOMER NAME" , o.order_date "ORDER DATE" , o.status "STATUS OF ORDER" , o.paymentID "PAYMENT ID USED"
FROM Orders o
JOIN Customers c ON c.customerID = o.customerID;


/* selecing payment method nd customer's name along with ordering the data according to the type of the payment method */

select p.paymentid, c.name, p.card_type
from paymentmethod p 
join customers c on c.customerID = p.customerid
order by card_type desc;


/*  now we’ll find the customer who has placed the maximum number of orders   */

SELECT * FROM (
    SELECT customerID, COUNT(*)
    FROM Orders 
    GROUP BY customerID
    ORDER BY COUNT(*) DESC
) WHERE ROWNUM = 1;


/* check about a particular product their quantity supplier and total quantity and price  */

select inventoryid, inventory.productid, quantity, price, productname, supplierid from inventory
join products on inventory.productid=products.productid
where productname = 'iphone 12';


/* to find the total number of quantity available we had to sum up the column saying quantity, and the summing up the product of quantity and price to get the total worth for the “iphone 12” */

SELECT SUM(inventory.quantity) "Total Available quantity", SUM(inventory.quantity * products.price) "Total price worth"
FROM inventory 
JOIN products ON inventory.productID = products.productid
WHERE inventory.productid IN (
    SELECT productid 
    FROM products
    WHERE productname = 'iphone 12'
    );


-- This query is used to fetch all the products that we have no suppliers.

SELECT  supplierid ,p.productID, p.productname, price, effective_date
FROM inventory i 
RIGHT OUTER JOIN products p ON i.productid=p.productid
WHERE supplierID IS NULL
ORDER BY p.productid;


/*  Finally we’ll have the query to find the payment method for orders, this will have different customers and the order placed by corresponding customers, the type of payment method used and at last the status of the order if its shipped, processed or just newly ordered.  */

SELECT c.name, c.age, pm.card_type, o.orderID, status
FROM Customers c
JOIN PaymentMethod pm ON c.customerID = pm.customerID
JOIN Orders o ON o.customerID = c.customerID
ORDER BY c.name;
