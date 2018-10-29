# statistical tests

# tutorial link: http://r-statistics.co/Statistical-Tests-in-R.html

##############################
# 1. one sample t-test       #
##############################

# Why is it used?
# It is a parametric test used to test if the mean of a sample 
# from a ***normal distribution*** could reasonably be a specific value.

set.seed(100)
x <- rnorm(50, mean = 10, sd = 0.5)
t.test(x, mu=10) # testing if mean of x could be

###############################
#2. Wilcoxon Signed Rank Test #
###############################

# Why / When is it used?
# To test the mean of a sample when normal distribution is not assumed. 
# Wilcoxon signed rank test can be an alternative to t-Test, 
# especially when the data sample is not assumed to follow a normal distribution. 
# It is a non-parametric method used to test if an estimate is different from its true value.

numeric_vector <- c(20, 29, 24, 19, 20, 22, 28, 23, 19, 19)
wilcox.test(numeric_vector, mu=20, conf.int = TRUE)

###################################################
# 3. Two Sample t-Test and Wilcoxon Rank Sum Test #
###################################################

# Both t.Test and Wilcoxon rank test can be used to compare the mean of 2 samples. 
# The difference is t-Test assumes the samples being tests is drawn from a normal distribution, 
# while, Wilcoxon’s rank sum test does not.

# How to implement in R?
# Pass the two numeric vector samples into the t.test() when sample is distributed ‘normal’y 
# wilcox.test() when it isn’t assumed to follow a normal distribution.

x <- c(0.80, 0.83, 1.89, 1.04, 1.45, 1.38, 1.91, 1.64, 0.73, 1.46)
y <- c(1.15, 0.88, 0.90, 0.74, 1.21)
wilcox.test(x, y, conf.int = TRUE)

t.test(1:10, y = c(7:20)) 

#######################
# 4. Shapiro Test     #
#######################

# Why is it used?
# To test if a sample follows a normal distribution.

set.seed(100)
normaly_disb <- rnorm(100, mean=5, sd=1) 
shapiro.test(normaly_disb) 
# The null hypothesis here is that the sample being tested is normally distributed.

##################################
# 5. Kolmogorov And Smirnov Test #
##################################

# Kolmogorov-Smirnov test is used to check whether 2 samples follow the same distribution.

x <- rnorm(50)
y <- runif(50)
ks.test(x, y) 

x <- rnorm(50)
y <- rnorm(50)
ks.test(x, y)

######################
# 6. Fisher’s F-Test #
######################

# Fisher’s F test can be used to check if two samples have same variance.

var.test(x, y)

#######################
# 7. Chi Squared Test #
#######################

# Chi-squared test in R can be used to test if two categorical variables are dependent, 
# by means of a contingency table.

# Example use case: You may want to figure out if big budget films become box-office hits. 
# We got 2 categorical variables (Budget of film, Success Status) 
# each with 2 factors (Big/Low budget and Hit/Flop), which forms a 2 x 2 matrix.

chisq.test(table(categorical_X, categorical_Y), correct = FALSE)

#######################
# 8. Correlation      #
#######################

# Why is it used?
# To test the linear relationship of two continuous variables

# The cor.test() function computes the correlation between two continuous variables 
# and test if the y is dependent on the x. 
# The null hypothesis is that the true correlation between x and y is zero.

cor.test(cars$speed, cars$dist)

#######################
# 9. More Tests       #
#######################

# Fisher's exact test to test independence of rows and columns in contingency table
fisher.test(contingencyMatrix, alternative = "greater") 

# Friedman's rank sum non-parametric test 
friedman.test()  
