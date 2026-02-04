#Basic
cust_churn <- read.csv("C:/Users/kunjs/Downloads/Bank_Churn_Classification_Dataset.csv")

#verify
head(cust_churn)
str(cust_churn)
summarise(cust_churn)
dim(cust_churn)

#cleaning
cust_churn <- cust_churn %>% select(-X)

cust_churn <- cust_churn %>%
  mutate(
    Churn = as.factor(Churn),
    Gender = as.factor(Gender),
    Contract = as.factor(Contract),
    PaymentMethod = as.factor(PaymentMethod)
  )
str(cust_churn)


#Does contract type affect customer churn?
contract_test <- cust_churn %>%
  mutate(
    ContractGroup = ifelse(
      Contract == "Month-to-month",
      "Month-to-month",
      "Long-term"
    )
  )

table(contract_test$ContractGroup, contract_test$Churn)

chisq.test(
  table(contract_test$ContractGroup, contract_test$Churn)
)

#Do churned customers pay higher monthly charges?

table(cust_churn$Churn)
t.test(
  MonthlyCharges ~ Churn,
  data = cust_churn
)

#Is churn associated with payment method?
chisq.test(
  table(cust_churn$PaymentMethod, cust_churn$Churn)
)

churn_model <- glm(
  Churn ~ Tenure + MonthlyCharges + Gender + Contract + PaymentMethod,
  data = cust_churn,
  family = binomial
)

summary(churn_model)



table(cust_churn$Gender, cust_churn$Churn)
chisq.test(
  table(cust_churn$Gender, cust_churn$Churn)
)