CREATE DATABASE SUPERSTORE;
USE SUPERSTORE;
SELECT DATABASE();
SHOW TABLES;
SELECT * FROM clean_data;
SELECT COUNT(*) FROM CLEANED;

-- TOTAL COUNT 
SELECT COUNT(*) AS TOTAL_ROWS FROM clean_data;

-- 1ST 10 ROWS
SELECT * FROM clean_data LIMIT 10;

-- COLUMNS AND DATA TYPE
DESCRIBE clean_data;

-- CHECK DUPLICATE WHICH MEANS DUPICATE VALES IS NOT EQAUL TO DUPLICATE RECORD
SELECT `ORDER ID`, COUNT(*) AS ROW_COUNT FROM clean_data GROUP BY `ORDER ID` HAVING COUNT(*) >1 ORDER BY ROW_COUNT DESC;
SELECT COUNT(DISTINCT `ORDER ID`) AS TOTAL_ORDER FROM clean_data;

-- HOW MANY CUSTOMER HAVE PLACES ORDER MORE THAN 1 ORDER
SELECT `Customer Name`,`Customer ID`, COUNT(DISTINCT `ORDER ID`) AS TOTAL_ORDER FROM clean_data GROUP BY `Customer ID`,`Customer Name` HAVING COUNT(DISTINCT `ORDER ID`) > 1 ORDER BY TOTAL_ORDER DESC;

-- HOW MANY REPEAT CUSTOMER 
SELECT COUNT(*) AS REPEAT_CUSTOMER FROM (SELECT `Customer id` FROM clean_data GROUP BY `Customer ID` HAVING COUNT(DISTINCT `ORDER ID`) >1 ) AS CUSTOMER_ORDER;

-- top 10 customer with heightest profit
SELECT `Customer Name`, SUM(Profit) AS TOTAL_PROFIT FROM clean_data GROUP BY `Customer Name` ORDER BY TOTAL_PROFIT DESC LIMIT 10;

-- heightest sale but low profit
SELECT `Customer Name`,
 ROUND(SUM(Sales),2) as TOTAL_SALES,
 ROUND(SUM(PROFIT),2) AS TOTAL_PROFIT
FROM clean_data GROUP BY `Customer Name` ORDER BY TOTAL_SALES DESC LIMIT 10;

-- LOSS MAKING CUSTOMER
SELECT
    `customer name`,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit
FROM clean_data
GROUP BY `customer name`
HAVING SUM(sales) > 20000
   AND SUM(profit) < 0
ORDER BY total_profit;

-- loss making product 
SELECT `Product Name`,
 ROUND(SUM(Profit),2) AS TOTAL_PROFIT
 FROM clean_data GROUP BY `Product Name` HAVING SUM(Profit) < 0 ORDER BY  TOTAL_PROFIT;
 
 -- does discount contribute to product loss
 SELECT `Product Name`,
  ROUND(AVG(Discount),2) AS AVG_DISCOUNT,
  ROUND(SUM(Profit),2) AS TOTAL_PROFIT,
  ROUND(SUM(SALES),2) AS TOTAL_SALES FROM clean_data
  WHERE `Product Name` = 'Cubify CubeX 3D Printer Double Head Print' ORDER BY `Product Name`;
  
  -- compare discout with heigher discount leaad to lower profit
  SELECT
    ROUND(discount, 1) AS discount_level,
    ROUND(AVG(profit), 2) AS avg_profit
FROM clean_data
GROUP BY ROUND(discount, 1)
ORDER BY discount_level;

-- which category generate heightest profit

SELECT Category,
round(sum(sales),2) as total_sales,
round(sum(profit),2) as total_profit
from clean_data group by category order by total_profit desc;

-- which furniture sub-category are resposible low profit
select `Sub-Category`, round(sum(sales), 2) as total_sales,
round(sum(profit), 2) as total_profit from clean_data
where category = 'Furniture' group by `Sub-Category` order by total_profit; 

-- NAME OF PRODUCT CAUSING THAT LOSS
SELECT `Product Name`,
ROUND(SUM(SALES),2) AS TOTAL_SALES,
ROUND(SUM(PROFIT),2) AS TOTAL_PROFIT
FROM clean_data WHERE `Sub-Category` = 'TableS'
GROUP BY `Product Name` ORDER BY TOTAL_PROFIT;

-- WHICH REGION GENERATE HEIGHTEST PROFIT
SELECT REGION, ROUND(SUM(SALES), 2) AS TOTAL_SALES,
ROUND(SUM(PROFIT), 2) AS TOTAL_PROFIT FROM clean_data
group by Region order by total_profit desc;

-- which states are making the biggest losses
select State , round(sum(Sales), 2) as total_profit,
round(sum(Profit),2) as total_profit from clean_data group by State having sum(Profit) < 0 order by total_profit asc;

-- which mode of ship generate highest proft
select `Ship Mode`,
round(sum(Sales),2) as total_sales,
round(sum(Profit),2) as total_profit from clean_data
group by `Ship Mode` order by total_profit desc;

-- profitable region
select region, round(sum(Sales),2) as total_sales,
round(sum(Profit),2) as total_profit , round(sum(Profit) / sum(Sales) * 100 , 2) as profit_margin from clean_data group by region order by profit_margin desc;
