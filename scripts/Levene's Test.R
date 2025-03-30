library(car)
library(dplyr)
library(readr)

# Load cleaned data
data_clean <- read_csv("C:/Users/egokp/Documents/outputs/data/cleaned_online_retail.csv")

# Calculate order value
data_clean <- data_clean %>%
  mutate(OrderValue = Quantity * Price)

# Summarise by invoice and country
invoice_data <- data_clean %>%
  group_by(Invoice, Country) %>%
  summarise(OrderValue = sum(OrderValue), .groups = "drop") %>%
  mutate(Group = ifelse(Country == "United Kingdom", "UK", "NonUK"))

# Levene's Test for equality of variances
leveneTest(OrderValue ~ Group, data = invoice_data)