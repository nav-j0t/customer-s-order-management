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


