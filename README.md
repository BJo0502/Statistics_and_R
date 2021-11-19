# Module 15 Challenge: Statistics and R

## Deliverable 1: Linear Regression to Predict MPG
In this deliverable we utilized Regression Analysis to measure the relationship between the dependent variable (MPGs) and independent variables (vehicle length, vehicle weight, spoiler angle, ground clearance and, AWD).

R-squared is the coefficient of determination, which we can use to evaluate the percentage of variation of the dependent variable. R-squared ranges from 0%-100%; the larger the number the more confidence you can have that the regression model fits the observations. For the purpose of this deliverable, we generate a Multiple R-squared:  0.7149 and Adjusted R-squared:  0.6825. The Adjusted R-squared is a critical summary statistic when evaluating the regression model because the R-squared value (in our case, the Multiple R-squared value) only increases as you add independent variables (it never decreases regardless of if the independent variables are statistically relevant). The Adjusted R-squared increases only when a new independent variable improves the model and decreases when a new independent variable does not improve the model. Our Adjusted R-square is 68% which allows us to have moderate to moderately high confidence in our model. In other words, the linear model does effectively predict MPGs of MechaCar prototypes.

The output of our summary statistics also provides a unique p-value for each independent variable and intercept. A low p-value (in our case 0.05 or less) tells us we can reject our null hypothesis and helps us to determine if a particular independent variable is useful to our regression model. Based on our results the vehicle length and ground clearance meet our significance level criteria.

The intercept of our regression analysis is -1.040e+02 which means that the expected value of our mpg will be less than 0 when all of our independent variables are set to 0. Given the very low values for each variables corresponding slope, we could consider it be zero.

Source: https://www.knowledgehut.com/blog/data-science/interpret-r-squared-and-goodness-fit-regression-analysis
Source : https://statisticsbyjim.com/regression/interpret-adjusted-r-squared-predicted-r-squared-regression/
Source : https://askinglot.com/how-do-you-interpret-a-negative-intercept-in-regression

## Deliverable 2: Summary Statistics on Suspension Coils

For the second deliverable we are asked to assess if the variance of the suspension coils meet the PSI requirements for the MechaCar specifications. The requirement is that the PSI does not exceed 100 pounds per square inch. Overall, the suspension coils for all three Lots falls within this parameter, with a variance of approximately 62. To dig deeper into the data it is necessary that we examine the variance per Lot to ensure the PSI requirements are being met across the board. After conducting our analysis we see that Lots 1 and 2 are well below the requirement; however, Lot 3’s PSI significantly exceeds MechaCar’s requirement with a variance of approximately 170.

## Deliverable 3: T-Test on Suspension Coils

For this deliverable we are provided the population mean of 1500 pounds per square inch and asked to compare how the means of our sample lots compare (overall and grouped by individual lot). Since we are determining whether our sample means are higher or lower than that of the population, we need to conduct a one-tailed t-test. After conducting the analyses, we can see that the p-value for the overall sample, sample of Lot 1 and sample of Lot 2 all resulted in p-values greater than 0.05; however, Lot 3 produced a p-value of approximately 0.042 which is less than our significance level. These results allow us to state that we do not have sufficient evidence to reject our null hypothesis for the overall sample, Lot 1 sample and Lot 2 sample. For the Lot 3 sample we reject the null hypothesis.
Our results are as follows:

Source: https://www.investopedia.com/terms/o/one-tailed-test.asp

## Deliverable 4: Study Design MechaCar vs Competition

In the last deliverable we are asked to design a statistical study that could be conducted to measure how MechaCar performs against the competition. As a consumer, I would be most interested in safety ratings. According to the Insurance Institute for Highway Safety (IIHS) there are four factors that determine a vehicle’s safety rating; measurements from dummies, survival space, airbags and seatbelt effectiveness. The results from these four separate factors are consolidated into a single safety rating score; however, I would be interested in exploring how statistically significant the airbag effectiveness is in the overall safety score. Given some innovative new airbag designs MechaCar has been working on, I think that we can really increase our overall safety score and outshine some of our competitors. The statistical analysis I would run would be a multiple linear regression to measure the four factors as independent variables and the overall safety score as the dependent variable. The data required to conduct this analysis would be detailed safety reports for MechaCar as well as its competitors.

The null hypothesis would be: all four metrics are equally weighted when determining an overall safety score.
The alternative hypothesis would be:  all four metrics are not equally weighted when determining an overall safety score.

Source: https://www.businessinsider.com/iihs-how-car-safety-ratings-determined-top-pick-2018-6

