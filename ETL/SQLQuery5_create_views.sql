-- a view is a virtual table in a database that displays data from one or more tables (churn_data, prod_Churn) through a predefined query.
-- it does not store data but provides a way to look and interact with it from underlying tables as if it were a regualar table.

create view churn_data_view as 
select * from prod_Churn where Customer_Status in ('Stayed', 'Churned')

create view join_data_view as 
select * from prod_Churn where Customer_Status = 'Joined'