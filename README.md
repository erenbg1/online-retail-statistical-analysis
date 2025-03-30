
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
│   └── cleaned_online_retail.csv
|
├── scripts/
│   ├── Cleaning.R
│   ├── Exploratory Data Analysis (EDA).R
│   ├── Hypothesis Testing & Inferential Statistics.R
│   ├── Levene's Test.R
│   └── Mann-Whitney U Test.R
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

## How to Reproduce

1. Run scripts/Cleaning.R to clean the raw data
2. Run scripts/EDA.R to generate descriptive statistics and plots
3. Run assumption checks:
   - Levene's Test.R
   - Mann-Whitney U Test.R
4. Conduct hypothesis testing via Hypothesis Testing & Inferential Statistics.R

---

## Visualizations

All figures used in the report are saved in the visualizations/ directory:
- Seasonal trends
- Country distributions
- Boxplots for inferential test visual support

---

## Report

All analyses, interpretations, and visual results are compiled in the final report Final Version Project.pdf.

---

## Notes

- All scripts are written in R.
- Code is modular and reproducible.
- GitHub repository is structured for academic grading and transparency.
