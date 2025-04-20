CREATE database if not exists RetailSalesData;
USE RetailSalesData;

CREATE TABLE Sales_Data_Transactions (
customer_id VARCHAR(255),
trans_date VARCHAR(255),
tran_amount INT );

DROP TABLE Sales_Data_Transactions

CREATE TABLE if not exists Sales_Data_Response (
customer_id VARCHAR(255) PRIMARY KEY,
response INT );

LOAD DATA INFILE "C:/Retail_Data_Transactions.csv"
INTO TABLE Sales_Data_Transactions
FIELDS terminated by ','
LINES terminated by '\n'
IGNORE 1 ROWS;

EXPLAIN SELECT *FROM Sales_Data_Transactions WHERE CUSTOMER_ID = "CS5295"; 

CREATE INDEX idx_id ON Sales_Data_Transactions(CUSTOMER_ID);

EXPLAIN SELECT *FROM Sales_Data_Transactions WHERE CUSTOMER_ID = "CS5295"; 


