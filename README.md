
# Statistical Analysis of Online Retail Transactions

This project presents a full statistical analysis of customer behavior using the Online Retail II dataset. The study addresses business-relevant hypotheses through exploratory data analysis, assumption testing, and inferential methods. The analysis is written in R and structured for academic assessment and reproducibility.

---

## Dataset

- Source: [Kaggle – Online Retail II (UCI)](https://www.kaggle.com/datasets/mashlyn/online-retail-ii-uci)
- Time Period: 2009–2011
- Details: UK-based online retailer transactions, includes returns, product info, customer ID, and timestamps.

---

## Key Hypotheses

1. Order Value vs. Region  
   Is there a significant difference in order value between UK and non-UK customers?

2. Total Spend vs. Return Behavior  
   Do customers with return activity spend less than those without?

3. Seasonal Transaction Volume  
   Does transaction volume increase during holiday months (Nov–Dec)?

---

## Repository Structure

online-retail-statistical-analysis/
|
├── data/
│   ├── online_retail_II.csv
│   └── cleaned_online_retail.csv
|
├── scripts/
│   ├── Cleaning.R
│   ├── Exploratory Data Analysis (EDA).R
│   ├── Hypothesis Testing & Inferential Statistics.R
│   ├── assumption_checks.R
│   ├── Levene_UK_vs_NonUK_Customers.R
│   ├── Mann-Whitney_UK_vs_NonUK_Customers.R
│   ├── Levene_Holiday_vs_NonHoliday.R
│   └── Mann-Whitney_Holiday_vs_NonHoliday.R
|
├── visualizations/
│   ├── monthly_transaction_volume.png
│   ├── top_10_countries.png
│   ├── inference_results_table_final.png
│   └── order_value_boxplot.png
|
└── README.md

---

## Statistical Methods & Assumption Checks

- Shapiro-Wilk Normality Test
- Levene’s Test for Homogeneity of Variance
- Welch’s t-test (for robust comparison with unequal variances)
- Mann-Whitney U Test (non-parametric alternative used when assumptions were violated)
- Visualizations created using ggplot2

---

## Assumption Testing Scripts

- `assumption_checks.R`: Prepares hypothesis-specific subsets and performs Shapiro-Wilk normality tests.
- `Levene_UK_vs_NonUK_Customers.R`: Tests variance homogeneity for Hypothesis 1.
- `Mann-Whitney_UK_vs_NonUK_Customers.R`: Non-parametric test for Hypothesis 1.
- `Levene_Holiday_vs_NonHoliday.R`: Tests variance homogeneity for Hypothesis 3.
- `Mann-Whitney_Holiday_vs_NonHoliday.R`: Non-parametric test for Hypothesis 3.

---

## How to Reproduce

1. Run `scripts/Cleaning.R` to clean the raw data.
2. Run `scripts/EDA.R` to generate descriptive statistics and visualizations.
3. Run assumption checks using:
   - `assumption_checks.R`
   - `Levene_*.R` scripts
   - `Mann-Whitney_*.R` scripts
4. Conduct hypothesis testing via `Hypothesis Testing & Inferential Statistics.R`.

---

## Dependencies

Install the required R packages with:

```r
install.packages(c("readr", "dplyr", "ggplot2", "car"))
```

---

## Report

All analyses, interpretations, and visuals are compiled in the final report `Final Version Project.pdf`.

---

## Notes

- All file paths are relative to the root directory.
- Scripts should be run from within the `scripts/` folder for paths to resolve correctly.
