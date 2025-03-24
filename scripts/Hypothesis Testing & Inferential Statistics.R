# Load required libraries
library(dplyr)
library(readr)
library(ggplot2)

# Load cleaned dataset
data_clean <- read_csv("Outputs/cleaned_online_retail.csv")

# -------------------------------
# HYPOTHESIS 1: UK vs Non-UK Order Value
# -------------------------------

# Compute order value per transaction
data_clean <- data_clean %>%
  mutate(OrderValue = Quantity * Price)

# Aggregate to invoice level
invoice_data <- data_clean %>%
  group_by(Invoice, Country) %>%
  summarise(OrderValue = sum(OrderValue), .groups = "drop")

# Split into UK and non-UK
uk_orders <- invoice_data %>% filter(Country == "United Kingdom") %>% pull(OrderValue)
non_uk_orders <- invoice_data %>% filter(Country != "United Kingdom") %>% pull(OrderValue)

# Run Welch's t-test
test1 <- t.test(uk_orders, non_uk_orders)

# -------------------------------
# HYPOTHESIS 2: Spending by Return vs No-Return Customers
# -------------------------------

# Load original dataset (for identifying return behavior)
raw_data <- read_csv("Outputs/online_retail_II.csv")

# Identify customers who made returns (Quantity < 0)
return_customers <- raw_data %>%
  filter(Quantity < 0, !is.na(`Customer ID`)) %>%
  distinct(`Customer ID`) %>%
  pull()

# Compute total spend per customer (excluding negative quantity rows)
customer_spend <- data_clean %>%
  filter(Quantity > 0) %>%
  group_by(`Customer ID`) %>%
  summarise(TotalSpend = sum(OrderValue), .groups = "drop")

# Split into return and non-return groups
spend_returns <- customer_spend %>%
  filter(`Customer ID` %in% return_customers) %>%
  pull(TotalSpend)

spend_no_returns <- customer_spend %>%
  filter(!(`Customer ID` %in% return_customers)) %>%
  pull(TotalSpend)

# Run t-test
test2 <- t.test(spend_no_returns, spend_returns)

# -------------------------------
# HYPOTHESIS 3: Holiday vs Non-Holiday Daily Transactions
# -------------------------------

# Create date field and group by day
daily_counts <- data_clean %>%
  mutate(Date = as.Date(InvoiceDate)) %>%
  group_by(Date) %>%
  summarise(DailyTransactions = n_distinct(Invoice), .groups = "drop") %>%
  mutate(Month = format(Date, "%m"),
         Season = ifelse(Month %in% c("11", "12"), "Holiday", "Non-Holiday"))

# Split groups
holiday_txn <- daily_counts %>% filter(Season == "Holiday") %>% pull(DailyTransactions)
nonholiday_txn <- daily_counts %>% filter(Season == "Non-Holiday") %>% pull(DailyTransactions)

# Run t-test
test3 <- t.test(holiday_txn, nonholiday_txn)

# -------------------------------
# OUTPUT RESULTS
# -------------------------------

cat("----- Hypothesis 1: UK vs Non-UK Order Value -----\n")
print(test1)

cat("\n----- Hypothesis 2: Spending by Return Behavior -----\n")
print(test2)

cat("\n----- Hypothesis 3: Holiday vs Non-Holiday Daily Transactions -----\n")
print(test3)