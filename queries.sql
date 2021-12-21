/* Query to check how many customers we have in out whole business circle or we can just call customers */
SELECT COUNT(DISTINCT customerID)
FROM Customers;


/*  we will be checking about the orders whom they are ordered by and which payment id was used  and what was the order date */
SELECT orderID "ORDER ID", customerID "Customer ID" , order_date "ORDER DATE" , status "STATUS OF ORDER" , paymentID "PAYMENT ID USED"
FROM Orders;
