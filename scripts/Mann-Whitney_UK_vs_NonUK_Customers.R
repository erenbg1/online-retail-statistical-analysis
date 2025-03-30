# Mann-Whitney U Test: UK vs. Non-UK Order Value

library(readr)
library(dplyr)

# Load cleaned dataset
data_clean <- read_csv("../data/cleaned_online_retail.csv")

# Compute OrderValue
data_clean <- data_clean %>%
  mutate(OrderValue = Quantity * Price)

# Aggregate by invoice and country
invoice_data <- data_clean %>%
  group_by(Invoice, Country) %>%
  summarise(OrderValue = sum(OrderValue), .groups = "drop") %>%
  mutate(Group = ifelse(Country == "United Kingdom", "UK", "NonUK"))

# Extract values
uk_orders <- invoice_data %>% filter(Group == "UK") %>% pull(OrderValue)
non_uk_orders <- invoice_data %>% filter(Group == "NonUK") %>% pull(OrderValue)

# Mann-Whitney U Test
wilcox.test(uk_orders, non_uk_orders, alternative = "two.sided")