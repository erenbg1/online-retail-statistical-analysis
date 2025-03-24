# Load required libraries
library(dplyr)
library(ggplot2)
library(readr)

# Load the cleaned dataset
data_clean <- read_csv("Outputs/cleaned_online_retail.csv")

# Ensure InvoiceDate is in proper datetime format
data_clean$InvoiceDate <- as.POSIXct(data_clean$InvoiceDate)

# ---- Plot 1: Monthly Transaction Volume ----

# Use existing Month column and plot transaction counts by month
ggplot(data_clean, aes(x = Month)) +
  geom_bar(fill = "steelblue", color = "black") +
  labs(title = "Monthly Transaction Volume",
       x = "Month",
       y = "Number of Transactions") +
  theme_minimal()

# ---- Plot 2: Top 10 Countries by Transaction Count ----

# Get top 10 countries by transaction count
top_countries <- data_clean %>%
  count(Country, sort = TRUE) %>%
  slice_head(n = 10)

# Plot horizontal bar chart of top countries
ggplot(top_countries, aes(x = reorder(Country, n), y = n)) +
  geom_bar(stat = "identity", fill = "darkorange", color = "black") +
  coord_flip() +
  labs(title = "Top 10 Countries by Transaction Count",
       x = "Country",
       y = "Number of Transactions") +
  theme_minimal()