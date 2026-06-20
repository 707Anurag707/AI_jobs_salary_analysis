create database AI_jobs;

Select employment_type,
       COUNT(*) AS total
From ai_job_dataset
Group by employment_type
Order by total DESC;

-- There are 4 categories of employment_type and almost all 4 categories have around 3750 applicants

select industry,
	count(*) as total
from ai_job_dataset
group by industry
order by industry Desc;

select count(distinct(industry)) as `no. of industries` 
from ai_job_dataset;

-- There are 15 distinct industries and each industries employes in range(900-1100)


select company_name,
	count(*) as total_postings
from ai_job_dataset
group by company_name
order by company_name Desc;
	
select count(Distinct(company_name)) as `no.of companies`
from ai_job_dataset;

-- There are 16 distict companies and on avg every company is posting around 920 jobs

select
	max(benefits_score) as max,
    min(benefits_score) as min,
    avg(benefits_score) as average
from ai_job_dataset;

-- applicant benefit score as per the job description: max is 10, min is 5 and avg is 7.5

select
	max(job_description_length) as max,
    min(job_description_length) as min,
    avg(job_description_length) as average
from ai_job_dataset;

-- For this ai_job_dataset job description length ranges b/w (500,2500) and averages 1503

select experience_level as expertise,
	count(*) as total
from ai_job_dataset
group by expertise
order by total Desc;

-- there are 4 different expertise categories and each one is evenly distributed around 3750

select years_experience,
	count(*) as total
from ai_job_dataset
group by years_experience
order by total Desc;

select count(distinct(years_experience))
from ai_job_dataset;

-- the AI jobs posted are skewed towards fresher(0,1)year and 20 such experience categories..

select count(distinct(`job_title`))
from ai_job_dataset;

select `job_title`,
	count(*) as total
from ai_job_dataset
group by `job_title`
order by total Desc;

-- There are 20 such job title and each averages around 750 jobs

select `salary_currency`,
	count(*) as total
from ai_job_dataset
group by `salary_currency`
order by total Desc;

-- Each job posted is in either of the three currency of  USD, pound, Euro and highly skewed towards USD..

