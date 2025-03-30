
# Load required libraries
library(dplyr)
library(readr)

# Load cleaned dataset
data_clean <- read_csv("../data/cleaned_online_retail.csv")

# --- HYPOTHESIS 1: UK vs Non-UK Order Value ---
data_clean <- data_clean %>%
  mutate(OrderValue = Quantity * Price)

invoice_data <- data_clean %>%
  group_by(Invoice, Country) %>%
  summarise(OrderValue = sum(OrderValue), .groups = "drop")

uk_orders <- invoice_data %>% filter(Country == "United Kingdom") %>% pull(OrderValue)
non_uk_orders <- invoice_data %>% filter(Country != "United Kingdom") %>% pull(OrderValue)

# --- HYPOTHESIS 2: Spending by Return vs No Return Customers ---
raw_data <- read_csv("../data/cleaned_online_retail.csv")

return_customers <- raw_data %>%
  filter(Quantity < 0, !is.na(`Customer ID`)) %>%
  distinct(`Customer ID`) %>%
  pull()

customer_spend <- data_clean %>%
  filter(Quantity > 0) %>%
  group_by(`Customer ID`) %>%
  summarise(TotalSpend = sum(OrderValue), .groups = "drop")

spend_returns <- customer_spend %>% filter(`Customer ID` %in% return_customers) %>% pull(TotalSpend)
spend_no_returns <- customer_spend %>% filter(!(`Customer ID` %in% return_customers)) %>% pull(TotalSpend)

# --- HYPOTHESIS 3: Holiday vs Non-Holiday Daily Transactions ---
daily_counts <- data_clean %>%
  mutate(Date = as.Date(InvoiceDate)) %>%
  group_by(Date) %>%
  summarise(DailyTransactions = n_distinct(Invoice), .groups = "drop") %>%
  mutate(Month = format(Date, "%m"),
         Season = ifelse(Month %in% c("11", "12"), "Holiday", "Non-Holiday"))

holiday_txn <- daily_counts %>% filter(Season == "Holiday") %>% pull(DailyTransactions)
nonholiday_txn <- daily_counts %>% filter(Season == "Non-Holiday") %>% pull(DailyTransactions)

# --- SHAPIRO-WILK TESTS WITH SIZE CHECK ---
safe_shapiro <- function(x, label) {
  n <- length(x)
  cat("\n", label, "(n =", n, "):\n")
  if (n >= 3 && n <= 5000) {
    print(shapiro.test(x))
  } else if (n > 5000) {
    print(shapiro.test(sample(x, 5000)))
  } else {
    cat("Sample size too small for Shapiro-Wilk test.\n")
  }
}

cat("Shapiro-Wilk Normality Test Results:\n")

safe_shapiro(uk_orders, "UK Orders")
safe_shapiro(non_uk_orders, "Non-UK Orders")
safe_shapiro(spend_returns, "Spend - Returns")
safe_shapiro(spend_no_returns, "Spend - No Returns")
safe_shapiro(holiday_txn, "Holiday Transactions")
safe_shapiro(nonholiday_txn, "Non-Holiday Transactions")
