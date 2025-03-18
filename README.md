## 🛒 **KimiaFarma-SalesDashboard** 🛒
 Sales analysis project for Kimia Farma, integrating BigQuery with Google Looker Studio to create an interactive dashboard that provides business insights and optimizes operational strategies.

---
## 📂 **Project Portfolio**
### Background
Kimia Farma is a leading pharmaceutical company in Indonesia, navigating intense competition and evolving consumer trends. To enhance its competitiveness, an in-depth sales analysis across various branches is essential. By integrating transaction data from BigQuery into Google Looker Studio, this interactive dashboard provides valuable insights, empowering stakeholders to assess business performance and optimize operational strategies.

</p>

### Goal and Objectives
This dashboard is designed to support strategic decision-making by analyzing sales trends, top-performing transactions, and profitability across provinces. Additionally, interactive filters enable flexible data exploration, allowing for a comprehensive evaluation of branch performance.

</p>

### Dataset
The provided dataset consists of the following tables:
1. transaction
2. branch
3. product
4. inventory
   
<br>

---
<br>

## 📂 **Design Datamart**
### Import Tabel Base
<p>

<p align="center">
<img src="https://github.com/user-attachments/assets/985a4db6-ecf1-41c2-9aff-6377caf375c1"
 
</p>
<br>
The base table contains raw data collected from multiple sources and serves as a foundation for answering key questions and addressing specific business challenges. 
In this project, the base table is constructed by merging the following tables:
1. transaction
2. branch
3. product
4. inventory
</p>

### Aggregate Table
<p>
<br>
- Income Type of Clients
<p align="center">
<img src="https://github.com/user-attachments/assets/431f2ca5-f650-4cb1-8654-cccbf29bc093"

</p>
<br>
An aggregate table is created by gathering and computing data from the base table. It provides a more concise summary of information, enabling faster and more efficient data analysis. This table serves as the primary data source for generating the sales report dashboard.
</p>

## 📂 **Data Visualization**

### Dashboard by Looker Data Studio
<p align="center">
<img src="https://github.com/user-attachments/assets/e1143e5d-120a-425d-ab25-8494925441e9"

</p>
<br>

