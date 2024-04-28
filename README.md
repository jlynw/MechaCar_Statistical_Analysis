# MechaCar Statistical Analysis

## Overview
AutosRUs' newest prototype, the MechaCar, is experiencing production issues that are preventing the manufacturing team from progressing. The purpose of this project is to review the production data for insights that may help the manufacturing team. 

## Linear Regression to Predict mpg
The MechaCar prototypes were produced using multiple design specifications to identify ideal vehicle performance. Multiple metrics, such as vehicle length, vehicle weight, spoiler angle, drivetrain, and ground clearance were collected for each vehicle (MechaCar_mpg.csv). Using multiple linear regression analysis, variables that predict the mpg (miles per gallon) were identified.

Below is the RScript used for the analysis.
![](https://github.com/jlynw/MechaCar_Statistical_Analysis/blob/main/Images/linearregression.PNG)

- Vehicle length and ground clearance provided a non-random amount of variance to the mpg values in the dataset.
- P-value is less than 0.05, therefore the null hypothesis is rejected. 
- The r-squared value is 0.71, therefore this model effectively predicts mpg of MechaCar. 

## Suspension Coils Summary Statistics
The weight capacities of multiple suspension coils were tested to determine if the manufacturing process is consistent across production lots. The Suspension_Coil.csv dataset contains the results from multiple production lots. The data file was imported and read as a table. The table is then used to create a data frame with the mean, median, variance, and standard deviation of the suspension coil’s PSI column.
### Total Lot Summary
![](https://github.com/jlynw/MechaCar_Statistical_Analysis/blob/main/Images/totalsummary.PNG)
### Lot Summary
![](https://github.com/jlynw/MechaCar_Statistical_Analysis/blob/main/Images/lotsummary.PNG)

- According to design specifications, variance of the coils must not exceed 100 PSI (pounds per square inch). Looking at the lot summary, the coils meet the specifications. However, when looking at the individual lot summary, lots 1 and 2 meets specifications, but lot 3 does not meet the specifications.

## T-Tests on Suspension Coils
T-tests were performed to determine if all manufacturing lots and each lot individually are statistically different from the population mean of 1,500 PSI.
### T-test for All Lots
![](https://github.com/jlynw/MechaCar_Statistical_Analysis/blob/main/Images/ttestall.PNG)

- P-value is greater than 0.05. Therfore, we can consider the null hypothesis to be true. The total lots are not statistically different from the population mean of 1,500 pounds per square inch.

### T-tests for Each Lot
![](https://github.com/jlynw/MechaCar_Statistical_Analysis/blob/main/Images/ttestlot1.PNG)
![](https://github.com/jlynw/MechaCar_Statistical_Analysis/blob/main/Images/ttestlot2.PNG)
![](https://github.com/jlynw/MechaCar_Statistical_Analysis/blob/main/Images/ttestlot3.PNG)

- P-values for lots for 1 and 2 are greater than 0.05. Therefore, these lots are not statistically different from the population mean. However, the p-value for lot 3 is less than 0.05. Lot three is significantly different from the population mean.

## Designing a Study Comparing the MechaCar to the Competition
There are many factors that consumers consider before making a purchase. A feature a consumer may take into consideration is fuel efficiency. Reducing use of fuel can save money, reduce climate change, reduce oil dependence costs, and increase energy sustainability. 

The null hypothesis: mpg of MechaCars is not statistically different from the population mean of its competition. 
The alternative hypothesis: MechaCars' fuel efficiency is not statistically different from its competition. 

Statistical test: t-test to determine if there is a significant difference between MechaCar and its competition.

Data Required: mpg of competitors of interest.
