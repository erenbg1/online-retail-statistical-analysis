# Load necessary libraries
library(readr)
library(dplyr)

# Load raw dataset from the data directory
raw_data <- read_csv("../data/online_retail_II.csv")

# Remove rows with missing Customer ID
cleaned_data <- raw_data %>%
  filter(!is.na(`Customer ID`))

# Remove cancelled orders (Invoices starting with 'C')
cleaned_data <- cleaned_data %>%
  filter(!grepl("^C", Invoice))

# Keep only transactions with positive quantity and price
cleaned_data <- cleaned_data %>%
  filter(Quantity > 0 & Price > 0)

# Save cleaned dataset to the data directory
write_csv(cleaned_data, "../data/cleaned_online_retail.csv")
