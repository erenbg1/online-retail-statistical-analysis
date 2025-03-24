
# Statistical Analysis of Online Retail Transactions

## Overview
This project analyzes customer behavior using the Online Retail II dataset. It includes data cleaning, exploratory analysis, assumption testing, and statistical hypothesis testing to explore spending patterns, return behavior, and seasonal trends.

## Dataset
- Source: [Online Retail II - UCI / Kaggle](https://www.kaggle.com/datasets/mashlyn/online-retail-ii-uci)
- Period: 2009–2011
- Scope: UK-based online retailer transaction records

## Project Structure
```
.
├── data/                                 # Raw and cleaned data files
│   ├── online_retail_II.csv              # Raw dataset
│   └── cleaned_online_retail.csv         # Cleaned dataset
├── scripts/                              # R scripts for analysis
│   ├── Cleaning.R                        # Data cleaning script
│   ├── EDA.R                             # Exploratory Data Analysis script
│   ├── Hypothesis_Testing.R              # Inferential statistics and t-tests
│   └── normality_tests_safe.R            # Shapiro-Wilk tests for normality assumptions
├── visualizations/                       # Generated plots and figures
│   ├── monthly_transaction_volume.png
│   ├── top_10_countries.png
│   └── inference_results_table_final.png
└── README.md                             # Project documentation
```

## Statistical Methods Used
- Data Cleaning (missing values, outliers, invalid transactions)
- Shapiro-Wilk test for normality
- Welch’s t-test for mean comparisons
- Visualization with `ggplot2`

## How to Run

To replicate the analysis:

1. **Data Cleaning:**
   - Script: `scripts/Cleaning.R`
   - Cleans raw data and outputs `cleaned_online_retail.csv`

2. **Exploratory Data Analysis (EDA):**
   - Script: `scripts/EDA.R`
   - Generates descriptive statistics and plots

3. **Assumption Testing:**
   - Script: `scripts/normality_tests_safe.R`
   - Performs Shapiro-Wilk normality tests with sample-size-aware checks

4. **Hypothesis Testing & Inference:**
   - Script: `scripts/Hypothesis_Testing.R`
   - Executes Welch’s t-tests and compiles results into formatted output

## Dependencies

Make sure the following R packages are installed:

```R
install.packages(c("tidyverse", "readr", "ggplot2"))
```

## Repository
GitHub: https://github.com/erenbg1/online-retail-statistical-analysis
