# Mann-Whitney U Test: Daily Transaction Volume by Season

library(readr)
library(dplyr)

# Load cleaned dataset
data_clean <- read_csv("../data/cleaned_online_retail.csv")
data_clean$InvoiceDate <- as.POSIXct(data_clean$InvoiceDate)

# Prepare daily transaction volume
daily_txn <- data_clean %>%
  mutate(Date = as.Date(InvoiceDate)) %>%
  group_by(Date) %>%
  summarise(DailyTransactions = n_distinct(Invoice), .groups = "drop") %>%
  mutate(Month = format(Date, "%m"),
         Season = ifelse(Month %in% c("11", "12"), "Holiday", "Non-Holiday"))

# Split into groups
holiday_txn <- daily_txn %>% filter(Season == "Holiday") %>% pull(DailyTransactions)
nonholiday_txn <- daily_txn %>% filter(Season == "Non-Holiday") %>% pull(DailyTransactions)

# Mann-Whitney U Test
wilcox.test(holiday_txn, nonholiday_txn, alternative = "two.sided")