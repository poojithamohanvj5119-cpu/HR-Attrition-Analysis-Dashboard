select
COUNT(*) AS total_employees,
SUM(CASE WHEN Attrition = 'YES' THEN 1 ELSE 0 END) AS EMPLOYEES_LEFT,
ROUND(
SUM(CASE WHEN ATTRITION = 'YES'
THEN 1 ELSE 0 END) * 100.0/COUNT(*),
2
)AS ATTRITION_RATE
FROM hr_attrition;

select department, count(*) AS employees_left
from hr_attrition
where attrition = 'yes'
group by department;

Select 
Department,
count(*) AS total_employees,sum(case when attrition = 'yes'
then 1 else 0 end) as employees_left,
round(
sum(case when attrition ='yes'
THEN 1 ELSE 0 END)* 100.0/COUNT(*),
2
)AS attrition_rate
from hr_attrition
group by department;

select OverTime, 
count(*) AS Total_Employees,
Sum(Case when Attrition ='YES' Then 1 Else 0 End) As employees_left,
ROUND(
SUM(Case when attrition = 'yes' then 1 else 0 end) * 100.0/Count(*),
2
)AS attrition_rate
from hr_attrition
group by Overtime;

select
JobSatisfaction,
count(*) AS total_employees,
Sum(case when attrition = 'Yes'then 1 else 0 end)as employees_left,
Round(
sum(case when attrition = 'yes' then 1 else 0 end) * 100.0/count(*),
2
)AS attrition_rate
from hr_attrition
group by JobSatisfaction;