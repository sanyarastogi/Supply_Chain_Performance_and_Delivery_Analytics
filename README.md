# Supply_Chain_Performance_and_Deliavery_Analytics
---

## 📌 Project Overview
- Analyzed 180,519 supply chain transactions from DataCo Global covering orders, delivery performance, product categories and
 market-wise revenue using Python, SQL, Excel and Power BI.

---

## 📁 Dataset
- *Source:* DataCo Smart Supply Chain — Kaggle
- *File:* DataCoSupplyChainDataset.csv
- *Size:* 95.91 MB | 180,519 rows | 63 columns
- *Products:* Clothing, Sports & Electronics
- *Markets:* LATAM, Europe, Pacific Asia, USCA, Africa

---

## 🛠 Tools Used
- *Python & Jupyter Notebook* — Cleaning, EDA, Charts
- *SQL Server* — Data querying & aggregations
- *Excel (OpenPyXL)* — Automated report generation
- *Power BI* — Interactive dashboard

---

## 📋 Project Steps
1. Loaded dataset and selected 15 key columns
2. Split into 2 tables:
   - *Orders & Delivery* — Order Id, Dates, Shipping Mode,
     Delivery Status, Late Delivery Risk, Market
   - *Products & Financials* — Order Id, Category, Product
     Name, Sales, Profit, Quantity
3. Cleaned data — converted dates to datetime format
4. Engineered new feature — *Shipping Delay*
   (Actual shipping days - Scheduled shipping days)
5. Merged both tables using Order Id (inner join)
6. Group By analysis — market, shipping mode, categories
7. Created 3 charts saved as PNG files
8. Exported automated Excel report (3 sheets)
9. Wrote 5 SQL queries for business insights
10. Built interactive Power BI dashboard

---

## 📊 Key Findings

### 🌍 Market Performance (Python Analysis)
- *LATAM* leads with most orders — *51,594* and
  highest total revenue — *$33,915,213*
- *Europe* 2nd — *50,252 orders & $32,876,063*
- *Pacific Asia* 3rd — *41,260 orders & $24,136,675*
- *USCA* 4th — *25,799 orders & $16,712,744*
- *Africa* smallest — *11,614 orders & $7,563,975*

### 🚚 Delivery Performance (SQL Analysis)
- *First Class* has critically high late delivery — *95.32%*
  out of 27,814 orders, 26,513 were late ⚠️
- *Second Class* — *76.63%* late delivery rate
- *Same Day* — *45.74%* late delivery rate
- *Standard Class* lowest risk — *38.07%*
  out of 107,752 orders, 41,023 were late
- Total late orders — *98,977 out of 180,519 (54.8%)*

### 🛍 Product Performance
- *Fishing* is top category — *$6,226,935 revenue*
- *Cleats* 2nd — *$3,982,856*
- *Camping & Hiking* 3rd — *$3,700,783*
- *Cardio Equipment* 4th — *$3,320,250*
- *Electronics* lowest — *$1,232,580*

### 📦 Order Status (SQL Analysis)
- *COMPLETE* — 59,491 orders ✅
- *PENDING_PAYMENT* — 39,832 orders
- *PROCESSING* — 21,902 orders
- *PENDING* — 20,227 orders
- *CLOSED* — 19,616 orders
- *ON_HOLD* — 9,804 orders
- *SUSPECTED_FRAUD* — 4,062 orders ⚠️
- *CANCELLED* — 2,602 orders

### ⚠️ Data Quality Note
- Negative profits observed in sample data indicating
  loss-making orders exist in the dataset
- Suspected fraud orders (4,062) require immediate attention

### 📝 Note on Revenue Figures
- Python revenue figures represent cumulative sales per
  customer across all transactions
- SQL revenue figures represent direct sum of sales per
  customer column — both are valid for different analysis

---

## 💡 Business Impact
- *First Class shipping 95.32% late delivery rate* —
  switching to Standard Class could reduce delays by ~57%
- *54.8% overall late delivery rate* across all orders
  signals serious operational improvement needed
- *4,062 suspected fraud orders* — flagging these could
  protect significant revenue loss
- *Africa contributes only 6.5% of total orders* —
  huge growth opportunity with targeted strategy
- *Fishing & Cleats* top 2 categories — prioritizing
  inventory for these maximizes profit
- *Negative profit orders* exist — pricing strategy
  review needed to eliminate loss-making transactions

---

## 📄 Project Files
- 📓 supply_chain_analysis.ipynb — Python Notebook
- 🗄️ supply_chain_queries.sql — SQL Queries
- 📊 supply_chain_report.xlsx — Excel Report
- 📈 supply_chain_dashboard.pbix — Power BI Dashboard
- 📝 README.md — Project Documentation

---

## ✅ Conclusion
This project successfully analyzed 180,519 supply chain
transactions and identified critical operational bottlenecks.
First Class shipping showed a 95.32% late delivery rate and
overall 54.8% of all orders were delivered late — highlighting
serious supply chain inefficiencies. LATAM and Europe dominated
market performance while Fishing and Cleats drove maximum
revenue. These insights enable the business to optimize
shipping strategies, reduce delays, eliminate loss-making
orders and focus on high revenue categories to significantly
improve overall supply chain efficiency and profitability
