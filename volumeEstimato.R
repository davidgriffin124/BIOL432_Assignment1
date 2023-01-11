# Loads library
library(dplyr)

# Loads measurements
dat = read.csv("measurements.csv")

# Adds volume column by forumula V = pi*(r^2)*h
dat2 = dat %>%
  mutate(Volume = (pi*((Limb_width/2)^2)*Limb_length),
         .after = Limb_length)

# Updates measurements file to include volume column
write.csv(dat2, "measurements.csv")
