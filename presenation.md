Coursera Data Products Course Project Application
========================================================
author: d2ski
date: Tue Feb 17 12:07:32 2015

### Developing Shiny application for predicting default status
Based on logistic regression discussed in "Introduction to Statistical Learning" by G.James, D.Witten, T.Hastie, R.Tibshirani

Summary
========================================================

App link: https://d2ski.shinyapps.io/shapp/

The app calculates default probability of a person given his/her:
- income
- credit card balance
- student/not student status  
  
The simple prediction algorithm is logistic regression model based on simulated dataset provided in ISLR R-package.

Data
========================================================

The source of the data is ISLR R-package from "Introduction to Statistical Learning" by G.James, D.Witten, T.Hastie, R.Tibshirani.


```r
require(ISLR)
data(Default)
str(Default)
```

```
'data.frame':	10000 obs. of  4 variables:
 $ default: Factor w/ 2 levels "No","Yes": 1 1 1 1 1 1 1 1 1 1 ...
 $ student: Factor w/ 2 levels "No","Yes": 1 2 1 1 1 2 1 2 1 1 ...
 $ balance: num  730 817 1074 529 786 ...
 $ income : num  44362 12106 31767 35704 38463 ...
```

The algorithm
========================================================
Logistic regression model was used.


```r
glm.fit <- glm(default~balance+income+student, data=Default, family=binomial)
glm.fit$formula
```

```
default ~ balance + income + student
```

```r
glm.fit$coef
```

```
  (Intercept)       balance        income    studentYes 
-1.086905e+01  5.736505e-03  3.033450e-06 -6.467758e-01 
```

Probability of default
========================================================
Probability is calculated using the formula:

$\hat{p}(X)=\frac{e^{\hat{\beta_0}X_0 + \hat{\beta_1}X_1 + \hat{\beta_2}X_2 + \hat{\beta_3}X_3}}{1+e^{\hat{\beta_0}X_0 + \hat{\beta_1}X_1 + \hat{\beta_2}X_2 + \hat{\beta_3}X_3}}$

For example, for a student with credit card balance 1,500 USD and income 40,000 USD probability of default $\hat{p}(X)=0.058$.

Please, note that the data was simulated, so the algorithm is not related to real life and was developed and can be used for education purposes only.

For more information, please, check chapter 4.3 of "Introduction to Statistical Learning" by G.James, D.Witten, T.Hastie, R.Tibshirani.

App link: https://d2ski.shinyapps.io/shapp/
