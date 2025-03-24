# Load dataset
raw_data <- read_csv("Outputs/online_retail_II.csv")

# Remove rows with missing Customer ID
cleaned_data <- raw_data %>% filter(!is.na(`Customer ID`))

# Remove cancelled orders
cleaned_data <- cleaned_data %>% filter(!grepl("^C", Invoice))

# Keep only positive quantity and price
cleaned_data <- cleaned_data %>% filter(Quantity > 0 & Price > 0)

# Save cleaned data
write_csv(cleaned_data, "Outputs/cleaned_online_retail.csv")