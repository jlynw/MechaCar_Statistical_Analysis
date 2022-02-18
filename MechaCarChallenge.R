#load package
library(dplyr)

#import & read
mechacar <- read.csv('MechaCar_mpg.csv',stringsAsFactors = F)

#linear regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mechacar)

#p-value & r-square value
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mechacar))

#import & read
coil <- read.csv('Suspension_Coil.csv',stringsAsFactors = F)

#total_summary
total_summary <- coil %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

#lot_summary
lot_summary <- coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

#t-test
t.test(coil$PSI,mu=1500)
t.test(subset(coil$PSI,coil$Manufacturing_Lot=='Lot1'),mu=1500)
t.test(subset(coil$PSI,coil$Manufacturing_Lot=='Lot2'),mu=1500)
t.test(subset(coil$PSI,coil$Manufacturing_Lot=='Lot3'),mu=1500)