# Superstore Data Analysis

A data analytics project focused on analyzing sales, profitability, product performance, and regional trends using Excel, SQL, and Power BI.

## Business Problem

The business needs to understand its sales and profit performance across different regions, product categories, and sub-categories. The analysis aims to identify high-performing areas, loss-making products, sales trends, and opportunities for improving overall profitability.

## Project Objective

To analyze Superstore sales and profit data using SQL, Excel, and Power BI to identify sales trends, regional and category performance, profitable and loss-making products, and key business insights that can support data-driven decision-making.

## Tools & Technologies

- **Excel** — Data cleaning, organization, and initial analysis
- **SQL (MySQL)** — Data querying and analysis
- **Power BI** — Interactive dashboard creation and data visualization
- **DAX** — KPI and calculated measure creation

## Dataset

The project uses the **Sample Superstore dataset**, containing **9,994 records** and **21 columns** related to orders, customers, products, sales, discounts, shipping, and profit.

### Dataset Details

- **Records:** 9,994
- **Columns:** 21
- **Time Period:** 2014–2017
- **Geography:** United States
- **Key Business Areas:** Sales, Profit, Customers, Products, Regions, Categories, and Shipping

The dataset was cleaned and prepared before performing SQL analysis and creating the Power BI dashboard.

## Data Cleaning & Preparation

- Checked the dataset for missing values and duplicate records.
- Verified data types and date fields.
- Standardized categorical and numerical data where required.
- Created a **Profit Margin** measure for profitability analysis.
- Loaded the cleaned data into MySQL and Power BI for further analysis and visualization.

## Key Performance Indicators (KPIs)

- **Total Sales** — Measures the overall revenue generated.
- **Total Profit** — Measures the overall profit generated.
- **Total Orders** — Shows the number of orders placed.
- **Quantity Sold** — Measures the total quantity of products sold.
- **Profit Margin** — Measures profitability relative to total sales.

## SQL Analysis

SQL was used to analyze sales and profitability from different business perspectives, including:

- Regional sales and profit performance
- Category and sub-category profitability
- Top-performing products
- Loss-making products
- Sales performance by shipping mode
- Identification of key business trends and performance areas

## Power BI Dashboard

An interactive dashboard was created in Power BI to visualize sales and profitability performance. The dashboard includes:

- KPI cards for Sales, Profit, Orders, Quantity Sold, and Profit Margin
- Sales trend over time
- Regional sales and profit performance
- Profit analysis by category and sub-category
- Top 10 products by sales
- Loss-making products
- Interactive filters for Year, Region, and Category

## Key Insights & Findings

- The **West region** generated the highest sales among all regions.
- **Technology** was the most profitable category.
- **Copiers** generated the highest profit among sub-categories.
- **Tables** recorded the highest loss among sub-categories.
- Some individual products generated significant negative profit, highlighting potential areas for pricing and discount optimization.
- Overall sales showed an increasing trend across the analyzed years.

## Business Recommendations

- Focus on high-performing regions and categories to sustain sales and profitability.
- Review pricing and discount strategies for loss-making products and sub-categories.
- Investigate products with consistently negative profit to identify possible pricing or cost issues.
- Monitor sales trends regularly to identify growth opportunities.
- Use regional and category-level performance insights to support inventory and sales planning.

## Project Structure

```text
Superstore-Data-Analysis/
│
├── data/
│   └── Sample-Superstore.csv
│
├── sql/
│   └── superstore_analysis.sql
│
├── powerbi/
│   └── Superstore_Dashboard.pbix
│
├── excel/
│   └── Superstore_Analysis.xlsx
│
├── screenshots/
│   └── dashboard.png
│
└── README.md
```

## Project Outcome

This project demonstrates how data analysis can be used to understand sales and profitability performance and identify important business trends. Using Excel, SQL, and Power BI, the analysis transformed raw sales data into meaningful insights that can support better business decisions related to products, regions, and profitability.

