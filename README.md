## 🛒 **BKimiaFarma-SalesDashboard** 🛒
 Sales analysis project for Kimia Farma, integrating BigQuery with Google Looker Studio to create an interactive dashboard that provides business insights and optimizes operational strategies.

---
## 📂 **Project Portfolio**
### Background
Kimia Farma is a leading pharmaceutical company in Indonesia, navigating intense competition and evolving consumer trends. To enhance its competitiveness, an in-depth sales analysis across various branches is essential. By integrating transaction data from BigQuery into Google Looker Studio, this interactive dashboard provides valuable insights, empowering stakeholders to assess business performance and optimize operational strategies.

</p>

### Goal and Objectives
This dashboard is designed to support strategic decision-making by analyzing sales trends, top-performing transactions, and profitability across provinces. Additionally, interactive filters enable flexible data exploration, allowing for a comprehensive evaluation of branch performance.

</p>

### Goal and Objectives
The provided dataset consists of the following tables:
1. sales
2. products
3. customers
   
<br>

---
<br>

## 📂 **Stage 1 : Exploratory Data Analysis**
### Business Insight
<p>
- Housing Type of Clients
<p align="center">
<img src="https://github.com/user-attachments/assets/74705809-7685-46b8-b2e2-c66ba7a774ea"
 alt="Housing">
</p>
<br>
Clients with Rented Apt and Office Apt in Region 1 have a higher risk of payment difficulties compared to Region 2, especially for medium loan amounts.
In Region 3, Rented Apt tends to face payment difficulties.
Office Apt in Region 3 mostly does not experience payment difficulties.
</p>

<p>
<br>
- Income Type of Clients
<p align="center">
<img src="https://github.com/user-attachments/assets/0c528b8d-31ea-4c0f-9f07-c699b9bb7396"
 alt="Income">
</p>
<br>
Maternity Leave: Payment difficulties are more common with cash loans than revolving loans.
Unemployment: 50% of cash loans are problematic, while revolving loans remain stable.
Student: All loans are performing well, with low to medium amounts.
</p>

<p>
<br>
- Distribution Age in Target
<p align="center">
<img src="https://github.com/user-attachments/assets/1e6bf9f8-fd38-41c3-b943-af0e7abf521a"
 alt="Age">
</p>
<br>
Clients with the highest payment difficulties are aged 20-30.
Clients aged 31-50 have no payment difficulties, though there is a slight decline in the 41-50 age group. This indicates better and more stable repayment ability.
</p>

<p>

## 📂 **Stage 2 : Building & Evaluation Model**

### Building Model
<p align="center">
<img src="https://github.com/user-attachments/assets/54690fc3-cb4e-463e-af4c-b8dd7fcea547"
 alt="Machine Learning Model">
</p>

Based on the table, the machine learning model that delivers the best performance is XGBoost, with cross-validation results on both train and test data showing no significant differences, indicating minimal overfitting or underfitting.
<br>

### Evaluation Model
<p align="center">
<img src="https://github.com/user-attachments/assets/96223e48-13f0-4be6-a778-f6f455753df7"
 alt="Evaluation Model">
</p>
Predictive Capability
With an ROC-AUC of 0.70, the model demonstrates a reasonably good performance in distinguishing between the "payment difficulties" and "no payment difficulties" classes.
<br>

## 📂 **Stage 3 : Feature Importance Plot**
<p align="center">
<img src="https://github.com/user-attachments/assets/863d1dd2-304a-4b78-85df-916db2225da9"
 alt="Feature Importance plot">
</p>
DEF_30_CNT_SOCIAL_CIRCLE: A higher number of defaulting relatives increases the borrower's risk of default.
AMT_REQ_CREDIT_BUREAU_MON: Frequent credit inquiries indicate a higher financial risk.
NAME_INCOME_TYPE: Stable income is more reliable than irregular income.
NAME_EDUCATION_TYPE: Higher education levels tend to increase earnings and financial stability.
LIVE_CITY_NOT_WORK_CITY: Differences in living and working locations may indicate financial constraints.
<br>

## 📂 **Stage 4 : Recommendation**
<br>
1. Offer long-term loans with low interest rates for clients aged 20-30.
Example: Education or renovation loans with flexible requirements.
<br>
2. Prioritize clients with stable income, higher education, and permanent housing.
Example: Lower interest rates for clients with stable jobs and good credit scores.
<br>
3. Tighten evaluation in Region 1 (Rented Apt) and optimize Office Apt in Region 3.
Example: Property loan discounts for office renters in Region 3.
<br>
4. Monitor clients with frequent credit inquiries or a history of default.
Example: Send payment reminders to encourage timely repayments.
