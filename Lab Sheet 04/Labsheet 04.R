#EX 1
setwd("C:\\Users\\it24103500\\Desktop\\Lab_4")
setbranch_data <- read.csv("Exercise.txt", header = TRUE)
fix(branch_data)
#Ex 2
str(branch_data)

summary(branch_data$Sales_X1)
#Ex 3
boxplot(branch_data$Sales_X1, 
        main = "Boxplot of Sales",
        ylab = "Sales")
#Ex 4
fivenum(branch_data$Advertising_X2)

IQR(branch_data$Advertising_X2)

#Ex 5
find_outliers <- function(x) {
  Q1 <- quantile(x, 0.25)
  Q3 <- quantile(x, 0.75)
  IQR_value <- IQR(x)
  
  lower_bound <- Q1 - 1.5 * IQR_value
  upper_bound <- Q3 + 1.5 * IQR_value
  
  outliers <- x[x < lower_bound | x > upper_bound]
  
  return(outliers)
}

outliers_years <- find_outliers(branch_data$Years_X3)
print(outliers_years)
