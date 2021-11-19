# Comment out code with ctrl+shift+c
install.packages("tidyverse")
library(dplyr)
# Read in the Challenge csv files
suspension_coil <- read.csv(file = "Suspension_Coil.csv")
head(suspension_coil)
mecha_car <- read.csv(file = "MechaCar_mpg.csv")
head(mecha_car)
#perform a multiple linear regression
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mecha_car))
#Get the summary of the suspension coil data
dplyr::summarize(suspension_coil,mean(PSI), median(PSI), var(PSI), sd(PSI))
# Determine if the PSI across all manufacturing lots is statistically different from the population mean
PSI_t_test1 <- t.test(suspension_coil$PSI,mu=1500)
print(PSI_t_test1)
PSI_t_lot1 <- t.test(subset(suspension_coil,Manufacturing_Lot == "Lot1")$PSI, mu=1500)
print(PSI_t_lot1)
PSI_t_lot2 <-t.test(subset(suspension_coil,Manufacturing_Lot == "Lot2")$PSI, mu=1500)
print(PSI_t_lot2)
PSI_t_lot3 <-t.test(subset(suspension_coil,Manufacturing_Lot == "Lot3")$PSI, mu=1500)
print(PSI_t_lot3)