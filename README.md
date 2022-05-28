# MechaCar_Statistical_Analysis

# Project Overview
In this project, I am tasked with building a linear regression model predicting MPG for the MechaCar company. Given selected predictors, the model makes right predictions almost 70% of the time. In addition, I analyzed the company's suspension coils data with a statistical summary and statistical tests against the population metrics. Lastly, I drafted a study design comparing the MechaCars's performance against its competition. 

# Software 
* Programming with ```R``` through ```RStudio``` 
* Programming script: [MechaCarChallenge.R](https://github.com/Aigerim-Zh/MechaCar_Statistical_Analysis/blob/main/MechaCarChallenge.R).

# Data 
* [MechaCar_mpg.csv](https://github.com/Aigerim-Zh/MechaCar_Statistical_Analysis/blob/main/Data/MechaCar_mpg.csv). 
* [Suspension_Coil.csv](https://github.com/Aigerim-Zh/MechaCar_Statistical_Analysis/blob/main/Data/Suspension_Coil.csv)

# Analysis and Results

## Deliverable 1. Linear Regression to Predict MPG

The [MechaCar_mpg.csv](https://github.com/Aigerim-Zh/MechaCar_Statistical_Analysis/blob/main/Data/MechaCar_mpg.csv) contains mpg test results for 50 prototype MechaCars. Multiple design specifications were used to produce the MechaCar prototypes to identify ideal vehicle performance. Multiple metrics were collected for each vehicle, such as
* Vehicle Length
* Spoiler Angle 
* Drivetrain
* Ground Clearance 
Using these metrics, I designed a linear model that predicts the mpg of MedchaCar prototypes. 

![](https://github.com/Aigerim-Zh/MechaCar_Statistical_Analysis/blob/main/Images/Linear_Regression.png)

### Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
The variables with a p-value of less than 0.05 are statistically unlikely to provide random amounts of variance to the model. To be more precise, these variables have a statistically significant effect on the dependent variable. 

In our case, the following variables produce statistically significant results:
* **Vehicle Length** with a p-value of 2.60*10-12 giving at least a 95% confidence level in predicting the mpg while holding all other factors constant.
* **Ground Clearance** with a p-value of 5.21 x 10-8 giving at least a 95% confidence level in predicting mpg while holding all other factors constant.
* **Vehicle Weight** has a p-value of 0.0776 giving at least a 90% confidence level in predicting mpg while holding all other factors constant.

It is important to note that **the model's intercept** is statistically significant indicating that the model is missing other factors that explain variation in mpg.

### Is the slope of the linear model considered to be zero? Why or why not?
With at least a 95% confidence, we can reject the null hypothesis of a zero slope in the linear model as the overall p-value is 5.35 x 10-11, significantly less than 0.05. In other words, the included factors have a statistically significant effect on the mpg. 

### Does this linear model predict the mpg of MechaCar prototypes effectively? Why or why not?

The Adjusted R-squared is 68.25% meaning that the linear relationship of mpg with the included factors explains a 68.25% variation in mpg. It is a relatively strong result paired with a p-value of less than 0.05. However, 31.75% of the variation in the mpg is explained by other factors that are not included in the model. 

**Please note that these are preliminary results and to further validate the model, we have to make sure that the linear regression assumptions are met**. 

## Summary Statistics on Suspension Coils
**The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?**

* **Total Summary**
![](https://github.com/Aigerim-Zh/MechaCar_Statistical_Analysis/blob/main/Images/Total_Summary.png)

The overall manufacturing data for all lots meets the design specification with the variance of suspension of 76.23 pounds per square.

* **Summary by Lots**
![](https://github.com/Aigerim-Zh/MechaCar_Statistical_Analysis/blob/main/Images/Lot_Summary.png)

Not all individual lots data meet this design specification. Specifically, Lot 3 has a variance of suspension of 220.10 pounds per square. 

## T-Tests on Suspension Calls
Below are t-tests to determine if all manufacturing lots and each lot individually are statistically different from the population mean of 1,500 pounds per square inch.

### All Manufacturing Lots**
![](https://github.com/Aigerim-Zh/MechaCar_Statistical_Analysis/blob/main/Images/t-test_All_Lots.png)

The results for all manufacturing lots give a p-value of 0.0628 indicating a statistically significant difference from the population mean with at least a 93% confidence level. 

### Individual Lots**
![](https://github.com/Aigerim-Zh/MechaCar_Statistical_Analysis/blob/main/Images/t-test_Lot1.png)
![](https://github.com/Aigerim-Zh/MechaCar_Statistical_Analysis/blob/main/Images/t-test_Lot2.png)
![](https://github.com/Aigerim-Zh/MechaCar_Statistical_Analysis/blob/main/Images/t-test_Lot3.png)

The results for individual plots give **a p-value of**:
* 1 for Lot 1, indicating no statistically significant difference
* 0.6072 for Lot 2, indicating no statistically significant difference
* **0.0416 for Lot 3, indicating a statistically significant difference at a 95% confidence level**.

## Study Design for Additional Statistical Analysis
In this section, I will describe what a statistical study, comparing the performance of the MechaCar vehicles against its competitors, would look like. 

## What metric or metrics are you going to test?
After researching what consumers in the current value the most, I would select the top important features and compare the MechaCars performance with its competitors across these features. 

These features could include price, horsepower, safety rating, fuel efficiency, choice variety, etc.


### What is the null hypothesis or alternative hypothesis?
* Null hypothesis: There is no difference in the performance of the MechaCars and its competitors across the selected features
* Alternate hypothesis: There is a statistically significant difference in the performance of the MechaCars and its competitors across the selected features

### What statistical test would you use to test the hypothesis? And why?
This study could be done with ANOVA testing as it can test whether they are statistically significant differences between means of independent variables for several groups.

### What data is needed to run the statistical test?

To run this study, the most updated data on the most customer-valued features are needed. The data, as mentioned before, the features might include price, horsepower, safety rating, fuel efficiency, choice variety, etc.

The data could be aggregated at the company level but would produce more representative results at the vehicle level. 

Also, it would be useful to have market shares of all competitors in the market. We could compare the MechaCar company against all competitors or only the main competitor based on the market shares. 
