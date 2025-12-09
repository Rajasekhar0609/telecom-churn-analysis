use project_tel;
select * from telecom_data;
# 1.Churn rate calculation
select (sum(Is_churned)/count(Is_churned)) *100 as churn_Rate from telecom_data;
# 2. Average Monthly Charges (Churn vs. Non-Churn)
select Is_churned,avg(Monthly_Charges) as Charges from telecom_data
group by Is_churned; 
# 3. Churn by Contract Type
select Contract,sum(Is_churned) as Total_Charned  from telecom_data
group by Contract; 
# 4. Impact of Support Tickets of churned 
select Support_Tickets,avg(Is_churned) *100 as Cguned_percent  from telecom_data
group by Support_Tickets
order by Support_Tickets; 