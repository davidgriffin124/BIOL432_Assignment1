# Loads dplyr
library(dplyr)

# Creates list of 5 types of capuchin monkeys
X = c("Cebus capucinus", "Cebus cuscinus", "Cebus brunneus", "Sapajus apella", "Sapajus libidinosus")

# Samples list of monkeys 100 times
orgs = sample(X, 100, replace = T)

# Samples limb width & length from 2 normal distributions, 100 times
Limb_width = rnorm(100, 3, 0.8)
Limb_length = rnorm(100, 50, 6)

# Creates list of 3 potential observers
Y = c("David G", "Eric W", "Emily P")

# Samples list of observers 100 times
obs = sample(Y, 100, replace = T)

# Combines previous 4 samples into a data frame
measurements = data.frame(orgs, Limb_width, Limb_length, obs)

# Renames columns 1 & 4
measurements <- measurements%>%
  rename("Organism" = 1,
         "Observer" = 4)

# Exports data to csv file
write.csv(measurements, file = "C:/BIOL432/BIOL432_Assignment1/measurements.csv")
