
# Online Retail Statistical Analysis

This project applies statistical methods to explore customer behavior in an online retail setting. Using the "Online Retail II" dataset, the project addresses key questions related to sales patterns, customer segmentation, and return behavior.

## Datasets

The datasets used in this analysis are based on transaction data from a UK-based online retailer. The primary dataset used is the **"Online Retail II" dataset**. 

- **`online_retail_II.csv`**: Original dataset containing transaction data.
- **`cleaned_online_retail.csv`**: Cleaned version of the original dataset after removing cancelled transactions, missing data, and negative quantities.

The dataset can be downloaded from [Kaggle - Online Retail II Dataset](https://www.kaggle.com/datasets/mashlyn/online-retail-ii-uci).

## Files

- **`scripts/`**: Contains R scripts used for data cleaning, exploratory data analysis (EDA), and statistical analysis.
  - `cleaning.R`: Script for data cleaning.
  - `eda.R`: Exploratory data analysis script.
  - `inference.R`: Hypothesis testing and statistical analysis script.
  
- **`data/`**: Contains cleaned and original datasets (if available).
- **`report/`**: Contains the final report of the project (e.g., PDF report).

## Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/online-retail-statistical-analysis.git
   ```

2. Navigate into the project folder:
   ```bash
   cd online-retail-statistical-analysis
   ```

3. Install necessary R packages:
   ```R
   install.packages(c("dplyr", "ggplot2", "readr", "lubridate"))
   ```

4. Run the scripts as needed:
   - `cleaning.R`: Run this to clean the dataset.
   - `eda.R`: Run this to perform exploratory data analysis.
   - `inference.R`: Run this for hypothesis testing and inferential analysis.

## Conclusion

The analysis provides insights into how customer segmentation, return behavior, and seasonal trends affect transaction volumes and revenue. By using hypothesis testing and exploratory data analysis, key patterns were identified that can inform business strategies such as pricing, inventory, and customer engagement.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details.
