CREATE TABLE sales_data (
    Product_ID VARCHAR(50),
    Sale_Date DATE,
    Sales_Rep VARCHAR(100),
    Region VARCHAR(50),
    Sales_Amount NUMERIC(12,2),
    Quantity_Sold INT,
    Product_Category VARCHAR(50),
    Unit_Cost NUMERIC(12,2),
    Unit_Price NUMERIC(12,2),
    Customer_Type VARCHAR(50),
    Discount NUMERIC(5,2),
    Payment_Method VARCHAR(50),
    Sales_Channel VARCHAR(50),
    Region_and_Sales_Rep VARCHAR(150)
);


select * from sales_data

select extract (year from sale_date) as year,
extract (month from sale_date )as month,
sum(sales_amount) as total_revenue,
count(distinct product_id)as total_orders
from sales_data
where sale_date between '2023-01-01' AND '2023-12-31'
GROUP BY year, month
ORDER BY year, month;

