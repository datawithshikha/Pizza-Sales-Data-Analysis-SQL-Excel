# 🔗 Live Interactive Dashboard
##📊 View Interactive File: https://1drv.ms/x/c/158b6586ee86bb62/IQDmbGD3Bf9_QZGd2WOKy79MAQ_Q_aAi-VK4ooc-yPisZOo?e=yZWIVh

# Retail Sales & Store Operations Analytics
## Executive Summary
This project analyzes transactional store sales data to diagnose revenue performance, optimize regional fulfillment, and identify high-value customer segments. Using SQL for data extraction and Advanced Excel for interactive dashboarding, this project translates complex transactional data into strategic insights for supply chain and sales managers.

## Tech Stack & Tools
Database & Querying: SQL (Data Extraction, Aggregation, CTEs, Window Functions)

Data Analytics & Dashboarding: Advanced Excel (Power Query, Pivot Tables, Dynamic Slicers)

Reporting: Executive Insights & Recommendations

# Repository Structure

├── sql/
│   ├── 01_schema_setup.sql          # Table structures
│   ├── 02_data_cleaning.sql          # Handling missing values & duplicates
│   └── 03_analytics_queries.sql     # Key business KPI queries
├── data/
│   ├── raw_store_data.csv            # Original raw sales data
│   └── cleaned_sales_data.xlsx       # Cleaned dataset for dashboarding
├── dashboards/
│   └── sales_performance_dashboard.xlsx # Interactive Excel Dashboard
└── README.md                         # Project documentation

# Key Business Insights
## Customer Segment Profitability:

Consumer Segment represents the highest transaction volume.

Corporate & Home Office segments generate higher profit margins per transaction.

## Order Fulfillment Bottlenecks:

High-priority orders showed variance in shipping times across specific regional hubs, signaling localized dispatch bottlenecks.

## Category Performance & Returns:

Seasonal promotional periods drove major sales spikes.

Certain product sub-categories recorded elevated return rates, impacting net revenue.

#  Strategic Recommendations
Inventory Optimization: Maintain targeted safety stock in high-demand fulfillment hubs to prevent shipment delays.

Customer Targeting: Focus promotional spend toward high-margin Corporate segments rather than broad discount campaigns.

Return Rate Control: Audit product specifications and quality descriptions for high-return items to protect net margins.
