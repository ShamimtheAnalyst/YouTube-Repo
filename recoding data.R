

### Re-coding data
# Using the tidyverse and dplyr packages 
# to create a new variable

# Installing and Using Packages
#install.packages("tidyverse")

library(tidyverse)
#Require(tidyverse)



# Get rid off missing values

mean(starwars$height)  
# gives you "NA" if there any missing data

mean(starwars$height, na.rm = TRUE) 
# na means not available, rm = remove


# Alternative way of Dealing with Missing Data
sw <- starwars %>% 
  select(name, height, mass, sex) %>%
  rename(weight = mass) %>%
  na.omit()


# Convert height(cm) to height(m)
sw <- starwars %>% 
  select(name, height, mass, sex) %>%
  rename(weight = mass) %>%
  na.omit() %>% 
  mutate(height = height/100)


# Filter out specific inputs in a Attributes (column contents)
# male, female, hermaphodrites, na -> male, female
# Filter rows
sw <- starwars %>% 
  select(name, height, mass, sex) %>%
  rename(weight = mass) %>%
  na.omit() %>% 
  mutate(height = height/100) %>% 
  filter(sex %in% c("male", "female"))


# Recode/mutate existing column
# male -> man
sw <- starwars %>% 
  select(name, height, mass, sex) %>%
  rename(weight = mass) %>%
  na.omit() %>% 
  mutate(height = height/100) %>% 
  filter(sex %in% c("male", "female")) %>%
  mutate(gsex = recode(sex, male = "m",
                       female = "f"))



# Manipulate your Data set
# Create a new (logical vector) variable "size"
# True/False
sw <- starwars %>% 
  select(name, height, mass, sex) %>%
  rename(weight = mass) %>%
  na.omit() %>% 
  mutate(height = height/100) %>% 
  filter(sex %in% c("male", "female")) %>%
  mutate(gsex = recode(sex, male = "m",
                       female = "f")) %>% 
  mutate(size = height > 1 & weight > 75)




# change TRUE FALSE into Small Big

sw <- starwars %>% 
  select(name, height, mass, sex) %>%
  rename(weight = mass) %>%
  na.omit() %>% 
  mutate(height = height/100) %>% 
  filter(sex %in% c("male", "female")) %>%
  mutate(gsex = recode(sex, male = "m",
                         female = "f")) %>% 
  mutate(size = height > 1 & weight > 75,
         size = if_else(size == TRUE, "Big", "Small")) 



view(sw)  

