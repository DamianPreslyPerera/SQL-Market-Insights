--INC 5000 Company Data for the year 2019



--View all existing data
SELECT * 
FROM AnalysisOne..CompanyData



--View companies with highest amount of revenue 
SELECT name, [growth_%], revenue, industry workers, founded, metro 
FROM AnalysisOne..CompanyData
order by revenue 



--Top Billion dollar companies by industry
SELECT revenue, industry, name
FROM AnalysisOne..CompanyData
WHERE revenue like '%Billion%'
order by revenue DESC



--Highest growing companies and industries
SELECT [growth_%], industry, name
FROM AnalysisOne..CompanyData
WHERE [growth_%] > 10000
order by [growth_%] DESC



--Cities with high growth industries
SELECT [growth_%], industry, city
FROM AnalysisOne..CompanyData
WHERE [growth_%] > 10000
order by [growth_%] DESC



--Cities with low growth industries
SELECT [growth_%], industry, city
FROM AnalysisOne..CompanyData
WHERE [growth_%] < 60
order by [growth_%] ASC



--Cities with largest average growth rates
SELECT AVG([growth_%]) AS Average_growth, industry, city
FROM AnalysisOne..CompanyData
group by industry, city
having AVG([growth_%]) > 10000



--Companies with the largest increase in staff/new hires
SELECT (workers-previous_workers) AS New_Workers, name, industry, city
FROM AnalysisOne..CompanyData
where (workers-previous_workers) > 1000
order by New_Workers DESC



