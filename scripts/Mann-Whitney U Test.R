# Extract UK and Non-UK order values
uk_orders <- invoice_data %>% filter(Group == "UK") %>% pull(OrderValue)
non_uk_orders <- invoice_data %>% filter(Group == "NonUK") %>% pull(OrderValue)

# Mann-Whitney U test (Wilcoxon rank sum)
wilcox.test(uk_orders, non_uk_orders, alternative = "two.sided")
