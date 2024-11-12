

### Data Manipulation

install.packages("tidyverse")

library(tidyverse)

View(starwars)


sw <-  starwars %>% 
  select(name, height, mass, sex) %>% 
  rename(weight = mass)



### BMI Calculation

starwars %>% 
  select(mass, height, sex, species) %>% 
  filter(species == "Human") %>% 
  na.omit() %>% 
  mutate(height = height / 100) %>% 
  mutate(BMI = mass / height^2) %>% 
  group_by(sex) %>% 
  summarise(Average_BMI = mean(BMI))
  


  






