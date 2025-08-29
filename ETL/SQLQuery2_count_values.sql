-- to check how many items/distinct items we have in a particular column and the count of rows of each item
-- to create an additional column to show the percentage distribution of particular columns
select Gender, COUNT(Gender) as TotalCount,
COUNT(Gender)*100.0 / (select COUNT(*) from churn_data) as Percentage
From churn_data
Group by Gender


select Contract, COUNT(Contract) as TotalCount,
COUNT(Contract)*100.0 / (select COUNT(*) from churn_data) as Percentage
From churn_data
Group by Contract


select Customer_Status, COUNT(Customer_Status) as TotalCount, sum(Total_Revenue) as TotalRev,
sum(Total_Revenue) / (select sum(Total_Revenue) from churn_data)*100.0 as RevPercentage
From churn_data
Group by Customer_Status


select State, COUNT(State) as TotalCount,
count(State)*100.0 / (select count(*) from churn_data) as Percentage
from churn_data
group by State
Order by Percentage desc -- to check which state has max contribution


select distinct Internet_Type
from churn_data

