setwd("C:\\Users\\User\\Desktop\\IT24103520")
#Question 1
#1)
# Binomial distribution with n =50 , p =0.85
n <-50
p <-0.85

#2)
# P(X>=47) =1-P(X<=46)
prob_at_least_47 <- 1 - pbinom(46,n,p)
print(prob_at_least_47)

#Question 2
#1) X is the number of calls  received in an hour

#2) Poisson distribution with lambda = 12
lambda <-12

#3)
prob_exactly_15 <- dpois(15,lambda)
print(prob_exactly_15)
