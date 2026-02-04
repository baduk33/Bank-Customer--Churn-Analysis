
# Bank Customer Churn Analysis (A/B Testing in R)

## Project Overview
This project analyzes customer churn using statistical methods in R.  
The objective is to evaluate whether common customer attributes such as contract type, pricing, payment method, gender, and tenure are associated with churn behavior.

The analysis focuses on hypothesis-driven A/B testing and statistical inference rather than predictive machine learning.

---

## Dataset
The dataset contains 10,000 customer records with demographic, contract, and billing-related information.  
The target variable is `Churn`, which indicates whether a customer left the service.

---

## Data Preparation
The following preprocessing steps were performed:
- Removed irrelevant index columns
- Converted categorical variables to factors
- Verified data consistency and structure
- No aggressive filtering or outlier removal was applied

---

## A/B Testing & Statistical Analysis
The following hypotheses were tested:

- Contract Type vs Churn (Chi-square test)
- Monthly Charges vs Churn (Independent t-test)
- Payment Method vs Churn (Chi-square test)
- Gender vs Churn (Chi-square test)

A logistic regression model was also fitted to examine the combined effect of multiple variables on churn.

---

## Visualizations
Five supporting visualizations were created using `ggplot2` to complement the statistical analysis.  
These plots are descriptive and are used to illustrate observed patterns rather than to derive new conclusions.

---

## Key Findings
- No statistically significant relationship was found between churn and contract type, pricing, payment method, or gender.
- Logistic regression results were consistent with the A/B testing outcomes.
- The analysis suggests that churn behavior in this dataset is not explained by basic demographic or billing variables alone.

---

## Limitations & Future Work
- The dataset does not include behavioral or service-related features such as customer interactions or satisfaction metrics.
- Churn may be influenced by factors not captured in the available data.
- Future analysis could incorporate engagement or service quality data for deeper insight.

---

## Tools Used
- R
- tidyverse (`dplyr`, `ggplot2`)
- Statistical tests (Chi-square test, t-test)


