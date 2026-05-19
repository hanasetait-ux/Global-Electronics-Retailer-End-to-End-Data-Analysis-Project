# Global Electronics Retailer - End-to-End Data Analysis Project
📌 Project Overview
This project was developed as the Graduation Project for the Digital Egypt Pioneers Initiative (DEPI) - Data Analysis Track (Group: ONL4_DAT1_G5 | Team 3), under the supervision of Dr. Ahmed Abdel Latif.

The primary objective of this project is to perform a comprehensive data analysis for a global electronics retailer. By leveraging a multi-table dataset, our team uncovered deep insights into sales performance, customer demographics, product profitability, and store operations to deliver data-driven strategic recommendations that address real-world business challenges (including the impact of the COVID-19 pandemic).

🛠️ Tech Stack & Tools
Database Management & Cleaning: SQL Server (T-SQL)
Exploratory Data Analysis (EDA): Python (Pandas, NumPy, Matplotlib, Seaborn)
Data Visualization & Business Intelligence: Power BI Desktop

📂 Dataset Architecture & Star Schema
The project utilizes a Star Schema architecture designed to optimize query performance and reporting efficiency. The dataset consists of a central Fact Table connected to three Dimension Tables via One-to-Many relationships:
Fact_Sales: Contains transactional data (order numbers, quantities, order dates, and delivery dates).
Dim_Products: Product catalog detailed by name, category, subcategory, cost, and price.
Dim_Customers: Demographic profiles including age, gender, city, state, and country.
Dim_Stores: Physical and online store data specifying store openings and square meters.

⚙️ Project Workflow
1. Data Profiling & Quality Assessment
We initiated the project by assessing the dataset's overall health, identifying critical strengths (unified currencies, reliable primary/foreign keys) and areas of concern (missing values across multiple tables).
2. Data Cleaning (SQL Server)
We executed advanced SQL queries to handle structural data anomalies and null values without compromising data integrity:
Dim_Customers: Resolved missing state codes by cross-referencing cities, mapping them to 'NA' (Naples, Italy).
Dim_Stores: Addressed a missing area size for the online store by assigning it a logical value of 0 since it lacks physical boundaries.
Fact_Sales: Handled 49,719 missing delivery dates by replacing them with their respective Order_Date, identifying these records as instantaneous in-store purchases.
3. Exploratory Data Analysis (Python)
Using Jupyter Notebooks, we conducted deep statistical analysis to uncover underlying data patterns:
Outlier Detection: Implemented box plots to inspect product prices and costs, ensuring zero skewness in profit margins.
Correlation Analysis: Generated heatmaps to evaluate the financial impact of physical store sizes relative to sales volume.
Demographic Distributions: Analyzed customer age groups, pinpointing an aging primary consumer base and exposing an untapped youth market.
4. Interactive Dashboards & Insights (Power BI)
We designed highly interactive, cross-filtered dashboards to present key business insights:
Sales Impact: Quantified a target shortfall of -40.74% driven by pandemic-induced lockdowns across 66 brick-and-mortar stores (which traditionally yield 80% of total revenue). Conversely, the online store thrived, independently generating 20.45% of global turnover.
Customer Retention: Identified that while the 51+ age group remains the dominant revenue driver, the overall customer retention rate experienced a critical downward trajectory.
Product Optimization: Computers dominated profitability at $11.28M, while legacy physical media categories (Audio/Video) stagnated due to market digitization.

🚀 Strategic Recommendations
Digital Shift: Reallocate budget from underperforming physical branches to expand the e-commerce platform and digital marketing efforts.
Targeting Gen-Z & Millennials: Launch tailored marketing campaigns focusing on modern tech ecosystems (gaming, wearables) and introduce a comprehensive Loyalty Program to remedy falling retention rates.
Inventory & Global Operations: Phase out obsolete physical media inventory in favor of digital gift cards and streaming vouchers. Conduct a financial audit on Australian branches (accounting for only 4.89% of profits) to determine if transitioning the entire region online will maximize efficiency.

📊 How to Access the Deliverables
📁 SQL_Scripts/: Contains the complete data cleaning and profiling queries (written in clean lowercase format).
📁 Python_Notebooks/: Contains the .ipynb files covering the full statistical EDA and charts.
📁 PowerBI_Dashboards/: Contains the .pbix report file. Feel free to download and interact with the slicers!

Thank you for exploring our project! For any inquiries.
