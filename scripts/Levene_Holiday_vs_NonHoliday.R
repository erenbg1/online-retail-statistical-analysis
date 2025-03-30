# Levene's Test: Daily Transaction Volume by Season

library(readr)
library(dplyr)
library(car)

# Load cleaned dataset
data_clean <- read_csv("../data/cleaned_online_retail.csv")
data_clean$InvoiceDate <- as.POSIXct(data_clean$InvoiceDate)

# Extract date and compute daily transactions
daily_txn <- data_clean %>%
  mutate(Date = as.Date(InvoiceDate)) %>%
  group_by(Date) %>%
  summarise(DailyTransactions = n_distinct(Invoice), .groups = "drop") %>%
  mutate(Month = format(Date, "%m"),
         Season = ifelse(Month %in% c("11", "12"), "Holiday", "Non-Holiday"))

# Levene's Test
leveneTest(DailyTransactions ~ Season, data = daily_txn)