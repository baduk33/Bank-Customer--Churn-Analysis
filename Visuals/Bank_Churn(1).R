cust_churn <- read.csv("C:/Users/kunjs/Downloads/Bank_Churn_Classification_Dataset.csv")

library(ggplot2)
library(dplyr)
library(scales)

theme_set(
  theme_minimal(base_size = 13) +
    theme(
      plot.title = element_text(face = "bold", size = 14, hjust = 0),
      axis.title = element_text(size = 12),
      axis.text = element_text(color = "gray30"),
      panel.grid.minor = element_blank(),
      panel.grid.major.x = element_blank(),
      legend.title = element_blank(),
      legend.position = "top"
    )
)
churn_colors <- c("0" = "#B0B0B0", "1" = "#E15759")

ggplot(cust_churn, aes(x = Churn, fill = Churn)) +
  geom_bar(width = 0.6) +
  scale_fill_manual(values = churn_colors) +
  labs(
    title = "Overall Customer Churn Distribution",
    x = "Churn Status",
    y = "Number of Customers"
  )

ggplot(cust_churn, aes(x = Gender, fill = Churn)) +
  geom_bar(position = "fill", width = 0.7) +
  scale_fill_manual(values = churn_colors) +
  scale_y_continuous(labels = percent) +
  labs(
    title = "Churn Proportion by Gender",
    x = "Gender",
    y = "Proportion of Customers"
  )


ggplot(cust_churn, aes(x = Contract, fill = Churn)) +
  geom_bar(position = "fill", width = 0.7) +
  scale_fill_manual(values = churn_colors) +
  scale_y_continuous(labels = percent) +
  labs(
    title = "Churn Proportion by Contract Type",
    x = "Contract Type",
    y = "Proportion of Customers"
  )

ggplot(cust_churn, aes(x = Churn, y = MonthlyCharges, fill = Churn)) +
  geom_boxplot(width = 0.6, alpha = 0.75, outlier.alpha = 0.3) +
  scale_fill_manual(values = churn_colors) +
  labs(
    title = "Monthly Charges by Churn Status",
    x = "Churn Status",
    y = "Monthly Charges"
  )

ggplot(cust_churn, aes(x = Tenure, fill = Churn)) +
  geom_histogram(
    bins = 30,
    alpha = 0.65,
    position = "identity"
  ) +
  scale_fill_manual(values = churn_colors) +
  labs(
    title = "Customer Tenure Distribution by Churn",
    x = "Tenure (Months)",
    y = "Number of Customers"
  )

