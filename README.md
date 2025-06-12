# Tesla-Stock-Analysis (2010-2021)

A complete data analytics project exploring Tesla's stock performance from 2010 to 2021 using SQL and Power BI. This end-to-end case study includes data cleaning, time-series analysis, volume spike detection, and insightful visualizations to showcase business intelligence and storytelling skills.
 
 ## 🧠 Project Objective

This project aims to analyze Tesla Inc.'s stock performance over a 12-year period. By combining structured SQL querying with interactive Power BI dashboards, we identify historical trends, significant volume spikes, and year-over-year (YoY) price performance. The project demonstrates key data analytics competencies, including:
* Data wrangling and transformation
* Time-series aggregation and rolling averages
* Advanced DAX calculations
* Interactive business dashboards

## 📁 Project Structure

## 📌 Tools & Technologies

* Data Source : Tesla stock price CSV (2010–2021) (https://www.kaggle.com/datasets/abhimaneukj/tesla-inc-tsla-dataset)
* Query Language : Microsoft SQL Server
* Visualization : Power BI
* Version Control : Git + GitHub

## 🔍 Key SQL Analysis Steps

* Imported raw Tesla stock CSV into SQL Server
* Converted string dates to SQL DATE format
* Grouped and aggregated:
	- **Monthly averages**
	- **Year-over-year price trends**
	- **Rolling 30-day volume averages**
* Detected **volume spikes** using deviation thresholds from moving averages

Sample SQL query to compute monthly average:
```
SELECT 
    FORMAT(CAST([Date] AS DATE), 'yyyy-MM') AS [Month],
    ROUND(AVG([Open]), 2) AS Avg_Open,
    ROUND(AVG([High]), 2) AS Avg_High,
    ROUND(AVG([Low]), 2) AS Avg_Low,
    ROUND(AVG([Close]), 2) AS Avg_Close,
    ROUND(AVG(CAST([Volume] AS bigint)), 0) AS Avg_Volume
FROM 
    TSLA
GROUP BY 
    FORMAT(CAST([Date] AS DATE), 'yyyy-MM')
ORDER BY 
    [Month];
```

 ## 📈 Dashboard Highlights

 Built in Power BI, the dashboard contains:

 ### 📌 KPI Cards
 * **Average Closing Price (YTD)**
 * **Volume Spike Count**
 * **YoY % Change in Closing Price**
 * **Maximum Daily Volume**

 	### 📊 Visuals
* **YoY Change Bar Chart**: Highlights yearly stock performance
* **Monthly Avg Close Trend**: Long-term monthly price analysis
* **Top Volume Spikes Table**: Days with highest spike %
* **Price vs Volume Trend**: Dual-axis visualization for correlation insights

 	### 🧠 DAX Measures
  * Custom Year-over-Year % Change
  * 30-day Moving Averages
  * Volume Spike Percentages
  * Conditional logic for spike flagging

 ## 📌 Business Insights
 
 * **Massive growth** observed between 2019–2021, with YoY price increases exceeding **300%**
 * **Volume spikes** often align with major product announcements or market reactions
 * **Monthly averages** reveal seasonal and trend-based investor behavior

 ## 🧳 Skills Demonstrated

 * Relational data querying and time-based aggregation (SQL)
 * Advanced Power BI modeling and DAX
 * KPI and trend-focused dashboard design
 * Business storytelling using real-world financial data

 ## 🧱 How to Reproduce

1. Clone this repo
2. Import the CSV dataset into SQL Server or use Power BI’s data view
3. Run SQL scripts to explore or transform data
4. Open Tesla_Stock_Analysis.pbix in Power BI Desktop
5. Use the slicers (e.g., Year) to interact with the dashboard

 ## 📌 Future Improvements

 * Integrate live API to fetch current Tesla stock data
 * Add forecasting visuals using ARIMA/Prophet or Power BI’s native tools
 * Automate daily refresh with Power BI Service

 🤝 Let's Connect
 
 If you found this project insightful or want to collaborate on future data projects, feel free to connect:
	 	[LinkedIn](https://www.linkedin.com/in/daniel-ogunleye-704019213/)
