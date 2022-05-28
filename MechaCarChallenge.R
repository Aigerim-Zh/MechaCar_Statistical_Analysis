library(dplyr)
library(tidyverse)

### Deliverable 1 ###

# Import and read the csv file
mecha_car <- read.csv('Data/MechaCar_mpg.csv')

# Linear regression
lm(mpg ~ vehicle_weight + 
     spoiler_angle + 
     ground_clearance + 
     AWD + 
     vehicle_length,
      data=mecha_car)

# P-value and R-squared
summary(lm(mpg ~ vehicle_weight + 
             spoiler_angle + 
             ground_clearance + 
             AWD + 
             vehicle_length,
              data=mecha_car))

### Deliverable 2 ###

# Import and read the csv file
suspen_coil <- read.csv('Data/Suspension_Coil.csv')

# Create total summary
total_summary <-  suspen_coil %>% summarize(Mean=mean(PSI),
                                            Median=median(PSI),
                                            Variance=var(PSI),
                                            SD=sd(PSI), 
                                            .groups = 'keep')


#Create lot summary
lot_summary <- suspen_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),
                                                                         Median=median(PSI),
                                                                         Variance=var(PSI),
                                                                         SD=sd(PSI), 
                                                                         .groups = 'keep')


###  Deliverable 3 ###

# t-test across all manufacturing lots against the population mean = 1500 PSI
t.test(suspen_coil$PSI, mu=1500)


# t-test for Lot 1 against population mean = 1500 PSI
lot1 <- suspen_coil %>% subset(Manufacturing_Lot=="Lot1")
t.test(lot1$PSI, mu=1500)

# t-test for Lot 2 against population mean = 1500 PSI
lot2 <- suspen_coil %>% subset(Manufacturing_Lot=="Lot2")
t.test(lot2$PSI, mu=1500)

# t-test for Lot 3 against population mean = 1500 PSI
lot3 <- suspen_coil %>% subset(Manufacturing_Lot=="Lot3")
t.test(lot3$PSI, mu=1500)