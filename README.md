📌 Business Overview
In a competitive retail landscape, understanding "who" is buying is no longer enough; we must understand "why" and "how" they buy. This project simulates a corporate analytics workflow to analyze 10,000+ customer transactions.

The Objective: Transform raw transactional data into actionable growth strategies to increase Customer Lifetime Value (CLV) and optimize Marketing Spend.

🛠️ Tech Stack & Workflow
Python (Pandas, Seaborn): For automated ETL (Extract, Transform, Load) and Statistical EDA.

SQL: To create a structured "Single Source of Truth" and perform complex business logic queries.

Power BI: For executive-level storytelling and interactive DAX-powered dashboards.

🚀 The Analytics Workflow
1. Data Engineering & ETL (Python)
Cleaning: Handled missing values in Review_Rating using category-median imputation.

Standardization: Normalized categorical variables (e.g., merging "XL" and "Extra Large").

Feature Engineering: * Loyalty_Score: Calculated based on purchase frequency and total spend.

Customer_Segment: Classified users into New, Returning, and VIP tiers.

2. Strategic Database Modeling (SQL)
Instead of a flat file, I designed a Star Schema to optimize query performance:

Fact Table: Sales_Transactions

Dimension Tables: Dim_Customers, Dim_Products, Dim_Geography.

Key Query Example: Identifying "High-Value Churn Risks"—customers in the top 10% of spend who haven't purchased in 90+ days.

3. Business Intelligence Dashboard (Power BI)
I built a 3-page interactive report focusing on:

Sales Performance: Revenue trends, Top 5 Categories, and Seasonal Peaks.

Customer Deep Dive: Demographic breakdown (Age/Gender) vs. Spending habits.

Marketing Efficiency: Correlation between Discount_Applied and Review_Rating.

📈 Key Insights & Business Recommendations
The "Subscription Gap": Non-subscribers actually had a 15% higher average order value. Recommendation: Launch a "Premium Tier" loyalty program targeting high-spend non-subscribers.

Discount Paradox: Products with >20% discounts saw a dip in review ratings. Recommendation: Review quality control for high-discount clearance items to protect brand reputation.

Regional Peak: The "Northeast" region showed a 30% surge in "Outerwear" 2 weeks earlier than expected. Recommendation: Shift inventory logistics 14 days earlier for next year's Q4.
