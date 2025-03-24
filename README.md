
# Statistical Analysis of Online Retail Transactions

## Overview
This project analyzes customer behavior using the Online Retail II dataset. It includes data cleaning, exploratory data analysis, assumption testing, and inferential statistics to uncover customer purchasing patterns and behavioral insights.

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
│   ├── Cleaning.R                        # Data cleaning
│   ├── EDA.R                             # Exploratory Data Analysis
│   ├── Hypothesis_Testing.R             # Inferential statistics and hypothesis testing
│   └── normality_tests_safe.R            # Normality assumption checks (Shapiro-Wilk)
├── visualizations/                       # Plots and result visualizations
│   ├── monthly_transaction_volume.png
│   ├── top_10_countries.png
│   ├── inference_results_table_final.png
│   ├── shapiro_results_table.png
│   └── qq_plot_example.png
└── README.md                             # Project documentation
```

## Statistical Methods Used
- Data Cleaning (missing values, outliers, transaction validation)
- Shapiro-Wilk test for normality assumption
- Welch’s t-test for group mean comparisons
- Visualizations with `ggplot2`

## How to Run

To reproduce the analysis:

1. **Data Cleaning**
   - Script: `scripts/Cleaning.R`
   - Cleans raw dataset and exports `cleaned_online_retail.csv` to `data/`

2. **Exploratory Data Analysis (EDA)**
   - Script: `scripts/EDA.R`
   - Generates basic statistics and visualizations saved in `visualizations/`

3. **Assumption Testing**
   - Script: `scripts/normality_tests_safe.R`
   - Applies Shapiro-Wilk test to evaluate normality in selected variables

4. **Hypothesis Testing**
   - Script: `scripts/Hypothesis_Testing.R`
   - Performs Welch’s t-tests for predefined business hypotheses

## Dependencies

Install these R packages before running scripts:

```R
install.packages(c("tidyverse", "readr", "ggplot2"))
```

## Repository
GitHub: https://github.com/erenbg1/online-retail-statistical-analysis
