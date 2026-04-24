# Question 1: Show me the first 10 sales records from the sales table so I can get a quick overview.
SELECT 
    sale_id AS "Sale ID",
    sale_date AS "Date",
    customer_name AS "Customer",
    product_name AS "Product",
    total_amount AS "Total Amount",
    region AS "Region"
FROM `addis_retail_hub`.`sales` limit 10;

# Question 2: Show me the total sales amount for each region.
Select region, SUM(total_amount) As Total_Revenue
FROM `addis_retail_hub`.`sales` 
GROUP BY region 
ORDER BY Total_Revenue DESC;

/*EXECUTION ORDER:
FROM → get the table
WHERE → filter rows
GROUP BY → group data
HAVING → filter groups
SELECT → choose columns
ORDER BY → sort results
LIMIT → limit output */

#Question 3: Show me the total revenue per category, but ONLY for sales where total_amount is greater than 5000
Select  category , SUM(total_amount) As Total_Revenue
FROM `addis_retail_hub`.`sales` 
WHERE total_amount > 5000
GROUP BY category
ORDER BY Total_Revenue DESC;

#Question 4: Show me the total revenue per category, but only include categories where the total revenue is greater than 20,000.
select category , SUM(total_amount) As Total_Revenue
FROM `addis_retail_hub`.`sales` 
GROUP BY category
HAVING Total_Revenue>20000
ORDER BY Total_Revenue DESC;

#Question 5: Show me the total amount spent by each customer, but only include customers who have spent more than 20,000 in total.
select customer_name , SUM(total_amount) As total_spent
FROM `addis_retail_hub`.`sales` 
GROUP BY customer_name
HAVING total_spent > 20000
ORDER BY total_spent DESC;

# Question 6: Show me the total revenue per region, but: Only include sales made using 'Card' payment method And only show regions where total revenue is greater than 30,000
select region , SUM(total_amount) As Total_Revenue
FROM `addis_retail_hub`.`sales`
WHERE payment_method = 'Card'
GROUP BY region
HAVING Total_Revenue > 30000
ORDER BY Total_Revenue DESC;

#Question 7: Show me the top 3 highest revenue-generating products overall.
SELECT product_name, SUM(total_amount) AS Total_Revenue
FROM `addis_retail_hub`.`sales` 
GROUP BY product_name
ORDER BY Total_Revenue DESC
LIMIT 3;

#Question 8: Show me the top 2 regions by total revenue, but only include regions where: Total revenue is greater than 20,000 And only consider sales where quantity is more than 5
SELECT 
    region, 
    SUM(total_amount) AS total_revenue
FROM `addis_retail_hub`.`sales`
WHERE quantity > 5
GROUP BY region
HAVING total_revenue > 20000
ORDER BY total_revenue DESC
LIMIT 2;