
# Statistical Analysis of Online Retail Transactions

## Overview
This project analyzes customer behavior using the Online Retail II dataset. It includes data cleaning, exploratory analysis, and statistical hypothesis testing to explore spending patterns, return behavior, and seasonal trends.

## Dataset
- Source: [Online Retail II - UCI / Kaggle](https://www.kaggle.com/datasets/mashlyn/online-retail-ii-uci)
- Period: 2009–2011
- Scope: UK-based online retailer transaction records

## Project Structure
```
.
├── Cleaning.R                           # Data cleaning script
├── Exploratory Data Analysis (EDA).R    # Exploratory visualizations and summaries
├── Hypothesis Testing & Inferential Statistics.R
├── Outputs/
│   ├── cleaned_online_retail.csv
│   ├── monthly_transaction_volume.png
│   ├── top_10_countries.png
│   └── inference_results_table_final.png
└── README.md
```

## Statistical Methods Used
- Data Cleaning (missing values, outliers, invalid transactions)
- Shapiro-Wilk test for normality
- Welch’s t-test for mean comparisons
- Visualization with `ggplot2`

## Key Findings
- Non-UK customers place higher-value orders on average
- Customers who return items spend more overall
- Holiday seasons drive significantly higher transaction volumes

## How to Run
Open each R script in RStudio and run sequentially:
1. `Cleaning.R`
2. `Exploratory Data Analysis (EDA).R`
3. `Hypothesis Testing & Inferential Statistics.R`
