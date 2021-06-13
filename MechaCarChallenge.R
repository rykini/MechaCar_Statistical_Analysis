# deliverable 1

# step 3
library(dplyr)

# step 4
car_data <- read.csv("dataset/MechaCar_mpg.csv", stringsAsFactors = F, check.names = F)

# step 5
car_ln_reg<- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = car_data)

# step 6
summary(car_ln_reg)

# deliverable 2

# step 2
sus_data <- read.csv("dataset/Suspension_Coil.csv", stringsAsFactors = F, check.names = F)

# step 3
total_summary <- sus_data %>% summarize(mean=mean(PSI), median=median(PSI), variance=var(PSI), stdev=sd(PSI))

# step 4
lot_summary <- sus_data %>% group_by(Manufacturing_Lot) %>% summarize(mean=mean(PSI), median=median(PSI), Variance=var(PSI), stdev=sd(PSI))
