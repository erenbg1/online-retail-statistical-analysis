# Online Retail Statistical Analysis

## 📌 Project Overview
This project performs **statistical analysis on the Online Retail II dataset** (Kaggle).  
The goal is to explore customer purchasing patterns, identify high-value segments, and test hypotheses regarding sales behavior across regions and time periods.

## ✨ Features
- Data cleaning and preprocessing
- Exploratory Data Analysis (EDA)
- Statistical hypothesis testing (t-tests, ANOVA, Chi-Square, etc.)
- Visualization of sales trends and customer behavior
- Business insights from data-driven results

## 📂 Repository Structure
```
online-retail-statistical-analysis/
│
├── data/                   # Dataset (not included due to license)
├── scripts/                # R scripts for analysis
├── images/                 # Generated plots
├── requirements.txt        # Dependencies (R packages)
└── README.md               # Documentation
```

## 🚀 Getting Started

### 1. Clone the repository
```bash
git clone https://github.com/erenbg1/online-retail-statistical-analysis.git
cd online-retail-statistical-analysis
```

### 2. Install dependencies
In R, install required libraries:
```R
install.packages(c("tidyverse", "ggplot2", "dplyr", "lubridate", "car"))
```

### 3. Run analysis
Open the scripts in `scripts/` folder and run them in RStudio or terminal:
```R
source("scripts/data_cleaning.R")
source("scripts/eda_visualizations.R")
source("scripts/hypothesis_testing.R")
```

## 📊 Example Results
- **Top 5 Countries by Sales Volume**: United Kingdom, Netherlands, Germany, France, Ireland  
- **Hypothesis Test**: Significant difference found between sales volume across weekdays vs weekends.  
- **Visualization**: Monthly sales trend shows strong seasonality (peaks in Q4).

## 📈 Future Work
- Perform advanced customer segmentation (RFM analysis, clustering).  
- Introduce predictive modeling for sales forecasting.  
- Add anomaly detection for unusual purchasing patterns.  
- Deploy interactive dashboards (Shiny).  

## 📝 License
This project is released under the MIT License.
