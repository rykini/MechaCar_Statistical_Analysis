# step 3
library(dplyr)

# step 4
car_data <- read.csv("dataset/MechaCar_mpg.csv", stringsAsFactors = F, check.names = F)

# step 5
car_ln_reg<- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = car_data)

# step 6
summary(car_ln_reg)
