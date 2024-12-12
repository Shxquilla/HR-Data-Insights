# HR Data Analysis with SQL and Tableau
---

## Introduction

The goal of this project was to develop a comprehensive summary of a company’s key HR metrics, including employee demographics, location distribution, and turnover rate. I utilized SQL for data wrangling, addressing data quality issues such as missing values, inconsistencies, and duplicates, to ensure a clean and structured dataset. With the cleaned data, I applied advanced SQL queries to extract insights that highlight trends in employee retention, workforce composition, and geographic distribution. To effectively communicate these findings, I built an interactive Tableau dashboard, enabling stakeholders to visualize and explore the company’s HR metrics in a dynamic and user-friendly format. This project showcases my ability to apply SQL for data extraction and manipulation, while leveraging Tableau to deliver actionable insights through visual analytics.


---

### Dataset Information

The dataset used in this project was sourced from https://datawithbaraa.substack.com and contains key HR metrics, including employee demographics, location, performance, and turnover rates. With [insert number] rows and [insert number] columns, it provides valuable insights into workforce trends. The data required cleaning and transformation in SQL to address inconsistencies and ensure accuracy before analysis.


---

### Data Cleaning Process (SQL)

The data cleaning process involved several key steps to ensure the dataset was accurate and ready for analysis:

1. **Standardized ID Format:** I ensured that the employee ID field was in the correct format, converting any inconsistent entries.
   
2. **Formatted Dates:** All date fields (e.g., hire dates, birthdates) were standardized to a consistent date format for easier analysis.
   
3. **Corrected Data Types:** I reviewed and corrected any mismatched data types (e.g., numeric fields stored as text) to ensure compatibility with SQL operations.
   
4. **Calculated Age:** A new column, "Age," was added by calculating the difference between employees' birthdates and the current date.
These steps were performed using SQL queries to ensure clean, structured data ready for analysis and visualization.

---

Analysis and Insights (SQL Queries)

Using SQL queries, I answered several key business questions to gain insights into the company’s HR metrics:

- Gender Breakdown: Analyzed the distribution of employees by gender to understand diversity within the company.

- Race/Ethnicity Breakdown: Queried the dataset to reveal the race and ethnicity distribution of the workforce.

- Age Distribution: Calculated the age distribution of employees to assess workforce demographics.

- Headquarters vs. Remote: Compared the number of employees working at headquarters versus remote locations.

- Average Length of Employment for Terminated Employees: Calculated the average tenure of employees who had been terminated.

- Gender Distribution Across Departments/Job Titles: Examined how gender diversity varies across different departments and job titles.

- Job Title Distribution: Analyzed the distribution of various job titles within the company.

- Department with Highest Turnover Rate: Identified the department with the highest employee turnover rate.

- Employee Distribution by Location (City/State): Analyzed the geographical distribution of employees across different cities and states.

- Tenure Distribution by Department: Evaluated the length of tenure across various departments to uncover trends in employee retention.

These insights were derived using SQL queries and helped identify key workforce patterns that were later visualized in Tableau.

---

### Data Visualizations (Tableau)

To present the insights from the SQL analysis, I created several key visualizations in Tableau:

1. Bar Graphs for Demographics: I used bar graphs to display the gender, race/ethnicity, and age distribution of employees, providing a clear view of the company’s workforce composition.
   
2. Donut/Pie Chart for HQ vs. Remote: A donut chart was used to show the distribution of employees working at headquarters versus remote locations.
   
3. Geographic Map for Employee Location: A map visualization highlighted employee locations by state, with symbols indicating the number of employees in each region.
   
 4. Banners for Key Metrics: I created KPI banners to highlight key numbers, such as the total number of employees, average length of employment, and average tenure, providing an at-a-glance view of important HR metrics.
    
These visualizations were designed to provide a dynamic and interactive view of the company’s HR metrics, enabling stakeholders to explore the data and identify key trends.

---

### Conclusion 

The analysis of the company’s HR data yielded several key insights:

- **Active Employees:** The company currently has **17,482 active employees**.

- **Average Length of Employment:** Employees, on average, have been with the company for **8 years**.

- **Average Tenure:** The average tenure across all employees is also **8 years**.

- **Turnover Rate:** The **Auditing department** has the highest turnover rate at **18%.**

- **Gender Distribution:** The gender distribution across the company is **evenly balanced.**

- **Age Distribution:** The predominant age range of employees is **between 24 and 54 years.**

- **Department with Most Staff:** The **Engineering** department has the largest number of employees.

- **Location Distribution:** **Ohio** has the highest concentration of employees, with **14,144** staff members.

- **HQ vs. Remote:** Approximately **two-thirds** of the workforce is based at headquarters, while the remaining employees work remotely.

These findings provide valuable insights into the company’s workforce composition, turnover trends, and geographical distribution, offering a foundation for informed HR decision-making.

---

### Future Improvements

While the current analysis provides valuable insights, several areas could be explored further to enhance the understanding of the company’s HR metrics:

- **Deeper Analysis of Employee Turnover:** Conduct a more granular analysis of employee turnover by factors like age, department, and job title to identify specific patterns and causes of attrition.

- **Predictive Modeling:** Implement predictive analytics to forecast turnover rates, identifying employees at risk of leaving and enabling proactive retention strategies.

- **Employee Satisfaction Data:** Incorporate employee satisfaction surveys or feedback to better understand factors influencing retention and engagement across departments.

- **Expanded Demographic Breakdown:** Explore additional demographic variables (e.g., education, work experience) to further analyze workforce diversity and performance trends.

-  **Real-Time Data Integration:** Integrate real-time HR data (such as performance reviews or ongoing hiring data) to create an up-to-date dashboard for continuous monitoring.

These improvements could provide deeper insights and help the company make even more data-driven HR decisions in the future.



