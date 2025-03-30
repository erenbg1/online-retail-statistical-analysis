# Levene's Test: Order Value between UK vs. Non-UK Customers

library(readr)
library(dplyr)
library(car)

# Load cleaned dataset (relative path)
data_clean <- read_csv("../data/cleaned_online_retail.csv")

# Compute OrderValue
data_clean <- data_clean %>%
  mutate(OrderValue = Quantity * Price)

# Aggregate at invoice level
invoice_data <- data_clean %>%
  group_by(Invoice, Country) %>%
  summarise(OrderValue = sum(OrderValue), .groups = "drop") %>%
  mutate(Group = ifelse(Country == "United Kingdom", "UK", "NonUK"))

# Levene???s Test for equality of variances
leveneTest(OrderValue ~ Group, data = invoice_data)